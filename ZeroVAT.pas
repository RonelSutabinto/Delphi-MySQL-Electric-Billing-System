unit ZeroVAT;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, MemDS, DBAccess, MyAccess, NxCollection, Grids, DBGrids, CRGrid,
  CRDBGrid1, StdCtrls, Mask, DBCtrls, ComCtrls, AdvDateTimePicker,
  AdvDBDateTimePicker, NxEdit, QRCtrls, QuickRpt, ExtCtrls;

type
  TZeroVATForm = class(TForm)
    ZeroVATQ: TMyQuery;
    ZeroVATQidZeroVAT: TLongWordField;
    ZeroVATQCode: TFloatField;
    ZeroVATQAccountNumber: TStringField;
    ZeroVATQDateEntered: TDateField;
    NxLinkLabel1: TNxLinkLabel;
    NxLinkLabel2: TNxLinkLabel;
    NxLinkLabel3: TNxLinkLabel;
    NxLinkLabel4: TNxLinkLabel;
    CRDBGrid11: TCRDBGrid1;
    dsZeroVATQ: TMyDataSource;
    ZeroVATQName: TStringField;
    NxHeaderPanel1: TNxHeaderPanel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label1: TNxLinkLabel;
    NxLinkLabel5: TNxLinkLabel;
    NxLinkLabel6: TNxLinkLabel;
    MasterQ: TMyQuery;
    MasterQcode: TIntegerField;
    MasterQaccountnumber: TStringField;
    MasterQname: TStringField;
    dsMasterQ: TMyDataSource;
    NxHeaderPanel2: TNxHeaderPanel;
    Search: TNxEdit;
    CRDBGrid12: TCRDBGrid1;
    NxLinkLabel7: TNxLinkLabel;
    NxLinkLabel8: TNxLinkLabel;
    DBEdit2: TAdvDBDateTimePicker;
    NxLinkLabel9: TNxLinkLabel;
    NxHeaderPanel3: TNxHeaderPanel;
    Edit1: TEdit;
    NxButton1: TNxButton;
    NxLinkLabel10: TNxLinkLabel;
    Label4: TLabel;
    Panel1: TPanel;
    QuickRep1: TQuickRep;
    TitleBand1: TQRBand;
    DetailBand1: TQRBand;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRSysData4: TQRSysData;
    QRSysData5: TQRSysData;
    QRSysData6: TQRSysData;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText1: TQRDBText;
    ZeroVatList: TMyQuery;
    ZeroVatListidZeroVAT: TLongWordField;
    ZeroVatListCode: TFloatField;
    ZeroVatListAccountNumber: TStringField;
    ZeroVatListDateEntered: TDateField;
    ZeroVatListvatgenco: TFloatField;
    ZeroVatListvattransco: TFloatField;
    ZeroVatListvatsystemlossgenco: TFloatField;
    ZeroVatListvatdist: TFloatField;
    QRLabel8: TQRLabel;
    QRDBText2: TQRDBText;
    ZeroVatListname: TStringField;
    cv: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    ZeroVatListvat: TFloatField;
    QRDBText6: TQRDBText;
    SummaryBand1: TQRBand;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    procedure FormCreate(Sender: TObject);
    procedure NxLinkLabel1Click(Sender: TObject);
    procedure NxLinkLabel2Click(Sender: TObject);
    procedure NxLinkLabel3Click(Sender: TObject);
    procedure NxLinkLabel4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure NxLinkLabel5Click(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure SearchChange(Sender: TObject);
    procedure NxLinkLabel7Click(Sender: TObject);
    procedure NxLinkLabel8Click(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure NxLinkLabel6Click(Sender: TObject);
    procedure NxLinkLabel9Click(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure NxLinkLabel10Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ZeroVATForm: TZeroVATForm;

implementation

uses Data;

{$R *.dfm}

procedure TZeroVATForm.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
   begin
     Perform(CM_DIALOGKEY,VK_TAB,0);
     Key := #0;
   end;
end;

procedure TZeroVATForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  ZeroVATForm := Nil;
end;

procedure TZeroVATForm.FormCreate(Sender: TObject);
Var CreateQ : TMyQuery;
begin
  CreateQ := TMyQuery.Create(Self);
  CreateQ.Connection := BillingData.MyConnection1;
  CreateQ.SQL.Clear;

  CreateQ.SQL.Add('CREATE TABLE  `zaneco`.`zerovat` (');
  CreateQ.SQL.Add('  `idZeroVAT` int(10) unsigned NOT NULL auto_increment,');
  CreateQ.SQL.Add('  `Code` double default NULL,');
  CreateQ.SQL.Add('  `AccountNumber` varchar(10) default NULL,');
  CreateQ.SQL.Add('  `DateEntered` date default NULL,');
  CreateQ.SQL.Add('  PRIMARY KEY  (`idZeroVAT`),');
  CreateQ.SQL.Add('  KEY `Index_2` (`Code`),');
  CreateQ.SQL.Add('  KEY `Index_3` (`AccountNumber`)');
  CreateQ.SQL.Add(') ENGINE=InnoDB DEFAULT CHARSET=latin1;');

  Try
    CreateQ.Execute;
  Except

  End;
  FreeAndNil(CreateQ);
end;

procedure TZeroVATForm.FormShow(Sender: TObject);
begin
 ZeroVATQ.Open;
end;

procedure TZeroVATForm.Label1Click(Sender: TObject);
begin
  NxHeaderPanel2.Left := 195;
  NxHeaderPanel2.Top  := 174;
  NxHeaderPanel2.BringToFront;
  NxHeaderPanel2.Visible := True;
  Search.SetFocus;
end;

procedure TZeroVATForm.NxButton1Click(Sender: TObject);
begin
  ZeroVatList.ParamByName('BillMonth').Text := Edit1.Text;
  ZeroVatList.Open;
  QuickRep1.Preview;
  ZeroVatList.Close;
  NxHeaderPanel3.Visible := False;
end;

procedure TZeroVATForm.NxLinkLabel10Click(Sender: TObject);
begin
  NxHeaderPanel3.Visible := False;
end;

procedure TZeroVATForm.NxLinkLabel1Click(Sender: TObject);
begin
  NxHeaderPanel1.Left := 93;
  NxHeaderPanel1.Top  := 111;
  NxHeaderPanel1.BringToFront;
  NxHeaderPanel1.Visible := True;
  DBEdit1.SetFocus;
  ZeroVATQ.Append;
  DBEdit2.Date := Now;
end;

procedure TZeroVATForm.NxLinkLabel2Click(Sender: TObject);
begin
  NxHeaderPanel1.Left := 93;
  NxHeaderPanel1.Top  := 111;
  NxHeaderPanel1.BringToFront;
  NxHeaderPanel1.Visible := True;
  ZeroVATQ.Edit;
  DBEdit1.SetFocus;
end;

procedure TZeroVATForm.NxLinkLabel3Click(Sender: TObject);
Var DelZero : TMyQuery;
begin
  if ZeroVATQ.IsEmpty then
    begin
     MessageDlg('No records to delete...', mtError, [mbOK], 0);
     exit;
    end;

if (MessageDlg('Confirm delete', mtConfirmation, [mbOK, mbCancel], 0) = mrCancel) then exit;

DelZero := TMyQuery.Create(Self);
DelZero.Connection := BillingData.MyConnection1;
DelZero.SQL.Clear;
DelZero.SQL.Add('Delete from ZeroVAT where code = :Code');
DelZero.ParamByName('Code').Text := ZeroVATQCode.Text;
DelZero.Execute;
FreeAndNil(DelZero);
ZeroVATQ.Refresh;
end;

procedure TZeroVATForm.NxLinkLabel4Click(Sender: TObject);
begin
  ZeroVATQ.Close;
  MasterQ.Close;
  Close;
end;

procedure TZeroVATForm.NxLinkLabel5Click(Sender: TObject);
begin
  NxHeaderPanel1.Visible := False;
  NxHeaderPanel2.Visible := False;
  ZeroVATQ.Post;
end;

procedure TZeroVATForm.NxLinkLabel6Click(Sender: TObject);
begin
   ZeroVATQ.Cancel;
   NxHeaderPanel1.Visible := False;
end;

procedure TZeroVATForm.NxLinkLabel7Click(Sender: TObject);
begin
  if MasterQ.Active = false then
   begin
     MessageDlg('Nothing to select', mtError, [mbOK], 0);
     exit;
   end;
  if MasterQ.IsEmpty then
   begin
     MessageDlg('Nothing to select', mtError, [mbOK], 0);
     exit;
   end;

  ZeroVATQCode.Text          := MasterQcode.Text;
  ZeroVATQAccountNumber.Text := MasterQaccountnumber.Text;
  ZeroVATQName.Text          := MasterQname.Text;
  NxHeaderPanel2.Visible     := False;
end;

procedure TZeroVATForm.NxLinkLabel8Click(Sender: TObject);
begin
  MasterQ.Close;
  NxHeaderPanel2.Visible := False;
end;

procedure TZeroVATForm.NxLinkLabel9Click(Sender: TObject);
begin
  NxHeaderPanel3.Left    := 159;
  NxHeaderPanel3.Top     := 172;
  NxHeaderPanel3.Visible := True;
  NxHeaderPanel3.BringToFront;
  Edit1.SetFocus;
end;

procedure TZeroVATForm.SearchChange(Sender: TObject);
begin
  MasterQ.Close;
  MasterQ.FilterSQL := 'Name like '+QuotedStr(Search.Text+'%');
  MasterQ.Open;
end;

end.
