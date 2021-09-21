unit FlatRateIndexRecord;

interface

uses
  Windows,
  Messages,
  SysUtils,
  Variants,
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,
  StdCtrls,
  Buttons,
  Mask,
  DBCtrls,
  ExtCtrls,
  PDJSillyLabel,
  DsFancyButton;

type
  TFlatRateIndexRecordForm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    PDJSillyLabel1: TButton;
    PDJSillyLabel2: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PDJSillyLabel1Click(Sender: TObject);
    procedure PDJSillyLabel2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FlatRateIndexRecordForm: TFlatRateIndexRecordForm;

implementation

uses Data;

{$R *.dfm}

procedure TFlatRateIndexRecordForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
   FlatRateIndexRecordForm := Nil;
end;

procedure TFlatRateIndexRecordForm.PDJSillyLabel1Click(Sender: TObject);
begin
  BillingData.FlatRateIndex.Post;
  Close;
end;

procedure TFlatRateIndexRecordForm.PDJSillyLabel2Click(Sender: TObject);
begin
  BillingData.FlatRateIndex.Cancel;
  Close;
end;

end.
