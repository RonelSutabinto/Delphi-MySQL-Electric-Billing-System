{$I-}
unit BillingPrintBills;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, ExtCtrls, AppEvnts, Buttons, ComCtrls, Printers,
  DB, Grids, DBGrids, Gauges, MemDS, DBAccess, MyAccess,
  Mask, DsFancyButton, Menus, NxEdit, NxCollection, QRCtrls, QuickRpt, ExtDlgs,
  DBGrid1, pngimage, jpeg, frxClass, frxDBSet;

type
  TBillingPrintBillForm = class(TForm)
    ApplicationEvents1: TApplicationEvents;
    Panel1: TPanel;
    Gauge1: TGauge;
    BitBtn1: TNxButton;
    BitBtn4: TNxButton;
    MMaster: TMyQuery;
    MMasterCode: TIntegerField;
    MMasterArea: TStringField;
    MMasterBook: TStringField;
    MMasterSequence: TStringField;
    MMasterAccountNumber: TStringField;
    MMasterName: TStringField;
    MMasterAddress: TStringField;
    MMasterRateCode: TStringField;
    MMasterConsCode: TStringField;
    MMasterConnCode: TStringField;
    MMasterTransformer: TStringField;
    MMasterMeterBrand: TStringField;
    MMasterSerial: TStringField;
    MMasterMultiplier: TFloatField;
    MMasterNewConnectionDate: TDateField;
    MMasterReconnectionDate: TDateField;
    MMasterDisconnectionDate: TDateField;
    MMasterPreviousReadingDate: TDateField;
    MMasterPresentReadingDate: TDateField;
    MMasterPreviousReadingKWH: TFloatField;
    MMasterPresentReadingKWH: TFloatField;
    MMasterDiff: TFloatField;
    MMasterDemand: TFloatField;
    MMasterFlatRateWattage: TFloatField;
    MMasterFeedBackCode: TStringField;
    MMasterCM: TStringField;
    MMasterCMMultiplier: TFloatField;
    MMasterCMPreviousReadingKWH: TFloatField;
    MMasterCMPresentReadingKWH: TFloatField;
    MMasterCMKilowattHour: TFloatField;
    MMasterCMDemand: TFloatField;
    MMasterKilowattHour: TFloatField;
    MMasterKilowattUsed: TFloatField;
    MMasterGenSysCharge: TFloatField;
    MMasterHostCommCharge: TFloatField;
    MMasterForexCharge: TFloatField;
    MMasterTCDemandCharge: TFloatField;
    MMasterTCTransSystemCharge: TFloatField;
    MMasterSystemLossCharge: TFloatField;
    MMasterDCDemandCharge: TFloatField;
    MMasterDCDistributionCharge: TFloatField;
    MMasterSCRetCustCharge: TFloatField;
    MMasterSCSupplySysCharge: TFloatField;
    MMasterMCRetailCustCharge: TFloatField;
    MMasterMCSystemCharge: TFloatField;
    MMasterUCNPCStrandedDebts: TFloatField;
    MMasterUCNPCStrandedContCost: TFloatField;
    MMasterUCDUStrandedContCost: TFloatField;
    MMasterUCME: TFloatField;
    MMasterUCEqTaxesAndRoyalties: TFloatField;
    MMasterUCEC: TFloatField;
    MMasterUCCrossSubRemoval: TFloatField;
    MMasterICCrossSubsidyCharge: TFloatField;
    MMasterPowerActRateRed: TFloatField;
    MMasterLifelineDiscSubs: TFloatField;
    MMasterLoanCondo: TFloatField;
    MMasterTransformerRental: TFloatField;
    MMasterOCCode1: TStringField;
    MMasterOCAmount1: TFloatField;
    MMasterOCMo1: TFloatField;
    MMasterOCTotal1: TFloatField;
    MMasterOCCode2: TStringField;
    MMasterOCAmount2: TFloatField;
    MMasterOCMo2: TFloatField;
    MMasterOCTotal2: TFloatField;
    MMasterOCCode3: TStringField;
    MMasterOCAmount3: TFloatField;
    MMasterOCMo3: TFloatField;
    MMasterOCTotal3: TFloatField;
    MMasterTotalBill: TFloatField;
    MMasterBillNumber: TStringField;
    MMasterOEBRNumber: TStringField;
    MMasterBillMonth: TStringField;
    MMasterPoleNumber: TStringField;
    MMasterFeederNumber: TStringField;
    MMasterAge30: TFloatField;
    MMasterAge60: TFloatField;
    MMasterAge90: TFloatField;
    MMasterAge120: TFloatField;
    MMasterAgeOver120: TFloatField;
    MMasterAgeTotal: TFloatField;
    MMasterTotalPayments: TFloatField;
    MMasterARBalance: TFloatField;
    MMasterLCCustMo: TFloatField;
    MMasterVATDist: TFloatField;
    MMasterVATGenCO: TFloatField;
    MMasterVATTransCO: TFloatField;
    MMasterVATSystemLossGenCO: TFloatField;
    MMasterVATSystemLossTransCO: TFloatField;
    MMasterVAT: TFloatField;
    Label3: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    EndOEBR: TEdit;
    StartOEBR: TEdit;
    PopupMenu1: TPopupMenu;
    StartBillNumber1: TMenuItem;
    EndBillNumber1: TMenuItem;
    PrinterSetupDialog1: TPrinterSetupDialog;
    PrintOption: TRadioGroup;
    ReprintOption: TCheckBox;
    DueDate: TNxDatePicker;
    Arrears: TMyQuery;
    Arrearsamount: TFloatField;
    ReprintLate: TCheckBox;
    Unpaid: TMyQuery;
    MMasterDeleteRemarks: TStringField;
    MMasterXFormerQty: TIntegerField;
    MMasterXFormerKVA: TStringField;
    MMasterPrevYearAdjPowerCost: TFloatField;
    MMasterSysLossUnderRecov: TFloatField;
    MMasterVATDisc: TFloatField;
    MMasterVATDiscAmt: TFloatField;
    MMasterVATDistDiscAmt: TFloatField;
    MMasterVATGenCoDiscAmt: TFloatField;
    MMasterVATTransCoDiscAmt: TFloatField;
    MMasterVATSystemLossDiscAmt: TFloatField;
    MMasterDiffBillPerKwhr: TFloatField;
    MMasterDiffBillPerKW: TFloatField;
    MMasterDiffBillPerCust: TFloatField;
    MMasterMCC: TFloatField;
    DiffCons: TMyQuery;
    DiffConskilowatthour: TFloatField;
    DiffConskilowattused: TFloatField;
    Panel2: TPanel;
    OC: TMyQuery;
    OCparticulars: TStringField;
    OCamount: TFloatField;
    TotalBill: TMyQuery;
    TotalBillarrears: TFloatField;
    TotalBillamount: TCurrencyField;
    TotalBillcurrentbill: TCurrencyField;
    RestUnpaid: TMyQuery;
    RestUnpaidamount: TFloatField;
    NxLinkLabel1: TNxLinkLabel;
    NxLinkLabel2: TNxLinkLabel;
    DBImage1: TDBImage;
    DBImage2: TDBImage;
    S: TMyQuery;
    DSS: TMyDataSource;
    CreateSOA: TMyQuery;
    SSign1: TBlobField;
    SSign2: TBlobField;
    OpenPictureDialog1: TOpenPictureDialog;
    SidSOASign: TLongWordField;
    DBGrid1: TDBGrid1;
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText73: TQRDBText;
    QRDBText74: TQRDBText;
    QRDBText41: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText51: TQRDBText;
    SummaryBand1: TQRBand;
    QRShape13: TQRShape;
    QRLabel70: TQRLabel;
    QRAmountDue: TQRDBText;
    RpTaxQuery: TMyQuery;
    RpTaxQueryarea: TStringField;
    RpTaxQuerybillmonth: TStringField;
    RpTaxQueryrateamnt: TFloatField;
    RpTaxQueryrateorder: TStringField;
    PRate2: TMyQuery;
    PRate2MBillMonth: TStringField;
    PRate2RateCode: TStringField;
    PRate2Remarks: TStringField;
    PRate2GenSysRate: TFloatField;
    PRate2HostCommRate: TFloatField;
    PRate2FOREXRate: TFloatField;
    PRate2TCDemandRate: TFloatField;
    PRate2TCSystemRate: TFloatField;
    PRate2SystemLossRate: TFloatField;
    PRate2DCDemandRate: TFloatField;
    PRate2DCSystemRate: TFloatField;
    PRate2SCRetailCustRate: TFloatField;
    PRate2SCSupplySysRate: TFloatField;
    PRate2MCRetailCustRate: TFloatField;
    PRate2MCSysRate: TFloatField;
    PRate2UCNPCStrandedDebtsRate: TFloatField;
    PRate2UCNPCStrandedContCostRate: TFloatField;
    PRate2UCDUStrandedContCostRate: TFloatField;
    PRate2UCMERate: TFloatField;
    PRate2UCEqTaxesAndRoyaltiesRate: TFloatField;
    PRate2UCECRate: TFloatField;
    PRate2UCCrossSubsidyRemovalRate: TFloatField;
    PRate2ICCrossSubsidyRate: TFloatField;
    PRate2PARARate: TFloatField;
    PRate2LifelineSubsidyRate: TFloatField;
    PRate2LoanCondo: TFloatField;
    PRate2Gram: TFloatField;
    PRate2LCcustmo: TFloatField;
    PRate2VAT: TFloatField;
    PRate2VATGenCo: TFloatField;
    PRate2VATTransCo: TFloatField;
    PRate2VATSystemLossGenCO: TFloatField;
    PRate2VATSystemLossTransCO: TFloatField;
    PRate2VATSystemLoss: TFloatField;
    PRate2PrevYearAdjPowerCost: TFloatField;
    PRate2SysLossUnderRecov: TFloatField;
    PRate2DiffBillPerKwhr: TFloatField;
    PRate2DIffBillPerKW: TFloatField;
    PRate2DiffBillPerCust: TFloatField;
    PRate2MCC: TFloatField;
    PRate2DiffBillMonth: TStringField;
    PRate2DiffBillApply: TStringField;
    PRate2PantawidApply: TStringField;
    PRate2TransSysAncRefundTitle: TStringField;
    PRate2TransSysAncRefund: TFloatField;
    PRate2TransDemAncRefundTitle: TStringField;
    PRate2TransDemAncRefund: TFloatField;
    PRate2VATTransAncRefundTitle: TStringField;
    PRate2VATTransAncRefund: TFloatField;
    PRate2SCDiscApply: TStringField;
    PRate2WRateCode: TStringField;
    PRate2SCDiscPercent: TFloatField;
    PRate2SCDiscSubs: TFloatField;
    PRate2PantawidRecovApply: TStringField;
    PRate2WRSw: TStringField;
    PRate2SCDiscKWHR: TLongWordField;
    PRate2RptaxR: TFloatField;
    OtherAdjQuery: TMyQuery;
    OtherAdjQueryGenSysCharge2: TFloatField;
    OtherAdjQueryTCDemandCharge2: TFloatField;
    OtherAdjQueryTCTransSystemCharge2: TFloatField;
    OtherAdjQuerySystemLossCharge2: TFloatField;
    OtherAdjQuerySCDisc2: TFloatField;
    OtherAdjQueryLifelineDiscSubs2: TFloatField;
    PRate2GenSysRate2: TFloatField;
    PRate2TCDemandRate2: TFloatField;
    PRate2TCSystemRate2: TFloatField;
    PRate2SystemLossRate2: TFloatField;
    PRate2LifelineSubsidyRate2: TFloatField;
    PRate2SCDiscSubs2: TFloatField;
    tmpQ: TMyQuery;
    OtherAdjQueryRPTax: TFloatField;
    OtherAdjQueryaccountnumber: TStringField;
    PRate2FitAllrate: TFloatField;
    UnpaidTmpQ: TMyQuery;
    UnpaidTmpQamount: TFloatField;
    NxButton1: TNxButton;
    NxHeaderPanel1: TNxHeaderPanel;
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    NxButton2: TNxButton;
    NxButton3: TNxButton;
    SsectionHeadName: TStringField;
    SsectionHeadPosition: TStringField;
    SdivisionChiefName: TStringField;
    SdivisionChiefPosition: TStringField;
    QRDBText103: TQRDBText;
    Scontact: TStringField;
    DBEdit5: TDBEdit;
    StelNo: TStringField;
    Semail: TStringField;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    PRate2PARec: TFloatField;
    QRLabel90: TQRLabel;
    QRLabel88: TQRLabel;
    QRLabel86: TQRLabel;
    taxWithheldQ: TMyQuery;
    taxWithheldQparticulars: TStringField;
    taxWithheldQamount: TFloatField;
    statementR: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    PRate2trate: TFloatField;
    PRate2tdmdrate: TFloatField;
    QRDBText112: TQRDBText;
    QRDBText113: TQRDBText;
    QRDBText114: TQRDBText;
    OUbreakdownQ: TMyQuery;
    OUbreakdownQTotalOU: TStringField;
    OUbreakdownQOU_d: TStringField;
    OUbreakdownQOUrate: TStringField;
    OUbreakdownQOUrate_d: TStringField;
    checkOUQ: TMyQuery;
    PRate2OtherGenRateAdj: TFloatField;
    PRate2OtherTransCostAdj: TFloatField;
    PRate2OtherTransDemandCostAdj: TFloatField;
    PRate2OtherSystemLossCostAdj: TFloatField;
    PRate2OtherLifelineRateCostAdj: TFloatField;
    PRate2OtherSeniorCitizenRateAdj: TFloatField;
    QRBand1: TQRBand;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRLabel105: TQRLabel;
    QRLabel106: TQRLabel;
    QRLabel107: TQRLabel;
    QRLabel108: TQRLabel;
    QRLabel109: TQRLabel;
    QRLabel110: TQRLabel;
    QRLabel111: TQRLabel;
    QRLabel112: TQRLabel;
    QRDBText130: TQRDBText;
    QRDBText131: TQRDBText;
    QRDBText132: TQRDBText;
    QRSysData2: TQRSysData;
    QRLabel113: TQRLabel;
    QRLabel114: TQRLabel;
    SOABillMonth: TQRLabel;
    QRLabel116: TQRLabel;
    QRLabel117: TQRLabel;
    QRLabel118: TQRLabel;
    QRLabel119: TQRLabel;
    QRLabel120: TQRLabel;
    QRLabel121: TQRLabel;
    QRLabel122: TQRLabel;
    QRLabel123: TQRLabel;
    QRLabel124: TQRLabel;
    CM: TQRLabel;
    CMPresentReading: TQRLabel;
    CMPreviousReading: TQRLabel;
    QRLabel128: TQRLabel;
    QRLabel129: TQRLabel;
    QRLabel130: TQRLabel;
    QRLabel131: TQRLabel;
    QRLabel132: TQRLabel;
    QRLabel133: TQRLabel;
    QRLabel134: TQRLabel;
    QRImage2: TQRImage;
    QRLabel135: TQRLabel;
    QRLabel136: TQRLabel;
    QRDBText133: TQRDBText;
    QRLabel137: TQRLabel;
    QRLabel138: TQRLabel;
    QRLabel139: TQRLabel;
    QRDBText134: TQRDBText;
    QRDBText135: TQRDBText;
    QRLabel140: TQRLabel;
    QRLabel141: TQRLabel;
    QRLabel142: TQRLabel;
    QRDBText136: TQRDBText;
    QRDBText137: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText139: TQRDBText;
    QRDBText140: TQRDBText;
    QRDBText141: TQRDBText;
    QRLabel143: TQRLabel;
    QRLabel144: TQRLabel;
    QRLabel145: TQRLabel;
    QRDBText142: TQRDBText;
    QRDBText143: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText145: TQRDBText;
    QRDBText146: TQRDBText;
    QRDBText147: TQRDBText;
    QRDBText148: TQRDBText;
    QRDBText149: TQRDBText;
    QRDBText150: TQRDBText;
    QRDBText151: TQRDBText;
    QRDBText152: TQRDBText;
    QRDBText153: TQRDBText;
    QRDBText154: TQRDBText;
    QRDBText29: TQRDBText;
    QRDBText156: TQRDBText;
    QRDBText157: TQRDBText;
    QRDBText32: TQRDBText;
    QRLabel146: TQRLabel;
    QRLabel147: TQRLabel;
    QRLabel148: TQRLabel;
    QRDBText159: TQRDBText;
    QRDBText160: TQRDBText;
    QRLabel149: TQRLabel;
    QRLabel150: TQRLabel;
    QRDBText161: TQRDBText;
    QRDBText37: TQRDBText;
    QRDBText163: TQRDBText;
    QRDBText40: TQRDBText;
    QRLabel151: TQRLabel;
    QRLabel152: TQRLabel;
    QRLabel153: TQRLabel;
    QRLabel154: TQRLabel;
    QRLabel155: TQRLabel;
    QRDBText165: TQRDBText;
    QRDBText166: TQRDBText;
    QRDBText167: TQRDBText;
    QRLabel156: TQRLabel;
    QRLabel157: TQRLabel;
    QRLabel158: TQRLabel;
    QRDBText168: TQRDBText;
    QRDBText169: TQRDBText;
    QRDBText170: TQRDBText;
    QRDBText171: TQRDBText;
    QRDBText172: TQRDBText;
    QRDBText173: TQRDBText;
    QRDBText174: TQRDBText;
    QRDBText175: TQRDBText;
    QRLabel159: TQRLabel;
    QRLabel160: TQRLabel;
    QRLabel161: TQRLabel;
    QRLabel55: TQRLabel;
    QRDBText176: TQRDBText;
    QRDBText177: TQRDBText;
    QRDBText178: TQRDBText;
    QRLabel163: TQRLabel;
    QRLabel164: TQRLabel;
    QRLabel165: TQRLabel;
    QRDBText179: TQRDBText;
    QRDBText180: TQRDBText;
    QRDBText181: TQRDBText;
    QRDBText182: TQRDBText;
    QRDBText183: TQRDBText;
    QRDBText184: TQRDBText;
    QRDBText185: TQRDBText;
    QRDBText186: TQRDBText;
    QRLabel166: TQRLabel;
    QRDBText187: TQRDBText;
    QRDBText188: TQRDBText;
    QRDBText189: TQRDBText;
    QRLabel167: TQRLabel;
    QRLabel168: TQRLabel;
    QRDBText68: TQRDBText;
    QRLabel169: TQRLabel;
    QRLabel170: TQRLabel;
    QRLabel171: TQRLabel;
    QRLabel172: TQRLabel;
    QRDBText191: TQRDBText;
    QRDBText192: TQRDBText;
    QRLabel173: TQRLabel;
    QRLabel174: TQRLabel;
    QRDBText193: TQRDBText;
    QRDBText194: TQRDBText;
    QRDBText195: TQRDBText;
    QRDBText196: TQRDBText;
    QRDBText197: TQRDBText;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRLabel175: TQRLabel;
    QRDBText198: TQRDBText;
    VatDiscountLabel: TQRLabel;
    QRDBText76: TQRDBText;
    QRLabel177: TQRLabel;
    QRLabel178: TQRLabel;
    QRDBText200: TQRDBText;
    QRLabel179: TQRLabel;
    QRDBText201: TQRDBText;
    QRDBText202: TQRDBText;
    QRLabel72: TQRLabel;
    QRDBText81: TQRDBText;
    QRLabel73: TQRLabel;
    QRDBText82: TQRDBText;
    QRDBText205: TQRDBText;
    QRLabel182: TQRLabel;
    QRDBText206: TQRDBText;
    QRLabel183: TQRLabel;
    QRDBText207: TQRDBText;
    QRDBText208: TQRDBText;
    QRLabel184: TQRLabel;
    QRDBText209: TQRDBText;
    QRLabel185: TQRLabel;
    QRDBText210: TQRDBText;
    QRDBText211: TQRDBText;
    QRLabel186: TQRLabel;
    QRDBText212: TQRDBText;
    QRLabel187: TQRLabel;
    QRDBText213: TQRDBText;
    QRDBText214: TQRDBText;
    QRLabel188: TQRLabel;
    QRLabel83: TQRLabel;
    QRLabel190: TQRLabel;
    QRDBText215: TQRDBText;
    QRLabel191: TQRLabel;
    QRDBText216: TQRDBText;
    QRDBText217: TQRDBText;
    QRLabel192: TQRLabel;
    QRDBText218: TQRDBText;
    QRLabel193: TQRLabel;
    QRDBText219: TQRDBText;
    QRDBText220: TQRDBText;
    QRLabel194: TQRLabel;
    QRDBText221: TQRDBText;
    QRLabel195: TQRLabel;
    QRDBText222: TQRDBText;
    QRDBText223: TQRDBText;
    QRLabel196: TQRLabel;
    QRLabel197: TQRLabel;
    QRDBText224: TQRDBText;
    QRDBText225: TQRDBText;
    QRLabel198: TQRLabel;
    QRDBText226: TQRDBText;
    QRLabel199: TQRLabel;
    QRDBText227: TQRDBText;
    QRDBText228: TQRDBText;
    QRLabel200: TQRLabel;
    QRDBText229: TQRDBText;
    QRLabel201: TQRLabel;
    QRDBText230: TQRDBText;
    QRDBText231: TQRDBText;
    QRLabel202: TQRLabel;
    QRDBText232: TQRDBText;
    QRLabel203: TQRLabel;
    QRDBText233: TQRDBText;
    QRDBText234: TQRDBText;
    QRLabel204: TQRLabel;
    QRDBText235: TQRDBText;
    QRLabel205: TQRLabel;
    QRDBText236: TQRDBText;
    QRDBText237: TQRDBText;
    QRLabel206: TQRLabel;
    QRDBText238: TQRDBText;
    QRLabel207: TQRLabel;
    QRDBText239: TQRDBText;
    QRDBText241: TQRDBText;
    QRLabel208: TQRLabel;
    QRDBText242: TQRDBText;
    QRLabel209: TQRLabel;
    QRDBText243: TQRDBText;
    QRDBText244: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    procedure Error(Sender: TObject; E: Exception);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure StartBillNumber1Click(Sender: TObject);
    procedure EndBillNumber1Click(Sender: TObject);
    procedure StartOEBRKeyPress(Sender: TObject; var Key: Char);
    procedure TotalBillCalcFields(DataSet: TDataSet);
    procedure QRDBText73Print(sender: TObject; var Value: String);
    procedure ReprintOptionClick(Sender: TObject);
    procedure ReprintLateClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure NxLinkLabel1Click(Sender: TObject);
    procedure NxLinkLabel2Click(Sender: TObject);
    procedure QRLabel55Print(sender: TObject; var Value: string);
    procedure QRLabel72Print(sender: TObject; var Value: string);
    procedure NxButton1Click(Sender: TObject);
    procedure NxButton2Click(Sender: TObject);
    procedure NxButton3Click(Sender: TObject);
  private

  public

  end;

