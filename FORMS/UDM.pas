unit UDM;

interface

uses
  SysUtils, Classes, DBXpress, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TDM = class(TDataModule)
    Conexao: TSQLConnection;
    sqlPacientes: TSQLDataSet;
    dspPacientes: TDataSetProvider;
    cdsPacientes: TClientDataSet;
    dtsPacientes: TDataSource;
    sqlAgenda: TSQLDataSet;
    dspAgenda: TDataSetProvider;
    cdsAgenda: TClientDataSet;
    dtsAgenda: TDataSource;
    cdsPacientesID: TIntegerField;
    cdsPacientesNOME: TStringField;
    cdsPacientesCELULAR: TStringField;
    cdsPacientesDATA_CADASTRO: TDateField;
    cdsPacientesCPF: TStringField;
    cdsAgendaID: TIntegerField;
    cdsAgendaID_PACIENTE: TIntegerField;
    cdsAgendaDATA: TDateField;
    cdsAgendaESPECIALIDADE: TStringField;
    cdsAgendaMEDICO: TStringField;
    cdsAgendaHORA: TTimeField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{$R *.dfm}

end.
