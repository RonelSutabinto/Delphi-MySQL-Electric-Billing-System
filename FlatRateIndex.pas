unit FlatRateIndex;

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
  DBCtrls,
  Grids,
  DBGrids,
  ExtCtrls,
  PDJSillyLabel, DsFancyButton, CRGrid;

type
  TFlatRateIndexForm = class(TForm)
    Panel1: TPanel;
    DBGrid1: TCRDBGrid;
    DBNavigator1: TDBNavigator;
    Edit1: TEdit;
    PDJSillyLabel1: TDsFancyButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Change(Sender: TObject);
    procedure PDJSillyLabel1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FlatRateIndexForm: TFlatRateIndexForm;

implementation

uses Data,
  FlatRateIndexRecord;

{$R *.dfm}

procedure TFlatRateIndexForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  BillingData.FlatRateIndex.Active := False;
  Action := caFree;
  FlatRateIndexForm := nil;
end;

procedure TFlatRateIndexForm.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key in ['+', #13] then
    begin
      case Key of
        '+': BillingData.FlatRateIndex.Append;
        #13: BillingData.FlatRateIndex.Edit;
      end;
      if not assigned(FlatRateIndexRecordForm) then
        FlatRateIndexRecordForm := TFlatRateIndexRecordForm.Create(Application);
      FlatRateIndexRecordForm.Show;
    end;
end;

procedure TFlatRateIndexForm.Edit1Change(Sender: TObject);
begin
  BillingData.FlatRateIndex.Locate('Description',Edit1.Text,[]);
end;

procedure TFlatRateIndexForm.PDJSillyLabel1Click(Sender: TObject);
begin
  Close;
end;

end.
