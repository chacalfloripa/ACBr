{******************************************************************************}
{ Projeto: Componentes ACBr                                                    }
{  Biblioteca multiplataforma de componentes Delphi para intera��o com equipa- }
{ mentos de Automa��o Comercial utilizados no Brasil                           }
{                                                                              }
{ Direitos Autorais Reservados (c) 2020 Daniel Simoes de Almeida               }
{                                                                              }
{ Colaboradores nesse arquivo: Italo Giurizzato Junior                         }
{                                                                              }
{  Voc� pode obter a �ltima vers�o desse arquivo na pagina do  Projeto ACBr    }
{ Componentes localizado em      http://www.sourceforge.net/projects/acbr      }
{                                                                              }
{  Esta biblioteca � software livre; voc� pode redistribu�-la e/ou modific�-la }
{ sob os termos da Licen�a P�blica Geral Menor do GNU conforme publicada pela  }
{ Free Software Foundation; tanto a vers�o 2.1 da Licen�a, ou (a seu crit�rio) }
{ qualquer vers�o posterior.                                                   }
{                                                                              }
{  Esta biblioteca � distribu�da na expectativa de que seja �til, por�m, SEM   }
{ NENHUMA GARANTIA; nem mesmo a garantia impl�cita de COMERCIABILIDADE OU      }
{ ADEQUA��O A UMA FINALIDADE ESPEC�FICA. Consulte a Licen�a P�blica Geral Menor}
{ do GNU para mais detalhes. (Arquivo LICEN�A.TXT ou LICENSE.TXT)              }
{                                                                              }
{  Voc� deve ter recebido uma c�pia da Licen�a P�blica Geral Menor do GNU junto}
{ com esta biblioteca; se n�o, escreva para a Free Software Foundation, Inc.,  }
{ no endere�o 59 Temple Street, Suite 330, Boston, MA 02111-1307 USA.          }
{ Voc� tamb�m pode obter uma copia da licen�a em:                              }
{ http://www.opensource.org/licenses/lgpl-license.php                          }
{                                                                              }
{ Daniel Sim�es de Almeida - daniel@projetoacbr.com.br - www.projetoacbr.com.br}
{       Rua Coronel Aureliano de Camargo, 963 - Tatu� - SP - 18270-170         }
{******************************************************************************}

{$I ACBr.inc}

unit eGoverneISS.LerXml;

interface

uses
  SysUtils, Classes, StrUtils,
  ACBrXmlBase, ACBrXmlDocument,
  ACBrNFSeXConversao, ACBrNFSeXLerXml;

type
  { TNFSeR_eGoverneISS }

  TNFSeR_eGoverneISS = class(TNFSeRClass)
  protected

    procedure LerTomador(const ANode: TACBrXmlNode);
    procedure LerEnderecoTomador(const ANode: TACBrXmlNode);
  public
    function LerXml: Boolean; override;
    function LerXmlRps(const ANode: TACBrXmlNode): Boolean;
    function LerXmlNfse(const ANode: TACBrXmlNode): Boolean;
  end;

implementation

uses
  ACBrUtil.Base;

//==============================================================================
// Essa unit tem por finalidade exclusiva ler o XML do provedor:
//     eGoverneISS
//==============================================================================

{ TNFSeR_eGoverneISS }

procedure TNFSeR_eGoverneISS.LerEnderecoTomador(const ANode: TACBrXmlNode);
var
  AuxNode: TACBrXmlNode;
begin
  AuxNode := ANode.Childrens.FindAnyNs('Endereco');

  if AuxNode <> nil then
  begin
    with NFSe.Tomador.Endereco do
    begin
      Bairro := ObterConteudo(AuxNode.Childrens.FindAnyNs('Bairro'), tcStr);

      CEP := ObterConteudo(AuxNode.Childrens.FindAnyNs('CEP'), tcStr);

      xMunicipio := ObterConteudo(AuxNode.Childrens.FindAnyNs('Cidade'), tcStr);

      Complemento := ObterConteudo(AuxNode.Childrens.FindAnyNs('Complemento'), tcStr);

      UF := ObterConteudo(AuxNode.Childrens.FindAnyNs('Estado'), tcStr);

      Endereco := ObterConteudo(AuxNode.Childrens.FindAnyNs('Logradouro'), tcStr);

      Numero := ObterConteudo(AuxNode.Childrens.FindAnyNs('Numero'), tcStr);

      xPais := ObterConteudo(AuxNode.Childrens.FindAnyNs('Pais'), tcStr);

      TipoLogradouro := ObterConteudo(AuxNode.Childrens.FindAnyNs('TipoLogradouro'), tcStr);
    end;
  end;
end;

procedure TNFSeR_eGoverneISS.LerTomador(const ANode: TACBrXmlNode);
var
  AuxNode: TACBrXmlNode;
  aValor: string;
begin
  AuxNode := ANode.Childrens.FindAnyNs('Tomador');

  if AuxNode <> nil then
  begin
    with NFSe.Tomador do
    begin
      RazaoSocial := ObterConteudo(AuxNode.Childrens.FindAnyNs('Nome'), tcStr);

      with IdentificacaoTomador do
      begin
        aValor := ObterConteudo(AuxNode.Childrens.FindAnyNs('CNPJ'), tcStr);

        if aValor = '' then
          aValor := ObterConteudo(AuxNode.Childrens.FindAnyNs('CPF'), tcStr);

        CpfCnpj := aValor;

        InscricaoMunicipal := ObterConteudo(AuxNode.Childrens.FindAnyNs('InscricaoMunicipal'), tcStr);
      end;

      with Contato do
      begin
        Email := ObterConteudo(AuxNode.Childrens.FindAnyNs('Email'), tcStr);

        aValor := ObterConteudo(AuxNode.Childrens.FindAnyNs('DDD'), tcStr);

        Telefone := aValor + ObterConteudo(AuxNode.Childrens.FindAnyNs('Telefone'), tcStr);
      end;

      LerEnderecoTomador(AuxNode);
    end;
  end;
end;

function TNFSeR_eGoverneISS.LerXml: Boolean;
var
  XmlNode: TACBrXmlNode;
begin
  if EstaVazio(Arquivo) then
    raise Exception.Create('Arquivo xml n�o carregado.');

  Arquivo := NormatizarXml(Arquivo);

  if FDocument = nil then
    FDocument := TACBrXmlDocument.Create();

  Document.Clear();
  Document.LoadFromXml(Arquivo);

  if (Pos('eis:NotaFiscal', Arquivo) > 0) then
    tpXML := txmlNFSe
  else
    tpXML := txmlRPS;

  XmlNode := Document.Root;

  if XmlNode = nil then
    raise Exception.Create('Arquivo xml vazio.');

  if tpXML = txmlNFSe then
    Result := LerXmlNfse(XmlNode)
  else
    Result := LerXmlRps(XmlNode);

  FreeAndNil(FDocument);
end;

function TNFSeR_eGoverneISS.LerXmlNfse(const ANode: TACBrXmlNode): Boolean;
//var
//  AuxNode: TACBrXmlNode;
begin
  Result := True;

  // Falta Implementar (N�o tem schema para tomar como base)

  (*

  if not Assigned(ANode) or (ANode = nil) then Exit;

  AuxNode := ANode.Childrens.FindAnyNs('notasFiscais');

  if AuxNode = nil then
    AuxNode := ANode.Childrens.FindAnyNs('nfeRpsNotaFiscal');
  *)
end;

function TNFSeR_eGoverneISS.LerXmlRps(const ANode: TACBrXmlNode): Boolean;
var
  aValor: string;
begin
  Result := True;

  if not Assigned(ANode) or (ANode = nil) then Exit;

  with NFSe do
  begin
    aValor := ObterConteudo(ANode.Childrens.FindAnyNs('Homologacao'), tcStr);

    if aValor = 'true' then
      Producao := snSim
    else
      Producao := snNao;

    OutrasInformacoes := ObterConteudo(ANode.Childrens.FindAnyNs('InformacoesAdicionais'), tcStr);

    with Servico do
    begin
      CodigoTributacaoMunicipio := ObterConteudo(ANode.Childrens.FindAnyNs('Atividade'), tcStr);

      with Valores do
      begin
        Aliquota := ObterConteudo(ANode.Childrens.FindAnyNs('Aliquota'), tcDe4);

        ValorServicos := ObterConteudo(ANode.Childrens.FindAnyNs('Valor'), tcDe2);

        ValorCsll := ObterConteudo(ANode.Childrens.FindAnyNs('ValorCSLL'), tcDe2);

        ValorCofins := ObterConteudo(ANode.Childrens.FindAnyNs('ValorCOFINS'), tcDe2);

        ValorDeducoes := ObterConteudo(ANode.Childrens.FindAnyNs('ValorDeducao'), tcDe2);

        ValorInss := ObterConteudo(ANode.Childrens.FindAnyNs('ValorINSS'), tcDe2);

        ValorIr := ObterConteudo(ANode.Childrens.FindAnyNs('ValorIR'), tcDe2);

        OutrasRetencoes := ObterConteudo(ANode.Childrens.FindAnyNs('ValorOutrosImpostos'), tcDe2);

        ValorPis := ObterConteudo(ANode.Childrens.FindAnyNs('ValorPisPasep'), tcDe2);
      end;
    end;

    with Prestador do
    begin
      with Endereco do
      begin
        Endereco := ObterConteudo(ANode.Childrens.FindAnyNs('EnderecoPrestacaoServico'), tcStr);

        CEP := ObterConteudo(ANode.Childrens.FindAnyNs('CEPPrestacaoServico'), tcStr);

        xMunicipio := ObterConteudo(ANode.Childrens.FindAnyNs('CidadePrestacaoServico'), tcStr);

        UF := ObterConteudo(ANode.Childrens.FindAnyNs('EstadoPrestacaoServico'), tcStr);
      end;
    end;

    LerTomador(ANode);

    aValor := ObterConteudo(ANode.Childrens.FindAnyNs('TomadorEstrangeiro'), tcStr);

    if aValor = 'false' then
      Tomador.Endereco.xPais := 'BRASIL';
  end;
end;

end.
