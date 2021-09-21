unit issuanceinterface;

interface

uses
  Windows, Messages, Classes, SysUtils, Graphics, Controls, StdCtrls, Forms,
  Dialogs, DBCtrls, DB, ExtCtrls, Mask, Buttons, Grids, DBGrids, Menus,
  BarMenus, ComCtrls, Gauges, MemDS, DBAccess, MyAccess, CRGrid,
  printers, NxEdit, NxCollection, QRCtrls, QuickRpt, CPort, Rapi, Rapi2,
  StrUtils, CRDBGrid1, jpeg,Variants, DBGrid1, frxClass, frxDBSet, CPortTypes;

type
  TIssuanceForm = class(TForm)
    Panel1: TPanel;
    SelectCollectorPanel: TNxHeaderPanel;
    DSRouteControlBatch: TDataSource;
    RCBCollectorCode: TNxEdit;
    Label11: TLabel;
    RCBBatch: TNxEdit;
    Label55: TLabel;
    RCBDateIssue: TNxDatePicker;
    Label56: TLabel;
    PDJSillyLabel2: TNxButton;
    PDJSillyLabel24: TNxButton;
    GetUnpaid: TMyQuery;
    RouteControlBatch: TMyQuery;
    NOD: TMyQuery;
    NODACCOUNTNUMBER: TStringField;
    CheckOEBR: TMyQuery;
    CheckOEBRDocument: TStringField;
    CheckOEBRCode: TFloatField;
    CheckOEBRArea: TStringField;
    CheckOEBRBook: TStringField;
    CheckOEBRAccountNumber: TStringField;
    CheckOEBRDate: TDateField;
    CheckOEBRName: TStringField;
    CheckOEBRBillMonth: TStringField;
    CheckOEBRRateCode: TStringField;
    CheckOEBRReading: TFloatField;
    CheckOEBRKilowattHour: TFloatField;
    CheckOEBRAmount: TFloatField;
    CheckOEBRUCNPCSD: TFloatField;
    CheckOEBRUCNPCSCC: TFloatField;
    CheckOEBRUCDUSCC: TFloatField;
    CheckOEBRUCME: TFloatField;
    CheckOEBRUCETR: TFloatField;
    CheckOEBRUCEC: TFloatField;
    CheckOEBRUCCSR: TFloatField;
    CheckOEBRCollectorCode: TStringField;
    CheckOEBRDateIssued: TDateField;
    CheckOEBRBatch: TStringField;
    CheckOEBRTransformerRental: TFloatField;
    IssuanceReturnBillsSOAPanel: TPanel;
    Panel4: TPanel;
    PDJSillyLabel6: TNxButton;
    PDJSillyLabel7: TNxButton;
    PDJSillyLabel9: TNxButton;
    PDJSillyLabel17: TNxButton;
    Panel7: TNxHeaderPanel;
    Label36: TLabel;
    AddOEBR: TNxEdit;
    PDJSillyLabel16: TNxButton;
    Panel6: TNxHeaderPanel;
    Label14: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label49: TLabel;
    Bevel10: TBevel;
    Gauge3: TGauge;
    RBArea: TNxEdit;
    PDJSillyLabel11: TNxButton;
    RBRoute: TNxEdit;
    PDJSillyLabel12: TNxButton;
    PrintDate: TNxDatePicker;
    Prepared: TNxEdit;
    ListType: TRadioGroup;
    FromAccount: TNxEdit;
    ToAccount: TNxEdit;
    CollectorName: TNxEdit;
    OfficeName: TNxEdit;
    PreparedByPosition: TNxEdit;
    CheckBy: TNxEdit;
    CheckByPosition: TNxEdit;
    NotedBy: TNxEdit;
    NotedByPosition: TNxEdit;
    Encoder: TNxEdit;
    Address: TNxEdit;
    Panel5: TNxHeaderPanel;
    DistinctRC: TMyQuery;
    DistinctRCACCOUNTNUMBER: TStringField;
    PDJSillyLabel1: TNxButton;
    Label53: TLabel;
    Label52: TLabel;
    Label51: TLabel;
    RCDateIssueTxt: TStaticText;
    RCBatchTxt: TStaticText;
    RCCollectorCodeTxt: TStaticText;
    Label10: TStaticText;
    CheckCollected: TMyQuery;
    Tax: TMyQuery;
    TaxDocument: TStringField;
    TaxCode: TFloatField;
    TaxArea: TStringField;
    TaxBook: TStringField;
    TaxAccountNumber: TStringField;
    TaxDate: TDateField;
    TaxName: TStringField;
    TaxBillMonth: TStringField;
    TaxRateCode: TStringField;
    TaxReading: TFloatField;
    TaxKilowattHour: TFloatField;
    TaxAmount: TFloatField;
    TaxUCNPCSD: TFloatField;
    TaxUCNPCSCC: TFloatField;
    TaxUCDUSCC: TFloatField;
    TaxUCME: TFloatField;
    TaxUCETR: TFloatField;
    TaxUCEC: TFloatField;
    TaxUCCSR: TFloatField;
    TaxTransformerRental: TFloatField;
    TaxVATDist: TFloatField;
    TaxVATGenCO: TFloatField;
    TaxVATTransCO: TFloatField;
    TaxVATSystemLossGenCO: TFloatField;
    TaxVATSystemLossTransCO: TFloatField;
    TaxVAT: TFloatField;
    DeleteRCPF: TMyQuery;
    CheckTellerCollection: TMyQuery;
    RouteControlBatchcollectorcode: TStringField;
    RouteControlBatchbatch: TStringField;
    RouteControlBatchdateissued: TDateField;
    RouteControlBatchbills: TLargeintField;
    RouteControlBatchamount: TFloatField;
    RadioGroup1: TRadioGroup;
    DeleteRC: TMyQuery;
    StringField1: TStringField;
    DsFancyButton1: TNxButton;
    DsFancyButton2: TNxButton;
    Panel2: TNxHeaderPanel;
    AP: TMyQuery;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    DsFancyButton3: TNxButton;
    DsFancyButton4: TNxButton;
    DsFancyButton5: TNxButton;
    DsFancyButton6: TNxButton;
    StaticText1: TNxEdit;
    StaticText2: TNxEdit;
    StaticText3: TNxEdit;
    StaticText6: TNxEdit;
    StaticText7: TNxEdit;
    StaticText8: TNxEdit;
    Memo1: TNxMemo;
    PrinterSetupDialog1: TPrinterSetupDialog;
    SelectUnpaidBillsBtn: TNxButton;
    SelectUnpaidBillsClose: TNxButton;
    IssuanceType: TRadioGroup;
    IssType: TStaticText;
    Label1: TLabel;
    NxButton1: TNxButton;
    NxButton2: TNxButton;
    FollowupCollectionPanel: TNxHeaderPanel;
    FCBillMonth: TNxButtonEdit;
    NxLabel1: TNxLabel;
    StaticText4: TStaticText;
    NxLabel2: TNxLabel;
    PrintOEBR: TNxButton;
    NxButton4: TNxButton;
    Gauge1: TGauge;
    FCBill: TMyQuery;
    Arrs: TMyQuery;
    ArrsEntry: TIntegerField;
    ArrsDocument: TStringField;
    ArrsCode: TFloatField;
    ArrsArea: TStringField;
    ArrsBook: TStringField;
    ArrsAccountNumber: TStringField;
    ArrsDate: TDateField;
    ArrsName: TStringField;
    ArrsBillMonth: TStringField;
    ArrsDeleteRemarks: TStringField;
    ArrsRateCode: TStringField;
    ArrsReading: TFloatField;
    ArrsKilowattHour: TFloatField;
    ArrsAmount: TFloatField;
    ArrsUCNPCSD: TFloatField;
    ArrsUCNPCSCC: TFloatField;
    ArrsUCDUSCC: TFloatField;
    ArrsUCME: TFloatField;
    ArrsUCETR: TFloatField;
    ArrsUCEC: TFloatField;
    ArrsUCCSR: TFloatField;
    ArrsTransformerRental: TFloatField;
    ArrsVATDiscAmt: TFloatField;
    ArrsVATDistDiscAmt: TFloatField;
    ArrsVATGenCoDiscAmt: TFloatField;
    ArrsVATTransCoDiscAmt: TFloatField;
    ArrsVATSystemLossDiscAmt: TFloatField;
    ArrsVATDist: TFloatField;
    ArrsVATGenCO: TFloatField;
    ArrsVATTransCO: TFloatField;
    ArrsVATSystemLossGenCO: TFloatField;
    ArrsVATSystemLossTransCO: TFloatField;
    ArrsVAT: TFloatField;
    ArrsSystemLossCharge: TFloatField;
    FCBillCode: TFloatField;
    FCBillArea: TStringField;
    FCBillBook: TStringField;
    FCBillSequence: TStringField;
    FCBillAccountNumber: TStringField;
    FCBillName: TStringField;
    FCBillAddress: TStringField;
    FCBillRateCode: TStringField;
    FCBillSerial: TStringField;
    FCBillMultiplier: TFloatField;
    FCBillPreviousReadingDate: TDateField;
    FCBillPresentReadingDate: TDateField;
    FCBillPreviousReadingKWH: TFloatField;
    FCBillPresentReadingKWH: TFloatField;
    FCBillDiff: TFloatField;
    FCBillDemand: TFloatField;
    FCBillFlatRateWattage: TFloatField;
    FCBillFeedBackCode: TStringField;
    FCBillCM: TStringField;
    FCBillCMMultiplier: TFloatField;
    FCBillCMPreviousReadingKWH: TFloatField;
    FCBillCMPresentReadingKWH: TFloatField;
    FCBillCMKilowattHour: TFloatField;
    FCBillCMDemand: TFloatField;
    FCBillKilowattHour: TFloatField;
    FCBillKilowattUsed: TFloatField;
    FCBillGenSysCharge: TFloatField;
    FCBillHostCommCharge: TFloatField;
    FCBillForexCharge: TFloatField;
    FCBillTCDemandCharge: TFloatField;
    FCBillTCTransSystemCharge: TFloatField;
    FCBillSystemLossCharge: TFloatField;
    FCBillDCDemandCharge: TFloatField;
    FCBillDCDistributionCharge: TFloatField;
    FCBillSCRetCustCharge: TFloatField;
    FCBillSCSupplySysCharge: TFloatField;
    FCBillMCRetailCustCharge: TFloatField;
    FCBillMCSystemCharge: TFloatField;
    FCBillUCNPCStrandedDebts: TFloatField;
    FCBillUCNPCStrandedContCost: TFloatField;
    FCBillUCDUStrandedContCost: TFloatField;
    FCBillUCME: TFloatField;
    FCBillUCEqTaxesAndRoyalties: TFloatField;
    FCBillUCEC: TFloatField;
    FCBillUCCrossSubRemoval: TFloatField;
    FCBillICCrossSubsidyCharge: TFloatField;
    FCBillPowerActRateRed: TFloatField;
    FCBillLifelineDiscSubs: TFloatField;
    FCBillLoanCondo: TFloatField;
    FCBillTransformerRental: TFloatField;
    FCBillOCCode1: TStringField;
    FCBillOCAmount1: TFloatField;
    FCBillOCMo1: TFloatField;
    FCBillOCTotal1: TFloatField;
    FCBillOCCode2: TStringField;
    FCBillOCAmount2: TFloatField;
    FCBillOCMo2: TFloatField;
    FCBillOCTotal2: TFloatField;
    FCBillOCCode3: TStringField;
    FCBillOCAmount3: TFloatField;
    FCBillOCMo3: TFloatField;
    FCBillOCTotal3: TFloatField;
    FCBillTotalBill: TFloatField;
    FCBillBillNumber: TStringField;
    FCBillOEBRNumber: TStringField;
    FCBillBillMonth: TStringField;
    FCBillBillDate: TDateField;
    FCBillstatuscode: TStringField;
    FCBillLCCustMo: TFloatField;
    FCBillPrevYearAdjPowerCost: TFloatField;
    FCBillSysLossUnderRecov: TFloatField;
    FCBillVATDisc: TFloatField;
    FCBillVATDiscAmt: TFloatField;
    FCBillVATDistDiscAmt: TFloatField;
    FCBillVATGenCoDiscAmt: TFloatField;
    FCBillVATTransCoDiscAmt: TFloatField;
    FCBillVATSystemLossDiscAmt: TFloatField;
    FCBillVATDist: TFloatField;
    FCBillVATGenCO: TFloatField;
    FCBillVATTransCO: TFloatField;
    FCBillVATSystemLossGenCO: TFloatField;
    FCBillVATSystemLossTransCO: TFloatField;
    FCBillVAT: TFloatField;
    FCBillAdjAmountBalance: TFloatField;
    FCBillAdjAmountApplied: TFloatField;
    FCBillReadTime: TStringField;
    MRate: TMyQuery;
    MRateMBillMonth: TStringField;
    MRateRateCode: TStringField;
    MRateRemarks: TStringField;
    MRateGenSysRate: TFloatField;
    MRateHostCommRate: TFloatField;
    MRateFOREXRate: TFloatField;
    MRateTCDemandRate: TFloatField;
    MRateTCSystemRate: TFloatField;
    MRateSystemLossRate: TFloatField;
    MRateDCDemandRate: TFloatField;
    MRateDCSystemRate: TFloatField;
    MRateSCRetailCustRate: TFloatField;
    MRateSCSupplySysRate: TFloatField;
    MRateMCRetailCustRate: TFloatField;
    MRateMCSysRate: TFloatField;
    MRateUCNPCStrandedDebtsRate: TFloatField;
    MRateUCNPCStrandedContCostRate: TFloatField;
    MRateUCDUStrandedContCostRate: TFloatField;
    MRateUCMERate: TFloatField;
    MRateUCEqTaxesAndRoyaltiesRate: TFloatField;
    MRateUCECRate: TFloatField;
    MRateUCCrossSubsidyRemovalRate: TFloatField;
    MRateICCrossSubsidyRate: TFloatField;
    MRatePARARate: TFloatField;
    MRateLifelineSubsidyRate: TFloatField;
    MRateLoanCondo: TFloatField;
    MRateGram: TFloatField;
    MRateLCcustmo: TFloatField;
    MRatePrevYearAdjPowerCost: TFloatField;
    MRateSysLossUnderRecov: TFloatField;
    MRateVAT: TFloatField;
    MRateVATGenCo: TFloatField;
    MRateVATTransCo: TFloatField;
    MRateVATSystemLossGenCO: TFloatField;
    MRateVATSystemLossTransCO: TFloatField;
    MRateVATSystemLoss: TFloatField;
    NxLabel3: TNxLabel;
    StartAccount: TNxEdit;
    MS: TMyQuery;
    MSCode: TIntegerField;
    MSArea: TStringField;
    MSBook: TStringField;
    MSSequence: TStringField;
    MSAccountNumber: TStringField;
    MSName: TStringField;
    MSAddress: TStringField;
    MSRateCode: TStringField;
    MSConsCode: TStringField;
    MSConnCode: TStringField;
    MSTransformer: TStringField;
    MSMeterBrand: TStringField;
    MSSerial: TStringField;
    MSMultiplier: TFloatField;
    MSNewConnectionDate: TDateField;
    MSReconnectionDate: TDateField;
    MSDisconnectionDate: TDateField;
    MSPreviousReadingDate: TDateField;
    MSPresentReadingDate: TDateField;
    MSPreviousReadingKWH: TFloatField;
    MSPresentReadingKWH: TFloatField;
    MSDiff: TFloatField;
    MSDemand: TFloatField;
    MSFlatRateWattage: TFloatField;
    MSFeedBackCode: TStringField;
    MSCM: TStringField;
    MSCMMultiplier: TFloatField;
    MSCMPreviousReadingKWH: TFloatField;
    MSCMPresentReadingKWH: TFloatField;
    MSCMKilowattHour: TFloatField;
    MSCMDemand: TFloatField;
    MSKilowattHour: TFloatField;
    MSKilowattUsed: TFloatField;
    MSGenSysCharge: TFloatField;
    MSHostCommCharge: TFloatField;
    MSForexCharge: TFloatField;
    MSTCDemandCharge: TFloatField;
    MSTCTransSystemCharge: TFloatField;
    MSSystemLossCharge: TFloatField;
    MSDCDemandCharge: TFloatField;
    MSDCDistributionCharge: TFloatField;
    MSSCRetCustCharge: TFloatField;
    MSSCSupplySysCharge: TFloatField;
    MSMCRetailCustCharge: TFloatField;
    MSMCSystemCharge: TFloatField;
    MSUCNPCStrandedDebts: TFloatField;
    MSUCNPCStrandedContCost: TFloatField;
    MSUCDUStrandedContCost: TFloatField;
    MSUCME: TFloatField;
    MSUCEqTaxesAndRoyalties: TFloatField;
    MSUCEC: TFloatField;
    MSUCCrossSubRemoval: TFloatField;
    MSICCrossSubsidyCharge: TFloatField;
    MSPowerActRateRed: TFloatField;
    MSLifelineDiscSubs: TFloatField;
    MSLoanCondo: TFloatField;
    MSTransformerRental: TFloatField;
    MSOCCode1: TStringField;
    MSOCAmount1: TFloatField;
    MSOCMo1: TFloatField;
    MSOCTotal1: TFloatField;
    MSOCCode2: TStringField;
    MSOCAmount2: TFloatField;
    MSOCMo2: TFloatField;
    MSOCTotal2: TFloatField;
    MSOCCode3: TStringField;
    MSOCAmount3: TFloatField;
    MSOCMo3: TFloatField;
    MSOCTotal3: TFloatField;
    MSTotalBill: TFloatField;
    MSBillNumber: TStringField;
    MSOEBRNumber: TStringField;
    MSBillMonth: TStringField;
    MSDeleteRemarks: TStringField;
    MSPoleNumber: TStringField;
    MSFeederNumber: TStringField;
    MSXFormerQty: TIntegerField;
    MSXFormerKVA: TStringField;
    MSAge30: TFloatField;
    MSAge60: TFloatField;
    MSAge90: TFloatField;
    MSAge120: TFloatField;
    MSAgeOver120: TFloatField;
    MSAgeTotal: TFloatField;
    MSTotalPayments: TFloatField;
    MSARBalance: TFloatField;
    MSLCCustMo: TFloatField;
    MSPrevYearAdjPowerCost: TFloatField;
    MSSysLossUnderRecov: TFloatField;
    MSVATDisc: TFloatField;
    MSVATDiscAmt: TFloatField;
    MSVATDistDiscAmt: TFloatField;
    MSVATGenCoDiscAmt: TFloatField;
    MSVATTransCoDiscAmt: TFloatField;
    MSVATSystemLossDiscAmt: TFloatField;
    MSVATDist: TFloatField;
    MSVATGenCO: TFloatField;
    MSVATTransCO: TFloatField;
    MSVATSystemLossGenCO: TFloatField;
    MSVATSystemLossTransCO: TFloatField;
    MSVAT: TFloatField;
    FCBillDiffBillPerKwhr: TFloatField;
    FCBillDiffBillPerKW: TFloatField;
    FCBillDiffBillPerCust: TFloatField;
    FCBillMCC: TFloatField;
    DiffCons: TMyQuery;
    DiffConskilowatthour: TFloatField;
    DiffConskilowattused: TFloatField;
    MRateDiffBillPerKwhr: TFloatField;
    MRateDIffBillPerKW: TFloatField;
    MRateDiffBillPerCust: TFloatField;
    MRateMCC: TFloatField;
    MRateDiffBillMonth: TStringField;
    MRateDiffBillApply: TStringField;
    PrintOption: TRadioGroup;
    FCBillPKVROebrNumber: TStringField;
    FCBillPKVRBillMonth: TStringField;
    FCBillPKVRAmount: TFloatField;
    Address48: TNxEdit;
    AcctNum: TNxCheckBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    NxLabel4: TNxLabel;
    Panel8: TPanel;
    TotalBill: TMyQuery;
    TotalBillarrears: TFloatField;
    TotalBillamount: TCurrencyField;
    TotalBillcurrentbill: TCurrencyField;
    OC: TMyQuery;
    OCparticulars: TStringField;
    OCamount: TFloatField;
    RestUnpaid: TMyQuery;
    RestUnpaidamount: TFloatField;
    QuickRep1: TQuickRep;
    TitleBand1: TQRBand;
    QRShape4: TQRShape;
    QRShape6: TQRShape;
    QRShape5: TQRShape;
    QRShape3: TQRShape;
    QRShape2: TQRShape;
    QRShape1: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    ConsumerType: TQRLabel;
    QRLabel11: TQRLabel;
    SOABillMonth: TQRLabel;
    FromDate: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    ToDate: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    CM: TQRLabel;
    CMPresentReading: TQRLabel;
    CMPreviousReading: TQRLabel;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText77: TQRDBText;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRLabel56: TQRLabel;
    QRDBText75: TQRDBText;
    DetailBand1: TQRBand;
    SummaryBand1: TQRBand;
    QRShape13: TQRShape;
    QRLabel70: TQRLabel;
    QRAmountDue: TQRDBText;
    Upload: TMyQuery;
    Serial: TComPort;
    Timer1: TTimer;
    RadioGroup2: TRadioGroup;
    NxButton3: TNxButton;
    UploadRESULT: TStringField;
    Gauge2: TGauge;
    UploadPanel: TNxHeaderPanel;
    NxLabel5: TNxLabel;
    MyOfficeAddress: TNxEdit;
    NxButton5: TNxButton;
    NxButton6: TNxButton;
    GroupBox3: TGroupBox;
    Label2: TLabel;
    Label7: TLabel;
    MinBills: TNxSpinEdit;
    MaxBills: TNxSpinEdit;
    GroupBox4: TGroupBox;
    Label15: TLabel;
    NxEdit1: TNxEdit;
    Label16: TLabel;
    NxEdit2: TNxEdit;
    RadioGroup3: TRadioGroup;
    S: TMyQuery;
    SSign1: TBlobField;
    SSign2: TBlobField;
    DSS: TMyDataSource;
    Panel3: TNxHeaderPanel;
    Bevel1: TBevel;
    Label3: TLabel;
    Label4: TLabel;
    DsFancyButton9: TNxButton;
    DsFancyButton10: TNxButton;
    DateFrom: TNxDatePicker;
    DateTo: TNxDatePicker;
    QRDBText5: TQRDBText;
    QRDBText76: TQRDBText;
    VatDiscountLabel: TQRLabel;
    QRDBText72: TQRDBText;
    QRDBText71: TQRDBText;
    QRDBText70: TQRDBText;
    QRDBText69: TQRDBText;
    QRLabel68: TQRLabel;
    QRLabel67: TQRLabel;
    QRDBText67: TQRDBText;
    QRDBText66: TQRDBText;
    QRLabel66: TQRLabel;
    QRLabel65: TQRLabel;
    QRLabel64: TQRLabel;
    QRLabel63: TQRLabel;
    QRDBText68: TQRDBText;
    QRLabel62: TQRLabel;
    QRLabel61: TQRLabel;
    QRDBText65: TQRDBText;
    QRDBText64: TQRDBText;
    QRDBText63: TQRDBText;
    QRLabel60: TQRLabel;
    QRDBText62: TQRDBText;
    QRDBText61: TQRDBText;
    QRDBText60: TQRDBText;
    QRDBText59: TQRDBText;
    QRDBText58: TQRDBText;
    QRDBText57: TQRDBText;
    QRDBText56: TQRDBText;
    QRDBText55: TQRDBText;
    QRLabel59: TQRLabel;
    QRLabel58: TQRLabel;
    QRLabel57: TQRLabel;
    QRDBText54: TQRDBText;
    QRDBText53: TQRDBText;
    QRDBText52: TQRDBText;
    QRLabel55: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel52: TQRLabel;
    QRDBText50: TQRDBText;
    QRDBText49: TQRDBText;
    QRDBText48: TQRDBText;
    QRDBText47: TQRDBText;
    QRDBText46: TQRDBText;
    QRDBText45: TQRDBText;
    QRDBText44: TQRDBText;
    QRDBText43: TQRDBText;
    QRLabel51: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel48: TQRLabel;
    QRDBText42: TQRDBText;
    QRDBText38: TQRDBText;
    QRDBText35: TQRDBText;
    QRLabel47: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel41: TQRLabel;
    QRDBText40: TQRDBText;
    QRDBText39: TQRDBText;
    QRDBText37: TQRDBText;
    QRDBText36: TQRDBText;
    QRLabel43: TQRLabel;
    QRLabel42: TQRLabel;
    QRDBText34: TQRDBText;
    QRDBText33: TQRDBText;
    QRLabel40: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel38: TQRLabel;
    QRDBText32: TQRDBText;
    QRDBText31: TQRDBText;
    QRDBText30: TQRDBText;
    QRDBText29: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText15: TQRDBText;
    QRLabel37: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel16: TQRLabel;
    QRDBText14: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel36: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel33: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel32: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel30: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel29: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel13: TQRLabel;
    CBook: TNxEdit;
    RadioGroup4: TRadioGroup;
    AccountTo: TNxEdit;
    QRLabel50: TQRLabel;
    DBGrid6: TCRDBGrid1;
    CRDBGrid1: TCRDBGrid1;
    DBGrid4: TCRDBGrid1;
    QRLabel69: TQRLabel;
    QRDBText78: TQRDBText;
    QRLabel71: TQRLabel;
    QRDBText79: TQRDBText;
    QRDBText80: TQRDBText;
    SaveDialog1: TSaveDialog;
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
    PRate2GenSysRate2: TFloatField;
    PRate2TCDemandRate2: TFloatField;
    PRate2TCSystemRate2: TFloatField;
    PRate2SystemLossRate2: TFloatField;
    PRate2LifelineSubsidyRate2: TFloatField;
    PRate2SCDiscSubs2: TFloatField;
    QRLabel72: TQRLabel;
    QRDBText81: TQRDBText;
    QRLabel73: TQRLabel;
    QRDBText82: TQRDBText;
    QRDBText83: TQRDBText;
    QRLabel74: TQRLabel;
    QRDBText84: TQRDBText;
    QRLabel75: TQRLabel;
    QRDBText85: TQRDBText;
    QRDBText86: TQRDBText;
    QRLabel76: TQRLabel;
    QRDBText87: TQRDBText;
    QRLabel77: TQRLabel;
    QRDBText88: TQRDBText;
    QRDBText89: TQRDBText;
    OtherAdjQuery: TMyQuery;
    OtherAdjQueryGenSysCharge2: TFloatField;
    OtherAdjQueryTCDemandCharge2: TFloatField;
    OtherAdjQueryTCTransSystemCharge2: TFloatField;
    OtherAdjQuerySystemLossCharge2: TFloatField;
    OtherAdjQuerySCDisc2: TFloatField;
    OtherAdjQueryLifelineDiscSubs2: TFloatField;
    OtherAdjQueryRPTax: TFloatField;
    OtherAdjQueryaccountnumber: TStringField;
    QRImage1: TQRImage;
    QRDBText73: TQRDBText;
    QRDBText41: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText51: TQRDBText;
    QRDBText74: TQRDBText;
    QRLabel78: TQRLabel;
    QRDBText90: TQRDBText;
    QRLabel79: TQRLabel;
    QRDBText91: TQRDBText;
    QRDBText92: TQRDBText;
    PRate2FitAllrate: TFloatField;
    QRLabel8: TQRLabel;
    QRLabel80: TQRLabel;
    tmpQ: TMyQuery;
    UnpaidTmpQ: TMyQuery;
    UnpaidTmpQamount: TFloatField;
    QRLabel86: TQRLabel;
    SsectionHeadName: TStringField;
    SsectionHeadPosition: TStringField;
    SdivisionChiefName: TStringField;
    SdivisionChiefPosition: TStringField;
    Scontact: TStringField;
    QRDBText93: TQRDBText;
    demandLetter_frx: TfrxReport;
    demandFrx_DS: TfrxDBDataset;
    demandL_Q: TMyQuery;
    signDemandL_Q: TMyQuery;
    signDemand_Frx: TfrxDBDataset;
    conStatus_RG: TRadioGroup;
    QRLabel81: TQRLabel;
    QRDBText94: TQRDBText;
    QRLabel82: TQRLabel;
    QRDBText95: TQRDBText;
    QRDBText96: TQRDBText;
    PRate2PARec: TFloatField;
    taxWithheldQ: TMyQuery;
    taxWithheldQparticulars: TStringField;
    taxWithheldQamount: TFloatField;
    QRLabel88: TQRLabel;
    QRLabel83: TQRLabel;
    QRLabel28: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel35: TQRLabel;
    QRDBText10: TQRDBText;
    QRDBText28: TQRDBText;
    QRLabel85: TQRLabel;
    QRDBText97: TQRDBText;
    QRLabel87: TQRLabel;
    QRDBText98: TQRDBText;
    QRDBText103: TQRDBText;
    PRate2trate: TFloatField;
    PRate2tdmdrate: TFloatField;
    QRLabel93: TQRLabel;
    QRDBText111: TQRDBText;
    QRDBText110: TQRDBText;
    QRLabel92: TQRLabel;
    QRDBText113: TQRDBText;
    QRDBText114: TQRDBText;
    QRDBText112: TQRDBText;
    OUbreakdownQ: TMyQuery;
    OUbreakdownQTotalOU: TStringField;
    OUbreakdownQOU_d: TStringField;
    OUbreakdownQOUrate: TStringField;
    OUbreakdownQOUrate_d: TStringField;
    QRLabel89: TQRLabel;
    QRDBText104: TQRDBText;
    QRLabel90: TQRLabel;
    QRDBText105: TQRDBText;
    QRDBText106: TQRDBText;
    QRLabel84: TQRLabel;
    QRDBText99: TQRDBText;
    QRLabel91: TQRLabel;
    QRDBText100: TQRDBText;
    QRDBText101: TQRDBText;
    QRLabel94: TQRLabel;
    QRDBText102: TQRDBText;
    QRLabel95: TQRLabel;
    QRDBText107: TQRDBText;
    QRDBText108: TQRDBText;
    QRLabel96: TQRLabel;
    QRDBText109: TQRDBText;
    QRLabel97: TQRLabel;
    QRDBText115: TQRDBText;
    QRDBText116: TQRDBText;
    QRLabel98: TQRLabel;
    QRDBText117: TQRDBText;
    QRLabel99: TQRLabel;
    QRDBText118: TQRDBText;
    QRDBText119: TQRDBText;
    QRLabel100: TQRLabel;
    QRDBText120: TQRDBText;
    QRLabel101: TQRLabel;
    QRDBText121: TQRDBText;
    QRDBText122: TQRDBText;
    PRate2OtherGenRateAdj: TFloatField;
    PRate2OtherTransCostAdj: TFloatField;
    PRate2OtherTransDemandCostAdj: TFloatField;
    PRate2OtherSystemLossCostAdj: TFloatField;
    PRate2OtherLifelineRateCostAdj: TFloatField;
    PRate2OtherSeniorCitizenRateAdj: TFloatField;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    notedby_tf: TNxEdit;
    NxLabel6: TNxLabel;
    NxLabel7: TNxLabel;
    position_tf: TNxEdit;
    soasignQ: TMyQuery;
    soasignQidSOASign: TLongWordField;
    soasignQSign1: TBlobField;
    soasignQSign2: TBlobField;
    soasignQsign3: TBlobField;
    soasignQsectionHeadName: TStringField;
    soasignQsectionHeadPosition: TStringField;
    soasignQdivisionChiefName: TStringField;
    soasignQdivisionChiefPosition: TStringField;
    soasignQtelNo: TStringField;
    soasignQemail: TStringField;
    soasignQtelefax_DL: TStringField;
    soasignQemail_DL: TStringField;
    soasignQaddress_DL: TStringField;
    soasignQgm_DL: TStringField;
    soasignQnotice48hrs: TStringField;
    soasignQposition48hrs: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CloseLabelClick(Sender: TObject);
    procedure PDJSillyLabel3Click(Sender: TObject);
    procedure PDJSillyLabel11Click(Sender: TObject);
    procedure PDJSillyLabel12Click(Sender: TObject);
    procedure PDJSillyLabel7Click(Sender: TObject);
    procedure PDJSillyLabel9Click(Sender: TObject);
    procedure SelectUnpaidBillsCloseClick(Sender: TObject);
    procedure PDJSillyLabel6Click(Sender: TObject);
    procedure SelectUnpaidBillsBtnClick(Sender: TObject);
    procedure PDJSillyLabel17Click(Sender: TObject);
    procedure PDJSillyLabel16Click(Sender: TObject);
    procedure AddOEBRKeyPress(Sender: TObject; var Key: Char);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure DBGrid5Enter(Sender: TObject);
    procedure DSRouteControlBatchDataChange(Sender: TObject;
      Field: TField);
    procedure PDJSillyLabel2Click(Sender: TObject);
    procedure PDJSillyLabel24Click(Sender: TObject);
    procedure DsFancyButton1Click(Sender: TObject);
    procedure DsFancyButton2Click(Sender: TObject);
    procedure DsFancyButton6Click(Sender: TObject);
    procedure DsFancyButton3Click(Sender: TObject);
    procedure DsFancyButton4Click(Sender: TObject);
    procedure DsFancyButton5Click(Sender: TObject);
    procedure DsFancyButton9Click(Sender: TObject);
    procedure DsFancyButton10Click(Sender: TObject);
    procedure CBookKeyPress(Sender: TObject; var Key: Char);
    procedure NxButton1Click(Sender: TObject);
    procedure NxButton2Click(Sender: TObject);
    procedure FCBillMonthButtonClick(Sender: TObject);
    procedure PrintOEBRClick(Sender: TObject);
    procedure DBGrid4DblClick(Sender: TObject);
    procedure NxButton4Click(Sender: TObject);
    procedure AcctNumClick(Sender: TObject);
    procedure TotalBillCalcFields(DataSet: TDataSet);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRDBText73Print(sender: TObject; var Value: String);
    procedure NxButton3Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure NxButton5Click(Sender: TObject);
    procedure NxButton6Click(Sender: TObject);
    procedure RadioGroup3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RadioGroup4Click(Sender: TObject);
    procedure QRLabel55Print(sender: TObject; var Value: string);
    procedure PrintOptionClick(Sender: TObject);
  private
    { private declarations }
    function OpenConnection : Boolean;
    procedure UploadProcedure;
  public
    Procedure PrintOEBRForm;
    Procedure Print48Hrs;
    { public declarations }
  end;

