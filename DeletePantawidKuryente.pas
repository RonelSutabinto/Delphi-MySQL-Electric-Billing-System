unit DeletePantawidKuryente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, MemDS, DBAccess, MyAccess;

type
  TDeletePATAWID = class(TForm)
    OEBRNumber: TLabeledEdit;
    Button1: TButton;
    Memo1: TMemo;
    Button2: TButton;
    Button3: TButton;
    DeleteCollection: TMyQuery;
    DeleteARLedger: TMyQuery;
    DeleteAdjLedger: TMyQuery;
    BillHistory: TMyQuery;
    DeleteBillHistory: TMyQuery;
    PutIndex: TMyQuery;
    DeleteUnpaidBills: TMyQuery;
    MasterUpdateQuery: TMyQuery;
    FindRestore: TMyQuery;
    BillHistoryentry: TIntegerField;
    BillHistoryCode: TFloatField;
    BillHistoryArea: TStringField;
    BillHistoryBook: TStringField;
    BillHistorySequence: TStringField;
    BillHistoryAccountNumber: TStringField;
    BillHistoryName: TStringField;
    BillHistoryAddress: TStringField;
    BillHistoryRateCode: TStringField;
    BillHistorySerial: TStringField;
    BillHistoryMultiplier: TFloatField;
    BillHistoryPreviousReadingDate: TDateField;
    BillHistoryPresentReadingDate: TDateField;
    BillHistoryPreviousReadingKWH: TFloatField;
    BillHistoryPresentReadingKWH: TFloatField;
    BillHistoryDiff: TFloatField;
    BillHistoryDemand: TFloatField;
    BillHistoryFlatRateWattage: TFloatField;
    BillHistoryFeedBackCode: TStringField;
    BillHistoryCM: TStringField;
    BillHistoryCMMultiplier: TFloatField;
    BillHistoryCMPreviousReadingKWH: TFloatField;
    BillHistoryCMPresentReadingKWH: TFloatField;
    BillHistoryCMKilowattHour: TFloatField;
    BillHistoryCMDemand: TFloatField;
    BillHistoryKilowattHour: TFloatField;
    BillHistoryKilowattUsed: TFloatField;
    BillHistoryGenSysCharge: TFloatField;
    BillHistoryHostCommCharge: TFloatField;
    BillHistoryForexCharge: TFloatField;
    BillHistoryTCDemandCharge: TFloatField;
    BillHistoryTCTransSystemCharge: TFloatField;
    BillHistorySystemLossCharge: TFloatField;
    BillHistoryDCDemandCharge: TFloatField;
    BillHistoryDCDistributionCharge: TFloatField;
    BillHistorySCRetCustCharge: TFloatField;
    BillHistorySCSupplySysCharge: TFloatField;
    BillHistoryMCRetailCustCharge: TFloatField;
    BillHistoryMCSystemCharge: TFloatField;
    BillHistoryUCNPCStrandedDebts: TFloatField;
    BillHistoryUCNPCStrandedContCost: TFloatField;
    BillHistoryUCDUStrandedContCost: TFloatField;
    BillHistoryUCME: TFloatField;
    BillHistoryUCEqTaxesAndRoyalties: TFloatField;
    BillHistoryUCEC: TFloatField;
    BillHistoryUCCrossSubRemoval: TFloatField;
    BillHistoryICCrossSubsidyCharge: TFloatField;
    BillHistoryPowerActRateRed: TFloatField;
    BillHistoryLifelineDiscSubs: TFloatField;
    BillHistoryLoanCondo: TFloatField;
    BillHistoryTransformerRental: TFloatField;
    BillHistoryOCCode1: TStringField;
    BillHistoryOCAmount1: TFloatField;
    BillHistoryOCMo1: TFloatField;
    BillHistoryOCTotal1: TFloatField;
    BillHistoryOCCode2: TStringField;
    BillHistoryOCAmount2: TFloatField;
    BillHistoryOCMo2: TFloatField;
    BillHistoryOCTotal2: TFloatField;
    BillHistoryOCCode3: TStringField;
    BillHistoryOCAmount3: TFloatField;
    BillHistoryOCMo3: TFloatField;
    BillHistoryOCTotal3: TFloatField;
    BillHistoryTotalBill: TFloatField;
    BillHistoryBillNumber: TStringField;
    BillHistoryOEBRNumber: TStringField;
    BillHistoryBillMonth: TStringField;
    BillHistoryBillDate: TDateField;
    BillHistorystatuscode: TStringField;
    BillHistoryLCCustMo: TFloatField;
    BillHistoryPrevYearAdjPowerCost: TFloatField;
    BillHistorySysLossUnderRecov: TFloatField;
    BillHistoryVATDisc: TFloatField;
    BillHistoryVATDiscAmt: TFloatField;
    BillHistoryVATDistDiscAmt: TFloatField;
    BillHistoryVATGenCoDiscAmt: TFloatField;
    BillHistoryVATTransCoDiscAmt: TFloatField;
    BillHistoryVATSystemLossDiscAmt: TFloatField;
    BillHistoryVATDist: TFloatField;
    BillHistoryVATGenCO: TFloatField;
    BillHistoryVATTransCO: TFloatField;
    BillHistoryVATSystemLossGenCO: TFloatField;
    BillHistoryVATSystemLossTransCO: TFloatField;
    BillHistoryVAT: TFloatField;
    BillHistoryAdjAmountBalance: TFloatField;
    BillHistoryAdjAmountApplied: TFloatField;
    PutIndexAR: TMyQuery;
    procedure Button1Click(Sender: TObject);
    procedure OEBRNumberChange(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DeletePATAWID: TDeletePATAWID;

implementation

uses Data;

{$R *.dfm}

procedure TDeletePATAWID.Button1Click(Sender: TObject);
begin
  Try
    PutIndex.Execute;
  except
  end;

  Try
    PutIndexAR.Execute;
  except
  end;

  BillHistory.ParamByName('OEBRNumber').Text := OEBRNumber.Text;
  BillHistory.Open;

  Memo1.Clear;
  Memo1.Lines.Add('Account Number : '+BillHistoryAccountNumber.Text);
  Memo1.Lines.Add('Consumer Name : '+BillHistoryName.Text);
  Memo1.Lines.Add('Bill Month : '+BillHistoryBillMonth.Text);
  Memo1.Lines.Add('Amount : '+CurrToStr(BillHistoryTotalBill.AsCurrency));
  Memo1.Lines.Add('Pantawid Amount : '+CurrToStr(BillHistoryAdjAmountApplied.AsCurrency));

  If BillHistoryAdjAmountApplied.AsCurrency > 0 then Button2.Enabled := True;

  If BillHistoryAdjAmountApplied.AsCurrency = 0 then
  Memo1.Lines.Add('No Pantawid kuryente was applied in this bill');

end;

procedure TDeletePATAWID.OEBRNumberChange(Sender: TObject);
begin
  Button2.Enabled := False;
  BillHistory.Close;
end;

procedure TDeletePATAWID.Button2Click(Sender: TObject);
Var ClickOK : Boolean;
    BillMonthRestore : String;
begin
if (MessageDlg('Confirm Delete?', mtWarning, [mbYes, mbNo], 0) = mrNo) then exit;

  BillMonthRestore := '';
  ClickOk  := InputQuery('Restore MASTER RECORD ','BILL MONTH for Master Record restoration',BillMonthRestore);
  If not ClickOK then exit;

  FindRestore.ParamByName('code').Text      := BillHistoryCode.Text;
  FindRestore.ParamByName('billmonth').Text := BillMonthRestore;
  FindRestore.Open;

  If FindRestore.IsEmpty then
    begin
      MessageDlg('That bill month is not on the Billing Archive...'+#13+#10+'Inquire first then perform this operation again'+#13+#10+'For now I am aboring this process', mtError, [mbOK], 0);
      FindRestore.Close;
      exit;
    end;
Try
  DeleteCollection.ParamByName('OEBRNumber').Text := BillHistoryOEBRNumber.Text;
  DeleteCollection.Execute;
  Memo1.Lines.Add('Deleted from collection  : '+IntToStr(DeleteCollection.RowsAffected));
except
  on E: Exception do MessageDlg('Error '+E.Message, mtError, [mbOK], 0);
end;

Try
  DeleteARLedger.ParamByName('OEBRNumber').Text := BillHistoryOEBRNumber.Text;
  DeleteARLedger.Execute;
  Memo1.Lines.Add('Deleted from ARLedger : '+IntToStr(DeleteARLedger.RowsAffected));
except
  on E: Exception do MessageDlg('Error '+E.Message, mtError, [mbOK], 0);
end;

Try
  DeleteUnpaidBills.ParamByName('OEBRNumber').Text := BillHistoryOEBRNumber.Text;
  DeleteUnpaidBills.Execute;
  Memo1.Lines.Add('Deleted from Unpaid : '+IntToStr(DeleteUnpaidBills.RowsAffected));
except
  on E: Exception do MessageDlg('Error '+E.Message, mtError, [mbOK], 0);
end;

Try
  DeleteAdjLedger.ParamByName('OEBRNumber').Text := BillHistoryOEBRNumber.Text;
  DeleteAdjLedger.Execute;
  Memo1.Lines.Add('Deleted from PANTAWID Ledger : '+IntToStr(DeleteAdjLedger.RowsAffected));
except
  on E: Exception do MessageDlg('Error '+E.Message, mtError, [mbOK], 0);
end;

Try
  MasterUpdateQuery.ParamByName('Code').Text := BillHistoryCode.Text;
  MasterUpdateQuery.ParamByName('BillMonth').Text := BillMonthRestore;
  MasterUpdateQuery.Execute;
  Memo1.Lines.Add('Master Restored : '+IntToStr(MasterUpdateQuery.RowsAffected));
except
  on E: Exception do MessageDlg('Error '+E.Message, mtError, [mbOK], 0);
end;

Try
  DeleteBillHistory.ParamByName('OEBRNumber').Text := BillHistoryOEBRNumber.Text;
  DeleteBillHistory.Execute;
  Memo1.Lines.Add('Deleted from Billing History ARCHIVE : '+IntToStr(DeleteBillHistory.RowsAffected));
except
  on E: Exception do MessageDlg('Error '+E.Message, mtError, [mbOK], 0);
end;

MessageDlg('Delete Process Complete...', mtWarning, [mbOK], 0);
Button2.Enabled := False;
BillHistory.Close;

end;

procedure TDeletePATAWID.Button3Click(Sender: TObject);
begin
  Close;
end;

procedure TDeletePATAWID.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  DeletePATAWID := Nil;
end;

end.