var
  BillingPrintBillForm: TBillingPrintBillForm;
  Pause: Boolean;
  Abort: Boolean;
  BillCount: Integer;
  BillNum: LongInt;
  BillLimit: LongInt;
  BillStartSequence: String[10];
  DateCoverage: String[20];
  MonStr: String[20];
  NextMonStr: String[20];
  PrintDueDate : String;
  PresDate,PrevDate : String[10];
  FromMo,FromDay,ToMo,ToDay,ToYear : String[2];
  totalBillTmp : Double;

implementation

uses Data,
     ModTools;

Var
Lst                  : Text     ;
TotalPower           : Currency ;
ConsType             : String[3];
Device, Driver, Port : array[0..1023] of char;
varhandle            : THandle;
printername          : String;

{$R *.dfm}

Function RoundOff(Data : Real) : Real;
Var
St : String;
Vl : Real;
Check : Integer;
begin
 Str(Data:0:2,St);
 Val(St,Vl,Check);
 RoundOff := Vl;
end;

procedure TBillingPrintBillForm.Error(Sender: TObject; E: Exception);
begin
 ShowMessage(E.Message);
end;

procedure TBillingPrintBillForm.BitBtn1Click(Sender: TObject);



Procedure JustifyReceipt;
Var BillMonth : String[4];
    NMV : Word;
    Check : Integer;
    NMVS : String[2];
