unit InsertOldBills;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Gradient, StdCtrls, ExtCtrls, ComCtrls, PDJSillyLabel, DB,
  DBTables;

type
  TfrmInsertOldBills = class(TForm)
    Panel1: TPanel;
    txtAcctNum: TEdit;
    txtBillMonth: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    txtPresRead: TEdit;
    txtPrevRead: TEdit;
    txtKWH: TEdit;
    txtTransformerRental: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    txtDocument: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    txtUCEC: TEdit;
    Label9: TLabel;
    txtUCME: TEdit;
    dtBillDate: TDateTimePicker;
    Label10: TLabel;
    btnInsert: TPDJSillyLabel;
    btnCancel: TPDJSillyLabel;
    Master: TTable;
    AR: TTable;
    UnPB: TTable;
    Label11: TLabel;
    txtAmount: TEdit;
    MasterCode: TAutoIncField;
    MasterArea: TStringField;
    MasterBook: TStringField;
    MasterSequence: TStringField;
    MasterAccountNumber: TStringField;
    MasterName: TStringField;
    MasterAddress: TStringField;
    MasterRateCode: TStringField;
    MasterConsCode: TStringField;
    MasterConnCode: TStringField;
    MasterTransformer: TStringField;
    MasterMeterBrand: TStringField;
    MasterSerial: TStringField;
    MasterMultiplier: TFloatField;
    MasterNewConnectionDate: TDateField;
    MasterReconnectionDate: TDateField;
    MasterDisconnectionDate: TDateField;
    MasterPreviousReadingDate: TDateField;
    MasterPresentReadingDate: TDateField;
    MasterPreviousReadingKWH: TCurrencyField;
    MasterPresentReadingKWH: TCurrencyField;
    MasterDiff: TCurrencyField;
    MasterDemand: TCurrencyField;
    MasterFlatRateWattage: TCurrencyField;
    MasterFeedBackCode: TStringField;
    MasterCM: TStringField;
    MasterCMMultiplier: TCurrencyField;
    MasterCMPreviousReadingKWH: TCurrencyField;
    MasterCMPresentReadingKWH: TCurrencyField;
    MasterCMKilowattHour: TCurrencyField;
    MasterCMDemand: TCurrencyField;
    MasterKilowattHour: TCurrencyField;
    MasterKilowattUsed: TCurrencyField;
    MasterGenSysCharge: TCurrencyField;
    MasterHostCommCharge: TCurrencyField;
    MasterForexCharge: TCurrencyField;
    MasterTCDemandCharge: TCurrencyField;
    MasterTCTransSystemCharge: TCurrencyField;
    MasterSystemLossCharge: TCurrencyField;
    MasterDCDemandCharge: TCurrencyField;
    MasterDCDistributionCharge: TCurrencyField;
    MasterSCRetCustCharge: TCurrencyField;
    MasterSCSupplySysCharge: TCurrencyField;
    MasterMCRetailCustCharge: TCurrencyField;
    MasterMCSystemCharge: TCurrencyField;
    MasterUCNPCStrandedDebts: TCurrencyField;
    MasterUCNPCStrandedContCost: TCurrencyField;
    MasterUCDUStrandedContCost: TCurrencyField;
    MasterUCME: TCurrencyField;
    MasterUCEqTaxesAndRoyalties: TCurrencyField;
    MasterUCEC: TCurrencyField;
    MasterUCCrossSubRemoval: TCurrencyField;
    MasterICCrossSubsidyCharge: TCurrencyField;
    MasterPowerActRateRed: TCurrencyField;
    MasterLifelineDiscSubs: TCurrencyField;
    MasterLoanCondo: TCurrencyField;
    MasterTransformerRental: TCurrencyField;
    MasterOCCode1: TStringField;
    MasterOCAmount1: TCurrencyField;
    MasterOCMo1: TFloatField;
    MasterOCTotal1: TCurrencyField;
    MasterOCCode2: TStringField;
    MasterOCAmount2: TCurrencyField;
    MasterOCMo2: TFloatField;
    MasterOCTotal2: TCurrencyField;
    MasterOCCode3: TStringField;
    MasterOCAmount3: TCurrencyField;
    MasterOCMo3: TFloatField;
    MasterOCTotal3: TFloatField;
    MasterTotalBill: TCurrencyField;
    MasterBillNumber: TStringField;
    MasterOEBRNumber: TStringField;
    MasterBillMonth: TStringField;
    MasterPoleNumber: TStringField;
    MasterFeederNumber: TStringField;
    MasterAge30: TCurrencyField;
    MasterAge60: TCurrencyField;
    MasterAge90: TCurrencyField;
    MasterAge120: TCurrencyField;
    MasterAgeOver120: TCurrencyField;
    MasterAgeTotal: TCurrencyField;
    MasterTotalPayments: TCurrencyField;
    MasterARBalance: TCurrencyField;
    procedure btnCancelClick(Sender: TObject);
    procedure btnInsertClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmInsertOldBills: TfrmInsertOldBills;