var
IssuanceForm: TIssuanceForm;

implementation

uses Data, Collection, ModTools, StatusUpdate, Intro;

Var
Lst                  : Text ;
Device, Driver, Port : array[0..1023] of char;
varhandle            : THandle;
printername          : String;
BillPresentDate               : TDate           ;
BillPreviousDate              : TDate           ;

BillGenSysCharge              : Currency        ;
BillHostCommCharge            : Currency        ;
BillForexCharge               : Currency        ;
BillTCDemandCharge            : Currency        ;
BillTCTransSystemCharge       : Currency        ;
BillSystemLossCharge          : Currency        ;
BillDCDemandCharge            : Currency        ;
BillDCDistributionCharge      : Currency        ;
BillSCRetCustCharge           : Currency        ;
BillSCSupplySysCharge         : Currency        ;
BillMCRetailCustCharge        : Currency        ;
BillMCSystemCharge            : Currency        ;
BillUCNPCStrandedDebts        : Currency        ;
BillUCNPCStrandedContCost     : Currency        ;
BillUCDUStrandedContCost      : Currency        ;
BillUCME                      : Currency        ;
BillUCEqTaxesAndRoyalties     : Currency        ;
BillUCEC                      : Currency        ;
BillUCCrossSubRemoval         : Currency        ;
BillICCrossSubsidyCharge      : Currency        ;
BillPowerActRateRed           : Currency        ;
BillLifelineDiscSubs          : Currency        ;
BillLoanCondo                 : Currency        ;
BillLCCustMo                  : Currency        ;
BillVAT                       : Currency        ;
BillPrevYearAdjPowerCost      : Currency        ;
BillSysLossUnderRecov         : Currency        ;
BillTotalBill                 : Currency        ;
TotalPower                    : Currency        ;
VATGenCO                      : Currency        ;
VATTransCO                    : Currency        ;
VATSystemLoss                 : Currency        ;
BillVATDist                   : Currency        ;
BillVATDistDiscAmt            : Currency        ;
BillVATGenCoDiscAmt           : Currency        ;
BillVATTransCoDiscAmt         : Currency        ;
BillVATSystemLossDiscAmt      : Currency        ;
BillVATDiscAmt                : Currency        ;
BillAdjAmountApplied          : Currency        ;
BillTransformerRental         : Currency        ;
BillOCCode1                   : String[3]       ;
BillOCAmount1                 : Currency        ;
BillOCCode2                   : String[3]       ;
BillOCAmount2                 : Currency        ;
BillOCCode3                   : String[3]       ;
BillOCAmount3                 : Currency        ;
ArrearsCount                  : Integer         ;
ArrearBillMonth               : Array[1..6] of String[12] ;
ArrearOebrNumber              : Array[1..6] of String[15] ;
ArrearAmount                  : Array[1..6] of Currency ;
PKKVAmt                       : Currency ;
LifeLineStr                   : String[20] ;


