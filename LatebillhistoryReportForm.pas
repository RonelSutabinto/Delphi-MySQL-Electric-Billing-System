unit LatebillhistoryReportForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, NxCollection, Vcl.StdCtrls, Vcl.Mask,
  AdvSmoothEdit, AdvSmoothEditButton, AdvSmoothDatePicker, AdvPanel,
  Vcl.ExtCtrls, frxClass, frxDBSet, Data.DB, MemDS, DBAccess, MyAccess, DateUtils;

type
  TlatebillhistoryFrm = class(TForm)
    AdvPanel1: TAdvPanel;
    AdvPanelStyler1: TAdvPanelStyler;
    datefrom_dp: TAdvSmoothDatePicker;
    dateto_dp: TAdvSmoothDatePicker;
    Label1: TLabel;
    Label2: TLabel;
    preview_btn: TNxButton;
    Panel1: TPanel;
    Label3: TLabel;
    close_btn: TNxButton;
    report_frx: TfrxReport;
    latebillhistoryQ: TMyQuery;
    latebillhistoryQentry: TIntegerField;
    latebillhistoryQCode: TFloatField;
    latebillhistoryQArea: TStringField;
    latebillhistoryQBook: TStringField;
    latebillhistoryQSequence: TStringField;
    latebillhistoryQAccountNumber: TStringField;
    latebillhistoryQName: TStringField;
    latebillhistoryQAddress: TStringField;
    latebillhistoryQRateCode: TStringField;
    latebillhistoryQSerial: TStringField;
    latebillhistoryQMultiplier: TFloatField;
    latebillhistoryQPreviousReadingDate: TDateField;
    latebillhistoryQPresentReadingDate: TDateField;
    latebillhistoryQPreviousReadingKWH: TFloatField;
    latebillhistoryQPresentReadingKWH: TFloatField;
    latebillhistoryQDiff: TFloatField;
    latebillhistoryQDemand: TFloatField;
    latebillhistoryQFlatRateWattage: TFloatField;
    latebillhistoryQFeedBackCode: TStringField;
    latebillhistoryQCM: TStringField;
    latebillhistoryQCMMultiplier: TFloatField;
    latebillhistoryQCMPreviousReadingKWH: TFloatField;
    latebillhistoryQCMPresentReadingKWH: TFloatField;
    latebillhistoryQCMKilowattHour: TFloatField;
    latebillhistoryQCMDemand: TFloatField;
    latebillhistoryQKilowattHour: TFloatField;
    latebillhistoryQKilowattUsed: TFloatField;
    latebillhistoryQGenSysCharge: TFloatField;
    latebillhistoryQHostCommCharge: TFloatField;
    latebillhistoryQForexCharge: TFloatField;
    latebillhistoryQTCDemandCharge: TFloatField;
    latebillhistoryQTCTransSystemCharge: TFloatField;
    latebillhistoryQSystemLossCharge: TFloatField;
    latebillhistoryQDCDemandCharge: TFloatField;
    latebillhistoryQDCDistributionCharge: TFloatField;
    latebillhistoryQSCRetCustCharge: TFloatField;
    latebillhistoryQSCSupplySysCharge: TFloatField;
    latebillhistoryQMCRetailCustCharge: TFloatField;
    latebillhistoryQMCSystemCharge: TFloatField;
    latebillhistoryQUCNPCStrandedDebts: TFloatField;
    latebillhistoryQUCNPCStrandedContCost: TFloatField;
    latebillhistoryQUCDUStrandedContCost: TFloatField;
    latebillhistoryQUCME: TFloatField;
    latebillhistoryQUCEqTaxesAndRoyalties: TFloatField;
    latebillhistoryQUCEC: TFloatField;
    latebillhistoryQUCCrossSubRemoval: TFloatField;
    latebillhistoryQICCrossSubsidyCharge: TFloatField;
    latebillhistoryQPowerActRateRed: TFloatField;
    latebillhistoryQLifelineDiscSubs: TFloatField;
    latebillhistoryQLoanCondo: TFloatField;
    latebillhistoryQgram: TFloatField;
    latebillhistoryQTransformerRental: TFloatField;
    latebillhistoryQOCCode1: TStringField;
    latebillhistoryQOCAmount1: TFloatField;
    latebillhistoryQOCMo1: TFloatField;
    latebillhistoryQOCTotal1: TFloatField;
    latebillhistoryQOCCode2: TStringField;
    latebillhistoryQOCAmount2: TFloatField;
    latebillhistoryQOCMo2: TFloatField;
    latebillhistoryQOCTotal2: TFloatField;
    latebillhistoryQOCCode3: TStringField;
    latebillhistoryQOCAmount3: TFloatField;
    latebillhistoryQOCMo3: TFloatField;
    latebillhistoryQOCTotal3: TFloatField;
    latebillhistoryQTotalBill: TFloatField;
    latebillhistoryQBillNumber: TStringField;
    latebillhistoryQOEBRNumber: TStringField;
    latebillhistoryQBillMonth: TStringField;
    latebillhistoryQBillDate: TDateField;
    latebillhistoryQstatuscode: TStringField;
    latebillhistoryQLCCustMo: TFloatField;
    latebillhistoryQPrevYearAdjPowerCost: TFloatField;
    latebillhistoryQSysLossUnderRecov: TFloatField;
    latebillhistoryQVATDisc: TFloatField;
    latebillhistoryQVATDiscAmt: TFloatField;
    latebillhistoryQVATDistDiscAmt: TFloatField;
    latebillhistoryQVATGenCoDiscAmt: TFloatField;
    latebillhistoryQVATTransCoDiscAmt: TFloatField;
    latebillhistoryQVATSystemLossDiscAmt: TFloatField;
    latebillhistoryQVATDist: TFloatField;
    latebillhistoryQVATGenCO: TFloatField;
    latebillhistoryQVATTransCO: TFloatField;
    latebillhistoryQVATSystemLossGenCO: TFloatField;
    latebillhistoryQVATSystemLossTransCO: TFloatField;
    latebillhistoryQVATparec: TFloatField;
    latebillhistoryQVATmcc: TFloatField;
    latebillhistoryQVAT: TFloatField;
    latebillhistoryQAdjAmountBalance: TFloatField;
    latebillhistoryQAdjAmountApplied: TFloatField;
    latebillhistoryQReadTime: TStringField;
    latebillhistoryQDiffBillPerKwhr: TFloatField;
    latebillhistoryQDiffBillPerKW: TFloatField;
    latebillhistoryQDiffBillPerCust: TFloatField;
    latebillhistoryQMCC: TFloatField;
    latebillhistoryQPKVROebrNumber: TStringField;
    latebillhistoryQPKVRBillMonth: TStringField;
    latebillhistoryQPKVRAmount: TFloatField;
    latebillhistoryQTransSysAncRefund: TFloatField;
    latebillhistoryQTransDemAncRefund: TFloatField;
    latebillhistoryQVATTransAncRefund: TFloatField;
    latebillhistoryQSCDisc: TFloatField;
    latebillhistoryQWRateCode: TStringField;
    latebillhistoryQSCAmt4Disc: TFloatField;
    latebillhistoryQcbook: TStringField;
    latebillhistoryQRPTax: TFloatField;
    latebillhistoryQRateOrder: TStringField;
    latebillhistoryQBTax: TFloatField;
    latebillhistoryQOtherGenRateAdj: TFloatField;
    latebillhistoryQOtherTransCostAdj: TFloatField;
    latebillhistoryQOtherTransDemandCostAdj: TFloatField;
    latebillhistoryQOtherSystemLossCostAdj: TFloatField;
    latebillhistoryQOtherLifelineRateCostAdj: TFloatField;
    latebillhistoryQOtherSeniorCitizenRateAdj: TFloatField;
    latebillhistoryQFitall: TFloatField;
    latebillhistoryQreferenceAtmNo: TStringField;
    latebillhistoryQPARec: TFloatField;
    latebillhistory_frxDS: TfrxDBDataset;
    latebillhistoryQdateperiod: TStringField;
    latebillhistoryQbillingmonth: TStringField;
    procedure close_btnClick(Sender: TObject);
    procedure preview_btnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  latebillhistoryFrm: TlatebillhistoryFrm;

implementation

{$R *.dfm}

uses Data;

procedure TlatebillhistoryFrm.close_btnClick(Sender: TObject);
begin
  Close;
end;

procedure TlatebillhistoryFrm.FormShow(Sender: TObject);
begin
  datefrom_dp.Date := StartOfTheMonth(now);
  dateto_dp.Date := EndOfTheMonth(now);
end;

procedure TlatebillhistoryFrm.preview_btnClick(Sender: TObject);
begin
  latebillhistoryQ.Close;
  latebillhistoryQ.ParamByName('datefrom').AsDate := datefrom_dp.Date;
  latebillhistoryQ.ParamByName('dateto').AsDate := dateto_dp.Date;
  latebillhistoryQ.Open;

  report_frx.ShowReport;
end;

end.