begin
with BillingData do
begin
PresDate        := JustStr(PBillPresentReadingDate.Text,' ',10,0);
PrevDate        := JustStr(PBillPreviousReadingDate.Text,' ',10,0);
PrintDueDate    := JustStr(PrintDueDate,' ',10,0);

FromMo          := Copy(PrevDate,1,2);
FromDay         := Copy(PrevDate,4,2);
ToMo            := Copy(PresDate,1,2);
ToDay           := Copy(PresDate,4,2);
ToYear          := Copy(PresDate,9,2);

BillMonth       := JustStr(PBillBillMonth.Text,'0',4,0);
Val(Copy(BillMonth,3,2),NMV,Check);
Inc(NMV);
Str(NMV:0,NMVS);
NMVS := JustStr(NMVS,'0',2,1);

If Copy(BillMonth,1,2) = '01' then
   begin
     MonStr     := 'Jan,'+Copy(BillMonth,3,2);
     NextMonStr := 'Feb,'+Copy(BillMonth,3,2);
   end;

If Copy(BillMonth,1,2) = '02' then
   begin
     MonStr := 'Feb,'+Copy(BillMonth,3,2);
     NextMonStr := 'Mar,'+Copy(BillMonth,3,2);
   end;

If Copy(BillMonth,1,2) = '03' then
   begin
     MonStr := 'Mar,'+Copy(BillMonth,3,2);
     NextMonStr := 'Apr,'+Copy(BillMonth,3,2);
   end;

