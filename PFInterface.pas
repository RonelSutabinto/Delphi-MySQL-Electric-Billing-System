unit PFInterface;

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
  Dialogs, StdCtrls, ExtCtrls, DsFancyButton, Grids, DBGrids, DB, MemDS,
  DBAccess, MyAccess, CRGrid, ComCtrls, QRCtrls, QuickRpt, NxCollection,
  CRDBGrid1, DBGrid1;

type
  TPFForm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Consumer: TLabeledEdit;
    ConsumerOption: TRadioGroup;
    DsFancyButton1: TNxButton;
    DsFancyButton2: TNxButton;
    PFAccount: TMyQuery;
    PFAccountid: TIntegerField;
    PFAccountcode: TFloatField;
    PFAccountArea: TStringField;
    PFAccountBook: TStringField;
    PFAccountAccountNumber: TStringField;
    PFAccountName: TStringField;
    PFAccountAddress: TStringField;
    PFAccountConnCode: TStringField;
    AP: TMyQuery;
    DSPFAccount: TDataSource;
    Bevel1: TBevel;
    DsFancyButton3: TNxButton;
    PFBills: TMyQuery;
    DSPFBills: TDataSource;
    DsFancyButton4: TNxButton;
    DsFancyButton5: TNxButton;
    DsFancyButton6: TNxButton;
    PFBillsid: TIntegerField;
    PFBillscode: TFloatField;
    PFBillsaccountnumber: TStringField;
    PFBillsbillnumber: TStringField;
    PFBillsbillmonth: TStringField;
    PFBillsamount: TFloatField;
    AddAccount: TMyQuery;
    DsFancyButton7: TNxButton;
    AddBill: TMyQuery;
    DsFancyButton8: TNxButton;
    Panel3: TPanel;
    QuickRep1: TQuickRep;
    TitleBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    CRDBGrid1: TCRDBGrid1;
    DBGrid2: TDBGrid1;
    procedure FormCreate(Sender: TObject);
    procedure DsFancyButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DsFancyButton2Click(Sender: TObject);
    procedure DsFancyButton3Click(Sender: TObject);
    procedure DsFancyButton7Click(Sender: TObject);
    procedure DsFancyButton4Click(Sender: TObject);
    procedure DsFancyButton5Click(Sender: TObject);
    procedure DsFancyButton6Click(Sender: TObject);
    procedure ConsumerKeyPress(Sender: TObject; var Key: Char);
    procedure DsFancyButton8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PFForm: TPFForm;

implementation

uses Data;

{$R *.dfm}

procedure TPFForm.FormCreate(Sender: TObject);
begin
  DoubleBuffered := True;
end;

procedure TPFForm.DsFancyButton1Click(Sender: TObject);
begin

  if ConsumerOption.ItemIndex = 1 then
    begin
      MessageDlg('Cannot add consumer.... '+#13+#10+'please select account in consumer option.', mtError, [mbOK], 0);
      exit;
    end;


  ap.Close;
  ap.SQL.Clear;
  ap.SQL.Add('select * from pfaccount');
  ap.SQL.Add('where accountnumber = :accountnumber');
  ap.ParamByName('accountnumber').text := Consumer.Text;
  ap.Execute;

  if not ap.IsEmpty then
    begin
      MessageDlg('That account has already been entered......', mtError, [mbOK], 0);
      ap.Close;
      exit;
    end;

  AddAccount.Close;
  AddAccount.ParamByName('AccountNumber').text := Consumer.Text;
  AddAccount.Execute;
  PFAccount.Refresh;
  PFAccount.Last;

end;

procedure TPFForm.FormShow(Sender: TObject);
begin
  PFAccount.Open;
  PFBills.Open;
end;

procedure TPFForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   PFAccount.Close;
   PFBills.Close;
end;

procedure TPFForm.DsFancyButton2Click(Sender: TObject);
begin
  Case ConsumerOption.ItemIndex of
   0 : PFAccount.Locate('AccountNumber',Consumer.Text,[]);
   1 : PFAccount.Locate('Name',Consumer.Text,[loPartialKey]);
  end;
end;

procedure TPFForm.DsFancyButton3Click(Sender: TObject);
begin
  if (MessageDlg('Continue to delete selected record?', mtConfirmation, [mbYes, mbNo], 0) = mrNo) then exit;
  PFAccount.Delete;
end;

procedure TPFForm.DsFancyButton7Click(Sender: TObject);
begin
  Close;
end;

procedure TPFForm.DsFancyButton4Click(Sender: TObject);
begin

  AP.Close;
  AP.SQL.Clear;
  AP.SQL.Add('truncate pfbills');
  AP.Execute;

  AddBill.Close;
  AddBill.Execute;
  PFBills.Refresh;

end;

procedure TPFForm.DsFancyButton5Click(Sender: TObject);
begin
  PFBills.MasterSource := DSPFAccount;
  PFBills.MasterFields := 'code';
  PFBills.DetailFields := 'code';
end;

procedure TPFForm.DsFancyButton6Click(Sender: TObject);
begin
  PFBills.MasterSource := nil;
  PFBills.MasterFields := '';
  PFBills.DetailFields := '';
end;

procedure TPFForm.ConsumerKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
    begin
      DsFancyButton1Click(self);
      Consumer.Text := '';
      Consumer.SetFocus;
    end;
end;

procedure TPFForm.DsFancyButton8Click(Sender: TObject);
begin
  PFAccount.Refresh;
  QuickRep1.Preview;
end;

end.
