unit DeletedRecordsInterface;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ExtCtrls, ComCtrls, MemDS, DBAccess, MyAccess, Grids,
  DBGrids, CRGrid, DsFancyButton, NxCollection, CRDBGrid1, StdCtrls, NxEdit;

type
  TDeletedRecordsForm = class(TForm)
    DeletedMaster: TMyQuery;
    DeletedARLedger: TMyQuery;
    DeletedUnpaidBills: TMyQuery;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Panel1: TPanel;
    DSDeletedMaster: TDataSource;
    DSDeletedARLedger: TDataSource;
    DSDeletedUnpaidBills: TDataSource;
    DeletedMasterCode: TIntegerField;
    DeletedMasterArea: TStringField;
    DeletedMasterBook: TStringField;
    DeletedMasterSequence: TStringField;
    DeletedMasterAccountNumber: TStringField;
    DeletedMasterName: TStringField;
    DeletedMasterAddress: TStringField;
    DeletedMasterRateCode: TStringField;
    DeletedMasterConsCode: TStringField;
    DeletedMasterConnCode: TStringField;
    DeletedMasterTransformer: TStringField;
    DeletedMasterMeterBrand: TStringField;
    DeletedMasterSerial: TStringField;
    DeletedMasterMultiplier: TFloatField;
    DeletedMasterNewConnectionDate: TDateField;
    DeletedMasterReconnectionDate: TDateField;
    DeletedMasterDisconnectionDate: TDateField;
    DeletedMasterPreviousReadingDate: TDateField;
    DeletedMasterPresentReadingDate: TDateField;
    DeletedMasterPreviousReadingKWH: TFloatField;
    DeletedMasterPresentReadingKWH: TFloatField;
    DeletedMasterDiff: TFloatField;
    DeletedMasterDemand: TFloatField;
    DeletedMasterFlatRateWattage: TFloatField;
    DeletedMasterFeedBackCode: TStringField;
    DeletedMasterCM: TStringField;
    DeletedMasterCMMultiplier: TFloatField;
    DeletedMasterCMPreviousReadingKWH: TFloatField;
    DeletedMasterCMPresentReadingKWH: TFloatField;
    DeletedMasterCMKilowattHour: TFloatField;
    DeletedMasterCMDemand: TFloatField;
    DeletedMasterKilowattHour: TFloatField;
    DeletedMasterKilowattUsed: TFloatField;
    DeletedMasterGenSysCharge: TFloatField;
    DeletedMasterHostCommCharge: TFloatField;
    DeletedMasterForexCharge: TFloatField;
    DeletedMasterTCDemandCharge: TFloatField;
    DeletedMasterTCTransSystemCharge: TFloatField;
    DeletedMasterSystemLossCharge: TFloatField;
    DeletedMasterDCDemandCharge: TFloatField;
    DeletedMasterDCDistributionCharge: TFloatField;
    DeletedMasterSCRetCustCharge: TFloatField;
    DeletedMasterSCSupplySysCharge: TFloatField;
    DeletedMasterMCRetailCustCharge: TFloatField;
    DeletedMasterMCSystemCharge: TFloatField;
    DeletedMasterUCNPCStrandedDebts: TFloatField;
    DeletedMasterUCNPCStrandedContCost: TFloatField;
    DeletedMasterUCDUStrandedContCost: TFloatField;
    DeletedMasterUCME: TFloatField;
    DeletedMasterUCEqTaxesAndRoyalties: TFloatField;
    DeletedMasterUCEC: TFloatField;
    DeletedMasterUCCrossSubRemoval: TFloatField;
    DeletedMasterICCrossSubsidyCharge: TFloatField;
    DeletedMasterPowerActRateRed: TFloatField;
    DeletedMasterLifelineDiscSubs: TFloatField;
    DeletedMasterLoanCondo: TFloatField;
    DeletedMasterTransformerRental: TFloatField;
    DeletedMasterOCCode1: TStringField;
    DeletedMasterOCAmount1: TFloatField;
    DeletedMasterOCMo1: TFloatField;
    DeletedMasterOCTotal1: TFloatField;
    DeletedMasterOCCode2: TStringField;
    DeletedMasterOCAmount2: TFloatField;
    DeletedMasterOCMo2: TFloatField;
    DeletedMasterOCTotal2: TFloatField;
    DeletedMasterOCCode3: TStringField;
    DeletedMasterOCAmount3: TFloatField;
    DeletedMasterOCMo3: TFloatField;
    DeletedMasterOCTotal3: TFloatField;
    DeletedMasterTotalBill: TFloatField;
    DeletedMasterBillNumber: TStringField;
    DeletedMasterOEBRNumber: TStringField;
    DeletedMasterBillMonth: TStringField;
    DeletedMasterDeleteRemarks: TStringField;
    DeletedMasterPoleNumber: TStringField;
    DeletedMasterFeederNumber: TStringField;
    DeletedMasterAge30: TFloatField;
    DeletedMasterAge60: TFloatField;
    DeletedMasterAge90: TFloatField;
    DeletedMasterAge120: TFloatField;
    DeletedMasterAgeOver120: TFloatField;
    DeletedMasterAgeTotal: TFloatField;
    DeletedMasterTotalPayments: TFloatField;
    DeletedMasterARBalance: TFloatField;
    DeletedMasterLCCustMo: TFloatField;
    DeletedMasterPrevYearAdjPowerCost: TFloatField;
    DeletedMasterSysLossUnderRecov: TFloatField;
    DeletedMasterVATDist: TFloatField;
    DeletedMasterVATGenCO: TFloatField;
    DeletedMasterVATTransCO: TFloatField;
    DeletedMasterVATSystemLossGenCO: TFloatField;
    DeletedMasterVATSystemLossTransCO: TFloatField;
    DeletedMasterVAT: TFloatField;
    DsFancyButton1: TNxButton;
    DsFancyButton2: TNxButton;
    Panel2: TPanel;
    DsFancyButton3: TNxButton;
    DsFancyButton4: TNxButton;
    DeletedARLedgerEntry: TIntegerField;
    DeletedARLedgerCode: TFloatField;
    DeletedARLedgerDate: TDateField;
    DeletedARLedgerDocument: TStringField;
    DeletedARLedgerBillMonth: TStringField;
    DeletedARLedgerReading: TFloatField;
    DeletedARLedgerKilowattHour: TFloatField;
    DeletedARLedgerDebit: TFloatField;
    DeletedARLedgerCredit: TFloatField;
    DeletedARLedgerBalance: TFloatField;
    DeletedARLedgerUCNPCSD: TFloatField;
    DeletedARLedgerUCNPCSCC: TFloatField;
    DeletedARLedgerUCDUSCC: TFloatField;
    DeletedARLedgerUCME: TFloatField;
    DeletedARLedgerUCETR: TFloatField;
    DeletedARLedgerUCEC: TFloatField;
    DeletedARLedgerUCCSR: TFloatField;
    DeletedARLedgerCollectorCode: TStringField;
    DeletedARLedgerDeleteRemarks: TStringField;
    DeletedARLedgerVATDist: TFloatField;
    DeletedARLedgerVATGenCO: TFloatField;
    DeletedARLedgerVATTransCO: TFloatField;
    DeletedARLedgerVATSystemLossGenCO: TFloatField;
    DeletedARLedgerVATSystemLossTransCO: TFloatField;
    DeletedARLedgerVAT: TFloatField;
    Panel3: TPanel;
    DsFancyButton5: TNxButton;
    DsFancyButton6: TNxButton;
    DeletedUnpaidBillsEntry: TIntegerField;
    DeletedUnpaidBillsDocument: TStringField;
    DeletedUnpaidBillsCode: TFloatField;
    DeletedUnpaidBillsArea: TStringField;
    DeletedUnpaidBillsBook: TStringField;
    DeletedUnpaidBillsAccountNumber: TStringField;
    DeletedUnpaidBillsDate: TDateField;
    DeletedUnpaidBillsName: TStringField;
    DeletedUnpaidBillsBillMonth: TStringField;
    DeletedUnpaidBillsDeleteRemarks: TStringField;
    DeletedUnpaidBillsRateCode: TStringField;
    DeletedUnpaidBillsReading: TFloatField;
    DeletedUnpaidBillsKilowattHour: TFloatField;
    DeletedUnpaidBillsAmount: TFloatField;
    DeletedUnpaidBillsUCNPCSD: TFloatField;
    DeletedUnpaidBillsUCNPCSCC: TFloatField;
    DeletedUnpaidBillsUCDUSCC: TFloatField;
    DeletedUnpaidBillsUCME: TFloatField;
    DeletedUnpaidBillsUCETR: TFloatField;
    DeletedUnpaidBillsUCEC: TFloatField;
    DeletedUnpaidBillsUCCSR: TFloatField;
    DeletedUnpaidBillsTransformerRental: TFloatField;
    DeletedUnpaidBillsVATDist: TFloatField;
    DeletedUnpaidBillsVATGenCO: TFloatField;
    DeletedUnpaidBillsVATTransCO: TFloatField;
    DeletedUnpaidBillsVATSystemLossGenCO: TFloatField;
    DeletedUnpaidBillsVATSystemLossTransCO: TFloatField;
    DeletedUnpaidBillsVAT: TFloatField;
    AP: TMyQuery;
    EditedMaster: TMyQuery;
    EditedMasterEntry: TIntegerField;
    EditedMasterCode: TFloatField;
    EditedMasterArea: TStringField;
    EditedMasterBook: TStringField;
    EditedMasterSequence: TStringField;
    EditedMasterAccountNumber: TStringField;
    EditedMasterName: TStringField;
    EditedMasterAddress: TStringField;
    EditedMasterRateCode: TStringField;
    EditedMasterConsCode: TStringField;
    EditedMasterConnCode: TStringField;
    EditedMasterTransformer: TStringField;
    EditedMasterMeterBrand: TStringField;
    EditedMasterSerial: TStringField;
    EditedMasterMultiplier: TFloatField;
    EditedMasterNewConnectionDate: TDateField;
    EditedMasterPresentReadingKWH: TFloatField;
    EditedMasterDemand: TFloatField;
    EditedMasterPoleNumber: TStringField;
    EditedMasterFeederNumber: TStringField;
    EditedMasterXFormerQty: TIntegerField;
    EditedMasterXFormerKVA: TStringField;
    EditedMasterVATDisc: TFloatField;
    EditedMasterWRateCode: TStringField;
    EditedMasterDWLEN1: TFloatField;
    EditedMasterDWLEN2: TFloatField;
    EditedMasterCBook: TStringField;
    EditedMasterDateEdited: TDateField;
    EditedMasterRemarks: TStringField;
    TabSheet4: TTabSheet;
    dsEditedMaster: TMyDataSource;
    CRDBGrid1: TCRDBGrid1;
    CRDBGrid2: TCRDBGrid1;
    CRDBGrid3: TCRDBGrid1;
    CRDBGrid4: TCRDBGrid1;
    TabSheet5: TTabSheet;
    CRDBGrid11: TCRDBGrid1;
    retrieveBill: TMyQuery;
    Label128: TLabel;
    Pres: TNxDatePicker;
    Prev: TNxDatePicker;
    Label26: TLabel;
    Label23: TLabel;
    NxButton11: TNxButton;
    retrieveBiilSource: TMyDataSource;
    procedure DsFancyButton6Click(Sender: TObject);
    procedure DsFancyButton2Click(Sender: TObject);
    procedure DsFancyButton4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure NxButton11Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DeletedRecordsForm: TDeletedRecordsForm;

