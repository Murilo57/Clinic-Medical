unit UPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, Buttons, Menus;

type
  TFrmPrincipal = class(TForm)
    PnlTopo: TPanel;
    Image1: TImage;
    BtnPacientes: TSpeedButton;
    BtnAgenda: TSpeedButton;
    MainMenu1: TMainMenu;
    BtnSair: TSpeedButton;
    MnSistema: TMenuItem;
    MnCadastro: TMenuItem;
    Sair1: TMenuItem;
    MnPacientes: TMenuItem;
    Agendamentos1: TMenuItem;
    procedure BtnAgendaClick(Sender: TObject);
    procedure BtnPacientesClick(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

uses UCADAgendamento, UCADPacientes, UDM;

{$R *.dfm}

procedure TFrmPrincipal.BtnSairClick(Sender: TObject);
begin
  if Application.Messagebox('Deseja sair?', 'Exit', MB_ICONINFORMATION+MB_YESNO) = MRYES then
  begin
    Application.Terminate;
  end
  else
  Abort;
end;

procedure TFrmPrincipal.BtnAgendaClick(Sender: TObject);
begin
  FrmAgendamento := TFrmAgendamento.Create(self);
  FrmAgendamento.ShowModal;
  try

  finally
    FrmAgendamento.Free;
    FrmAgendamento:= nil;
  end;
end;

procedure TFrmPrincipal.BtnPacientesClick(Sender: TObject);
begin
  FrmPacientes := TFrmPacientes.Create(self);
  FrmPacientes.ShowModal;
  try

  finally
    FrmPacientes.Free;
    FrmPacientes:=nil;
  end;
end;

end.