{$R *.DFM}

procedure TIssuanceForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  S.Close;
  Action := caFree;
  IssuanceForm := Nil;
end;

procedure TIssuanceForm.FormShow(Sender: TObject);
begin
  S.Open;

  soasignQ.Close;
  soasignQ.Open;
end;

procedure TIssuanceForm.CloseLabelClick(Sender: TObject);
begin
  Close;
end;

procedure TIssuanceForm.PDJSillyLabel3Click(Sender: TObject);
begin
  If (IntroForm.UsersBillCode.Text = '') or
     (IntroForm.Users.Active = False) then
    begin
      MessageDlg('You are not authorized to issue bill....', mtError, [mbOK], 0);
      exit;
    end;


  RouteControlBatch.Close;
  RouteControlBatch.ParamByName('datefrom').Text := IntToStr(StrToInt(FormatDateTime('YYYY',now))-1)+ '-'+
                                                    FormatDateTime('MM-DD',now);
  RouteControlBatch.ParamByName('dateto').Text   := FormatDateTime('YYYY-MM-DD',now);
  RouteControlBatch.Open;

  RCBCollectorCode.text        := '';
  RCBBatch.text                := '';
  RCBDateIssue.Date            := Now;

  BillingData.RC.Close;

  SelectCollectorPanel.Left    := 42;
  SelectCollectorPanel.Top     := 69;
  SelectCollectorPanel.Visible := true;
  SelectCollectorPanel.BringToFront;
end;

procedure TIssuanceForm.PDJSillyLabel11Click(Sender: TObject);
begin
  Panel6.Visible := False;
end;

// Returned Bills Summary

procedure TIssuanceForm.PDJSillyLabel12Click(Sender: TObject);
Var
PageCount,LineCount,DetailCount,HeadSW : Word;
PageTotal,GrandTotal : Currency;
LineLimit : Integer;
VATGenCO,VATTransCO,VATSystemLoss,VATDist : Currency;
UCME, UCEC : Currency ;
TellerCollection : String;
AccountSerial : String;

