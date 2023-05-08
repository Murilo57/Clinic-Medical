program ClinicaMedica;

uses
  Forms,
  UPrincipal in '..\FORMS\UPrincipal.pas' {FrmPrincipal},
  UDM in '..\FORMS\UDM.pas' {DM: TDataModule},
  UCADPacientes in '..\FORMS\UCADPacientes.pas' {FrmPacientes},
  UCADAgendamento in '..\FORMS\UCADAgendamento.pas' {FrmAgendamento};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrmPacientes, FrmPacientes);
  Application.CreateForm(TFrmAgendamento, FrmAgendamento);
  Application.Run;
end.
