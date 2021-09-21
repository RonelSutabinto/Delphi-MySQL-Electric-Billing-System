unit AdjustmentRecord;

interface

uses
  Windows, Messages, Classes, SysUtils, Graphics, Controls, StdCtrls, Forms,
  Dialogs, DBCtrls, DB, ExtCtrls, Mask, Buttons, Grids, DBGrids, Menus,
  BarMenus, HTTPApp, DateUtils, MemDS, DBAccess, MyAccess, ComCtrls, Gauges,
  NxCollection, math, NxEdit, QRCtrls, QuickRpt, StrUtils, DBGrid1, frxClass,
  frxDBSet;

type
  TAdjustmentRecordForm = class(TForm)
    Panel1: TPanel;
    Save: TNxButton;
    Cancel: TNxButton;
    CloseLabel: TNxButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    EditBillMonth: TDBEdit;
    EditArea: TDBEdit;
    EditBook: TDBEdit;
    EditSequence: TDBEdit;
    EditName: TDBEdit;
    EditAddress: TDBEdit;
    AdjForm: TNxButton;
    BillForm: TNxButton;
    Label49: TLabel;
    EditAdjDate: TDBEdit;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    DBEdit3: TDBEdit;
    DBEdit41: TDBEdit;
    DBEdit42: TDBEdit;
    DBEdit43: TDBEdit;
    DBEdit44: TDBEdit;
    DBEdit45: TDBEdit;
    Label8: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Panel2: TPanel;
    Label11: TLabel;
    Print: TNxButton;
    PDJSillyLabel2: TNxButton;
    BillNum: TEdit;
    Label57: TLabel;
    PDJSillyLabel1: TNxButton;
    PDJSillyLabel5: TNxButton;
    Label75: TLabel;
    Label76: TLabel;
    EditPresentReadingDate: TDBEdit;
    EditPreviousReadingDate: TDBEdit;
    Label9: TLabel;
    Label56: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label77: TLabel;
    Label78: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    PresDate: TEdit;
    PrevDate: TEdit;
    Label79: TLabel;
    Label80: TLabel;
    Label81: TLabel;
    Label82: TLabel;
    Label83: TLabel;
    DBEdit47: TDBEdit;
    DBEdit48: TDBEdit;
    DBEdit49: TDBEdit;
    DBEdit50: TDBEdit;
    DBEdit51: TDBEdit;
    DBEdit52: TDBEdit;
    DBEdit53: TDBEdit;
    DBEdit54: TDBEdit;
    DBEdit55: TDBEdit;
    DBEdit56: TDBEdit;
    Label84: TLabel;
    DBEdit57: TDBEdit;
    DBEdit58: TDBEdit;
    PDJSillyLabel8: TNxButton;
    Search: TLabeledEdit;
    RadioGroup1: TRadioGroup;
    Button1: TButton;
    Memo1: TMemo;
    UpdateARLedger: TMyQuery;
    UpdateUnpaidBills: TMyQuery;
    UpdateMaster: TMyQuery;
    CancelARLedger: TMyQuery;
    CancelUnpaidBills: TMyQuery;
    CancelMaster: TMyQuery;
    PDJSillyLabel9: TNxButton;
    PDJSillyLabel10: TNxButton;
    UpdateAdjustment: TMyQuery;
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
    EditAccountNumber: TEdit;
    CancelBillHistory: TMyQuery;
    UpdateBillhistory: TMyQuery;
    Panel3: TNxHeaderPanel;
    Label12: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Gauge1: TGauge;
    PrintSummary: TNxButton;
    PDJSillyLabel4: TNxButton;
    Certified: TEdit;
    CertifiedPos: TEdit;
    Area: TEdit;
    Summ: TMyQuery;
    SummTotalBill: TFloatField;
    Summucec: TFloatField;
    Summucme: TFloatField;
    SummVAT: TFloatField;
    SummVATDist: TFloatField;
    SummVATGenCO: TFloatField;
    SummVATTransCO: TFloatField;
    SummVATSystemLoss: TFloatField;
    Summtransformerrental: TFloatField;
    SummabTotalBill: TFloatField;
    Summabucec: TFloatField;
    Summabucme: TFloatField;
    SummabVAT: TFloatField;
    SummabVATDist: TFloatField;
    SummabVATGenCO: TFloatField;
    SummabVATTransCO: TFloatField;
    SummabVATSystemLoss: TFloatField;
    Summabtransformerrental: TFloatField;
    SummdfTotalBill: TCurrencyField;
    Summdfucec: TCurrencyField;
    Summdfucme: TCurrencyField;
    SummdfVAT: TCurrencyField;
    SummdfVATDist: TCurrencyField;
    SummdfVATGenco: TCurrencyField;
    SummdfVATTransco: TCurrencyField;
    SummdfVATSystemLoss: TCurrencyField;
    SummdfTransformerRental: TCurrencyField;
    SummNetBill: TCurrencyField;
    SummabNetBill: TCurrencyField;
    SummdfNetBill: TCurrencyField;
    bh: TMyQuery;
    bhentry: TIntegerField;
    bhCode: TFloatField;
    bhArea: TStringField;
    bhBook: TStringField;
    bhSequence: TStringField;
    bhAccountNumber: TStringField;
    bhName: TStringField;
    bhAddress: TStringField;
    bhRateCode: TStringField;
    bhSerial: TStringField;
    bhMultiplier: TFloatField;
    bhPreviousReadingDate: TDateField;
    bhPresentReadingDate: TDateField;
    bhPreviousReadingKWH: TFloatField;
    bhPresentReadingKWH: TFloatField;
    bhDiff: TFloatField;
    bhDemand: TFloatField;
    bhFlatRateWattage: TFloatField;
    bhFeedBackCode: TStringField;
    bhCM: TStringField;
    bhCMMultiplier: TFloatField;
    bhCMPreviousReadingKWH: TFloatField;
    bhCMPresentReadingKWH: TFloatField;
    bhCMKilowattHour: TFloatField;
    bhCMDemand: TFloatField;
    bhKilowattHour: TFloatField;
    bhKilowattUsed: TFloatField;
    bhGenSysCharge: TFloatField;
    bhHostCommCharge: TFloatField;
    bhForexCharge: TFloatField;
    bhTCDemandCharge: TFloatField;
    bhTCTransSystemCharge: TFloatField;
    bhSystemLossCharge: TFloatField;
    bhDCDemandCharge: TFloatField;
    bhDCDistributionCharge: TFloatField;
    bhSCRetCustCharge: TFloatField;
    bhSCSupplySysCharge: TFloatField;
    bhMCRetailCustCharge: TFloatField;
    bhMCSystemCharge: TFloatField;
    bhUCNPCStrandedDebts: TFloatField;
    bhUCNPCStrandedContCost: TFloatField;
    bhUCDUStrandedContCost: TFloatField;
    bhUCME: TFloatField;
    bhUCEqTaxesAndRoyalties: TFloatField;
    bhUCEC: TFloatField;
    bhUCCrossSubRemoval: TFloatField;
    bhICCrossSubsidyCharge: TFloatField;
    bhPowerActRateRed: TFloatField;
    bhLifelineDiscSubs: TFloatField;
    bhLoanCondo: TFloatField;
    bhTransformerRental: TFloatField;
    bhOCCode1: TStringField;
    bhOCAmount1: TFloatField;
    bhOCMo1: TFloatField;
    bhOCTotal1: TFloatField;
    bhOCCode2: TStringField;
    bhOCAmount2: TFloatField;
    bhOCMo2: TFloatField;
    bhOCTotal2: TFloatField;
    bhOCCode3: TStringField;
    bhOCAmount3: TFloatField;
    bhOCMo3: TFloatField;
    bhOCTotal3: TFloatField;
    bhTotalBill: TFloatField;
    bhBillNumber: TStringField;
    bhOEBRNumber: TStringField;
    bhBillMonth: TStringField;
    bhBillDate: TDateField;
    bhstatuscode: TStringField;
    bhLCCustMo: TFloatField;
    bhPrevYearAdjPowerCost: TFloatField;
    bhSysLossUnderRecov: TFloatField;
    bhVATDisc: TFloatField;
    bhVATDiscAmt: TFloatField;
    bhVATDistDiscAmt: TFloatField;
    bhVATGenCoDiscAmt: TFloatField;
    bhVATTransCoDiscAmt: TFloatField;
    bhVATSystemLossDiscAmt: TFloatField;
    bhVATDist: TFloatField;
    bhVATGenCO: TFloatField;
    bhVATTransCO: TFloatField;
    bhVATSystemLossGenCO: TFloatField;
    bhVATSystemLossTransCO: TFloatField;
    bhVAT: TFloatField;
    bhAdjAmountBalance: TFloatField;
    bhAdjAmountApplied: TFloatField;
    UpdateVATLedger: TMyQuery;
    CancelVATLedger: TMyQuery;
    Panel4: TNxHeaderPanel;
    Label68: TLabel;
    Label65: TLabel;
    Label67: TLabel;
    Bevel9: TBevel;
    Bevel10: TBevel;
    Bevel11: TBevel;
    PDJSillyLabel6: TNxButton;
    PDJSillyLabel7: TNxButton;
    PreparedBy: TEdit;
    CheckedBy: TEdit;
    ApprovedBy: TEdit;
    StringGrid1: TStringGrid;
    Position1: TEdit;
    Position2: TEdit;
    Position3: TEdit;
    RadioGroup2: TRadioGroup;
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
    bhReadTime: TStringField;
    bhDiffBillPerKwhr: TFloatField;
    bhDiffBillPerKW: TFloatField;
    bhDiffBillPerCust: TFloatField;
    bhMCC: TFloatField;
    bhPKVROebrNumber: TStringField;
    bhPKVRBillMonth: TStringField;
    bhPKVRAmount: TFloatField;
    DateFrom: TNxDatePicker;
    DateTo: TNxDatePicker;
    Prepared: TEdit;
    PreparedPos: TEdit;
    Label13: TLabel;
    Label15: TLabel;
    Checked: TEdit;
    CheckedPos: TEdit;
    Reviewed: TEdit;
    ReviewedPos: TEdit;
    Attested: TEdit;
    AttestedPos: TEdit;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Bevel7: TBevel;
    RadioGroup3: TRadioGroup;
    RadioGroup4: TRadioGroup;
    AdjSumm: TMyQuery;
    NetAdjSumm: TMyQuery;
    AdjSummDescription: TStringField;
    AdjSummAsBilled: TFloatField;
    AdjSummShouldBeBilled: TFloatField;
    AdjSummDifference: TFloatField;
    NetAdjSummDescription: TStringField;
    NetAdjSummAsBilled: TFloatField;
    NetAdjSummShouldBeBilled: TFloatField;
    NetAdjSummDifference: TCurrencyField;
    Panel5: TPanel;
    QuickRep1: TQuickRep;
    TitleBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    AreaOfficeLabel: TQRLabel;
    QRLabel4: TQRLabel;
    AdjPeriodCovered: TQRLabel;
    QRImage1: TQRImage;
    DetailBand1: TQRBand;
    QRDBText73: TQRDBText;
    SummaryBand1: TQRBand;
    QRShape13: TQRShape;
    QRLabel70: TQRLabel;
    QRLabel71: TQRLabel;
    PEmp: TQRLabel;
    ChEmp: TQRLabel;
    PEmpPos: TQRLabel;
    ChEmpPos: TQRLabel;
    QRShape1: TQRShape;
    QRDBText1: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel3: TQRLabel;
    REmpName: TQRLabel;
    REmpPos: TQRLabel;
    QRLabel11: TQRLabel;
    CTEmpName: TQRLabel;
    CTEmpPos: TQRLabel;
    QRLabel14: TQRLabel;
    AEmpName: TQRLabel;
    AEmpPos: TQRLabel;
    QRSysData1: TQRSysData;
    AdjSummprintdiff: TCurrencyField;
    NetAdjSummprintdiff: TCurrencyField;
    SCAdj: TMyQuery;
    SCAdjSCode: TFloatField;
    SCAdjArea: TStringField;
    SCAdjBook: TStringField;
    SCAdjSequence: TStringField;
    SCAdjAccountNumber: TStringField;
    SCAdjBillingName: TStringField;
    SCAdjName: TStringField;
    SCAdjBDay: TDateField;
    SCAdjCPNo: TStringField;
    SCAdjSCIDNo: TStringField;
    SCAdjSpouseSCIDNo: TStringField;
    SCAdjDateApplied: TDateField;
    SCAdjExpirationDate: TDateField;
    SCAdjRemarks: TStringField;
    SCAdjAddress: TStringField;
    SCAdjstillvalid: TLargeintField;
    DBRadioGroup1: TDBRadioGroup;
    Label10: TLabel;
    DBEdit4: TDBEdit;
    UpdateLateBillHistory: TMyQuery;
    SCAdjidSCDisc: TLongWordField;
    DBGrid1: TDBGrid1;
    AssignaturiesMyQuery: TMyQuery;
    NxLinkLabel1: TNxLinkLabel;
    NxHeaderPanel1: TNxHeaderPanel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    AreaComboBox: TNxComboBox;
    SaveBtn: TButton;
    CancelBtn: TButton;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    AssigMyQuery: TMyQuery;
    AssigMyQueryID: TIntegerField;
    AssigMyQueryPreparedBy: TStringField;
    AssigMyQueryPBPosition: TStringField;
    AssigMyQueryCheckBy: TStringField;
    AssigMyQueryCBPosition: TStringField;
    AssigMyQueryCertifiedCorrectby: TStringField;
    AssigMyQueryCCCPosition: TStringField;
    AssigMyQueryReviewedby: TStringField;
    AssigMyQueryRBPosition: TStringField;
    AssigMyQueryAttestedby: TStringField;
    AssigMyQueryABPosition: TStringField;
    AssigMyQueryArea: TStringField;
    Label29: TLabel;
    Insert_MyQ: TMyQuery;
    bhRPTax: TFloatField;
    bhOtherGenRateAdj: TFloatField;
    bhOtherTransCostAdj: TFloatField;
    bhOtherTransDemandCostAdj: TFloatField;
    bhOtherSystemLossCostAdj: TFloatField;
    bhOtherLifelineRateCostAdj: TFloatField;
    bhOtherSeniorCitizenRateAdj: TFloatField;
    RpTaxQuery: TMyQuery;
    RpTaxQueryarea: TStringField;
    RpTaxQuerybillmonth: TStringField;
    RpTaxQueryrateamnt: TFloatField;
    RpTaxQueryrateorder: TStringField;
    bhFitAll: TFloatField;
    bhreferenceAtmNo: TStringField;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label36: TLabel;
    tmpQry: TMyQuery;
    adjTicket_frxR: TfrxReport;
    Bevel3: TBevel;
    address_Assgn: TEdit;
    Label37: TLabel;
    signatories: TMyQuery;
    signatoriesDS: TfrxDBDataset;
    adj_frxDS: TfrxDBDataset;
    rateQ: TMyQuery;
    rateFrx_DS: TfrxDBDataset;
    adjQuery: TMyQuery;
    insertAdjTrail: TMyQuery;
    adjSummary_frxR: TfrxReport;
    NxHeaderPanel2: TNxHeaderPanel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    Bevel6: TBevel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Bevel8: TBevel;
    Label41: TLabel;
    NxButton1: TNxButton;
    NxButton2: TNxButton;
    PreparedBy_Sum: TEdit;
    CheckedBy_Sum: TEdit;
    ApprovedBy_Sum: TEdit;
    StringGrid2: TStringGrid;
    Position1_Sum: TEdit;
    Position2_Sum: TEdit;
    Position3_Sum: TEdit;
    RadioGroup5: TRadioGroup;
    address_Assgn_Sum: TEdit;
    Label42: TLabel;
    NxDatePicker1: TNxDatePicker;
    Label43: TLabel;
    NxDatePicker2: TNxDatePicker;
    RadioGroup6: TRadioGroup;
    Label44: TLabel;
    OCsummaryQ: TMyQuery;
    OC_frx: TfrxDBDataset;
    frxDBDataset1: TfrxDBDataset;
    psalesAdj_frxR: TfrxReport;
    NxHeaderPanel3: TNxHeaderPanel;
    NxButton3: TNxButton;
    NxButton4: TNxButton;
    NxButton5: TNxButton;
    NxButton6: TNxButton;
    NxHeaderPanel4: TNxHeaderPanel;
    NxLabel8: TNxLabel;
    NxLabel9: TNxLabel;
    Label128: TLabel;
    Label45: TLabel;
    NxLabel6: TNxLabel;
    NxButton11: TNxButton;
    NxEdit1: TNxEdit;
    CanvassCancelBtn: TNxButton;
    bhPARec: TFloatField;
    bhVATparec: TFloatField;
    NxButton7: TNxButton;
    signaQ: TMyQuery;
    signaQID: TIntegerField;
    signaQPreparedBy: TStringField;
    signaQPBPosition: TStringField;
    signaQCheckBy: TStringField;
    signaQCBPosition: TStringField;
    signaQCertifiedCorrectby: TStringField;
    signaQCCCPosition: TStringField;
    signaQReviewedby: TStringField;
    signaQRBPosition: TStringField;
    signaQAttestedby: TStringField;
    signaQABPosition: TStringField;
    signaQArea: TStringField;
    signaQAdjPreparedByName: TStringField;
    signaQAdjPreparedByPosition: TStringField;
    signaQAdjCheckByName: TStringField;
    signaQAdjCheckByPosition: TStringField;
    signaQAdjApprovedByName: TStringField;
    signaQAdjApprovedByPosition: TStringField;
    signaQAdjAddress: TStringField;
    adjSummary_frxR2: TfrxReport;
    bhVATmcc: TFloatField;
    MMasterisGram: TBooleanField;
    bhgram: TFloatField;
    powerSalesPerAreaQ: TMyQuery;
    powerSalesPerAreaQUCNPCStrandedDebtsDiff: TFloatField;
    powerSalesPerAreaQUCNPCStrandedContCostDiff: TFloatField;
    powerSalesPerAreaQVATSystemLossGenCODiff: TFloatField;
    powerSalesPerAreaQVATTransCODiff: TFloatField;
    powerSalesPerAreaQVATGenCODiff: TFloatField;
    powerSalesPerAreaQVATDistDiff: TFloatField;
    powerSalesPerAreaQVatDiscAmtDiff: TFloatField;
    powerSalesPerAreaQUCECDiff: TFloatField;
    powerSalesPerAreaQUCMEDiff: TFloatField;
    powerSalesPerAreaQMCCDiff: TFloatField;
    powerSalesPerAreaQRPTaxDiff: TFloatField;
    powerSalesPerAreaQFitallDiff: TFloatField;
    powerSalesPerAreaQGenSysCharge_H: TFloatField;
    powerSalesPerAreaQGenSysCharge_L: TFloatField;
    powerSalesPerAreaQGenSysCharge_R: TFloatField;
    powerSalesPerAreaQVATGenCO_H: TFloatField;
    powerSalesPerAreaQVATGenCO_L: TFloatField;
    powerSalesPerAreaQVATGenCO_R: TFloatField;
    powerSalesPerAreaQTCTransSystemCharge_H: TFloatField;
    powerSalesPerAreaQTCTransSystemCharge_L: TFloatField;
    powerSalesPerAreaQTCTransSystemCharge_R: TFloatField;
    powerSalesPerAreaQTCDemandCharge_H: TFloatField;
    powerSalesPerAreaQTCDemandCharge_L: TFloatField;
    powerSalesPerAreaQTCDemandCharge_R: TFloatField;
    powerSalesPerAreaQVATTransCO_H: TFloatField;
    powerSalesPerAreaQVATTransCO_L: TFloatField;
    powerSalesPerAreaQVATTransCO_R: TFloatField;
    powerSalesPerAreaQSystemLossCharge_H: TFloatField;
    powerSalesPerAreaQSystemLossCharge_L: TFloatField;
    powerSalesPerAreaQSystemLossCharge_R: TFloatField;
    powerSalesPerAreaQVATSystemLossGenCO_H: TFloatField;
    powerSalesPerAreaQVATSystemLossGenCO_L: TFloatField;
    powerSalesPerAreaQVATSystemLossGenCO_R: TFloatField;
    powerSalesPerAreaQDCDistributionCharge_H: TFloatField;
    powerSalesPerAreaQDCDistributionCharge_L: TFloatField;
    powerSalesPerAreaQDCDistributionCharge_R: TFloatField;
    powerSalesPerAreaQDCDemandCharge_H: TFloatField;
    powerSalesPerAreaQDCDemandCharge_L: TFloatField;
    powerSalesPerAreaQDCDemandCharge_R: TFloatField;
    powerSalesPerAreaQSCRetCustCharge_H: TFloatField;
    powerSalesPerAreaQSCRetCustCharge_L: TFloatField;
    powerSalesPerAreaQSCRetCustCharge_R: TFloatField;
    powerSalesPerAreaQSCSupplySysCharge_H: TFloatField;
    powerSalesPerAreaQSCSupplySysCharge_L: TFloatField;
    powerSalesPerAreaQSCSupplySysCharge_R: TFloatField;
    powerSalesPerAreaQMCRetailCustCharge_H: TFloatField;
    powerSalesPerAreaQMCRetailCustCharge_L: TFloatField;
    powerSalesPerAreaQMCRetailCustCharge_R: TFloatField;
    powerSalesPerAreaQMCSystemCharge_H: TFloatField;
    powerSalesPerAreaQMCSystemCharge_L: TFloatField;
    powerSalesPerAreaQMCSystemCharge_R: TFloatField;
    powerSalesPerAreaQLifelineDiscSubs_H: TFloatField;
    powerSalesPerAreaQLifelineDiscSubs_L: TFloatField;
    powerSalesPerAreaQLifelineDiscSubs_R: TFloatField;
    powerSalesPerAreaQICCrossSubsidyCharge_H: TFloatField;
    powerSalesPerAreaQICCrossSubsidyCharge_L: TFloatField;
    powerSalesPerAreaQICCrossSubsidyCharge_R: TFloatField;
    powerSalesPerAreaQPowerActRateRed_H: TFloatField;
    powerSalesPerAreaQPowerActRateRed_L: TFloatField;
    powerSalesPerAreaQPowerActRateRed_R: TFloatField;
    powerSalesPerAreaQSCDisc_H: TFloatField;
    powerSalesPerAreaQSCDisc_L: TFloatField;
    powerSalesPerAreaQSCDisc_R: TFloatField;
    powerSalesPerAreaQPARec_H: TFloatField;
    powerSalesPerAreaQPARec_L: TFloatField;
    powerSalesPerAreaQPARec_R: TFloatField;
    powerSalesPerAreaQVATDist_H: TFloatField;
    powerSalesPerAreaQVATDist_L: TFloatField;
    powerSalesPerAreaQVATDist_R: TFloatField;
    powerSalesPerAreaQVatDiscAmt_H: TFloatField;
    powerSalesPerAreaQVatDiscAmt_L: TFloatField;
    powerSalesPerAreaQVatDiscAmt_R: TFloatField;
    powerSalesPerAreaQRPTax_H: TFloatField;
    powerSalesPerAreaQRPTax_L: TFloatField;
    powerSalesPerAreaQRPTax_R: TFloatField;
    powerSalesPerAreaQMCC_H: TFloatField;
    powerSalesPerAreaQMCC_L: TFloatField;
    powerSalesPerAreaQMCC_R: TFloatField;
    powerSalesPerAreaQUCEC_H: TFloatField;
    powerSalesPerAreaQUCEC_L: TFloatField;
    powerSalesPerAreaQUCEC_R: TFloatField;
    powerSalesPerAreaQUCME_H: TFloatField;
    powerSalesPerAreaQUCME_L: TFloatField;
    powerSalesPerAreaQUCME_R: TFloatField;
    powerSalesPerAreaQUCNPCStrandedContCost_H: TFloatField;
    powerSalesPerAreaQUCNPCStrandedContCost_L: TFloatField;
    powerSalesPerAreaQUCNPCStrandedContCost_R: TFloatField;
    powerSalesPerAreaQUCNPCStrandedDebts_H: TFloatField;
    powerSalesPerAreaQUCNPCStrandedDebts_L: TFloatField;
    powerSalesPerAreaQUCNPCStrandedDebts_R: TFloatField;
    powerSalesPerAreaQFitall_H: TFloatField;
    powerSalesPerAreaQFitall_L: TFloatField;
    powerSalesPerAreaQFitall_R: TFloatField;
    powerSalesPerAreaQgram_H: TFloatField;
    powerSalesPerAreaQgram_L: TFloatField;
    powerSalesPerAreaQgram_R: TFloatField;
    powerSalesPerAreaQTotalPowerSales: TFloatField;
    powerSalesPerAreaQTotalLess: TFloatField;
    powerSalesPerAreaQnetPowersales: TFloatField;
    powerSalesPerAreaQTotalbill_H: TFloatField;
    powerSalesPerAreaQTotalbill_L: TFloatField;
    powerSalesPerAreaQTotalbill_R: TFloatField;
    adjQueryABTotalBill_: TFloatField;
    adjQueryTotalBill_: TFloatField;
    adjQueryTotalSales_: TFloatField;
    adjQueryResidentialSales: TFloatField;
    adjQueryCode: TFloatField;
    adjQueryArea: TStringField;
    adjQueryBook: TStringField;
    adjQuerySequence: TStringField;
    adjQueryAccountNumber: TStringField;
    adjQueryName: TStringField;
    adjQueryAddress: TStringField;
    adjQueryBillMonth: TStringField;
    adjQueryVATDisc: TFloatField;
    adjQueryABRateCode: TStringField;
    adjQueryABMultiplier: TFloatField;
    adjQueryMultiplier: TFloatField;
    adjQueryABPreviousReadingKWH: TFloatField;
    adjQueryPreviousReadingKWH: TFloatField;
    adjQueryABPresentReadingKWH: TFloatField;
    adjQueryPresentReadingKWH: TFloatField;
    adjQueryABDiff: TFloatField;
    adjQueryDiff: TFloatField;
    adjQueryABDemand: TFloatField;
    adjQueryDemand: TFloatField;
    adjQueryABKilowattHour: TFloatField;
    adjQueryKilowattHour: TFloatField;
    adjQueryKilowattHourDiff: TFloatField;
    adjQueryABKilowattUsed: TFloatField;
    adjQueryKilowattUsed: TFloatField;
    adjQueryABGenSysCharge: TFloatField;
    adjQueryGenSysCharge: TFloatField;
    adjQueryGenSysChargeDiff: TFloatField;
    adjQueryABHostCommCharge: TFloatField;
    adjQueryHostCommCharge: TFloatField;
    adjQueryHostCommChargeDiff: TFloatField;
    adjQueryABForexCharge: TFloatField;
    adjQueryForexCharge: TFloatField;
    adjQueryForexChargeDiff: TFloatField;
    adjQueryABTCDemandCharge: TFloatField;
    adjQueryTCDemandCharge: TFloatField;
    adjQueryTCDemandChargeDiff: TFloatField;
    adjQueryABTCTransSystemCharge: TFloatField;
    adjQueryTCTransSystemCharge: TFloatField;
    adjQueryTCTransSystemChargeDiff: TFloatField;
    adjQueryABSystemLossCharge: TFloatField;
    adjQuerySystemLossCharge: TFloatField;
    adjQuerySystemLossChargeDiff: TFloatField;
    adjQueryABDCDemandCharge: TFloatField;
    adjQueryDCDemandCharge: TFloatField;
    adjQueryDCDemandChargeDiff: TFloatField;
    adjQueryABDCDistributionCharge: TFloatField;
    adjQueryDCDistributionCharge: TFloatField;
    adjQueryDCDistributionChargeDiff: TFloatField;
    adjQueryABSCRetCustCharge: TFloatField;
    adjQuerySCRetCustCharge: TFloatField;
    adjQuerySCRetCustChargeDiff: TFloatField;
    adjQueryABSCSupplySysCharge: TFloatField;
    adjQuerySCSupplySysCharge: TFloatField;
    adjQuerySCSupplySysChargeDiff: TFloatField;
    adjQueryABMCRetailCustCharge: TFloatField;
    adjQueryMCRetailCustCharge: TFloatField;
    adjQueryMCRetailCustChargeDiff: TFloatField;
    adjQueryABMCSystemCharge: TFloatField;
    adjQueryMCSystemCharge: TFloatField;
    adjQueryMCSystemChargeDiff: TFloatField;
    adjQueryABUCNPCStrandedDebts: TFloatField;
    adjQueryUCNPCStrandedDebts: TFloatField;
    adjQueryUCNPCStrandedDebtsDiff: TFloatField;
    adjQueryABUCNPCStrandedContCost: TFloatField;
    adjQueryUCNPCStrandedContCost: TFloatField;
    adjQueryUCNPCStrandedContCostDiff: TFloatField;
    adjQueryABUCDUStrandedContCost: TFloatField;
    adjQueryUCDUStrandedContCost: TFloatField;
    adjQueryUCDUStrandedContCostDiff: TFloatField;
    adjQueryABUCME: TFloatField;
    adjQueryUCME: TFloatField;
    adjQueryUCMEDiff: TFloatField;
    adjQueryABUCEqTaxesAndRoyalities: TFloatField;
    adjQueryUCEqTaxesAndRoyalties: TFloatField;
    adjQueryUCEqTaxesAndRoyaltiesDiff: TFloatField;
    adjQueryABUCEC: TFloatField;
    adjQueryUCEC: TFloatField;
    adjQueryUCECDiff: TFloatField;
    adjQueryABUCCrossSubRemoval: TFloatField;
    adjQueryUCCrossSubRemoval: TFloatField;
    adjQueryUCCrossSubRemovalDiff: TFloatField;
    adjQueryABICCrossSubsidyCharge: TFloatField;
    adjQueryICCrossSubsidyCharge: TFloatField;
    adjQueryICCrossSubsidyChargeDiff: TFloatField;
    adjQueryABPowerActRateRed: TFloatField;
    adjQueryPowerActRateRed: TFloatField;
    adjQueryPowerActRateRedDiff: TFloatField;
    adjQueryABPARec: TFloatField;
    adjQueryPARec: TFloatField;
    adjQueryPARecDiff: TFloatField;
    adjQueryABLifelineDiscSubs: TFloatField;
    adjQueryLifelineDiscSubs: TFloatField;
    adjQueryLifelineDiscSubsDiff: TFloatField;
    adjQueryABLoanCondo: TFloatField;
    adjQueryLoanCondo: TFloatField;
    adjQueryLoanCondoDiff: TFloatField;
    adjQueryABTransformerRental: TFloatField;
    adjQueryTransformerRental: TFloatField;
    adjQueryTransformerRentalDiff: TFloatField;
    adjQueryOC_pf: TFloatField;
    adjQueryOC_pr: TFloatField;
    adjQueryOC_xr: TFloatField;
    adjQueryOC_pf_AB: TFloatField;
    adjQueryOC_pr_AB: TFloatField;
    adjQueryOC_xr_AB: TFloatField;
    adjQueryABTotalBill: TFloatField;
    adjQueryTotalBill: TFloatField;
    adjQueryTotalBillDiff: TFloatField;
    adjQueryBillNumber: TStringField;
    adjQueryABOEBRNumber: TStringField;
    adjQueryOEBRNumber: TStringField;
    adjQueryAdjDate: TDateField;
    adjQueryAdjustmentCode: TStringField;
    adjQueryPostCode: TStringField;
    adjQueryABLCCustMo: TFloatField;
    adjQueryLCCustMo: TFloatField;
    adjQueryLCCustMoDiff: TFloatField;
    adjQueryABPrevYearAdjPowerCost: TFloatField;
    adjQueryPrevYearAdjPowerCost: TFloatField;
    adjQueryPrevYearAdjPowerCostDiff: TFloatField;
    adjQueryABSysLossUnderRecov: TFloatField;
    adjQuerySysLossUnderRecov: TFloatField;
    adjQuerySysLossUnderRecovDiff: TFloatField;
    adjQueryABVAT: TFloatField;
    adjQueryVAT: TFloatField;
    adjQueryVATDiff: TFloatField;
    adjQueryABVatDiscAmt: TFloatField;
    adjQueryVATDiscAmt: TFloatField;
    adjQueryVATDiscAmtDiff: TFloatField;
    adjQueryABVATDist: TFloatField;
    adjQueryVATDist: TFloatField;
    adjQueryVATDistDiff: TFloatField;
    adjQueryABVATDistDiscAmt: TFloatField;
    adjQueryVATDistDiscAmt: TFloatField;
    adjQueryVATDistDiscAmtDiff: TFloatField;
    adjQueryABVATGenCO: TFloatField;
    adjQueryVATGEnCO: TFloatField;
    adjQueryVATGEnCODiff: TFloatField;
    adjQueryABVATGenCODiscAmt: TFloatField;
    adjQueryVATGenCODiscAmt: TFloatField;
    adjQueryVATGenCODiscAmtDiff: TFloatField;
    adjQueryABVATTransCO: TFloatField;
    adjQueryVATTransCO: TFloatField;
    adjQueryVATTransCODiff: TFloatField;
    adjQueryABVATTranscoDiscAmt: TFloatField;
    adjQueryVATTranscoDiscAmt: TFloatField;
    adjQueryVATTranscoDiscAmtDiff: TFloatField;
    adjQueryABVATSystemLossGenCO: TFloatField;
    adjQueryVATSystemLossGenCO: TFloatField;
    adjQueryVATSystemLossGenCODiff: TFloatField;
    adjQueryABVATSystemLossDiscAmt: TFloatField;
    adjQueryVATSystemLossDiscAmt: TFloatField;
    adjQueryVATSystemLossDiscAmtDiff: TFloatField;
    adjQueryABVATSystemLossTransCO: TFloatField;
    adjQueryVATSystemLossTransCO: TFloatField;
    adjQueryVATSystemLossTransCODiff: TFloatField;
    adjQueryPreviousReadingDate: TDateField;
    adjQueryPresentReadingDate: TDateField;
    adjQueryABDiffBillPerKwhr: TFloatField;
    adjQueryDiffBillPerKwhr: TFloatField;
    adjQueryDiffBillPerKwhrDiff: TFloatField;
    adjQueryABDiffBillPerKw: TFloatField;
    adjQueryDiffBillPerKW: TFloatField;
    adjQueryDiffBillPerKWDiff: TFloatField;
    adjQueryABDiffBillPerCust: TFloatField;
    adjQueryDiffBillPerCust: TFloatField;
    adjQueryDiffBillPerCustDiff: TFloatField;
    adjQueryABMCC: TFloatField;
    adjQueryMCC: TFloatField;
    adjQueryMCCDiff: TFloatField;
    adjQueryABgram: TFloatField;
    adjQuerygram: TFloatField;
    adjQuerygramDiff: TFloatField;
    adjQueryPKVROebrNumber: TStringField;
    adjQueryPKVRBillMonth: TStringField;
    adjQueryPKVRAmount: TFloatField;
    adjQueryABTransSysAncRefund: TFloatField;
    adjQueryTransSysAncRefund: TFloatField;
    adjQueryTransSysAncRefundDiff: TFloatField;
    adjQueryABTransDemAncRefund: TFloatField;
    adjQueryTransDemAncRefund: TFloatField;
    adjQueryTransDemAncRefundDiff: TFloatField;
    adjQueryABVATTransAncRefund: TFloatField;
    adjQueryVATTransAncRefund: TFloatField;
    adjQueryVATTransAncRefundDiff: TFloatField;
    adjQueryABSCDisc: TFloatField;
    adjQuerySCDisc: TFloatField;
    adjQuerySCDiscDiff: TFloatField;
    adjQuerySCAmt4Disc: TFloatField;
    adjQueryABRPTax: TFloatField;
    adjQueryRPTax: TFloatField;
    adjQueryRPTaxDiff: TFloatField;
    adjQueryOtherGenRateAdj: TFloatField;
    adjQueryOtherTransCostAdj: TFloatField;
    adjQueryOtherTransDemandCostAdj: TFloatField;
    adjQueryOtherSystemLossCostAdj: TFloatField;
    adjQueryOtherLifelineRateCostAdj: TFloatField;
    adjQueryOtherSeniorCitizenRateAdj: TFloatField;
    adjQueryABOtherGenRateAdj: TFloatField;
    adjQueryABOtherTransCostAdj: TFloatField;
    adjQueryABOtherTransDemandCostAdj: TFloatField;
    adjQueryABOtherSystemLossCostAdj: TFloatField;
    adjQueryABOtherLifelineRateCostAdj: TFloatField;
    adjQueryABOtherSeniorCitizenRateAdj: TFloatField;
    adjQueryFitall: TFloatField;
    adjQueryABFitall: TFloatField;
    adjQueryFitallDiff: TFloatField;
    adjQueryreferenceAtmNo: TStringField;
    adjQueryABreferenceAtmNo: TStringField;
    adjQueryreferenceAdjNo: TStringField;
    adjQueryCMMultiplier: TFloatField;
    adjQueryCMPreviousReadingKWH: TFloatField;
    adjQueryCMPresentReadingKWH: TFloatField;
    adjQueryCMKilowattHour: TFloatField;
    adjQueryCMDemand: TFloatField;
    adjQueryVatDis_F: TFloatField;
    adjQueryTotalSales: TFloatField;
    adjQueryOC_pf_Diff: TFloatField;
    adjQueryOC_pr_Diff: TFloatField;
    adjQueryOC_xr_Diff: TFloatField;
    adjQueryABOCCode1: TStringField;
    adjQueryOCCode1: TStringField;
    adjQueryABOCAmount1: TStringField;
    adjQueryOCAmount1: TStringField;
    adjQueryOCAmount1Diff: TStringField;
    adjQueryABOCCode2: TStringField;
    adjQueryOCCode2: TStringField;
    adjQueryABOCAmount2: TStringField;
    adjQueryOCAmount2: TStringField;
    adjQueryOCAmount2Diff: TStringField;
    adjQueryABOCCode3: TStringField;
    adjQueryOCCode3: TStringField;
    adjQueryABOCAmount3: TStringField;
    adjQueryOCAmount3: TStringField;
    adjQueryOCAmount3Diff: TStringField;
    isonoQ: TfrxDBDataset;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SaveClick(Sender: TObject);
    procedure CloseLabelClick(Sender: TObject);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure BillFormClick(Sender: TObject);
    procedure EditAdjDateKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit45KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit40KeyPress(Sender: TObject; var Key: Char);
    procedure PrintClick(Sender: TObject);
    procedure PDJSillyLabel2Click(Sender: TObject);
    procedure PrevDateKeyPress(Sender: TObject; var Key: Char);
    procedure PresDateKeyPress(Sender: TObject; var Key: Char);
    procedure BillNumKeyPress(Sender: TObject; var Key: Char);
    procedure PDJSillyLabel4Click(Sender: TObject);
    procedure EditAccountNumberKeyPress(Sender: TObject; var Key: Char);
    procedure AdjFormClick(Sender: TObject);
    procedure EditAddressKeyPress(Sender: TObject; var Key: Char);
    procedure PDJSillyLabel7Click(Sender: TObject);
    procedure PDJSillyLabel5Click(Sender: TObject);
    procedure PDJSillyLabel6Click(Sender: TObject);
    procedure EditPresentReadingDateKeyPress(Sender: TObject;
      var Key: Char);
    procedure EditPreviousReadingDateKeyPress(Sender: TObject;
      var Key: Char);
    procedure PDJSillyLabel8Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure PDJSillyLabel9Click(Sender: TObject);
    procedure PDJSillyLabel10Click(Sender: TObject);
    procedure PDJSillyLabel1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EditBillMonthKeyPress(Sender: TObject; var Key: Char);
    procedure RadioGroup2Click(Sender: TObject);
    procedure SummCalcFields(DataSet: TDataSet);
    procedure RadioGroup4Click(Sender: TObject);
    procedure DateFromKeyPress(Sender: TObject; var Key: Char);
    procedure PrintSummaryClick(Sender: TObject);
    procedure NetAdjSummCalcFields(DataSet: TDataSet);
    procedure AdjSummCalcFields(DataSet: TDataSet);
    procedure DBGrid1Exit(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure NxLinkLabel1Click(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
    procedure AreaComboBoxChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RadioGroup5Click(Sender: TObject);
    procedure NxButton2Click(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure NxButton3Click(Sender: TObject);
    procedure NxButton4Click(Sender: TObject);
    procedure NxButton5Click(Sender: TObject);
    procedure NxButton6Click(Sender: TObject);
    procedure NxButton11Click(Sender: TObject);
    procedure CancelClick(Sender: TObject);
    procedure CanvassCancelBtnClick(Sender: TObject);
    procedure DBRadioGroup1Click(Sender: TObject);
    procedure NxButton7Click(Sender: TObject);
    procedure adjQueryCalcFields(DataSet: TDataSet);
    procedure powerSalesPerAreaQ2CalcFields(DataSet: TDataSet);
    procedure powerSalesPerAreaQCalcFields(DataSet: TDataSet);

  private
    { private declarations }
  public
    Procedure ComputeBill;
    Procedure PrintAdjustmentSummaryOld;
    Procedure PrintAdjustmentSummaryNew;
    procedure enableTextEditor(option :Boolean);
    { public declarations }
  end;

var
  AdjustmentRecordForm: TAdjustmentRecordForm;

implementation

uses Data, Collection, ModTools, StatusUpdate, AdjustmentDetail, BillMenu,
  intro;

{$R *.DFM}

Var
Lst           : Text ;
adjSmryOption : Boolean;
adj_Str :String;
ZeroVAT : TMyQuery;
isgram_ : Integer;
{Function RoundOff(Data : Currency) : Currency;
Var DSt  : String;
    Dat  : Currency;
    Chk  : Integer;
    Val2 : Currency;
begin
RoundOff := Data;
Str(Data:0:4,Dst);

 If Copy(Dst,Length(Dst)-1,1) >= '5' then
        if data >= 0 then Val2 := StrToCurr(Copy(Dst,1,length(dst)-2))+0.01 else
                          Val2 := StrToCurr(Copy(Dst,1,length(dst)-2))-0.01 else
      Val2 := StrToCurr(Copy(Dst,1,length(dst)-2));

RoundOff := Val2;
If (Dst = '0.00') or (Dst = '-0.00') then RoundOff := 0.00;
end;}

Function RoundOff(Data : Currency) : Currency;
Var DSt  : String;
    Dat  : Currency;
    Chk  : Integer;
    Val2 : Currency;
begin
RoundOff := Data;
Str(Data:0:4,Dst);

 If Copy(Dst,Length(Dst)-1,1) >= '5' then
        if data >= 0 then Val2 := StrToCurr(Copy(Dst,1,length(dst)-2))+0.01 else
                          Val2 := StrToCurr(Copy(Dst,1,length(dst)-2))-0.01 else
      Val2 := StrToCurr(Copy(Dst,1,length(dst)-2));

RoundOff := Val2;
If (Dst = '0.00') or (Dst = '-0.00') then RoundOff := 0.00;
end;


procedure TAdjustmentRecordForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  With BillingData do
  begin
    Master.Close;
    Adj.Close;
    AR.Close;
    UnPB.Close;
    MRate.Close;
  end;
  Action := caFree;
  AdjustmentRecordForm := Nil;
end;

procedure TAdjustmentRecordForm.FormCreate(Sender: TObject);
var
  NewTableCrt:TMyQuery;
begin

    NewTableCrt:= TMyQuery.Create(self);
    NewTableCrt.Connection:=BillingData.MyConnection1;

    NewTableCrt.sql.clear;
    NewTableCrt.SQL.Add('CREATE TABLE `Signatories` (');
    NewTableCrt.SQL.Add('`ID` int(30) NOT NULL auto_increment,');
    NewTableCrt.SQL.Add('`PreparedBy` varchar(60) default NULL,');
    NewTableCrt.SQL.Add('`PBPosition` varchar(60) default NULL,');
    NewTableCrt.SQL.Add('`CheckBy` varchar(60) default NULL,');
    NewTableCrt.SQL.Add('`CBPosition` varchar(60) default NULL,');
    NewTableCrt.SQL.Add('`CertifiedCorrectby` varchar(60) default NULL,');
    NewTableCrt.SQL.Add('`CCCPosition` varchar(60) default NULL,');
    NewTableCrt.SQL.Add('`Reviewedby` varchar(60) default NULL,');
    NewTableCrt.SQL.Add('`RBPosition` varchar(60) default NULL,');
    NewTableCrt.SQL.Add('`Attestedby` varchar(60) default NULL,');
    NewTableCrt.SQL.Add('`ABPosition` varchar(60) default NULL,');
    NewTableCrt.SQL.Add('`Area` varchar(40) default NULL,');
    NewTableCrt.SQL.Add('PRIMARY KEY  (`ID`)');
    NewTableCrt.SQL.Add(')ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1');

  try
      NewTableCrt.Execute;

      AssigMyQuery.Close;
      AssigMyQuery.SQL.Clear;
      AssigMyQuery.SQL.Add('Select * from signatories where area like :'+'Sindangan'+'');
      AssigMyQuery.Open;

      if AssigMyQuery.Eof and AssigMyQuery.IsEmpty then  Insert_MyQ.Execute;
  except
      Exit;
  end;

  FreeAndNil(NewTableCrt);
end;

procedure TAdjustmentRecordForm.SaveBtnClick(Sender: TObject);

begin
    AssignaturiesMyQuery.Close;
    AssignaturiesMyQuery.ParamByName('PreparedByT').Text:= Edit3.Text;
    AssignaturiesMyQuery.ParamByName('PBPositionT').Text:= Edit4.Text;
    AssignaturiesMyQuery.ParamByName('CheckByT').Text:= Edit5.Text;
    AssignaturiesMyQuery.ParamByName('CBPositionT').Text:= Edit6.Text;
    AssignaturiesMyQuery.ParamByName('CertifiedCorrectbyT').Text:= Edit7.Text;
    AssignaturiesMyQuery.ParamByName('CCCPositionT').Text:= Edit8.Text;
    AssignaturiesMyQuery.ParamByName('ReviewedbyT').Text:= Edit9.Text;
    AssignaturiesMyQuery.ParamByName('RBPositionT').Text:= Edit10.Text;
    AssignaturiesMyQuery.ParamByName('AttestedbyT').Text:= Edit11.Text;
    AssignaturiesMyQuery.ParamByName('ABPositionT').Text:= Edit12.Text;
    AssignaturiesMyQuery.ParamByName('TArea').Text:= AreaComboBox.Text;
    AssignaturiesMyQuery.Execute;

    MessageDlg('Record was updated..',mtConfirmation,[mbOK],0);

end;

procedure TAdjustmentRecordForm.SaveClick(Sender: TObject);
begin
  With BillingData do
  If (Adj.State = dsedit) or
     (Adj.State = dsInsert) then Adj.Post;
  EditAccountNumber.SetFocus;
end;

procedure TAdjustmentRecordForm.CancelBtnClick(Sender: TObject);
begin
  Panel3.Width:=424;
end;

procedure TAdjustmentRecordForm.CancelClick(Sender: TObject);
begin
  if billingdata.AdjPostCode.text = '2' then
  begin
    NxEdit1.text := '';
    NxHeaderPanel4.Top := 144;
    NxHeaderPanel4.Left:= 162;
    NxHeaderPanel4.BringToFront;
    NxHeaderPanel4.Visible := true;
  end
  else
  begin

    if (MessageDlg('Delete Record?',mtConfirmation,[mbOK,mbCancel],0)=mrCancel) then
    exit;

    insertAdjTrail.ParamByName('dateDeleted').AsDateTime := now;
    insertAdjTrail.ParamByName('user').Text              := BillMenuForm.DBText1.Caption;
    //insertAdjTrail.ParamByName('Billmonth').Text         := BillingData.AdjBillMonth.text;
    //insertAdjTrail.ParamByName('accountnumber').Text     := BillingData.AdjAccountNumber.Text;
    insertAdjTrail.ParamByName('entry').Text := BillingData.AdjEntry.Text;

    try
      insertAdjTrail.Execute;
    except
    end;

   try
    BillingData.Adj.Delete;
    enableTextEditor(false);
   except
   end;
    EditAccountNumber.SetFocus;
  end;

end;



procedure TAdjustmentRecordForm.CanvassCancelBtnClick(Sender: TObject);
begin
  NxHeaderPanel4.Visible := false;
end;

procedure TAdjustmentRecordForm.CloseLabelClick(Sender: TObject);
begin
  Close;
end;

Procedure TAdjustmentRecordForm.ComputeBill;
Var
KWHR,TotalPower    : Currency;
DaysFactor         : Real;
Days               : Integer;
LLine              : Currency;
VATGenCo           : Real;
VATTransCo         : Real;
VATSystemLoss      : Real;
VAT10,VAT12        : Real;
VATABLEAMOUNT      : Real;
DBKwhr             : Real;
DBKW               : Real;
WithDB             : Boolean;
DiffBillVAT        : Currency;
SCLD               : Currency;
VATparecComp       : Currency;
mccComp            : Currency;
begin
   With BillingData do
   begin
      If AdjMultiplier.AsInteger = 0 then AdjMultiplier.AsInteger := 1;

      KWHR := (AdjDiff.AsCurrency * AdjMultiplier.AsCurrency)+AdjCMKilowattHour.AsCurrency;
      AdjKilowattHour.AsCurrency := KWHR;

      If AdjDemand.AsCurrency > 0 then
      AdjKilowattUsed.AsCurrency := AdjDemand.AsCurrency;

      //Remove averaging of 15 KWHr reading============
      //===============================================
      {If AdjRateCode.Text = 'R' then
        begin
           If (AdjKilowattHour.AsCurrency >= 0) and (AdjKilowattHour.AsCurrency <= 15) then
           KWHR := 15;
        end;    }

        If (AdjRateCode.Text = 'R') OR (AdjRateCode.Text = 'L') then
        begin
           If (AdjKilowattHour.AsCurrency < 0) then
           KWHR := 0;
        end;
      //===============================================

      WithDB := False;
      DBKwhr := 0;
      DBKW   := 0;
      If MRateDiffBillApply.Text = '1' then
         begin
           DiffCons.ParamByName('Code').Text      := BillCode.Text;
           DiffCons.ParamByName('BillMonth').Text := MRateDiffBillMonth.Text;
           DiffCons.Open;

           If not DiffCons.IsEmpty then
             begin
                WithDB := True;
                DBKwhr := DiffConskilowatthour.AsFloat;
                DBKW   := DiffConskilowattused.AsFloat;
             end;
           DiffCons.Close;
         end;

      AdjGenSysCharge.AsCurrency              := RoundOff(KWHR * MRateGenSysRate.AsCurrency);
      AdjOtherGenRateAdj.AsCurrency           := RoundOff(KWHR * MRateOtherGenRateAdj.AsCurrency);
      AdjHostCommCharge.AsCurrency            := RoundOff(KWHR * MRateHostCommRate.AsCurrency);
      AdjForexCharge.AsCurrency               := RoundOff(KWHR * MRateForexRate.AsCurrency);
      AdjTCDemandCharge.AsCurrency            := RoundOff(AdjKilowattUsed.AsCurrency * MRateTCDemandRate.AsCurrency);
      AdjOtherTransDemandCostAdj.AsCurrency   := RoundOff(AdjKilowattUsed.AsCurrency * MRateOtherTransDemandCostAdj.AsCurrency);

      AdjTCTransSystemCharge.AsCurrency       := RoundOff(KWHR * MRateTCSystemRate.AsCurrency);
      AdjOtherTransCostAdj.AsCurrency         := RoundOff(KWHR * MRateOtherTransCostAdj.AsCurrency);
      AdjSystemLossCharge.AsCurrency          := RoundOff(KWHR * MRateSystemLossRate.AsCurrency);
      AdjOtherSystemLossCostAdj.AsCurrency    := RoundOff(KWHR * MRateOtherSystemLossCostAdj.AsCurrency);

      AdjDCDemandCharge.AsCurrency            := RoundOff(AdjKilowattUsed.AsCurrency * MRateDCDemandRate.AsCurrency);
      AdjDCDistributionCharge.AsCurrency      := RoundOff(KWHR * MRateDCSystemRate.AsCurrency);

      AdjSCRetCustCharge.AsCurrency           := RoundOff(MRateSCRetailCustRate.AsCurrency);
      AdjSCSupplySysCharge.AsCurrency         := RoundOff(KWHR * MRateSCSupplySysRate.AsCurrency);
      AdjMCRetailCustCharge.AsCurrency        := RoundOff(MRateMCRetailCustRate.AsCurrency);
      AdjMCSystemCharge.AsCurrency            := RoundOff(KWHR * MRateMCSysRate.AsCurrency);
      mccComp                                 := RoundOff(KWHR * MRateMCC.AsCurrency);
      AdjMCC.AsCurrency                       := mccComp;
      AdjSCDisc.AsCurrency                    := RoundOff(KWHR * MRateSCDiscSubs.AsCurrency);

      if AdjisGram.AsBoolean  then
        Adjgram.AsCurrency                   := RoundOff(KWHR * MRateGram.AsCurrency)
      else
        Adjgram.AsCurrency                   := 0;

      If WithDB then
        begin
          AdjDiffBillPerKwhr.AsCurrency       := RoundOff((DBKwhr * MRateDiffBillPerKwhr.AsCurrency) / 10);
          AdjDiffBillPerKW.AsCurrency         := RoundOff((DBKW * MRateDIffBillPerKW.AsCurrency) / 10);
          AdjDiffBillPerCust.AsCurrency       := RoundOff((MRateDiffBillPerCust.AsCurrency) / 10);
        end;

      AdjUCNPCStrandedDebts.AsCurrency        := RoundOff(KWHR * MRateUCNPCStrandedDebtsRate.AsCurrency);
      AdjUCNPCStrandedContCost.AsCurrency     := RoundOff(KWHR * MRateUCNPCStrandedContCostRate.AsCurrency);
      AdjUCDUStrandedContCost.AsCurrency      := RoundOff(KWHR * MRateUCDUStrandedContCostRate.AsCurrency);
      AdjUCME.AsCurrency                      := RoundOff(KWHR * MRateUCMERate.AsCurrency);
      AdjUCEqTaxesAndRoyalties.AsCurrency     := RoundOff(KWHR * MRateUCEqTaxesAndRoyaltiesRate.AsCurrency);
      AdjUCEC.AsCurrency                      := RoundOff(KWHR * MRateUCECRate.AsCurrency);
      AdjUCCrossSubRemoval.AsCurrency         := RoundOff(KWHR * MRateUCCrossSubsidyRemovalRate.AsCurrency);
      AdjICCrossSubsidyCharge.AsCurrency      := RoundOff(KWHR * MRateICCrossSubsidyRate.AsCurrency);
      AdjPowerActRateRed.AsCurrency           := RoundOff(KWHR * MRatePARARate.AsCurrency);
      AdjLifelineDiscSubs.AsCurrency          := RoundOff(KWHR * MRateLifelineSubsidyRate.AsCurrency);
      AdjOtherLifelineRateCostAdj.AsCurrency  := RoundOff(KWHR * MRateOtherLifelineRateCostAdj.AsCurrency);
      AdjSCDisc.AsCurrency                    := RoundOff(KWHR * MRateSCDiscSubs.AsCurrency);
      AdjOtherSeniorCitizenRateAdj.AsCurrency := RoundOff(KWHR * MRateOtherSeniorCitizenRateAdj.AsCurrency);
      AdjLoanCondo.AsCurrency                 := RoundOff(KWHR * MRateLoanCondo.AsCurrency);
      AdjLCCustMo.AsFloat                     := RoundOff(MRateLCCustMo.AsFloat);
      AdjPrevYearAdjPowerCost.AsCurrency      := RoundOff(KWHR * MRatePrevYearAdjPowerCost.AsCurrency);
      AdjSysLossUnderRecov.AsCurrency         := RoundOff(KWHR * MRateSysLossUnderRecov.AsCurrency);

      AdjTransSysAncRefund.AsCurrency         := RoundOff(KWHR * MRateTransSysAncRefund.AsCurrency);
      AdjTransDemAncRefund.AsCurrency         := RoundOff(AdjKilowattUsed.AsCurrency * MRateTransDemAncRefund.AsCurrency);
      AdjVATTransAncRefund.AsCurrency         := RoundOff(KWHR * MRateVATTransAncRefund.AsCurrency);
      AdjFitAll.AsCurrency                    := RoundOff(KWHR * MRateFitAllrate.AsCurrency);
      AdjPARec.AsCurrency                     := RoundOff(KWHR * MRatePARec.AsCurrency);

      VATGenCo                                := RoundOff(KWHR * MRateVATGenco.AsCurrency);
      VATTransCo                              := RoundOff(KWHR * MRateVATTransco.AsCurrency);
      VATSystemLoss                           := RoundOff(KWHR * MRateVATSystemLoss.AsCurrency);
      //============================================
      RpTaxQuery.Close;
      RpTaxQuery.ParamByName('BillMonth').Text  :=  MRateMBillMonth.Text;
      RpTaxQuery.ParamByName('area').Text       :=  AdjArea.Text;
      RpTaxQuery.Open;

      AdjRPTax.AsCurrency                      := 0;
      AdjRateOrder.text                        := RpTaxQueryRateOrder.Text;

      if not RpTaxQuery.IsEmpty then
      begin
        AdjRPTax.AsCurrency                    := RoundOff(KWHR * RpTaxQueryRateAmnt.AsCurrency);
      end;



      TotalPower := AdjGenSysCharge.AsCurrency +
                    AdjHostCommCharge.AsCurrency +
                    AdjForexCharge.AsCurrency +
                    AdjTCDemandCharge.AsCurrency +
                    AdjTCTransSystemCharge.AsCurrency +
                    AdjSystemLossCharge.AsCurrency +
                    AdjDCDemandCharge.AsCurrency +
                    AdjDCDistributionCharge.AsCurrency +
                    AdjSCSupplySysCharge.AsCurrency +
                    AdjMCSystemCharge.AsCurrency+
                    AdjMCRetailCustCharge.AsCurrency+
                    AdjTransSysAncRefund.AsCurrency+
                    AdjTransDemAncRefund.AsCurrency;

     SCLD := 1;
      If (AdjRateCode.Text = 'R') or
         (AdjRateCode.Text = 'X') then
       begin

         If KWHR <= 15 then
           begin
             AdjLifelineDiscSubs.AsCurrency:= RoundOff(TotalPower * -0.50);
             AdjOtherLifelineRateCostAdj.AsCurrency := 0.0;
             SCLD:= 0.50;
           end;

         If (KWHR >  15) and (KWHR <= 16) then
           begin
             AdjLifelineDiscSubs.AsCurrency:= RoundOff(TotalPower * -0.40);
             AdjOtherLifelineRateCostAdj.AsCurrency:= 0.0;
             SCLD:= 0.60;
           end;

         If (KWHR >  16) and (KWHR <= 17) then
           begin
             AdjLifelineDiscSubs.AsCurrency := RoundOff(TotalPower * -0.30);
             AdjOtherLifelineRateCostAdj.AsCurrency := 0.0;
             SCLD := 0.70;
           end;

         If (KWHR >  17) and (KWHR <= 18) then
           begin
             AdjLifelineDiscSubs.AsCurrency := RoundOff(TotalPower * -0.20);
             AdjOtherLifelineRateCostAdj.AsCurrency := 0.0;
             SCLD := 0.80;
           end;

         If (KWHR >  18) and (KWHR <= 19) then
           begin
             AdjLifelineDiscSubs.AsCurrency := RoundOff(TotalPower * -0.10);
             AdjOtherLifelineRateCostAdj.AsCurrency := 0.0;
             SCLD := 0.90;
           end;

         If (KWHR >  19) and (KWHR <= 20) then
           begin
             AdjLifelineDiscSubs.AsCurrency := RoundOff(TotalPower * -0.05);
             AdjOtherLifelineRateCostAdj.AsCurrency := 0.0;
             SCLD := 0.95;
           end;

       end;

          If AdjLifelineDiscSubs.AsCurrency < 0 then
          begin
            AdjSCDisc.AsCurrency := 0;
            AdjOtherSeniorCitizenRateAdj.AsCurrency := 0.0;
          end;

          If (MRateSCDiscApply.Text = '1') and (AdjKilowattHour.AsFloat <= MRateSCDiscKWHR.AsFloat) then
          begin

            SCAdj.ParamByName('scode').Text                := AdjCode.Text;
            SCAdj.ParamByName('presentreadingdate').AsDate := AdjPresentReadingDate.AsDateTime;
            SCAdj.Open;

            If not SCAdj.IsEmpty then
              begin
                  AdjSCAmt4Disc.AsCurrency  := (AdjGenSysCharge.AsCurrency +
                                                AdjHostCommCharge.AsCurrency +
                                                AdjForexCharge.AsCurrency +
                                                AdjTCDemandCharge.AsCurrency +
                                                AdjTCTransSystemCharge.AsCurrency +
                                                AdjSystemLossCharge.AsCurrency +
                                                AdjDCDemandCharge.AsCurrency +
                                                AdjDCDistributionCharge.AsCurrency +
                                                AdjSCRetCustCharge.AsCurrency +
                                                AdjSCSupplySysCharge.AsCurrency +
                                                AdjMCRetailCustCharge.AsCurrency +
                                                AdjMCSystemCharge.AsCurrency +
                                                AdjLoanCondo.AsCurrency) * SCLD;


                  AdjSCDisc.AsCurrency      := (AdjSCAmt4Disc.AsCurrency * (MRateSCDiscPercent.AsCurrency/100)) * -1;
                  AdjOtherSeniorCitizenRateAdj.AsCurrency := 0.0;
              end;

              SCAdj.Close;
          end;

       If AdjBillMonth.Text = '1105' then
       begin

       Days := DaysBetween(StrToDate('11/01/2005'),AdjPresentReadingDate.AsDateTime) + 1;

       DaysFactor := 0;
       if Days > 0 then
       DaysFactor := Days / 30;

       LLine := AdjLifelineDiscSubs.AsCurrency;
       If LLine < 0 then LLine := 0;

       AdjVAT.AsCurrency :=  (((AdjForexCharge.AsCurrency +
                                 AdjSystemLossCharge.AsCurrency +
                                 AdjTCDemandCharge.AsCurrency +
                                 AdjTCTransSystemCharge.AsCurrency+
                                 AdjDCDemandCharge.AsCurrency +
                                 AdjDCDistributionCharge.AsCurrency +
                                 AdjSCRetCustCharge.AsCurrency +
                                 AdjSCSupplySysCharge.AsCurrency +
                                 AdjMCRetailCustCharge.AsCurrency +
                                 AdjMCSystemCharge.AsCurrency +
                                 AdjICCrossSubsidyCharge.AsCurrency +
                                 AdjPowerActRateRed.AsCurrency +
                                 LLine+
                                 AdjLoanCondo.AsCurrency +
                                 AdjLCCustMo.AsCurrency) *
                                 (MRateVAT.AsCurrency / 100)) * DaysFactor);
          end else
          If AdjBillMonth.Text <> '0206' then
          begin
              VATparecComp            := 0;
              VATparecComp            := AdjPARec.AsCurrency *( MRateVAT.AsCurrency / 100 );
              AdjVATparec.AsCurrency  := VATparecComp;
              AdjVATmcc.AsCurrency   := RoundOff(mccComp * (MRateVAT.AsCurrency / 100));

              DiffBillVAT :=  ( AdjDiffBillPerKwhr.AsCurrency +
                                AdjDiffBillPerKW.AsCurrency +
                                AdjDiffBillPerCust.AsCurrency ) * ( MRateVAT.AsCurrency / 100 );

              if ((RightStr(AdjBillMonth.Text,2) + LeftStr(AdjBillMonth.Text,2)) >= '0603') then
               begin

                 AdjVAT.AsCurrency :=  RoundOff((( AdjForexCharge.AsCurrency+
                                                    AdjDCDemandCharge.AsCurrency+
                                                    AdjDCDistributionCharge.AsCurrency+
                                                    AdjSCRetCustCharge.AsCurrency+
                                                    AdjSCSupplySysCharge.AsCurrency+
                                                    AdjMCRetailCustCharge.AsCurrency+
                                                    AdjMCSystemCharge.AsCurrency+
                                                    AdjICCrossSubsidyCharge.AsCurrency+
                                                    AdjLifelineDiscSubs.AsCurrency+
                                                    AdjSCDisc.AsCurrency+
                                                    AdjOtherLifelineRateCostAdj.AsCurrency+
                                                    AdjOtherSeniorCitizenRateAdj.AsCurrency+
                                                    AdjLoanCondo.AsCurrency +
                                                    AdjLCCustMo.AsCurrency+
                                                    mccComp)*
                                                    (MRateVAT.AsCurrency / 100)) ) +
                                                     VATGenCO +
                                                     VATTransCO +
                                                     VATSystemLoss +
                                                     DiffBillVAT +
                                                     VATparecComp;

                 AdjVATGenCO.AsCurrency           := VATGenCO;
                 AdjVATTransCO.AsCurrency         := VATTransCo;
                 AdjVATSystemLossGenCO.AsCurrency := VATSystemLoss;

                 AdjVATDist.AsCurrency            := AdjVAT.AsCurrency - (VATGenCO+
                                                                          VATTransCo+
                                                                          VATSystemLoss);

               end
              else
               begin
                 If AdjLifelineDiscSubs.AsCurrency > 0 then
                 AdjVAT.AsCurrency :=  Roundoff((( AdjForexCharge.AsCurrency+
                                                     AdjDCDemandCharge.AsCurrency+
                                                     AdjDCDistributionCharge.AsCurrency+
                                                     AdjSCRetCustCharge.AsCurrency+
                                                     AdjSCSupplySysCharge.AsCurrency+
                                                     AdjMCRetailCustCharge.AsCurrency+
                                                     AdjMCSystemCharge.AsCurrency+
                                                     AdjICCrossSubsidyCharge.AsCurrency+
                                                     AdjLifelineDiscSubs.AsCurrency+
                                                     AdjSCDisc.AsCurrency+
                                                     AdjOtherLifelineRateCostAdj.AsCurrency+
                                                     AdjOtherSeniorCitizenRateAdj.AsCurrency+
                                                     AdjLoanCondo.AsCurrency+
                                                     AdjLCCustMo.AsCurrency+
                                                     mccComp) *
                                                     MRateVAT.AsCurrency / 100)) +
                                                     VATGenCO +
                                                     VATTransCO +
                                                     VATSystemLoss +
                                                     DiffBillVAT+
                                                     VATparecComp

                 else
                  AdjVAT.AsCurrency :=               VATGenCO +
                                                     VATTransCO +
                                                     VATSystemLoss +
                                                     DiffBillVAT;

                  AdjVATGenCO.AsCurrency           := VATGenCO;
                  AdjVATTransCO.AsCurrency         := VATTransCo;
                  AdjVATSystemLossGenCO.AsCurrency := VATSystemLoss;

                 If AdjLifelineDiscSubs.AsCurrency > 0 then
                  AdjVATDist.AsCurrency            := AdjVAT.AsCurrency - (VATGenCO+
                                                                           VATTransCo+
                                                                           VATSystemLoss)
                 else
                  AdjVATDist.AsCurrency            := DiffBillVAT;
               end;


          end else
          begin
              VAT12 := 0;
              VAT10 := 0;
              If AdjLifelineDiscSubs.AsCurrency > 0 then
              begin
              VatableAmount :=  ( AdjForexCharge.AsCurrency+
                                  AdjDCDemandCharge.AsCurrency+
                                  AdjDCDistributionCharge.AsCurrency+
                                  AdjSCRetCustCharge.AsCurrency+
                                  AdjSCSupplySysCharge.AsCurrency+
                                  AdjMCRetailCustCharge.AsCurrency+
                                  AdjMCSystemCharge.AsCurrency+
                                  AdjICCrossSubsidyCharge.AsCurrency+
                                  AdjLifelineDiscSubs.AsCurrency+
                                  AdjLoanCondo.AsCurrency +
                                  AdjLCCustMo.AsCurrency );

              VAT12         := ((VatableAmount / 30) * 18) * 0.12;
              VAT10         := ((VatableAmount / 30) * 12) * 0.10;
              end;

              AdjVATGenCO.AsCurrency           := VATGenCO;
              AdjVATTransCO.AsCurrency         := VATTransCo;
              AdjVATSystemLossGenCO.AsCurrency := VATSystemLoss;
              AdjVATDist.AsCurrency            := VAT10 + VAT12;
              AdjVAT.AsCurrency                := VATGenCO +
                                                  VATTransCO +
                                                  VATSystemLoss +
                                                  VAT10 +
                                                  VAT12;

          end;

      //Temporarily remove the vat discount=================
      //====================================================
      {If AdjVATDisc.AsFloat > 0 then
       begin
         AdjVATDistDiscAmt.AsFloat          := (AdjVATDist.AsFloat * (AdjVATDisc.AsFloat / 100) * -1);
         AdjVATGenCoDiscAmt.AsFloat         := 0;
         AdjVATTransCoDiscAmt.AsFloat       := 0;
         AdjVATSystemLossDiscAmt.AsFloat    := 0;

         AdjVATGenCoDiscAmt.AsFloat         := (AdjVATGEnCO.AsFloat * (AdjVATDisc.AsFloat / 100) * -1);
         AdjVATTransCoDiscAmt.AsFloat       := (AdjVATTransCO.AsFloat * (AdjVATDisc.AsFloat / 100) * -1);
         AdjVATSystemLossDiscAmt.AsFloat    := (AdjVATSystemLossGenCO.AsFloat * (AdjVATDisc.AsFloat / 100) * -1);

         AdjVATDiscAmt.AsFloat              := AdjVATDistDiscAmt.AsFloat+
                                               AdjVATGenCODiscAmt.AsFloat+
                                               AdjVATTranscoDiscAmt.AsFloat+
                                               AdjVATSystemLossDiscAmt.AsFloat;
       end;
       ======================================================
       ======================================================}

       AdjVATDistDiscAmt.AsFloat :=0;

      ZeroVAT            := TMyQuery.Create(ZeroVAT);
      ZeroVAT.Connection := BillingData.MyConnection1;
      ZeroVAT.SQL.Clear;

      ZeroVAT.SQL.Add('Select accountnumber from ZeroVat where code = :code and dateentered <= :dateentered');
      ZeroVAT.ParamByName('Code').Text        := AdjCode.Text;
      ZeroVAT.ParamByName('DateEntered').AsDate := AdjPresentReadingDate.AsDateTime;
      ZeroVAT.Open;

          if not ZeroVAT.IsEmpty then
          begin
            AdjVATDistDiscAmt.AsFloat          := AdjVATDist.AsFloat * -1;
            AdjVATGenCoDiscAmt.AsFloat         := AdjVATGenCO.AsFloat * -1;
            AdjVATTransCoDiscAmt.AsFloat       := AdjVATTransCO.AsFloat * -1;
            AdjVATSystemLossDiscAmt.AsFloat    := AdjVATSystemLossGenCO.AsFloat * -1;

            AdjVATDiscAmt.AsFloat              := AdjVATDistDiscAmt.AsFloat+
                                                  AdjVATGenCoDiscAmt.AsFloat+
                                                  AdjVATTransCoDiscAmt.AsFloat+
                                                  AdjVATSystemLossDiscAmt.AsFloat;

          end;
      //===================================================
       //===================================================


      RpTaxQuery.Close;
      RpTaxQuery.ParamByName('BillMonth').Text := AdjBillMonth.Text;   //EditBillMonth.Text;
      RpTaxQuery.ParamByName('area').Text      := AdjArea.Text;        //EditArea.Text;
      RpTaxQuery.Open;

      AdjRPTax.AsCurrency                  := 0;
      AdjRateOrder.text                    := RpTaxQueryRateOrder.Text;

      if not RpTaxQuery.IsEmpty then
      begin
        AdjRPTax.AsCurrency                := RoundOff(KWHR * RpTaxQueryRateAmnt.AsCurrency);
      end;

      RpTaxQuery.Close;

      AdjTotalBill.AsCurrency := AdjGenSysCharge.AsCurrency +
                                              AdjHostCommCharge.AsCurrency +
                                              AdjForexCharge.AsCurrency +
                                              AdjVAT.AsCurrency +
                                              //================================
                                              AdjVATDiscAmt.AsCurrency +
                                              //================================
                                              AdjTCDemandCharge.AsCurrency +
                                              AdjTCTransSystemCharge.AsCurrency +
                                              AdjSystemLossCharge.AsCurrency +
                                              AdjDCDemandCharge.AsCurrency +
                                              AdjDCDistributionCharge.AsCurrency +
                                              AdjSCRetCustCharge.AsCurrency +
                                              AdjSCSupplySysCharge.AsCurrency +
                                              AdjMCRetailCustCharge.AsCurrency +
                                              AdjMCSystemCharge.AsCurrency +
                                              AdjUCNPCStrandedDebts.AsCurrency +
                                              AdjUCNPCStrandedContCost.AsCurrency +
                                              AdjUCDUStrandedContCost.AsCurrency +
                                              AdjUCME.AsCurrency +
                                              AdjUCEqTaxesAndRoyalties.AsCurrency +
                                              AdjUCEC.AsCurrency +
                                              AdjUCCrossSubRemoval.AsCurrency +
                                              AdjICCrossSubsidyCharge.AsCurrency +
                                              AdjPowerActRateRed.AsCurrency +
                                              AdjLifelineDiscSubs.AsCurrency +
                                              AdjSCDisc.AsCurrency +
                                              AdjLoanCondo.AsCurrency +
                                              AdjLCCustMo.AsCurrency +
                                              AdjOCAmount1.AsCurrency +
                                              AdjOCAmount2.AsCurrency +
                                              AdjOCAmount3.AsCurrency +
                                              //=================================
                                              //AdjVATDistDiscAmt.AsCurrency +
                                              //=================================
                                              AdjPrevYearAdjPowerCost.AsCurrency +  //30
                                              AdjSysLossUnderRecov.AsCurrency+
                                              AdjMCC.AsCurrency +
                                              AdjDiffBillPerKwhr.AsCurrency +
                                              AdjDiffBillPerKW.AsCurrency +
                                              AdjDiffBillPerCust.AsCurrency +
                                              AdjPKVRAmount.AsCurrency+
                                              AdjTransSysAncRefund.AsCurrency+
                                              AdjTransDemAncRefund.AsCurrency+
                                              AdjVATTransAncRefund.AsCurrency+
                                              AdjRPTax.AsCurrency+
                                              AdjFitAll.AsCurrency+
                                              AdjPARec.AsCurrency+

                                              AdjOtherGenRateAdj.AsCurrency+
                                              AdjOtherTransDemandCostAdj.AsCurrency+
                                              AdjOtherTransCostAdj.AsCurrency+
                                              AdjOtherSystemLossCostAdj.AsCurrency+
                                              AdjOtherLifelineRateCostAdj.AsCurrency+
                                              AdjOtherSeniorCitizenRateAdj.AsCurrency+
                                              Adjgram.AsCurrency;//49

   AdjreferenceAtmNo.Text   := referenceNo(BillCode.Text,FormatDateTime('YYMMDD',AdjPresentReadingDate.AsDateTime),AdjTotalBill.AsFloat);
   Adj.Post;

   end;
end;


procedure TAdjustmentRecordForm.DBEdit5KeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 then
   begin
     if (BillingData.AdjDiff.AsCurrency = 0) or
        (TRIM(BillingData.AdjDiff.Text) = '') then DBEdit2KeyPress(Sender,key)
     else
      begin
        if not (BillingData.Adj.State in [dsEdit,dsInsert]) then BillingData.Adj.Edit;
        ComputeBill;
        if sender = DBEdit4 then DBEdit45.SetFocus;
      end;
   end;
end;

procedure TAdjustmentRecordForm.BillFormClick(Sender: TObject);
begin
With BillingData do
 begin
   MRate.Close;
   MRate.SQL.Clear;
   MRate.SQL.Add('select * from MeterRate where mbillmonth = :billmonth');
   MRate.ParamByName('billmonth').Text  := EditBillMonth.Text;
   MRate.Open;

   if MRateWRSw.Text = '0' then
     begin
       MRate.Close;
       MRate.SQL.Clear;
       MRate.SQL.Add('select * from MeterRate where mbillmonth = :billmonth and');
       MRate.SQL.Add('                              ratecode = :ratecode');
       MRate.ParamByName('ratecode').Text   := MasterRateCode.Text;
       MRate.ParamByName('billmonth').Text  := EditBillMonth.Text;
       MRate.Open;
     end else
     begin
       MRate.Close;
       MRate.SQL.Clear;
       MRate.SQL.Add('select * from MeterRate where mbillmonth = :billmonth and');
       MRate.SQL.Add('                              WRateCode = :WRateCode');
       MRate.ParamByName('Wratecode').Text  := MasterWRateCode.Text;
       MRate.ParamByName('billmonth').Text  := EditBillMonth.Text;
       MRate.Open;
     end;

  Panel2.Left    := 191;
  Panel2.Top     := 115;
  Edit1.text    := AdjAccountNumber.text;
  Edit2.text    := AdjName.text;
  PresDate.text := FormatDateTime('MM/DD/YYYY',AdjPresentReadingDate.AsDateTime);
  PrevDate.text := FormatDateTime('MM/DD/YYYY',AdjPreviousReadingDate.AsDateTime);
  BillNum.Text  := AdjOEBRNumber.Text;
end;
Panel2.Visible := True;
Panel2.BringToFront;

BillNum.SetFocus;
PrevDate.SetFocus;
end;

procedure TAdjustmentRecordForm.EditAdjDateKeyPress(Sender: TObject;
  var Key: Char);
begin
   If Key = #13 then EditPresentReadingDate.SetFocus;
end;

procedure TAdjustmentRecordForm.DBEdit45KeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 then DBEdit2.SetFocus;
end;

procedure TAdjustmentRecordForm.DBEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 then
    begin
      With BillingData do
       begin
        If (Adj.State = dsinsert) or (Adj.State = dsedit) then Adj.Post;

        Adj.Edit;
        AdjDiff.AsCurrency := AdjPresentReadingKWH.AsCurrency - AdjPreviousReadingKWH.AsCurrency;
        ComputeBill;
        DBEdit52.SetFocus;
       end;
    end;
end;

procedure TAdjustmentRecordForm.DBEdit6KeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 then
   begin
    ComputeBill;
   end;
end;

procedure TAdjustmentRecordForm.DBGrid1Exit(Sender: TObject);
var c : char;
begin
  c := char(#13);
  EditBillMonthKeyPress(Sender,c);
end;

procedure TAdjustmentRecordForm.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = VK_DELETE) then
       Key := 0; {ignore}
end;

procedure TAdjustmentRecordForm.DBRadioGroup1Click(Sender: TObject);
begin
case DBRadioGroup1.ItemIndex of
    0:begin
      DBEdit43.Enabled := true;
      DBEdit44.Enabled := true;
      DBEdit45.Enabled := true;
      DBEdit2.Enabled  := true;
      DBEdit52.Enabled := true;
      DBEdit53.Enabled := true;
      DBEdit6.Enabled  := true;
      DBEdit54.Enabled := true;
      DBEdit55.Enabled := true;
      DBEdit56.Enabled := true;
      DBEdit58.Enabled := true;
    end;
    1:begin
      DBEdit43.Enabled := false;
      DBEdit44.Enabled := false;
      DBEdit45.Enabled := false;
      DBEdit2.Enabled  := false;
      DBEdit52.Enabled := false;
      DBEdit53.Enabled := false;
      DBEdit6.Enabled  := false;
      DBEdit54.Enabled := false;
      DBEdit55.Enabled := false;
      DBEdit56.Enabled := false;
      DBEdit58.Enabled := false;
    end;
     end;
end;

procedure TAdjustmentRecordForm.DBEdit40KeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 then BillFormClick(Self);
end;

Function PRateStr(Data : Currency) : String;
Var SStr : String;
begin
  If Data <> 0 then Str(Data:9:4,SStr) else SStr := '';
  PRateStr := JustStr(SStr,' ',9,0);
end;

procedure TAdjustmentRecordForm.PDJSillyLabel9Click(Sender: TObject);
begin
 With BillingData do
  begin
   Adj.Close;
   Adj.SQL.Clear;
   Adj.SQL.Add('select * from adjustment');
   Adj.SQL.Add('where postcode = ''1''');
   Adj.Open;
  end;
end;

procedure TAdjustmentRecordForm.powerSalesPerAreaQ2CalcFields(DataSet: TDataSet);
var
  totalB_H :Double;
  totalB_L :Double;
  totalB_R :Double;
begin
  totalB_H := RoundOff( powerSalesPerAreaQGenSysCharge_H.AsCurrency+
              powerSalesPerAreaQVATGenCO_H.AsCurrency+
              powerSalesPerAreaQTCTransSystemCharge_H.AsCurrency+
              powerSalesPerAreaQTCDemandCharge_H.AsCurrency+
              powerSalesPerAreaQVATTransCO_H.AsCurrency+
              powerSalesPerAreaQSystemLossCharge_H.AsCurrency+
              powerSalesPerAreaQVATSystemLossGenCO_H.AsCurrency+
              powerSalesPerAreaQDCDistributionCharge_H.AsCurrency+
              powerSalesPerAreaQDCDemandCharge_H.AsCurrency+
              powerSalesPerAreaQSCRetCustCharge_H.AsCurrency+
              powerSalesPerAreaQSCSupplySysCharge_H.AsCurrency+
              powerSalesPerAreaQMCRetailCustCharge_H.AsCurrency+
              powerSalesPerAreaQMCSystemCharge_H.AsCurrency+
              powerSalesPerAreaQLifelineDiscSubs_H.AsCurrency+
              powerSalesPerAreaQICCrossSubsidyCharge_H.AsCurrency+
              powerSalesPerAreaQPowerActRateRed_H.AsCurrency+
              powerSalesPerAreaQSCDisc_H.AsCurrency+
              powerSalesPerAreaQPARec_H.AsCurrency+
              powerSalesPerAreaQVATDist_H.AsCurrency+
              powerSalesPerAreaQVatDiscAmt_H.AsCurrency+
              //powerSalesPerAreaQRPTax_H.AsCurrency+
              powerSalesPerAreaQMCC_H.AsCurrency+
              powerSalesPerAreaQUCEC_H.AsCurrency+
              powerSalesPerAreaQUCME_H.AsCurrency+
              powerSalesPerAreaQUCNPCStrandedContCost_H.AsCurrency+
              powerSalesPerAreaQUCNPCStrandedDebts_H.AsCurrency+
              powerSalesPerAreaQFitall_H.AsCurrency+
              powerSalesPerAreaQgram_H.AsCurrency);

  totalB_L := RoundOff( powerSalesPerAreaQGenSysCharge_L.AsCurrency+
              powerSalesPerAreaQVATGenCO_L.AsCurrency+
              powerSalesPerAreaQTCTransSystemCharge_L.AsCurrency+
              powerSalesPerAreaQTCDemandCharge_L.AsCurrency+
              powerSalesPerAreaQVATTransCO_L.AsCurrency+
              powerSalesPerAreaQSystemLossCharge_L.AsCurrency+
              powerSalesPerAreaQVATSystemLossGenCO_L.AsCurrency+
              powerSalesPerAreaQDCDistributionCharge_L.AsCurrency+
              powerSalesPerAreaQDCDemandCharge_L.AsCurrency+
              powerSalesPerAreaQSCRetCustCharge_L.AsCurrency+
              powerSalesPerAreaQSCSupplySysCharge_L.AsCurrency+
              powerSalesPerAreaQMCRetailCustCharge_L.AsCurrency+
              powerSalesPerAreaQMCSystemCharge_L.AsCurrency+
              powerSalesPerAreaQLifelineDiscSubs_L.AsCurrency+
              powerSalesPerAreaQICCrossSubsidyCharge_L.AsCurrency+
              powerSalesPerAreaQPowerActRateRed_L.AsCurrency+
              powerSalesPerAreaQSCDisc_L.AsCurrency+
              powerSalesPerAreaQPARec_L.AsCurrency+
              powerSalesPerAreaQVATDist_L.AsCurrency+
              powerSalesPerAreaQVatDiscAmt_L.AsCurrency+
              //powerSalesPerAreaQRPTax_L.AsCurrency+
              powerSalesPerAreaQMCC_L.AsCurrency+
              powerSalesPerAreaQUCEC_L.AsCurrency+
              powerSalesPerAreaQUCME_L.AsCurrency+
              powerSalesPerAreaQUCNPCStrandedContCost_L.AsCurrency+
              powerSalesPerAreaQUCNPCStrandedDebts_L.AsCurrency+
              powerSalesPerAreaQFitall_L.AsCurrency+
              powerSalesPerAreaQgram_L.AsCurrency);

  totalB_R := RoundOff( powerSalesPerAreaQGenSysCharge_R.AsCurrency+
              powerSalesPerAreaQVATGenCO_R.AsCurrency+
              powerSalesPerAreaQTCTransSystemCharge_R.AsCurrency+
              powerSalesPerAreaQTCDemandCharge_R.AsCurrency+
              powerSalesPerAreaQVATTransCO_R.AsCurrency+
              powerSalesPerAreaQSystemLossCharge_R.AsCurrency+
              powerSalesPerAreaQVATSystemLossGenCO_R.AsCurrency+
              powerSalesPerAreaQDCDistributionCharge_R.AsCurrency+
              powerSalesPerAreaQDCDemandCharge_R.AsCurrency+
              powerSalesPerAreaQSCRetCustCharge_R.AsCurrency+
              powerSalesPerAreaQSCSupplySysCharge_R.AsCurrency+
              powerSalesPerAreaQMCRetailCustCharge_R.AsCurrency+
              powerSalesPerAreaQMCSystemCharge_R.AsCurrency+
              powerSalesPerAreaQLifelineDiscSubs_R.AsCurrency+
              powerSalesPerAreaQICCrossSubsidyCharge_R.AsCurrency+
              powerSalesPerAreaQPowerActRateRed_R.AsCurrency+
              powerSalesPerAreaQSCDisc_R.AsCurrency+
              powerSalesPerAreaQPARec_R.AsCurrency+
              powerSalesPerAreaQVATDist_R.AsCurrency+
              powerSalesPerAreaQVatDiscAmt_R.AsCurrency+
              //powerSalesPerAreaQRPTax_R.AsCurrency+
              powerSalesPerAreaQMCC_R.AsCurrency+
              powerSalesPerAreaQUCEC_R.AsCurrency+
              powerSalesPerAreaQUCME_R.AsCurrency+
              powerSalesPerAreaQUCNPCStrandedContCost_R.AsCurrency+
              powerSalesPerAreaQUCNPCStrandedDebts_R.AsCurrency+
              powerSalesPerAreaQFitall_R.AsCurrency+
              powerSalesPerAreaQgram_R.AsCurrency);


  powerSalesPerAreaQPowerActRateRed_H.AsFloat := totalB_H;
  powerSalesPerAreaQPowerActRateRed_L.AsFloat := totalB_L;
  powerSalesPerAreaQPowerActRateRed_R.AsFloat := totalB_R;

  powerSalesPerAreaQTotalPowerSales.AsFloat   := totalB_H+
                                                 totalB_L+
                                                 totalB_R+
                                                 powerSalesPerAreaQRPTaxDiff.AsCurrency;

  powerSalesPerAreaQTotalLess.AsFloat         := powerSalesPerAreaQUCNPCStrandedDebtsDiff.AsCurrency +
                                                 powerSalesPerAreaQUCNPCStrandedContCostDiff.AsCurrency +
                                                 powerSalesPerAreaQVATSystemLossGenCODiff.AsCurrency+
                                                 powerSalesPerAreaQVATTransCODiff.AsCurrency+
                                                 powerSalesPerAreaQVATGenCODiff.AsCurrency+
                                                 powerSalesPerAreaQVATDistDiff.AsCurrency+
                                                 powerSalesPerAreaQVatDiscAmtDiff.AsCurrency+
                                                 powerSalesPerAreaQUCECDiff.AsCurrency+
                                                 powerSalesPerAreaQUCMEDiff.AsCurrency+
                                                 powerSalesPerAreaQMCCDiff.AsCurrency+
                                                 powerSalesPerAreaQRPTaxDiff.AsCurrency+
                                                 powerSalesPerAreaQFitallDiff.AsCurrency;

  powerSalesPerAreaQnetPowersales.AsFloat     := powerSalesPerAreaQTotalPowerSales.AsFloat -
                                                 powerSalesPerAreaQTotalLess.AsFloat;

{
ABVATGenCO
ABTCTransSystemCharge
ABTCDemandCharge
ABVATTransCO
ABSystemLossCharge
ABVATSystemLossGenCO
ABDCDistributionCharge
ABDCDemandCharge
ABSCRetCustCharge
ABSCSupplySysCharge
ABMCRetailCustCharge
ABMCSystemCharge
ABLifelineDiscSubs
ABICCrossSubsidyCharge
ABPowerActRateRed
ABSCDisc
ABPARec
ABVATDist
ABVatDiscAmt
ABRPTax
ABMCC
ABUCEC
ABUCME
ABUCNPCStrandedContCost
ABUCNPCStrandedDebts
ABFitall
ABgram}
end;

procedure TAdjustmentRecordForm.powerSalesPerAreaQCalcFields(DataSet: TDataSet);
var
  totalB_H :Double;
  totalB_L :Double;
  totalB_R :Double;
begin
  totalB_H := RoundOff( powerSalesPerAreaQGenSysCharge_H.AsCurrency+
              powerSalesPerAreaQVATGenCO_H.AsCurrency+
              powerSalesPerAreaQTCTransSystemCharge_H.AsCurrency+
              powerSalesPerAreaQTCDemandCharge_H.AsCurrency+
              powerSalesPerAreaQVATTransCO_H.AsCurrency+
              powerSalesPerAreaQSystemLossCharge_H.AsCurrency+
              powerSalesPerAreaQVATSystemLossGenCO_H.AsCurrency+
              powerSalesPerAreaQDCDistributionCharge_H.AsCurrency+
              powerSalesPerAreaQDCDemandCharge_H.AsCurrency+
              powerSalesPerAreaQSCRetCustCharge_H.AsCurrency+
              powerSalesPerAreaQSCSupplySysCharge_H.AsCurrency+
              powerSalesPerAreaQMCRetailCustCharge_H.AsCurrency+
              powerSalesPerAreaQMCSystemCharge_H.AsCurrency+
              powerSalesPerAreaQLifelineDiscSubs_H.AsCurrency+
              powerSalesPerAreaQICCrossSubsidyCharge_H.AsCurrency+
              powerSalesPerAreaQPowerActRateRed_H.AsCurrency+
              powerSalesPerAreaQSCDisc_H.AsCurrency+
              powerSalesPerAreaQPARec_H.AsCurrency+
              powerSalesPerAreaQVATDist_H.AsCurrency+
              powerSalesPerAreaQVatDiscAmt_H.AsCurrency+
              //powerSalesPerAreaQRPTax_H.AsCurrency+
              powerSalesPerAreaQMCC_H.AsCurrency+
              powerSalesPerAreaQUCEC_H.AsCurrency+
              powerSalesPerAreaQUCME_H.AsCurrency+
              powerSalesPerAreaQUCNPCStrandedContCost_H.AsCurrency+
              powerSalesPerAreaQUCNPCStrandedDebts_H.AsCurrency+
              powerSalesPerAreaQFitall_H.AsCurrency+
              powerSalesPerAreaQgram_H.AsCurrency);

  totalB_L := RoundOff( powerSalesPerAreaQGenSysCharge_L.AsCurrency+
              powerSalesPerAreaQVATGenCO_L.AsCurrency+
              powerSalesPerAreaQTCTransSystemCharge_L.AsCurrency+
              powerSalesPerAreaQTCDemandCharge_L.AsCurrency+
              powerSalesPerAreaQVATTransCO_L.AsCurrency+
              powerSalesPerAreaQSystemLossCharge_L.AsCurrency+
              powerSalesPerAreaQVATSystemLossGenCO_L.AsCurrency+
              powerSalesPerAreaQDCDistributionCharge_L.AsCurrency+
              powerSalesPerAreaQDCDemandCharge_L.AsCurrency+
              powerSalesPerAreaQSCRetCustCharge_L.AsCurrency+
              powerSalesPerAreaQSCSupplySysCharge_L.AsCurrency+
              powerSalesPerAreaQMCRetailCustCharge_L.AsCurrency+
              powerSalesPerAreaQMCSystemCharge_L.AsCurrency+
              powerSalesPerAreaQLifelineDiscSubs_L.AsCurrency+
              powerSalesPerAreaQICCrossSubsidyCharge_L.AsCurrency+
              powerSalesPerAreaQPowerActRateRed_L.AsCurrency+
              powerSalesPerAreaQSCDisc_L.AsCurrency+
              powerSalesPerAreaQPARec_L.AsCurrency+
              powerSalesPerAreaQVATDist_L.AsCurrency+
              powerSalesPerAreaQVatDiscAmt_L.AsCurrency+
              //powerSalesPerAreaQRPTax_L.AsCurrency+
              powerSalesPerAreaQMCC_L.AsCurrency+
              powerSalesPerAreaQUCEC_L.AsCurrency+
              powerSalesPerAreaQUCME_L.AsCurrency+
              powerSalesPerAreaQUCNPCStrandedContCost_L.AsCurrency+
              powerSalesPerAreaQUCNPCStrandedDebts_L.AsCurrency+
              powerSalesPerAreaQFitall_L.AsCurrency+
              powerSalesPerAreaQgram_L.AsCurrency);

  totalB_R := RoundOff( powerSalesPerAreaQGenSysCharge_R.AsCurrency+
              powerSalesPerAreaQVATGenCO_R.AsCurrency+
              powerSalesPerAreaQTCTransSystemCharge_R.AsCurrency+
              powerSalesPerAreaQTCDemandCharge_R.AsCurrency+
              powerSalesPerAreaQVATTransCO_R.AsCurrency+
              powerSalesPerAreaQSystemLossCharge_R.AsCurrency+
              powerSalesPerAreaQVATSystemLossGenCO_R.AsCurrency+
              powerSalesPerAreaQDCDistributionCharge_R.AsCurrency+
              powerSalesPerAreaQDCDemandCharge_R.AsCurrency+
              powerSalesPerAreaQSCRetCustCharge_R.AsCurrency+
              powerSalesPerAreaQSCSupplySysCharge_R.AsCurrency+
              powerSalesPerAreaQMCRetailCustCharge_R.AsCurrency+
              powerSalesPerAreaQMCSystemCharge_R.AsCurrency+
              powerSalesPerAreaQLifelineDiscSubs_R.AsCurrency+
              powerSalesPerAreaQICCrossSubsidyCharge_R.AsCurrency+
              powerSalesPerAreaQPowerActRateRed_R.AsCurrency+
              powerSalesPerAreaQSCDisc_R.AsCurrency+
              powerSalesPerAreaQPARec_R.AsCurrency+
              powerSalesPerAreaQVATDist_R.AsCurrency+
              powerSalesPerAreaQVatDiscAmt_R.AsCurrency+
              //powerSalesPerAreaQRPTax_R.AsCurrency+
              powerSalesPerAreaQMCC_R.AsCurrency+
              powerSalesPerAreaQUCEC_R.AsCurrency+
              powerSalesPerAreaQUCME_R.AsCurrency+
              powerSalesPerAreaQUCNPCStrandedContCost_R.AsCurrency+
              powerSalesPerAreaQUCNPCStrandedDebts_R.AsCurrency+
              powerSalesPerAreaQFitall_R.AsCurrency+
              powerSalesPerAreaQgram_R.AsCurrency);


  powerSalesPerAreaQTotalbill_H.AsFloat := totalB_H;
  powerSalesPerAreaQTotalbill_L.AsFloat := totalB_L;
  powerSalesPerAreaQTotalbill_R.AsFloat := totalB_R;

  powerSalesPerAreaQTotalPowerSales.AsFloat   := totalB_H+
                                                 totalB_L+
                                                 totalB_R+
                                                 powerSalesPerAreaQRPTaxDiff.AsCurrency;

  powerSalesPerAreaQTotalLess.AsFloat         := powerSalesPerAreaQUCNPCStrandedDebtsDiff.AsCurrency +
                                                 powerSalesPerAreaQUCNPCStrandedContCostDiff.AsCurrency +
                                                 powerSalesPerAreaQVATSystemLossGenCODiff.AsCurrency+
                                                 powerSalesPerAreaQVATTransCODiff.AsCurrency+
                                                 powerSalesPerAreaQVATGenCODiff.AsCurrency+
                                                 powerSalesPerAreaQVATDistDiff.AsCurrency+
                                                 powerSalesPerAreaQVatDiscAmtDiff.AsCurrency+
                                                 powerSalesPerAreaQUCECDiff.AsCurrency+
                                                 powerSalesPerAreaQUCMEDiff.AsCurrency+
                                                 powerSalesPerAreaQMCCDiff.AsCurrency+
                                                 powerSalesPerAreaQRPTaxDiff.AsCurrency+
                                                 powerSalesPerAreaQFitallDiff.AsCurrency;

  powerSalesPerAreaQnetPowersales.AsFloat     := (totalB_H+
                                                 totalB_L+
                                                 totalB_R+
                                                 powerSalesPerAreaQRPTaxDiff.AsCurrency) -
                                                 powerSalesPerAreaQTotalLess.AsFloat;
end;

procedure TAdjustmentRecordForm.PDJSillyLabel10Click(Sender: TObject);
begin
 With BillingData do
  begin
   Adj.Close;
   Adj.SQL.Clear;
   Adj.SQL.Add('select * from adjustment order by entry desc');
   Adj.Open;
  end;
end;

procedure TAdjustmentRecordForm.PDJSillyLabel1Click(Sender: TObject);
Var CancelOC : TMyQuery;
    monY     : String;
    currMY   : String;
    refNo_str: String;
    refNo    : Integer;
begin
  {if (Length(billingdata.AdjAddress.Text)<=3) or
  (Length(billingdata.AdjAccountNumber.Text)<=5) or
  (Length(billingdata.AdjName.text)<=2) then
  begin
     MessageDlg('Please complete adjustment details.', mtInformation, [mbOK], 0);
     exit;
  end;}

  if (DBRadioGroup1.ItemIndex = 0) or (DBRadioGroup1.ItemIndex = 1) then
  begin
    if Length(BillingData.AdjAccountNumber.Text)<=5  then


    if (MessageDlg('Will now select all adjustment records that were not yet posted.'+#13+#10+
                   'Code 1 Update will update the A/R, Unpaidbills and Master if same bill month.'+#13+#10+
                   'Code 2 Update will cancel the bills posted in the A/R Ledger and Unpaid Bills.'+#13+#10+'Proceed ?', mtConfirmation, [mbYes, mbNo], 0) = mrNo) then exit;

    Memo1.Lines.Clear;

    UpdateARLedger.Execute;
    Memo1.Lines.Add('Records updated in the A/R Ledger : '+IntToStr(UpdateARLedger.RowsAffected));

    UpdateVATLedger.Execute;
    Memo1.Lines.Add('Records updated in the VAT Ledger : '+IntToStr(UpdateVATLedger.RowsAffected));

    UpdateUnpaidBills.Execute;
    Memo1.Lines.Add('Records updated in the Unpaid Bills : '+IntToStr(UpdateUnpaidBills.RowsAffected));

    UpdateMaster.Execute;
    Memo1.Lines.Add('Records updated in the Master File : '+IntToStr(UpdateMaster.RowsAffected));

    UpdateBillhistory.Execute;
    Memo1.Lines.Add('Records updated in the Billing History File : '+IntToStr(UpdateBillhistory.RowsAffected));

    UpdateLateBillHistory.Execute;
    Memo1.Lines.Add('Records updated in the Late Billing History File : '+IntToStr(UpdateBillhistory.RowsAffected));

    CancelARLedger.Execute;
    Memo1.Lines.Add('Records cancelled in the A/R Ledger : '+IntToStr(CancelARLedger.RowsAffected));

    CancelVATLedger.Execute;
    Memo1.Lines.Add('Records cancelled in the VAT Ledger : '+IntToStr(CancelVATLedger.RowsAffected));

    CancelUnpaidBills.Execute;
    Memo1.Lines.Add('Records cancelled in the Unpaid Bills : '+IntToStr(CancelUnpaidBills.RowsAffected));

    CancelMaster.Execute;
    Memo1.Lines.Add('Records cancelled in the Master File : '+IntToStr(CancelMaster.RowsAffected));

    CancelBillHistory.Execute;
    Memo1.Lines.Add('Records cancelled in the Billing History File : '+IntToStr(CancelMaster.RowsAffected));

    CancelOC := TMyQuery.Create(Self);
    CancelOC.Connection := BillingData.MyConnection1;
    CancelOC.SQL.Clear;
    CancelOC.SQL.Add('delete from zaneco.OCLedger using zaneco.ocledger, zaneco.adjustment where');
    CancelOC.SQL.Add('       ocledger.Billmonth = adjustment.billmonth and');
    CancelOC.SQL.Add('       ocledger.Code = adjustment.Code and');
    CancelOC.SQL.Add('       adjustment.postcode = ''1'' and');
    CancelOC.SQL.Add('       adjustment.adjustmentcode = ''2''');
    CancelOC.Execute;
    Memo1.Lines.Add('Records cancelled in the OC Ledger : '+IntToStr(CancelOC.RowsAffected));

    //===============================================================
    //Generate reference ADJ number==================================   order by a.entry desc limit 1
    currMY := FormatDateTime('MMYY',now);

    tmpQry.Close;
    tmpQry.SQL.Clear;
    tmpQry.SQL.Add('Select adj.* from (');
    tmpQry.SQL.Add('(Select null as idAdjDeleted,a.*,null as dateDeleted,null as user from adjustment a where a.postcode = 2 and a.referenceAdjNo is not null)');
    tmpQry.SQL.Add('union ');
    tmpQry.SQL.Add('(Select b.* from adjustmentTrail b where b.postcode = 2 and b.referenceAdjNo is not null)');
    tmpQry.SQL.Add(') adj order by adj.entry desc limit 1 ');
    tmpQry.Open;

    if (not tmpQry.IsEmpty ) and (Length(tmpQry.FieldByName('referenceAdjNo').Text)>=12) then
      begin
         if(copy(tmpQry.FieldByName('referenceAdjNo').Text,5,4)= currMY) then
          begin
              refNo := StrToInt(copy(tmpQry.FieldByName('referenceAdjNo').Text,9,4))+1;
              refNo_Str := 'ADJ-'+currMY + JustStr(IntToStr(refNo),'0',4,1);
          end;
      end
    else
      begin
         refNo_str := 'ADJ-'+currMY+'0001';
      end;
    //===============================================================
    //===============================================================

    UpdateAdjustment.ParamByName('referenceAdjNo').Text := refNo_str;
    UpdateAdjustment.Execute;
    Memo1.Lines.Add('Records updated in the Adjustment File : '+IntToStr(UpdateAdjustment.RowsAffected));

    MessageDlg('Done.....', mtInformation, [mbOK], 0);

    billingdata.adj.Refresh;
    enableTextEditor(false);

  end
  else
  begin
    messagedlg('Please select adjustment option..',mtError,[mbOK],0);
  end;
end;

procedure TAdjustmentRecordForm.PrintClick(Sender: TObject);
var
RateStr                                : String[18];
MonStr                                 : String[20];
FromMo,FromDay,ToMo,ToDay,ToYear       : String[2];
Constype                               : String[5];

begin
ShowMessage('Set Printer on ....');

Try
AssignFile(Lst,'LPT1');
Rewrite(Lst);
except
 ShowMessage('Printer not Ready');
 Exit;
end;

With BillingData do
begin

If BillNum.Text <> AdjOEBRNumber.text then
 begin
  if (Adj.State <> dsEdit) or (Adj.State <> dsInsert) then Adj.Edit;
  AdjOEBRNumber.Text := BillNum.Text;
  Adj.Post
 end;

MMaster.Close;
MMaster.ParamByName('accountnumber').Text := AdjAccountNumber.Text;
MMaster.Open;

If Copy(AdjBillMonth.Text,1,2) = '01' then MonStr := 'JANUARY'   + Copy(AdjBillMonth.Text,3,2);
If Copy(AdjBillMonth.Text,1,2) = '02' then MonStr := 'FEBRUARY'  + Copy(AdjBillMonth.Text,3,2);
If Copy(AdjBillMonth.Text,1,2) = '03' then MonStr := 'MARCH'     + Copy(AdjBillMonth.Text,3,2);
If Copy(AdjBillMonth.Text,1,2) = '04' then MonStr := 'APRIL'     + Copy(AdjBillMonth.Text,3,2);
If Copy(AdjBillMonth.Text,1,2) = '05' then MonStr := 'MAY'       + Copy(AdjBillMonth.Text,3,2);
If Copy(AdjBillMonth.Text,1,2) = '06' then MonStr := 'JUNE'      + Copy(AdjBillMonth.Text,3,2);
If Copy(AdjBillMonth.Text,1,2) = '07' then MonStr := 'JULY'      + Copy(AdjBillMonth.Text,3,2);
If Copy(AdjBillMonth.Text,1,2) = '08' then MonStr := 'AUGUST'    + Copy(AdjBillMonth.Text,3,2);
If Copy(AdjBillMonth.Text,1,2) = '09' then MonStr := 'SEPTEMBER' + Copy(AdjBillMonth.Text,3,2);
If Copy(AdjBillMonth.Text,1,2) = '10' then MonStr := 'OCTOBER'   + Copy(AdjBillMonth.Text,3,2);
If Copy(AdjBillMonth.Text,1,2) = '11' then MonStr := 'NOVEMBER'  + Copy(AdjBillMonth.Text,3,2);
If Copy(AdjBillMonth.Text,1,2) = '12' then MonStr := 'DECEMBER'  + Copy(AdjBillMonth.Text,3,2);
MonStr := JustStr(MonStr,' ',15,0);

RateStr := AdjRateCode.Text;
If AdjRateCode.Text = 'R' then RateStr := 'Res     ADJ';
If AdjRateCode.Text = 'C' then RateStr := 'Comm    ADJ';
If AdjRateCode.Text = 'P' then RateStr := 'Pub     ADJ';
If AdjRateCode.Text = 'I' then RateStr := 'Ind     ADJ';
If AdjRateCode.Text = 'S' then RateStr := 'STL     ADJ';
RateStr := JustStr(RateStr,' ',12,0);

FromMo          := Copy(DateToStr(AdjPreviousReadingDate.AsDateTime),1,2);
FromDay         := Copy(DateToStr(AdjPreviousReadingDate.AsDateTime),4,2);
ToMo            := Copy(DateToStr(AdjPresentReadingDate.AsDateTime),1,2);
ToDay           := Copy(DateToStr(AdjPresentReadingDate.AsDateTime),4,2);
ToYear          := Copy(DateToStr(AdjPresentReadingDate.AsDateTime),7,2);

 Writeln(Lst,#27+'P',#18);
 Write(Lst,#15);
 Writeln(Lst,AdjAccountNumber.Text);
 Application.ProcessMessages;
 Application.ProcessMessages;

 // Line 1
 Writeln(Lst,' ':14,MonStr,' ':32,
                    MonStr,' ':81,
                    MonStr);

 Application.ProcessMessages;
 Application.ProcessMessages;

 ConsType := '  ';
 If MMasterConsCode.Text = '1' then ConsType := 'R1';
 If MMasterConsCode.Text = '2' then ConsType := 'R2';

 // Line 2
 Writeln(Lst,JustStr(MMasterName.Text+' '+ConsType,' ',40,0),' ':6,
             JustStr(MMasterName.Text+' '+ConsType,' ',50,0),' ',
             JustStr(MMasterAccountNumber.Text,' ',21,2),'  ',
             MMasterRateCode.Text,'  ',
             JustStr(MMasterSerial.Text,' ',15,2),' ':4,
             JustStr(MMasterName.Text+' '+ConsType,' ',50,0),' ',
             JustStr(MMasterAccountNumber.Text,' ',21,2),'  ',
             MMasterRateCode.Text,'  ',
             JustStr(MMasterSerial.Text,' ',14,2));
 Application.ProcessMessages;
 Application.ProcessMessages;

 // Line 3
 Writeln(Lst,JustStr(MMasterAddress.Text,' ',40,0),' ':6,
             JustStr(MMasterAddress.Text,' ',50,0),' ':26,
             AdjKilowattused.AsCurrency:15:1,' ':5,
             JustStr(MMasterAddress.Text,' ',50,0),' ':26,
             AdjKilowattused.AsCurrency:14:1);

 Application.ProcessMessages;
 Application.ProcessMessages;

 // Line 4
 Writeln(Lst);
 Application.ProcessMessages;
 Application.ProcessMessages;

 // Line 5
 Writeln(Lst, AdjKilowattUsed.AsFloat:40:1,' ':6,
              DateToStr(AdjPreviousReadingDate.AsDateTime)                    ,' ',
              DateToStr(AdjPresentReadingDate.AsDateTime)                     ,' ',
              AdjPresentReadingKWH.Asfloat:10:1                               ,' ',
              AdjPreviousReadingKWH.Asfloat:10:1                              ,' ',
              AdjDiff.Asfloat:10:1                                            ,' ',
              AdjMultiplier.AsInteger:4                                       ,' ',
              AdjKilowattHour.Asfloat:12:1                                    ,' ':5,
              '          '                                                    ,' ':9,
              DateToStr(AdjPreviousReadingDate.AsDateTime)                    ,' ',
              DateToStr(AdjPresentReadingDate.AsDateTime)                     ,' ',
              AdjPresentReadingKWH.Asfloat:10:1                               ,' ',
              AdjPreviousReadingKWH.Asfloat:10:1                              ,' ',
              AdjDiff.Asfloat:10:1                                            ,' ',
              AdjMultiplier.AsInteger:4                                       ,' ',
              AdjKilowattHour.Asfloat:12:1                                    ,' ');
 Write(Lst);
 Application.ProcessMessages;
 Application.ProcessMessages;
 Application.ProcessMessages;
 Write(lst);
 Write(lst);

 // Line 6
 Write  (Lst,DateToStr(AdjPreviousReadingDate.AsDateTime)                     ,'    ',
             DateToStr(AdjPreviousReadingDate.AsDateTime));

 Writeln(Lst);
 Application.ProcessMessages;
 Application.ProcessMessages;
 Application.ProcessMessages;

 // Line 7
 Writeln(Lst,' ':15,AdjKilowattHour.AsFloat:10:1,AdjRateCode.text:5         ,' ':36,
                    PRateStr(MrateGenSysRate.AsCurrency)                        ,' ',
                    Format(AdjGenSysCharge.AsCurrency,'#,###,###.##')         ,' ':22,
                    PRateStr(MrateUCNPCStrandedDebtsRate.AsCurrency)            ,' ',
                    Format(AdjUCNPCStrandedDebts.AsCurrency ,'#,###,###.##')  ,' ':26,
                    PRateStr(MrateGenSysRate.AsCurrency)                        ,' ',
                    Format(AdjGenSysCharge.AsCurrency,'#,###,###.##')         ,' ':22,
                    PRateStr(MrateUCNPCStrandedDebtsRate.AsCurrency)            ,' ',
                    Format(AdjUCNPCStrandedDebts.AsCurrency ,'#,###,###.##')  );

 Application.ProcessMessages;
 Application.ProcessMessages;
 Application.ProcessMessages;

 // Line 8
 Writeln(Lst,' ':66,PRateStr(MrateTCDemandRate.AsCurrency)                      ,' ',
                    Format(AdjTCDemandCharge.AsCurrency,'#,###,###.##')         ,' ':22,
                    PRateStr(MrateUCNPCStrandedContCostRate.AsCurrency)         ,' ',
                    Format(AdjUCNPCStrandedContCost.AsCurrency,'#,###,###.##'),' ':26,
                    PRateStr(MrateTCDemandRate.AsCurrency)                      ,' ',
                    Format(AdjTCDemandCharge.AsCurrency,'#,###,###.##')         ,' ':22,
                    PRateStr(MrateUCNPCStrandedContCostRate.AsCurrency)         ,' ',
                    Format(AdjUCNPCStrandedContCost.AsCurrency,'#,###,###.##'));

 Application.ProcessMessages;
 Application.ProcessMessages;
 Application.ProcessMessages;

 // Line 9
 Writeln(Lst,JustStr(Format(AdjTotalBill.AsCurrency,'#,###,###.##'),' ',40,2)  ,' ':26,
                    PRateStr(MrateTCSystemRate.AsCurrency)                      ,' ',
                    Format(AdjTCTransSystemCharge.AsCurrency,'#,###,###.##')   ,' ':22,
                    PRateStr(MrateUCDUStrandedContCostRate.AsCurrency)         ,' ',
                    Format(AdjUCDUStrandedContCost.AsCurrency,'#,###,###.##')  ,' ':26,
                    PRateStr(MrateFOREXRate.AsCurrency)                        ,' ',
                    Format(AdjFOREXCharge.AsCurrency,'#,###,###.##')           ,' ':22,
                    PRateStr(MrateUCDUStrandedContCostRate.AsCurrency)         ,' ',
                    Format(AdjUCDUStrandedContCost.AsCurrency,'#,###,###.##') );
 Write(Lst);
 Application.ProcessMessages;
 Application.ProcessMessages;
 Application.ProcessMessages;

 // Line 10
 Writeln(Lst,' ':66,PRateStr(MrateSystemLossRate.AsCurrency)                  ,' ',
                    Format(AdjSystemLossCharge.AsCurrency,'#,###,###.##')     ,' ':22,
                    PRateStr(MrateUCMERate.AsCurrency)                        ,' ',
                    Format(AdjUCME.AsCurrency,'#,###,###.##')                 ,' ':26,
                    PRateStr(MrateSystemLossRate.AsCurrency)                  ,' ',
                    Format(AdjSystemLossCharge.AsCurrency,'#,###,###.##')     ,' ':22,
                    PRateStr(MrateUCMERate.AsCurrency)                        ,' ',
                    Format(AdjUCME.AsCurrency,'#,###,###.##')                 );
 Application.ProcessMessages;
 Application.ProcessMessages;
 Application.ProcessMessages;

 // Line 11
 Writeln(Lst,' ':5, Format(AdjUCME.AsCurrency,'#,###,###.##')                 ,' ':7,
                    Format(AdjVATGenCO.AsCurrency,'#,###,###.##')             ,' ':26,
                    PRateStr(0.00)                                            ,' ',
                    Format(0.00,'#,###,###.##')                               ,' ':22,
                    PRateStr(MrateUCEqTaxesAndRoyaltiesRate.AsCurrency)       ,' ',
                    Format(AdjUCEqTaxesAndRoyalties.AsCurrency,'#,###,###.##'),' ':26,
                    PRateStr(0.00)                                            ,' ',
                    Format(0.00,'#,###,###.##')                               ,' ':22,
                    PRateStr(MrateUCEqTaxesAndRoyaltiesRate.AsCurrency)       ,' ',
                    Format(AdjUCEqTaxesAndRoyalties.AsCurrency,'#,###,###.##'));

 Application.ProcessMessages;
 Application.ProcessMessages;
 Application.ProcessMessages;

 // Line 12
 Writeln(Lst,' ':5, Format(AdjUCEC.AsCurrency,'#,###,###.##')                 ,' ':7,
                    Format(AdjVATTransCO.AsCurrency,'#,###,###.##')           ,' ':26,
                    PRateStr(0.00)                                            ,' ',
                    Format(0.00,'#,###,###.##')                               ,' ':22,
                    PRateStr(MrateUCECRate.AsCurrency)                        ,' ',
                    Format(AdjUCEC.AsCurrency,'#,###,###.##')                 ,' ':26,
                    PRateStr(0.00)                                            ,' ',
                    Format(0.00,'#,###,###.##')     ,' ':22,
                    PRateStr(MrateUCECRate.AsCurrency)                          ,' ',
                    Format(AdjUCEC.AsCurrency,'#,###,###.##')                 );
 Application.ProcessMessages;
 Application.ProcessMessages;
 Application.ProcessMessages;

 // Line 13
 Writeln(Lst,' ':5, Format(AdjTransformerRental.AsCurrency,'#,###,###.##')    ,' ':7,
                    Format(AdjVATSystemLossGenCO.AsCurrency,'#,###,###.##')   ,' ':26,
                    PRateStr(MrateDCDemandRate.AsCurrency)                      ,' ',
                    Format(AdjDCDemandCharge.AsCurrency,'#,###,###.##')       ,' ':22,
                    PRateStr(MrateUCCrossSubsidyRemovalRate.AsCurrency)         ,' ',
                    Format(AdjUCCrossSubRemoval.AsCurrency,'#,###,###.##')    ,' ':26,
                    PRateStr(MrateDCDemandRate.AsCurrency)                      ,' ',
                    Format(AdjDCDemandCharge.AsCurrency,'#,###,###.##')       ,' ':22,
                    PRateStr(MrateUCCrossSubsidyRemovalRate.AsCurrency)         ,' ',
                    Format(AdjUCCrossSubRemoval.AsCurrency,'#,###,###.##')    );
 Application.ProcessMessages;
 Application.ProcessMessages;
 Application.ProcessMessages;

 // Line 14

 Writeln(Lst,' ':5, Format(AdjOCAmount1.AsCurrency,'#,###,###.##')            ,' ':7,
                    Format(AdjVATDist.AsCurrency,'#,###,###.##')              ,' ':26,
                    PRateStr(MrateDCSystemRate.AsCurrency)                      ,' ',
                    Format(AdjDCDistributionCharge.AsCurrency,'#,###,###.##') ,' ':22,
                    PRateStr(MrateLifelineSubsidyRate.AsCurrency)               ,' ',
                    Format(AdjLifelineDiscSubs.AsCurrency,'#,###,###.##')     ,' ':26,
                    PRateStr(MrateDCSystemRate.AsCurrency)                      ,' ',
                    Format(AdjDCDistributionCharge.AsCurrency,'#,###,###.##') ,' ':22,
                    PRateStr(MrateLifelineSubsidyRate.AsCurrency)               ,' ',
                    Format(AdjLifelineDiscSubs.AsCurrency,'#,###,###.##')     );
 Application.ProcessMessages;
 Application.ProcessMessages;
 Application.ProcessMessages;

 // Line 15
 Writeln(Lst,' ':5, Format(AdjOCAmount2.AsCurrency,'#,###,###.##')            ,' ':7,
                    Format(AdjOCAmount3.AsCurrency,'#,###,###.##')            ,' ':26,
                    PRateStr(0.00)                                              ,' ',
                    Format(AdjSCRetCustCharge.AsCurrency,'#,###,###.##')      ,' ':22,
                    PRateStr(MratePARARate.AsCurrency)                          ,' ',
                    Format(AdjPowerActRateRed.AsCurrency,'#,###,###.##')      ,' ':26,
                    PRateStr(0.00)                                              ,' ',
                    Format(AdjSCRetCustCharge.AsCurrency,'#,###,###.##')      ,' ':22,
                    PRateStr(MratePARARate.AsCurrency)                          ,' ',
                    Format(AdjPowerActRateRed.AsCurrency,'#,###,###.##')      );
 Application.ProcessMessages;
 Application.ProcessMessages;
 Application.ProcessMessages;

 // Line 16
 Writeln(Lst,' ':66,PRateStr(MrateSCSupplySysRate.AsCurrency)                   ,' ',
                    Format(AdjSCSupplySysCharge.AsCurrency,'#,###,###.##')    ,' ',
                    '                               ',
                    Format(AdjTransformerRental.AsCurrency,'#,###,###.##')    ,' ':26,
                    PRateStr(MrateSCSupplySysRate.AsCurrency)                   ,' ',
                    Format(AdjSCSupplySysCharge.AsCurrency,'#,###,###.##')    ,
                    '                               ',
                    Format(AdjTransformerRental.AsCurrency,'#,###,###.##'));
 Application.ProcessMessages;
 Application.ProcessMessages;
 Application.ProcessMessages;

 // Line 17
 Writeln(Lst,JustStr(' ',' ',40,2)                                     ,' ':26,
                    PRateStr(0.00)                                              ,' ',
                    Format(AdjMCRetailCustCharge.AsCurrency,'#,###,###.##')   ,' ',
                    '                               ',
                    Format(AdjOCAmount1.AsCurrency,'#,###,###.##')            ,' ':26,
                    PRateStr(0.00)                                              ,' ',
                    Format(AdjMCRetailCustCharge.AsCurrency,'#,###,###.##')   ,' ',
                    '                               ',
                    Format(AdjOCAmount1.AsCurrency,'#,###,###.##'));
 Application.ProcessMessages;
 Application.ProcessMessages;
 Application.ProcessMessages;

 // Line 18
 Writeln(Lst,' ':66,PRateStr(MrateMCSysRate.AsCurrency)                         ,' ',
                    Format(AdjMCSystemCharge.AsCurrency,'#,###,###.##')       ,' ':22,
                    PRateStr(MrateVATGenCo.AsCurrency)                          ,' ',
                    Format(AdjVATGenCO.AsCurrency,'#,###,###.##')             ,' ':26,
                    PRateStr(MrateMCSysRate.AsCurrency)                         ,' ',
                    Format(AdjMCSystemCharge.AsCurrency,'#,###,###.##')       ,' ':22,
                    PRateStr(MrateVATGenCo.AsCurrency)                          ,' ',
                    Format(AdjVATGenCO.AsCurrency,'#,###,###.##'));

 Application.ProcessMessages;
 Application.ProcessMessages;
 Application.ProcessMessages;

 // Line 19
 Writeln(Lst,' ':66,PRateStr(MrateICCrossSubsidyRate.AsCurrency)                ,' ',
                    Format(AdjICCrossSubsidyCharge.AsCurrency,'#,###,###.##') ,' ':22,
                    PRateStr(MrateVATTransCo.AsCurrency)                        ,' ',
                    Format(AdjVATTransCO.AsCurrency,'#,###,###.##')           ,' ':26,
                    PRateStr(MrateICCrossSubsidyRate.AsCurrency)                ,' ',
                    Format(AdjICCrossSubsidyCharge.AsCurrency,'#,###,###.##') ,' ':22,
                    PRateStr(MrateVATTransCo.AsCurrency)                          ,' ',
                    Format(AdjVATTransCO.AsCurrency,'#,###,###.##'));
 Application.ProcessMessages;
 Application.ProcessMessages;
 Application.ProcessMessages;

 // Line 20
 Writeln(Lst,' ':45,'                               ',
                    PRateStr(MrateLCCustMo.AsCurrency):13                                         ,' ':23,
                    PRateStr(MrateVATSystemLoss.AsCurrency)                     ,' ',
                    Format(AdjVATSystemLossGenCO.AsCurrency,'#,###,###.##')   ,' ',
                    '                                   ',
                    PRateStr(MrateLCCustMo.AsCurrency):13                                         ,' ':23,
                    PRateStr(MrateVATSystemLoss.AsCurrency)                     ,' ',
                    Format(AdjVATSystemLossGenCO.AsCurrency,'#,###,###.##'));
 Application.ProcessMessages;
 Application.ProcessMessages;
 Application.ProcessMessages;

 // Line 21
 Writeln(Lst,' ':66,PRateStr(MrateLoanCondo.AsCurrency)                         ,' ',
                    Format(AdjLoanCondo.AsCurrency,'#,###,###.##')              ,' ':22,
                    PRateStr(0.00)                                              ,' ',
                    Format(AdjVATDist.AsCurrency,'#,###,###.##')                ,' ':26,
                    PRateStr(MrateLoanCondo.AsCurrency)                         ,' ',
                    Format(AdjLoanCondo.AsCurrency,'#,###,###.##')              ,' ':22,
                    PRateStr(0.00)                                              ,' ',
                    Format(AdjVATDist.AsCurrency,'#,###,###.##'));
 // Line 22
 Writeln(Lst,'Prev Yr Adj PwrCost':66,PRateStr(MRatePrevYearAdjPowerCost.AsCurrency),' ',
                    Format(AdjPrevYearAdjPowerCost.AsCurrency,'#,###,###.##'),' ',
                    JustStr(' ',' ',10,1),'                     ',
                    Format(AdjVAT.AsCurrency,'#,###,###.##')            ,
                    'Prev Yr Adj PwrCost':26,
                    PRateStr(MRatePrevYearAdjPowerCost.AsCurrency),'  ',
                    Format(AdjPrevYearAdjPowerCost.AsCurrency,'#,###,###.##'),
                    JustStr(' ',' ',10,1),'                     ',
                    Format(AdjVAT.AsCurrency,'#,###,###.##'));

 // Line 23

 If AdjVATDiscAmt.AsCurrency <> 0 then
 Writeln(Lst,'SysLoss  UnderRecov':66,PRateStr(MRateSysLossUnderRecov.AsCurrency),' ',
                    Format(AdjSysLossUnderRecov.AsCurrency,'#,###,###.##'),' ',
                    ' ',AdjVATDisc.AsFloat:6:4,'% FINAL VAT WITHHELD   ',
                    Format(AdjVATDiscAmt.AsCurrency,'#,###,###.##')            ,
                    'SysLoss  UnderRecov':26,
                    PRateStr(MRateSysLossUnderRecov.AsCurrency),'  ',
                    Format(AdjSysLossUnderRecov.AsCurrency,'#,###,###.##'),
                    ' ',AdjVATDisc.AsFloat:6:4,'% FINAL VAT WITHHELD  ',
                    Format(AdjVATDiscAmt.AsCurrency,'#,###,###.##')) else
 Writeln(Lst,'SysLoss  UnderRecov':66,PRateStr(MRateSysLossUnderRecov.AsCurrency),' ',
                    Format(AdjSysLossUnderRecov.AsCurrency,'#,###,###.##'),' ',
                    '                               ',
                    Format(0.00,'#,###,###.##')            ,
                    'SysLoss  UnderRecov':26,
                    PRateStr(MRateSysLossUnderRecov.AsCurrency),'  ',
                    Format(AdjSysLossUnderRecov.AsCurrency,'#,###,###.##'),
                    '                                ',
                    Format(0.00,'#,###,###.##'));

 Writeln(lst);
 Writeln(lst);
 Application.ProcessMessages;
 Application.ProcessMessages;
 Application.ProcessMessages;

 // Line 22
 Writeln(Lst,JustStr(Format(AdjTotalBill.AsCurrency,'#,###,###.##'),' ',40,2),' ':82,
                    Format(AdjTotalBill.AsCurrency,'#,###,###.##'),' ':82,
                    Format(AdjTotalBill.AsCurrency,'#,###,###.##'));
 Application.ProcessMessages;
 Application.ProcessMessages;
 Application.ProcessMessages;
 Writeln(Lst);
 Application.ProcessMessages;
 Application.ProcessMessages;
 Application.ProcessMessages;

 Writeln(Lst,JustStr(AdjOEBRNumber.Text,' ',14,1):34 ,' ':50,
             JustStr(AdjOEBRNumber.Text,' ',14,0)    ,' ':82,
             JustStr(AdjOEBRNumber.Text,' ',14,0));

 Application.ProcessMessages;
 Application.ProcessMessages;
 Application.ProcessMessages;
 Writeln(lst);
 Application.ProcessMessages;
 Application.ProcessMessages;
 Application.ProcessMessages;
 Writeln(lst);
 Application.ProcessMessages;
 Application.ProcessMessages;
 Application.ProcessMessages;
 Writeln(lst);
 Application.ProcessMessages;
 Application.ProcessMessages;
 Application.ProcessMessages;

end;
CloseFile(Lst);
end;

procedure TAdjustmentRecordForm.PDJSillyLabel2Click(Sender: TObject);
begin
Panel2.Visible := False;
AdjFormClick(self);
end;

procedure TAdjustmentRecordForm.PrevDateKeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 then PresDate.SetFocus;
end;

procedure TAdjustmentRecordForm.PresDateKeyPress(Sender: TObject;
  var Key: Char);
begin
  If key =#13 then BillNum.SetFocus;
end;

procedure TAdjustmentRecordForm.BillNumKeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key =#13 then PrintClick(self);
end;

procedure TAdjustmentRecordForm.PDJSillyLabel4Click(Sender: TObject);
begin
  Panel3.Visible := False;
end;

// Adjustment Summary

procedure TAdjustmentRecordForm.PrintAdjustmentSummaryOld;
Var
PageShouldBeBilled      : Currency;
PageAsBilled            : Currency;
PageDifference          : Currency;

PageShouldBeBilledKWHR  : Currency;
PageAsBilledKWHR        : Currency;
PageDifferenceKWHR      : Currency;

GrandShouldBeBilled     : Currency;
GrandAsBilled           : Currency;
GrandDifference         : Currency;

GrandShouldBeBilledKWHR : Currency;
GrandAsBilledKWHR       : Currency;
GrandDifferenceKWHR     : Currency;

BreakDownKWHR           : Array[1..30,1..7] of Currency;
BreakDownAmount         : Array[1..30,1..7] of Currency;
GTotalKWHR              : Array[1..7] of Currency;
GTotalAmount            : Array[1..7] of Currency;
BrArea,BrRate           : Word;
PageCount,LineCount     : Word;
HeadSW                  : Word;
DifferKWHR              : Integer;
DifferAmount            : Currency;
I,J                     : Integer;



Procedure Heading;
begin
Writeln(Lst,#27 + 'P',#18,
            'PAGE            : ',PageCount);
Writeln(Lst,'DATE PRINTED    : ',DateToStr(Date));
Writeln(Lst,'OUTPUT          : LIST OF ADJUSTMENT TICKETS FOR '+AREA.Text);
Writeln(Lst,'INCLUSIVE DATES : ',DateToStr(DateFrom.Date),' - ',DateToStr(DateTo.Date));
Write(Lst,#27+'E',#15);
Writeln(Lst,'=============================================================================================================================================================');
Writeln(Lst,'R        |                              |   Bill   |Bill|______Should Be_______|______As Billed_______|______Difference______|                              |');
Writeln(Lst,'CAcct #  |        Consumer Name         |  Number  |Mon.|  KWH |    Amount     |  KWH |    Amount     |  KWH |    Amount     |           REMARKS            |');
Writeln(Lst,'=============================================================================================================================================================');
end;

Procedure Detail;
begin
With BillingData do
begin

Writeln(Lst,JustStr(AdjRateCode.Text,' ',1,0),
            JustStr(AdjAccountNumber.Text,' ',08,0),                                    '|',
            JustStr(AdjName.Text,' ',30,0),                                             '|',
            JustStr(AdjBillNumber.Text,' ',10,0),                                       '|',
            JustStr(AdjBillMonth.Text,' ',4,0),                                         '|',
            AdjKilowattHour.AsInteger:6,                                                '|',
            Format(AdjTotalBill.AsCurrency,'##,###,###.##'),                            '|',
            AdjABKilowattHour.AsInteger:6,                                              '|',
            Format(AdjABTotalBill.AsCurrency,'##,###,###.##'),                          '|',
            AdjABKilowattHour.AsInteger-AdjKilowattHour.AsInteger:6,                    '|',
            Format(AdjABTotalBill.AsCurrency-AdjTotalBill.AsCurrency,'##,###,###.##'),  '|',
            JustStr(AdjAddress.Text,' ',30,0),                                          '|');

PageShouldBeBilled      := PageShouldBeBilled + AdjTotalBill.AsCurrency;
PageAsBilled            := PageAsBilled + AdjABTotalBill.AsCurrency;
PageDifference          := PageDifference + (AdjTotalBill.AsCurrency-AdjABTotalBill.AsCurrency);

GrandShouldBeBilled     := GrandShouldBeBilled + AdjTotalBill.AsCurrency;
GrandAsBilled           := GrandAsBilled + AdjABTotalBill.AsCurrency;
GrandDifference         := GrandDifference + (AdjTotalBill.AsCurrency-AdjABTotalBill.AsCurrency);

PageShouldBeBilledKWHR  := PageShouldBeBilledKWHR+ AdjKilowattHour.AsInteger;
PageAsBilledKWHR        := PageAsBilledKWHR+ AdjABKilowattHour.AsInteger;
PageDifferenceKWHR      := PageDifferenceKWHR+ (AdjKilowattHour.AsInteger-AdjABKilowattHour.AsInteger);

GrandShouldBeBilledKWHR := GrandShouldBeBilledKWHR+ AdjKilowattHour.AsInteger;
GrandAsBilledKWHR       := GrandAsBilledKWHR+ AdjABKilowattHour.AsInteger;
GrandDifferenceKWHR     := GrandDifferenceKWHR+ (AdjKilowattHour.AsInteger-AdjABKilowattHour.AsInteger);

DifferKWHR              := (AdjKilowattHour.AsInteger-AdjABKilowattHour.AsInteger);
DifferAmount            := (AdjTotalBill.AsCurrency-AdjABTotalBill.AsCurrency);

BrRate := 0;
BrArea := 0;

If AdjRateCode.Text = 'R' then BrRate := 1;
If AdjRateCode.Text = 'C' then BrRate := 2;
If AdjRateCode.Text = 'P' then BrRate := 3;
If AdjRateCode.Text = 'S' then BrRate := 4;
If AdjRateCode.Text = 'E' then BrRate := 5;
If AdjRateCode.Text = 'B' then BrRate := 6;
If AdjRateCode.Text = 'I' then BrRate := 7;

If (AdjArea.Text = '001') or ('0'+AdjArea.Text = '001') then BrArea := 01;
If (AdjArea.Text = '002') or ('0'+AdjArea.Text = '002') then BrArea := 02;
If (AdjArea.Text = '003') or ('0'+AdjArea.Text = '003') then BrArea := 03;
If (AdjArea.Text = '004') or ('0'+AdjArea.Text = '004') then BrArea := 04;
If (AdjArea.Text = '005') or ('0'+AdjArea.Text = '005') then BrArea := 05;
If (AdjArea.Text = '006') or ('0'+AdjArea.Text = '006') then BrArea := 06;
If (AdjArea.Text = '007') or ('0'+AdjArea.Text = '007') then BrArea := 07;
If (AdjArea.Text = '008') or ('0'+AdjArea.Text = '008') then BrArea := 08;
If (AdjArea.Text = '009') or ('0'+AdjArea.Text = '009') then BrArea := 09;
If (AdjArea.Text = '010') or ('0'+AdjArea.Text = '010') then BrArea := 10;
If (AdjArea.Text = '011') or ('0'+AdjArea.Text = '011') then BrArea := 11;
If (AdjArea.Text = '012') or ('0'+AdjArea.Text = '012') then BrArea := 12;
If (AdjArea.Text = '013') or ('0'+AdjArea.Text = '013') then BrArea := 13;
If (AdjArea.Text = '014') or ('0'+AdjArea.Text = '014') then BrArea := 14;
If (AdjArea.Text = '015') or ('0'+AdjArea.Text = '015') then BrArea := 15;
If (AdjArea.Text = '016') or ('0'+AdjArea.Text = '016') then BrArea := 16;
If (AdjArea.Text = '017') or ('0'+AdjArea.Text = '017') then BrArea := 17;
If (AdjArea.Text = '018') or ('0'+AdjArea.Text = '018') then BrArea := 18;
If (AdjArea.Text = '019') or ('0'+AdjArea.Text = '019') then BrArea := 19;
If (AdjArea.Text = '020') or ('0'+AdjArea.Text = '020') then BrArea := 20;
If (AdjArea.Text = '021') or ('0'+AdjArea.Text = '021') then BrArea := 21;
If (AdjArea.Text = '022') or ('0'+AdjArea.Text = '022') then BrArea := 22;
If (AdjArea.Text = '023') or ('0'+AdjArea.Text = '023') then BrArea := 23;
If (AdjArea.Text = '024') or ('0'+AdjArea.Text = '024') then BrArea := 24;
If (AdjArea.Text = '025') or ('0'+AdjArea.Text = '025') then BrArea := 25;
If (AdjArea.Text = '026') or ('0'+AdjArea.Text = '026') then BrArea := 26;
If (AdjArea.Text = '027') or ('0'+AdjArea.Text = '027') then BrArea := 27;
If (AdjArea.Text = '028') or ('0'+AdjArea.Text = '028') then BrArea := 28;
If (AdjArea.Text = '029') or ('0'+AdjArea.Text = '029') then BrArea := 29;
If (AdjArea.Text = '030') or ('0'+AdjArea.Text = '030') then BrArea := 30;

If (BrRate <> 0) and (BrArea <> 0) then
  begin
    BreakDownKWHR[BrArea][BrRate]   := BreakDownKWHR[BrArea][BrRate] + DifferKWHR;
    BreakDownAmount[BrArea][BrRate] := BreakDownAmount[BrArea][BrRate] + DifferAmount;

    GTotalKWHR[BrRate]              := GTotalKWHR[BrRate] + DifferKWHR;
    GTotalAmount[BrRate]            := GTotalAmount[BrRate] + DifferAmount;
  end;

end;
end;


Procedure PrintPageTotal;
begin
Writeln(Lst,'-------------------------------------------------------------------------------------------------------------------------------------------------------------');
Writeln(Lst,'|                                            Page Total |',PageShouldBeBilledKWHR:6:0,'|', Format(PageShouldBeBilled,'##,###,###.##'),
                                                                    '|',PageAsBilledKWHR:6:0,'|',       Format(PageAsBilled      ,'##,###,###.##'),'|',
                                                                        PageDifferenceKWHR:6:0,'|',     Format(PageDifference    ,'##,###,###.##'));
Writeln(Lst,'-------------------------------------------------------------------------------------------------------------------------------------------------------------');
PageShouldBeBilled      := 0;
PageAsBilled            := 0;
PageDifference          := 0;

PageShouldBeBilledKWHR  := 0;
PageAsBilledKWHR        := 0;
PageDifferenceKWHR      := 0;
end;

Procedure PrintGrandTotal;
begin
Writeln(Lst,'|                                           Grand Total |',GrandShouldBeBilledKWHR:6:0,'|', Format(GrandShouldBeBilled,'##,###,###.##'),
                                                                    '|',GrandAsBilledKWHR:6:0,'|',       Format(GrandAsBilled      ,'##,###,###.##'),'|',
                                                                        GrandDifferenceKWHR:6:0,'|',     Format(GrandDifference    ,'##,###,###.##'));
Writeln(Lst,'=============================================================================================================================================================');
end;

Procedure Signatories;
begin
Writeln(Lst,#18,#27+'M');
Writeln(Lst);
Writeln(Lst);
Writeln(Lst,'CERTIFIED CORRECT:      NOTED BY:                    REVIEWED BY:              RECEIVED BY:');
Writeln(Lst);
Writeln(Lst);
Writeln(Lst,'----------------------  ---------------------------  ------------------------  ----------------------');
Writeln(Lst,JustStr(Certified.Text,' ',20,0),
'    ___________________________  ________________________  ______________________');
Writeln(Lst,JustStr(CertifiedPos.Text,' ',20,0),
'    Finance Services Dept. Mgr.  Audit Services Dept. Mgr. Dept. Asst. for Accounting/Cashiering');
end;


begin

  With BillingData do
    begin

    DBGrid1.DataSource := Nil;
    Adj.Close;
    Adj.SQL.Clear;
    Adj.SQL.Add('select * from adjustment');
    Adj.SQL.Add('where adjdate between :datefrom and :dateto');
    Adj.ParamByName('datefrom').AsDate := Datefrom.Date;
    Adj.ParamByName('dateto').AsDate   := Dateto.Date;
    Adj.Open;

    If Adj.IsEmpty then
      begin
        MessageDlg('There are no records for that area amd period covered.....', mtError, [mbOK], 0);
        adj.Close;
        exit;
      end;

    Summ.ParamByName('datefrom').AsDate := Datefrom.Date;
    Summ.ParamByName('dateto').AsDate   := DateTo.Date;
    Summ.ParamByName('area').Text       := Area.Text;
    summ.Open;

    Try
    AssignFile(Lst,'LPT1');
    Rewrite(Lst);
    except
     ShowMessage('Printer not Ready');
     Exit;
    end;


    Gauge1.Progress := 0;
    Gauge1.MinValue := 1;
    Gauge1.MaxValue := Adj.RecordCount;
    Adj.First;

    PageShouldBeBilled      := 0;
    PageAsBilled            := 0;
    PageDifference          := 0;

    PageShouldBeBilledKWHR  := 0;
    PageAsBilledKWHR        := 0;
    PageDifferenceKWHR      := 0;

    GrandShouldBeBilled     := 0;
    GrandAsBilled           := 0;
    GrandDifference         := 0;
    GrandShouldBeBilledKWHR := 0;
    GrandAsBilledKWHR       := 0;
    GrandDifferenceKWHR     := 0;

    FillChar(BreakDownKWHR,SizeOf(BreakDownKWHR),#0);
    FillChar(BreakDownAmount,SizeOf(BreakDownAmount),#0);
    FillChar(GTotalKWHR,SizeOf(GTotalKWHR),#0);
    FillChar(GTotalAmount,SizeOf(GTotalAmount),#0);
    PageCount := 1;
    LineCount := 0;
    HeadSw    := 0;

    while not Adj.Eof do
     begin
     Gauge1.AddProgress(1);
     Application.ProcessMessages;

     If HeadSW = 0 then
       begin
         HeadSW := 1;
         Heading;
       end;

     If (AdjArea.Text = Area.Text) or
        ('0'+AdjArea.Text = Area.Text) then
        begin

         Detail;
         Inc(LineCount);
         If LineCount = 50 then
           begin
            HeadSW    := 0;
            LineCount := 0;
            PrintPageTotal;
            Inc(PageCount);
            Write(Lst,#12);
           end;
        end;
     Adj.Next;
     end;
    Adj.Filtered := False;
    end;

If LineCount > 0 then PrintPageTotal;
PrintGrandTotal;
Inc(PageCount);
Write(Lst,#12);

Writeln(Lst,#27 + 'P',#18,
            'PAGE            : ',PageCount);
Writeln(Lst,'DATE PRINTED    : ',DateToStr(Date));
Writeln(Lst,'OUTPUT          : ADJUSTMENT DIFFERENCE BREAKDOWN');
Writeln(Lst,'INCLUSIVE DATES : ',DateToStr(DateFrom.Date),' - ',DateToStr(DateTo.Date),#15);
Writeln(Lst,'===============================================================================================================================================================================');
Writeln(Lst,'|Area |______Residential______|______Commercial_______|______Government_______|_______St.Light________|_______Extra Lt._______|__________BAPA_________|______Industrial_______|');
Writeln(Lst,'|     |    KWHR|       Amount |    KWHR|       Amount |     KWHR|      Amount |    KWHR|       Amount |    KWHR|       Amount |    KWHR|       Amount |    KWHR|       Amount |');
Writeln(Lst,'===============================================================================================================================================================================');

For I := 1 to 30 do
  begin

   If (BreakDownAmount[I][1] <> 0) or
      (BreakDownAmount[I][2] <> 0) or
      (BreakDownAmount[I][3] <> 0) or
      (BreakDownAmount[I][4] <> 0) or
      (BreakDownAmount[I][5] <> 0) or
      (BreakDownAmount[I][6] <> 0) or
      (BreakDownAmount[I][7] <> 0) then
       begin
        Write(Lst,'|',I:4,'.|');
          For J := 1 to 7 do
            Write(Lst,BreakDownKWHR[I][J]:8:1,'|',
                      Format(BreakDownAmount[I][J],'#,###,###.##'),'|');
        Writeln(Lst);
       end;
  end;

Writeln(Lst,'===============================================================================================================================================================================');
Write(Lst,'|Total|');
For J := 1 to 7 do
  Write(Lst,GTotalKWHR[J]:8:1,'|',
            Format(GTotalAmount[J],'#,###,###.##'),'|');
Writeln(Lst);
Writeln(Lst,'===============================================================================================================================================================================');

Write(Lst,#12);
Inc(PageCount);
Writeln(Lst,#27 + 'P',#18,
            'PAGE            : ',PageCount);
Writeln(Lst,'DATE PRINTED    : ',DateToStr(Date));
Writeln(Lst,'OUTPUT          : ADJUSTMENT SUMMARY');
Writeln(Lst,'INCLUSIVE DATES : ',DateToStr(DateFrom.Date),' - ',DateToStr(DateTo.Date),#15);
Writeln(Lst,'=======================================================================================');
Writeln(Lst,'|      DESCRIPTION           |        AS BILLED |   SHLD BE BILLED |       DIFFERENCE |');
Writeln(Lst,'=======================================================================================');
Writeln(Lst,'| Gross Power Sales          |',Format(SummabTotalBill.AsCurrency,'#,###,###,###.##'),'|',
                                             Format(SummTotalBill.AsCurrency,'#,###,###,###.##'),'|',
                                             Format(SummdfTotalBill.AsCurrency,'#,###,###,###.##'),'|');

Writeln(Lst,'| Less:                      |                  |                  |                  |');
Writeln(Lst,'| Environment                |',Format(Summabucec.AsCurrency,'#,###,###,###.##'),'|',
                                             Format(Summucec.AsCurrency,'#,###,###,###.##'),'|',
                                             Format(Summdfucec.AsCurrency,'#,###,###,###.##'),'|');

Writeln(Lst,'| Missionary Electrification |',Format(Summabucme.AsCurrency,'#,###,###,###.##'),'|',
                                             Format(Summucme.AsCurrency,'#,###,###,###.##'),'|',
                                             Format(Summdfucme.AsCurrency,'#,###,###,###.##'),'|');

Writeln(Lst,'| VAT Distribution           |',Format(SummabVATDist.AsCurrency,'#,###,###,###.##'),'|',
                                             Format(SummVATDist.AsCurrency,'#,###,###,###.##'),'|',
                                             Format(SummdfVATDist.AsCurrency,'#,###,###,###.##'),'|');

Writeln(Lst,'| VAT Genco                  |',Format(SummabVATGenCO.AsCurrency,'#,###,###,###.##'),'|',
                                             Format(SummVATGenCO.AsCurrency,'#,###,###,###.##'),'|',
                                             Format(SummdfVATGenco.AsCurrency,'#,###,###,###.##'),'|');

Writeln(Lst,'| VAT TransCO                |',Format(SummabVATTransCO.AsCurrency,'#,###,###,###.##'),'|',
                                             Format(SummVATTransCO.AsCurrency,'#,###,###,###.##'),'|',
                                             Format(SummdfVATTransco.AsCurrency,'#,###,###,###.##'),'|');

Writeln(Lst,'| VAT System Loss            |',Format(SummabVATSystemLoss.AsCurrency,'#,###,###,###.##'),'|',
                                             Format(SummVATSystemLoss.AsCurrency,'#,###,###,###.##'),'|',
                                             Format(SummdfVATSystemLoss.AsCurrency,'#,###,###,###.##'),'|');

Writeln(Lst,'| Transformer Rental         |',Format(Summabtransformerrental.AsCurrency,'#,###,###,###.##'),'|',
                                             Format(Summtransformerrental.AsCurrency,'#,###,###,###.##'),'|',
                                             Format(SummdfTransformerRental.AsCurrency,'#,###,###,###.##'),'|');
Writeln(Lst,'=======================================================================================');
Writeln(Lst,'| Net Power Sales            |',Format(SummabNetBill.AsCurrency,'#,###,###,###.##'),'|',
                                             Format(SummNetBill.AsCurrency,'#,###,###,###.##'),'|',
                                             Format(SummdfNetBill.AsCurrency,'#,###,###,###.##'),'|');
Writeln(Lst,'=======================================================================================');
Write(Lst,#12);
CloseFile(Lst);
DBGrid1.DataSource := BillingData.AdjSource;
Summ.Close;
ShowMessage('Done .....');
end;

procedure TAdjustmentRecordForm.EditAccountNumberKeyPress(Sender: TObject;
  var Key: Char);
begin
  If key=#13 then
   begin
    with BillingData do
     begin
        Master.Close;
        Master.SQL.Clear;
        Master.SQL.Add('select * from master where accountnumber = :accountnumber');
        Master.ParamByName('accountnumber').text := EditAccountNumber.Text;
        Master.Open;

        If Master.IsEmpty then
          begin
           Master.Close;
           MessageDlg('No records match...', mtError, [mbOK], 0);
           EditAccountNumber.SetFocus;
           enableTextEditor(false);
           exit;
          end;

        Adj.Append;
        AdjCode.Text                    := MasterCode.Text;
        AdjArea.Text                    := MasterArea.Text;
        AdjBook.Text                    := MasterBook.Text;
        AdjAccountNumber.Text           := MasterAccountNumber.Text;
        AdjSequence.Text                := MasterSequence.Text;
        AdjName.Text                    := MasterName.Text;
        AdjVATDisc.AsCurrency           := MasterVATDisc.AsCurrency;
        AdjABRateCode.Text              := MasterWRateCode.Text;
        AdjRateCode.Text                := MasterWRateCode.Text;
        AdjKilowattUsed.Text            := MasterKilowattUsed.Text;
        AdjABKilowattUsed.Text          := MasterKilowattUsed.Text;
        AdjMultiplier.Text              := MasterMultiplier.Text;
        AdjABMultiplier.Text            := MasterMultiplier.Text;
        AdjisGram.AsBoolean             := MasterisGram.AsBoolean;

        DBRadioGroup1.ItemIndex := 0;

        enableTextEditor(true);
        EditBillMonth.SetFocus;
      end;
   end;
end;

procedure TAdjustmentRecordForm.AdjFormClick(Sender: TObject);
begin
   signaQ.Close;
  Case RadioGroup5.ItemIndex of
   0 :signaQ.ParamByName('area').Text := 'Dipolog';
   1 :signaQ.ParamByName('area').Text := 'Pinan';
   2 :signaQ.ParamByName('area').Text := 'Sindangan';
   3 :signaQ.ParamByName('area').Text := 'Liloy';
  end;

  signaQ.Open;
  PreparedBy_Sum.TexT     := signaQAdjPreparedByName.Text;
  Position1_Sum.Text      := signaQAdjPreparedByPosition.Text;
  CheckedBy_Sum.Text      := signaQAdjCheckByName.Text;
  Position2_Sum.Text      := signaQAdjCheckByPosition.Text;
  ApprovedBy_Sum.Text     := signaQAdjApprovedByName.Text;
  Position3_Sum.Text      := signaQAdjApprovedByPosition.Text;
  address_Assgn_Sum.Text  := signaQAdjAddress.Text;

  NxHeaderPanel3.top  := 101;
  NxHeaderPanel3.Left := 90;
  NxHeaderPanel3.BringToFront;
  NxHeaderPanel3.Visible := true;
  {  Panel3.Left       := 90;
    Panel3.Top        := 101;
    Panel3.Width:= 424;
    Panel3.BringToFront;
    DateFrom.Date     := StartOfTheMonth(Now);
    DateTo.Date       := EndOfTheMonth(Now);
    Panel3.Visible    := True;}
  NxDatePicker1.Date := StartOfTheMonth(Now);
  NxDatePicker2.Date := EndOfTheMonth(Now);


end;

procedure TAdjustmentRecordForm.EditAddressKeyPress(Sender: TObject;
  var Key: Char);
begin
   If key = #13 then DBEdit4.SetFocus;
end;

procedure TAdjustmentRecordForm.PDJSillyLabel7Click(Sender: TObject);
begin
   Panel4.Visible := False;
end;

procedure TAdjustmentRecordForm.PDJSillyLabel5Click(Sender: TObject);
Var Diff : Currency ;
    UC   : Currency ;
    EVAT : Currency ;
    M    : TMyQuery ;
    bmonth : String;
    //BillMonthStr : String;
    accountNoStr : String;
begin
  with BillingData do begin
    isonumberQ.Close;
    isonumberQ.ParamByName('reporttype').Text := 'Adjustment Ticket';
    isonumberQ.Open;
  end;

   signaQ.Close;
  Case RadioGroup2.ItemIndex of
   0 :signaQ.ParamByName('area').Text := 'Dipolog';
   1 :signaQ.ParamByName('area').Text := 'Pinan';
   2 :signaQ.ParamByName('area').Text := 'Sindangan';
   3 :signaQ.ParamByName('area').Text := 'Liloy';
  end;

  signaQ.Open;
  PreparedBy.Text     := signaQAdjPreparedByName.Text;
  Position1.Text      := signaQAdjPreparedByPosition.Text;
  CheckedBy.Text      := signaQAdjCheckByName.Text;
  Position2.Text      := signaQAdjCheckByPosition.Text;
  ApprovedBy.Text     := signaQAdjApprovedByName.Text;
  Position3.Text      := signaQAdjApprovedByPosition.Text;
  address_Assgn.Text  := signaQAdjAddress.Text;


  Panel4.Left    := 45;
  Panel4.Top     := 41;
  Panel4.Visible := True;
  Panel4.BringToFront;


  With BillingData do
   begin

   //=======================================================
   //=======================================================
    BMonth := AdjBillMonth.Text;
    accountNoStr := AdjAccountNumber.Text;

    adjQuery.Close;
    adjQuery.MacroByName('ticket').Active      := true;
    adjQuery.MacroByName('summary').Active     := false;
    adjQuery.ParamByName('accountnumber').Text := accountNoStr;
    adjQuery.ParamByName('billmonth').Text     := BMonth;
    adjQuery.Open;

    

   rateQ.Close;
   rateQ.ParamByName('accountnumber').Text            := accountNoStr;
   rateQ.ParamByName('billmonth').Text                := BMonth;
   rateQ.Open;

   

   //========================================================
   //========================================================

    Diff := AdjABTotalBill.AsCurrency - AdjTotalBill.AsCurrency;

    UC   := (AdjABUCME.AsCurrency - AdjUCME.AsCurrency) +
            (AdjABUCEC.AsCurrency - AdjUCEC.AsCurrency);

    EVAT := AdjABVAT.AsCurrency - AdjVAT.AsCurrency;

    StringGrid1.Cells[0,0] := 'Account Code';
    StringGrid1.Cells[1,0] := 'Account Title';
    StringGrid1.Cells[2,0] := 'Debit';
    StringGrid1.Cells[3,0] := 'Credit';

    // Credit Side

    StringGrid1.Cells[0,1] := '140-142-10';
    StringGrid1.Cells[1,1] := 'Consumer Accts. Receivable DMO';
    StringGrid1.Cells[3,1] := Format(Diff-(UC+EVAT),'##,###,###.##');

    StringGrid1.Cells[0,2] := '140-143-42';
    StringGrid1.Cells[1,2] := 'A/R UC Missionary';
    StringGrid1.Cells[3,2] := Format(AdjABUCME.AsCurrency - AdjUCME.AsCurrency,'##,###,###.##');

    StringGrid1.Cells[0,3] := '140-143-43';
    StringGrid1.Cells[1,3] := 'A/R UC Environmental';
    StringGrid1.Cells[3,3] := Format(AdjABUCEC.AsCurrency - AdjUCEC.AsCurrency,'##,###,###.##');

    StringGrid1.Cells[0,4] := '140-143-46';
    StringGrid1.Cells[1,4] := 'A/R EVAT Distribution';
    StringGrid1.Cells[3,4] := Format((AdjABVATDist.AsCurrency+AdjABVATDistDiscAmt.AsCurrency) -
                                     (AdjVATDist.AsCurrency+AdjVATDistDiscAmt.AsCurrency),'##,###,###.##');

    StringGrid1.Cells[0,5] := '140-143-51';
    StringGrid1.Cells[1,5] := 'A/R EVAT Generation';
    StringGrid1.Cells[3,5] := Format((AdjABVATGenCO.AsCurrency+AdjABVATGenCODiscAmt.AsCurrency) -
                                     (AdjVATGEnCO.AsCurrency+AdjVATGenCODiscAmt.AsCurrency),'##,###,###.##');

    StringGrid1.Cells[0,6] := '140-143-55';
    StringGrid1.Cells[1,6] := 'A/R EVAT Transmission';
    StringGrid1.Cells[3,6] := Format((AdjABVATTransCO.AsCurrency+AdjABVATTranscoDiscAmt.AsCurrency) -
                                     (AdjVATTransCO.AsCurrency+AdjVATTranscoDiscAmt.AsCurrency),'##,###,###.##');

    StringGrid1.Cells[0,7] := '140-143-59';
    StringGrid1.Cells[1,7] := 'A/R EVAT System Loss';
    StringGrid1.Cells[3,7] := Format((AdjABVATSystemLossGenCO.AsCurrency+AdjABVATSystemLossDiscAmt.AsCurrency) -
                                     (AdjVATSystemLossGenCO.AsCurrency+AdjVATSystemLossDiscAmt.AsCurrency),'##,###,###.##');

    StringGrid1.Cells[0,8] := '140-142-15';
    StringGrid1.Cells[1,8] := 'A/R RFSC';
    StringGrid1.Cells[3,8] := Format(AdjABMCC.AsCurrency - AdjMCC.AsCurrency,'##,###,###.##');

    // Debit Side

    M := TMyQuery.Create(Self);
    M.Connection := BillingData.MyConnection1;
    M.SQL.Clear;
    M.SQL.Add('select wratecode from master where code = :code');
    M.ParamByName('code').Text      := AdjCode.Text;
    M.Open;

    if m.FieldByName('wratecode').Text = '' then
    begin

        If AdjRateCode.Text = 'R' then
          begin
            StringGrid1.Cells[0,9] := '311-440-00';
            StringGrid1.Cells[1,9] := 'Residential Sales';
          end;

        If AdjRateCode.Text = 'C' then
          begin
            StringGrid1.Cells[0,9] := '311-442-00';
            StringGrid1.Cells[1,9] := 'Commercial Sales';
          end;

        If AdjRateCode.Text = 'P' then
          begin
            StringGrid1.Cells[0,9] := '311-445-00';
            StringGrid1.Cells[1,9] := 'Public Bldg. Sales';
          end;

        If AdjRateCode.Text = 'S' then
          begin
            StringGrid1.Cells[0,9] := '311-444-00';
            StringGrid1.Cells[1,9] := 'Street Lights Sales';
          end;

        If AdjRateCode.Text = 'I' then
          begin
            StringGrid1.Cells[0,9] := '311-443-00';
            StringGrid1.Cells[1,9] := 'Industrials Sales';
          end;
    end
    else
    begin
        If M.FieldByName('wratecode').Text = 'R' then
          begin
            StringGrid1.Cells[0,9] := '311-440-00';
            StringGrid1.Cells[1,9] := 'Residential Sales';
          end;

        If M.FieldByName('wratecode').Text = 'L' then
          begin
            StringGrid1.Cells[0,9] := '311-449-00';
            StringGrid1.Cells[1,9] := 'Commercial Sales';
          end;

        If M.FieldByName('wratecode').Text = 'H' then
         begin
            StringGrid1.Cells[0,9] := '311-450-00';
            StringGrid1.Cells[1,9] := 'Public Bldg. Sales';
          end;
    end;

    StringGrid1.Cells[2,9] := Format(Diff-(UC+EVAT),'##,###,###.##');

    StringGrid1.Cells[0,10]  := '230-232-34';
    StringGrid1.Cells[1,10]  := 'A/P UC Missionary';
    StringGrid1.Cells[2,10]  := Format(AdjABUCME.AsCurrency - AdjUCME.AsCurrency,'##,###,###.##');

    StringGrid1.Cells[0,11] := '230-232-35';
    StringGrid1.Cells[1,11] := 'A/P UC Environmental';
    StringGrid1.Cells[2,11] := Format(AdjABUCEC.AsCurrency - AdjUCEC.AsCurrency,'##,###,###.##');

    StringGrid1.Cells[0,12] := '230-232-39';
    StringGrid1.Cells[1,12] := 'A/P EVAT Distribution';
    StringGrid1.Cells[2,12] := Format((AdjABVATDist.AsCurrency+AdjABVATDistDiscAmt.AsCurrency) -
                                     (AdjVATDist.AsCurrency+AdjVATDistDiscAmt.AsCurrency),'##,###,###.##');

    StringGrid1.Cells[0,13] := '230-232-41';
    StringGrid1.Cells[1,13] := 'A/P EVAT Generation';
    StringGrid1.Cells[2,13] := Format((AdjABVATGenCO.AsCurrency+AdjABVATGenCODiscAmt.AsCurrency) -
                                     (AdjVATGEnCO.AsCurrency+AdjVATGenCODiscAmt.AsCurrency),'##,###,###.##');

    StringGrid1.Cells[0,14] := '230-232-40';
    StringGrid1.Cells[1,14] := 'A/P EVAT Transmission';
    StringGrid1.Cells[2,14] := Format((AdjABVATTransCO.AsCurrency+AdjABVATTranscoDiscAmt.AsCurrency) -
                                     (AdjVATTransCO.AsCurrency+AdjVATTranscoDiscAmt.AsCurrency),'##,###,###.##');

    StringGrid1.Cells[0,15] := '230-232-43';
    StringGrid1.Cells[1,15] := 'A/P EVAT System Loss';
    StringGrid1.Cells[2,15] := Format((AdjABVATSystemLossGenCO.AsCurrency+AdjABVATSystemLossDiscAmt.AsCurrency) -
                                     (AdjVATSystemLossGenCO.AsCurrency+AdjVATSystemLossDiscAmt.AsCurrency),'##,###,###.##');

    StringGrid1.Cells[0,16] := '211-211-13';
    StringGrid1.Cells[1,16] := 'A/P RFSC';
    StringGrid1.Cells[2,16] := Format(AdjABMCC.AsCurrency -
                                      AdjMCC.AsCurrency,'##,###,###.##');

    StringGrid1.Cells[0,17] := '';
    StringGrid1.Cells[1,17] := 'TOTAL';
    StringGrid1.Cells[2,17] := Format(Diff,'##,###,###.##');
    StringGrid1.Cells[3,17] := Format(Diff,'##,###,###.##');

    //StringGrid1.SetFocus;
   end;
end;

procedure TAdjustmentRecordForm.PDJSillyLabel6Click(Sender: TObject);
Var J : Integer;
    bmonth : String;
    BillMonthStr : String;
begin
  with billingdata do
  begin
    BMonth := AdjBillMonth.Text;
    If Copy(BMonth,1,2) = '01' then BillMonthStr := 'JANUARY '   + Copy(BMonth,3,2);
    If Copy(BMonth,1,2) = '02' then BillMonthStr := 'FEBRUARY '  + Copy(BMonth,3,2);
    If Copy(BMonth,1,2) = '03' then BillMonthStr := 'MARCH '     + Copy(BMonth,3,2);
    If Copy(BMonth,1,2) = '04' then BillMonthStr := 'APRIL '     + Copy(BMonth,3,2);
    If Copy(BMonth,1,2) = '05' then BillMonthStr := 'MAY '       + Copy(BMonth,3,2);
    If Copy(BMonth,1,2) = '06' then BillMonthStr := 'JUNE '      + Copy(BMonth,3,2);
    If Copy(BMonth,1,2) = '07' then BillMonthStr := 'JULY '      + Copy(BMonth,3,2);
    If Copy(BMonth,1,2) = '08' then BillMonthStr := 'AUGUST '    + Copy(BMonth,3,2);
    If Copy(BMonth,1,2) = '09' then BillMonthStr := 'SEPTEMBER ' + Copy(BMonth,3,2);
    If Copy(BMonth,1,2) = '10' then BillMonthStr := 'OCTOBER '   + Copy(BMonth,3,2);
    If Copy(BMonth,1,2) = '11' then BillMonthStr := 'NOVEMBER '  + Copy(BMonth,3,2);
    If Copy(BMonth,1,2) = '12' then BillMonthStr := 'DECEMBER '  + Copy(BMonth,3,2);

   signatories.Close;
   signatories.ParamByName('preparedBy').Text         := PreparedBy.Text;
   signatories.ParamByName('preparedPosition').Text   := Position1.Text;
   signatories.ParamByName('checkedBy').Text          := CheckedBy.Text;
   signatories.ParamByName('checkedPosition').Text    := Position2.Text;
   signatories.ParamByName('approvedBy').Text         := ApprovedBy.Text;
   signatories.ParamByName('approvedPosition').Text   := Position3.Text;
   signatories.ParamByName('address').Text            := address_Assgn.Text;
   signatories.ParamByName('bmonth').Text             := BillMonthStr;
   signatories.ParamByName('dateAdj').Text            := FormatDateTime('mmmm d, yyyy',AdjAdjDate.AsDateTime);
   signatories.Open;
  end;
  adjTicket_frxR.ShowReport;
  exit;

  ShowMessage('Set Printer on.....');

  Try
  AssignFile(Lst,'LPT1');
  Rewrite(Lst);
  except
   ShowMessage('Printer not Ready');
   Exit;
  end;

With BillingData do
  begin
  Write(Lst,#18,#27+'P');                                                              
  Writeln(Lst);
  Writeln(Lst,#27+'E',JustStr('ZAMBOANGA DEL NORTE ELECTRIC COOP., Inc.',' ',80,2));
  Writeln(Lst,JustStr('(ZANECO)',' ',80,2));
  Writeln(Lst);
  Writeln(Lst);
  Writeln(Lst,JustStr('BILLING ADJUSTMENT TICKET',' ',80,2),#27'F');
  Writeln(lst);
  Writeln(Lst);
  Writeln(Lst,' ':35,'Bill for the month of    : ',MonString(AdjBillMonth.text));
  Writeln(lst,' ':35,'Adjustment Date          : ',FormatDateTime('mm/dd/yy',AdjAdjDate.AsDateTime));
  Writeln(Lst);
  Writeln(lst,'Account Number : ',AdjAccountNumber.Text);
  Writeln(lst,'Name           : ',AdjName.Text);
  Writeln(lst);
  Writeln(lst,JustStr('-','-',79,2));
  Writeln(lst,'|              |     As Billed      |  Should be Billed  |    Difference      |');
  Writeln(lst,JustStr('-','-',79,2));
  Writeln(lst,'|Present Rdg   |',AdjABPresentReadingKWH.AsCurrency:20:0,'|',
                                 AdjPresentReadingKWH.AsCurrency:20:0,'|                    |');
  Writeln(lst,'|Previous Rdg  |',AdjABPreviousReadingKWH.AsCurrency:20:0,'|',
                                 AdjPreviousReadingKWH.AsCurrency:20:0,'|                    |');
  Writeln(lst,'|KWH Used      |',AdjABKilowattHour.AsCurrency:20:0,'|',
                                 AdjKilowattHour.AsCurrency:20:0,'|',
                                 AdjABKilowattHour.AsCurrency-AdjKilowattHour.AsCurrency:20:0,'|');
  Writeln(Lst,'|Demand        |',AdjABDemand.AsCurrency:20:0,'|',
                                 AdjDemand.AsCurrency:20:0,'|                    |');
  Writeln(Lst,'|Amount        |',Format(AdjABTotalBill.AsCurrency,'###,###,###,###.##'),'|',
                                 Format(AdjTotalBill.AsCurrency,'###,###,###,###.##'),'|',
                                 Format(AdjABTotalBill.AsCurrency-AdjTotalBill.AsCurrency,'###,###,###,###.##'),'|');
  Writeln(lst,JustStr('-','-',79,2));

  Writeln(Lst,'|Missionary    |',Format(AdjABUCME.AsCurrency,'###,###,###,###.##'),'|',
                                 Format(AdjUCME.AsCurrency,'###,###,###,###.##'),'|',
                                 Format(AdjABUCME.AsCurrency-AdjUCME.AsCurrency,'###,###,###,###.##'),'|');

  Writeln(Lst,'|Environmaent  |',Format(AdjABUCEC.AsCurrency,'###,###,###,###.##'),'|',
                                 Format(AdjUCEC.AsCurrency,'###,###,###,###.##'),'|',
                                 Format(AdjABUCEC.AsCurrency-AdjUCEC.AsCurrency,'###,###,###,###.##'),'|');

  Writeln(Lst,'|Total UC      |',Format(AdjABUCEC.AsCurrency+AdjABUCME.AsCurrency,'###,###,###,###.##'),'|',
                                 Format(AdjUCEC.AsCurrency+AdjUCME.AsCurrency,'###,###,###,###.##'),'|',
                                 Format((AdjABUCEC.AsCurrency+AdjABUCME.AsCurrency) -
                                        (AdjUCEC.AsCurrency+AdjUCME.AsCurrency),'###,###,###,###.##'),'|');


  Writeln(Lst,'|EVAT Dist     |',Format(AdjABVATDist.AsCurrency+AdjABVATDistDiscAmt.AsCurrency,'###,###,###,###.##'),'|',
                                 Format(AdjVATDist.AsCurrency+AdjVATDistDiscAmt.AsCurrency,'###,###,###,###.##'),'|',
                                 Format((AdjABVATDist.AsCurrency+AdjABVATDistDiscAmt.AsCurrency)-
                                        (AdjVATDist.AsCurrency+AdjVATDistDiscAmt.AsCurrency),'###,###,###,###.##'),'|');

  Writeln(Lst,'|EVAT GenCO    |',Format(AdjABVATGenCO.AsCurrency+AdjABVATGenCODiscAmt.AsCurrency,'###,###,###,###.##'),'|',
                                 Format(AdjVATGenCO.AsCurrency+AdjVATGenCODiscAmt.AsCurrency,'###,###,###,###.##'),'|',
                                 Format((AdjABVATGenCO.AsCurrency+AdjABVATGenCODiscAmt.AsCurrency)-
                                        (AdjVATGenCO.AsCurrency+AdjVATGenCODiscAmt.AsCurrency),'###,###,###,###.##'),'|');

  Writeln(Lst,'|EVAT TransCO  |',Format(AdjABVATTransCO.AsCurrency+AdjABVATTranscoDiscAmt.AsCurrency,'###,###,###,###.##'),'|',
                                 Format(AdjVATTransCO.AsCurrency+AdjVATTranscoDiscAmt.AsCurrency,'###,###,###,###.##'),'|',
                                 Format((AdjABVATTransCO.AsCurrency+AdjABVATTranscoDiscAmt.AsCurrency)-
                                        (AdjVATTransCO.AsCurrency+AdjVATTranscoDiscAmt.AsCurrency),'###,###,###,###.##'),'|');

  Writeln(Lst,'|EVAT SL       |',Format(AdjABVATSystemLossGenCO.AsCurrency+AdjABVATSystemLossDiscAmt.AsCurrency,'###,###,###,###.##'),'|',
                                 Format(AdjVATSystemLossGenCO.AsCurrency+AdjVATSystemLossDiscAmt.AsCurrency,'###,###,###,###.##'),'|',
                                 Format((AdjABVATSystemLossGenCO.AsCurrency+AdjABVATSystemLossDiscAmt.AsCurrency)-
                                        (AdjVATSystemLossGenCO.AsCurrency+AdjVATSystemLossDiscAmt.AsCurrency),'###,###,###,###.##'),'|');

  Writeln(Lst,'|TOTAL EVAT    |',Format(AdjABVAT.AsCurrency+AdjABVatDiscAmt.AsCurrency,'###,###,###,###.##'),'|',
                                 Format(AdjVAT.AsCurrency+AdjVATDiscAmt.AsCurrency,'###,###,###,###.##'),'|',
                                 Format((AdjABVAT.AsCurrency+AdjABVatDiscAmt.AsCurrency)-
                                        (AdjVAT.AsCurrency+AdjVATDiscAmt.AsCurrency),'###,###,###,###.##'),'|');

  Writeln(Lst,'|T-POWER SALES |',Format(AdjABTotalBill.AsCurrency-(AdjABUCEC.AsCurrency+AdjABUCME.AsCurrency+AdjABVAT.AsCurrency),'###,###,###,###.##'),'|',
                                 Format(AdjTotalBill.AsCurrency-(AdjUCEC.AsCurrency+AdjUCME.AsCurrency+AdjVAT.AsCurrency),'###,###,###,###.##'),'|',
                                 Format((AdjABTotalBill.AsCurrency-(AdjABUCEC.AsCurrency+AdjABUCME.AsCurrency+AdjABVAT.AsCurrency)) -
                                        (AdjTotalBill.AsCurrency-(AdjUCEC.AsCurrency+AdjUCME.AsCurrency+AdjVAT.AsCurrency)),'###,###,###,###.##'),'|');

  Writeln(lst,JustStr('-','-',79,2));
  Writeln(lst,'| Account Code |         Description          |         Debit |        Credit |');
  Writeln(lst,JustStr('-','-',79,2));
  with StringGrid1 do
  for J:= 1 to RowCount-1 do
    begin
      Writeln(Lst,'|',JustStr(Cells[0,J],' ',14,0),'|',
                      JustStr(Cells[1,J],' ',30,0),'|',
                      JustStr(Cells[2,J],' ',15,0),'|',
                      JustStr(Cells[3,J],' ',15,0),'|');
    end;
  Writeln(lst,JustStr('-','-',79,2));
  Write(lst,#27'E');
  Writeln(lst,'REASON : ',AdjAddress.Text);
  Write(lst,#27+'F');
  Writeln(lst,JustStr('-','-',79,2));
  Writeln(lst);
  Writeln(lst,'Prepared by:               Chccked by:                Appoved by:              ');
  Writeln(lst);

  Writeln(lst,JustStr(PreparedBy.Text,' ',25,0),'  ',
              JustStr(CheckedBy.Text,' ',25,0),'  ',
              JustStr(ApprovedBy.Text,' ',25,0));

  Writeln(lst,JustStr(Position1.Text,' ',25,0),'  ',
              JustStr(Position2.Text,' ',25,0),'  ',
              JustStr(Position3.Text,' ',25,0));

  Writeln(lst,#12);
  CloseFile(Lst);
  ShowMessage('Done.');
  end;
end;

procedure TAdjustmentRecordForm.EditPresentReadingDateKeyPress(
  Sender: TObject; var Key: Char);
begin
   If Key = #13 then EditPreviousReadingDate.SetFocus;
end;

procedure TAdjustmentRecordForm.EditPreviousReadingDateKeyPress(
  Sender: TObject; var Key: Char);
begin
   If Key = #13 then EditAddress.SetFocus;
end;

procedure TAdjustmentRecordForm.PDJSillyLabel8Click(Sender: TObject);
begin
 {If not Assigned(AdjustmentDetailForm) then
    AdjustmentDetailForm := TAdjustmentDetailForm.Create(Application);
    AdjustmentDetailForm.Show;   }
end;

procedure TAdjustmentRecordForm.Button1Click(Sender: TObject);
var c : char;
begin
  If Trim(Search.Text) = '' then
   begin
     MessageDlg('Search is empty......', mtError, [mbOK], 0);
     exit;
   end;

  With BillingData do
   begin
     Adj.Close;
     Adj.SQL.Clear;
     Adj.SQL.Add('select * from adjustment');

     case RadioGroup1.ItemIndex of
     0 : begin
           Adj.SQL.Add('where accountnumber = :accountnumber');
           Adj.ParamByName('accountnumber').Text := Search.Text;
         end;
     1 : begin
           Adj.SQL.Add('where name like = :name');
           Adj.ParamByName('name').Text := '%'+Search.Text;
         end;
     end;

     Adj.Open;
     c := char(#13);
     EditBillMonthKeyPress(Sender,c);
     If Adj.IsEmpty then MessageDlg('No records match....', mtInformation, [mbOK], 0);
   end;
end;

procedure TAdjustmentRecordForm.FormShow(Sender: TObject);
begin
  With BillingData do
    begin
      Adj.Open;
      UnPB.Open;
      EditAccountNumber.SetFocus;
    end;

  case DBRadioGroup1.ItemIndex of
    0:begin
      DBEdit43.Enabled := true;
      DBEdit44.Enabled := true;
      DBEdit45.Enabled := true;
      DBEdit2.Enabled  := true;
      DBEdit52.Enabled := true;
      DBEdit53.Enabled := true;
      DBEdit6.Enabled  := true;
      DBEdit54.Enabled := true;
      DBEdit55.Enabled := true;
      DBEdit56.Enabled := true;
      DBEdit58.Enabled := true;
    end;
    1:begin
      DBEdit43.Enabled := false;
      DBEdit44.Enabled := false;
      DBEdit45.Enabled := false;
      DBEdit2.Enabled  := false;
      DBEdit52.Enabled := false;
      DBEdit53.Enabled := false;
      DBEdit6.Enabled  := false;
      DBEdit54.Enabled := false;
      DBEdit55.Enabled := false;
      DBEdit56.Enabled := false;
      DBEdit58.Enabled := false;
    end;

  end;

  enableTextEditor(false);
end;

procedure TAdjustmentRecordForm.EditBillMonthKeyPress(Sender: TObject; var Key: Char);
Label Compute;
 var
   KwUsed : Currency;

begin

If (Key = #13) then
 begin

   With BillingData do
     begin
       if Sender = EditBillMonth then
       begin
       UnPB.Close;
       UnPB.SQL.Clear;
       UnPB.SQL.Add('select * from unpaidbills where accountnumber = :accountnumber and');
       UnPB.SQL.Add('                                billmonth = :billmonth');
       UnPB.ParamByName('accountnumber').Text := EditAccountNumber.Text;
       UnPB.ParamByName('billmonth').Text     := EditBillMonth.Text;
       UnPB.Open;

       If UnPB.IsEmpty then
         begin
          MessageDlg('No records match in the Unpaid Bills file.....', mtError, [mbOK], 0);
          EditBillMonth.SetFocus;
          exit;
         end;

       AR.Close;
       AR.SQL.Clear;
       AR.SQL.Add('select *, debit as mybal from arledger where code = :code and');
       AR.SQL.Add('                             billmonth = :billmonth and');
       AR.SQL.Add('                             (credit is null or credit = 0)');
       AR.ParamByName('code').Text       := MasterCode.Text;
       AR.ParamByName('billmonth').Text  := EditBillMonth.Text;
       AR.Open;

       If AR.IsEmpty then
         begin
          MessageDlg('No records match in the A/R Ledger file.....', mtError, [mbOK], 0);
          EditBillMonth.SetFocus;
          exit;
         end;

       bh.Close;
       bh.SQL.Clear;
       bh.SQL.Add('select * from billhistory where accountnumber = :accountnumber and billmonth = :billmonth');
       bh.ParamByName('AccountNumber').Text := EditAccountNumber.Text;
       bh.ParamByName('BillMonth').Text     := EditBillMonth.Text;
       bh.Open;

       if bh.IsEmpty then
         begin
           bh.Close;
           bh.SQL.Clear;
           bh.SQL.Add('select * from latebillhistory where accountnumber = :accountnumber and billmonth = :billmonth');
           bh.ParamByName('AccountNumber').Text := EditAccountNumber.Text;
           bh.ParamByName('BillMonth').Text     := EditBillMonth.Text;
           bh.Open;
         end;

       Memo1.Clear;
       Memo1.Lines.Add(inttostr(UnPB.RecordCount)+' rows found in Unpaid');
       Memo1.Lines.Add(inttostr(AR.RecordCount)+' rows found in A/R Ledger');

       AdjABTotalBill.AsCurrency              := UnPBAmount.AsCurrency;
       AdjABOEBRNumber.Text                   := UnPBDocument.Text;
       AdjAdjDate.AsDateTime                  := Now;
       AdjPresentReadingDate.AsDateTime       := bhPresentReadingDate.AsDateTime;
       AdjPreviousReadingDate.AsDateTime      := bhPreviousReadingDate.AsDateTime;

       AdjAdjDate.EditMask                    := '!99/99/00;1;_';
       AdjPresentReadingDate.EditMask         := '!99/99/00;1;_';
       AdjPreviousReadingDate.EditMask        := '!99/99/00;1;_';

       AdjABPresentReadingKWH.AsCurrency      := bhPresentReadingKWH.AsCurrency;
       AdjABPreviousReadingKWH.AsCurrency     := bhPreviousReadingKWH.AsCurrency;
       AdjABKilowattHour.AsCurrency           := UnPBKilowattHour.AsCurrency;
       AdjABTransformerRental.AsCurrency      := UnPBTransformerRental.AsCurrency;
       AdjTransformerRental.AsCurrency        := UnPBTransformerRental.AsCurrency;

       AdjOEBRNumber.Text                     := UnPBDocument.Text;
       AdjPreviousReadingKWH.AsCurrency       := bhPreviousReadingKWH.AsCurrency;
       AdjPresentReadingKWH.AsCurrency        := bhPresentReadingKWH.AsCurrency;
       AdjKilowattHour.AsCurrency             := UnPBKilowattHour.AsCurrency;
       AdjPKVROebrNumber.Text                 := bhPKVROebrNumber.Text;
       AdjPKVRBillMonth.Text                  := bhPKVRBillMonth.Text;
       AdjPKVRAmount.Text                     := bhPKVRAmount.Text;
       AdjABKilowattUsed.AsCurrency           := bhKilowattUsed.AsCurrency;
       AdjKilowattUsed.AsCurrency             := bhKilowattUsed.AsCurrency;

       AdjABGenSysCharge.AsCurrency           := bhGenSysCharge.AsCurrency;
       AdjABHostCommCharge.AsCurrency         := bhHostCommCharge.AsCurrency;
       AdjABForexCharge.AsCurrency            := bhForexCharge.AsCurrency;
       AdjABTCDemandCharge.AsCurrency         := bhTCDemandCharge.AsCurrency;
       AdjABTCTransSystemCharge.AsCurrency    := bhTCTransSystemCharge.AsCurrency;
       AdjABSystemLossCharge.AsCurrency       := bhSystemLossCharge.AsCurrency;
       AdjABDCDemandCharge.AsCurrency         := bhDCDemandCharge.AsCurrency;
       AdjABDCDistributionCharge.AsCurrency   := bhDCDistributionCharge.AsCurrency;
       AdjABSCRetCustCharge.AsCurrency        := bhSCRetCustCharge.AsCurrency;
       AdjABSCSupplySysCharge.AsCurrency      := bhSCSupplySysCharge.AsCurrency;
       AdjABMCRetailCustCharge.AsCurrency     := bhMCRetailCustCharge.AsCurrency;
       AdjABMCSystemCharge.AsCurrency         := bhMCSystemCharge.AsCurrency;
       AdjABUCNPCStrandedDebts.AsCurrency     := UnPBUCNPCSD.AsCurrency;
       AdjABUCNPCStrandedContCost.AsCurrency  := UnPBUCNPCSCC.AsCurrency;
       AdjABUCDUStrandedContCost.AsCurrency   := UnPBUCDUSCC.AsCurrency;
       AdjABUCME.AsCurrency                   := UnPBUCME.AsCurrency;
       AdjABUCEqTaxesAndRoyalities.AsCurrency := UnPBUCETR.AsCurrency;
       AdjABUCEC.AsCurrency                   := UnPBUCEC.AsCurrency;
       AdjABMCC.AsCurrency                    := bhMCC.AsCurrency;
       AdjABVATmcc.AsCurrency                 := bhVATmcc.AsCurrency;
       AdjABgram.AsCurrency                   := bhgram.AsCurrency;

       AdjABSCDisc.AsCurrency                 := UnPBSCDisc.AsCurrency;
       AdjABLifelineDiscSubs.AsCurrency       := bhLifelineDiscSubs.AsCurrency;

       AdjABICCrossSubsidyCharge.AsCurrency  := bhICCrossSubsidyCharge.AsCurrency;

       AdjABPowerActRateRed.AsCurrency        := bhPowerActRateRed.AsCurrency;

       AdjABOCCode1.Text                      := bhOCCode1.Text;
       AdjABOCAmount1.AsCurrency              := bhOCAmount1.AsCurrency;
       AdjABOCCode2.Text                      := bhOCCode2.Text;
       AdjABOCAmount2.AsCurrency              := bhOCAmount2.AsCurrency;
       AdjABOCCode3.Text                      := bhOCCode3.Text;
       AdjABOCAmount3.AsCurrency              := bhOCAmount3.AsCurrency;

       AdjOCCode1.Text                        := bhOCCode1.Text;
       AdjOCAmount1.AsCurrency                := bhOCAmount1.AsCurrency;
       AdjOCCode2.Text                        := bhOCCode2.Text;
       AdjOCAmount2.AsCurrency                := bhOCAmount2.AsCurrency;
       AdjOCCode3.Text                        := bhOCCode3.Text;
       AdjOCAmount3.AsCurrency                := bhOCAmount3.AsCurrency;

       AdjABVAT.AsCurrency                    := UnPBVAT.AsCurrency;
       AdjABVATDist.AsCurrency                := UnPBVATDist.AsCurrency;
       AdjABVATGenCO .AsCurrency              := UnPBVATGenCO.AsCurrency;
       AdjABVATTransCO.AsCurrency             := UnPBVATTransCO.AsCurrency;
       AdjABVATSystemLossGenCO.AsCurrency     := UnPBVATSystemLossGenCO.AsCurrency;

       AdjABVatDiscAmt.AsCurrency             := UnPBVATDiscAmt.AsCurrency;
       AdjABVATDistDiscAmt.AsCurrency         := UnPBVATDistDiscAmt.AsCurrency;
       AdjABVATGenCODiscAmt.AsCurrency        := UnPBVATGenCoDiscAmt.AsCurrency;
       AdjABVATTranscoDiscAmt.AsCurrency      := UnPBVATTransCoDiscAmt.AsCurrency;
       AdjABVATSystemLossDiscAmt.AsCurrency   := UnPBVATSystemLossDiscAmt.AsCurrency;
       AdjBillMonth.Text                      := UnPBBillMonth.Text;
       //AdjRPTax.AsCurrency                  := bhRPTax.AsCurrency;
       AdjABRPTax.ascurrency                  := bhRPTax.AsCurrency;
       AdjRateOrder.Text                      := UnPBRateOrder.Text;
       AdjABFitAll.AsCurrency                 := bhFitAll.AsCurrency;
       AdjABPARec.AsCurrency                  := bhPARec.AsCurrency;
       AdjABVATparec.AsCurrency               := bhVATparec.AsCurrency;

       AdjABOtherGenRateAdj.AsCurrency            := bhOtherGenRateAdj.AsCurrency;
       AdjABOtherTransCostAdj.AsCurrency          := bhOtherTransCostAdj.AsCurrency;
       AdjABOtherTransDemandCostAdj.AsCurrency    := bhOtherTransDemandCostAdj.AsCurrency;
       AdjABOtherSystemLossCostAdj.AsCurrency     := bhOtherSystemLossCostAdj.AsCurrency;
       AdjABOtherLifelineRateCostAdj.AsCurrency   := bhOtherLifelineRateCostAdj.AsCurrency;
       AdjABOtherSeniorCitizenRateAdj.AsCurrency  := bhOtherSeniorCitizenRateAdj.AsCurrency;
       AdjABreferenceAtmNo.Text                   := bhreferenceAtmNo.Text;

       AdjCM.Text                                 := bhCM.Text;
       AdjCMMultiplier.Text                       := bhCMMultiplier.Text;
       AdjCMPreviousReadingKWH.AsCurrency         := bhCMPreviousReadingKWH.AsCurrency;
       AdjCMPresentReadingKWH.AsCurrency          := bhCMPresentReadingKWH.AsCurrency;
       AdjCMKilowattHour.AsCurrency               := bhCMKilowattHour.AsCurrency;
       AdjCMDemand.AsCurrency                     := bhCMDemand.AsCurrency;

       bh.Close;
       AR.Close;
       AR.SQL.Clear;
       AR.SQL.Add('select a.*,');
       AR.SQL.Add('       @MyBalance := @MyBalance + (ifnull(A.debit,0)-ifnull(a.credit,0)) mybal');
       AR.SQL.Add('from arledger a, (select @myBalance := 0) b');
       AR.SQL.Add('where a.code = :code order by a.date');

       end;

       MRate.Close;
       MRate.SQL.Clear;
       MRate.SQL.Add('select * from MeterRate');
       MRate.FilterSQL := 'Mbillmonth = '+QuotedStr(EditBillMonth.Text)+ ' and wratecode = '+ quotedstr(AdjRateCode.Text);
       MRate.Open;

       Memo1.Lines.Add(inttostr(MRate.RecordCount)+' rows found in Meter Rates ALL');

       If MRate.IsEmpty then
         begin
          MessageDlg('No records match in Meter Rates file.....', mtError, [mbOK], 0);
          EditBillMonth.SetFocus;
          exit;
         end;

       Memo1.Lines.Add(inttostr(MRateWRSw.AsInteger)+' switch value');
       if Sender = EditBillMonth then
        begin
          if MRateWRSw.AsInteger = 0 then
            MRate.FilterSQL := 'Mbillmonth ='+QuotedStr(EditBillMonth.Text)+' and RateCode = '+QuotedStr(MasterRateCode.Text)
          else
            MRate.FilterSQL := 'Mbillmonth ='+QuotedStr(EditBillMonth.Text)+' and WRateCode = '+QuotedStr(MasterWRateCode.Text);
        end
       else
        begin
          Master.Close;
          Master.SQL.Clear;
          Master.SQL.Add('select * from master where accountnumber = :accountnumber');
          Master.ParamByName('accountnumber').text := AdjAccountNumber.Text;
          Master.Open;

          If Master.IsEmpty then
            begin
             Master.Close;
             MessageDlg('No records match...', mtError, [mbOK], 0);
             EditAccountNumber.SetFocus;
            end;
          if MRateWRSw.AsInteger = 0 then
            MRate.FilterSQL := 'Mbillmonth ='+QuotedStr(adjBillMonth.Text)+' and RateCode = '+QuotedStr(masterRateCode.Text)
          else
            MRate.FilterSQL := 'Mbillmonth ='+QuotedStr(adjBillMonth.Text)+' and WRateCode = '+QuotedStr(masterWRateCode.Text);
        end;

       Memo1.Lines.Add(inttostr(MRate.RecordCount)+' rows found in Meter Rates');

       if Sender = EditBillMonth then
        begin
         EditAdjDate.SetFocus;
         Key := #0;
        end;
     end;
 end;
end;

procedure TAdjustmentRecordForm.RadioGroup2Click(Sender: TObject);
begin
 signaQ.Close;
  Case RadioGroup2.ItemIndex of
   0 : begin
        signaQ.ParamByName('area').Text := 'Dipolog';
       end;

   1 : begin
        signaQ.ParamByName('area').Text := 'Pinan';
       end;

   2 : begin
       signaQ.ParamByName('area').Text := 'Sindangan';
       end;

   3 : begin
       signaQ.ParamByName('area').Text := 'Liloy';
       end;
  end;
  signaQ.Open;
  PreparedBy.Text     := signaQAdjPreparedByName.Text;
  Position1.Text      := signaQAdjPreparedByPosition.Text;
  CheckedBy.Text      := signaQAdjCheckByName.Text;
  Position2.Text      := signaQAdjCheckByPosition.Text;
  ApprovedBy.Text     := signaQAdjApprovedByName.Text;
  Position3.Text      := signaQAdjApprovedByPosition.Text;
  address_Assgn.Text  := signaQAdjAddress.Text;
end;

procedure TAdjustmentRecordForm.SummCalcFields(DataSet: TDataSet);
begin
  SummNetBill.AsCurrency   := SummTotalBill.AsCurrency -
                             (Summucec.AsCurrency +
                              Summucme.AsCurrency +
                              SummVATDist.AsCurrency +
                              SummVATGenCO.AsCurrency +
                              SummVATTransCO.AsCurrency +
                              SummVATSystemLoss.AsCurrency +
                              Summtransformerrental.AsCurrency);

  SummabNetBill.AsCurrency := SummabTotalBill.AsCurrency -
                             (Summabucec.AsCurrency +
                              Summabucme.AsCurrency +
                              SummabVATDist.AsCurrency +
                              SummabVATGenCO.AsCurrency +
                              SummabVATTransCO.AsCurrency +
                              SummabVATSystemLoss.AsCurrency +
                              Summabtransformerrental.AsCurrency);

  SummdfTotalBill.AsCurrency     := SummTotalBill.AsCurrency     - SummabTotalBill.AsCurrency      ;
  Summdfucec.AsCurrency          := Summucec.AsCurrency          - Summabucec.AsCurrency           ;
  Summdfucme.AsCurrency          := Summucme.AsCurrency          - Summabucme.AsCurrency           ;
  SummdfVATDist.AsCurrency       := SummVATDist.AsCurrency       - SummabVATDist.AsCurrency        ;
  SummdfVATGenco.AsCurrency      := SummVATGenCO.AsCurrency      - SummabVATGenCO.AsCurrency       ;
  SummdfVATTransco.AsCurrency    := SummVATTransCO.AsCurrency    - SummabVATTransCO.AsCurrency     ;
  SummdfVATSystemLoss.AsCurrency := SummVATSystemLoss.AsCurrency - SummabVATSystemLoss.AsCurrency  ;

  SummdfNetBill.AsCurrency := SummdfTotalBill.AsCurrency -
                             (Summdfucec.AsCurrency +
                              Summdfucme.AsCurrency +
                              SummdfVATDist.AsCurrency +
                              SummdfVATGenCO.AsCurrency +
                              SummdfVATTransCO.AsCurrency +
                              SummdfVATSystemLoss.AsCurrency +
                              Summdftransformerrental.AsCurrency);
end;

procedure TAdjustmentRecordForm.RadioGroup4Click(Sender: TObject);
var
   TmpItemIndex:String;
begin
  Case RadioGroup4.ItemIndex of
   0  : begin
        TmpItemIndex:='Dipolog';
        end;
   1 : begin
        TmpItemIndex:='Pinan';
       end;
   2 : begin
        TmpItemIndex:='Sindangan';
       end;
   3 : begin
        TmpItemIndex:='Liloy';
       end;
   end;
        AssigMyQuery.Close;
        AssigMyQuery.SQL.Clear;
        AssigMyQuery.SQL.Text:='Select * from `Signatories` where `area` like '+quotedstr(TmpItemIndex)+' ';
        AssigMyQuery.Open;
        Prepared.text :=      AssigMyQueryPreparedBy.Text;
        PreparedPos.text :=   AssigMyQueryPBPosition.Text;
        Checked.text :=       AssigMyQueryCheckBy.Text;
        CheckedPos.text :=    AssigMyQueryCBPosition.Text;
        Certified.text :=     AssigMyQueryCertifiedCorrectby.Text;
        CertifiedPos.text :=  AssigMyQueryCCCPosition.Text;
        Reviewed.text :=      AssigMyQueryReviewedby.Text;
        ReviewedPos.text :=   AssigMyQueryRBPosition.Text;
        Attested.text :=      AssigMyQueryAttestedby.Text;
        AttestedPos.text :=   AssigMyQueryABPosition.Text;

        Edit3.Text :=         AssigMyQueryPreparedBy.Text;
        Edit4.Text :=         AssigMyQueryPBPosition.Text;
        Edit5.Text :=         AssigMyQueryCheckBy.Text;
        Edit6.Text :=         AssigMyQueryCBPosition.Text;
        Edit7.Text :=         AssigMyQueryCertifiedCorrectby.Text;
        Edit8.Text :=         AssigMyQueryCCCPosition.Text;
        Edit9.Text :=         AssigMyQueryReviewedby.Text;
        Edit10.Text:=         AssigMyQueryRBPosition.Text;
        Edit11.Text:=         AssigMyQueryAttestedby.Text;
        Edit12.Text:=         AssigMyQueryABPosition.Text;
        AreaComboBox.Text:=   AssigMyQueryArea.Text;
end;

procedure TAdjustmentRecordForm.RadioGroup5Click(Sender: TObject);
begin
  signaQ.Close;
  Case RadioGroup5.ItemIndex of
   0 : begin
        signaQ.ParamByName('area').Text := 'Dipolog';
       end;

   1 : begin
        signaQ.ParamByName('area').Text := 'Pinan';
       end;

   2 : begin
       signaQ.ParamByName('area').Text := 'Sindangan';
       end;

   3 : begin
       signaQ.ParamByName('area').Text := 'Liloy';
       end;
  end;
  signaQ.Open;
  PreparedBy_Sum.Text     := signaQAdjPreparedByName.Text;
  Position1_Sum.Text      := signaQAdjPreparedByPosition.Text;
  CheckedBy_Sum.Text      := signaQAdjCheckByName.Text;
  Position2_Sum.Text      := signaQAdjCheckByPosition.Text;
  ApprovedBy_Sum.Text     := signaQAdjApprovedByName.Text;
  Position3_Sum.Text      := signaQAdjApprovedByPosition.Text;
  address_Assgn_Sum.Text  := signaQAdjAddress.Text;
end;

procedure TAdjustmentRecordForm.DateFromKeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 then
    begin
      Perform(CM_DIALOGKEY,VK_TAB,0);
      Key := #0;
    end;
end;

procedure TAdjustmentRecordForm.PrintSummaryClick(Sender: TObject);
begin
  Case RadioGroup3.ItemIndex of
  0 : PrintAdjustmentSummaryNew;
  1 : PrintAdjustmentSummaryOld;
  end;
end;

procedure TAdjustmentRecordForm.PrintAdjustmentSummaryNew;
var
  TmpItemIndex:string;
  AreaTmp:String;
begin
   AdjSumm.ParamByName('DateFrom').AsDate := DateFrom.AsDateTime;
   AdjSumm.ParamByName('DateTo').AsDate   := DateTo.AsDateTime;
   AdjSumm.ParamByName('Area').Text       := Area.Text+'%';
   AdjSumm.Open;

   NetAdjSumm.ParamByName('DateFrom').AsDate := DateFrom.AsDateTime;
   NetAdjSumm.ParamByName('DateTo').AsDate   := DateTo.AsDateTime;
   NetAdjSumm.ParamByName('Area').Text       := Area.Text+'%';
   NetAdjSumm.Open;

   If Area.Text = '' then QRLabel4.Caption := 'Summary of Adjustment - ALL AREA' else
                          QRLabel4.Caption := 'Summary of Adjustment - AREA '+Area.Text;

  Case RadioGroup4.ItemIndex of
   0  : begin
        TmpItemIndex:='Dipolog';
        AreaTmp:='DIPOLOG AREA OFFICE';
        end;
   1 : begin
        TmpItemIndex:='Pinan';
        AreaTmp:='PINAN AREA OFFICE';
       end;
   2 : begin
        TmpItemIndex:='Sindangan';
        AreaTmp:='SINDANGAN AREA OFFICE';
       end;
   3 : begin
        TmpItemIndex:='Liloy';
        AreaTmp:='LILOY AREA OFFICE';
       end;
   end;

   AssigMyQuery.Close;
   AssigMyQuery.SQL.Clear;
   AssigMyQuery.SQL.Text:='Select * from `Signatories` where `area` like '+quotedstr(TmpItemIndex)+' ';
   AssigMyQuery.Open;

   PEmp.Caption             :=  AssigMyQueryPreparedBy.Text;
   PEmpPos.Caption          :=  AssigMyQueryPBPosition.Text;
   ChEmp.Caption            :=  AssigMyQueryCheckBy.Text;
   ChEmpPos.Caption         :=  AssigMyQueryCBPosition.Text;
   CTEmpName.Caption        :=  AssigMyQueryCertifiedCorrectby.Text;
   CTEmpPos.Caption         :=  AssigMyQueryCCCPosition.Text;
   REmpName.Caption         :=  AssigMyQueryReviewedby.Text;
   REmpPos.Caption          :=  AssigMyQueryRBPosition.Text;
   AEmpName.Caption         :=  AssigMyQueryAttestedby.Text;
   AEmpPos.Caption          :=  AssigMyQueryABPosition.Text;
   AreaOfficeLabel.Caption  :=  AreaTmp;


   AdjPeriodCovered.Caption := 'Period Covered '+DatetoStr(DateFrom.AsDateTime)+' - '+DatetoStr(DateTo.AsDateTime);

   QuickRep1.PreviewWidth  := Screen.Width;
   QuickRep1.PreviewHeight := Screen.Height;

   QuickRep1.Preview;

   AdjSumm.Close;
   NetAdjSumm.Close;

end;


procedure TAdjustmentRecordForm.NetAdjSummCalcFields(DataSet: TDataSet);
begin
  NetAdjSummDifference.AsCurrency := NetAdjSummAsBilled.AsCurrency - NetAdjSummShouldBeBilled.AsCurrency;
  NetAdjSummprintdiff.AsCurrency  := NetAdjSummDifference.AsCurrency * -1;
end;

procedure TAdjustmentRecordForm.NxButton11Click(Sender: TObject);
begin

  If NxEdit1.Text <> 'shepherd' then
  begin
    messagedlg('Invalid password ',mtWarning,[mbOK],0);
    exit;
  end;
  if (MessageDlg('Delete Record?',mtConfirmation,[mbOK,mbCancel],0)=mrCancel) then
  exit;

  insertAdjTrail.ParamByName('dateDeleted').AsDateTime := now;
  insertAdjTrail.ParamByName('user').Text              := BillMenuForm.DBText1.Caption;
  //insertAdjTrail.ParamByName('Billmonth').Text         := BillingData.AdjBillMonth.text;
  //insertAdjTrail.ParamByName('accountnumber').Text     := BillingData.AdjAccountNumber.Text;
  insertAdjTrail.ParamByName('entry').Text             := BillingData.AdjEntry.Text;

  try
    insertAdjTrail.Execute;
  except
  end;

  BillingData.Adj.Delete;
  EditAccountNumber.SetFocus;
  NxHeaderPanel4.visible := false;
end;

procedure TAdjustmentRecordForm.NxButton1Click(Sender: TObject);
var
  rCode : String;
  rCode_Str : String;
begin
  with BillingData do begin
    isonumberQ.Close;
    isonumberQ.ParamByName('reporttype').Text := 'Per Area Office Power Sales Adjustment';
    isonumberQ.Open;
  end;

  if( adjSmryOption = true)  then
  begin
    Case RadioGroup6.ItemIndex of
       0:begin
          rcode     := 'R';
          rCode_Str := 'RESIDENTIAL';
       end;
       1:begin
          rcode     := 'H';
          rCode_Str := 'HIGHER VOLTAGE';
       end;
       2:begin
          rcode     := 'L';
          rCode_Str := 'LOWER VOLTAGE';
       end;
    End;




     adjQuery.Close;
     adjQuery.MacroByName('ticket').Active   := false;
     adjQuery.MacroByName('summary').Active  := true;
     adjQuery.ParamByName('from').Text       := FormatDateTime('YYYY-MM-DD', NxDatePicker1.Date);
     adjQuery.ParamByName('to').Text         := FormatDateTime('YYYY-MM-DD',NxDatePicker2.Date);
     adjQuery.ParamByName('ratecode').Text   := rcode;
     adjQuery.Open;

     OCsummaryQ.Close;
     OCsummaryQ.ParamByName('from').Text       := FormatDateTime('YYYY-MM-DD', NxDatePicker1.Date);
     OCsummaryQ.ParamByName('to').Text         := FormatDateTime('YYYY-MM-DD',NxDatePicker2.Date);
     OCsummaryQ.ParamByName('ratecode').Text   := rcode;
     OCsummaryQ.Open;

     signatories.Close;
     signatories.ParamByName('preparedBy').Text         := PreparedBy_Sum.Text;
     signatories.ParamByName('preparedPosition').Text   := Position1_Sum.Text;
     signatories.ParamByName('checkedBy').Text          := CheckedBy_Sum.Text;
     signatories.ParamByName('checkedPosition').Text    := Position2_Sum.Text;
     signatories.ParamByName('approvedBy').Text         := ApprovedBy_Sum.Text;
     signatories.ParamByName('approvedPosition').Text   := Position3_Sum.Text;
     signatories.ParamByName('address').Text            := address_Assgn_Sum.Text;
     signatories.ParamByName('bmonth').Text             := 'PERIOD COVERED : '+FormatDateTime('m/d/yyyy', NxDatePicker1.Date) +' to '+ FormatDateTime('m/d/yyyy', NxDatePicker2.Date);
     signatories.ParamByName('dateAdj').Text            := '';
     signatories.ParamByName('consumerType').Text       := rCode_Str +' SALES ADJUSTMENT SUMMARY';
     signatories.Open;

     adjSummary_frxR2.ShowReport;
    { showmessage(FloatToStr( adjQueryMCCDiff.AsFloat)+#13+
                 FloatToStr( adjQueryUCMEDiff.AsFloat)+#13+
                 FloatToStr( adjQueryUCECDiff.AsFloat)+#13+
                 FloatToStr( adjQueryVatDis_F.AsFloat)+#13+
                 FloatToStr( adjQueryVATGEnCODiff.AsFloat)+#13+
                 FloatToStr( adjQueryVATTransCODiff.AsFloat)+#13+
                 FloatToStr( adjQueryVATSystemLossGenCODiff.AsFloat)+#13+
                 FloatToStr( adjQueryUCNPCStrandedContCostDiff.AsFloat)+#13+
                 FloatToStr( adjQueryUCNPCStrandedDebtsDiff.AsFloat)+#13+
                 FloatToStr( adjQueryFitallDiff.AsFloat)+#13+
                 FloatToStr( adjQueryRPTaxDiff.AsFloat)+#13) ;  }
  end
  else
  begin
     powerSalesPerAreaQ.Close;
     powerSalesPerAreaQ.ParamByName('from').Text       := FormatDateTime('YYYY-MM-DD', NxDatePicker1.Date);
     powerSalesPerAreaQ.ParamByName('to').Text         := FormatDateTime('YYYY-MM-DD',NxDatePicker2.Date);
     powerSalesPerAreaQ.Open;

     signatories.Close;
     signatories.ParamByName('preparedBy').Text         := PreparedBy_Sum.Text;
     signatories.ParamByName('preparedPosition').Text   := Position1_Sum.Text;
     signatories.ParamByName('checkedBy').Text          := CheckedBy_Sum.Text;
     signatories.ParamByName('checkedPosition').Text    := Position2_Sum.Text;
     signatories.ParamByName('approvedBy').Text         := ApprovedBy_Sum.Text;
     signatories.ParamByName('approvedPosition').Text   := Position3_Sum.Text;
     signatories.ParamByName('address').Text            := address_Assgn_Sum.Text;
     signatories.ParamByName('bmonth').Text             := 'PERIOD COVERED : '+FormatDateTime('m/d/yyyy', NxDatePicker1.Date) +' to '+ FormatDateTime('m/d/yyyy', NxDatePicker2.Date);
     signatories.ParamByName('dateAdj').Text            := '';
     signatories.ParamByName('consumerType').Text       := rCode_Str +' SALES ADJUSTMENT SUMMARY';
     signatories.ParamByName('area').Text               := adj_Str;
     signatories.Open;

     psalesAdj_frxR.ShowReport;
  end;
end;

procedure TAdjustmentRecordForm.NxButton2Click(Sender: TObject);
begin
  NxHeaderPanel2.Visible := false;
end;

procedure TAdjustmentRecordForm.NxButton3Click(Sender: TObject);
begin
  adjSmryOption       := true;
  RadioGroup6.visible := true;
  NxHeaderPanel2.Left := 58;
  NxHeaderPanel2.Top  := 85;
  NxHeaderPanel2.BringToFront;

  NxHeaderPanel2.Caption := 'Print Adjustment Summary (By Consumer Type)';
  NxHeaderPanel3.visible := false;
  NxHeaderPanel2.Visible := true;
end;

procedure TAdjustmentRecordForm.NxButton4Click(Sender: TObject);
begin
  adjSmryOption       := false;
  RadioGroup6.Visible := false;
  NxHeaderPanel2.Left := 58;
  NxHeaderPanel2.Top  := 85;
  NxHeaderPanel2.BringToFront;

  NxHeaderPanel2.Caption := 'Print Adjustment Summary (Per Area Office)';
  NxHeaderPanel3.Visible  := false;
  NxHeaderPanel2.Visible  := true;

end;

procedure TAdjustmentRecordForm.NxButton5Click(Sender: TObject);
begin
  NxHeaderPanel3.visible := false;
end;

procedure TAdjustmentRecordForm.NxButton6Click(Sender: TObject);
begin
{    Panel3.Left       := 90;
    Panel3.Top        := 101;
    Panel3.Width:= 424;
    Panel3.BringToFront;
    DateFrom.Date     := StartOfTheMonth(Now);
    DateTo.Date       := EndOfTheMonth(Now);
    Panel3.Visible    := True;   }
end;

procedure TAdjustmentRecordForm.NxButton7Click(Sender: TObject);
begin
  signaQ.Edit;
  signaQAdjPreparedByName.Text      := PreparedBy_Sum.text;
  signaQAdjPreparedByPosition.Text  := Position1_Sum.Text;
  signaQAdjCheckByName.Text         := CheckedBy_Sum.Text;
  signaQAdjCheckByPosition.Text     := Position2_Sum.Text;
  signaQAdjApprovedByName.Text      := ApprovedBy_Sum.Text;
  signaQAdjApprovedByPosition.Text  := Position3_Sum.Text;
  signaQAdjAddress.Text             := address_Assgn_Sum.Text;
  signaQ.Post;
  showmessage('Signatories successfully saved..');
end;

procedure TAdjustmentRecordForm.NxLinkLabel1Click(Sender: TObject);
begin
  Panel3.Width:= 733;
end;

procedure TAdjustmentRecordForm.adjQueryCalcFields(DataSet: TDataSet);
var
  totalS : DOuble;
begin
{ABGenSysCharge
ABVATGenCO
ABTCTransSystemCharge
ABTCDemandCharge
ABVATTransCO
ABSystemLossCharge
ABVATSystemLossGenCO
ABDCDistributionCharge
ABDCDemandCharge
ABSCRetCustCharge
ABSCSupplySysCharge
ABMCRetailCustCharge
ABMCSystemCharge
ABLifelineDiscSubs
ABICCrossSubsidyCharge
ABPowerActRateRed
ABSCDisc
ABPARec
ABVATDist
ABVatDiscAmt
ABRPTax
ABMCC
ABUCEC
ABUCME
ABUCNPCStrandedContCost
ABUCNPCStrandedDebts
ABFitall
ABgram}

   {0.00 ABTotalBill_,
    0.00 TotalBill_,
    0.00  TotalSales_}
   adjQueryABTotalBill_.AsFloat :=  adjQuery.FieldByName('ABGenSysCharge').AsFloat+
                                                      adjQuery.FieldByName('ABVATGenCO').AsFloat+
                                                      adjQuery.FieldByName('ABTCTransSystemCharge').AsFloat+
                                                      adjQuery.FieldByName('ABTCDemandCharge').AsFloat+
                                                      adjQuery.FieldByName('ABVATTransCO').AsFloat+
                                                      adjQuery.FieldByName('ABSystemLossCharge').AsFloat+
                                                      adjQuery.FieldByName('ABVATSystemLossGenCO').AsFloat+
                                                      adjQuery.FieldByName('ABDCDistributionCharge').AsFloat+
                                                      adjQuery.FieldByName('ABDCDemandCharge').AsFloat+
                                                      adjQuery.FieldByName('ABSCRetCustCharge').AsFloat+
                                                      adjQuery.FieldByName('ABSCSupplySysCharge').AsFloat+
                                                      adjQuery.FieldByName('ABMCRetailCustCharge').AsFloat+
                                                      adjQuery.FieldByName('ABMCSystemCharge').AsFloat+
                                                      adjQuery.FieldByName('ABLifelineDiscSubs').AsFloat+
                                                      adjQuery.FieldByName('ABICCrossSubsidyCharge').AsFloat+
                                                      adjQuery.FieldByName('ABPowerActRateRed').AsFloat+
                                                      adjQuery.FieldByName('ABSCDisc').AsFloat+
                                                      adjQuery.FieldByName('ABPARec').AsFloat+
                                                      adjQuery.FieldByName('ABVATDist').AsFloat+
                                                      adjQuery.FieldByName('ABVatDiscAmt').AsFloat+
                                                      adjQuery.FieldByName('ABRPTax').AsFloat+
                                                      adjQuery.FieldByName('ABMCC').AsFloat+
                                                      adjQuery.FieldByName('ABUCEC').AsFloat+
                                                      adjQuery.FieldByName('ABUCME').AsFloat+
                                                      adjQuery.FieldByName('ABUCNPCStrandedContCost').AsFloat+
                                                      adjQuery.FieldByName('ABUCNPCStrandedDebts').AsFloat+
                                                      adjQuery.FieldByName('ABFitall').AsFloat+
                                                      adjQuery.FieldByName('ABgram').AsFloat+
                                                      adjQuery.FieldByName('OC_pr_AB').AsFloat+
                                                      adjQuery.FieldByName('OC_xr_AB').AsFloat+
                                                      adjQuery.FieldByName('OC_pf_AB').AsFloat;


       adjQueryTotalBill_.AsFloat :=  adjQuery.FieldByName('GenSysCharge').AsCurrency+
                                                      adjQuery.FieldByName('VATGenCO').AsCurrency+
                                                      adjQuery.FieldByName('TCTransSystemCharge').AsCurrency+
                                                      adjQuery.FieldByName('TCDemandCharge').AsCurrency+
                                                      adjQuery.FieldByName('VATTransCO').AsCurrency+
                                                      adjQuery.FieldByName('SystemLossCharge').AsCurrency+
                                                      adjQuery.FieldByName('VATSystemLossGenCO').AsCurrency+
                                                      adjQuery.FieldByName('DCDistributionCharge').AsCurrency+
                                                      adjQuery.FieldByName('DCDemandCharge').AsCurrency+
                                                      adjQuery.FieldByName('SCRetCustCharge').AsCurrency+
                                                      adjQuery.FieldByName('SCSupplySysCharge').AsCurrency+
                                                      adjQuery.FieldByName('MCRetailCustCharge').AsCurrency+
                                                      adjQuery.FieldByName('MCSystemCharge').AsCurrency+
                                                      adjQuery.FieldByName('LifelineDiscSubs').AsCurrency+
                                                      adjQuery.FieldByName('ICCrossSubsidyCharge').AsCurrency+
                                                      adjQuery.FieldByName('PowerActRateRed').AsCurrency+
                                                      adjQuery.FieldByName('SCDisc').AsCurrency+
                                                      adjQuery.FieldByName('PARec').AsCurrency+
                                                      adjQuery.FieldByName('VATDist').AsCurrency+
                                                      adjQuery.FieldByName('VatDiscAmt').AsCurrency+
                                                      adjQuery.FieldByName('RPTax').AsCurrency+
                                                      adjQuery.FieldByName('MCC').AsCurrency+
                                                      adjQuery.FieldByName('UCEC').AsCurrency+
                                                      adjQuery.FieldByName('UCME').AsCurrency+
                                                      adjQuery.FieldByName('UCNPCStrandedContCost').AsCurrency+
                                                      adjQuery.FieldByName('UCNPCStrandedDebts').AsCurrency+
                                                      adjQuery.FieldByName('Fitall').AsCurrency+
                                                      adjQuery.FieldByName('gram').AsCurrency+
                                                      adjQuery.FieldByName('OC_pr').AsFloat+
                                                      adjQuery.FieldByName('OC_xr').AsFloat+
                                                      adjQuery.FieldByName('OC_pf').AsFloat;
       totalS := 0.00;
       totalS := (adjQuery.FieldByName('GenSysCharge').AsCurrency+
                                                      adjQuery.FieldByName('VATGenCO').AsCurrency+
                                                      adjQuery.FieldByName('TCTransSystemCharge').AsCurrency+
                                                      adjQuery.FieldByName('TCDemandCharge').AsCurrency+
                                                      adjQuery.FieldByName('VATTransCO').AsCurrency+
                                                      adjQuery.FieldByName('SystemLossCharge').AsCurrency+
                                                      adjQuery.FieldByName('VATSystemLossGenCO').AsCurrency+
                                                      adjQuery.FieldByName('DCDistributionCharge').AsCurrency+
                                                      adjQuery.FieldByName('DCDemandCharge').AsCurrency+
                                                      adjQuery.FieldByName('SCRetCustCharge').AsCurrency+
                                                      adjQuery.FieldByName('SCSupplySysCharge').AsCurrency+
                                                      adjQuery.FieldByName('MCRetailCustCharge').AsCurrency+
                                                      adjQuery.FieldByName('MCSystemCharge').AsCurrency+
                                                      adjQuery.FieldByName('LifelineDiscSubs').AsCurrency+
                                                      adjQuery.FieldByName('ICCrossSubsidyCharge').AsCurrency+
                                                      adjQuery.FieldByName('PowerActRateRed').AsCurrency+
                                                      adjQuery.FieldByName('SCDisc').AsCurrency+
                                                      adjQuery.FieldByName('PARec').AsCurrency+
                                                      adjQuery.FieldByName('VATDist').AsCurrency+
                                                      adjQuery.FieldByName('VatDiscAmt').AsCurrency+
                                                      adjQuery.FieldByName('RPTax').AsCurrency+
                                                      adjQuery.FieldByName('MCC').AsCurrency+
                                                      adjQuery.FieldByName('UCEC').AsCurrency+
                                                      adjQuery.FieldByName('UCME').AsCurrency+
                                                      adjQuery.FieldByName('UCNPCStrandedContCost').AsCurrency+
                                                      adjQuery.FieldByName('UCNPCStrandedDebts').AsCurrency+
                                                      adjQuery.FieldByName('Fitall').AsCurrency+
                                                      adjQuery.FieldByName('gram').AsCurrency+
                                                      adjQuery.FieldByName('OC_pr').AsCurrency+
                                                      adjQuery.FieldByName('OC_xr').AsCurrency+
                                                      adjQuery.FieldByName('OC_pf').AsCurrency) -

                                                     (adjQuery.FieldByName('ABGenSysCharge').AsCurrency+
                                                      adjQuery.FieldByName('ABVATGenCO').AsCurrency+
                                                      adjQuery.FieldByName('ABTCTransSystemCharge').AsCurrency+
                                                      adjQuery.FieldByName('ABTCDemandCharge').AsCurrency+
                                                      adjQuery.FieldByName('ABVATTransCO').AsCurrency+
                                                      adjQuery.FieldByName('ABSystemLossCharge').AsCurrency+
                                                      adjQuery.FieldByName('ABVATSystemLossGenCO').AsCurrency+
                                                      adjQuery.FieldByName('ABDCDistributionCharge').AsCurrency+
                                                      adjQuery.FieldByName('ABDCDemandCharge').AsCurrency+
                                                      adjQuery.FieldByName('ABSCRetCustCharge').AsCurrency+
                                                      adjQuery.FieldByName('ABSCSupplySysCharge').AsCurrency+
                                                      adjQuery.FieldByName('ABMCRetailCustCharge').AsCurrency+
                                                      adjQuery.FieldByName('ABMCSystemCharge').AsCurrency+
                                                      adjQuery.FieldByName('ABLifelineDiscSubs').AsCurrency+
                                                      adjQuery.FieldByName('ABICCrossSubsidyCharge').AsCurrency+
                                                      adjQuery.FieldByName('ABPowerActRateRed').AsCurrency+
                                                      adjQuery.FieldByName('ABSCDisc').AsCurrency+
                                                      adjQuery.FieldByName('ABPARec').AsCurrency+
                                                      adjQuery.FieldByName('ABVATDist').AsCurrency+
                                                      adjQuery.FieldByName('ABVatDiscAmt').AsCurrency+
                                                      adjQuery.FieldByName('ABRPTax').AsCurrency+
                                                      adjQuery.FieldByName('ABMCC').AsCurrency+
                                                      adjQuery.FieldByName('ABUCEC').AsCurrency+
                                                      adjQuery.FieldByName('ABUCME').AsCurrency+
                                                      adjQuery.FieldByName('ABUCNPCStrandedContCost').AsCurrency+
                                                      adjQuery.FieldByName('ABUCNPCStrandedDebts').AsCurrency+
                                                      adjQuery.FieldByName('ABFitall').AsCurrency+
                                                      adjQuery.FieldByName('ABgram').AsCurrency)+
                                                      adjQuery.FieldByName('OC_pr_AB').AsCurrency+
                                                      adjQuery.FieldByName('OC_xr_AB').AsCurrency+
                                                      adjQuery.FieldByName('OC_pf_AB').AsCurrency;

   adjQueryTotalSales_.AsFloat      :=  totalS;
   adjQueryResidentialSales.AsFloat :=  totalS - RoundOff(
                                        adjQueryMCCDiff.AsCurrency+
                                        adjQueryUCMEDiff.AsCurrency+
                                        adjQueryUCECDiff.AsCurrency+
                                        adjQueryVatDis_F.AsCurrency+
                                        adjQueryVATGEnCODiff.AsCurrency+
                                        adjQueryVATTransCODiff.AsCurrency+
                                        adjQueryVATSystemLossGenCODiff.AsCurrency+
                                        adjQueryUCNPCStrandedContCostDiff.AsCurrency+
                                        adjQueryUCNPCStrandedDebtsDiff.AsCurrency+
                                        adjQueryFitallDiff.AsCurrency+
                                        adjQueryRPTaxDiff.AsCurrency);

end;
procedure TAdjustmentRecordForm.AdjSummCalcFields(DataSet: TDataSet);
begin
  AdjSummprintdiff.AsCurrency := AdjSummDifference.AsCurrency * -1;
end;

procedure TAdjustmentRecordForm.AreaComboBoxChange(Sender: TObject);
begin
        AssigMyQuery.Close;
        AssigMyQuery.SQL.Clear;
        AssigMyQuery.SQL.Text:='Select * from `Signatories` where `area` like '+quotedstr(AreaComboBox.Text)+' ';
        AssigMyQuery.Open;

        Prepared.text :=      AssigMyQueryPreparedBy.Text;
        PreparedPos.text :=   AssigMyQueryPBPosition.Text;
        Checked.text :=       AssigMyQueryCheckBy.Text;
        CheckedPos.text :=    AssigMyQueryCBPosition.Text;
        Certified.text :=     AssigMyQueryCertifiedCorrectby.Text;
        CertifiedPos.text :=  AssigMyQueryCCCPosition.Text;
        Reviewed.text :=      AssigMyQueryReviewedby.Text;
        ReviewedPos.text :=   AssigMyQueryRBPosition.Text;
        Attested.text :=      AssigMyQueryAttestedby.Text;
        AttestedPos.text :=   AssigMyQueryABPosition.Text;

        Edit3.Text :=         AssigMyQueryPreparedBy.Text;
        Edit4.Text :=         AssigMyQueryPBPosition.Text;
        Edit5.Text :=         AssigMyQueryCheckBy.Text;
        Edit6.Text :=         AssigMyQueryCBPosition.Text;
        Edit7.Text :=         AssigMyQueryCertifiedCorrectby.Text;
        Edit8.Text :=         AssigMyQueryCCCPosition.Text;
        Edit9.Text :=         AssigMyQueryReviewedby.Text;
        Edit10.Text:=         AssigMyQueryRBPosition.Text;
        Edit11.Text:=         AssigMyQueryAttestedby.Text;
        Edit12.Text:=         AssigMyQueryABPosition.Text;

        if AreaComboBox.Text= 'Dipolog' then begin
            RadioGroup4.ItemIndex:=0;
          end else if AreaComboBox.Text='Pinan' then  begin
            RadioGroup4.ItemIndex:=1;
          end else if AreaComboBox.text='Sindangan' then begin
            RadioGroup4.ItemIndex:=2;
          end else if AreaComboBox.text='Liloy' then begin
            RadioGroup4.ItemIndex:=3;
        end;

end;

procedure TAdjustmentRecordForm.enableTextEditor(option :Boolean);
begin
  if option = false then
  begin
    EditBillMonth.Enabled            := false;
    EditAdjDate.Enabled              := false;
    EditPresentReadingDate.Enabled   := false;
    EditPreviousReadingDate.Enabled  := false;
    EditAddress.Enabled              := false;
    EditArea.Enabled                 := false;
    EditBook.Enabled                 := false;
    EditSequence.Enabled             := false;
    EditName.Enabled                 := false;
    DBEdit4.ReadOnly                 := true;
   // DBRadioGroup1.Enabled            := false;
  end
  else
  begin
    EditBillMonth.Enabled            := true;
    EditAdjDate.Enabled              := true;
    EditPresentReadingDate.Enabled   := true;
    EditPreviousReadingDate.Enabled  := true;
    EditAddress.Enabled              := true;
    EditArea.Enabled                 := true;
    EditBook.Enabled                 := true;
    EditSequence.Enabled             := true;
    EditName.Enabled                 := true;
    DBEdit4.ReadOnly                 := false;
   // DBRadioGroup1.Enabled            := true;
  end;

end;

end.