Procedure Heading;
begin
Write(Lst,#18,#27+'P');
writeln(lst,'Page #          : ',PageCount);
Case ListType.ItemIndex of
0..1 : writeln(lst,'DISTRICT/ROUTE  : ',RBArea.Text+' '+RBRoute.Text);
end;
writeln(lst,'DATE            : ',PrintDate.Text);
writeln(lst,'COLLECTOR       : '+CollectorName.Text,
            ' ',RCBCollectorCode.Text,
            ' ',RCBBatch.text,' ',
            ' ',DateToStr(RCBDateIssue.Date));

Case ListType.ItemIndex of
0 : begin
     writeln(lst,'Report Name     : ISSUANCE');
     Writeln(Lst,'Account # Range : ',FromAccount.Text,' - ',ToAccount.Text);
     Case RadioGroup1.ItemIndex of
      0 : Writeln(lst,'Issuance Mode   : Manual');
      1 : Writeln(lst,'Issuance Mode   : Automatic');
      2 : Writeln(lst,'Issuance Mode   : Manual/Automatic');
     end;

    end;

1 : writeln(lst,'Report Name     : RETURNED BILLS LIST');
2 : begin
    If PageCount = 1 then
     begin
     Write(Lst,#27+'E');
     writeln(lst);
     writeln(lst,'                ZAMBOANGA del NORTE ELECTRIC COOPERATIVE., Inc     ');
     writeln(lst,'                           GEN. LUNA St., DIPOLOG CITY             ');
     writeln(lst);
     writeln(lst,'Office Name : '+OfficeName.Text);
     writeln(lst,'Address     : '+Address.Text);
     writeln(lst);
     writeln(lst,'                              STATEMENT OF ACCOUNT                               ',#27+'F');
     writeln(lst);
     end;
    end;
3 : writeln(lst,'Report Name     : DISCONNECTED BILLS');
4 : begin
      With BillingData do
       begin
         Write(Lst,#27+'E');
         writeln(lst);
         writeln(lst,'                ZAMBOANGA del NORTE ELECTRIC COOPERATIVE., Inc     ');
         writeln(lst,'                           GEN. LUNA St., DIPOLOG CITY             ');
         writeln(lst);
         writeln(lst,'                                           DATE : '+PrintDate.text);
         writeln(lst);
         writeln(lst,'Account Number : '+RCAccountNumber.Text);
         writeln(lst,'Consumer Name  : '+RCName.Text);
         writeln(lst);
         writeln(lst,'  SUBJECT :  LAST AND FINAL DEMAND TO PAY WITH 48 HOURS DISCONNECTION NOTICE');
         writeln(lst);
         writeln(lst,'Sir/Madam:');
         writeln(lst,'        We are resprectfully serving you this final demand to pay in full your');
         writeln(lst,'unpaid power bill(s) within  48  hours  upon  receipt  hereof, in  the  herein');
         writeln(lst,'stated amount of:'+FormatDateTime('MMMM YYYY',StrToDate(Copy(RCBillMonth.Text,1,2)+'/01/'+Copy(RCBillMonth.Text,3,2))),
                     '   P ',Format(RCAmount.AsCurrency,'##,###,###.##'));
         writeln(lst);
         writeln(lst,'        Such payment will be made at ZANECO Cashier''s Office at Gen. Luna St.,');
         writeln(lst,'Dipolog City, Zamboanga del Norte.');
         writeln(lst,'        If you  fail  to  pay  said power  bills within  said  period,  we will');
         writeln(lst,'disconnect your electric service at anytime on the third  day from your receipt');
         writeln(lst,'of this demand/notice or at anytime thereafter.');
         writeln(lst,'        Please disregard this notice if you have already paid ');
         writeln(lst,'        Your understanding in the foregoing is highly appreciated.');
         writeln(lst);
         writeln(lst,'                                            Very truly yours,');
         writeln(lst);
         writeln(lst,'                                               ADELMO P. LAPUT');
         writeln(lst,'                                            Acting General Manager');
         writeln(lst,'Received ______________________             By:');
         writeln(lst,'Date Received _________________                                     ');
         writeln(lst,'( ) Refused to receive ________                                     ');
         writeln(lst,'                             SERVER''S RETURN');
         writeln(lst,'        I, the undersigned collector, hereby return  to  the General Manager of');
         writeln(lst,'ZANECO, thru the Consumers'' Account Manager, the service of   the  above stated');
         writeln(lst,'LAST AND FINAL DEMAND TO PAY WITH NOTICE OF DISCONNECTION, with the report that');
         writeln(lst,'on ___________________,_____ the original thereof was duly served to  the above');
         writeln(lst,'named consumer, received  by  him/her/it      (check the appropriate box : (  )');
         writeln(lst,'personally by the consumer: (  ) by the Manager/Chief of Office named:_________');
         writeln(lst,'___________________: (  ) due to the absence of  the consumer, who  is  his/her');
         writeln(lst,'son/daughter/employee of   sufficient age and discretion  with  the instruction');
         writeln(lst,'to give the same to the consumer immediately at the first oppurtune time.      ');
         writeln(lst);
         writeln(lst,'Date : _______________________           ______________________________________');
         writeln(lst,'                                             Name and Signature of Collector   ');
         write(lst,#12);
       end;
    end;
end;

If ListType.ItemIndex in [0,1,2,3] then
begin
Write(lst,#15);
Writeln(lst,'----------------------------------------------------------------------------------------------------');
Writeln(lst,'| No.  ACCT #       Consumer Name                  Bill Num    Serial            BMon        Amount |');
Writeln(lst,'-----------------------------------------------------------------------------------------------------');
end;

end;

begin

  With BillingData do begin
    isonumberQ.Close;
    isonumberQ.ParamByName('reporttype').Text := 'Disconnection Issuance';
    isonumberQ.Open;

    isonumberQSA.Close;
    isonumberQSA.ParamByName('reporttype').Text := 'StatementOfAccount Detail';
    isonumberQSA.Open;
  end;

 if MessageDlg('Set Printer on ..... Proceed?', mtConfirmation, [mbOK,mbCancel], 0) = mrCancel then
 exit;
  {==Temporary remove this statement =============
  ================================================
  if not(PrinterSetupDialog1.Execute) then Exit;

  PrinterName := '';

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
    ===========================================
    }

  AssignFile(Lst,'LPT1');
  Rewrite(Lst);
  If IOResult <> 0 then
    begin
     ShowMessage('Printer not Ready');
     Exit;
    end;


  With BillingData do
    begin

    RC.First;

    LineCount       := 0;
    PageCount       := 1;
    HeadSw          := 0;
    DetailCount     := 0;
    PageTotal       := 0;
    GrandTotal      := 0;
    VATGenCO        := 0;
    VATTransCO      := 0;
    VATSystemLoss   := 0;
    VATDist         := 0;
    UCEC            := 0;
    UCME            := 0;
    AccountSerial   := '';

    Gauge3.Progress := 0;
    Gauge3.MinValue := 0;
    Gauge3.MaxValue := RC.RecordCount;

    RC.First;

    If (ListType.ItemIndex <> 4) then
    begin
        while not RC.Eof do
         begin
             Gauge3.AddProgress(1);
             Application.ProcessMessages;
             TellerCollection := '';

             If HeadSW = 0 then
               begin
                 HeadSW := 1;
                 Heading;
               end;

              If (ListType.ItemIndex = 1) then
                begin
                  CheckCollected.Close;
                  CheckCollected.ParamByName('accountcode').Text   := RCCode.Text;
                  CheckCollected.ParamByName('billmonth').Text     := RCBillMonth.Text;
                  CheckCollected.ParamByName('collectorcode').Text := RCBCollectorCode.Text;
                  CheckCollected.open;

                  If not CheckCollected.IsEmpty then
                    begin
                      RC.Next;
                      CheckCollected.Close;
                      Continue;
                    end;
                  CheckCollected.Close;

                  CheckTellerCollection.Close;
                  CheckTellerCollection.ParamByName('accountcode').Text   := RCCode.Text;
                  CheckTellerCollection.ParamByName('billmonth').Text     := RCBillMonth.Text;
                  CheckTellerCollection.ParamByName('collectorcode').Text := RCBCollectorCode.Text;
                  CheckTellerCollection.open;

                  If not CheckTellerCollection.IsEmpty then
                    TellerCollection := CheckTellerCollection.FieldValues['collectorcode'] else
                    TellerCollection := '';

                  CheckTellerCollection.Close;

                end;

              If ((RCAccountNumber.Text >= FromAccount.Text) and
                  (RCAccountNumber.Text <= ToAccount.Text)) or
                  (FromAccount.Text = 'A') then
              begin

              If (ListType.ItemIndex = 2) then
                begin
                  Tax.Close;
                  Tax.ParamByName('document').Text   := RCDocument.Text;
                  Tax.Open;
                  If not Tax.IsEmpty then
                    begin
                      VATGenCO        := VATGenCO + TaxVATGenCO.AsCurrency;
                      VATTransCO      := VATTransCO + TaxVATTransCO.AsCurrency;
                      VATSystemLoss   := VATSystemLoss + TaxVATSystemLossGenCO.AsCurrency;
                      VATDist         := VATDist + TaxVATDist.AsCurrency;
                      UCEC            := UCEC + TaxUCEC.AsCurrency;
                      UCME            := UCME + TaxUCME.AsCurrency;
                    end;
                  Tax.Close;
                end;

                  Inc(DetailCount);

                  If ListType.ItemIndex in [0,1,2,3] then
                  begin

                  If AccountSerial <> RCAccountNumber.Text then
                    begin
                      MS.ParamByName('code').Text := RCCode.Text;
                      MS.Open;
                      AccountSerial := RCAccountNumber.Text;
                      Writeln(Lst,'| ',DetailCount:3,'. ',
                                  JustStr(RCAccountNumber.Text,' ',10,0),    '-',
                                  JustStr(RCRateCode.Text,' ',1,0),          ' ',
                                  Juststr(RCName.Text,' ',30,0),             ' ',
                                  Juststr(RCDocument.Text,' ',10,0),        '  ',
                                  Juststr(MSSerial.Text,' ',17,0),           ' ',
                                  Juststr(RCBillMonth.Text,' ',04,0),        ' ',
                                  Format(RCAmount.AsCurrency,'#,###,###.##'),
                                  Juststr(TellerCollection,' ',3,0));

                    end else

                  Writeln(Lst,'| ',DetailCount:3,'. ',
                              JustStr(' ',' ',10,0),                     ' ',
                              JustStr(' ',' ',1,0),                      ' ',
                              Juststr(' ',' ',30,0),                     ' ',
                              Juststr(RCDocument.Text,' ',10,0),        '  ',
                              Juststr(' ',' ',17,0),                      ' ',
                              Juststr(RCBillMonth.Text,' ',04,0),        ' ',
                              Format(RCAmount.AsCurrency,'#,###,###.##'),
                              Juststr(TellerCollection,' ',3,0));
                              //Juststr(' ',' ',15,0));

                  MS.Close;

                  end;

                  PageTotal                    := PageTotal + RCAmount.AsCurrency;
                  GrandTotal                   := GrandTotal + RCAmount.AsCurrency;

                 Inc(LineCount);
                 LineLimit := 50;
                 If ListType.ItemIndex = 2 then LineLimit := 45;

                 If LineCount = LineLimit-2 then
                   begin
                    HeadSW    := 0;
                    LineCount := 0;
                    Inc(PageCount);
                    Writeln(lst,'-----------------------------------------------------------------------------------------------------');
                    Writeln(lst,'|                                                                         Page Total ',Format(PageTotal,'##,###,###.##'),'|');
                    Writeln(lst,'-----------------------------------------------------------------------------------------------------');

                    if (ListType.ItemIndex=0) OR (ListType.ItemIndex=3)then begin
                      Writeln(lst,'');
                      Writeln(lst,BillingData.isonumberQisoNumber.Text +
                               '                                          '+
                               BillingData.isonumberQrevision.Text+
                               '                                          '+
                               BillingData.isonumberQdateF.Text);
                    end;

                    if ListType.ItemIndex = 2 then begin
                      Writeln(lst,'');
                      Writeln(lst,BillingData.isonumberQSAisoNumber.Text +
                               '                                          '+
                               BillingData.isonumberQSArevision.Text+
                               '                                          '+
                               BillingData.isonumberQSAdateF.Text);
                    end;

                    PageTotal := 0;
                    Write(Lst,#12);
                   end;
              end;
             RC.Next;
         end;

    end

    else

    begin
    while not RC.Eof do
     begin
      Gauge3.AddProgress(1);
      Application.ProcessMessages;
      Heading; // 48 hours notice of disconnection
      RC.Next;
     end;
    end;

end;

If (ListType.ItemIndex <> 4) then
begin

If LineCount > 0 then
 begin
  Writeln(lst,'-----------------------------------------------------------------------------------------------------');
  Writeln(lst,'|                                                                         Page Total ',Format(PageTotal,'##,###,###.##'),'|');
 end;

Writeln(lst,'-----------------------------------------------------------------------------------------------------');
Writeln(lst,'|                                                                        Grand Total ',Format(GrandTotal,'##,###,###.##'),'|');
Writeln(lst,'-----------------------------------------------------------------------------------------------------');

        //ending loop of printing to statement of account=========================
         if(LineCount >=LineLimit-25) AND (ListType.ItemIndex = 2) then begin
            while LineCount < 50 do begin
              Writeln(lst,'');
              Inc(LineCount);
            end;
            Writeln(lst,BillingData.isonumberQSAisoNumber.Text +
                       '                                          '+
                       BillingData.isonumberQSArevision.Text+
                       '                                          '+
                       BillingData.isonumberQSAdateF.Text);
         end;
         //===============================================================
Writeln(lst);
Writeln(lst,#18);
end;

Case ListType.ItemIndex of
0 : begin
      Writeln(lst,'ISSUED By : __________________    Received by : ________________');
      Writeln(lst,'            ',Encoder.Text);
      Writeln(lst);
      Writeln(Lst,'This is to certify that the bills in this schedule are already cleared from');
      Writeln(Lst,'payments and acknowledgement receipts in  the cashiering section  and  that');
      Writeln(Lst,'these bills remains outstanding.');
      Writeln(Lst,'Received by: __________ __________ __________ __________ __________ __________');
      Writeln(Lst,'              Teller 1   Teller 2   Teller 3   Teller 4   Teller 5    Cashier ');


      while LineCount < LineLimit-13 do begin
        Writeln(lst,'');
        Inc(LineCount);
      end;
      Writeln(lst,BillingData.isonumberQisoNumber.Text +
                 '                                          '+
                 BillingData.isonumberQrevision.Text+
                 '                                          '+
                 BillingData.isonumberQdateF.Text);

    end;
1 : Writeln(lst,'RETURNED By : __________________    Received by : ________________');
2 : begin
    If LineCount > 20 then
      begin
        Write(Lst,#12);
        Writeln(lst);
        Writeln(lst);
        Writeln(lst);
      end;
    Writeln(lst);
    Writeln(lst,'EVAT GenCO                     : ',Format(VATGenCO,'#,###,###.##'));
    Writeln(lst,'EVAT TransCO                   : ',Format(VATTransCO,'#,###,###.##'));
    Writeln(lst,'EVAT System Loss               : ',Format(VATSystemLoss,'#,###,###.##'));
    Writeln(lst,'EVAT Distribution              : ',Format(VATDist,'#,###,###.##'));
    Writeln(lst,'                                 --------------');
    Writeln(lst,'Total EVAT                     : ',Format(VATDist+VATGenCO+VATTransCO+VATSystemLoss,'#,###,###.##'));
    Writeln(lst,'                                 ==============');
    Writeln(lst,'Environmental Charge           : ',Format(UCEC,'#,###,###.##'));
    Writeln(lst,'Missionary Electrification     : ',Format(UCME,'#,###,###.##'));
    Writeln(lst);
    Writeln(lst,'Prepared by:                                      Checked by:');
    Writeln(lst);
    Writeln(lst,JustStr(Prepared.Text,' ',30,0)          ,'                    ',JustStr(CheckBy.Text,' ',30,0));
    Writeln(lst,JustStr(PreparedByPosition.Text,' ',30,0),'                    ',JustStr(CheckByPosition.Text,' ',30,0));
    Writeln(lst);
    Writeln(lst,'                      Noted:');
    Writeln(lst);
    Writeln(lst,'                            ',NotedBy.Text);
    Writeln(lst,'                            ',NotedByPosition.Text);
    Writeln(lst);

   // while LineCount <= 40 - 25 do begin
        Writeln(lst,'');
      //  Inc(LineCount);
      //end;
      Writeln(lst,BillingData.isonumberQSAisoNumber.Text +
                 '                                          '+
                 BillingData.isonumberQSArevision.Text+
                 '                                          '+
                 BillingData.isonumberQSAdateF.Text);

    end;
3 : begin
      Writeln(lst,'ENTERED By: __________________');
      Writeln(lst,'            ',Encoder.Text);

      while LineCount < LineLimit-7 do begin
        Writeln(lst,'');
        Inc(LineCount);
      end;

      Writeln(lst,BillingData.isonumberQisoNumber.Text +
                   '                                          '+
                   BillingData.isonumberQrevision.Text+
                   '                                          '+
                   BillingData.isonumberQdateF.Text);
    end;
end;
If (ListType.ItemIndex <> 4) then Write(Lst,#12);
CloseFile(Lst);
ShowMessage('Done.');
end;

procedure TIssuanceForm.PDJSillyLabel7Click(Sender: TObject);
begin

 If (IntroForm.UsersBillCode.Text = '') or
    (IntroForm.Users.Active = False) then
   begin
     MessageDlg('You are not authorized to issue bills....', mtError, [mbOK], 0);
     exit;
   end;

  PrintDate.Date := Now;
  Panel6.Left    := 97;
  Panel6.Top     := 98;
  Panel6.Visible := True;
  Panel6.BringToFront;
end;

procedure TIssuanceForm.PDJSillyLabel9Click(Sender: TObject);
begin
  Close;
end;

procedure TIssuanceForm.SelectUnpaidBillsCloseClick(Sender: TObject);
begin
  Panel5.Visible := False;
end;

procedure TIssuanceForm.PDJSillyLabel6Click(Sender: TObject);
begin
 If (IntroForm.UsersBillCode.Text = '') or
    (IntroForm.Users.Active = False) then
   begin
     MessageDlg('You are not authorized to issue bills....', mtError, [mbOK], 0);
     exit;
   end;

  If not BillingData.RC.Active then
    begin
      MessageDlg('Select Issuance First', mtError, [mbOK], 0);
      exit
    end;

  Panel5.Left    := 90;
  Panel5.Top     := 130;
  Panel5.Visible := True;
  Panel5.BringToFront;
  RadioGroup3.SetFocus;
end;

procedure TIssuanceForm.SelectUnpaidBillsBtnClick(Sender: TObject);
var
 conStatus : Integer;
 conStatus2 : Integer;
begin
  case conStatus_RG.ItemIndex of
    0:begin
       conStatus := 1;
       conStatus2:= 1;
    end;

    1: begin
       conStatus := 4;
       conStatus2:= 5;
    end;

  end;
  Case RadioGroup3.ItemIndex of
  0 : begin
        GetUnpaid.MacroByName('Regular').Active      := True;
        GetUnpaid.MacroByName('SOA').Active          := False;
        GetUnpaid.ParamByName('CollectorCode').Text  := RCBCollectorCode.Text;
        GetUnpaid.ParamByName('batch').Text          := RCBBatch.Text;
        GetUnpaid.ParamByName('dateissued').AsDate   := RCBDateIssue.Date;
        if RadioGroup4.ItemIndex = 0 then
          begin
           GetUnpaid.ParamByName('CBook').Text          := '';
           GetUnpaid.ParamByName('AccountFrom').Text    := CBook.Text;
           GetUnpaid.ParamByName('AccountTo').Text      := AccountTo.Text;
          end else
          begin
           GetUnpaid.ParamByName('CBook').Text          := CBook.Text;
           GetUnpaid.ParamByName('AccountFrom').Text    := '';
           GetUnpaid.ParamByName('AccountTo').Text      := '';
          end;
        GetUnpaid.ParamByName('MinBills').Text       := MinBills.Text;
        GetUnpaid.ParamByName('MaxBills').Text       := MaxBills.Text;
        GetUnpaid.ParamByName('encodercode').Text    := IntroForm.UsersBillCode.Text;

        GetUnpaid.ParamByName('conStatus').AsInteger := conStatus;
        GetUnpaid.ParamByName('conStatus2').AsInteger:= conStatus2;
      end;
  1: begin
        GetUnpaid.MacroByName('Regular').Active      := False;
        GetUnpaid.MacroByName('SOA').Active          := True;
        GetUnpaid.ParamByName('CollectorCode').Text  := RCBCollectorCode.Text;
        GetUnpaid.ParamByName('batch').Text          := RCBBatch.Text;
        GetUnpaid.ParamByName('dateissued').AsDate   := RCBDateIssue.Date;
        GetUnpaid.ParamByName('encodercode').Text    := IntroForm.UsersBillCode.Text;
        GetUnpaid.ParamByName('Group').Text          := trim(NxEdit1.Text);
        GetUnpaid.ParamByName('BillMonth').Text      := trim(NxEdit2.Text);

        GetUnpaid.ParamByName('conStatus').AsInteger := conStatus;
        GetUnpaid.ParamByName('conStatus2').AsInteger:= conStatus2;
      end;
  end;

  Case IssuanceType.ItemIndex of
  0: GetUnpaid.ParamByName('Itype').Text       := '1';
  1: GetUnpaid.ParamByName('Itype').Text       := '2';
  end;

  GetUnpaid.Execute;

  With BillingData do
  begin
    If RadioGroup3.ItemIndex = 0 then
    begin
      DeleteRCPF.ParamByName('collectorcode').text := RCBCollectorCode.Text;
      DeleteRCPF.ParamByName('batch').text         := RCBBatch.Text;
      DeleteRCPF.ParamByName('dateissued').AsDate  := RCBDateIssue.Date;
      DeleteRCPF.Execute;
    end;

    RC.Close;
    RC.SQL.Clear;
    RC.SQL.Add('select routecontrol.*, master.wratecode, date_format(concat(substring(routecontrol.billmonth from 3 for 2),''/'',substring(routecontrol.billmonth from 1 for 2),''/01''),''%Y%m'') sortmonth');
    RC.SQL.Add('from routecontrol ');
    RC.SQL.Add('left join master on (master.code = routecontrol.code) ');
    RC.SQL.Add('where collectorcode = :CollectorCode and');
    RC.SQL.Add('      batch = :batch and ');
    RC.SQL.Add('      dateissued = :dateissued');
    RC.SQL.Add('order by accountnumber, date');

    RC.ParamByName('CollectorCode').Text := RCBCollectorCode.Text;
    RC.ParamByName('batch').Text         := RCBBatch.Text;
    RC.ParamByName('dateissued').AsDate  := RCBDateIssue.Date;
    RC.Open;
    DBGrid4.ClearSorting;
    Label10.Caption := 'Total Bills : '+IntToStr(RC.RecordCount);

    ShowMessage('Done....');
  end;
end;

procedure TIssuanceForm.PDJSillyLabel17Click(Sender: TObject);
begin
  If (IntroForm.UsersBillCode.Text = '') or
     (IntroForm.Users.Active = False) then
    begin
      MessageDlg('You are not authorized to issue bill....', mtError, [mbOK], 0);
      exit;
    end;

  If not BillingData.RC.Active then
    begin
      MessageDlg('Select Issuance First', mtError, [mbOK], 0);
      exit
    end;

   Panel7.Left    := 514;
   Panel7.Top     := 19;
   Panel7.Visible := True;
   Panel7.BringToFront;
   AddOEBR.SetFocus;
end;

procedure TIssuanceForm.PDJSillyLabel16Click(Sender: TObject);
begin
  Panel7.Visible := False;
end;

procedure TIssuanceForm.AddOEBRKeyPress(Sender: TObject;
  var Key: Char);
begin
If Key = #13 then
 begin
  with BillingData,CollectionForm do
   begin

     Key := #0;
     UnPB.Close;
     UnPB.SQL.Clear;
     If AcctNum.Checked = true then
     UnPB.SQL.Add('select unpaidbills.*, master.wratecode from unpaidbills left join master on (master.code = unpaidbills.code) where unpaidbills.accountnumber = '+quotedstr(addoebr.Text))
     else
     UnPB.SQL.Add('select unpaidbills.*, master.wratecode from unpaidbills left join master on (master.code = unpaidbills.code) where document = '+quotedstr(addoebr.Text));
     UnPB.Open;

     If not UnPB.IsEmpty then
      begin
        While not UnPB.Eof do
         begin
             RC.Append;
             RCCode.Text             := UnPB.FieldbyName('Code').text;
             RCDocument.Text         := UnPB.FieldbyName('Document').text;
             RCArea.Text             := UnPB.FieldbyName('Area').text;
             RCBook.Text             := UnPB.FieldbyName('Book').text;
             RCAccountNumber.Text    := UnPB.FieldbyName('AccountNumber').text;
             RCDate.AsDateTime       := UnPB.FieldbyName('Date').AsDateTime;
             RCName.Text             := UnPB.FieldbyName('Name').text;
             RCRateCode.Text         := UnPB.FieldbyName('RateCode').text;
             RCBillMonth.Text        := UnPB.FieldbyName('BillMonth').text;
             RCReading.Text          := UnPB.FieldbyName('Reading').text;
             RCKilowattHour.Text     := UnPB.FieldbyName('KilowattHour').text;
             RCAmount.Text           := UnPB.FieldbyName('Amount').text;
             RCwratecode.Text        := UnPB.FieldbyName('wratecode').text;
             Case IssuanceType.ItemIndex of
             0 : RCIType.Text        := '1';
             1 : RCIType.Text        := '2';
             end;
             RCencodercode.Text      := IntroForm.UsersBillCode.Text;
             RCCollectorCode.Text    := RCBCollectorCode.Text;
             RCBatch.Text            := RCBBatch.Text;
             RCdateissued.AsDateTime := RCBDateIssue.Date;

             RC.Post;
             RC.RefreshRecord;
             UnPB.Next;
         end;
     end;
     AddOEBR.Text := '';
    end;
 end;
end;

procedure TIssuanceForm.MenuItem2Click(Sender: TObject);
begin
 With BillingData do
 begin
  RC.Close;
  RC.SQL.Clear;
  RC.SQL.Add('select routecontrol.*, master.wrateccode from routecontrol');
  RC.SQL.Add('    left join master on (master.code = routecontrol.code)');
  RC.SQL.Add('    where collectorcode = :CollectorCode and');
  RC.SQL.Add('                            batch = :batch');
  RC.SQL.Add('order by accountnumber, document');
  RC.ParamByName('CollectorCode').Text := RCBCollectorCode.Text;
  RC.ParamByName('batch').Text         := RCBBatch.Text;
  RC.Open;
 end;
end;

procedure TIssuanceForm.MenuItem3Click(Sender: TObject);
begin
 With BillingData do
 begin
  RC.Close;
  RC.SQL.Clear;
  RC.SQL.Add('select routecontrol.*, master.wrateccode from routecontrol ');
  RC.SQL.Add('    left join master on (master.code = routecontrol.code)');
  RC.SQL.Add('    where collectorcode = :CollectorCode and');
  RC.SQL.Add('                            batch = :batch');
  RC.SQL.Add('order by entry');
  RC.ParamByName('CollectorCode').Text := RCBCollectorCode.Text;
  RC.ParamByName('batch').Text         := RCBBatch.Text;
  RC.Open;
 end;
end;

procedure TIssuanceForm.DBGrid5Enter(Sender: TObject);
begin
  With BillingData do
  begin
    AR.Filter := 'DEBIT > 0';
    AR.Filtered := True;
  end;
end;

procedure TIssuanceForm.DSRouteControlBatchDataChange(
  Sender: TObject; Field: TField);
begin
   RCBCollectorCode.Text := RouteControlBatch.FieldValues['collectorcode'];
   RCBBatch.Text         := RouteControlBatch.FieldValues['batch'];
   RCBDateIssue.Date     := RouteControlBatch.FieldValues['dateissued'];
end;

procedure TIssuanceForm.PDJSillyLabel2Click(Sender: TObject);
begin
  With BillingData do
   begin
     If IssuanceType.ItemIndex < 0 then
       begin
         MessageDlg('Please select an issuance type for selected issuance is new', mtInformation, [mbOK], 0);
         IssuanceType.SetFocus;
         exit;
       end;

     RC.Close;
     RC.ParamByName('CollectorCode').Text := RCBCollectorCode.Text;
     RC.ParamByName('batch').Text         := RCBBatch.Text;
     RC.ParamByName('dateissued').AsDate  := RCBDateIssue.Date;
     RC.Open;

     DBGrid4.ClearSorting;
     Label10.Caption := 'Total Bills : '+IntToStr(RC.RecordCount);
   end;

  RCCollectorCodeTxt.Caption := RCBCollectorCode.Text;
  RCBatchTxt.Caption         := RCBBatch.Text;
  RCDateIssueTxt.Caption     := DateToStr(RCBDateIssue.Date);

  Case IssuanceType.ItemIndex of
  0 : IssType.Caption := 'Regular Issuance';
  1 : IssType.Caption := 'Disconnection Issuance';
  end;

  IssuanceReturnBillsSOAPanel.Left                  := 20;
  IssuanceReturnBillsSOAPanel.Top                   := 50;
  IssuanceReturnBillsSOAPanel.Visible               := True;
  RouteControlBatch.Close;
  SelectCollectorPanel.Visible := False;
end;

procedure TIssuanceForm.PDJSillyLabel24Click(Sender: TObject);
begin
  RouteControlBatch.Close;
  SelectCollectorPanel.Visible := False;
end;

procedure TIssuanceForm.DsFancyButton1Click(Sender: TObject);
begin
  If (IntroForm.UsersBillCode.Text = '') or
     (IntroForm.Users.Active = False) then
    begin
      MessageDlg('You are not authorized to transfer issuances ....', mtError, [mbOK], 0);
      exit;
    end;

  try
  RouteControlBatch.Open;
  except
  end;

  If RouteControlBatch.IsEmpty then
    begin
     MessageDlg('There are no issuances to transfer...', mtInformation, [mbOK], 0);
     RouteControlBatch.Close;
     exit;
    end;


  StaticText1.Text        := '';
  StaticText2.Text        := '';
  StaticText3.Text        := '';
  StaticText6.Text        := '';
  StaticText7.Text        := '';
  StaticText8.Text        := '';
  Panel2.Left             := 113;
  Panel2.Top              := 42;
  Panel2.Visible          := true;
  Panel2.BringToFront;

end;

procedure TIssuanceForm.DsFancyButton2Click(Sender: TObject);
begin
  If (IntroForm.UsersBillCode.Text = '') or
     (IntroForm.Users.Active = False) then
    begin
      MessageDlg('You are not authorized to delete issuances....', mtError, [mbOK], 0);
      exit;
    end;

    Panel3.Left       := 229;
    Panel3.Top        := 182;
    Panel3.Visible    := True;
    Panel3.BringToFront;

end;

procedure TIssuanceForm.DsFancyButton6Click(Sender: TObject);
begin
  Panel2.Visible := False;
  RouteControlBatch.Close;
end;

procedure TIssuanceForm.DsFancyButton3Click(Sender: TObject);
begin
 StaticText1.Text := RouteControlBatchcollectorcode.Text;
 StaticText2.Text := RouteControlBatchbatch.Text;
 StaticText3.Text := RouteControlBatchdateissued.Text;
end;

procedure TIssuanceForm.DsFancyButton4Click(Sender: TObject);
begin
 StaticText6.Text := RouteControlBatchcollectorcode.Text;
 StaticText7.Text := RouteControlBatchbatch.Text;
 StaticText8.Text := RouteControlBatchdateissued.Text;
end;

procedure TIssuanceForm.DsFancyButton5Click(Sender: TObject);
begin
  If (StaticText1.Text = '') or
     (StaticText2.Text = '') or
     (StaticText3.Text = '') or
     (StaticText6.Text = '') or
     (StaticText7.Text = '') or
     (StaticText8.Text = '') then
    begin
     MessageDlg('You need to supply both data both FROM and TO', mtError, [mbOK], 0);
     exit;
    end;

  try
  AP.Close;
  AP.SQL.Clear;
  AP.SQL.Add('UPDATE ROUTECONTROL SET COLLECTORCODE = ''ZZZ'',');
  AP.SQL.Add('                        BATCH = ''Z''');
  AP.SQL.Add('WHERE COLLECTORCODE = :COLLECTORCODE AND');
  AP.SQL.Add('      DATEISSUED = :DATEISSUED AND');
  AP.SQL.Add('      BATCH = :BATCH');
  AP.ParamByName('COLLECTORCODE').Text := StaticText1.Text;
  AP.ParamByName('BATCH').Text         := StaticText2.Text;
  AP.ParamByName('DATEISSUED').AsDate  := StrToDate(StaticText3.Text);
  AP.Execute;

  Memo1.Lines.Clear;
  Memo1.Lines.Add('first transfer complete');
  Memo1.Lines.Add('records affected '+inttostr(AP.RowsAffected));
  except
  MessageDlg('Error first step of transfer.... Aborting', mtError, [mbOK], 0);
  exit;
  end;

  try

  AP.Close;
  AP.SQL.Clear;
  AP.SQL.Add('UPDATE ROUTECONTROL SET COLLECTORCODE = :COLLECTORCODETO,');
  AP.SQL.Add('                        BATCH = :BATCHTO,');
  AP.SQL.Add('                        DATEISSUED = :DATEISSUEDTO');

  AP.SQL.Add('WHERE COLLECTORCODE = :COLLECTORCODEFROM AND');
  AP.SQL.Add('      DATEISSUED = :DATEISSUEDFROM AND');
  AP.SQL.Add('      BATCH = :BATCHFROM');

  AP.ParamByName('COLLECTORCODETO').Text   := StaticText1.Text;
  AP.ParamByName('BATCHTO').Text           := StaticText2.Text;
  AP.ParamByName('DATEISSUEDTO').AsDate    := StrToDate(StaticText3.Text);

  AP.ParamByName('COLLECTORCODEFROM').Text := StaticText6.Text;
  AP.ParamByName('BATCHFROM').Text         := StaticText7.Text;
  AP.ParamByName('DATEISSUEDFROM').AsDate  := StrToDate(StaticText8.Text);
  AP.Execute;

  Memo1.Lines.Add('second transfer complete');
  Memo1.Lines.Add('records affected '+inttostr(ap.RowsAffected));
  except
  MessageDlg('Error second step of transfer.... Aborting', mtError, [mbOK], 0);
  exit;
  end;

  try
  AP.Close;
  AP.SQL.Clear;
  AP.SQL.Add('UPDATE ROUTECONTROL SET COLLECTORCODE = :COLLECTORCODETO,');
  AP.SQL.Add('                        BATCH = :BATCHTO,');
  AP.SQL.Add('                        DATEISSUED = :DATEISSUEDTO');

  AP.SQL.Add('WHERE COLLECTORCODE = ''ZZZ'' AND');
  AP.SQL.Add('      BATCH = ''Z'' AND');
  AP.SQL.Add('      DATEISSUED = :DATEISSUEDFROM');

  AP.ParamByName('COLLECTORCODETO').Text   := StaticText6.Text;
  AP.ParamByName('BATCHTO').Text           := StaticText7.Text;
  AP.ParamByName('DATEISSUEDTO').AsDate    := StrToDate(StaticText8.Text);

  AP.ParamByName('DATEISSUEDFROM').AsDate  := StrToDate(StaticText3.Text);
  AP.Execute;

  Memo1.Lines.Add('third transfer complete');
  Memo1.Lines.Add('records affected '+inttostr(ap.RowsAffected));
  except
  MessageDlg('Error third step of transfer.... Aborting', mtError, [mbOK], 0);
  exit;
  end;

end;

procedure TIssuanceForm.DsFancyButton9Click(Sender: TObject);
begin
  if (MessageDlg('You are about to delete the issuances in the dates supplied.....'+#13+#10+'Continue?', mtConfirmation, [mbYes, mbNo], 0) = mrNo) then exit;

  try
  AP.Close;
  AP.SQL.Clear;
  AP.SQL.Add('DELETE FROM ROUTECONTROL');
  AP.SQL.Add('WHERE DATEISSUED BETWEEN :DATEFROM AND :DATETO');
  AP.ParamByName('DATEFROM').AsDate    := DateFrom.Date;
  AP.ParamByName('DATETO').AsDate      := DateTo.Date;
  AP.Execute;
  MessageDlg('Records deleted '+IntToStr(AP.RowsAffected) , mtInformation, [mbOK], 0);
  except
  MessageDlg('Unable to delete', mtError, [mbOK], 0);
  exit;
  end;
end;

procedure TIssuanceForm.DsFancyButton10Click(Sender: TObject);
begin
  Panel3.Visible := False;
end;

procedure TIssuanceForm.CBookKeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 then
    begin
      Key := #0;
      Perform(CM_DIALOGKEY,VK_TAB,0);
    end;
end;

procedure TIssuanceForm.NxButton1Click(Sender: TObject);
begin
 If (IntroForm.UsersBillCode.Text = '') or
    (IntroForm.Users.Active = False) then
   begin
     MessageDlg('You are not authorized to delete issued bills....', mtError, [mbOK], 0);
     exit;
   end;

  If not BillingData.RC.Active then
    begin
      MessageDlg('Select Issuance First', mtError, [mbOK], 0);
      exit
    end;

  if (MessageDlg('Will delete selected batch..'+#13+#10+
                  'Collector Code '+RCBCollectorCode.Text+#13+#10+'Batch '+RCBBatch.Text+#13+#10+'Date '+DateToStr(RCBDateIssue.Date), mtConfirmation, [mbOK, mbCancel], 0) = mrCancel) then exit;

     DeleteRC.Close;
     DeleteRC.ParamByName('CollectorCode').Text := RCBCollectorCode.Text;
     DeleteRC.ParamByName('batch').Text         := RCBBatch.Text;
     DeleteRC.ParamByName('dateissued').AsDate  := RCBDateIssue.Date;
     DeleteRC.execute;

     MessageDlg('Done.....', mtInformation, [mbOK], 0);
     BillingData.RC.Refresh;

end;

procedure TIssuanceForm.NxButton2Click(Sender: TObject);
begin
  FollowupCollectionPanel.Left    := 139;
  FollowupCollectionPanel.Top     := 122;
  FollowupCollectionPanel.Visible := True;
  FollowupCollectionPanel.BringToFront;
end;

procedure TIssuanceForm.FCBillMonthButtonClick(Sender: TObject);
begin
  With BillingData do
    begin

      If RC.Active = False then
        begin
          MessageDlg('You have not selected an issuance..', mtError, [mbOK], 0);
          exit;
        end;

      If RC.IsEmpty then
        begin
          MessageDlg('Issuance selected is empty..', mtError, [mbOK], 0);
          exit;
        end;

      RC.Filter   := 'billmonth = '+QuotedStr(FCBillMonth.Text);
      RC.Filtered := True;

      If RC.IsEmpty then
        begin
          MessageDlg('That bill month is empty..', mtError, [mbOK], 0);
          exit;
        end;

      StaticText4.Caption := InttoStr(RC.RecordCount);

     PrintOEBR.Enabled := True;

    end;
end;


procedure TIssuanceForm.PrintOEBRClick(Sender: TObject);
Var
FirstPresentRead  : String[10] ;
FirstPreviousRead : String[10] ;
ArrearsCount      : Integer    ;
optionRef         : Boolean    ;
tableName         : String     ;
AccountNo         : String     ;

const
  sLineBreak = {$IFDEF MSWINDOWS} AnsiString(#13#10) {$ENDIF};
begin
  if PrintOption.ItemIndex = 2 then
    begin

      AccountNo := '';
      BillingData.RC.First;
      While not BillingData.RC.Eof do
         begin

           if AccountNo <> BillingData.RCAccountNumber.Text then
            begin
              demandL_Q.Close;
              demandL_Q.ParamByName('accountnumber').Text := BillingData.RCAccountNumber.Text;
              demandL_Q.Open;

              signDemandL_Q.Close;
              signDemandL_Q.Open;

              demandLetter_frx.ShowReport;
            end;

           AccountNo := BillingData.RCAccountNumber.Text;
           BillingData.RC.Next;
         end;
      exit;
    end;


  If PrintOption.ItemIndex = 1 then
  begin
    AssignFile(Lst,'LPT1');

    Rewrite(Lst);
    If IOResult <> 0 then
    begin
     ShowMessage('Printer not Ready');
     Exit;
    end;

    write(lst,#27+'P',#18,#15);
    Write(Lst,#27+'3'+#28);
    BillingData.RC.Locate('AccountNumber',StartAccount.Text,[]);
  end;

  If PrintOption.ItemIndex = 0 then QuickRep1.PrinterSetup;

  Gauge1.MinValue := 0;
  Gauge1.MaxValue := BillingData.RC.RecordCount;
  Gauge1.Progress := 0;

  If PrintOption.ItemIndex = 1 then
  begin
      While not BillingData.RC.Eof do
       begin
       Gauge1.AddProgress(1);
       Application.ProcessMessages;

       FillChar(ArrearBillMonth,SizeOf(ArrearBillMonth),#0);
       FillChar(ArrearOebrNumber,SizeOf(ArrearOebrNumber),#0);
       FillChar(ArrearAmount,SizeOf(ArrearAmount),#0);

       ArrearsCount := 0;

       FCBill.Close;
       FCBill.SQL.Clear;
       FCBill.SQL.Add('select * from billhistory where oebrnumber = :oebrnumber');
       FCBill.ParamByName('oebrnumber').Text := BillingData.RCDocument.Text;
       FCBill.Open;

       If FCBill.IsEmpty then
         begin
           FCBill.Close;
           FCBill.SQL.Clear;
           FCBill.SQL.Add('select * from latebillhistory where oebrnumber = :oebrnumber');
           FCBill.ParamByName('oebrnumber').Text := BillingData.RCDocument.Text;
           FCBill.Open;

           If FCBill.IsEmpty then
             begin
              FCBill.Close;
              MessageDlg('Will skip '+BillingData.RCAccountNumber.Text+' No Data Archive found.... Please refer to system administrator', mtError, [mbOK], 0);
              BillingData.RC.Next;
              continue;
             end;

         end;

       If FCBillFeedBackCode.Text = 'A' then
         begin
           FirstPresentRead  := FCBillPresentReadingKWH.Text;
           FirstPreviousRead := 'AVERAGE';
         end
         else
         begin
           FirstPresentRead  := FCBillPresentReadingKWH.Text;
           FirstPreviousRead := FCBillPreviousReadingKWH.Text;
         end;

       BillPresentDate               := FCBillPresentReadingDate.AsDateTime;
       BillPreviousDate              := FCBillPreviousReadingDate.AsDateTime;

       BillGenSysCharge              := FCBillGenSysCharge.AsCurrency;
       BillHostCommCharge            := FCBillHostCommCharge.AsCurrency;
       BillForexCharge               := FCBillForexCharge.AsCurrency;
       BillTCDemandCharge            := FCBillTCDemandCharge.AsCurrency;
       BillTCTransSystemCharge       := FCBillTCTransSystemCharge.AsCurrency;
       BillSystemLossCharge          := FCBillSystemLossCharge.AsCurrency;
       BillDCDemandCharge            := FCBillDCDemandCharge.AsCurrency;
       BillDCDistributionCharge      := FCBillDCDistributionCharge.AsCurrency;
       BillSCRetCustCharge           := FCBillSCRetCustCharge.AsCurrency;
       BillSCSupplySysCharge         := FCBillSCSupplySysCharge.AsCurrency;
       BillMCRetailCustCharge        := FCBillMCRetailCustCharge.AsCurrency;
       BillMCSystemCharge            := FCBillMCSystemCharge.AsCurrency;
       BillUCNPCStrandedDebts        := FCBillUCNPCStrandedDebts.AsCurrency;
       BillUCNPCStrandedContCost     := FCBillUCNPCStrandedContCost.AsCurrency;
       BillUCDUStrandedContCost      := FCBillUCDUStrandedContCost.AsCurrency;
       BillUCME                      := FCBillUCME.AsCurrency;
       BillUCEqTaxesAndRoyalties     := FCBillUCEqTaxesAndRoyalties.AsCurrency;
       BillUCEC                      := FCBillUCEC.AsCurrency;
       BillUCCrossSubRemoval         := FCBillUCCrossSubRemoval.AsCurrency;
       BillICCrossSubsidyCharge      := FCBillICCrossSubsidyCharge.AsCurrency;
       BillPowerActRateRed           := FCBillPowerActRateRed.AsCurrency;
       BillLifelineDiscSubs          := FCBillLifelineDiscSubs.AsCurrency;

       LifeLineStr := '';

       If (FCBillRateCode.Text = 'R') then
        begin
          If FCBillKilowattHour.AsInteger <= 15 then LifeLineStr := '50% Disc';
          If FCBillKilowattHour.AsInteger =  16 then LifeLineStr := '40% Disc';
          If FCBillKilowattHour.AsInteger =  17 then LifeLineStr := '30% Disc';
          If FCBillKilowattHour.AsInteger =  18 then LifeLineStr := '20% Disc';
          If FCBillKilowattHour.AsInteger =  19 then LifeLineStr := '10% Disc';
          If FCBillKilowattHour.AsInteger =  20 then LifeLineStr := ' 5% Disc';
        end;

       BillLoanCondo                 := FCBillLoanCondo.AsCurrency;
       BillLCCustMo                  := FCBillLCCustMo.AsCurrency;
       BillVAT                       := FCBillVAT.AsCurrency;
       BillPrevYearAdjPowerCost      := FCBillPrevYearAdjPowerCost.AsCurrency;
       BillSysLossUnderRecov         := FCBillSysLossUnderRecov.AsCurrency;
       BillTotalBill                 := FCBillTotalBill.AsCurrency;
       VATGenCO                      := FCBillVATGenCO.AsCurrency;
       VATTransCO                    := FCBillVATTransCO.AsCurrency;
       VATSystemLoss                 := FCBillVATSystemLossGenCO.AsCurrency;
       BillVATDist                   := FCBillVATDist.AsCurrency;
       BillVATDistDiscAmt            := FCBillVATDistDiscAmt.AsCurrency;
       BillVATGenCoDiscAmt           := FCBillVATGenCoDiscAmt.AsCurrency;
       BillVATTransCoDiscAmt         := FCBillVATTransCoDiscAmt.AsCurrency;
       BillVATSystemLossDiscAmt      := FCBillVATSystemLossDiscAmt.AsCurrency;
       BillVATDiscAmt                := FCBillVATDiscAmt.AsCurrency;
       BillAdjAmountApplied          := FCBillAdjAmountApplied.AsCurrency;
       BillTransformerRental         := FCBillTransformerRental.AsCurrency;
       BillOCCode1                   := FCBillOCCode1.Text;
       BillOCAmount1                 := FCBillOCAmount1.AsCurrency;
       BillOCCode2                   := FCBillOCCode2.Text;
       BillOCAmount2                 := FCBillOCAmount2.AsCurrency;
       BillOCCode3                   := FCBillOCCode3.Text;
       BillOCAmount3                 := FCBillOCAmount3.AsCurrency;

       Arrs.Close;
       Arrs.ParamByName('Code').Text      := BillingData.RCCode.Text;
       Arrs.ParamByName('billmonth').Text := FCBillBillMonth.Text;
       Arrs.Open;

       If PrintOption.ItemIndex = 0 then
       If Arrs.RecordCount > 6 then
         begin
           MessageDlg('Only 6 Arrears are allowed for each OEBR...cannot accomodate this consumer', mtError, [mbOK], 0);
           arrs.close;
           fcbill.Close;
           BillingData.RC.Next;
           continue;
         end;

       Arrs.First;
       ArrearsCount := 0;

       while not Arrs.Eof do
        begin
          Application.ProcessMessages;
          Inc(ArrearsCount);

          ArrearBillMonth[ArrearsCount]  := FormatDateTime('mmm, yy',
                                                           StrToDate(Copy(ArrsBillMonth.Text,1,2)+'/01/'+
                                                                     Copy(ArrsBillMonth.Text,3,2)));
          ArrearOebrNumber[ArrearsCount] := JustStr(ArrsDocument.Text,' ',15,0);
          ArrearAmount[ArrearsCount]     := ArrsAmount.AsCurrency;
          Arrs.Next;
        end;

       case PrintOption.ItemIndex of
       0 : PrintOEBRForm;
       1 : Print48Hrs;
       end;
       BillingData.RC.Next;

       end;

       FCBill.Close;
       Arrs.Close;

       write(lst,#27+'P',#18,#15);
       Write(Lst,#27+'3'+#30);
       closefile(lst);
   end; { end if printoption = 1 }

   If PrintOption.ItemIndex = 0 then
     begin
      with BillingData do
      While not RC.Eof do
       begin
       Gauge1.AddProgress(1);
       Application.ProcessMessages;

       PBill.Close;
       PBill.SQL.Clear;

       taxWithheldQ.Close;
       taxWithheldQ.MacroByName('tempbill').Active        := False;
       taxWithheldQ.MacroByName('latebillhistory').Active := False;
       taxWithheldQ.MacroByName('BillHistory').Active     := True;

       OC.MacroByName('tempbill').Active        := False;
       OC.MacroByName('latebillhistory').Active := False;
       OC.MacroByName('BillHistory').Active     := True;
       QRAmountDue.DataField                    := 'currentbill';
       tableName                                := 'Billhistory';

       PBill.SQL.Add('select * from billhistory');
       PBill.SQL.Add('where oebrnumber = :oebrnumber');

       PBill.ParamByName('oebrnumber').Text   := BillingData.RCDocument.Text;
       PBill.Open;

       OtherAdjQuery.Close;
       OtherAdjQuery.MacroByName('billhistory').Active      := true;
       OtherAdjQuery.MacroByName('latebillhistory').Active  := false;
       OtherAdjQuery.MacroByName('tempbill').Active         := false;

       OtherAdjQuery.ParamByName('accountnumber').Text := PBillAccountNumber.Text;
       OtherAdjQuery.ParamByName('billmonth').Text     := PBillBillMonth.Text;
       OtherAdjQuery.Open;

       if ((RightStr(PBillBillMonth.Text,2) + LeftStr(PBillBillMonth.Text,2)) >= '1201') then

       PRate.SQL.Clear;
       PRate.SQL.Add('select * from meterrate');
       PRate.SQL.Add('   where mbillmonth = :billmonth and');
       if ((RightStr(PBillBillMonth.Text,2) + LeftStr(PBillBillMonth.Text,2)) >= '1201') then
        begin
          PRate.SQL.Add('         wratecode = :ratecode');
          PRate.ParamByName('ratecode').Text  := PBillWRateCode.Text;
        end
       else
        begin
          PRate.SQL.Add('         ratecode = :ratecode');
          PRate.ParamByName('ratecode').Text  := PBillRateCode.Text;
        end;
       PRate.ParamByName('billmonth').Text := PBillBillMonth.Text;
       PRate.Open;

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

       TotalBill.ParamByName('Code').Text   := PBillCode.Text;
       TotalBill.Open;

       SOABillMonth.Caption :=  'CONSUMPTION FOR BILLING MONTH : '+FormatDateTime('MMMM, YYYY',StrToDate(Copy(PBillBillMonth.Text,1,2)+'/01/'+Copy(PBillBillMonth.Text,3,2)));

       If PBillVATDiscAmt.AsCurrency = 0 then
       VatDiscountLabel.Caption := '' else
       VatDiscountLabel.Caption := 'Less : VAT Discount';

      //======Check if statement is estimated==========
      if PBillFeedBackCode.Text = 'A' then
         QRLabel17.Caption := 'Present(Estimate)'
      else
         QRLabel17.Caption := 'Present';
      //===============================================

      PRate2.Close;
      PRate2.SQL.Clear;
      PRate2.SQL.Add('select m.*, ');
      PRate2.SQL.Add('sum(ifnull(m.GenSysRate,0) + ifnull(m.OtherGenRateAdj,0)) GenSysRate2,');
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
      PRate2.SQL.Add('where m.mbillmonth = :billmonth');
      PRate2.ParamByName('BillMonth').Text  := PBillBillMonth.Text;
      PRate2.ParamByName('area').Text       := PBillArea.Text;
      PRate2.Open;


      if PRateWRSw.Text = '0' then
      begin

        PRate2.Close;
        PRate2.SQL.Clear;
        PRate2.SQL.Add('select m.*, ');
        PRate2.SQL.Add('sum(ifnull(m.GenSysRate,0) + ifnull(m.OtherGenRateAdj,0)) GenSysRate2,');
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
        PRate2.SQL.Add('sum(ifnull(m.GenSysRate,0) + ifnull(m.OtherGenRateAdj,0)) GenSysRate2,');
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
        PRate2.SQL.Add('where m.mbillmonth = :billmonth and');
        PRate2.SQL.Add('       m.Wratecode = :Wratecode');
        PRate2.ParamByName('billmonth').Text := PBillBillMonth.Text;
        PRate2.ParamByName('Wratecode').Text := PBillWRateCode.Text;
        PRate2.ParamByName('area').Text      := PBillArea.Text;
        PRate2.Open;
      end;

            if (PBillreferenceAtmNo.Text='') OR (PBillreferenceAtmNo.Value = null) then
                begin
                   QRLabel80.Caption := 'N/A';
                end
            else
                begin

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

                        if (tmpQ.FieldByName('totalbill').AsFloat = UnpaidTmpQamount.AsFloat)  OR
                           (tmpQ.FieldByName('totalbill').AsFloat = TotalBillamount.AsFloat)  then
                              QRLabel80.Caption := PBillreferenceAtmNo.Text
                        else
                              QRLabel80.Caption := 'N/A';

                      end
                    else
                      begin
                        QRLabel80.Caption := 'N/A';
                      end;

                 end;

             //==================================================
             //==================================================
             QRLabel88.Caption := '';
             QRLabel83.Caption := '';

             taxWithheldQ.ParamByName('code').Text          := PBillCode.Text;
             taxWithheldQ.ParamByName('CurrBillMonth').Text := PBillBillMonth.Text;
             taxWithheldQ.Open;

             taxWithheldQ.First;
             while not taxWithheldQ.Eof do
             begin
                if taxWithheldQamount.AsFloat <>0 then
                begin

                  QRLabel88.Caption := 'Impotant reminders on Withholding Tax upon payment, please attach the BIR Form with the corresponding Tax Withheld:';
                  QRLabel83.Caption :=  QRLabel83.Caption + taxWithheldQparticulars.Text + JustStr(FormatFloat('#,###,###.00',taxWithheldQamount.AsFloat),' ',11,1)+sLineBreak;

                end;

                taxWithheldQ.Next;
             end;
       //==================================================
       //==================================================

       isonumberQ.Close;
       isonumberQ.ParamByName('reporttype').Text :=  'StatementOfAccount';
       isonumberQ.Open;

       OUbreakdownQ.Close;
       OUbreakdownQ.ParamByName('code').Text := PBillCode.Text;
       OUbreakdownQ.ParamByName('billmonth').Text := PBillBillMonth.Text;
       OUbreakdownQ.Open;

       QuickRep1.Print;
       //QuickRep1.Preview;

       OC.Close;
       TotalBill.Close;
       PRate.Close;
       PBill.Close;

       RC.Next;
       end;
     end;
   MessageDlg('Printing done...', mtInformation, [mbOK], 0);

end;

Procedure TIssuanceForm.PrintOEBRForm;
Var I      : Integer;
    BM,RT  : String;
    DBKwhr : Real;
    DBKW   : Real;
    WithDB : Boolean;

Function PRateStr(Data : Currency) : String;
Var SStr : String;
begin
  If Data <> 0 then Str(Data:8:4,SStr) else SStr := '';
  PRateStr := JustStr(SStr,' ',8,0);
end;

begin
MRate.Close;
MRate.ParamByName('BillMonth').Text := FCBillMonth.Text;
MRate.ParamByName('ratecode').Text  := FCBillRateCode.Text;
MRate.Open;

If MRateDiffBillApply.AsInteger = 1 then
   begin
     DiffCons.ParamByName('Code').Text      := FCBillCode.Text;
     DiffCons.ParamByName('BillMonth').Text := MRateDiffBillMonth.Text;
     DiffCons.Open;

     WithDB := False;
     DBKwhr := 0;
     DBKW   := 0;

     If not DiffCons.IsEmpty then
       begin
          DBKwhr := DiffConskilowatthour.AsFloat;
          DBKW   := DiffConskilowattused.AsFloat;
          WithDB := True;
       end;
     DiffCons.Close;
   end;

BM := FormatDateTime('MMMM, YYYY',StrToDate(Copy(FCBillBillMonth.Text,1,2)+'/01/'+Copy(FCBillBillMonth.Text,3,2)));
RT := '';

If FCBillRateCode.Text = 'R' then RT := 'Residential';
If FCBillRateCode.Text = 'C' then RT := 'Commercial';
If FCBillRateCode.Text = 'P' then RT := 'Public Bldg.';
If FCBillRateCode.Text = 'I' then RT := 'Industrial';
If FCBillRateCode.Text = 'S' then RT := 'St. Lights';

writeln(Lst);
writeln(Lst);
writeln(Lst);
writeln(Lst,'            ',BM,'   ',RT);
writeln(Lst,' ',JustStr(FCBillName.Text,' ',30,0),' ',
                'Acct# ',JustStr(FCBillAccountNumber.Text,' ',10,0),' ',
                JustStr(FloattoStr(FCBillKilowattHour.AsFloat),' ',15,1));

writeln(Lst,' ',JustStr(FCBillAddress.Text,' ',30,0));


writeln(Lst,' ',JustStr(ArrearBillMonth[1],' ',7,0),' ',
                JustStr(ArrearBillMonth[2],' ',7,0),' ',
                JustStr(ArrearBillMonth[3],' ',7,0),' ',
                JustStr(ArrearBillMonth[4],' ',7,0),' ',
                JustStr(ArrearBillMonth[5],' ',7,0),' ',
                JustStr(ArrearBillMonth[6],' ',7,0),' ',
                          FormatDateTime('mm/dd/yy',FCBillPreviousReadingDate.AsDateTime),' to ',
                          FormatDateTime('mm/dd/yy',FCBillPresentReadingDate.AsDateTime));

writeln(Lst,'           ',Format(VATGenCO,'###,###.##'),
                          JustStr(BillOCCode1,' ',3,1),'   ',
                          Format(BillOCAmount1,'###,###.##'),'         ',
                          JustStr(FloatToStr(FCBillPresentReadingKWH.AsFloat),' ',20,1));

writeln(Lst,'           ',Format(VATTransCO,'###,###.##'),
                          JustStr(BillOCCode2,' ',3,1),'   ',
                          Format(BillOCAmount2,'###,###.##'),'         ',
                          JustStr(FloatToStr(FCBillPreviousReadingKWH.AsFloat),' ',20,1));

writeln(Lst,'           ',Format(VATSystemLoss,'###,###.##'),
                          JustStr(BillOCCode3,' ',3,1),'   ',
                          Format(BillOCAmount3,'###,###.##'));

writeln(Lst,'           ',Format(BillVATDist,'###,###.##'),'      ',
                          Format(BillTransformerRental,'###,###.##'));

writeln(Lst,'           ',Format(BillUCEC,'###,###.##'),'      ',
                          Format(0.00,'###,###.##'));

writeln(Lst,'           ',Format(BillUCME,'###,###.##'),'      ',
                         Format(0.00,'###,###.##'),'  ',
                         Juststr('AMOUNT  '+Format(BillTotalBill+
                                                  ArrearAmount[1]+
                                                  ArrearAmount[2]+
                                                  ArrearAmount[3]+
                                                  ArrearAmount[4]+
                                                  ArrearAmount[5]+
                                                  ArrearAmount[6],'#,###,###.##'),' ',34,2));

writeln(Lst);
writeln(Lst);
writeln(Lst);
writeln(Lst);
writeln(Lst);
writeln(Lst);
writeln(Lst,'            ',BM,'                          ',JustStr(FCBillAccountNumber.Text,' ',10,0));
writeln(Lst,' ',JustStr(FCBillName.Text,' ',30,0),'            ',
                JustStr(FCBillSerial.Text,' ',25,1));

writeln(Lst,' ',JustStr(FCBillAddress.Text,' ',30,0),'            ',
                JustStr(RT,' ',25,1));

writeln(Lst);
writeln(Lst);
writeln(Lst,' ',FormatDateTime('mm/dd/yy',FCBillPreviousReadingDate.AsDateTime),' to ',
                FormatDateTime('mm/dd/yy',FCBillPresentReadingDate.AsDateTime),'     ',
                JustStr(FloatToStr(FCBillPresentReadingKWH.AsFloat),' ',08,1),'   ',
                JustStr(FloatToStr(FCBillPreviousReadingKWH.AsFloat),' ',08,1),' ',
                JustStr(FloatToStr(FCBillKilowattHour.AsFloat),' ',06,1),'     ',
                JustStr(FloatToStr(FCBillMultiplier.asfloat),' ',4,0));
writeln(Lst);
writeln(Lst,' ':40,PRateStr(MRateGenSysRate.ascurrency),'      ',Format(BillGenSysCharge,'#,###,###.##'));
writeln(Lst,' ':40,PRateStr(MRateHostCommRate.AsCurrency),'      ',Format(BillHostCommCharge,'#,###,###.##'));
writeln(Lst,' ':40,PRateStr(MRateFOREXRate.AsCurrency),'      ',Format(BillForexCharge,'#,###,###.##'));
writeln(Lst,' ':40,PRateStr(MRateVATGenCo.AsCurrency),'      ',Format(VATGenCO,'#,###,###.##'));
writeln(Lst,' ':40,PRateStr(MRateTCDemandRate.AsCurrency),'      ',Format(BillTCDemandCharge,'#,###,###.##'));
writeln(Lst,' ':40,PRateStr(MRateTCSystemRate.AsCurrency),'      ',Format(BillTCTransSystemCharge,'#,###,###.##'));
writeln(Lst,' ':40,PRateStr(MRateVATTransCo.AsCurrency),'      ',Format(VATTransCO,'#,###,###.##'));
writeln(Lst,' ':40,PRateStr(MRateSystemLossRate.AsCurrency),'      ',Format(BillSystemLossCharge,'#,###,###.##'));
writeln(Lst,' ':40,PRateStr(MRateVATSystemLoss.AsCurrency),'      ',Format(VATSystemLoss,'#,###,###.##'));
writeln(Lst,' ':40,PRateStr(MRateDCDemandRate.AsCurrency),'      ',Format(BillDCDemandCharge,'#,###,###.##'));
writeln(Lst,' ':40,PRateStr(MRateDCSystemRate.AsCurrency),'      ',Format(BillDCDistributionCharge,'#,###,###.##'));
writeln(Lst,' ':40,PRateStr(MRateSCRetailCustRate.AsCurrency),'      ',Format(BillSCRetCustCharge,'#,###,###.##'));
writeln(Lst,' ':40,PRateStr(MRateSCSupplySysRate.AsCurrency),'      ',Format(BillSCSupplySysCharge,'#,###,###.##'));
writeln(Lst,' ':40,PRateStr(MRateMCRetailCustRate.AsCurrency),'      ',Format(BillMCRetailCustCharge,'#,###,###.##'));
writeln(Lst,' ':40,PRateStr(MRateMCSysRate.AsCurrency),'      ',Format(BillMCSystemCharge,'#,###,###.##'));
writeln(Lst,' ':40,PRateStr(MRateICCrossSubsidyRate.AsCurrency),'      ',Format(BillICCrossSubsidyCharge,'#,###,###.##'));
writeln(Lst,' ':40,PRateStr(MRatePARARate.AsCurrency),'      ',Format(BillPowerActRateRed,'#,###,###.##'));

If BillLifelineDiscSubs < 0 then
writeln(Lst,' ':40,LifelineStr,'      ',Format(BillLifelineDiscSubs,'#,###,###.##'))else
writeln(Lst,' ':40,PRateStr(MRateLifelineSubsidyRate.AsCurrency),'      ',Format(BillLifelineDiscSubs,'#,###,###.##'));

writeln(Lst,' ':40,PRateStr(MRateLoanCondo.AsCurrency),'      ',Format(BillLoanCondo,'#,###,###.##'));
writeln(Lst,' ':40,PRateStr(MRateLCcustmo.AsCurrency),'      ',Format(BillLCCustMo,'#,###,###.##'));
writeln(Lst,' ':40,'12% VAT ','      ',Format(BillVATDist,'#,###,###.##'));
writeln(Lst,' ':40,PRateStr(MRateUCNPCStrandedDebtsRate.AsCurrency),'      ',Format(BillUCNPCStrandedDebts,'#,###,###.##'));
writeln(Lst,' ':40,PRateStr(MRateUCNPCStrandedContCostRate.AsCurrency),'      ',Format(BillUCNPCStrandedContCost,'#,###,###.##'));
writeln(Lst,' ':40,PRateStr(MRateUCDUStrandedContCostRate.AsCurrency),'      ',Format(BillUCDUStrandedContCost,'#,###,###.##'));
writeln(Lst,' ':40,PRateStr(MRateUCMERate.AsCurrency),'      ',Format(BillUCME,'#,###,###.##'));
writeln(Lst,' ':40,PRateStr(MRateUCEqTaxesAndRoyaltiesRate.AsCurrency),'      ',Format(BillUCEqTaxesAndRoyalties,'#,###,###.##'));
writeln(Lst,' ':40,PRateStr(MRateUCECRate.AsCurrency),'      ',Format(BillUCEC,'#,###,###.##'));
writeln(Lst,' ':40,PRateStr(MRateUCCrossSubsidyRemovalRate.AsCurrency),'      ',Format(BillUCCrossSubRemoval,'#,###,###.##'));
writeln(Lst,' ':40,PRateStr(0.00),'      ',Format(BillTransformerRental,'#,###,###.##'));

If BillVATDiscAmt <> 0 then
begin
 writeln(Lst,'  EVAT Discount                                       ',Format(BillVATDiscAmt,'#,###,###.##'));
 writeln(Lst,'  FINAL EVAT                                          ',Format(BillVATDiscAmt+BillVATDiscAmt,'#,###,###.##'));
end else
begin
 writeln(Lst);
 writeln(Lst);
end;

writeln(Lst,'MEMBERS'' CONTRIBUTION FOR CAPEX       ':40,PRateStr(MRateMCC.AsCurrency),'      ',Format(FCBillMCC.AsCurrency,'#,###,###.##'));

writeln(Lst,' ',JustStr(BillOCCode1,' ',39,0),PRateStr(0.00),'      ',Format(BillOCAmount1,'#,###,###.##'));
writeln(Lst,' ',JustStr(BillOCCode2,' ',39,0),PRateStr(0.00),'      ',Format(BillOCAmount2,'#,###,###.##'));
writeln(Lst,' ',JustStr(BillOCCode3,' ',39,0),PRateStr(0.00),'      ',Format(BillOCAmount3,'#,###,###.##'));

If not withDB then
begin
writeln(Lst);
writeln(Lst);
writeln(Lst);
end
else
begin
If FCBillDiffBillPerKwhr.AsCurrency > 0 then
writeln(Lst,'  TOTAL DIFF BILL JAN''10 CONS ',FloatToStr(DBKwhr):4,' KWHR x ',trim(PRateStr(MRateDiffBillPerKwhr.AsFloat)):6,' / 10 ',Format(FCBillDiffBillPerKwhr.AsCurrency,'#,###,###.##')) else
writeln(Lst);

If FCBillDiffBillPerKW.AsCurrency > 0 then
writeln(Lst,'  TOTAL DIFF BILL JAN''10 CONS ',FloatToStr(DBKw):4,' KW   x ',trim(PRateStr(MRateDIffBillPerKW.AsFloat)):6,' / 10 ',Format(FCBillDiffBillPerKW.AsCurrency,'#,###,###.##')) else
writeln(Lst);

If FCBillDiffBillPerCust.AsCurrency > 0 then
writeln(Lst,'  TOTAL DIFF BILL JAN''10 CONS PER CUSTOMER PER MONTH  ',Format(FCBillDiffBillPerCust.AsCurrency,'#,###,###.##'));
writeln(Lst);
end;

writeln(Lst,' ':54,Format(BillTotalBill-FCBillPKVRAmount.AsCurrency,'#,###,###.##'));
writeln(Lst,' ':13,JustStr(ArrearBillMonth[1],' ',9,0),'  ',JustStr(ArrearOebrNumber[1],' ',15,0),' ':15,Format(ArrearAmount[1],'#,###,###.##'));
writeln(Lst,' ':13,JustStr(ArrearBillMonth[2],' ',9,0),'  ',JustStr(ArrearOebrNumber[2],' ',15,0),' ':15,Format(ArrearAmount[2],'#,###,###.##'));
writeln(Lst,' ':13,JustStr(ArrearBillMonth[3],' ',9,0),'  ',JustStr(ArrearOebrNumber[3],' ',15,0),' ':15,Format(ArrearAmount[3],'#,###,###.##'));
writeln(Lst,' ':13,JustStr(ArrearBillMonth[4],' ',9,0),'  ',JustStr(ArrearOebrNumber[4],' ',15,0),' ':15,Format(ArrearAmount[4],'#,###,###.##'));
writeln(Lst,' ':13,JustStr(ArrearBillMonth[5],' ',9,0),'  ',JustStr(ArrearOebrNumber[5],' ',15,0),' ':15,Format(ArrearAmount[5],'#,###,###.##'));
writeln(Lst,' ':13,JustStr(ArrearBillMonth[6],' ',9,0),'  ',JustStr(ArrearOebrNumber[6],' ',15,0),' ':15,Format(ArrearAmount[6],'#,###,###.##'));

If FCBillAdjAmountApplied.AsCurrency > 0 then
writeln(Lst,'  PANTAWID KURYENTE KATAS NG VAT ni PGMA              ',Format(FCBillAdjAmountApplied.AsCurrency,'#,###,###.##')) else
If FCBillPKVRAmount.AsCurrency > 0 then
writeln(Lst,'  PANTAWID RECOVERY ',JustStr(FCBillPKVROebrNumber.Text,' ',15,0),' ',
                                   JustStr(FCBillPKVRBillMonth.Text,' ',4,0),'              ',
                                   Format(FCBillPKVRAmount.AsCurrency,'#,###,###.##')) else
writeln(Lst);
writeln(Lst,' ':54,Format(BillTotalBill+
                          ArrearAmount[1]+
                          ArrearAmount[2]+
                          ArrearAmount[3]+
                          ArrearAmount[4]+
                          ArrearAmount[5]+
                          ArrearAmount[6]-
                          FCBillAdjAmountApplied.AsCurrency,'#,###,###.##'));
write(lst,#12);
MRate.Close;
end;

procedure TIssuanceForm.PrintOptionClick(Sender: TObject);
begin
  if PrintOption.ItemIndex = 2 then
      PrintOEBR.Enabled := true
  else
      PrintOEBR.Enabled := false;
end;

Procedure TIssuanceForm.Print48Hrs;
Var I      : Integer;
    BM     : String ;
begin

BM := FormatDateTime('MMMM, YYYY',StrToDate(Copy(FCBillBillMonth.Text,1,2)+'/01/'+Copy(FCBillBillMonth.Text,3,2)));

Write(Lst,#18,#27+'P');
Writeln(Lst);
Writeln(Lst);
Writeln(Lst,#27+'E',JustStr('ZAMBOANGA DEL NORTE ELECTRIC COOP., Inc.',' ',80,2));
Writeln(Lst,JustStr('(ZANECO)',' ',80,2));
Writeln(Lst,JustStr(Address48.text,' ',80,2));
Writeln(Lst);
Writeln(Lst);
Writeln(Lst,'                                                 PETSA ',DateToStr(Now));
Writeln(Lst);
Writeln(Lst);
writeln(Lst,'    ',JustStr(FCBillAccountNumber.Text,' ',30,0));
writeln(Lst,'    ',JustStr(FCBillName.Text,' ',30,0));
writeln(Lst,'    ',JustStr(FCBillAddress.Text,' ',30,0));
Writeln(Lst);
Writeln(Lst);
Writeln(Lst,JustStr('KATAPUSANG PANINGIL UG 48 KA ORAS NGA LUGWAY NGA',' ',80,2));
Writeln(Lst,JustStr('PAHIBALO SA PAGPUTOL SA SERBISYO SA ELEKTRISIDAD',' ',80,2),#27'F');
Writeln(Lst);
Writeln(Lst);
writeln(Lst,'    Sir / Madame,');
Writeln(Lst,#27+'M');
writeln(Lst,'         Kami nagatahud paghatag kanimo  niining ulahi  ug  katapusang  hangyo sa  pagbayad');
writeln(Lst,'    kinatibuk-ang bayronon sa kuryente sulod sa duha (2) ka adlaw kon 48 hrs gikan sa imong');
writeln(Lst,'    pagdawat niining pahibalo (walay labot ang adlaw nga walay trabaho) ug kantindad nga:  ');
writeln(Lst,'    ',AmountWord(BillTotalBill+
                             ArrearAmount[1]+
                             ArrearAmount[2]+
                             ArrearAmount[3]+
                             ArrearAmount[4]+
                             ArrearAmount[5]+
                             ArrearAmount[6]),' (Php ',
                  Format(BillTotalBill+
                         ArrearAmount[1]+
                         ArrearAmount[2]+
                         ArrearAmount[3]+
                         ArrearAmount[4]+
                         ArrearAmount[5]+
                         ArrearAmount[6],'#,###,###.##'),')');
writeln(Lst);
writeln(Lst,' ':13,JustStr(BM,' ',13,0),  ' ',JustStr(FCBillOEBRNumber.Text,' ',15,0),' ':12,Format(BillTotalBill,'#,###,###.##'));
writeln(Lst,' ':13,JustStr(ArrearBillMonth[1],' ',13,0),' ',JustStr(ArrearOebrNumber[1],' ',15,0),' ':12,Format(ArrearAmount[1],'#,###,###.##'));
writeln(Lst,' ':13,JustStr(ArrearBillMonth[2],' ',13,0),' ',JustStr(ArrearOebrNumber[2],' ',15,0),' ':12,Format(ArrearAmount[2],'#,###,###.##'));
writeln(Lst,' ':13,JustStr(ArrearBillMonth[3],' ',13,0),' ',JustStr(ArrearOebrNumber[3],' ',15,0),' ':12,Format(ArrearAmount[3],'#,###,###.##'));
writeln(Lst,' ':13,JustStr(ArrearBillMonth[4],' ',13,0),' ',JustStr(ArrearOebrNumber[4],' ',15,0),' ':12,Format(ArrearAmount[4],'#,###,###.##'));
writeln(Lst,' ':13,JustStr(ArrearBillMonth[5],' ',13,0),' ',JustStr(ArrearOebrNumber[5],' ',15,0),' ':12,Format(ArrearAmount[5],'#,###,###.##'));
writeln(Lst,' ':13,JustStr(ArrearBillMonth[6],' ',13,0),' ',JustStr(ArrearOebrNumber[6],' ',15,0),' ':12,Format(ArrearAmount[6],'#,###,###.##'));
Writeln(Lst);
writeln(Lst,'         Ang  pagbayad  pagahimoon  sa   buhatan   sa   ZANECO "CASHIERS OFFICE" sa -------');
writeln(Lst,'    ',address48.text);
Writeln(Lst);
writeln(Lst,'         Kung ugaling mapakyas ka pagbayad ning maong balayronon sa kuryente sa gilatid nga');
writeln(Lst,'    lugway  kami moputol sa serbisyo  sa elektrisidad bisan unsang orasa sa pag-abot sa ika');
writeln(Lst,'    tulo ka adlaw gikan sa imong pagdawat niining pahibalo.');
Writeln(Lst);
writeln(Lst,'         Palihog ayaw tagda kini nga pahibalo kung ugaling ang pagbayad nahuman na.');
Writeln(Lst);
writeln(Lst,'         Among gidayeg ang imong pagsabot niining bahina.');
Writeln(Lst);
writeln(Lst,'                                                            Kanimo matinahuron,');
Writeln(Lst);
writeln(Lst,'                                                      (SGD) ADELMO P. LAPUT');
writeln(Lst,'                                                            General Manager / CEO');
Writeln(Lst);
writeln(Lst,'    Gidawat:                   ________________');
writeln(Lst,'    Petsa sa pagdawat:         ________________');
writeln(Lst,'    ( ) Nagdumili sa pagdawat: ________________');
Writeln(Lst);
Writeln(Lst);
Writeln(Lst,JustStr('SERVER''S RETURN',' ',96,2));
Writeln(Lst);
Writeln(Lst);
writeln(Lst,'         I, the undersigned Collector, hereby return to the General Manager of ZANECO, thru');
writeln(Lst,'    the Consumers Account Manager, the service of the above-stated LAST AND FINAL DEMAND TO');
writeln(Lst,'    PAY WITH NOTICE OF DISCONNECTION with the report that on ______________________________');
writeln(Lst,'    the original thereof was duly served to the aboved-named consumer,  received by him/her');
writeln(Lst,'    check the appropriate box ( ) personally by the consumer; ( ) by the Manager / Chief of');
writeln(Lst,'    Officed named _____________________________; ( ) due to the absence of consumer, who is');
writeln(Lst,'    his/her son/daughter/employee of sufficient age  and  discretion  with the  instruction');
writeln(Lst,'    to give the same to the consumer immediately at the first opportune time.');
Writeln(Lst);
writeln(Lst,'                                                            _______________________________');
writeln(Lst,'    Date : __________________________                       Name and Signature of Collector');

(*
writeln(Lst,' ':54,Format(BillTotalBill,'#,###,###.##'));
writeln(Lst);
writeln(Lst,' ':13,JustStr(ArrearBillMonth[1],' ',9,0),'  ',JustStr(ArrearOebrNumber[1],' ',15,0),' ':15,Format(ArrearAmount[1],'#,###,###.##'));
writeln(Lst,' ':13,JustStr(ArrearBillMonth[2],' ',9,0),'  ',JustStr(ArrearOebrNumber[2],' ',15,0),' ':15,Format(ArrearAmount[2],'#,###,###.##'));
writeln(Lst,' ':13,JustStr(ArrearBillMonth[3],' ',9,0),'  ',JustStr(ArrearOebrNumber[3],' ',15,0),' ':15,Format(ArrearAmount[3],'#,###,###.##'));
writeln(Lst,' ':13,JustStr(ArrearBillMonth[4],' ',9,0),'  ',JustStr(ArrearOebrNumber[4],' ',15,0),' ':15,Format(ArrearAmount[4],'#,###,###.##'));
writeln(Lst,' ':13,JustStr(ArrearBillMonth[5],' ',9,0),'  ',JustStr(ArrearOebrNumber[5],' ',15,0),' ':15,Format(ArrearAmount[5],'#,###,###.##'));
writeln(Lst,' ':13,JustStr(ArrearBillMonth[6],' ',9,0),'  ',JustStr(ArrearOebrNumber[6],' ',15,0),' ':15,Format(ArrearAmount[6],'#,###,###.##'));
writeln(Lst,' ':54,Format(BillTotalBill+
                          ArrearAmount[1]+
                          ArrearAmount[2]+
                          ArrearAmount[3]+
                          ArrearAmount[4]+
                          ArrearAmount[5]+
                          ArrearAmount[6],'#,###,###.##'));
*)
Writeln(Lst,#27+'P');
write(lst,#12);
end;


procedure TIssuanceForm.DBGrid4DblClick(Sender: TObject);
begin
  StartAccount.Text := BillingData.RCAccountNumber.Text;
end;

procedure TIssuanceForm.NxButton4Click(Sender: TObject);
begin
  BillingData.RC.Filter   := '';
  BillingData.RC.Filtered := False;

  FollowupCollectionPanel.Visible := False;
end;

procedure TIssuanceForm.AcctNumClick(Sender: TObject);
begin
  AddOEBR.SetFocus;
end;

procedure TIssuanceForm.TotalBillCalcFields(DataSet: TDataSet);
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
      TotalBillamount.AsCurrency       := RestUnpaidamount.AsCurrency + BillingData.PBillTotalBill.AsCurrency;
    end;
end;

procedure TIssuanceForm.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  // QRDBText41.Enabled := OCparticulars.Text = 'SENIOR CITIZEN SUBSIDY';
   //QRLabel12.Enabled  := QRDBText41.Enabled;
   //QRDBText51.Enabled := QRDBText41.Enabled;
end;

procedure TIssuanceForm.QRDBText73Print(sender: TObject;
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

procedure TIssuanceForm.QRLabel55Print(sender: TObject; var Value: string);
begin
  if BillingData.PBillLifelineDiscSubs.AsCurrency < 0 then
  QRLabel55.Caption := 'Lifeline Discount' else
  QRLabel55.Caption := 'Lifeline Subsidy';
end;

procedure TIssuanceForm.UploadProcedure;
var BillMonthArray : Array[1..3] of String[5];
    Mon,Yr         : Word;
    Check          : Integer;
    MonStr,YrStr   : String[2];
    I              : Integer;

begin

  If BillingData.RC.IsEmpty then
    begin
      MessageDlg('There is no record to upload to gadget...', mtError, [mbOK], 0);
      exit;
    end;

  case RadioGroup2.ItemIndex of
  0 : begin
        try
         IF NOT Serial.Connected THEN Serial.Open;
        except
         begin
           MessageDlg('Check if device is ready to accept data or cable is properly attach..', mtError, [mbOK], 0);
           exit;
         end;
        end;

        with Upload do
         begin
           Close;

           ParamByName('collectorcode').Text := BillingData.RCCollectorCode.Text;
           ParamByName('dateissued').AsDate  := BillingData.RCDateIssued.AsDateTime;
           ParamByName('batch').Text         := BillingData.RCBatch.Text;
           ParamByName('officeaddress').Text := MyOfficeAddress.Text;

           Open;
           First;
         end;

        Gauge2.MinValue := 0;
        Gauge2.MaxValue := Upload.RecordCount;
        Gauge2.Progress := 0;

        Timer1.Enabled := True;

      end;
  1 : begin
        if OpenConnection then
         begin
           if not DirectoryExists('d:\MobileTransfer') then MkDir('d:\MobileTransfer');

           with Upload do
            begin
             Close;

             ParamByName('collectorcode').Text := BillingData.RCCollectorCode.Text;
             ParamByName('dateissued').AsDate  := BillingData.RCDateIssued.AsDateTime;
             ParamByName('batch').Text         := BillingData.RCBatch.Text;
             ParamByName('officeaddress').Text := MyOfficeAddress.Text;

             open;
           end;

           if Upload.RecordCount = 0 then
            begin
              MessageDlg('No records found', mtWarning, [mbOK], 0);
              exit;
            end;

            Upload.First;
            Gauge2.MinValue := 1;
            Gauge2.MaxValue := Upload.RecordCount;
            Gauge2.Progress := 1;

            AssignFile(lst,'d:\MobileTransfer\UPLOAD.TXT');
            Rewrite(lst);

            while not Upload.Eof do
            begin
              Gauge2.AddProgress(1);
              Application.ProcessMessages;
              Writeln(lst,UploadResult.text);
              Upload.Next;
            end;

            CloseFile(Lst);

            CopyFileToDevice('d:\MobileTransfer\UPLOAD.TXT', '\DiskOnChip\48HRSnotice\UPLOAD.TXT', True);

            CeRapiUninit;

           MessageDlg('Done Uploading to WinCe Device', mtWarning, [mbOK], 0);
         end
        else
         begin
          CeRapiUninit;
          MessageDlg('Could not establish connection to WinCe Device', mtWarning, [mbOK], 0);
         end;
      end;
  2 : begin
        if SaveDialog1.Execute then
         begin
           with Upload do
            begin
             Close;

             ParamByName('collectorcode').Text := BillingData.RCCollectorCode.Text;
             ParamByName('dateissued').AsDate  := BillingData.RCDateIssued.AsDateTime;
             ParamByName('batch').Text         := BillingData.RCBatch.Text;
             ParamByName('officeaddress').Text := MyOfficeAddress.Text;
             ParamByName('noted').Text         := notedby_tf.Text;
             ParamByName('position').Text      := position_tf.Text;

             open;
            end;

           if Upload.RecordCount = 0 then
            begin
              MessageDlg('No records found', mtWarning, [mbOK], 0);
              exit;
            end;

            Upload.First;
            Gauge2.MinValue := 1;
            Gauge2.MaxValue := Upload.RecordCount;
            Gauge2.Progress := 1;

            AssignFile(lst,SaveDialog1.FileName);
            Rewrite(lst);

            while not Upload.Eof do
            begin
              Gauge2.AddProgress(1);
              Application.ProcessMessages;
              Writeln(lst,UploadResult.text);
              Upload.Next;
            end;

            CloseFile(Lst);

           MessageDlg('Done Uploading to Android', mtWarning, [mbOK], 0);
         end;
      end;
  end;
end;


procedure TIssuanceForm.NxButton3Click(Sender: TObject);
begin
  notedby_tf.Text := soasignQnotice48hrs.Text;
  position_tf.Text := soasignQposition48hrs.Text;

  UploadPanel.Left    := 267;
  UploadPanel.Top     := 188;
  UploadPanel.Visible := True;
  UploadPanel.BringToFront;
  MyOfficeAddress.SetFocus;
end;

procedure TIssuanceForm.Timer1Timer(Sender: TObject);
begin
  Try
    IF not Upload.eof THEN
    BEGIN
        Application.ProcessMessages;
        Gauge2.AddProgress(1);
        Serial.WriteStr(UploadRESULT.Text + #10);
        Upload.Next;
    END
    ELSE
    BEGIN
         Timer1.Enabled := False;
         MessageDlg('Data transfer successful', mtInformation, [mbOK], 0);
         Upload.Close;
         Serial.Close;
    END;
  EXCEPT
    Timer1.Enabled := False;
    MessageDlg('Data transfer terminated unexpectedly..'+#13+#10+'Check if cable is properly attached..', mtError, [mbOK], 0);
    Upload.Close;
    Serial.Close;
  END;
end;

function TIssuanceForm.OpenConnection : Boolean;
  var n : Longint;
begin
  n := CeRapiInit;
  Result :=  n = 0;
end;

procedure TIssuanceForm.NxButton5Click(Sender: TObject);
begin
  UploadProcedure;
  UploadPanel.Visible := False;

  soasignQ.Edit;
  soasignQnotice48hrs.Text := notedby_tf.Text;
  soasignQposition48hrs.Text := position_tf.Text;
  soasignQ.Post;

  soasignQ.RefreshRecord;

end;

procedure TIssuanceForm.NxButton6Click(Sender: TObject);
begin
   UploadPanel.Visible := False;
end;

procedure TIssuanceForm.RadioGroup3Click(Sender: TObject);
begin
  GroupBox3.Enabled := False;
  GroupBox4.Enabled := False;
  Case RadioGroup3.ItemIndex of
    0 : begin
         GroupBox3.Enabled := True;
         CBook.SetFocus;
        end;
    1 : begin
         GroupBox4.Enabled := True;
         NxEdit1.SetFocus;
        end;
  end;
end;

procedure TIssuanceForm.RadioGroup4Click(Sender: TObject);
begin
  if RadioGroup4.ItemIndex = 0 then
    begin
      CBook.SetFocus;
      AccountTo.Enabled := True;
    end
    else
    begin
      CBook.SetFocus;
      AccountTo.Enabled := False;
    end;
end;

end.