If Copy(BillMonth,1,2) = '04' then
   begin
     MonStr := 'Apr,'+Copy(BillMonth,3,2);
     NextMonStr := 'May,'+Copy(BillMonth,3,2);
   end;

If Copy(BillMonth,1,2) = '05' then
   begin
     MonStr := 'May,'+Copy(BillMonth,3,2);
     NextMonStr := 'Jun,'+Copy(BillMonth,3,2);
   end;

If Copy(BillMonth,1,2) = '06' then
   begin
     MonStr := 'Jun,'+Copy(BillMonth,3,2);
     NextMonStr := 'Jul,'+Copy(BillMonth,3,2);
   end;

If Copy(BillMonth,1,2) = '07' then
   begin
     MonStr := 'Jul,'+Copy(BillMonth,3,2);
     NextMonStr := 'Aug,'+Copy(BillMonth,3,2);
   end;

If Copy(BillMonth,1,2) = '08' then
   begin
     MonStr := 'Aug,'+Copy(BillMonth,3,2);
     NextMonStr := 'Sep,'+Copy(BillMonth,3,2);
   end;

If Copy(BillMonth,1,2) = '09' then
   begin
     MonStr := 'Sep,'+Copy(BillMonth,3,2);
     NextMonStr := 'Oct,'+Copy(BillMonth,3,2);
   end;

If Copy(BillMonth,1,2) = '10' then
   begin
     MonStr := 'Oct,'+Copy(BillMonth,3,2);
     NextMonStr := 'Nov,'+Copy(BillMonth,3,2);
   end;

If Copy(BillMonth,1,2) = '11' then
   begin
     MonStr := 'Nov,'+Copy(BillMonth,3,2);
     NextMonStr := 'Dec,'+Copy(BillMonth,3,2);
   end;

If Copy(BillMonth,1,2) = '12' then
   begin
     MonStr := 'Dec,'+Copy(BillMonth,3,2);
     NextMonStr := 'Jan,'+NMVS;
   end;

MonStr := JustStr(MonStr,' ',6,0);

TotalPower := PBillGenSysCharge.AsCurrency +
              PBillHostCommCharge.AsCurrency +
              PBillForexCharge.AsCurrency +
              PBillTCDemandCharge.AsCurrency +
              PBillTCTransSystemCharge.AsCurrency +
              PBillSystemLossCharge.AsCurrency +
              PBillDCDemandCharge.AsCurrency +
              PBillDCDistributionCharge.AsCurrency +
              PBillSCRetCustCharge.AsCurrency +
              PBillSCSupplySysCharge.AsCurrency +
              PBillMCRetailCustCharge.AsCurrency +
              PBillMCSystemCharge.AsCurrency;
end;
end;


Function PRateStr(Data : Currency) : String;
Var SStr : String;
begin
  If Data <> 0 then Str(Data:9:4,SStr) else SStr := '';
  PRateStr := JustStr(SStr,' ',9,0);
end;



Function CutExcess(Data : Real) : Real;
Var
DataStr  : String  ;
Check    : Integer ;
DataR    : Real    ;
begin
Str(Data:0:5,DataStr);
DataStr := Copy(DataStr,1,Length(DataStr)-3);
Val(DataStr,DataR,Check);
Str(DataR:0:2,DataStr);
Val(DataStr,DataR,Check);
Str(DataR:0:2,DataStr);
CutExcess := DataR;
end;

Procedure SOAForIndustrialandGovernment;
begin
end;

