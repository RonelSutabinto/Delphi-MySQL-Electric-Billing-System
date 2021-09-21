unit FlatRate;

interface

uses
  Windows,
  Messages,
  Classes,
  SysUtils,
  Graphics,
  Controls,
  StdCtrls,
  Forms,
  Dialogs,
  DBCtrls,
  DB,
  Mask,
  ExtCtrls,
  Buttons,
  PDJSillyLabel,
  DsFancyButton;

type
  TFlatRateForm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    EditUnitCode: TDBEdit;
    EditDescription: TDBEdit;
    EditPieces: TDBEdit;
    EditKilowattHourPerUnit: TDBEdit;
    EditTotalKilowattHour: TDBEdit;
    PDJSillyLabel1: TButton;
    PDJSillyLabel2: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EditUnitCodeKeyPress(Sender: TObject; var Key: Char);
    procedure EditPiecesExit(Sender: TObject);
    procedure PDJSillyLabel1Click(Sender: TObject);
    procedure PDJSillyLabel2Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  FlatRateForm: TFlatRateForm;

implementation

uses Data, SelectFlatRate;

{$R *.DFM}

procedure TFlatRateForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFlatRateForm.EditUnitCodeKeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 then
  With TSelectFlatRateUnitForm.Create(Application) do show;
end;

procedure TFlatRateForm.EditPiecesExit(Sender: TObject);
begin
  With BillingData do
    FlatRateTotalKilowattHour.AsCurrency :=
    FlatRatePieces.AsCurrency *
    FlatRateKilowattHourPerunit.AsCurrency;
end;

procedure TFlatRateForm.PDJSillyLabel1Click(Sender: TObject);
begin
  BillingData.FlatRate.Post;
  Close;
end;

procedure TFlatRateForm.PDJSillyLabel2Click(Sender: TObject);
begin
  BillingData.FlatRate.Cancel;
  Close;
end;

end.