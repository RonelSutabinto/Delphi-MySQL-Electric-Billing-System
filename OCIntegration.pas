unit OCIntegration;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBAccess, MyAccess, MemDS, Grids, DBGrids, CRGrid, NxCollection,
  StdCtrls, ExtCtrls, DBCtrls, Mask, QuickRpt, ComCtrls, QRCtrls, DateUtils,
  CRDBGrid1;

type
  TOCIntegrationForm = class(TForm)
    NxHeaderPanel1: TNxHeaderPanel;
    NxLinkLabel1: TNxLinkLabel;
    NxLinkLabel2: TNxLinkLabel;
    NxLinkLabel3: TNxLinkLabel;
    OCMaster: TMyQuery;
    NxButton1: TNxButton;
    NxButton2: TNxButton;
    NxButton3: TNxButton;
    NxButton4: TNxButton;
    dsOCMaster: TMyDataSource;
    OCMasterDateEntered: TDateField;
    OCMasterDescription: TStringField;
    OCMasterOCType: TStringField;
    OCMasterAccountCode: TStringField;
    AC: TMyQuery;
    ACCode: TStringField;
    ACDescription: TStringField;
    ACAmount: TFloatField;
    ACWithEVAT: TStringField;
    ACExcludeCOH: TStringField;
    dsAC: TMyDataSource;
    OCMasterPanel: TNxHeaderPanel;
    Label1: TLabel;
    Label3: TLabel;
    DBRadioGroup1: TDBRadioGroup;
    NxLinkLabel4: TNxLinkLabel;
    NxLinkLabel5: TNxLinkLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    NxLinkLabel6: TNxLinkLabel;
    AccountCodePanel: TNxHeaderPanel;
    NxLinkLabel7: TNxLinkLabel;
    NxLinkLabel8: TNxLinkLabel;
    OCDetailsPanel: TNxHeaderPanel;
    NxLinkLabel9: TNxLinkLabel;
    NxLinkLabel10: TNxLinkLabel;
    NxLinkLabel11: TNxLinkLabel;
    NxLinkLabel12: TNxLinkLabel;
    OCDetail: TMyQuery;
    dsOCDetail: TMyDataSource;
    OCLedger: TMyQuery;
    OCLedgeridOCDetail: TFloatField;
    OCLedgerCode: TFloatField;
    OCLedgerDateEntered: TDateField;
    OCLedgerBillMonth: TStringField;
    OCLedgerBillNumber: TStringField;
    OCLedgerAmount: TFloatField;
    OCLedgerTORNumber: TStringField;
    dsOCLedger: TMyDataSource;
    NxLinkLabel13: TNxLinkLabel;
    OCDetailidOCMaster: TFloatField;
    OCDetailCode: TFloatField;
    OCDetailConsumerName: TStringField;
    OCDetailDateEntered: TDateField;
    OCDetailAmount: TFloatField;
    DetailPanel: TNxHeaderPanel;
    NxLinkLabel14: TNxLinkLabel;
    NxLinkLabel15: TNxLinkLabel;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    DBEdit6: TDBEdit;
    Label6: TLabel;
    DBEdit7: TDBEdit;
    M: TMyQuery;
    NxLinkLabel16: TNxLinkLabel;
    dsM: TMyDataSource;
    Mcode: TIntegerField;
    Maccountnumber: TStringField;
    Mname: TStringField;
    ConsumerListPanel: TNxHeaderPanel;
    NxLinkLabel17: TNxLinkLabel;
    NxLinkLabel18: TNxLinkLabel;
    OCDetailStatus: TStringField;
    OCDetailDateClosed: TDateField;
    LedgerViewPanel: TNxHeaderPanel;
    NxLinkLabel19: TNxLinkLabel;
    NxLinkLabel20: TNxLinkLabel;
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    QuickRep1: TQuickRep;
    TitleBand1: TQRBand;
    DetailBand1: TQRBand;
    SummaryBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRImage1: TQRImage;
    ConsName: TQRLabel;
    QRLabel4: TQRLabel;
    AreaOfficeLabel: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel1: TQRLabel;
    AcctDesc: TQRLabel;
    QRLabel5: TQRLabel;
    OCLedgerDatePaid: TDateField;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRExpr1: TQRExpr;
    QRLabel11: TQRLabel;
    MSumm: TMyQuery;
    MSummaccountcode: TStringField;
    MSummdescription: TStringField;
    MSummBillingType: TStringField;
    MSummAccountNumber: TStringField;
    MSummConsumerName: TStringField;
    MSummDateEntered: TDateField;
    MSummAmount: TFloatField;
    MSummbillcount: TLargeintField;
    MSummbilledamount: TFloatField;
    MSummpaidcount: TLargeintField;
    MSummpaidamount: TFloatField;
    TabSheet2: TTabSheet;
    QuickRep2: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    DetailBand2: TQRBand;
    SummaryBand2: TQRBand;
    QRSysData2: TQRSysData;
    QRImage2: TQRImage;
    QRLabel3: TQRLabel;
    OCReportTitle: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRGroup1: TQRGroup;
    QRDBText9: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRLabel25: TQRLabel;
    QRBand1: TQRBand;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    QRLabel26: TQRLabel;
    CloseAccountPanel: TNxHeaderPanel;
    CA: TMyQuery;
    CAaccountcode: TStringField;
    CAdescription: TStringField;
    CABillingType: TStringField;
    CAAccountNumber: TStringField;
    CAConsumerName: TStringField;
    CADateEntered: TDateField;
    CAAmount: TFloatField;
    CAbillcount: TLargeintField;
    CAbilledamount: TFloatField;
    CApaidcount: TLargeintField;
    CApaidamount: TFloatField;
    NxLinkLabel21: TNxLinkLabel;
    dsCA: TMyDataSource;
    ClosingDate: TDateTimePicker;
    Label2: TLabel;
    NxButton5: TNxButton;
    NxButton6: TNxButton;
    UpdateClose: TMyQuery;
    CreateOCTables: TMyQuery;
    DBEdit8: TDBEdit;
    Label7: TLabel;
    OCMasterOCCODE: TStringField;
    OCDetailAccountNumber: TStringField;
    OCDetailCBook: TStringField;
    CBM: TMyQuery;
    Label8: TLabel;
    CurrentBillMonth: TEdit;
    CBMbillmonth: TStringField;
    CBMmbillorder: TDateField;
    NxButton7: TNxButton;
    OCBilling: TMyQuery;
    TabSheet3: TTabSheet;
    QuickRep3: TQuickRep;
    QRBand2: TQRBand;
    QRSysData3: TQRSysData;
    QRImage3: TQRImage;
    QRLabel12: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel35: TQRLabel;
    QRBand3: TQRBand;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText23: TQRDBText;
    QRBand4: TQRBand;
    QRExpr8: TQRExpr;
    QRLabel40: TQRLabel;
    QRGroup2: TQRGroup;
    QRDBText28: TQRDBText;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    QRBand5: TQRBand;
    QRExpr11: TQRExpr;
    QRLabel41: TQRLabel;
    OCBillingaccountcode: TStringField;
    OCBillingdescription: TStringField;
    OCBillingBillingType: TStringField;
    OCBillingAccountNumber: TStringField;
    OCBillingConsumerName: TStringField;
    OCBillingDateEntered: TDateField;
    OCBillingAmount: TFloatField;
    OCBillingBillMonth: TStringField;
    OCBillingbillcount: TLargeintField;
    OCBillingBillNumber: TStringField;
    QRLabel34: TQRLabel;
    QRDBText22: TQRDBText;
    OCDetailOCCode: TStringField;
    DBEdit9: TDBEdit;
    Label9: TLabel;
    OCMasterDebitAccountCode: TStringField;
    OCMasteridocmaster: TLongWordField;
    OCDetailidOCDetail: TLongWordField;
    OCBillingMonths: TLongWordField;
    MSummMonths: TLongWordField;
    CAMonths: TLongWordField;
    CAidOCDetail: TLongWordField;
    OCDetailMonths: TLongWordField;
    CRDBGrid5: TCRDBGrid1;
    CRDBGrid1: TCRDBGrid1;
    CRDBGrid6: TCRDBGrid1;
    CRDBGrid4: TCRDBGrid1;
    CRDBGrid3: TCRDBGrid1;
    CRDBGrid2: TCRDBGrid1;
    procedure NxButton4Click(Sender: TObject);
    procedure NxLinkLabel6Click(Sender: TObject);
    procedure NxLinkLabel7Click(Sender: TObject);
    procedure NxLinkLabel8Click(Sender: TObject);
    procedure NxLinkLabel4Click(Sender: TObject);
    procedure NxLinkLabel5Click(Sender: TObject);
    procedure NxLinkLabel1Click(Sender: TObject);
    procedure NxLinkLabel2Click(Sender: TObject);
    procedure NxLinkLabel3Click(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure NxLinkLabel12Click(Sender: TObject);
    procedure NxLinkLabel9Click(Sender: TObject);
    procedure NxLinkLabel18Click(Sender: TObject);
    procedure NxLinkLabel16Click(Sender: TObject);
    procedure NxLinkLabel17Click(Sender: TObject);
    procedure NxLinkLabel10Click(Sender: TObject);
    procedure NxLinkLabel11Click(Sender: TObject);
    procedure NxLinkLabel14Click(Sender: TObject);
    procedure NxLinkLabel15Click(Sender: TObject);
    procedure NxLinkLabel20Click(Sender: TObject);
    procedure NxLinkLabel13Click(Sender: TObject);
    procedure NxLinkLabel19Click(Sender: TObject);
    procedure NxButton2Click(Sender: TObject);
    procedure NxButton3Click(Sender: TObject);
    procedure NxButton5Click(Sender: TObject);
    procedure NxLinkLabel21Click(Sender: TObject);
    procedure NxButton6Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure OCDetailCalcFields(DataSet: TDataSet);
    procedure NxButton7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OCIntegrationForm: TOCIntegrationForm;

implementation

uses Data;

{$R *.dfm}

procedure TOCIntegrationForm.FormShow(Sender: TObject);
begin
  Try
    CreateOCTables.Execute;
  except
  End;

  OCMaster.Open;
  CBM.Open;
  CurrentBillMonth.Text := CBMbillmonth.Text;
  CBM.Close;

end;

procedure TOCIntegrationForm.NxButton1Click(Sender: TObject);
begin
  OCDetailsPanel.Left    := 94;
  OCDetailsPanel.Top     := 50;
  OCDetailsPanel.Visible := True;
  OCDetailsPanel.BringToFront;

  OCDetailsPanel.Caption := 'Details for '+OCMasterDescription.Text;

  OCDetail.Close;
  OCDetail.ParamByName('idocmaster').Text := OCMasteridocmaster.Text;
  OCDetail.Open;
end;

procedure TOCIntegrationForm.NxButton2Click(Sender: TObject);
begin
  MSumm.Open;
  QRLabel2.Caption := 'Monthly Other Charges Summary';
  QRLabel3.Caption := 'For the period ending '+FormatDateTime('MMMM, YYYY',Now);
  QuickRep2.DataSet := MSumm;
  QuickRep2.Preview;
  MSumm.Close;
end;

procedure TOCIntegrationForm.NxButton3Click(Sender: TObject);
begin
  CA.Close;
  CA.ParamByName('status').Text := '1';
  CA.Open;
  CloseAccountPanel.Left    := 50;
  CloseAccountPanel.Top     := 39;
  CloseAccountPanel.Visible := True;
  CloseAccountPanel.BringToFront;
end;

procedure TOCIntegrationForm.NxButton4Click(Sender: TObject);
begin
  Close;
end;

procedure TOCIntegrationForm.NxButton5Click(Sender: TObject);
begin
  if (MessageDlg('Close this account '+CAdescription.Text+' '+
                                       CAAccountNumber.Text+' '+
                                       CAConsumerName.Text+#13+#10+'Proceed?', mtConfirmation, [mbYes, mbCancel], 0) = mrCancel) then exit;

  UpdateClose.ParamByName('idocdetail').Text := CAidOCDetail.Text;
  UpdateClose.Execute;
  MessageDlg('Done...', mtInformation, [mbOK], 0);
  CA.Refresh;
end;

procedure TOCIntegrationForm.NxButton6Click(Sender: TObject);
begin
  CA.Close;
  CA.ParamByName('status').Text := '2';
  CA.FilterSQL := 'DateClosed between '+ QuotedStr(DateToStr(StartOfTheMonth(ClosingDate.DateTime))) + ' and ' +QuotedStr(DateToStr(EndOfTheMonth(ClosingDate.DateTime)));
  CA.Open;
  QRLabel2.Caption := 'Other Charges Closed Accounts Summary';
  QRLabel3.Caption := 'For the period covered '+FormatDateTime('MM/DD',StartOfTheMonth(ClosingDate.DateTime))+ ' - '+FormatDateTime('MM/DD/YYYY',StartOfTheMonth(ClosingDate.DateTime));
  QuickRep2.DataSet := CA;
  QuickRep2.Preview;
  CA.Close;
  CA.Close;
  CA.ParamByName('status').Text := '1';
  CA.FilterSQL := '';
  CA.Open;
end;

procedure TOCIntegrationForm.NxButton7Click(Sender: TObject);
begin
  OCBilling.ParamByName('BillMonth').Text := CurrentBillMonth.Text;
  OCBilling.Open;
  QRLabel12.Caption := 'Billing Month '+FormatDateTime('MMMM, YYYY',StrToDate(Copy(CurrentBillMonth.Text,1,2)+'/01/'+Copy(CurrentBillMonth.Text,3,2)));
  QuickRep3.DataSet := OCBilling;
  QuickRep3.Preview;
  OCBilling.Close;
end;

procedure TOCIntegrationForm.NxLinkLabel10Click(Sender: TObject);
begin
  DetailPanel.Left := 180;
  DetailPanel.Top  := 138;
  DetailPanel.Visible := True;
  DetailPanel.BringToFront;
  OCDetail.Edit;
  OCDetailDateEntered.EditMask := '!99/99/00;1;_';
  DBEdit4.SetFocus;
end;

procedure TOCIntegrationForm.NxLinkLabel11Click(Sender: TObject);
Var DetailQ : TMyQuery;
begin
  if OCDetail.IsEmpty then
    begin
      MessageDlg('Nothing to delete.', mtError, [mbOK], 0);
      exit;
    end;

  DetailQ := TMyQuery.Create(Self);
  DetailQ.Connection := BillingData.MyConnection1;

  DetailQ.SQL.Clear;
  DetailQ.SQL.Add('select * from ocledger where idocdetail = :idocdetail');
  DetailQ.ParamByName('idocdetail').Text := OCDetailidOCDetail.Text;
  DetailQ.Open;

  if not DetailQ.IsEmpty  then
    begin
      MessageDlg('There are details for this account.. cant delete..', mtError, [mbOK], 0);
      exit;
    end;

  if (MessageDlg('Confirm delete', mtConfirmation, [mbYes, mbCancel], 0) = mrCancel) then exit;

  OCDetail.Delete;
  OCDetail.Refresh;
end;

procedure TOCIntegrationForm.NxLinkLabel12Click(Sender: TObject);
begin
  OCDetailsPanel.Visible := False;
end;

procedure TOCIntegrationForm.NxLinkLabel13Click(Sender: TObject);
begin
  LedgerViewPanel.Left    := 86;
  LedgerViewPanel.Top     := 26;
  LedgerViewPanel.Visible := True;
  LedgerViewPanel.BringToFront;

  LedgerViewPanel.Caption := 'Ledger for '+OCDetailConsumerName.Text+' Account '+OCMasterDescription.Text;
  OCLedger.Close;
  OCLedger.ParamByName('idOCDetail').Text := OCDetailidOCDetail.Text;
  OCLedger.Open;

end;

procedure TOCIntegrationForm.NxLinkLabel14Click(Sender: TObject);
begin
 if OCDetailCode.Text = '' then
   begin
     MessageDlg('Select a Consumer', mtError, [mbOK], 0);
     DBEdit4.SetFocus;
     exit;
   end;

  OCDetail.Post;
  DetailPanel.Visible := False;
end;

procedure TOCIntegrationForm.NxLinkLabel15Click(Sender: TObject);
begin
  OCDetail.Cancel;
  DetailPanel.Visible := False;
end;

procedure TOCIntegrationForm.NxLinkLabel16Click(Sender: TObject);
begin
  ConsumerListPanel.Left    := 332;
  ConsumerListPanel.Top     := 29;
  ConsumerListPanel.Visible := True;
  ConsumerListPanel.BringToFront;

  M.Close;
  M.ParamByName('name').Text := '%'+DBEdit4.Text+'%';
  M.Open;
end;

procedure TOCIntegrationForm.NxLinkLabel17Click(Sender: TObject);
begin
  OCDetailCode.Text         := Mcode.Text;
  OCDetailConsumerName.Text := Mname.Text;
  ConsumerListPanel.Visible := False;
end;

procedure TOCIntegrationForm.NxLinkLabel18Click(Sender: TObject);
begin
  ConsumerListPanel.Visible := False;
  m.Close;
end;

procedure TOCIntegrationForm.NxLinkLabel19Click(Sender: TObject);
Var Mas : TMyQuery;
begin
  Mas := TMyQuery.Create(Self);
  Mas.Connection := BillingData.MyConnection1;
  Mas.SQL.Clear;
  Mas.SQL.Add('select accountnumber from billingdata.master where code = :code');
  Mas.ParamByName('code').Text := OCDetailCode.Text;
  Mas.Open;

  ConsName.Caption := OCDetailConsumerName.Text + ' ' + Mas.FieldByName('accountnumber').Text;
  AcctDesc.Caption := OCMasterDescription.Text + ' ' +OCMasterOCType.Text + ' Months ' +OCDetailMonths.Text;
  QuickRep1.Preview;
  Mas.Close;
end;

procedure TOCIntegrationForm.NxLinkLabel1Click(Sender: TObject);
begin
  OCMasterPanel.Left := 189;
  OCMasterPanel.Top  := 105;
  OCMasterPanel.Visible := True;
  OCMasterPanel.BringToFront;
  OCMaster.Append;
  OCMasterDateEntered.EditMask   := '!99/99/00;1;_';
  OCMasterDateEntered.AsDateTime := Now;
  DBEdit2.SetFocus;
end;

procedure TOCIntegrationForm.NxLinkLabel20Click(Sender: TObject);
begin
 LedgerViewPanel.Visible := False;
end;

procedure TOCIntegrationForm.NxLinkLabel21Click(Sender: TObject);
begin
  CA.Close;
  CloseAccountPanel.Visible := False;
end;

procedure TOCIntegrationForm.NxLinkLabel2Click(Sender: TObject);
begin
  OCMasterPanel.Left := 189;
  OCMasterPanel.Top  := 105;
  OCMasterPanel.Visible := True;
  OCMasterPanel.BringToFront;
  OCMaster.Edit;
  OCMasterDateEntered.EditMask   := '!99/99/00;1;_';
  DBEdit2.SetFocus;
end;

procedure TOCIntegrationForm.NxLinkLabel3Click(Sender: TObject);
Var DetailQ : TMyQuery;
begin
  if OCMaster.IsEmpty then
    begin
      MessageDlg('Nothing to delete.', mtError, [mbOK], 0);
      exit;
    end;

  DetailQ := TMyQuery.Create(Self);
  DetailQ.Connection := BillingData.MyConnection1;

  DetailQ.SQL.Clear;
  DetailQ.SQL.Add('select * from ocdetail where idocmaster = :idocmaster');
  DetailQ.ParamByName('idocmaster').Text := OCMasteridocmaster.Text;
  DetailQ.Open;

  if not DetailQ.IsEmpty  then
    begin
      MessageDlg('There are details for this account.. cant delete..', mtError, [mbOK], 0);
      exit;
    end;

  if (MessageDlg('Confirm delete', mtConfirmation, [mbYes, mbCancel], 0) = mrCancel) then exit;

  OCMaster.Delete;
  OCMaster.Refresh;
end;

procedure TOCIntegrationForm.NxLinkLabel4Click(Sender: TObject);
begin
 if DBRadioGroup1.ItemIndex < 0 then
   begin
     MessageDlg('Select a valid OC Type', mtError, [mbOK], 0);
     DBRadioGroup1.SetFocus;
     exit;
   end;

 if (DBEdit2.Text = '') or (DBEdit3.Text = '') then
   begin
     MessageDlg('Must have account code and description', mtError, [mbOK], 0);
     DBEdit2.SetFocus;
     exit;
   end;

  OCMaster.Post;
  OCMasterPanel.Visible := False;
end;

procedure TOCIntegrationForm.NxLinkLabel5Click(Sender: TObject);
begin
  OCMaster.Cancel;
  OCMasterPanel.Visible := False;
end;

procedure TOCIntegrationForm.NxLinkLabel6Click(Sender: TObject);
begin
   AC.Open;
   AccountCodePanel.Left    := 336;
   AccountCodePanel.Top     := 48;
   AccountCodePanel.Visible := True;
   AccountCodePanel.BringToFront;
   OCMasterPanel.Enabled    := False;
   CRDBGrid2.SetFocus;
end;

procedure TOCIntegrationForm.NxLinkLabel7Click(Sender: TObject);
begin
   AccountCodePanel.Visible := False;
   OCMasterAccountCode.Text := ACCode.Text;
   OCMasterDescription.Text := ACDescription.Text;
   OCMasterPanel.Enabled    := True;
   DBRadioGroup1.SetFocus;
   AC.Close;
end;

procedure TOCIntegrationForm.NxLinkLabel8Click(Sender: TObject);
begin
   AC.Close;
   AccountCodePanel.Visible := False;
   OCMasterPanel.Enabled    := True;
   DBEdit2.SetFocus;
end;

procedure TOCIntegrationForm.NxLinkLabel9Click(Sender: TObject);
begin
  DetailPanel.Left := 180;
  DetailPanel.Top  := 138;
  DetailPanel.Visible := True;
  DetailPanel.BringToFront;
  OCDetail.Append;
  OCDetailidOCMaster.Text        := OCMasteridocmaster.Text;
  OCDetailOCCode.Text            := OCMasterOCCODE.Text;
  OCDetailDateEntered.AsDateTime := Now;
  OCDetailDateEntered.EditMask   := '!99/99/00;1;_';
  DBEdit4.SetFocus;

  if OCMasterOCType.Text <> 'M' then DBEdit7.Enabled := True else DBEdit7.Enabled := False;
end;

procedure TOCIntegrationForm.OCDetailCalcFields(DataSet: TDataSet);
Var Master : TMyQuery;
begin
  Master := TMyQuery.Create(Self);
  Master.Connection := BillingData.MyConnection1;
  Master.SQL.Clear;
  Master.SQL.Add('select accountnumber, cbook from master where code = :code');
  Master.ParamByName('code').Text := OCDetailCode.Text;
  Master.Open;

  OCDetailAccountNumber.Text := Master.FieldByName('AccountNumber').Text;
  OCDetailCBook.Text         := Master.FieldByName('CBook').Text;
  Master.Close;
end;

end.
