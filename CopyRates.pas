unit CopyRates;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, PDJSillyLabel, DB, DBTables;

type
  TCopyRatesForm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    SourceBillMonth: TEdit;
    Label2: TLabel;
    TargetBillMonth: TEdit;
    OK: TPDJSillyLabel;
    Cancel: TPDJSillyLabel;
    MRateLocal: TTable;
    MRateLocalEntry: TAutoIncField;
    MRateLocalMBillMonth: TStringField;
    MRateLocalRateCode: TStringField;
    MRateLocalRemarks: TStringField;
    MRateLocalGenSysRate: TFloatField;
    MRateLocalHostCommRate: TFloatField;
    MRateLocalFOREXRate: TFloatField;
    MRateLocalTCDemandRate: TFloatField;
    MRateLocalTCSystemRate: TFloatField;
    MRateLocalSystemLossRate: TFloatField;
    MRateLocalDCDemandRate: TFloatField;
    MRateLocalDCSystemRate: TFloatField;
    MRateLocalSCRetailCustRate: TFloatField;
    MRateLocalSCSupplySysRate: TFloatField;
    MRateLocalMCRetailCustRate: TFloatField;
    MRateLocalMCSysRate: TFloatField;
    MRateLocalUCNPCStrandedDebtsRate: TFloatField;
    MRateLocalUCNPCStrandedContCostRate: TFloatField;
    MRateLocalUCDUStrandedContCostRate: TFloatField;
    MRateLocalUCMERate: TFloatField;
    MRateLocalUCEqTaxesAndRoyaltiesRate: TFloatField;
    MRateLocalUCECRate: TFloatField;
    MRateLocalUCCrossSubsidyRemovalRate: TFloatField;
    MRateLocalICCrossSubsidyRate: TFloatField;
    MRateLocalPARARate: TFloatField;
    MRateLocalLifelineSubsidyRate: TFloatField;
    MRateLocalLoanCondo: TFloatField;
    MRateLocalGram: TFloatField;
    procedure CancelClick(Sender: TObject);
    procedure OKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CopyRatesForm: TCopyRatesForm;

implementation

uses Data;

{$R *.dfm}

procedure TCopyRatesForm.CancelClick(Sender: TObject);
begin
  Close;
end;

procedure TCopyRatesForm.OKClick(Sender: TObject);
var RecordsMoved : LongInt;
    Msg : string;
begin
  RecordsMoved := 0;
      
  With BillingData, MRateLocal do
  begin
    try
      try
        if (MRate.Locate('MBillMonth', TargetBillMonth.Text, [loCaseInsensitive])) then
        begin
          FmtStr(Msg, 'Rates for Bill Month %s already exists.'+#13+
            'Please double-click the item in the list to update the rates.',
            [TargetBillMonth.Text]);
          MessageDlg(Msg, mtError, [mbOk], 0);
          Exit;
        end;

        Filter := 'MBillMonth = ' + QuotedStr(SourceBillMonth.Text);
        Filtered := True;
        IndexName := 'BillMonth';
        Open;

        while not Eof do
        begin
          MRate.Append;
          MRateMBillMonth.Text := TargetBillMonth.Text;
          MRateRateCode.Text := MRateLocalRateCode.Text;
          MRateRemarks.Text :=  MRateLocalRemarks.Text;
          MRateGenSysRate.AsCurrency := MRateLocalGenSysRate.AsCurrency;
          MRateHostCommRate.AsCurrency :=  MRateLocalHostCommRate.AsCurrency;
          MRateFOREXRate.AsCurrency :=  MRateLocalFOREXRate.AsCurrency;
          MRateTCDemandRate.AsCurrency :=  MRateLocalTCDemandRate.AsCurrency;
          MRateTCSystemRate.AsCurrency :=  MRateLocalTCSystemRate.AsCurrency;
          MRateSystemLossRate.AsCurrency :=  MRateLocalSystemLossRate.AsCurrency;
          MRateDCDemandRate.AsCurrency :=  MRateLocalDCDemandRate.AsCurrency;
          MRateDCSystemRate.AsCurrency :=  MRateLocalDCSystemRate.AsCurrency;
          MRateSCRetailCustRate.AsCurrency :=  MRateLocalSCRetailCustRate.AsCurrency;
          MRateSCSupplySysRate.AsCurrency :=  MRateLocalSCSupplySysRate.AsCurrency;
          MRateMCRetailCustRate.AsCurrency :=  MRateLocalMCRetailCustRate.AsCurrency;
          MRateMCSysRate.AsCurrency :=  MRateLocalMCSysRate.AsCurrency;
          MRateUCNPCStrandedDebtsRate.AsCurrency :=  MRateLocalUCNPCStrandedDebtsRate.AsCurrency;
          MRateUCNPCStrandedContCostRate.AsCurrency :=  MRateLocalUCNPCStrandedContCostRate.AsCurrency;
          MRateUCDUStrandedContCostRate.AsCurrency :=  MRateLocalUCDUStrandedContCostRate.AsCurrency;
          MRateUCMERate.AsCurrency :=  MRateLocalUCMERate.AsCurrency;
          MRateUCEqTaxesAndRoyaltiesRate.AsCurrency :=  MRateLocalUCEqTaxesAndRoyaltiesRate.AsCurrency;
          MRateUCECRate.AsCurrency :=  MRateLocalUCECRate.AsCurrency;
          MRateUCCrossSubsidyRemovalRate.AsCurrency :=  MRateLocalUCCrossSubsidyRemovalRate.AsCurrency;
          MRateICCrossSubsidyRate.AsCurrency :=  MRateLocalICCrossSubsidyRate.AsCurrency;
          MRatePARARate.AsCurrency :=  MRateLocalPARARate.AsCurrency;
          MRateLifelineSubsidyRate.AsCurrency :=  MRateLocalLifelineSubsidyRate.AsCurrency;
          MRateLoanCondo.AsCurrency :=  MRateLocalLoanCondo.AsCurrency;
          MRateGram.AsCurrency :=  MRateLocalGram.AsCurrency;

          Inc(RecordsMoved);
          Next;
        end;
      except
        on E: Exception do
          MessageDlg(E.Message, mtError, [mbOk], 0);
      end;
    finally
      FmtStr(Msg, '%d rates copied to Bill Month %s.', [RecordsMoved, TargetBillMonth.Text]);
      MessageDlg(Msg, mtInformation, [mbOk], 0);
      Close;
      Self.Close;
    end;
  end;
end;

end.