implementation

uses Data, MODTOOLS,DateUtils;

{$R *.dfm}

procedure TDeletedRecordsForm.DsFancyButton6Click(Sender: TObject);
begin
 try
  AP.Close;
  AP.SQL.Clear;
  AP.SQL.Add('insert into unpaidbills');
  AP.SQL.Add('select * from unpaidbills where entry = :entrynumber');
  AP.ParamByName('entrynumber').text := DeletedUnpaidBills.FieldValues['entry'];
  AP.Execute;
  MessageDlg('Restore Unpaid Bills Record Done....', mtWarning, [mbOK], 0);
 except
  MessageDlg('Error Restoring .... ', mtWarning, [mbOK], 0);
  exit;
 end;

 If AP.RowsAffected > 0 then
  begin
   AP.Close;
   AP.SQL.Clear;
   AP.SQL.Add('delete from deletedunpaidbills where entry = :entrynumber');
   AP.ParamByName('entrynumber').text := DeletedUnpaidBills.FieldValues['entry'];
   AP.Execute;
  end;
end;

procedure TDeletedRecordsForm.DsFancyButton2Click(Sender: TObject);
begin
 try
  AP.Close;
  AP.SQL.Clear;
  AP.SQL.Add('insert into master');
  AP.SQL.Add('select * from deletedmaster where code = :code');
  AP.ParamByName('code').text := DeletedMaster.FieldValues['code'];
  AP.Execute;
  MessageDlg('Restore Master Record Done....', mtWarning, [mbOK], 0);
 except
  MessageDlg('Error Restoring .... ', mtWarning, [mbOK], 0);
  exit;
 end;

 If AP.RowsAffected > 0 then
  begin
   AP.Close;
   AP.SQL.Clear;
   AP.SQL.Add('delete from deletedmaster where code = :code');
   AP.ParamByName('code').text := DeletedMaster.FieldValues['code'];
   AP.Execute;
  end;
