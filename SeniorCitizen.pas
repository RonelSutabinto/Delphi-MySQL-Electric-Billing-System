unit SeniorCitizen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, NxEdit, NxCollection, Grids, DBGrids, CRGrid, DB,
  MemDS, DBAccess, MyAccess, Mask, DBCtrls, ExtCtrls, QRCtrls, QuickRpt,
  ComCtrls;

type
  TSCForm = class(TForm)
    NxButton1: TNxButton;
    SCSearch: TNxEdit;
    NxButton2: TNxButton;
    NxButton3: TNxButton;
    NxButton4: TNxButton;
    NxButton5: TNxButton;
    NxLabel1: TNxLabel;
    NxButton6: TNxButton;
    CRDBGrid1: TCRDBGrid;
    NxButton7: TNxButton;
    SCRecordPanel: TNxHeaderPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    NxButton8: TNxButton;
    NxButton9: TNxButton;
    Master: TMyQuery;
    MasterAccountCode: TFloatField;
    MasterNewConnectionDate: TDateField;
    MasterArea: TStringField;
    MasterBook: TStringField;
    MasterSequence: TStringField;
    MasterAccountGroup: TStringField;
    MasterAccountNumber: TStringField;
    MasterName: TStringField;
    MasterAddress: TStringField;
    MasterRateCode: TStringField;
    MasterPipeSize: TStringField;
    MasterConnectionCode: TStringField;
    MasterPenaltyCode: TSmallintField;
    MasterBillingCode: TStringField;
    MasterBillingStatus: TStringField;
    MasterMeterBrand: TStringField;
    MasterMeterSerialNumber: TStringField;
    MasterInstallationDate: TDateField;
    MasterLastDisconnectionDate: TDateField;
    MasterLastReconnectionDate: TDateField;
    MasterPreviousBillingDate: TDateField;
    MasterPresentBillingDate: TDateField;
    MasterPreviousMeterReading: TFloatField;
    MasterPresentMeterReading: TFloatField;
    MasterBillingCubicMeter: TFloatField;
    MasterChangeMeter: TSmallintField;
    MasterCMPreviousReading: TFloatField;
    MasterCMLastReading: TFloatField;
    MasterCMCubicMeter: TFloatField;
    MasterBillingAmount: TFloatField;
    MasterArrears: TFloatField;
    MasterOtherCharges: TFloatField;
    MasterBillingPenalty: TFloatField;
    MasterTotalBill: TFloatField;
    MasterBillNumber: TStringField;
    MasterBillMonth: TStringField;
    MasterNewConnCode: TStringField;
    MasterARBalance: TFloatField;
    MasterOCBalance: TFloatField;
    MasterAge30: TFloatField;
    MasterAge60: TFloatField;
    MasterAge90: TFloatField;
    MasterAge120: TFloatField;
    MasterAgeOver120: TFloatField;
    MasterAgeTotal: TFloatField;
    MasterTotalPayments: TFloatField;
    MasterAgeBalance: TFloatField;
    Masterremarks: TStringField;
    DBEdit12: TDBEdit;
    Label12: TLabel;
    Panel1: TPanel;
    DBEdit13: TDBEdit;
    Label13: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    QuickRep1: TQuickRep;
    TitleBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    DateLabel: TQRLabel;
    ColumnHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    TabSheet2: TTabSheet;
    QuickRep2: TQuickRep;
    QRBand1: TQRBand;
    QRSysData3: TQRSysData;
    QRLabel6: TQRLabel;
    PeriodCovered: TQRLabel;
    QRBand2: TQRBand;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRBand3: TQRBand;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    SCPeriod: TMyQuery;
    SCPeriodidSCDisc: TLargeintField;
    SCPeriodSCode: TFloatField;
    SCPeriodArea: TStringField;
    SCPeriodBook: TStringField;
    SCPeriodSequence: TStringField;
    SCPeriodAccountNumber: TStringField;
    SCPeriodBillingName: TStringField;
    SCPeriodName: TStringField;
    SCPeriodBDay: TDateField;
    SCPeriodCPNo: TStringField;
    SCPeriodSCIDNo: TStringField;
    SCPeriodDateApplied: TDateField;
    SCPeriodValidDate: TDateField;
    SCPeriodRemarks: TStringField;
    SCPeriodAddress: TStringField;
    NxButton10: TNxButton;
    NxHeaderPanel1: TNxHeaderPanel;
    DateFrom: TNxDatePicker;
    DateTo: TNxDatePicker;
    NxLabel2: TNxLabel;
    NxButton11: TNxButton;
    NxButton12: TNxButton;
    NxLabel3: TNxLabel;
    ModifySC: TMyQuery;
    QRLabel9: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel15: TQRLabel;
    QRDBText13: TQRDBText;
    SCPeriodSerialNo: TLargeintField;
    DBEdit14: TDBEdit;
    Label14: TLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    procedure FormShow(Sender: TObject);
    procedure NxButton6Click(Sender: TObject);
    procedure NxButton7Click(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure NxButton2Click(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1Exit(Sender: TObject);
    procedure NxButton8Click(Sender: TObject);
    procedure NxButton9Click(Sender: TObject);
    procedure NxButton3Click(Sender: TObject);
    procedure NxButton5Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure NxButton4Click(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);
    procedure NxButton10Click(Sender: TObject);
    procedure NxButton12Click(Sender: TObject);
    procedure NxButton11Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SCForm: TSCForm;

implementation

uses BillingDataModule, DateUtils;

{$R *.dfm}

procedure TSCForm.FormShow(Sender: TObject);
begin
  With BillingData do
    begin
      SC.Close;
      SC.ParamByName('name').Text := '%';
      SC.Open;
    end;
end;

procedure TSCForm.NxButton6Click(Sender: TObject);
begin
  With BillingData do
    begin
      SC.Close;
      SC.ParamByName('name').Text := '%'+SCSearch.Text+'%';
      SC.Open;
    end;
end;

procedure TSCForm.NxButton7Click(Sender: TObject);
begin
  With BillingData do
    begin
      SC.Close;
      SC.ParamByName('name').Text := '%';
      SC.Open;
    end;
end;

procedure TSCForm.NxButton1Click(Sender: TObject);
begin
  NxButton1.Enabled := False;
  NxButton2.Enabled := False;
  NxButton3.Enabled := False;
  NxButton4.Enabled := False;
  NxButton5.Enabled := False;
  NxButton6.Enabled := False;
  NxButton7.Enabled := False;
  NxButton10.Enabled := False;
  With BillingData do
    begin
     SCRecordPanel.Left     := 100;
     SCRecordPanel.Top      := 27;
     SCRecordPanel.BringToFront;
     SCRecordPanel.Visible  := True;

     DBEdit1.SetFocus;
     SC.Append;
     SCDateApplied.EditMask := '!99/99/0000;1;_';
     SCValidDate.EditMask   := '!99/99/0000;1;_';
     SCBDay.EditMask        := '!99/99/0000;1;_';
    end;

end;

procedure TSCForm.NxButton2Click(Sender: TObject);
begin
  NxButton1.Enabled := False;
  NxButton2.Enabled := False;
  NxButton3.Enabled := False;
  NxButton4.Enabled := False;
  NxButton5.Enabled := False;
  NxButton6.Enabled := False;
  NxButton7.Enabled := False;
  NxButton10.Enabled := False;

  With BillingData do
    begin

     SCRecordPanel.Left     := 100;
     SCRecordPanel.Top      := 27;
     SCRecordPanel.BringToFront;
     SCRecordPanel.Visible  := True;

     DBEdit11.SetFocus;
     SC.Edit;
     SCDateApplied.EditMask := '!99/99/0000;1;_';
     SCValidDate.EditMask   := '!99/99/0000;1;_';
     SCBDay.EditMask        := '!99/99/0000;1;_';
    end;

end;

procedure TSCForm.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
    begin
      Perform(CM_DIALOGKEY,VK_TAB,0);
      Key := #0;
    end;
end;

procedure TSCForm.DBEdit1Exit(Sender: TObject);
begin
  If Trim(DBEdit1.Text) = '' then
    begin
       MessageDlg('Please enter an account number...', mtError, [mbOK], 0);
       DBEdit1.SetFocus;
       exit;
    end;
  Master.Close;
  Master.ParamByName('AccountNumber').Text := DBEdit1.Text;
  Master.Open;

  If Master.IsEmpty then
    begin
      MessageDlg('That account is not on file...', mtError, [mbOK], 0);
      Master.Close;
      DBEdit1.SetFocus;
      Exit;
    end;

  With BillingData do
    begin
      SCSCode.Text       := MasterAccountCode.Text;
      SCArea.Text        := MasterArea.Text;
      SCBook.Text        := MasterBook.Text;
      SCSequence.Text    := MasterSequence.Text;
      SCBillingName.Text := MasterName.Text;
      SCName.Text        := MasterName.Text;
      SCAddress.Text     := MasterAddress.Text;
    end;
    DBEdit7.SetFocus;
end;

procedure TSCForm.NxButton8Click(Sender: TObject);
begin
  BillingData.SC.Post;
  SCRecordPanel.Visible := False;
  NxButton1.Enabled := True;
  NxButton2.Enabled := True;
  NxButton3.Enabled := True;
  NxButton4.Enabled := True;
  NxButton5.Enabled := True;
  NxButton6.Enabled := True;
  NxButton7.Enabled := True;
  NxButton10.Enabled := True;
  NxButton1.SetFocus;
end;

procedure TSCForm.NxButton9Click(Sender: TObject);
begin
  BillingData.SC.Cancel;
  SCRecordPanel.Visible := False;
  NxButton1.Enabled := True;
  NxButton2.Enabled := True;
  NxButton3.Enabled := True;
  NxButton4.Enabled := True;
  NxButton5.Enabled := True;
  NxButton6.Enabled := True;
  NxButton7.Enabled := True;
  NxButton10.Enabled := True;
end;

procedure TSCForm.NxButton3Click(Sender: TObject);
begin
  if (MessageDlg('Delete record... Confirm delete', mtConfirmation, [mbOK, mbCancel], 0) = mrCancel) then exit;

  BillingData.SC.Delete;
 
end;

procedure TSCForm.NxButton5Click(Sender: TObject);
begin
  Close;
end;

procedure TSCForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Master.Close;
   BillingData.SC.Close;
   Action := caFree;
   SCForm := Nil;
end;

procedure TSCForm.NxButton4Click(Sender: TObject);
begin
  DateLabel.Caption := 'AS OF '+FormatDateTime('MMMM, YYYY',Now);
  QuickRep1.Preview;
end;

procedure TSCForm.DBEdit10Exit(Sender: TObject);
begin
  If BillingData.SCValidDate.IsNull then
     BillingData.SCValidDate.AsDateTime := IncYear(BillingData.SCDateApplied.AsDateTime,1);

end;

procedure TSCForm.NxButton10Click(Sender: TObject);
begin
  NxHeaderPanel1.Left    := 168;
  NxHeaderPanel1.Top     := 132;
  NxHeaderPanel1.BringToFront;
  NxHeaderPanel1.Visible := True;
  DateFrom.AsDateTime    := StartOfTheMonth(now);
  DateTo.AsDateTime      := EndOfTheMonth(now);
  DateFrom.SetFocus;
end;

procedure TSCForm.NxButton12Click(Sender: TObject);
begin
  NxHeaderPanel1.Visible := False;
  SCPeriod.Close;
end;

procedure TSCForm.NxButton11Click(Sender: TObject);
begin

  SCPeriod.Close;
  SCPeriod.ParamByName('DateFrom').AsDate  := DateFrom.Date;
  SCPeriod.ParamByName('DateTo').AsDate    := DateTo.Date;
  SCPeriod.Open;
  PeriodCovered.Caption := 'PERIOD COVERED '+DateFrom.AsString+' - '+DateTo.AsString;
  QuickRep2.Preview;
end;

end.
