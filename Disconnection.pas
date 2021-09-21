unit Disconnection;

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
  DsFancyButton,
  CRGrid,
  NxCollection, CRDBGrid1, frxClass, frxDBSet, MemDS, DBAccess, MyAccess, NxEdit,DateUtils;

type
  TDisconnectionForm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Edit1: TEdit;
    Option: TRadioGroup;
    VolgaDBGrid1: TCRDBGrid1;
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
    discoQ: TMyQuery;
    discoFrx: TfrxDBDataset;
    discoR: TfrxReport;
    discoQid: TIntegerField;
    discoQBillNumber: TStringField;
    discoQcode: TIntegerField;
    discoQAccountNumber: TStringField;
    discoQRateCode: TStringField;
    discoQName: TStringField;
    discoQBillMonth: TStringField;
    discoQLastReading: TIntegerField;
    discoQAmount: TFloatField;
    discoQposted: TStringField;
    discoQcollectorcode: TStringField;
    discoQdatepaid: TDateField;
    discoQbatch: TStringField;
    discoQMeterBrand: TStringField;
    discoQserialnumber: TStringField;
    discoQdateF: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1Change(Sender: TObject);
    procedure OptionClick(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure NxLinkLabel2Click(Sender: TObject);
    procedure PDJSillyLabel11Click(Sender: TObject);
    procedure NxLinkLabel1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DisconnectionForm: TDisconnectionForm;

implementation

uses Data;

{$R *.dfm}

procedure TDisconnectionForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  BillingData.Disco.Active := False;
  Action := caFree;
  DisconnectionForm := nil;
end;

procedure TDisconnectionForm.NxButton1Click(Sender: TObject);
begin
  panel4.Left := 114;
  panel4.Top := 44;
  panel4.BringToFront;
  panel4.Visible := true;

  NxDatePicker1.Date := StartOfTheMonth(now);
  NxDatePicker2.Date := EndOfTheMonth(now);

end;

procedure TDisconnectionForm.NxLinkLabel1Click(Sender: TObject);
begin
  discoQ.Close;
  discoQ.ParamByName('datefrom').Text := FormatDateTime('YYYY-MM-DD',NxDatePicker1.Date);
  discoQ.ParamByName('dateto').Text := FormatDateTime('YYYY-MM-DD',NxDatePicker2.Date);
  discoQ.ParamByName('datefromA').text := FormatDateTime('m/d/yyyy',NxDatePicker1.Date);
  discoQ.ParamByName('datetoA').text :=  FormatDateTime('m/d/yyyy',NxDatePicker2.Date);
  discoQ.Open;

  discoR.ShowReport;

end;

procedure TDisconnectionForm.NxLinkLabel2Click(Sender: TObject);
begin
    Panel4.Visible := false;
end;

procedure TDisconnectionForm.Edit1Change(Sender: TObject);
begin
  with BillingData do
    begin
      case Option.ItemIndex of
        1: Disco.Locate('AccountNumber',Edit1.Text,[]);
        2: Disco.Locate('Name',Edit1.Text,[loPartialKey]);
        3: Disco.Locate('SerialNumber',Edit1.Text,[]);
      end;
    end;
end;

procedure TDisconnectionForm.OptionClick(Sender: TObject);
begin
  with BillingData do
    begin
      case Option.ItemIndex of
        1: Disco.IndexFieldNames := 'AccountNumber';
        2: Disco.IndexFieldNames := 'Name';
        3: Disco.IndexFieldNames := 'SerialNumber';
      end;
      Edit1.SetFocus;
    end;
end;

procedure TDisconnectionForm.PDJSillyLabel11Click(Sender: TObject);
begin
  Close;
end;

end.