end;

procedure TDeletedRecordsForm.DsFancyButton4Click(Sender: TObject);
begin
 try
  AP.Close;
  AP.SQL.Clear;
  AP.SQL.Add('insert into arledger');
  AP.SQL.Add('select * from deletedarledger where entry = :entrynumber');
  AP.ParamByName('entrynumber').text := DeletedARLedger.FieldValues['entry'];
  AP.Execute;
  MessageDlg('Restore A/R Ledger Record Done....', mtWarning, [mbOK], 0);
 except
  MessageDlg('Error Restoring .... ', mtWarning, [mbOK], 0);
  exit;
 end;

 If AP.RowsAffected > 0 then
  begin
   AP.Close;
   AP.SQL.Clear;
   AP.SQL.Add('delete from deletedarledger where entry = :entrynumber');
   AP.ParamByName('entrynumber').text := DeletedARLedger.FieldValues['entry'];
   AP.Execute;
  end;
end;

procedure TDeletedRecordsForm.FormShow(Sender: TObject);
begin
   Pres.Date := StartOfTheMonth(now);
   Prev.Date := EndOfTheMonth(now);
   retrieveBill.Close;
   retrieveBill.ParamByName('datefrom').AsDate := pres.Date;
   retrieveBill.ParamByName('dateto').AsDate    := Prev.Date;
   retrieveBill.Open;

   DeletedMaster.Open;
   DeletedARLedger.Open;
   DeletedUnpaidBills.Open;
   EditedMaster.Open;
end;

procedure TDeletedRecordsForm.NxButton11Click(Sender: TObject);
begin
   retrieveBill.Close;
   retrieveBill.ParamByName('datefrom').AsDate := pres.Date;
   retrieveBill.ParamByName('dateto').AsDate    := Prev.Date;
   retrieveBill.Open;
end;

procedure TDeletedRecordsForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   DeletedMaster.Open;
   DeletedARLedger.Open;
   DeletedUnpaidBills.Open;
   EditedMaster.Open;
   Action := caFree;
   DeletedRecordsForm := Nil;
end;

end.
