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

unit Unit1;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, Buttons, ACBrGIF, ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    edFileName: TEdit;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    Label2: TLabel;
    edFrames: TEdit;
    Label3: TLabel;
    edLoops: TEdit;
    cbTransparent: TCheckBox;
    cbAutoSize: TCheckBox;
    ACBrGIF1: TACBrGIF;
    Label4: TLabel;
    edStart: TEdit;
    Label5: TLabel;
    edStop: TEdit;
    Label6: TLabel;
    edWidth: TEdit;
    Label7: TLabel;
    edHeight: TEdit;
    btPlay: TBitBtn;
    btStop: TBitBtn;
    btStart: TBitBtn;
    btResume: TBitBtn;
    Label8: TLabel;
    edRepetitions: TEdit;
    cbActive: TCheckBox;
    Label9: TLabel;
    edCurrentFrame: TEdit;
    btPause: TBitBtn;
    OpenDialog1: TOpenDialog;
    cbPaused: TCheckBox;
    procedure SpeedButton1Click(Sender: TObject);
    procedure cbTransparentClick(Sender: TObject);
    procedure cbAutoSizeClick(Sender: TObject);
    procedure btStartClick(Sender: TObject);
    procedure btStopClick(Sender: TObject);
    procedure btPauseClick(Sender: TObject);
    procedure btResumeClick(Sender: TObject);
    procedure edStartChange(Sender: TObject);
    procedure edStopChange(Sender: TObject);
    procedure edRepetitionsChange(Sender: TObject);
    procedure btPlayClick(Sender: TObject);
    procedure ACBrGIF1ChangeFrame(Sender: TObject);
    procedure ACBrGIF1Loop(Sender: TObject);
    procedure ACBrGIF1Start(Sender: TObject);
    procedure ACBrGIF1Stop(Sender: TObject);
    procedure edCurrentFrameChange(Sender: TObject);
    procedure ACBrGIF1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ACBrGIF1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ACBrGIF1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    Mpos : TPoint ;
    procedure AvaliaInterface ;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  try
     ACBrGIF1.Filename := 'numero_infinito.gif' ;
     AvaliaInterface ;
     edFileName.Text   := ACBrGIF1.Filename ;
  except
  end ;
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
     ACBrGIF1.Filename := OpenDialog1.FileName ;
     edFileName.Text   := ExtractFileName(OpenDialog1.FileName) ;

     AvaliaInterface ;
  end ;
end;

procedure TForm1.cbTransparentClick(Sender: TObject);
begin
  ACBrGIF1.Transparent := cbTransparent.Checked ;
end;

procedure TForm1.cbAutoSizeClick(Sender: TObject);
begin
  ACBrGIF1.AutoSize := cbAutoSize.Checked ;
end;

procedure TForm1.btStartClick(Sender: TObject);
begin
  ACBrGIF1.Start ;
end;

procedure TForm1.btStopClick(Sender: TObject);
begin
  ACBrGIF1.Stop ;
end;

procedure TForm1.btPauseClick(Sender: TObject);
begin
  ACBrGIF1.Pause ;
  AvaliaInterface ;
end;

procedure TForm1.btResumeClick(Sender: TObject);
begin
  ACBrGIF1.Resume ;
  AvaliaInterface ;
end;

procedure TForm1.edStartChange(Sender: TObject);
begin
  ACBrGIF1.StartFrame := StrToIntDef(edStart.Text,ACBrGIF1.StartFrame) ;
  edStart.Text        := IntToStr( ACBrGIF1.StartFrame ) ;
end;

procedure TForm1.edStopChange(Sender: TObject);
begin
  ACBrGIF1.StopFrame := StrToIntDef(edStop.Text,ACBrGIF1.StopFrame) ;
  edStop.Text        := IntToStr( ACBrGIF1.StopFrame ) ;
end;

procedure TForm1.edRepetitionsChange(Sender: TObject);
begin
  ACBrGIF1.Repetitions := StrToIntDef(edRepetitions.Text,0) ;
  edRepetitions.Text   := IntToStr( ACBrGIF1.Repetitions ) ;
end;

procedure TForm1.btPlayClick(Sender: TObject);
begin
  ACBrGIF1.Play( StrToIntDef(edStart.Text,1), StrToIntDef(edStop.Text,0),
                 StrToIntDef(edRepetitions.Text,0) );
  AvaliaInterface ;
end;

procedure TForm1.AvaliaInterface;
begin
  edFrames.Text := IntToStr(ACBrGIF1.GIF.NumFrames) ;
  edLoops.Text  := '0/'+IntToStr(ACBrGIF1.GIF.NumIterations);
  edWidth.Text  := IntToStr(ACBrGIF1.Width) ;
  edHeight.Text := IntToStr(ACBrGIF1.Height) ;
  cbActive.Checked := ACBrGIF1.Active ;
  cbPaused.Checked := ACBrGIF1.Paused ;
  ACBrGIF1ChangeFrame(ACBrGIF1);
  ACBrGIF1Loop(ACBrGIF1);
end;

procedure TForm1.ACBrGIF1ChangeFrame(Sender: TObject);
begin
  edCurrentFrame.Text := IntToStr( ACBrGIF1.CurrentFrame ) ;
end;

procedure TForm1.ACBrGIF1Loop(Sender: TObject);
begin
  edLoops.Text := IntToStr(ACBrGIF1.GIF.CurrentIteration) +'/'+ IntToStr(ACBrGIF1.GIF.NumIterations);
end;

procedure TForm1.ACBrGIF1Start(Sender: TObject);
begin
  AvaliaInterface ;
end;

procedure TForm1.ACBrGIF1Stop(Sender: TObject);
begin
  AvaliaInterface ;
end;

procedure TForm1.edCurrentFrameChange(Sender: TObject);
begin
  if ACBrGIF1.Paused or (not ACBrGIF1.Active) then
     ACBrGIF1.CurrentFrame := StrToIntDef(edCurrentFrame.Text, ACBrGIF1.CurrentFrame) ;
end;

procedure TForm1.ACBrGIF1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Mpos.X := X ;
  Mpos.Y := Y ; 
end;

procedure TForm1.ACBrGIF1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
  Var DoResize : Boolean ;
      DifX, DifY : Integer ;
begin
  // Est? no Cando Inferior e Direito ? Se SIM, fa?a Resize
  DoResize := (X > (ACBrGIF1.Width - 20)) and
              (Y > (ACBrGIF1.Height - 20)) ;

  if DoResize then
     ACBrGIF1.Cursor := crSizeNWSE
  else
     ACBrGIF1.Cursor := crHandPoint ;

  if ssLeft in Shift then
  begin
     DifY := (Y - Mpos.Y) ;
     DifX := (X - Mpos.X) ;
     
     if DoResize then
      begin
        ACBrGIF1.Width  := ACBrGIF1.Width  + DifX ;
        ACBrGIF1.Height := ACBrGIF1.Height + DifY ;
      end
     else
      begin
        ACBrGIF1.Top  := ACBrGIF1.Top  + DifY;
        ACBrGIF1.Left := ACBrGIF1.Left + DifX  ;
      end ;

      // Salva nova posi??o
     Mpos.X := X ;
     Mpos.Y := y ;
  end ;
end;

procedure TForm1.ACBrGIF1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  AvaliaInterface ;
end;

end.
