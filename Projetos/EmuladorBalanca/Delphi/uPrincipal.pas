{******************************************************************************}
{ Projeto: Componentes ACBr                                                    }
{  Biblioteca multiplataforma de componentes Delphi para intera??o com equipa- }
{ mentos de Automa??o Comercial utilizados no Brasil                           }
{                                                                              }
{ Direitos Autorais Reservados (c) 2020 Daniel Simoes de Almeida               }
{																			   }
{  Voc? pode obter a ?ltima vers?o desse arquivo na pagina do  Projeto ACBr    }
{ Componentes localizado em      http://www.sourceforge.net/projects/acbr      }
{                                                                              }
{  Esta biblioteca ? software livre; voc? pode redistribu?-la e/ou modific?-la }
{ sob os termos da Licen?a P?blica Geral Menor do GNU conforme publicada pela  }
{ Free Software Foundation; tanto a vers?o 2.1 da Licen?a, ou (a seu crit?rio) }
{ qualquer vers?o posterior.                                                   }
{                                                                              }
{  Esta biblioteca ? distribu?da na expectativa de que seja ?til, por?m, SEM   }
{ NENHUMA GARANTIA; nem mesmo a garantia impl?cita de COMERCIABILIDADE OU      }
{ ADEQUA??O A UMA FINALIDADE ESPEC?FICA. Consulte a Licen?a P?blica Geral Menor}
{ do GNU para mais detalhes. (Arquivo LICEN?A.TXT ou LICENSE.TXT)              }
{                                                                              }
{  Voc? deve ter recebido uma c?pia da Licen?a P?blica Geral Menor do GNU junto}
{ com esta biblioteca; se n?o, escreva para a Free Software Foundation, Inc.,  }
{ no endere?o 59 Temple Street, Suite 330, Boston, MA 02111-1307 USA.          }
{ Voc? tamb?m pode obter uma copia da licen?a em:                              }
{ http://www.opensource.org/licenses/lgpl-license.php                          }
{                                                                              }
{ Daniel Sim?es de Almeida - daniel@projetoacbr.com.br - www.projetoacbr.com.br}
{       Rua Coronel Aureliano de Camargo, 963 - Tatu? - SP - 18270-170         }
{******************************************************************************}

unit uPrincipal;

interface

uses
  synaser, ExtCtrls,

  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  TfrmPrincipal = class(TForm)
    gbxConfigAplicativo: TGroupBox;
    Label1: TLabel;
    ckbMonitorarPorta: TCheckBox;
    cbxPortaComunicacao: TComboBox;
    gbxControlePeso: TGroupBox;
    Label2: TLabel;
    btnPesoGerar: TButton;
    btnPesoEnviar: TButton;
    gbxSimulacoes: TGroupBox;
    btnSimularSobrepeso: TButton;
    btnSimularPesoInstavel: TButton;
    btnSimularPesoNegativo: TButton;
    edtPesoAtual: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ckbMonitorarPortaClick(Sender: TObject);
    procedure btnPesoGerarClick(Sender: TObject);
    procedure btnPesoEnviarClick(Sender: TObject);
    procedure btnSimularSobrepesoClick(Sender: TObject);
    procedure btnSimularPesoInstavelClick(Sender: TObject);
    procedure btnSimularPesoNegativoClick(Sender: TObject);
  private
    FTimer: TTimer;
    FDevice: TBlockSerial;
    procedure LerSerial(Sender: TObject);
    procedure AtivarComunicacao;
    function FormataPeso(AValor: Real; AZeros: Integer): String;
    procedure EnviarResposta(AComando: String);
    procedure GravarIni(AChave, AValor: String);
    function LerIni(AChave: string): String;
    function ArquivoIni: TFileName;
  public

  end;

var
  frmPrincipal: TfrmPrincipal;

const
  // constantes de comunica??o
  STX = #02;
  ETX = #03;
  ENQ = #05;

  // constantes de estado da balan?a
  PESO_INSTAVEL   = 'IIIII';
  PESO_NEGATIVO   = 'NNNNN';
  PESO_SOBRECARGA = 'SSSSS';

  // constantes das configura?oes do arquivo ini
  INI_MODELO = 'ModeloImpressora';
  INI_PORTA  = 'PortaComunicacao';

implementation

uses
  IniFiles;

{$R *.dfm}

//##############################################################################
//
//  M?todos para trabalhar com arquivos de configura??o .INI
//
//##############################################################################

function TfrmPrincipal.ArquivoIni: TFileName;
var
  PathAplicativo: String;
begin
  PathAplicativo := ParamStr(0);

  Result :=
    ExtractFilePath(PathAplicativo) +
    ChangeFileExt(ExtractFileName(PathAplicativo), '.INI');
end;

procedure TfrmPrincipal.GravarIni(AChave, AValor: String);
var
  INI: TIniFile;
begin
  INI := TIniFile.Create(ArquivoIni);
  try
    INI.WriteString('CONFIG', AChave, AValor);
  finally
    INI.Free
  end;
end;

function TfrmPrincipal.LerIni(AChave: string): String;
var
  INI: TIniFile;
begin
  INI := TIniFile.Create(ArquivoIni);
  try
    Result := INI.ReadString('CONFIG', AChave, EmptyStr);
  finally
    INI.Free
  end;
end;

//##############################################################################
//
//  M?todo para ativa??o da porta de comunica??o, somente quando a porta
//  n?o estiver ativa, ativ?-la e configur?-la
//
//##############################################################################

procedure TfrmPrincipal.AtivarComunicacao;
begin
  if cbxPortaComunicacao.Text = EmptyStr then
    raise EFilerError.Create('Porta de comunica??o n?o informada. abortando...');

  FDevice.CloseSocket;
  FDevice.Connect(cbxPortaComunicacao.Text);
  FDevice.Config(9600, 8, 'N', 0, False, False);
end;

//##############################################################################
//
//  envios de comando para a porta serial
//
//##############################################################################

procedure TfrmPrincipal.EnviarResposta(AComando: String);
begin
  FTimer.Enabled := False;

  try
    AtivarComunicacao;

    FDevice.DeadlockTimeout := 1000;
    FDevice.Purge;
    FDevice.SendString(STX + AComando + ETX);
  finally
    if ckbMonitorarPorta.Checked then
      FTimer.Enabled := True;
  end;
end;

//##############################################################################
//
//  M?todo que em conjunto com o objeto FTimer monitora a porta serial
//  aguardando o pedido de peso pelo aplicativo.
//  Responde ao aplicativo somente ao receber o caracter de solicita??o de
//  pesagem.
//
//##############################################################################

procedure TfrmPrincipal.LerSerial(Sender: TObject);
var
  Dados, StrAEnviar: String;
begin
  try
    if not FDevice.InstanceActive then
      AtivarComunicacao;

    if FDevice.WaitingData > 0 then
    begin
      Dados := FDevice.RecvPacket(100);

      // Verificar se o pacote corresponde a pedida do peso
      if Dados = ENQ then
      begin
        try
          StrAEnviar := FormataPeso(StrToFloat(edtPesoAtual.Text), 5);
        except
          StrAEnviar := edtPesoAtual.Text;
        end ;

        EnviarResposta( StrAEnviar )
      end;
    end;

    if ckbMonitorarPorta.Checked then
      FTimer.Enabled := True;

    Application.ProcessMessages;
  except
    on E: Exception do
    begin
      FTimer.Enabled := False;
      MessageDlg('Ocorreu o seguinte erro: '+sLineBreak+ E.Message, mtError, [mbOK], 0);
    end;
  end;
end;

//##############################################################################
//
//  Formatar o peso para a quantidade de casas decimais do parametro
//
//##############################################################################

function TfrmPrincipal.FormataPeso(AValor: Real; AZeros: Integer): String;
var
  Mascara: String;
  Valor: Real;
begin
  Valor   := AValor * 1000;
  Mascara := '%' + IntToStr(AZeros) + '.' + IntToStr(AZeros) + 'd';

  Result  := Format(Mascara, [Trunc(Valor)]);
end;

//##############################################################################
//
//  Eventos do formul?rio
//
//##############################################################################

procedure TfrmPrincipal.FormCreate(Sender: TObject);
var
  ixPorta: Integer;
begin
  ixPorta  := cbxPortaComunicacao.Items.IndexOf(LerIni(INI_PORTA));
  if ixPorta < 0 then
    ixPorta := 0;

  cbxPortaComunicacao.ItemIndex := ixPorta;

  // Criar e configurar o device de acesso a porta serial
  FDevice             := TBlockSerial.Create;
  FDevice.RaiseExcept := True;

  // Ficar lendo a porta serial
  FTimer          := TTimer.Create(Self);
  FTimer.OnTimer  := LerSerial;
  FTimer.Interval := 500;
  FTimer.Enabled  := False;
end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  GravarIni(INI_PORTA, cbxPortaComunicacao.Text);

  if FTimer <> nil then
  begin
    FTimer.Enabled := False;
    FTimer.Free;
  end;

  if FDevice <> nil then
  begin
    FDevice.CloseSocket;
    FDevice.Free;
  end;
end;

//##############################################################################
//
//  Bot?es do formul?rio
//
//##############################################################################

procedure TfrmPrincipal.ckbMonitorarPortaClick(Sender: TObject);
begin
  if (ckbMonitorarPorta.Checked) and (cbxPortaComunicacao.Text = EmptyStr) then
  begin
    ckbMonitorarPorta.Checked := False;
    raise EFilerError.Create('Antes de ativar a monitora??o informe a porta de comunica??o');
  end;

  FTimer.Enabled := ckbMonitorarPorta.Checked;
end;

procedure TfrmPrincipal.btnPesoGerarClick(Sender: TObject);
var
  PesoGerado: Real;
begin
  // gerar um peso aleat?rio
  Randomize;
  repeat
    PesoGerado := Random * 10;
  until PesoGerado > 0.0;

  // assinalar ao edit na tela
  edtPesoAtual.Text := FormatFloat(',#0.000', PesoGerado);
end;

procedure TfrmPrincipal.btnPesoEnviarClick(Sender: TObject);
var
  StrAEnviar: String;
begin
  try
    StrAEnviar := FormataPeso(StrToFloat(edtPesoAtual.Text), 5);
  except
    StrAEnviar := edtPesoAtual.Text;
  end ;

  EnviarResposta( StrAEnviar )
end;

procedure TfrmPrincipal.btnSimularPesoInstavelClick(Sender: TObject);
begin
  EnviarResposta(PESO_INSTAVEL);
  edtPesoAtual.Text := PESO_INSTAVEL;
end;

procedure TfrmPrincipal.btnSimularPesoNegativoClick(Sender: TObject);
begin
  EnviarResposta(PESO_NEGATIVO);
  edtPesoAtual.Text := PESO_NEGATIVO;
end;

procedure TfrmPrincipal.btnSimularSobrepesoClick(Sender: TObject);
begin
  EnviarResposta(PESO_SOBRECARGA);
  edtPesoAtual.Text := PESO_SOBRECARGA;
end;

end.
