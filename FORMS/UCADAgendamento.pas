unit UCADAgendamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, Mask, DBCtrls, ExtCtrls;

type
  TFrmAgendamento = class(TForm)
    PnlTopo: TPanel;
    LblCadastro: TLabel;
    BtnSair: TSpeedButton;
    DBGrid1: TDBGrid;
    BtnNovo: TBitBtn;
    BtnEditar: TBitBtn;
    BtnSalvar: TBitBtn;
    BtnDeletar: TBitBtn;
    BtnCancelar: TBitBtn;
    cbNome: TDBLookupComboBox;
    DBNavigator: TDBNavigator;
    lblID: TLabel;
    lblNome: TLabel;
    edtID: TDBEdit;
    lblData: TLabel;
    edtData: TDBEdit;
    lblHora: TLabel;
    edtHora: TDBEdit;
    lblEspecialidade: TLabel;
    lblMedico: TLabel;
    edtMedico: TDBEdit;
    cbEspecialidade: TDBComboBox;
    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnEditarClick(Sender: TObject);
    procedure BtnDeletarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAgendamento: TFrmAgendamento;

implementation

uses UDM;

{$R *.dfm}

procedure TFrmAgendamento.BtnCancelarClick(Sender: TObject);
begin
  dm.cdsAgenda.CancelUpdates;
end;

procedure TFrmAgendamento.BtnDeletarClick(Sender: TObject);
begin
  dm.cdsAgenda.Delete;
  dm.cdsAgenda.ApplyUpdates(0);
end;

procedure TFrmAgendamento.BtnEditarClick(Sender: TObject);
begin
  dm.cdsAgenda.Edit;
end;

procedure TFrmAgendamento.BtnNovoClick(Sender: TObject);
var proximo: Integer;
begin
  dm.cdsAgenda.Open;
  dm.cdsAgenda.Last;
  proximo := dm.cdsAgendaID.AsInteger + 1;
  dm.cdsAgenda.Append;
  dm.cdsAgendaID.AsInteger := proximo;
  dm.cdsAgendaDATA.AsDateTime := Date;
  dm.cdsAgendaHORA.AsDateTime:= Time;

end;

procedure TFrmAgendamento.BtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmAgendamento.BtnSalvarClick(Sender: TObject);
begin
  dm.cdsAgenda.Post;
  dm.cdsAgenda.ApplyUpdates(0);
  Application.MessageBox('Seu registro foi salvo com sucesso', 'Salvo',MB_ICONINFORMATION+MB_OK);
end;

end.