implementation

uses ModTools;

{$R *.dfm}

procedure TfrmInsertOldBills.btnCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmInsertOldBills.btnInsertClick(Sender: TObject);
begin
  try
    try
      AR.Append;
      UnPB.Append;
      with AR do
      begin
        if not (Master.Locate('AccountNumber',txtAcctNum.Text,[])) then
        begin
          MessageDlg('Account not found!', mtError, [mbOk], 0);
          txtAcctNum.SetFocus;
          Exit;
        end;
        FieldValues['Code'] := Master.FieldValues['Code'];
        UnPB.FieldValues['Code'] := Master.FieldValues['Code'];
        UnPB.FieldValues['Area'] := Master.FieldValues['Area'];
        UnPB.FieldValues['Book'] := Master.FieldValues['Book'];
        UnPB.FieldValues['AccountNumber'] := Master.FieldValues['AccountNumber'];
        UnPB.FieldValues['Name'] := Master.FieldValues['Name'];
        UnPB.FieldValues['RateCode'] := Master.FieldValues['RateCode'];
        UnPB.FieldValues['TransformerRental'] := txtTransformerRental.Text;
        if (Trim(MasterBillMonth.Text) = '') or
          (MasterBillMonth.Text <= txtBillMonth.Text) then
        begin
          Master.Edit;
          Master.FieldValues['PreviousReadingKWH'] := txtPrevRead.Text;
          Master.FieldValues['PresentReadingKWH'] := txtPresRead.Text;
          Master.FieldValues['KilowattHour'] := txtKWH.Text;
          Master.FieldValues['Demand'] := 0;
          Master.FieldValues['BillMonth'] := txtBillMonth.Text;
          Master.Post;
        end;
        FieldValues['Date'] := dtBillDate.Date;
        UnPB.FieldValues['Date'] := dtBillDate.Date;
        FieldValues['Document'] := txtDocument.Text;
        FieldValues['BillMonth'] := txtBillMonth.Text;
        FieldValues['Reading'] := txtPresRead.Text;
        FieldValues['KilowattHour'] := txtKWH.Text;
        FieldValues['Debit'] := txtAmount.Text;
        FieldValues['Balance'] := txtAmount.Text;
        FieldValues['UCME'] := txtUCME.Text;
        FieldValues['UCEC'] := txtUCEC.Text;
        FieldValues['AccountNumber'] := txtAcctNum.Text;
        UnPB.FieldValues['Document'] := txtDocument.Text;
        UnPB.FieldValues['BillMonth'] := txtBillMonth.Text;
        UnPB.FieldValues['Reading'] := txtPresRead.Text;
        UnPB.FieldValues['KilowattHour'] := txtKWH.Text;
        UnPB.FieldValues['Amount'] := txtAmount.Text;
        UnPB.FieldValues['UCME'] := txtUCME.Text;
        UnPB.FieldValues['UCEC'] := txtUCEC.Text;
      end;
      AR.Post;
      UnPB.Post;
      MessageDlg('Old bill succesfully inserted.', mtInformation, [mbOk], 0);
    except
      on E: Exception do
        MessageDlg(E.Message, mtError, [mbOk], 0);
      else
      CloseTable(Master);
      CloseTAble(AR);
      CloseTable(UnPB);
      Close;
    end
  finally
  end;

end;

procedure TfrmInsertOldBills.FormShow(Sender: TObject);
begin
  Master.Open;
  AR.Open;
  UnPB.Open;
end;

procedure TfrmInsertOldBills.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    CloseTable(Master);
    CloseTAble(AR);
    CloseTable(UnPB);
end;

end.
