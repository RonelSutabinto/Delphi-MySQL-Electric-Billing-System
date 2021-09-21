unit ChangeMeter;

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
  DB,
  PDJSillyLabel,
  PDJSillyTools,
  CRGrid,
  NxCollection, CRDBGrid1,dateUtils, frxClass, MemDS, DBAccess, MyAccess,
  frxDBSet, NxEdit;

type
  TChangeMeterForm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Edit1: TEdit;
    Option: TRadioGroup;
    DBGrid1: TCRDBGrid1;
    Panel3: TPanel;
    PDJSillyLabel11: TNxButton;
    NxButton1: TNxButton;
    Panel4: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    NxDatePicker1: TNxDatePicker;
    NxDatePicker2: TNxDatePicker;
    NxLinkLabel1: TNxLinkLabel;
    NxLinkLabel2: TNxLinkLabel;
    changeMFrx: TfrxDBDataset;
    changemeterQ: TMyQuery;
    changeMR: TfrxReport;
    changemeterQEntry: TIntegerField;
    changemeterQCode: TFloatField;
    changemeterQDate: TDateField;
    changemeterQArea: TStringField;
    changemeterQBook: TStringField;
    changemeterQSequence: TStringField;
    changemeterQAccountNumber: TStringField;
    changemeterQName: TStringField;
    changemeterQLastReading: TFloatField;
    changemeterQOldMeterBrand: TStringField;
    changemeterQOldSerialNumber: TStringField;
    changemeterQOldMeterMult: TFloatField;
    changemeterQInitialReading: TFloatField;
    changemeterQNewMeterBrand: TStringField;
    changemeterQNewMeterSerial: TStringField;
    changemeterQNewMeterMult: TFloatField;
    changemeterQFeedBack: TStringField;
    changemeterQAveCons: TFloatField;
    changemeterQPosted: TStringField;
    changemeterQSealNumber: TStringField;
    changemeterQdateF: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1Change(Sender: TObject);
    procedure PDJSillyLabel1Click(Sender: TObject);
    procedure OptionClick(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure NxLinkLabel2Click(Sender: TObject);
    procedure NxLinkLabel1Click(Sender: TObject);
    procedure PDJSillyLabel11Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ChangeMeterForm: TChangeMeterForm;

implementation

uses Data;

{$R *.dfm}

procedure TChangeMeterForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  BillingData.ChangeMeter.Active := False;
  Action := caFree;
  ChangeMeterForm := nil;
end;

procedure TChangeMeterForm.NxButton1Click(Sender: TObject);
begin
  panel4.Left := 114;
  panel4.Top := 44;
  panel4.BringToFront;
  panel4.Visible := true;

  NxDatePicker1.Date := StartOfTheMonth(now);
  NxDatePicker2.Date := EndOfTheMonth(now);

end;

procedure TChangeMeterForm.NxLinkLabel1Click(Sender: TObject);
begin
  changemeterQ.Close;
  changemeterQ.ParamByName('datefrom').Text := FormatDateTime('YYYY-MM-DD',NxDatePicker1.Date);
  changemeterQ.ParamByName('dateto').Text := FormatDateTime('YYYY-MM-DD',NxDatePicker2.Date);
  changemeterQ.ParamByName('datefromA').text := FormatDateTime('m/d/yyyy',NxDatePicker1.Date);
  changemeterQ.ParamByName('datetoA').text :=  FormatDateTime('m/d/yyyy',NxDatePicker2.Date);
  changemeterQ.Open;

  changeMR.ShowReport;

end;

procedure TChangeMeterForm.NxLinkLabel2Click(Sender: TObject);
begin
  panel4.Visible := false;
end;

procedure TChangeMeterForm.Edit1Change(Sender: TObject);
begin
  with BillingData do
    begin
      case Option.ItemIndex of
        1: ChangeMeter.Locate('AccountNumber',Edit1.Text,[]);
        2: ChangeMeter.Locate('Name',Edit1.Text,[LoPartialkey]);
        3: ChangeMeter.Locate('OldSerialNumber',Edit1.Text,[]);
        4: ChangeMeter.Locate('NewMeterSerial',Edit1.Text,[]);
      end;
    end;
end;

procedure TChangeMeterForm.PDJSillyLabel11Click(Sender: TObject);
begin
  Close;
end;

procedure TChangeMeterForm.PDJSillyLabel1Click(Sender: TObject);
begin
  Close;
end;

procedure TChangeMeterForm.OptionClick(Sender: TObject);
begin
  with BillingData do
    begin
      case Option.ItemIndex of
        1: ChangeMeter.IndexFieldNames := 'AccountNumber';
        2: ChangeMeter.IndexFieldNames := 'Name';
        3: ChangeMeter.IndexFieldNames := 'OldSerialNumber';
        4: ChangeMeter.IndexFieldNames := 'NewMeterSerial';
      end;
    end;
  Edit1.SetFocus;
end;

end.