VAR
 ZeroVAT : TMyQuery;
 checkTableStr :String;
 tableName : String;
 optionRef : Boolean;
 const
  sLineBreak = {$IFDEF MSWINDOWS} AnsiString(#13#10) {$ENDIF};
  //{$IFDEF LINUX} AnsiChar(#10) {$ENDIF}
begin
 PrintDueDate := DueDate.Text;
 optionRef    := true;

 if MessageDlg('Set Printer on ..... Proceed?', mtConfirmation, [mbOK,mbCancel], 0) = mrCancel then
 exit;

  If PrintOption.ItemIndex <> 3 then if not(PrinterSetupDialog1.Execute) then Exit;

  If PrintOption.ItemIndex = 3 then QuickRep1.PrinterSetup;

  PrinterName := '';

    If PrintOption.ItemIndex <> 3 then
    begin
      Try
        Printer.GetPrinter(Device,Driver,Port,varHandle);
        I := 0;
        While Port[I] <> #0 do
          begin
           PrinterName := PrinterName + Port[I];
           Inc(I);
          end;
        AssignFile(Lst,PrinterName);
        Rewrite(Lst);
      except
        ShowMessage('Printer not Ready');
        Exit;
      end;
    end;

   With BillingData do
     begin

     PBill.Close;
     PBill.SQL.Clear;
     taxWithheldQ.Close;

     checkTableStr := Bill.TableName;

     OC.MacroByName('tempbill').Active        := True;
     OC.MacroByName('latebillhistory').Active := False;
     OC.MacroByName('BillHistory').Active     := False;
     OC.MacroByName('latebill').Active        := False;

     taxWithheldQ.MacroByName('tempbill').Active        := True;
     taxWithheldQ.MacroByName('latebillhistory').Active := False;
     taxWithheldQ.MacroByName('BillHistory').Active     := False;
     taxWithheldQ.MacroByName('latebill').Active        := False;

     tableName := 'tempbill';
     if checkTableStr = 'Latebill'then
     begin
        OC.MacroByName('tempbill').Active        := false;
        OC.MacroByName('latebillhistory').Active := False;
        OC.MacroByName('BillHistory').Active     := False;
        OC.MacroByName('latebill').Active        := true;

        tableName := 'latebill';

        taxWithheldQ.MacroByName('tempbill').Active := false;
        taxWithheldQ.MacroByName('latebill').Active := true;
     end;

     If (ReprintOption.Checked = true) and
        (PrintOption.ItemIndex = 3) then
       begin
           OC.MacroByName('tempbill').Active        := False;
           OC.MacroByName('latebillhistory').Active := False;
           OC.MacroByName('BillHistory').Active     := True;
           OC.MacroByName('latebill').Active        := False;
           QRAmountDue.DataField := 'currentbill';

           tableName := 'Billhistory';
           optionRef := false;

           taxWithheldQ.MacroByName('tempbill').Active    := false;
           taxWithheldQ.MacroByName('BillHistory').Active := true;
       end;

     If (ReprintLate.Checked = true) and
        (PrintOption.ItemIndex = 3) then
       begin
           OC.MacroByName('tempbill').Active        := False;
           OC.MacroByName('latebillhistory').Active := True;
           OC.MacroByName('BillHistory').Active     := False;
           OC.MacroByName('latebill').Active        := False;

           tableName := 'latebillhistory';
           optionRef := false;

           QRAmountDue.DataField := 'currentbill';

           taxWithheldQ.MacroByName('tempbill').Active        := false;
           taxWithheldQ.MacroByName('latebillhistory').Active := true;
       end;

     If (ReprintOption.Checked = true) or
        (printoption.itemindex = 1) then
     begin
       PBill.SQL.Add('select * from billhistory');
     end else

     If ReprintLate.Checked = true then
     begin
       PBill.SQL.Add('select * from latebillhistory');
     end
     else
     PBill.SQL.Add('select * from '+Bill.TableName);

     PBill.SQL.Add('where oebrnumber between :startoebr and :endoebr');
     PBill.SQL.Add('order by oebrnumber');

     PBill.ParamByName('startoebr').Text := StartOEBR.text;
     PBill.ParamByName('endoebr').Text   := EndOEBR.text;
     PBill.Open;

     If PrintOption.ItemIndex = 1 then
       begin
         PBill.Filter            := 'StatusCode = ''0''';
         PBill.Filtered          := True;
       end;

     If PBill.IsEmpty then
      begin
       MessageDlg('There are no records with the bill number you supplied..', mtError, [mbOK], 0);
       PBill.Close;
       exit;
      end;

     //======Check if statement is estimated==========
     if PBillFeedBackCode.Text = 'A' then
        QRLabel117.Caption := 'Present(Estimate)'
     else
        QRLabel117.Caption := 'Present';
     //===============================================

     BillLimit       := PBill.RecordCount;
     BillCount       := 0;

     Gauge1.Progress := 0;
     Gauge1.MinValue := 0;
     Gauge1.Maxvalue := PBill.RecordCount;

     BillCount  := 0;

     PBill.First;

     While not PBill.Eof do
      begin

      Gauge1.AddProgress(1);
      Application.ProcessMessages;

      Application.ProcessMessages;
      JustifyReceipt;
      Application.ProcessMessages;

      PRate2.SQL.Clear;
      PRate2.SQL.Add('select m.*, ');
      PRate2.SQL.Add('(ifnull(m.GenSysRate,0) + ifnull(m.OtherGenRateAdj,0)) GenSysRate2,');
      PRate2.SQL.Add('(ifnull(m.TCDemandRate,0) + ifnull(m.OtherTransDemandCostAdj,0)) TCDemandRate2,');
      PRate2.SQL.Add('(ifnull(m.TCSystemRate,0) + ifnull(m.OtherTransCostAdj,0)) TCSystemRate2,');
      PRate2.SQL.Add('(ifnull(m.SystemLossRate,0) + ifnull(m.OtherSystemLossCostAdj,0)) SystemLossRate2,');
      PRate2.SQL.Add('(ifnull(m.LifelineSubsidyRate,0) + ifnull(m.OtherLifelineRateCostAdj,0)) LifelineSubsidyRate2,');
      PRate2.SQL.Add('(ifnull(m.SCDiscSubs,0) + ifnull(m.OtherSeniorCitizenRateAdj,0)) SCDiscSubs2,');

      PRate2.SQL.Add('(ifnull(m.GenSysRate,0) +  ');
	    PRate2.SQL.Add('ifnull(m.HostCommRate,0)+  ');
	    PRate2.SQL.Add('ifnull(m.FOREXRate,0)+     ');
      PRate2.SQL.Add('ifnull(m.TCSystemRate,0)+  ');
      PRate2.SQL.Add('ifnull(m.SystemLossRate,0)+');
      PRate2.SQL.Add('ifnull(m.DCSystemRate,0)+  ');
      PRate2.SQL.Add('ifnull(m.SCSupplySysRate,0)+');
      PRate2.SQL.Add('ifnull(m.MCSysRate,0)+ ');
      PRate2.SQL.Add('ifnull(m.UCMERate,0)+  ');
      PRate2.SQL.Add('ifnull(m.UCECRate,0)+  ');
      PRate2.SQL.Add('ifnull(m.LifelineSubsidyRate,0)+');
      PRate2.SQL.Add('ifnull(m.PARARate,0)+  ');
      PRate2.SQL.Add('ifnull(m.SCDiscSubs,0)+');
      PRate2.SQL.Add('ifnull(m.MCC,0)+       ');
      PRate2.SQL.Add('ifnull(m.VATGenCo,0)+  ');
      PRate2.SQL.Add('ifnull(m.VATTransCo,0)+');
      PRate2.SQL.Add('ifnull(m.VATSystemLossGenCO,0)+');
      PRate2.SQL.Add('ifnull(m.VATSystemLoss,0)+');
      PRate2.SQL.Add('ifnull(m.UCNPCStrandedContCostRate,0)+');
      PRate2.SQL.Add('ifnull(m.ICCrossSubsidyRate,0)+');
      PRate2.SQL.Add('ifnull(m.FitAllrate,0)+');
      PRate2.SQL.Add('ifnull(m.OtherGenRateAdj,0)+');
      PRate2.SQL.Add('ifnull(m.OtherTransCostAdj,0)+ ');
      PRate2.SQL.Add('ifnull(m.OtherSystemLossCostAdj,0)+');
      PRate2.SQL.Add('ifnull(m.OtherLifelineRateCostAdj,0)+ ');
      PRate2.SQL.Add('ifnull(m.OtherSeniorCitizenRateAdj,0)+');
      PRate2.SQL.Add('ifnull(m.PARec,0)+ ');
      PRate2.SQL.Add('ifnull(m.UCNPCStrandedDebtsRate,0)) as trate,');

      PRate2.SQL.Add('(ifnull(m.DCDemandRate,0)+ ');
      PRate2.SQL.Add('ifnull(m.OtherTransDemandCostAdj,0)+');
      PRate2.SQL.Add('ifnull(m.TCDemandRate,0)) as tdmdrate,');

      PRate2.SQL.Add('ifnull((Select r.rateamnt from areatax a ');
      PRate2.SQL.Add('       left join raterptax  r on r.billmonth = a.billmonth and ');
      PRate2.SQL.Add('       r.rateorder = a.rateorder ');
      PRate2.SQL.Add('       where a.billmonth = :billmonth and a.area = :area),0) as RptaxR ');
      PRate2.SQL.Add('from meterrate m ');
      PRate2.SQL.Add('where m.mbillmonth = :billmonth');
      PRate2.ParamByName('BillMonth').Text  := PBillBillMonth.Text;
      PRate2.ParamByName('area').Text       := PBillArea.Text;
      PRate2.Open;

     {
      (Select r.rateamnt
      from areatax a
      left join raterptax  r on r.billmonth = a.billmonth and
      r.rateorder = a.rateorder
      where a.billmonth = :billmonth and a.area = area) as RptaxR}

      if PRateWRSw.Text = '0' then
      begin

        PRate2.Close;
        PRate2.SQL.Clear;
        PRate2.SQL.Add('select m.*, ');
        PRate2.SQL.Add('(ifnull(m.GenSysRate,0) + ifnull(m.OtherGenRateAdj,0)) GenSysRate2,');
        PRate2.SQL.Add('ifnull(m.OtherGenRateAdj,0) Rate2,');
        PRate2.SQL.Add('sum(ifnull(m.TCDemandRate,0) + ifnull(m.OtherTransDemandCostAdj,0)) TCDemandRate2,');
        PRate2.SQL.Add('sum(ifnull(m.TCSystemRate,0) + ifnull(m.OtherTransCostAdj,0)) TCSystemRate2,');
        PRate2.SQL.Add('sum(ifnull(m.SystemLossRate,0) + ifnull(m.OtherSystemLossCostAdj,0)) SystemLossRate2,');
        PRate2.SQL.Add('sum(ifnull(m.LifelineSubsidyRate,0) + ifnull(m.OtherLifelineRateCostAdj,0)) LifelineSubsidyRate2,');
        PRate2.SQL.Add('sum(ifnull(m.SCDiscSubs,0) + ifnull(m.OtherSeniorCitizenRateAdj,0)) SCDiscSubs2,');

        PRate2.SQL.Add('(ifnull(m.GenSysRate,0) +  ');
        PRate2.SQL.Add('ifnull(m.HostCommRate,0)+  ');
        PRate2.SQL.Add('ifnull(m.FOREXRate,0)+     ');
        PRate2.SQL.Add('ifnull(m.TCSystemRate,0)+  ');
        PRate2.SQL.Add('ifnull(m.SystemLossRate,0)+');
        PRate2.SQL.Add('ifnull(m.DCSystemRate,0)+  ');
        PRate2.SQL.Add('ifnull(m.SCSupplySysRate,0)+');
        PRate2.SQL.Add('ifnull(m.MCSysRate,0)+ ');
        PRate2.SQL.Add('ifnull(m.UCMERate,0)+  ');
        PRate2.SQL.Add('ifnull(m.UCECRate,0)+  ');
        PRate2.SQL.Add('ifnull(m.LifelineSubsidyRate,0)+');
        PRate2.SQL.Add('ifnull(m.PARARate,0)+  ');
        PRate2.SQL.Add('ifnull(m.SCDiscSubs,0)+');
        PRate2.SQL.Add('ifnull(m.MCC,0)+       ');
        PRate2.SQL.Add('ifnull(m.VATGenCo,0)+  ');
        PRate2.SQL.Add('ifnull(m.VATTransCo,0)+');
        PRate2.SQL.Add('ifnull(m.VATSystemLossGenCO,0)+');
        PRate2.SQL.Add('ifnull(m.VATSystemLoss,0)+');
        PRate2.SQL.Add('ifnull(m.UCNPCStrandedContCostRate,0)+');
        PRate2.SQL.Add('ifnull(m.ICCrossSubsidyRate,0)+');
        PRate2.SQL.Add('ifnull(m.FitAllrate,0)+');
        PRate2.SQL.Add('ifnull(m.OtherGenRateAdj,0)+');
        PRate2.SQL.Add('ifnull(m.OtherTransCostAdj,0)+ ');
        PRate2.SQL.Add('ifnull(m.OtherSystemLossCostAdj,0)+');
        PRate2.SQL.Add('ifnull(m.OtherLifelineRateCostAdj,0)+ ');
        PRate2.SQL.Add('ifnull(m.OtherSeniorCitizenRateAdj,0)+');
        PRate2.SQL.Add('ifnull(m.PARec,0)+ ');
        PRate2.SQL.Add('ifnull(m.UCNPCStrandedDebtsRate,0)) as trate,');

        PRate2.SQL.Add('(ifnull(m.DCDemandRate,0)+ ');
        PRate2.SQL.Add('ifnull(m.OtherTransDemandCostAdj,0)+');
        PRate2.SQL.Add('ifnull(m.TCDemandRate,0)) as tdmdrate,');

        PRate2.SQL.Add('ifnull((Select r.rateamnt from areatax a ');
        PRate2.SQL.Add('       left join raterptax  r on r.billmonth = a.billmonth and ');
        PRate2.SQL.Add('       r.rateorder = a.rateorder ');
        PRate2.SQL.Add('       where a.billmonth = :billmonth and a.area = :area),0) as RptaxR ');
        PRate2.SQL.Add('from meterrate m ');
        PRate2.SQL.Add('left join mrate mr on mr.mbillmonth=m.billmonth and mr.wratecode=m.wratecode ');
        PRate2.SQL.Add('where m.mbillmonth = :billmonth and');
        PRate2.SQL.Add('        m.ratecode = :ratecode');
        PRate2.ParamByName('billmonth').Text := PBillBillMonth.Text;
        PRate2.ParamByName('ratecode').Text  := PBillRateCode.Text;
        PRate2.ParamByName('area').Text      := PBillArea.Text;
        PRate2.Open;
        //showmessage(FloatToStr(PRate2.FieldByName('rate2').AsFloat));
      end
      else
      begin
        PRate2.Close;
        PRate2.SQL.Clear;
        PRate2.SQL.Add('select m.*, ');
        PRate2.SQL.Add('(ifnull(m.GenSysRate,0) + ifnull(m.OtherGenRateAdj,0)) GenSysRate2,');
        PRate2.SQL.Add('(ifnull(m.TCDemandRate,0) + ifnull(m.OtherTransDemandCostAdj,0)) TCDemandRate2,');
        PRate2.SQL.Add('(ifnull(m.TCSystemRate,0) + ifnull(m.OtherTransCostAdj,0)) TCSystemRate2,');
        PRate2.SQL.Add('(ifnull(m.SystemLossRate,0) + ifnull(m.OtherSystemLossCostAdj,0)) SystemLossRate2,');
        PRate2.SQL.Add('(ifnull(m.LifelineSubsidyRate,0) + ifnull(m.OtherLifelineRateCostAdj,0)) LifelineSubsidyRate2,');
        PRate2.SQL.Add('(ifnull(m.SCDiscSubs,0) + ifnull(m.OtherSeniorCitizenRateAdj,0)) SCDiscSubs2,');

        PRate2.SQL.Add('(ifnull(m.GenSysRate,0) +  ');
        PRate2.SQL.Add('ifnull(m.HostCommRate,0)+  ');
        PRate2.SQL.Add('ifnull(m.FOREXRate,0)+     ');
        PRate2.SQL.Add('ifnull(m.TCSystemRate,0)+  ');
        PRate2.SQL.Add('ifnull(m.SystemLossRate,0)+');
        PRate2.SQL.Add('ifnull(m.DCSystemRate,0)+  ');
        PRate2.SQL.Add('ifnull(m.SCSupplySysRate,0)+');
        PRate2.SQL.Add('ifnull(m.MCSysRate,0)+ ');
        PRate2.SQL.Add('ifnull(m.UCMERate,0)+  ');
        PRate2.SQL.Add('ifnull(m.UCECRate,0)+  ');
        PRate2.SQL.Add('ifnull(m.LifelineSubsidyRate,0)+');
        PRate2.SQL.Add('ifnull(m.PARARate,0)+  ');
        PRate2.SQL.Add('ifnull(m.SCDiscSubs,0)+');
        PRate2.SQL.Add('ifnull(m.MCC,0)+       ');
        PRate2.SQL.Add('ifnull(m.VATGenCo,0)+  ');
        PRate2.SQL.Add('ifnull(m.VATTransCo,0)+');
        PRate2.SQL.Add('ifnull(m.VATSystemLossGenCO,0)+');
        PRate2.SQL.Add('ifnull(m.VATSystemLoss,0)+');
        PRate2.SQL.Add('ifnull(m.UCNPCStrandedContCostRate,0)+');
        PRate2.SQL.Add('ifnull(m.ICCrossSubsidyRate,0)+');
        PRate2.SQL.Add('ifnull(m.FitAllrate,0)+');
        PRate2.SQL.Add('ifnull(m.OtherGenRateAdj,0)+');
        PRate2.SQL.Add('ifnull(m.OtherTransCostAdj,0)+ ');
        PRate2.SQL.Add('ifnull(m.OtherSystemLossCostAdj,0)+');
        PRate2.SQL.Add('ifnull(m.OtherLifelineRateCostAdj,0)+ ');
        PRate2.SQL.Add('ifnull(m.OtherSeniorCitizenRateAdj,0)+');
        PRate2.SQL.Add('ifnull(m.PARec,0)+ ');
        PRate2.SQL.Add('ifnull(m.UCNPCStrandedDebtsRate,0)) as trate,');

       PRate2.SQL.Add('(ifnull(m.DCDemandRate,0)+ ');
       PRate2.SQL.Add('ifnull(m.OtherTransDemandCostAdj,0)+');
       PRate2.SQL.Add('ifnull(m.TCDemandRate,0)) as tdmdrate,');

        PRate2.SQL.Add('ifnull((Select r.rateamnt from areatax a ');
        PRate2.SQL.Add('       left join raterptax  r on r.billmonth = a.billmonth and ');
        PRate2.SQL.Add('       r.rateorder = a.rateorder ');
        PRate2.SQL.Add('       where a.billmonth = :billmonth and a.area = :area),0) as RptaxR ');
        PRate2.SQL.Add('from meterrate m ');
        PRate2.SQL.Add('where m.mbillmonth = :billmonth and');
        PRate2.SQL.Add('       m.Wratecode = :Wratecode');
        PRate2.ParamByName('billmonth').Text := PBillBillMonth.Text;
        PRate2.ParamByName('Wratecode').Text := PBillWRateCode.Text;
        PRate2.ParamByName('area').Text      := PBillArea.Text;
        PRate2.Open;
      end;

      case printoption.itemindex of
      0 : begin end;
      1 : begin end;
      2 : begin
            Unpaid.ParamByName('document').Text := PBillOEBRNumber.Text;
            If not Unpaid.IsEmpty then begin end;
            unpaid.Close;
          end;
      3 : begin
             If PBillCM.Text = '1' then
               begin
                 CM.Caption                := 'Change Meter';
                 CMPresentReading.Caption  := FloatToStr(PBillCMPresentReadingKWH.AsFloat);
                 CMPreviousReading.Caption := FloatToStr(PBillCMPreviousReadingKWH.AsFloat);
               end else
               begin
                 CM.Caption                := '';
                 CMPresentReading.Caption  := '';
                 CMPreviousReading.Caption := '';
               end;

             OC.ParamByName('code').Text          := PBillCode.Text;
             OC.ParamByName('RefBillMonth').Text  := PRateDiffBillMonth.Text;
             OC.ParamByName('CurrBillMonth').Text := PBillBillMonth.Text;
             OC.Open;

             //Tax Withheld=================================
             //=============================================
             QRLabel88.Caption := '';
             QRLabel86.Caption := '';

             taxWithheldQ.ParamByName('code').Text          := PBillCode.Text;
             taxWithheldQ.ParamByName('CurrBillMonth').Text := PBillBillMonth.Text;
             taxWithheldQ.Open;

             taxWithheldQ.First;
             while not taxWithheldQ.Eof do
             begin
                if taxWithheldQamount.AsFloat <>0 then
                begin

                  QRLabel88.Caption := 'Impotant reminders on Withholding Tax upon payment, please attach the BIR Form with the corresponding Tax Withheld:';
                  QRLabel86.Caption :=  QRLabel86.Caption + taxWithheldQparticulars.Text + JustStr(FormatFloat('#,###,###.00',taxWithheldQamount.AsFloat),' ',11,1)+sLineBreak;

                end;

                taxWithheldQ.Next;
             end;
             //=============================================
             //=============================================

             //RpTaxQuery.Close;
             //RpTaxQuery.ParamByName('BillMonth').Text := PBillBillMonth.Text;
             //RpTaxQuery.ParamByName('Area').Text      := PBillArea.Text;
             //RpTaxQuery.Open;
             //RPTax_QRLabel.Caption                    :='P' + FloatToStr(RoundOff(RpTaxQueryrateamnt.AsCurrency * PBillKilowattHour.AsCurrency));


             OtherAdjQuery.Close;
             if ReprintOption.Checked then
             begin
               OtherAdjQuery.MacroByName('billhistory').Active      := true;
               OtherAdjQuery.MacroByName('latebillhistory').Active  := false;
               OtherAdjQuery.MacroByName('tempbill').Active         := false;
               OtherAdjQuery.MacroByName('latebill').Active         := false;
             end else if ReprintLate.Checked then
             begin
               OtherAdjQuery.MacroByName('billhistory').Active      := false;
               OtherAdjQuery.MacroByName('latebillhistory').Active  := true;
               OtherAdjQuery.MacroByName('tempbill').Active         := false;
               OtherAdjQuery.MacroByName('latebill').Active         := false;
             end else
             begin
               OtherAdjQuery.MacroByName('billhistory').Active      := false;
               OtherAdjQuery.MacroByName('latebillhistory').Active  := false;
               OtherAdjQuery.MacroByName('tempbill').Active         := true;
               OtherAdjQuery.MacroByName('latebill').Active         := false;

               if checkTableStr = 'Latebill' then
               begin
                  OtherAdjQuery.MacroByName('billhistory').Active      := false;
                  OtherAdjQuery.MacroByName('latebillhistory').Active  := false;
                  OtherAdjQuery.MacroByName('tempbill').Active         := false;
                  OtherAdjQuery.MacroByName('latebill').Active         := true;
               end;
             end;

             OtherAdjQuery.ParamByName('accountnumber').Text := PBillAccountNumber.Text;
             OtherAdjQuery.ParamByName('billmonth').Text     := PBillBillMonth.Text;
             OtherAdjQuery.Open;


             TotalBill.ParamByName('Code').Text   := PBillCode.Text;
             TotalBill.Open;

             SOABillMonth.Caption :=  'CONSUMPTION FOR BILLING MONTH : '+FormatDateTime('MMMM, YYYY',StrToDate(Copy(PBillBillMonth.Text,1,2)+'/01/'+Copy(PBillBillMonth.Text,3,2)));

             If PBillVATDiscAmt.AsCurrency = 0 then
             VatDiscountLabel.Caption := '' else
             VatDiscountLabel.Caption := 'Less : VAT Discount';

              ZeroVAT            := TMyQuery.Create(ZeroVAT);
              ZeroVAT.Connection := BillingData.MyConnection1;
              ZeroVAT.SQL.Clear;

              ZeroVAT.SQL.Add('Select accountnumber from ZeroVat where code = :code and dateentered <= :dateentered');
              ZeroVAT.ParamByName('Code').Text          := PBillCode.Text;
              ZeroVAT.ParamByName('DateEntered').AsDate := PBillPresentReadingDate.AsDateTime;
              ZeroVAT.Open;

              if not ZeroVAT.IsEmpty then
              begin
                QRDBText29.Enabled := False;
                QRDBText11.Enabled := False;
                QRDBText32.Enabled := False;
                QRDBText17.Enabled := False;
                QRDBText40.Enabled := False;
                QRDBText37.Enabled := False;
                QRDBText68.Enabled := False;
                QRDBText76.Enabled := False;
              end else
              begin
                QRDBText29.Enabled := True;
                QRDBText11.Enabled := True;
                QRDBText32.Enabled := True;
                QRDBText17.Enabled := True;
                QRDBText40.Enabled := True;
                QRDBText37.Enabled := True;
                QRDBText68.Enabled := True;
                QRDBText76.Enabled := True;
              end;

              ZeroVAT.Close;
              FreeAndNil(ZeroVAT);

              if (PBillreferenceAtmNo.Text='') OR (PBillreferenceAtmNo.Value = null) then
                begin
                   QRLabel83.Caption := 'N/A';
                end else begin

                  tmpQ.Close;
                  tmpQ.SQL.Clear;
                  tmpQ.SQL.Add('Select * from ' + tableName +' where code = :code and billmonth = :billmonth');
                  tmpQ.ParamByName('code').Text      := PBillCode.Text;
                  tmpQ.ParamByName('billmonth').Text := PBillBillMonth.Text;
                  tmpQ.Open;

                  if not tmpQ.IsEmpty then
                     begin

                        UnpaidTmpQ.Close;
                        UnpaidTmpQ.ParamByName('code').Text      := PBillCode.Text;
                        UnpaidTmpQ.Open;

                        if (tmpQ.FieldByName('totalbill').AsFloat = UnpaidTmpQamount.AsFloat) AND (optionRef=false)  OR
                           (tmpQ.FieldByName('totalbill').AsFloat = TotalBillamount.AsFloat) AND (optionRef=true) then
                              QRLabel83.Caption := PBillreferenceAtmNo.Text
                        else
                              QRLabel83.Caption := 'N/A';

                      end
                    else
                      begin
                        QRLabel83.Caption := 'N/A';
                      end;

                end;

              {QRLabel88.Caption := '';
              QRLabel86.Caption := '';
              if (BillingData.PBillWRateCode.Text = 'H') or
                 (BillingData.PBillWRateCode.Text = 'L')   then
              begin
                 QRLabel88.Caption := 'Note: Impotant reminders on Withholding Tax upon payment, please attach the BIR Form with the corresponding Tax Withheld.';

                 if BillingData.PBillRateCode.Text = 'P'  then
                 QRLabel86.Caption := 'Withholding Tax (BIR Form 2307) 2% & Final Vat (BIR Form 2306) 5%'
                 else
                 QRLabel86.Caption := 'Withholding Tax (BIR Form 2307) 2%';
              end;         }


              isonumberQ.Close;
              isonumberQ.ParamByName('reporttype').Text :=  'StatementOfAccount';
              isonumberQ.Open;


              checkOUQ.Close;
              checkOUQ.ParamByName('code').Text      := PBillCode.Text;
              checkOUQ.ParamByName('billmonth').Text := PBillBillMonth.Text;
              checkOUQ.Open;

              if NOt checkOUQ.IsEmpty then
              begin
                OUbreakdownQ.Close;
                OUbreakdownQ.MacroByName('bill').Active    := true;
                OUbreakdownQ.MacroByName('tmpbill').Active := false;
                OUbreakdownQ.ParamByName('code').Text := PBillCode.Text;
                OUbreakdownQ.ParamByName('billmonth').Text := PBillBillMonth.Text;
                OUbreakdownQ.Open;
              end else begin
                OUbreakdownQ.Close;
                OUbreakdownQ.MacroByName('bill').Active    := false;
                OUbreakdownQ.MacroByName('tmpbill').Active := true;
                OUbreakdownQ.ParamByName('code').Text := PBillCode.Text;
                OUbreakdownQ.ParamByName('billmonth').Text := PBillBillMonth.Text;
                OUbreakdownQ.Open;
              end;


              //showmessage('Ronel '+PBillCode.Text+#13+PBillBillMonth.Text+#13+OUbreakdownQTotalOU.Text+#13+OUbreakdownQOU_d.Text);

              //QuickRep1.Preview;
              QuickRep1.Print;
              OC.Close;
              TotalBill.Close;
          end;
      end;

      Application.ProcessMessages;

      Inc(BillCount);
      Application.ProcessMessages;

      PRate.Close;

      PBill.Next;
      end;

      PBill.Close;

      if PrintOption.ItemIndex <> 3 then CloseFile(Lst);
      ShowMessage('Printing done');
      Close;
     end;

end;

procedure TBillingPrintBillForm.BitBtn4Click(Sender: TObject);
begin
  Close;
end;


procedure TBillingPrintBillForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   S.Close;
   Action := caFree;
   BillingPrintBillForm := Nil;
end;

procedure TBillingPrintBillForm.FormShow(Sender: TObject);
begin
  Try
    CreateSOA.Execute;
    S.Open;
    S.AppendRecord([]);
    S.Close;
  except
  end;

  S.Open;

end;

procedure TBillingPrintBillForm.NxButton1Click(Sender: TObject);
begin
  s.Edit;
  NxHeaderPanel1.Left := 48;
  NxHeaderPanel1.Top  := 73;
  NxHeaderPanel1.BringToFront;
  NxHeaderPanel1.Visible := true;

end;

procedure TBillingPrintBillForm.NxButton2Click(Sender: TObject);
begin
  s.Cancel;
  NxHeaderPanel1.Visible := false;
end;

procedure TBillingPrintBillForm.NxButton3Click(Sender: TObject);
begin
    s.Post;
    s.Close;
    s.Open;
    MessageDlg('Signatories successfully updated.',mtInformation,[mbOK],0);
    NxHeaderPanel1.Visible := false;
end;

procedure TBillingPrintBillForm.NxLinkLabel1Click(Sender: TObject);
begin
  If OpenPictureDialog1.Execute then
  begin
    S.Edit;
    SSign1.LoadFromFile(OpenPictureDialog1.Filename);
    S.Post;
  end;
end;

procedure TBillingPrintBillForm.NxLinkLabel2Click(Sender: TObject);
begin
  If OpenPictureDialog1.Execute then
  begin
    S.Edit;
    SSign2.LoadFromFile(OpenPictureDialog1.Filename);
    S.Post;
  end;
end;

procedure TBillingPrintBillForm.StartBillNumber1Click(Sender: TObject);
begin
  StartOebr.Text := BillingData.BillSource.DataSet.FieldValues['OEBRNUMBER'];
end;

procedure TBillingPrintBillForm.EndBillNumber1Click(Sender: TObject);
begin
  EndOEBR.Text := BillingData.BillSource.DataSet.FieldValues['OEBRNUMBER'];
end;

procedure TBillingPrintBillForm.StartOEBRKeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 then
    begin
      Perform(CM_DIALOGKEY,VK_TAB,0);
      Key := #0;
    end;
end;

procedure TBillingPrintBillForm.TotalBillCalcFields(DataSet: TDataSet);
begin
  TotalBillamount.AsCurrency       := TotalBillarrears.AsCurrency + BillingData.PBillTotalBill.AsCurrency;

  TotalBillcurrentbill.AsCurrency  := BillingData.PBillTotalBill.AsCurrency;

  If TotalBillArrears.AsCurrency = 0 then
    begin
      // check if restructured;
      RestUnpaid.Close;
      RestUnpaid.ParamByName('code').Text          := BillingData.PBillCode.Text;
      RestUnpaid.ParamByName('currbillmonth').Text := BillingData.PBillBillMonth.Text;
      RestUnpaid.Open;

      If not RestUnpaid.IsEmpty then
      begin
        TotalBillamount.AsCurrency       := RestUnpaidamount.AsCurrency + BillingData.PBillTotalBill.AsCurrency;
      end;
    end;


end;

procedure TBillingPrintBillForm.QRDBText73Print(sender: TObject;
  var Value: String);
begin
  If Copy(Value,1,4) = 'BILL' then
    begin
     QRDBText73.Font.Style := [FsBold];
     QRDBText74.Font.Style := [fsBold];
    end else
    begin
     QRDBText73.Font.Style := [];
     QRDBText74.Font.Style := [];
    end;
end;

procedure TBillingPrintBillForm.QRLabel55Print(sender: TObject;
  var Value: string);
begin
  if BillingData.PBillLifelineDiscSubs.AsCurrency < 0 then
  QRLabel55.Caption := 'Lifeline Discount' else
  QRLabel55.Caption := 'Lifeline Subsidy';
end;

procedure TBillingPrintBillForm.QRLabel72Print(sender: TObject;
  var Value: string);
begin
  if BillingData.PBillSCDisc.AsCurrency < 0 then
    begin
      QRLabel72.Caption  := 'Senior Citizen Discount';
      QRLabel73.Enabled  := False;
      QRDBText81.Enabled := False;
      QRDBText82.Enabled := False;
    end
    else
    begin
      QRLabel72.Caption := 'Senior Citizen Subsidy';
      QRLabel73.Enabled  := True;
      QRDBText81.Enabled := True;
      QRDBText82.Enabled := True;
    end;
end;

procedure TBillingPrintBillForm.ReprintOptionClick(Sender: TObject);
begin
  If ReprintOption.Checked then ReprintLate.Checked := False;
end;

procedure TBillingPrintBillForm.ReprintLateClick(Sender: TObject);
begin
  If ReprintLate.Checked then ReprintOption.Checked := False;
end;

end.

