unit ReadingCompute;

interface

uses
  Windows,
  Messages,
  Classes,
  SysUtils,
  Graphics,
  Controls,
  StdCtrls,
  Forms,
  Dialogs,
  DBCtrls,
  DB,
  ExtCtrls,
  Mask,
  Buttons,
  Grids,
  DBGrids,
  PDJSillyLabel,
  PDJRotoLabel,
  Menus,
  BarMenus,
  DateUtils,
  MemDS,
  DBAccess,
  MyAccess,
  Gauges,
  DsFancyButton,
  CRGrid,
  ComCtrls,
  PDJButton,
  NxCollection,
  NxEdit,
  math,
  AppEvnts,
  CPort,
  IDGlobal,
  RAPI,
  RAPI2, CRDBGrid1, DBGrid1, NxPageControl, AdvEdit, AdvEdBtn, PlannerDatePicker,
  AdvPanel, CPortTypes;

type
  TReadingComputeForm = class(TForm)
    Panel1: TPanel;
    BillMonthLabel: TPDJRotoLabel;
    ReadingDateLabel: TPDJRotoLabel;
    Panel10: TPanel;
    Label27: TLabel;
    Label28: TLabel;
    Edit3: TEdit;
    PDJSillyLabel11: TNxButton;
    BcBarPopupMenu2: TBcBarPopupMenu;
    Disconnection1: TMenuItem;
    Reconnection1: TMenuItem;
    ChangeMeter1: TMenuItem;
    ChangeName1: TMenuItem;
    ransferArea1: TMenuItem;
    Bevel19: TBevel;
    Bevel20: TBevel;
    StaticText1: TStaticText;
    Timer1: TTimer;
    ARHistory: TMyQuery;
    ARHistorybillmonth: TStringField;
    ARHistorybm: TStringField;
    ARHistoryKilowattHour: TFloatField;
    Panel4: TPanel;
    Label36: TLabel;
    Gauge1: TGauge;
    UpdateSQL: TMyQuery;
    CheckDuplicate: TMyQuery;
    AssignBillNumberPanel: TNxHeaderPanel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Bevel1: TBevel;
    Bevel30: TBevel;
    Bevel31: TBevel;
    Bevel33: TBevel;
    Gauge2: TGauge;
    St1: TStaticText;
    St2: TStaticText;
    St3: TStaticText;
    St4: TStaticText;
    PDJSillyLabel14: TNxButton;
    PDJSillyLabel15: TNxButton;
    RadioGroup1: TRadioGroup;
    Bevel2: TBevel;
    RBARLedger: TMyQuery;
    RBUnpaidBills: TMyQuery;
    RBARLedgerEntry: TIntegerField;
    RBARLedgerCode: TFloatField;
    RBARLedgerDate: TDateField;
    RBARLedgerDocument: TStringField;
    RBARLedgerBillMonth: TStringField;
    RBARLedgerReading: TFloatField;
    RBARLedgerKilowattHour: TFloatField;
    RBARLedgerDebit: TFloatField;
    RBARLedgerCredit: TFloatField;
    RBARLedgerBalance: TFloatField;
    RBARLedgerUCNPCSD: TFloatField;
    RBARLedgerUCNPCSCC: TFloatField;
    RBARLedgerUCDUSCC: TFloatField;
    RBARLedgerUCME: TFloatField;
    RBARLedgerUCETR: TFloatField;
    RBARLedgerUCEC: TFloatField;
    RBARLedgerUCCSR: TFloatField;
    RBARLedgerCollectorCode: TStringField;
    RBARLedgerVATDiscAmt: TFloatField;
    RBARLedgerVATDistDiscAmt: TFloatField;
    RBARLedgerVATGenCoDiscAmt: TFloatField;
    RBARLedgerVATTransCoDiscAmt: TFloatField;
    RBARLedgerVATSystemLossDiscAmt: TFloatField;
    RBARLedgerVATDist: TFloatField;
    RBARLedgerVATGenCO: TFloatField;
    RBARLedgerVATTransCO: TFloatField;
    RBARLedgerVATSystemLossGenCO: TFloatField;
    RBARLedgerVATSystemLossTransCO: TFloatField;
    RBARLedgerVAT: TFloatField;
    RBUnpaidBillsEntry: TIntegerField;
    RBUnpaidBillsDocument: TStringField;
    RBUnpaidBillsCode: TFloatField;
    RBUnpaidBillsArea: TStringField;
    RBUnpaidBillsBook: TStringField;
    RBUnpaidBillsAccountNumber: TStringField;
    RBUnpaidBillsDate: TDateField;
    RBUnpaidBillsName: TStringField;
    RBUnpaidBillsBillMonth: TStringField;
    RBUnpaidBillsDeleteRemarks: TStringField;
    RBUnpaidBillsRateCode: TStringField;
    RBUnpaidBillsReading: TFloatField;
    RBUnpaidBillsKilowattHour: TFloatField;
    RBUnpaidBillsAmount: TFloatField;
    RBUnpaidBillsUCNPCSD: TFloatField;
    RBUnpaidBillsUCNPCSCC: TFloatField;
    RBUnpaidBillsUCDUSCC: TFloatField;
    RBUnpaidBillsUCME: TFloatField;
    RBUnpaidBillsUCETR: TFloatField;
    RBUnpaidBillsUCEC: TFloatField;
    RBUnpaidBillsUCCSR: TFloatField;
    RBUnpaidBillsTransformerRental: TFloatField;
    RBUnpaidBillsVATDiscAmt: TFloatField;
    RBUnpaidBillsVATDistDiscAmt: TFloatField;
    RBUnpaidBillsVATGenCoDiscAmt: TFloatField;
    RBUnpaidBillsVATTransCoDiscAmt: TFloatField;
    RBUnpaidBillsVATSystemLossDiscAmt: TFloatField;
    RBUnpaidBillsVATDist: TFloatField;
    RBUnpaidBillsVATGenCO: TFloatField;
    RBUnpaidBillsVATTransCO: TFloatField;
    RBUnpaidBillsVATSystemLossGenCO: TFloatField;
    RBUnpaidBillsVATSystemLossTransCO: TFloatField;
    RBUnpaidBillsVAT: TFloatField;
    DSRBARLedger: TDataSource;
    DSRBUnpaidBills: TDataSource;
    PopupMenu1: TPopupMenu;
    ViewARLedgerandUnpaidBills1: TMenuItem;
    PDJSillyLabel5: TNxButton;
    PMaster: TMyQuery;
    PMastercreditmemo: TStringField;
    PMasterAccountNumber: TStringField;
    PMasterName: TStringField;
    PMasterSequence: TStringField;
    PMasteraddress: TStringField;
    GetPKV: TMyQuery;
    GetPKVdebit: TFloatField;
    GetPKVcredit: TFloatField;
    RestoreFromBillingArchivePanel: TNxHeaderPanel;
    restorefrombillingarchiveclose: TNxButton;
    searchaccount: TNxEdit;
    Memo1: TNxMemo;
    NxFlipContainer1: TNxFlipContainer;
    menupanel: TNxFlipPanel;
    checklistbutton: TNxButton;
    powerbill: TNxButton;
    billingregister: TNxButton;
    fixdates: TNxButton;
    restorefrombillingarchive: TNxButton;
    assignbillnumber: TNxButton;
    SelectRoute: TNxButton;
    ReadingDataPanel: TNxFlipPanel;
    Label24: TLabel;
    Label25: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DemandLabel: TLabel;
    Label22: TLabel;
    Label13: TLabel;
    Label4: TLabel;
    Label8: TLabel;
    PresRead: TDBEdit;
    PrevRead: TDBEdit;
    Diff: TDBEdit;
    Demand: TDBEdit;
    FeedBack: TDBEdit;
    Edit1: TEdit;
    KWH: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    ChangeMeterDataPanel: TNxFlipPanel;
    Label6: TLabel;
    Label7: TLabel;
    Label5: TLabel;
    Label29: TLabel;
    DBCheckBox1: TDBCheckBox;
    CMPres: TDBEdit;
    CMPrev: TDBEdit;
    CMKWH: TDBEdit;
    CMDemand: TDBEdit;
    checkcollection: TMyQuery;
    checkcollectionreceiptnumber: TStringField;
    checkcollectionkilowatthour: TFloatField;
    DBEdit3: TDBEdit;
    Label9: TLabel;
    CheckListPanel: TNxHeaderPanel;
    RadioGroup2: TRadioGroup;
    GroupBox1: TGroupBox;
    FromAcct: TNxEdit;
    NxLabel1: TNxLabel;
    NxLabel2: TNxLabel;
    ToAcct: TNxEdit;
    CheckListPanelButton: TNxButton;
    NxButton3: TNxButton;
    Gauge3: TGauge;
    CLBill: TMyQuery;
    CLBillCode: TFloatField;
    CLBillArea: TStringField;
    CLBillBook: TStringField;
    CLBillSequence: TStringField;
    CLBillAccountNumber: TStringField;
    CLBillName: TStringField;
    CLBillAddress: TStringField;
    CLBillRateCode: TStringField;
    CLBillSerial: TStringField;
    CLBillMultiplier: TFloatField;
    CLBillPreviousReadingDate: TDateField;
    CLBillPresentReadingDate: TDateField;
    CLBillPresentReadingKWH: TFloatField;
    CLBillPreviousReadingKWH: TFloatField;
    CLBillDiff: TFloatField;
    CLBillDemand: TFloatField;
    CLBillFlatRateWattage: TFloatField;
    CLBillFeedBackCode: TStringField;
    CLBillCM: TStringField;
    CLBillCMMultiplier: TFloatField;
    CLBillCMPreviousReadingKWH: TFloatField;
    CLBillCMPresentReadingKWH: TFloatField;
    CLBillCMKilowattHour: TFloatField;
    CLBillCMDemand: TFloatField;
    CLBillKilowattHour: TFloatField;
    CLBillKilowattUsed: TFloatField;
    CLBillGenSysCharge: TFloatField;
    CLBillHostCommCharge: TFloatField;
    CLBillForexCharge: TFloatField;
    CLBillTCDemandCharge: TFloatField;
    CLBillTCTransSystemCharge: TFloatField;
    CLBillSystemLossCharge: TFloatField;
    CLBillDCDemandCharge: TFloatField;
    CLBillDCDistributionCharge: TFloatField;
    CLBillSCRetCustCharge: TFloatField;
    CLBillSCSupplySysCharge: TFloatField;
    CLBillMCRetailCustCharge: TFloatField;
    CLBillMCSystemCharge: TFloatField;
    CLBillUCNPCStrandedDebts: TFloatField;
    CLBillUCNPCStrandedContCost: TFloatField;
    CLBillUCDUStrandedContCost: TFloatField;
    CLBillUCME: TFloatField;
    CLBillUCEqTaxesAndRoyalties: TFloatField;
    CLBillUCEC: TFloatField;
    CLBillUCCrossSubRemoval: TFloatField;
    CLBillICCrossSubsidyCharge: TFloatField;
    CLBillPowerActRateRed: TFloatField;
    CLBillLifelineDiscSubs: TFloatField;
    CLBillLoanCondo: TFloatField;
    CLBillTransformerRental: TFloatField;
    CLBillOCAmount1: TFloatField;
    CLBillOCCode1: TStringField;
    CLBillOCMo1: TFloatField;
    CLBillOCTotal1: TFloatField;
    CLBillOCCode2: TStringField;
    CLBillOCAmount2: TFloatField;
    CLBillOCMo2: TFloatField;
    CLBillOCTotal2: TFloatField;
    CLBillOCCode3: TStringField;
    CLBillOCAmount3: TFloatField;
    CLBillOCMo3: TFloatField;
    CLBillOCTotal3: TFloatField;
    CLBillTotalBill: TFloatField;
    CLBillBillNumber: TStringField;
    CLBillOEBRNumber: TStringField;
    CLBillBillMonth: TStringField;
    CLBillBillDate: TDateField;
    CLBillStatusCode: TStringField;
    CLBillLCCustMo: TFloatField;
    CLBillPrevYearAdjPowerCost: TFloatField;
    CLBillSysLossUnderRecov: TFloatField;
    CLBillVATDisc: TFloatField;
    CLBillVATDiscAmt: TFloatField;
    CLBillVATDistDiscAmt: TFloatField;
    CLBillVATGenCoDiscAmt: TFloatField;
    CLBillVATTransCoDiscAmt: TFloatField;
    CLBillVATSystemLossDiscAmt: TFloatField;
    CLBillVATDist: TFloatField;
    CLBillVATGenCO: TFloatField;
    CLBillVATTransCO: TFloatField;
    CLBillVATSystemLossGenCO: TFloatField;
    CLBillVATSystemLossTransCO: TFloatField;
    CLBillVAT: TFloatField;
    CLBillAdjAmountBalance: TFloatField;
    CLBillAdjAmountApplied: TFloatField;
    NxButton2: TNxButton;
    Panel2: TNxHeaderPanel;
    Memo2: TMemo;
    Memo3: TMemo;
    UpdatePsion: TMyQuery;
    MasterQ: TMyQuery;
    MasterQCode: TIntegerField;
    MasterQArea: TStringField;
    MasterQBook: TStringField;
    MasterQSequence: TStringField;
    MasterQAccountNumber: TStringField;
    MasterQName: TStringField;
    MasterQAddress: TStringField;
    MasterQRateCode: TStringField;
    MasterQConsCode: TStringField;
    MasterQConnCode: TStringField;
    MasterQTransformer: TStringField;
    MasterQMeterBrand: TStringField;
    MasterQSerial: TStringField;
    MasterQMultiplier: TFloatField;
    MasterQNewConnectionDate: TDateField;
    MasterQReconnectionDate: TDateField;
    MasterQDisconnectionDate: TDateField;
    MasterQPreviousReadingDate: TDateField;
    MasterQPresentReadingDate: TDateField;
    MasterQPreviousReadingKWH: TFloatField;
    MasterQPresentReadingKWH: TFloatField;
    MasterQDiff: TFloatField;
    MasterQDemand: TFloatField;
    MasterQFlatRateWattage: TFloatField;
    MasterQFeedBackCode: TStringField;
    MasterQCM: TStringField;
    MasterQCMMultiplier: TFloatField;
    MasterQCMPreviousReadingKWH: TFloatField;
    MasterQCMPresentReadingKWH: TFloatField;
    MasterQCMKilowattHour: TFloatField;
    MasterQCMDemand: TFloatField;
    MasterQKilowattHour: TFloatField;
    MasterQKilowattUsed: TFloatField;
    MasterQGenSysCharge: TFloatField;
    MasterQHostCommCharge: TFloatField;
    MasterQForexCharge: TFloatField;
    MasterQTCDemandCharge: TFloatField;
    MasterQTCTransSystemCharge: TFloatField;
    MasterQSystemLossCharge: TFloatField;
    MasterQDCDemandCharge: TFloatField;
    MasterQDCDistributionCharge: TFloatField;
    MasterQSCRetCustCharge: TFloatField;
    MasterQSCSupplySysCharge: TFloatField;
    MasterQMCRetailCustCharge: TFloatField;
    MasterQMCSystemCharge: TFloatField;
    MasterQUCNPCStrandedDebts: TFloatField;
    MasterQUCNPCStrandedContCost: TFloatField;
    MasterQUCDUStrandedContCost: TFloatField;
    MasterQUCME: TFloatField;
    MasterQUCEqTaxesAndRoyalties: TFloatField;
    MasterQUCEC: TFloatField;
    MasterQUCCrossSubRemoval: TFloatField;
    MasterQICCrossSubsidyCharge: TFloatField;
    MasterQPowerActRateRed: TFloatField;
    MasterQLifelineDiscSubs: TFloatField;
    MasterQLoanCondo: TFloatField;
    MasterQTransformerRental: TFloatField;
    MasterQOCCode1: TStringField;
    MasterQOCAmount1: TFloatField;
    MasterQOCMo1: TFloatField;
    MasterQOCTotal1: TFloatField;
    MasterQOCCode2: TStringField;
    MasterQOCAmount2: TFloatField;
    MasterQOCMo2: TFloatField;
    MasterQOCTotal2: TFloatField;
    MasterQOCCode3: TStringField;
    MasterQOCAmount3: TFloatField;
    MasterQOCMo3: TFloatField;
    MasterQOCTotal3: TFloatField;
    MasterQTotalBill: TFloatField;
    MasterQBillNumber: TStringField;
    MasterQOEBRNumber: TStringField;
    MasterQBillMonth: TStringField;
    MasterQDeleteRemarks: TStringField;
    MasterQPoleNumber: TStringField;
    MasterQFeederNumber: TStringField;
    MasterQXFormerQty: TIntegerField;
    MasterQXFormerKVA: TStringField;
    MasterQAge30: TFloatField;
    MasterQAge60: TFloatField;
    MasterQAge90: TFloatField;
    MasterQAge120: TFloatField;
    MasterQAgeOver120: TFloatField;
    MasterQAgeTotal: TFloatField;
    MasterQTotalPayments: TFloatField;
    MasterQARBalance: TFloatField;
    MasterQLCCustMo: TFloatField;
    MasterQPrevYearAdjPowerCost: TFloatField;
    MasterQSysLossUnderRecov: TFloatField;
    MasterQVATDisc: TFloatField;
    MasterQVATDiscAmt: TFloatField;
    MasterQVATDistDiscAmt: TFloatField;
    MasterQVATGenCoDiscAmt: TFloatField;
    MasterQVATTransCoDiscAmt: TFloatField;
    MasterQVATSystemLossDiscAmt: TFloatField;
    MasterQVATDist: TFloatField;
    MasterQVATGenCO: TFloatField;
    MasterQVATTransCO: TFloatField;
    MasterQVATSystemLossGenCO: TFloatField;
    MasterQVATSystemLossTransCO: TFloatField;
    MasterQVAT: TFloatField;
    UpdateBCFF: TMyQuery;
    DownLoadBtn: TNxButton;
    ApplicationEvents1: TApplicationEvents;
    NxButton4: TNxButton;
    Gauge4: TGauge;
    serial: TComPort;
    Panel3: TNxHeaderPanel;
    Label17: TLabel;
    Label23: TLabel;
    Label26: TLabel;
    PDJSillyLabel9: TNxButton;
    PDJSillyLabel10: TNxButton;
    Pres: TNxDatePicker;
    Prev: TNxDatePicker;
    BMon: TNxEdit;
    NxHeaderPanel1: TNxHeaderPanel;
    NewConn: TMyQuery;
    NewConnName: TStringField;
    NewConnSerial: TStringField;
    NewConnPresentReading: TFloatField;
    NewConnRemarks: TStringField;
    NewConnReadTime: TStringField;
    dsNewConn: TDataSource;
    NewConnArea: TStringField;
    NewConnBook: TStringField;
    PopupMenu2: TPopupMenu;
    A1: TMenuItem;
    CLBillReadTime: TStringField;
    FF: TMyQuery;
    FFID: TIntegerField;
    FFCode: TFloatField;
    FFBillMonth: TStringField;
    FFFFDate: TDateField;
    FFRemarks: TStringField;
    DiffCons: TMyQuery;
    DiffConskilowatthour: TFloatField;
    DiffConskilowattused: TFloatField;
    PKVRIndex: TMyQuery;
    PKVR: TMyQuery;
    PKVRcode: TFloatField;
    PKVRArea: TStringField;
    PKVRBook: TStringField;
    PKVRSequence: TStringField;
    PKVRAccountNumber: TStringField;
    PKVRName: TStringField;
    PKVRBillMonth: TStringField;
    PKVRDebit: TFloatField;
    PKVRcredit: TFloatField;
    PKVRbalance: TFloatField;
    PKVRbillnumber: TStringField;
    PKVRpostingdate: TDateField;
    Panel6: TPanel;
    Gauge5: TGauge;
    Label10: TLabel;
    Label11: TLabel;
    NxMemo1: TNxMemo;
    RadioGroup3: TRadioGroup;
    SetRestUnpaid: TMyQuery;
    PutBillRestUnpaid: TMyQuery;
    SetRestUnpaidEntry: TIntegerField;
    SetRestUnpaidDocument: TStringField;
    SetRestUnpaidCode: TFloatField;
    SetRestUnpaidAccountNumber: TStringField;
    SetRestUnpaidName: TStringField;
    SetRestUnpaidBillMonth: TStringField;
    SetRestUnpaidAmount: TFloatField;
    SetRestUnpaidRestOEBRNumber: TStringField;
    SetRestUnpaidRestBillMonth: TStringField;
    SCRead: TMyQuery;
    SCReadSCode: TFloatField;
    SCReadArea: TStringField;
    SCReadBook: TStringField;
    SCReadSequence: TStringField;
    SCReadAccountNumber: TStringField;
    SCReadBillingName: TStringField;
    SCReadName: TStringField;
    SCReadBDay: TDateField;
    SCReadCPNo: TStringField;
    SCReadSCIDNo: TStringField;
    SCReadSpouseSCIDNo: TStringField;
    SCReadDateApplied: TDateField;
    SCReadExpirationDate: TDateField;
    SCReadRemarks: TStringField;
    SCReadAddress: TStringField;
    SCReadstillvalid: TLargeintField;
    NxLabel3: TNxLabel;
    NxLabel4: TNxLabel;
    NxLabel5: TNxLabel;
    MasterQDiffBillPerKwhr: TFloatField;
    MasterQDiffBillPerKW: TFloatField;
    MasterQDiffBillPerCust: TFloatField;
    MasterQMCC: TFloatField;
    MasterQPKVROebrNumber: TStringField;
    MasterQPKVRBillMonth: TStringField;
    MasterQPKVRAmount: TFloatField;
    MasterQSCDisc: TFloatField;
    MasterQWRateCode: TStringField;
    MasterQSCAmt4Disc: TFloatField;
    MasterQDWLEN1: TFloatField;
    MasterQDWLEN2: TFloatField;
    StaticText2: TStaticText;
    CLBillDiffBillPerKwhr: TFloatField;
    CLBillDiffBillPerKW: TFloatField;
    CLBillDiffBillPerCust: TFloatField;
    CLBillMCC: TFloatField;
    CLBillPKVROebrNumber: TStringField;
    CLBillPKVRBillMonth: TStringField;
    CLBillPKVRAmount: TFloatField;
    CLBillTransSysAncRefund: TFloatField;
    CLBillTransDemAncRefund: TFloatField;
    CLBillVATTransAncRefund: TFloatField;
    CLBillSCDisc: TFloatField;
    CLBillWRateCode: TStringField;
    CLBillSCAmt4Disc: TFloatField;
    CLBillCBook: TStringField;
    Area: TEdit;
    Book: TEdit;
    Label12: TLabel;
    Label14: TLabel;
    MasterQCBook: TStringField;
    SCReadidSCDisc: TLongWordField;
    NewConnidNewConn: TLongWordField;
    CLBillEntry: TIntegerField;
    PKVRidBillAdjLedger: TLongWordField;
    PKVRkilowatthour: TLongWordField;
    DBGrid3: TCRDBGrid1;
    DBGrid2: TDBGrid1;
    DBGrid1: TDBGrid1;
    RBConn: TMyQuery;
    RBConnconncode: TStringField;
    NxHeaderPanel2: TNxHeaderPanel;
    NxPageControl1: TNxPageControl;
    NxTabSheet1: TNxTabSheet;
    DBGrid11: TDBGrid1;
    TabSheet3: TNxTabSheet;
    Panel7: TPanel;
    PageControl2: TNxPageControl;
    TabSheet6: TNxTabSheet;
    DBGrid12: TDBGrid1;
    TabSheet7: TNxTabSheet;
    DBGrid4: TDBGrid1;
    TabSheet8: TNxTabSheet;
    DBGrid5: TDBGrid1;
    TabSheet9: TNxTabSheet;
    DBGrid6: TDBGrid1;
    TabSheet10: TNxTabSheet;
    DBGrid7: TDBGrid1;
    TabSheet4: TNxTabSheet;
    CRDBGrid11: TCRDBGrid1;
    NxTabSheet4: TNxTabSheet;
    CRDBGrid3: TCRDBGrid1;
    TabSheet5: TNxTabSheet;
    DBGrid9: TDBGrid1;
    TabSheet11: TNxTabSheet;
    NxPageControl2: TNxPageControl;
    NxTabSheet2: TNxTabSheet;
    DBGrid13: TDBGrid1;
    NxTabSheet3: TNxTabSheet;
    DBGrid14: TDBGrid1;
    NxTabSheet5: TNxTabSheet;
    CRDBGrid12: TCRDBGrid1;
    TabSheet12: TNxTabSheet;
    PageControl3: TPageControl;
    TabSheet13: TTabSheet;
    DBGrid15: TDBGrid1;
    TabSheet14: TTabSheet;
    DBGrid16: TDBGrid1;
    NxLinkLabel1: TNxLinkLabel;
    DBText3: TDBText;
    Label16: TLabel;
    DBText4: TDBText;
    Label18: TLabel;
    Bevel3: TBevel;
    Bevel6: TBevel;
    Label19: TLabel;
    StaticText3: TStaticText;
    LateBills: TMyQuery;
    LateBillsCode: TFloatField;
    LateBillsArea: TStringField;
    LateBillsBook: TStringField;
    LateBillsSequence: TStringField;
    LateBillsAccountNumber: TStringField;
    LateBillsName: TStringField;
    LateBillsAddress: TStringField;
    LateBillsRateCode: TStringField;
    LateBillsSerial: TStringField;
    LateBillsMultiplier: TFloatField;
    LateBillsPreviousReadingDate: TDateField;
    LateBillsPresentReadingDate: TDateField;
    LateBillsPreviousReadingKWH: TFloatField;
    LateBillsPresentReadingKWH: TFloatField;
    LateBillsDiff: TFloatField;
    LateBillsDemand: TFloatField;
    LateBillsFlatRateWattage: TFloatField;
    LateBillsFeedBackCode: TStringField;
    LateBillsCM: TStringField;
    LateBillsCMMultiplier: TFloatField;
    LateBillsCMPreviousReadingKWH: TFloatField;
    LateBillsCMPresentReadingKWH: TFloatField;
    LateBillsCMKilowattHour: TFloatField;
    LateBillsCMDemand: TFloatField;
    LateBillsKilowattHour: TFloatField;
    LateBillsKilowattUsed: TFloatField;
    LateBillsGenSysCharge: TFloatField;
    LateBillsHostCommCharge: TFloatField;
    LateBillsForexCharge: TFloatField;
    LateBillsTCDemandCharge: TFloatField;
    LateBillsTCTransSystemCharge: TFloatField;
    LateBillsSystemLossCharge: TFloatField;
    LateBillsDCDemandCharge: TFloatField;
    LateBillsDCDistributionCharge: TFloatField;
    LateBillsSCRetCustCharge: TFloatField;
    LateBillsSCSupplySysCharge: TFloatField;
    LateBillsMCRetailCustCharge: TFloatField;
    LateBillsMCSystemCharge: TFloatField;
    LateBillsUCNPCStrandedDebts: TFloatField;
    LateBillsUCNPCStrandedContCost: TFloatField;
    LateBillsUCDUStrandedContCost: TFloatField;
    LateBillsUCME: TFloatField;
    LateBillsUCEqTaxesAndRoyalties: TFloatField;
    LateBillsUCEC: TFloatField;
    LateBillsUCCrossSubRemoval: TFloatField;
    LateBillsICCrossSubsidyCharge: TFloatField;
    LateBillsPowerActRateRed: TFloatField;
    LateBillsLifelineDiscSubs: TFloatField;
    LateBillsLoanCondo: TFloatField;
    LateBillsTransformerRental: TFloatField;
    LateBillsOCCode1: TStringField;
    LateBillsOCAmount1: TFloatField;
    LateBillsOCMo1: TFloatField;
    LateBillsOCTotal1: TFloatField;
    LateBillsOCCode2: TStringField;
    LateBillsOCAmount2: TFloatField;
    LateBillsOCMo2: TFloatField;
    LateBillsOCTotal2: TFloatField;
    LateBillsOCCode3: TStringField;
    LateBillsOCAmount3: TFloatField;
    LateBillsOCMo3: TFloatField;
    LateBillsOCTotal3: TFloatField;
    LateBillsTotalBill: TFloatField;
    LateBillsBillNumber: TStringField;
    LateBillsOEBRNumber: TStringField;
    LateBillsBillMonth: TStringField;
    LateBillsBillDate: TDateField;
    LateBillsstatuscode: TStringField;
    LateBillsLCCustMo: TFloatField;
    LateBillsPrevYearAdjPowerCost: TFloatField;
    LateBillsSysLossUnderRecov: TFloatField;
    LateBillsVATDisc: TFloatField;
    LateBillsVATDiscAmt: TFloatField;
    LateBillsVATDistDiscAmt: TFloatField;
    LateBillsVATGenCoDiscAmt: TFloatField;
    LateBillsVATTransCoDiscAmt: TFloatField;
    LateBillsVATSystemLossDiscAmt: TFloatField;
    LateBillsVATDist: TFloatField;
    LateBillsVATGenCO: TFloatField;
    LateBillsVATTransCO: TFloatField;
    LateBillsVATSystemLossGenCO: TFloatField;
    LateBillsVATSystemLossTransCO: TFloatField;
    LateBillsVAT: TFloatField;
    LateBillsAdjAmountBalance: TFloatField;
    LateBillsAdjAmountApplied: TFloatField;
    LateBillsReadTime: TStringField;
    BillHistory: TMyQuery;
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
    BillHistoryReadTime: TStringField;
    PilferBill: TMyQuery;
    PilferBillCode: TFloatField;
    PilferBillArea: TStringField;
    PilferBillBook: TStringField;
    PilferBillSequence: TStringField;
    PilferBillAccountNumber: TStringField;
    PilferBillName: TStringField;
    PilferBillAddress: TStringField;
    PilferBillRateCode: TStringField;
    PilferBillSerial: TStringField;
    PilferBillMultiplier: TFloatField;
    PilferBillPreviousReadingDate: TDateField;
    PilferBillPresentReadingDate: TDateField;
    PilferBillPreviousReadingKWH: TFloatField;
    PilferBillPresentReadingKWH: TFloatField;
    PilferBillDiff: TFloatField;
    PilferBillDemand: TFloatField;
    PilferBillFlatRateWattage: TFloatField;
    PilferBillFeedBackCode: TStringField;
    PilferBillCM: TStringField;
    PilferBillCMMultiplier: TFloatField;
    PilferBillCMPreviousReadingKWH: TFloatField;
    PilferBillCMPresentReadingKWH: TFloatField;
    PilferBillCMKilowattHour: TFloatField;
    PilferBillCMDemand: TFloatField;
    PilferBillKilowattHour: TFloatField;
    PilferBillKilowattUsed: TFloatField;
    PilferBillGenSysCharge: TFloatField;
    PilferBillHostCommCharge: TFloatField;
    PilferBillForexCharge: TFloatField;
    PilferBillTCDemandCharge: TFloatField;
    PilferBillTCTransSystemCharge: TFloatField;
    PilferBillSystemLossCharge: TFloatField;
    PilferBillDCDemandCharge: TFloatField;
    PilferBillDCDistributionCharge: TFloatField;
    PilferBillSCRetCustCharge: TFloatField;
    PilferBillSCSupplySysCharge: TFloatField;
    PilferBillMCRetailCustCharge: TFloatField;
    PilferBillMCSystemCharge: TFloatField;
    PilferBillUCNPCStrandedDebts: TFloatField;
    PilferBillUCNPCStrandedContCost: TFloatField;
    PilferBillUCDUStrandedContCost: TFloatField;
    PilferBillUCME: TFloatField;
    PilferBillUCEqTaxesAndRoyalties: TFloatField;
    PilferBillUCEC: TFloatField;
    PilferBillUCCrossSubRemoval: TFloatField;
    PilferBillICCrossSubsidyCharge: TFloatField;
    PilferBillPowerActRateRed: TFloatField;
    PilferBillLifelineDiscSubs: TFloatField;
    PilferBillLoanCondo: TFloatField;
    PilferBillTransformerRental: TFloatField;
    PilferBillOCCode1: TStringField;
    PilferBillOCAmount1: TFloatField;
    PilferBillOCMo1: TFloatField;
    PilferBillOCTotal1: TFloatField;
    PilferBillOCCode2: TStringField;
    PilferBillOCAmount2: TFloatField;
    PilferBillOCMo2: TFloatField;
    PilferBillOCTotal2: TFloatField;
    PilferBillOCCode3: TStringField;
    PilferBillOCAmount3: TFloatField;
    PilferBillOCMo3: TFloatField;
    PilferBillOCTotal3: TFloatField;
    PilferBillTotalBill: TFloatField;
    PilferBillBillNumber: TStringField;
    PilferBillOEBRNumber: TStringField;
    PilferBillBillMonth: TStringField;
    PilferBillBillDate: TDateField;
    PilferBillstatuscode: TStringField;
    PilferBillLCCustMo: TFloatField;
    PilferBillPrevYearAdjPowerCost: TFloatField;
    PilferBillSysLossUnderRecov: TFloatField;
    PilferBillVATDisc: TFloatField;
    PilferBillVATDiscAmt: TFloatField;
    PilferBillVATDistDiscAmt: TFloatField;
    PilferBillVATGenCoDiscAmt: TFloatField;
    PilferBillVATTransCoDiscAmt: TFloatField;
    PilferBillVATSystemLossDiscAmt: TFloatField;
    PilferBillVATDist: TFloatField;
    PilferBillVATGenCO: TFloatField;
    PilferBillVATTransCO: TFloatField;
    PilferBillVATSystemLossGenCO: TFloatField;
    PilferBillVATSystemLossTransCO: TFloatField;
    PilferBillVAT: TFloatField;
    PilferBillAdjAmountBalance: TFloatField;
    PilferBillAdjAmountApplied: TFloatField;
    PilferBillReadTime: TStringField;
    PilferBillDiffBillPerKwhr: TFloatField;
    PilferBillDiffBillPerKW: TFloatField;
    PilferBillDiffBillPerCust: TFloatField;
    PilferBillMCC: TFloatField;
    PilferBillPKVROebrNumber: TStringField;
    PilferBillPKVRBillMonth: TStringField;
    PilferBillPKVRAmount: TFloatField;
    PilferBillTransSysAncRefund: TFloatField;
    PilferBillTransDemAncRefund: TFloatField;
    PilferBillVATTransAncRefund: TFloatField;
    PilferBillRefKilowattHour: TFloatField;
    PilferBillPenalty: TFloatField;
    PilferBillAmountPaid: TFloatField;
    PilferBillBalance: TFloatField;
    PilferBillInstallment: TFloatField;
    PilferBillAmortization: TFloatField;
    PilferBillpostingcode: TStringField;
    dsPilferBill: TMyDataSource;
    dsbillhistory: TDataSource;
    dsLateBills: TDataSource;
    Pantawid: TMyQuery;
    Pantawidcode: TFloatField;
    PantawidArea: TStringField;
    PantawidBook: TStringField;
    PantawidSequence: TStringField;
    PantawidAccountNumber: TStringField;
    PantawidName: TStringField;
    PantawidBillMonth: TStringField;
    PantawidDebit: TFloatField;
    Pantawidcredit: TFloatField;
    Pantawidbalance: TFloatField;
    Pantawidbillnumber: TStringField;
    Pantawidpostingdate: TDateField;
    Pantawidmybalance: TFloatField;
    Pantawidkilowatthour: TLongWordField;
    recovery: TMyQuery;
    recoverycode: TFloatField;
    recoveryArea: TStringField;
    recoveryBook: TStringField;
    recoverySequence: TStringField;
    recoveryAccountNumber: TStringField;
    recoveryName: TStringField;
    recoveryBillMonth: TStringField;
    recoveryamount: TFloatField;
    recoverybillnumber: TStringField;
    recoverypostingdate: TDateField;
    recoverykilowatthour: TLongWordField;
    dsrecovery: TDataSource;
    dspantawid: TDataSource;
    OpenDialog1: TOpenDialog;
    Edit2: TEdit;
    CheckBox1: TCheckBox;
    fixdate1: TMyQuery;
    fixdate2: TMyQuery;
    fixdate1accountnumber: TStringField;
    fixdate1PresentReadingDate: TDateField;
    fixdate2accountnumber: TStringField;
    fixdate2newconnectiondate: TDateField;
    CLBillRPTax: TFloatField;
    CLBillBTax: TFloatField;
    BillHistoryentry: TIntegerField;
    BillHistoryDiffBillPerKwhr: TFloatField;
    BillHistoryDiffBillPerKW: TFloatField;
    BillHistoryDiffBillPerCust: TFloatField;
    BillHistoryMCC: TFloatField;
    BillHistoryPKVROebrNumber: TStringField;
    BillHistoryPKVRBillMonth: TStringField;
    BillHistoryPKVRAmount: TFloatField;
    BillHistoryTransSysAncRefund: TFloatField;
    BillHistoryTransDemAncRefund: TFloatField;
    BillHistoryVATTransAncRefund: TFloatField;
    BillHistorySCDisc: TFloatField;
    BillHistoryWRateCode: TStringField;
    BillHistorySCAmt4Disc: TFloatField;
    BillHistoryCBook: TStringField;
    BillHistoryRPTax: TFloatField;
    BillHistoryBTax: TFloatField;
    LateBillsentry: TIntegerField;
    LateBillsDiffBillPerKwhr: TFloatField;
    LateBillsDiffBillPerKW: TFloatField;
    LateBillsDiffBillPerCust: TFloatField;
    LateBillsMCC: TFloatField;
    LateBillsPKVROebrNumber: TStringField;
    LateBillsPKVRBillMonth: TStringField;
    LateBillsPKVRAmount: TFloatField;
    LateBillsTransSysAncRefund: TFloatField;
    LateBillsTransDemAncRefund: TFloatField;
    LateBillsVATTransAncRefund: TFloatField;
    LateBillsSCDisc: TFloatField;
    LateBillsWRateCode: TStringField;
    LateBillsSCAmt4Disc: TFloatField;
    LateBillscbook: TStringField;
    LateBillsRPTax: TFloatField;
    LateBillsBTax: TFloatField;
    RpTaxQuery: TMyQuery;
    RpTaxAreaQuery: TMyQuery;
    RpTaxQueryarea: TStringField;
    RpTaxQuerybillmonth: TStringField;
    RpTaxQueryrateamnt: TFloatField;
    RpTaxQueryrateorder: TStringField;
    AreaNxEdit: TNxEdit;
    BillMonthNxEdit: TNxEdit;
    ViewPrint: TNxButton;
    SpotBillPanel: TNxHeaderPanel;
    Label1: TLabel;
    Gauge6: TGauge;
    NxButton5: TNxButton;
    NxButton6: TNxButton;
    RadioGroup4: TRadioGroup;
    DBGrid17: TDBGrid1;
    PlannerDatePicker1: TPlannerDatePicker;
    NxMemo2: TNxMemo;
    unpaidbillsTmp: TMyQuery;
    createunpaidTmp: TMyQuery;
    NxHeaderPanel3: TNxHeaderPanel;
    NxButton11: TNxButton;
    CanvassCancelBtn: TNxButton;
    NxLabel8: TNxLabel;
    NxLabel9: TNxLabel;
    Label128: TLabel;
    Label15: TLabel;
    createTable: TMyQuery;
    retrieveAdd: TMyQuery;
    NxLabel6: TNxLabel;
    NxEdit1: TNxEdit;
    MasterQFitAll: TFloatField;
    NxLabel7: TNxLabel;
    tmpQuery: TMyQuery;
    NxHeaderPanel4: TNxHeaderPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    averagebillQ: TMyQuery;
    averagebillQcode: TIntegerField;
    averagebillQaccountnumber: TStringField;
    averagebillQname: TStringField;
    averagebillQprevKwh: TStringField;
    averagebillQprevBillmonth: TStringField;
    averagebillQaverageKwh: TFloatField;
    averagebillQbillmonth: TStringField;
    averagebillQcbook: TStringField;
    tmpQ: TMyQuery;
    consistentRdngQ: TMyQuery;
    consistentRS: TMyDataSource;
    Label20: TLabel;
    recordLabel: TLabel;
    consistentRdngQEntry: TIntegerField;
    consistentRdngQCode: TFloatField;
    consistentRdngQArea: TStringField;
    consistentRdngQBook: TStringField;
    consistentRdngQSequence: TStringField;
    consistentRdngQAccountNumber: TStringField;
    consistentRdngQName: TStringField;
    consistentRdngQAddress: TStringField;
    consistentRdngQRateCode: TStringField;
    consistentRdngQSerial: TStringField;
    consistentRdngQMultiplier: TFloatField;
    consistentRdngQPreviousReadingDate: TDateField;
    consistentRdngQPresentReadingDate: TDateField;
    consistentRdngQPresentReadingKWH: TFloatField;
    consistentRdngQPreviousReadingKWH: TFloatField;
    consistentRdngQDiff: TFloatField;
    consistentRdngQDemand: TFloatField;
    consistentRdngQFlatRateWattage: TFloatField;
    consistentRdngQFeedBackCode: TStringField;
    consistentRdngQCM: TStringField;
    consistentRdngQCMMultiplier: TFloatField;
    consistentRdngQCMPreviousReadingKWH: TFloatField;
    consistentRdngQCMPresentReadingKWH: TFloatField;
    consistentRdngQCMKilowattHour: TFloatField;
    consistentRdngQCMDemand: TFloatField;
    consistentRdngQKilowattHour: TFloatField;
    consistentRdngQKilowattUsed: TFloatField;
    consistentRdngQGenSysCharge: TFloatField;
    consistentRdngQHostCommCharge: TFloatField;
    consistentRdngQForexCharge: TFloatField;
    consistentRdngQTCDemandCharge: TFloatField;
    consistentRdngQTCTransSystemCharge: TFloatField;
    consistentRdngQSystemLossCharge: TFloatField;
    consistentRdngQDCDemandCharge: TFloatField;
    consistentRdngQDCDistributionCharge: TFloatField;
    consistentRdngQSCRetCustCharge: TFloatField;
    consistentRdngQSCSupplySysCharge: TFloatField;
    consistentRdngQMCRetailCustCharge: TFloatField;
    consistentRdngQMCSystemCharge: TFloatField;
    consistentRdngQUCNPCStrandedDebts: TFloatField;
    consistentRdngQUCNPCStrandedContCost: TFloatField;
    consistentRdngQUCDUStrandedContCost: TFloatField;
    consistentRdngQUCME: TFloatField;
    consistentRdngQUCEqTaxesAndRoyalties: TFloatField;
    consistentRdngQUCEC: TFloatField;
    consistentRdngQUCCrossSubRemoval: TFloatField;
    consistentRdngQICCrossSubsidyCharge: TFloatField;
    consistentRdngQPowerActRateRed: TFloatField;
    consistentRdngQLifelineDiscSubs: TFloatField;
    consistentRdngQLoanCondo: TFloatField;
    consistentRdngQTransformerRental: TFloatField;
    consistentRdngQOCAmount1: TFloatField;
    consistentRdngQOCCode1: TStringField;
    consistentRdngQOCMo1: TFloatField;
    consistentRdngQOCTotal1: TFloatField;
    consistentRdngQOCCode2: TStringField;
    consistentRdngQOCAmount2: TFloatField;
    consistentRdngQOCMo2: TFloatField;
    consistentRdngQOCTotal2: TFloatField;
    consistentRdngQOCCode3: TStringField;
    consistentRdngQOCAmount3: TFloatField;
    consistentRdngQOCMo3: TFloatField;
    consistentRdngQOCTotal3: TFloatField;
    consistentRdngQTotalBill: TFloatField;
    consistentRdngQBillNumber: TStringField;
    consistentRdngQOEBRNumber: TStringField;
    consistentRdngQBillMonth: TStringField;
    consistentRdngQBillDate: TDateField;
    consistentRdngQStatusCode: TStringField;
    consistentRdngQLCCustMo: TFloatField;
    consistentRdngQPrevYearAdjPowerCost: TFloatField;
    consistentRdngQSysLossUnderRecov: TFloatField;
    consistentRdngQVATDisc: TFloatField;
    consistentRdngQVATDiscAmt: TFloatField;
    consistentRdngQVATDistDiscAmt: TFloatField;
    consistentRdngQVATGenCoDiscAmt: TFloatField;
    consistentRdngQVATTransCoDiscAmt: TFloatField;
    consistentRdngQVATSystemLossDiscAmt: TFloatField;
    consistentRdngQVATDist: TFloatField;
    consistentRdngQVATGenCO: TFloatField;
    consistentRdngQVATTransCO: TFloatField;
    consistentRdngQVATSystemLossGenCO: TFloatField;
    consistentRdngQVATSystemLossTransCO: TFloatField;
    consistentRdngQVAT: TFloatField;
    consistentRdngQAdjAmountBalance: TFloatField;
    consistentRdngQAdjAmountApplied: TFloatField;
    consistentRdngQReadTime: TStringField;
    consistentRdngQDiffBillPerKwhr: TFloatField;
    consistentRdngQDiffBillPerKW: TFloatField;
    consistentRdngQDiffBillPerCust: TFloatField;
    consistentRdngQMCC: TFloatField;
    consistentRdngQPKVROebrNumber: TStringField;
    consistentRdngQPKVRBillMonth: TStringField;
    consistentRdngQPKVRAmount: TFloatField;
    consistentRdngQTransSysAncRefund: TFloatField;
    consistentRdngQTransDemAncRefund: TFloatField;
    consistentRdngQVATTransAncRefund: TFloatField;
    consistentRdngQSCDisc: TFloatField;
    consistentRdngQWRateCode: TStringField;
    consistentRdngQSCAmt4Disc: TFloatField;
    consistentRdngQCBook: TStringField;
    consistentRdngQRPTax: TFloatField;
    consistentRdngQRateOrder: TStringField;
    consistentRdngQBTax: TFloatField;
    consistentRdngQOtherGenRateAdj: TFloatField;
    consistentRdngQOtherTransCostAdj: TFloatField;
    consistentRdngQOtherTransDemandCostAdj: TFloatField;
    consistentRdngQOtherSystemLossCostAdj: TFloatField;
    consistentRdngQOtherLifelineRateCostAdj: TFloatField;
    consistentRdngQOtherSeniorCitizenRateAdj: TFloatField;
    consistentRdngQFitall: TFloatField;
    ViewReadingType: TNxButton;
    highconsumptionQ: TMyQuery;
    AdvPanel1: TAdvPanel;
    AdvPanelStyler1: TAdvPanelStyler;
    Label21: TLabel;
    CLBillQ: TMyQuery;
    CLBillQEntry: TIntegerField;
    CLBillQCode: TFloatField;
    CLBillQArea: TStringField;
    CLBillQBook: TStringField;
    CLBillQSequence: TStringField;
    CLBillQAccountNumber: TStringField;
    CLBillQName: TStringField;
    CLBillQAddress: TStringField;
    CLBillQRateCode: TStringField;
    CLBillQSerial: TStringField;
    CLBillQMultiplier: TFloatField;
    CLBillQPreviousReadingDate: TDateField;
    CLBillQPresentReadingDate: TDateField;
    CLBillQPresentReadingKWH: TFloatField;
    CLBillQPreviousReadingKWH: TFloatField;
    CLBillQDiff: TFloatField;
    CLBillQDemand: TFloatField;
    CLBillQFlatRateWattage: TFloatField;
    CLBillQFeedBackCode: TStringField;
    CLBillQCM: TStringField;
    CLBillQCMMultiplier: TFloatField;
    CLBillQCMPreviousReadingKWH: TFloatField;
    CLBillQCMPresentReadingKWH: TFloatField;
    CLBillQCMKilowattHour: TFloatField;
    CLBillQCMDemand: TFloatField;
    CLBillQKilowattHour: TFloatField;
    CLBillQKilowattUsed: TFloatField;
    CLBillQGenSysCharge: TFloatField;
    CLBillQHostCommCharge: TFloatField;
    CLBillQForexCharge: TFloatField;
    CLBillQTCDemandCharge: TFloatField;
    CLBillQTCTransSystemCharge: TFloatField;
    CLBillQSystemLossCharge: TFloatField;
    CLBillQDCDemandCharge: TFloatField;
    CLBillQDCDistributionCharge: TFloatField;
    CLBillQSCRetCustCharge: TFloatField;
    CLBillQSCSupplySysCharge: TFloatField;
    CLBillQMCRetailCustCharge: TFloatField;
    CLBillQMCSystemCharge: TFloatField;
    CLBillQUCNPCStrandedDebts: TFloatField;
    CLBillQUCNPCStrandedContCost: TFloatField;
    CLBillQUCDUStrandedContCost: TFloatField;
    CLBillQUCME: TFloatField;
    CLBillQUCEqTaxesAndRoyalties: TFloatField;
    CLBillQUCEC: TFloatField;
    CLBillQUCCrossSubRemoval: TFloatField;
    CLBillQICCrossSubsidyCharge: TFloatField;
    CLBillQPowerActRateRed: TFloatField;
    CLBillQLifelineDiscSubs: TFloatField;
    CLBillQLoanCondo: TFloatField;
    CLBillQTransformerRental: TFloatField;
    CLBillQOCAmount1: TFloatField;
    CLBillQOCCode1: TStringField;
    CLBillQOCMo1: TFloatField;
    CLBillQOCTotal1: TFloatField;
    CLBillQOCCode2: TStringField;
    CLBillQOCAmount2: TFloatField;
    CLBillQOCMo2: TFloatField;
    CLBillQOCTotal2: TFloatField;
    CLBillQOCCode3: TStringField;
    CLBillQOCAmount3: TFloatField;
    CLBillQOCMo3: TFloatField;
    CLBillQOCTotal3: TFloatField;
    CLBillQTotalBill: TFloatField;
    CLBillQBillNumber: TStringField;
    CLBillQOEBRNumber: TStringField;
    CLBillQBillMonth: TStringField;
    CLBillQBillDate: TDateField;
    CLBillQStatusCode: TStringField;
    CLBillQLCCustMo: TFloatField;
    CLBillQPrevYearAdjPowerCost: TFloatField;
    CLBillQSysLossUnderRecov: TFloatField;
    CLBillQVATDisc: TFloatField;
    CLBillQVATDiscAmt: TFloatField;
    CLBillQVATDistDiscAmt: TFloatField;
    CLBillQVATGenCoDiscAmt: TFloatField;
    CLBillQVATTransCoDiscAmt: TFloatField;
    CLBillQVATSystemLossDiscAmt: TFloatField;
    CLBillQVATDist: TFloatField;
    CLBillQVATGenCO: TFloatField;
    CLBillQVATTransCO: TFloatField;
    CLBillQVATSystemLossGenCO: TFloatField;
    CLBillQVATSystemLossTransCO: TFloatField;
    CLBillQVAT: TFloatField;
    CLBillQAdjAmountBalance: TFloatField;
    CLBillQAdjAmountApplied: TFloatField;
    CLBillQReadTime: TStringField;
    CLBillQDiffBillPerKwhr: TFloatField;
    CLBillQDiffBillPerKW: TFloatField;
    CLBillQDiffBillPerCust: TFloatField;
    CLBillQMCC: TFloatField;
    CLBillQPKVROebrNumber: TStringField;
    CLBillQPKVRBillMonth: TStringField;
    CLBillQPKVRAmount: TFloatField;
    CLBillQTransSysAncRefund: TFloatField;
    CLBillQTransDemAncRefund: TFloatField;
    CLBillQVATTransAncRefund: TFloatField;
    CLBillQSCDisc: TFloatField;
    CLBillQWRateCode: TStringField;
    CLBillQSCAmt4Disc: TFloatField;
    CLBillQCBook: TStringField;
    CLBillQRPTax: TFloatField;
    CLBillQRateOrder: TStringField;
    CLBillQBTax: TFloatField;
    CLBillQOtherGenRateAdj: TFloatField;
    CLBillQOtherTransCostAdj: TFloatField;
    CLBillQOtherTransDemandCostAdj: TFloatField;
    CLBillQOtherSystemLossCostAdj: TFloatField;
    CLBillQOtherLifelineRateCostAdj: TFloatField;
    CLBillQOtherSeniorCitizenRateAdj: TFloatField;
    CLBillQFitall: TFloatField;
    NxButton1: TNxButton;
    MasterQisGram: TBooleanField;
    NxButton7: TNxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PresReadKeyPress(Sender: TObject; var Key: Char);
    procedure checklistpanelbuttonClick(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure PrevReadKeyPress(Sender: TObject; var Key: Char);
    procedure PDJSillyLabel5Click(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure DBGrid3KeyPress(Sender: TObject; var Key: Char);
    procedure powerbillClick(Sender: TObject);
    procedure billingregisterClick(Sender: TObject);
    procedure Disconnection1Click(Sender: TObject);
    procedure Reconnection1Click(Sender: TObject);
    procedure ChangeMeter1Click(Sender: TObject);
    procedure ChangeName1Click(Sender: TObject);
    procedure ransferArea1Click(Sender: TObject);
    procedure PresReadExit(Sender: TObject);
    procedure fixdatesClick(Sender: TObject);
    procedure PDJSillyLabel9Click(Sender: TObject);
    procedure PDJSillyLabel10Click(Sender: TObject);
    procedure PDJSillyLabel11Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure PDJSillyLabel14Click(Sender: TObject);
    procedure PDJSillyLabel15Click(Sender: TObject);
    procedure ViewARLedgerandUnpaidBills1Click(Sender: TObject);
    procedure SearchAccountKeyPress(Sender: TObject; var Key: Char);
    procedure SelectRouteClick(Sender: TObject);
    procedure restorefrombillingarchivecloseClick(Sender: TObject);
    procedure NxButton3Click(Sender: TObject);
    procedure checklistbuttonClick(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure FromAcctKeyPress(Sender: TObject; var Key: Char);
    procedure DownLoadBtnClick(Sender: TObject);
    procedure ViewPrintClick(Sender: TObject);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
    procedure NxButton4Click(Sender: TObject);
    procedure NxButton2Click(Sender: TObject);
    procedure serialRxChar(Sender: TObject; Count: Integer);
    procedure A1Click(Sender: TObject);
    procedure ApplicationEvents2Exception(Sender: TObject; E: Exception);
    procedure DBGrid3GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; State: TGridDrawState;
      StateEx: TGridDrawStateEx);
    procedure NxLinkLabel1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure NxButton11Click(Sender: TObject);
    procedure restorefrombillingarchiveClick(Sender: TObject);
    procedure CanvassCancelBtnClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure assignbillnumberClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure ViewReadingTypeClick(Sender: TObject);
    procedure VerifyReading();
    procedure ConsistentReading();
    procedure NxButton1Click(Sender: TObject);
    procedure NxButton7Click(Sender: TObject);

  private
    Procedure PopulateTempBill;

  public
    BillMonthStr        : String     ;
    BillMonth           : String[4]  ;
    PresentReadingDate  : String     ;
    PreviousReadingDate : String     ;
    StartPrintOEBR      : String[15] ;
    EndPrintOEBR        : String[15] ;
    all                 : Boolean    ;
    FirstRec            : Boolean    ;
    NewConnSW           : Boolean    ;
    AccountNumber       : String     ;
    cbookBillmonth :Array[0..2] of String[6];
  //OtherGenRateAdj,
  //OtherTransCostAdj,
  //OtherTransDemandCostAdj,
  //OtherSystemLossCostAdj,
  //OtherLifelineRateCostAdj,
    OtherSnrCtzenRate   : Double;
  end;

var
  ReadingComputeForm: TReadingComputeForm;


implementation

uses Data,
     ModTools,
     StatusUpdate,
     DisconnectionTransaction,
     ReconnectionTransaction,
     ChangeMeterTransaction,
     ChangeNameTransaction,
     TransferAreaTransaction,
     BillingPrintBills,
     BillMaster,
     Intro,
     ReadingFilter,
     spotbill, BillMasterMainRecord;

Var
Lst                : Text     ;
HeadingSW          : Boolean  ;
TotalConsumer      : Word     ;
LineCount          : Word     ;
KWHr               : Currency ;
TotalPower         : Currency ;
TotalAdjustment    : Currency ;
TransRental        : Currency ;
TransRefund        : Currency ;

PTotalPower        : Currency ;
PTotalAdjustment   : Currency ;
PTransRental       : Currency ;
PTransRefund       : Currency ;
PTotalBill         : Currency ;
PTotalKWHr         : Real     ;
PTotalKWUsed       : Real     ;

GTotalPower        : Currency ;
GTotalAdjustment   : Currency ;
GTransRental       : Currency ;
GTransRefund       : Currency ;
GTotalBill         : Currency ;
GTotalKWHr         : Real     ;
GTotalKWUsed       : Real     ;

VATGenCo           : Real     ;
VATTransCo         : Real     ;
VATSystemLoss      : Real     ;
Upload             : Text     ;
UploadStr          : Array[1..4000] of String;
UpCount            : Integer  ;

VerifiedRdng       : Array[0..2500] of String[11];
consistentRdng     : Array[0..2500] of String[11];
rdngAve            : Double;
rdngKwh            : Double;
VCount             : Integer;
aveCount           : Integer;


{$R *.DFM}

procedure TReadingComputeForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  With BillingData do
  begin
     Master.Active        := False;
     AR.Active            := False;
     FlatRate.Active      := False;
     FlatRateIndex.Active := False;
     Recon.Active         := False;
     Disco.Active         := False;
     ChangeMeter.Active   := False;
     ChangeName.Active    := False;
     TransferArea.Active  := False;
     MRate.Active         := False;
     Bill.Active          := False;
     BillNumber.Active    := False;
     PBill.Active         := False;
     RC.Active            := False;
     Bill.Filtered        := False;
     Bill.Filter          := '';
 end;
 BillMasterForm.graphdata.Active  := False;
 NewConn.Close;
 Action                           := caFree;
 ReadingComputeForm               := Nil;
end;
Function RoundOffC(Data : Double) : Double;
Var
  s: string;
begin
 s := FormatFloat('##########.##', Data);
 RoundOffC := StrToFloat(s);
end;
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

Procedure ComputeBill;
Label Compute;
Var
CMKW          : Currency ;
DaysFactor    : Real     ;
Days          : Integer  ;
LLine         : Currency ;
VatableAmount : Currency ;
VAT12, VAT10  : Currency ;
PKKVAmt       : Currency ;

DBKwhr        : Real     ;
DBKW          : Real     ;
WithDB        : Boolean  ;
DiffBillVAT   : Currency ;
VATparecComp  : Currency ;
SCLD          : Currency ;
ZeroVAT       : TMyQuery ;
refAtm        : String   ;

GenSysOther      : Currency;
TransSysOther    : Currency;
LifeLineOther    : Currency;
SCDiscOther      : Currency;
SysLossOther     : Currency;
TransDemandOther : Currency;
mccComp          : Currency;


begin
  With BillingData,ReadingComputeForm do
    begin

      MRate.First;
        While not MRate.Eof do
          begin
           If ((MRateRateCode.Text = BillRateCode.Text) and (MRateWRSw.Text = '0')) or
              ((MRateWRateCode.Text = BillWRateCode.Text) and (MRateWRSw.Text = '1')) then Goto Compute;
           MRate.Next;
          end;

          ShowMessage('Rate Record not found ....');
          exit;

          Compute:
          If (Bill.State = dsEdit) or (Bill.State = dsInsert) then Bill.Post;
          Bill.Edit;

          If BillMultiplier.AsCurrency = 0 then BillMultiplier.AsCurrency := 1;
          If BillCMMultiplier.AsCurrency = 0 then BillCMMultiplier.AsCurrency := 1;
          If BillFeedBackCode.Text <> 'A' then
          begin

            If BillPresentReadingKWH.AsCurrency < BillPreviousReadingKWH.AsCurrency then
               begin
                 ShowMessage('Error Present Reading ..... please re-enter');
                 PresRead.SetFocus;
                 exit;
               end;

            BillCMKilowatthour.AsCurrency := 0;

            If BillCM.Text = '1' then
              begin

                BillCMKilowattHour.AsCurrency := (BillCMPresentReadingKWH.AsFloat -
                                                  BillCMPreviousReadingKWH.AsFloat) *
                                                  BillCMMultiplier.AsInteger;

                If BillCMKilowatthour.AsCurrency < 0 then BillCMKilowatthour.AsCurrency := 0;

              end
              else
                BillCMKilowatthour.AsCurrency := 0;

            BillDiff.AsCurrency := (BillPresentReadingKWH.AsCurrency - BillPreviousReadingKWH.AsCurrency);

            BillKilowattHour.AsCurrency := (BillDiff.AsCurrency * BillMultiplier.AsCurrency) +                                     BillCMKilowatthour.AsCurrency;
                                           BillCMKilowatthour.AsCurrency;
;
          end;

            CMKW := 0;

          KWHR := BillKilowattHour.AsCurrency;

          //Remove averaging of 15 KWHr reading============
          //===============================================
          {If BillWRateCode.Text = 'R' then
            begin
              If (BillKilowattHour.AsCurrency >= 0) and (BillKilowattHour.AsCurrency <= 15) then
              KWHR := 15;
            end; }
            //============================================

          WithDB := False;
          DBKwhr := 0;
          DBKW   := 0;
          If MRateDiffBillApply.AsInteger = 1 then
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

          BillGenSysCharge.AsCurrency             := RoundOff(KWHR * MRateGenSysRate.AsCurrency);
          BillOtherGenRateAdj.AsCurrency          := Roundoff(KWHR * MRateOtherGenRateAdj.AsFloat);
          BillHostCommCharge.AsCurrency           := RoundOff(KWHR * MRateHostCommRate.AsCurrency);
          BillForexCharge.AsCurrency              := RoundOff(KWHR * MRateForexRate.AsCurrency);

          BillTCDemandCharge.AsCurrency           := RoundOff((BillKilowattUsed.AsCurrency+CMKW) * MRateTCDemandRate.AsCurrency);
          BillOtherTransDemandCostAdj.AsCurrency  := RoundOff((BillKilowattUsed.AsFloat+CMKW) * MRateOtherTransDemandCostAdj.AsFloat);

          BillTCTransSystemCharge.AsCurrency      := RoundOff(KWHR * MRateTCSystemRate.AsCurrency);
          BillOtherTransCostAdj.AsCurrency        := Roundoff(KWHR * MRateOtherTransCostAdj.AsFloat);
          BillSystemLossCharge.AsCurrency         := RoundOff(KWHR * MRateSystemLossRate.AsCurrency);
          BillOtherSystemLossCostAdj.AsCurrency   := RoundOff(KWHR * MRateOtherSystemLossCostAdj.AsFloat);
          BillDCDemandCharge.AsCurrency           := RoundOff((BillKilowattUsed.AsCurrency+CMKW) * MRateDCDemandRate.AsCurrency);
          BillDCDistributionCharge.AsCurrency     := RoundOff(KWHR * MRateDCSystemRate.AsCurrency);

          BillSCRetCustCharge.AsCurrency          := RoundOff(MRateSCRetailCustRate.AsCurrency);
          BillSCSupplySysCharge.AsCurrency        := RoundOff(KWHR * MRateSCSupplySysRate.AsCurrency);
          BillMCRetailCustCharge.AsCurrency       := RoundOff(MRateMCRetailCustRate.AsCurrency);
          BillMCSystemCharge.AsCurrency           := RoundOff(KWHR * MRateMCSysRate.AsCurrency);
          mccComp                                 := RoundOff(KWHR * MRateMCC.AsCurrency);
          BillMCC.AsCurrency                      := mccComp;
          BillPARec.AsCurrency                    := RoundOff(KWHR * MRatePARec.AsCurrency);


          if BillisGram.AsBoolean  then
            Billgram.AsCurrency                   := RoundOff(KWHR * MRateGram.AsCurrency)
          else
            Billgram.AsCurrency                   := 0;

          RpTaxQuery.Close;
          RpTaxQuery.ParamByName('BillMonth').Text :=  MRateMBillMonth.Text;
          RpTaxQuery.ParamByName('area').Text      :=  BillArea.Text; //'0' + Area.Text;
          RpTaxQuery.Open;

          BillRPTax.AsCurrency                  := 0;
          BillRateOrder.text                    := RpTaxQueryRateOrder.Text;

          if not RpTaxQuery.IsEmpty then
          begin
            BillRPTax.AsCurrency := RoundOff(KWHR * RpTaxQueryRateAmnt.AsCurrency);
          end;

          RpTaxQuery.Close;

          If WithDB then
            begin
              BillDiffBillPerKwhr.AsCurrency        := RoundOff(DBKwhr * MRateDiffBillPerKwhr.AsCurrency) / 10;
              BillDiffBillPerKW.AsCurrency          := RoundOff(DBKW * MRateDIffBillPerKW.AsCurrency) / 10;
              BillDiffBillPerCust.AsCurrency        := RoundOff(MRateDiffBillPerCust.AsCurrency) / 10;
            end;

          BillUCNPCStrandedDebts.AsCurrency         := RoundOff(KWHR * MRateUCNPCStrandedDebtsRate.AsCurrency);
          BillUCNPCStrandedContCost.AsCurrency      := RoundOff(KWHR * MRateUCNPCStrandedContCostRate.AsCurrency);
          BillUCDUStrandedContCost.AsCurrency       := RoundOff(KWHR * MRateUCDUStrandedContCostRate.AsCurrency);
          BillUCME.AsCurrency                       := RoundOff(KWHR * MRateUCMERate.AsCurrency);
          BillUCEqTaxesAndRoyalties.AsCurrency      := RoundOff(KWHR * MRateUCEqTaxesAndRoyaltiesRate.AsCurrency);
          BillUCEC.AsCurrency                       := RoundOff(KWHR * MRateUCECRate.AsCurrency);
          BillUCCrossSubRemoval.AsCurrency          := RoundOff(KWHR * MRateUCCrossSubsidyRemovalRate.AsCurrency);
          BillICCrossSubsidyCharge.AsCurrency       := RoundOff(KWHR * MRateICCrossSubsidyRate.AsCurrency);
          BillPowerActRateRed.AsCurrency            := RoundOff(KWHR * MRatePARARate.AsCurrency);
          BillLifelineDiscSubs.AsCurrency           := RoundOff(KWHR * MRateLifelineSubsidyRate.AsCurrency);
          BillOtherLifelineRateCostAdj.AsCurrency   := RoundOff(KWHR * MRateOtherLifelineRateCostAdj.AsFloat);
          BillSCDisc.AsCurrency                     := RoundOff(KWHR * MRateSCDiscSubs.AsCurrency);

          BillOtherSeniorCitizenRateAdj.AsCurrency  := RoundOff(KWHR * MRateOtherSeniorCitizenRateAdj.AsFloat);
          BillLoanCondo.AsCurrency                  := RoundOff(KWHR * MRateLoanCondo.AsCurrency);
          //=====================================================================================
          //BillFlatRateWattage.AsCurrency            := RoundOff(KWHR * MRateGram.AsCurrency); --REmove this statement to avoid error==
          //=====================================================================================
          BillLCCustMo.AsFloat                      := RoundOff(MRateLCCustMo.AsFloat);
          BillPrevYearAdjPowerCost.AsCurrency       := RoundOff(KWHR * MRatePrevYearAdjPowerCost.AsCurrency);
          BillSysLossUnderRecov.AsCurrency          := RoundOff(KWHR * MRateSysLossUnderRecov.AsCurrency);

          BillTransSysAncRefund.AsCurrency          := RoundOff(KWHR * MRateTransSysAncRefund.AsCurrency);
          BillTransDemAncRefund.AsCurrency          := RoundOff((BillKilowattUsed.AsCurrency+CMKW) * MRateTransDemAncRefund.AsCurrency);
          BillVATTransAncRefund.AsCurrency          := RoundOff(KWHR * MRateVATTransAncRefund.AsCurrency);
          BillFitAll.AsCurrency                     := RoundOff(KWHR * MRateFitAllrate.AsCurrency);

          VATGenCo                                  := RoundOff(KWHR * MRateVATGenco.AsCurrency);
          VATTransCo                                := RoundOff(KWHR * MRateVATTransco.AsCurrency);
          VATSystemLoss                             := RoundOff(KWHR * MRateVATSystemLoss.AsCurrency);

          TotalPower := RoundOff(BillGenSysCharge.AsCurrency +
                        BillHostCommCharge.AsCurrency +
                        BillForexCharge.AsCurrency +
                        BillTCDemandCharge.AsCurrency +
                        BillTCTransSystemCharge.AsCurrency +
                        BillSystemLossCharge.AsCurrency +
                        BillDCDemandCharge.AsCurrency +
                        BillDCDistributionCharge.AsCurrency +
                        BillSCSupplySysCharge.AsCurrency +
                        BillMCSystemCharge.AsCurrency +
                        BillMCRetailCustCharge.AsCurrency +
                        BillTransSysAncRefund.AsCurrency+
                        BillTransDemAncRefund.AsCurrency);


          SCLD := 1;
          If (BillWRateCode.Text = 'R') or
             (BillWRateCode.Text = 'X') then
           begin
             If KWHR <= 15                    then
               begin
                 BillLifelineDiscSubs.AsCurrency          := RoundOff(TotalPower * -0.50);
                 BillOtherLifelineRateCostAdj.AsCurrency  := 0.0;
                 SCLD := 0.50;
               end;

             If (KWHR >  15) and (KWHR <= 16) then
               begin
                 BillLifelineDiscSubs.AsCurrency          := RoundOff(TotalPower * -0.40);
                 BillOtherLifelineRateCostAdj.AsCurrency  := 0.0;
                 SCLD := 0.60;
               end;

             If (KWHR >  16) and (KWHR <= 17) then
               begin
                 BillLifelineDiscSubs.AsCurrency          := RoundOff(TotalPower * -0.30);
                 BillOtherLifelineRateCostAdj.AsCurrency  := 0.0;
                 SCLD := 0.70;
               end;

             If (KWHR >  17) and (KWHR <= 18) then
               begin
                 BillLifelineDiscSubs.AsCurrency          := RoundOff(TotalPower * -0.20);
                 BillOtherLifelineRateCostAdj.AsCurrency  := 0.0;
                 SCLD := 0.80;
               end;

             If (KWHR >  18) and (KWHR <= 19) then
               begin
                 BillLifelineDiscSubs.AsCurrency          := RoundOff(TotalPower * -0.10);
                 BillOtherLifelineRateCostAdj.AsCurrency  := 0.0;
                 SCLD := 0.90;
               end;

             If (KWHR >  19) and (KWHR <= 20) then
               begin
                 BillLifelineDiscSubs.AsCurrency          := RoundOff(TotalPower * -0.05);
                 BillOtherLifelineRateCostAdj.AsCurrency  := 0.0;
                 SCLD := 0.95
               end;

           end;

         If BillLifelineDiscSubs.AsCurrency < 0 then
         Begin
            BillSCDisc.AsCurrency := 0;
            BillOtherSeniorCitizenRateAdj.AsCurrency := 0.0;
         End;

         If (MRateSCDiscApply.Text = '1') and (BillKilowattHour.AsFloat <= MRateSCDiscKWHR.AsFloat) then
          begin

            SCRead.Open;
            SCRead.ParamByName('scode').Text := BillCode.Text;
            SCRead.ParamByName('presentreadingdate').AsDate := BillPresentReadingDate.AsDateTime;
            SCRead.Open;

            If not SCRead.IsEmpty then
              begin
                BillSCAmt4Disc.AsCurrency := (BillGenSysCharge.AsCurrency +
                                              BillHostCommCharge.AsCurrency +
                                              BillForexCharge.AsCurrency +
                                              BillTCDemandCharge.AsCurrency +
                                              BillTCTransSystemCharge.AsCurrency +
                                              BillSystemLossCharge.AsCurrency +
                                              BillDCDemandCharge.AsCurrency +
                                              BillDCDistributionCharge.AsCurrency +
                                              BillSCRetCustCharge.AsCurrency +
                                              BillSCSupplySysCharge.AsCurrency +
                                              BillMCRetailCustCharge.AsCurrency +
                                              BillMCSystemCharge.AsCurrency +
                                              BillLoanCondo.AsCurrency) * SCLD;

                BillSCDisc.AsCurrency     := (BillSCAmt4Disc.AsCurrency * (MRateSCDiscPercent.AsCurrency/100)) * -1;

                BillOtherSeniorCitizenRateAdj.AsCurrency := 0.0;
              end;

           SCRead.Close;
          end;

          Days := DaysBetween(StrToDate('11/01/2005'),BillPresentReadingDate.AsDateTime) + 1;

          DaysFactor := 0;
          if Days > 0 then
          DaysFactor := Days / 30;

          LLine := BillLifelineDiscSubs.AsCurrency;
          If LLine < 0 then LLine := 0;

          If BillBillMonth.Text = '1105' then
          begin
          BillVAT.AsCurrency :=  (((BillForexCharge.AsCurrency +
                                    BillSystemLossCharge.AsCurrency +
                                    BillTCDemandCharge.AsCurrency +
                                    BillTCTransSystemCharge.AsCurrency+
                                    BillDCDemandCharge.AsCurrency +
                                    BillDCDistributionCharge.AsCurrency +
                                    BillSCRetCustCharge.AsCurrency +
                                    BillSCSupplySysCharge.AsCurrency +
                                    BillMCRetailCustCharge.AsCurrency +
                                    BillMCSystemCharge.AsCurrency +
                                    BillICCrossSubsidyCharge.AsCurrency +
                                    BillPowerActRateRed.AsCurrency +
                                    LLine+
                                    BillLoanCondo.AsCurrency +
                                    BillLCCustMo.AsCurrency) *
                                    (MRateVAT.AsCurrency / 100)) * DaysFactor);
          end else
          If BillBillMonth.Text <> '0206' then
          begin

              DiffBillVAT             := ( BillDiffBillPerKwhr.AsCurrency +
                                          BillDiffBillPerKW.AsCurrency +
                                          BillDiffBillPerCust.AsCurrency ) * ( MRateVAT.AsCurrency / 100 );

              VATparecComp            := 0;
              VATparecComp            := BillPARec.AsCurrency *( MRateVAT.AsCurrency / 100 );
              BillVATparec.AsCurrency := VATparecComp;
              BillVATmcc.AsCurrency   := RoundOff(mccComp * (MRateVAT.AsCurrency / 100));

              BillVAT.AsCurrency :=  RoundOff((( BillForexCharge.AsCurrency+
                                                 BillDCDemandCharge.AsCurrency+
                                                 BillDCDistributionCharge.AsCurrency+
                                                 BillSCRetCustCharge.AsCurrency+
                                                 BillSCSupplySysCharge.AsCurrency+
                                                 BillMCRetailCustCharge.AsCurrency+
                                                 BillMCSystemCharge.AsCurrency+
                                                 BillICCrossSubsidyCharge.AsCurrency+
                                                 BillLifelineDiscSubs.AsCurrency+
                                                 BillSCDisc.AsCurrency+
                                                 BillOtherLifelineRateCostAdj.AsCurrency+
                                                 BillOtherSeniorCitizenRateAdj.AsCurrency+
                                                 BillLoanCondo.AsCurrency+
                                                 BillLCCustMo.AsCurrency+
                                                 mccComp) *
                                                 MRateVAT.AsCurrency / 100) ) +
                                                 VATGenCO +
                                                 VATTransCO +
                                                 VATSystemLoss +
                                                 DiffBillVAT+
                                                 VATparecComp;

              BillVATGenCO.AsCurrency           := VATGenCO;
              BillVATTransCO.AsCurrency         := VATTransCo;
              BillVATSystemLossGenCO.AsCurrency := VATSystemLoss;

              BillVATDist.AsCurrency            := BillVAT.AsCurrency - (VATGenCO+
                                                                         VATTransCo+
                                                                         VATSystemLoss);

          end else
          begin

              VAT12 := 0;
              VAT10 := 0;
              If BillLifelineDiscSubs.AsCurrency > 0 then
              begin
              VatableAmount :=          ( BillForexCharge.AsCurrency+
                                          BillDCDemandCharge.AsCurrency+
                                          BillDCDistributionCharge.AsCurrency+
                                          BillSCRetCustCharge.AsCurrency+
                                          BillSCSupplySysCharge.AsCurrency+
                                          BillMCRetailCustCharge.AsCurrency+
                                          BillMCSystemCharge.AsCurrency+
                                          BillPowerActRateRed.AsCurrency+
                                          BillLifelineDiscSubs.AsCurrency+
                                          BillLoanCondo.AsCurrency +
                                          BillLCCustMo.AsCurrency );

              VAT12         := RoundOff((VatableAmount / 30) * 18) * 0.12;
              VAT10         := RoundOff((VatableAmount / 30) * 12) * 0.10;
              end;

              BillVATGenCO.AsCurrency           := VATGenCO;
              BillVATTransCO.AsCurrency         := VATTransCo;
              BillVATSystemLossGenCO.AsCurrency := VATSystemLoss;
              BillVATDist.AsCurrency            := VAT10 + VAT12;
              BillVAT.AsCurrency                := VATGenCO +
                                                   VATTransCO +
                                                   VATSystemLoss +
                                                   VAT10 +
                                                   VAT12;

          end;

         //Temporary remove the vat discount computation===============
         //============================================================
         { If BillVATDisc.AsFloat > 0 then
          begin
            BillVATDistDiscAmt.AsFloat          := RoundOff(BillVATDist.AsFloat * (BillVATDisc.AsFloat / 100) * -1);
            BillVATGenCoDiscAmt.AsFloat         := 0;
            BillVATTransCoDiscAmt.AsFloat       := 0;
            BillVATSystemLossDiscAmt.AsFloat    := 0;
           
            BillVATDiscAmt.AsFloat              := BillVATDistDiscAmt.AsFloat+
                                                   BillVATGenCoDiscAmt.AsFloat+
                                                   BillVATTransCoDiscAmt.AsFloat+
                                                   BillVATSystemLossDiscAmt.AsFloat;
          end;
           }

          BillVATDiscAmt.AsFloat   := 0;
          ZeroVAT            := TMyQuery.Create(ZeroVAT);
          ZeroVAT.Connection := BillingData.MyConnection1;
          ZeroVAT.SQL.Clear;

          ZeroVAT.SQL.Add('Select accountnumber from ZeroVat where code = :code and dateentered <= :dateentered');
          ZeroVAT.ParamByName('Code').Text        := BillCode.Text;
          ZeroVAT.ParamByName('DateEntered').AsDate := BillPresentReadingDate.AsDateTime;
          ZeroVAT.Open;

          if not ZeroVAT.IsEmpty then
          begin
            BillVATDistDiscAmt.AsFloat          := BillVATDist.AsFloat * -1;
            BillVATGenCoDiscAmt.AsFloat         := BillVATGenCO.AsFloat * -1;
            BillVATTransCoDiscAmt.AsFloat       := BillVATTransCO.AsFloat * -1;
            BillVATSystemLossDiscAmt.AsFloat    := BillVATSystemLossGenCO.AsFloat * -1;

            BillVATDiscAmt.AsFloat              := BillVATDistDiscAmt.AsFloat+
                                                   BillVATGenCoDiscAmt.AsFloat+
                                                   BillVATTransCoDiscAmt.AsFloat+
                                                   BillVATSystemLossDiscAmt.AsFloat;

          end;

          ZeroVAT.Close;
          FreeAndNil(ZeroVAT);

          //============================================================
          //============================================================

          PKKVAmt                  := 0;

          If MRatePantawidApply.AsInteger = 1 then
          begin
            PKVRIndex.ParamByName('code').Text   := BillCode.Text;
            PKVRIndex.ParamByName('AN').Text     := BillAccountNumber.Text;
            PKVRIndex.Open;

            If PKVRIndex.IsEmpty then
              begin
                GetPKV.ParamByName('code').Text      := BillCode.Text;
                GetPKV.ParamByName('area').Text      := BillArea.Text;
                GetPKV.ParamByName('book').Text      := BillBook.Text;
                GetPKV.Open;

                If GetPKV.IsEmpty then
                  PKKVAmt := 0 else
                  PKKVAmt := GetPKVdebit.AsCurrency - GetPKVcredit.AsCurrency;
                GetPKV.Close;
              end;
          end;

          If MRatePantawidRecovApply.AsInteger = 1 then
          begin
            PKVRIndex.ParamByName('code').Text   := BillCode.Text;
            PKVRIndex.ParamByName('AN').Text     := BillAccountNumber.Text;
            PKVRIndex.Open;

            If not PKVRIndex.IsEmpty then
              begin
                PKVR.ParamByName('code').Text      := BillCode.Text;
                PKVR.ParamByName('area').Text      := BillArea.Text;
                PKVR.ParamByName('book').Text      := BillBook.Text;
                PKVR.Open;

                If not PKVR.IsEmpty then
                  begin
                    BillPKVROebrNumber.Text := PKVRbillnumber.Text;
                    BillPKVRBillMonth.Text  := PKVRBillMonth.Text;
                    BillPKVRAmount.Text     := PKVRcredit.Text;
                  end;
                PKVR.Close;
              end;
              PKVRIndex.Close;
          end;

          BillTotalBill.AsCurrency :=  RoundOff   (BillGenSysCharge.AsCurrency +
                                                   BillHostCommCharge.AsCurrency +
                                                   BillForexCharge.AsCurrency +
                                                   BillTCDemandCharge.AsCurrency + //-----
                                                   BillTCTransSystemCharge.AsCurrency +
                                                   BillSystemLossCharge.AsCurrency +
                                                   BillDCDemandCharge.AsCurrency + //-----
                                                   BillDCDistributionCharge.AsCurrency +
                                                   BillSCRetCustCharge.AsCurrency +
                                                   BillSCSupplySysCharge.AsCurrency +
                                                   BillMCRetailCustCharge.AsCurrency +
                                                   BillMCSystemCharge.AsCurrency +
                                                   BillMCC.AsCurrency +
                                                   BillUCNPCStrandedDebts.AsCurrency +
                                                   BillUCNPCStrandedContCost.AsCurrency +
                                                   BillUCDUStrandedContCost.AsCurrency +
                                                   BillUCME.AsCurrency +
                                                   BillUCEqTaxesAndRoyalties.AsCurrency +
                                                   BillUCEC.AsCurrency +
                                                   BillUCCrossSubRemoval.AsCurrency +
                                                   BillICCrossSubsidyCharge.AsCurrency +
                                                   BillPowerActRateRed.AsCurrency +
                                                   BillLifelineDiscSubs.AsCurrency +
                                                   BillLoanCondo.AsCurrency +
                                                   BillLCCustMo.AsCurrency +
                                                   BillVAT.AsCurrency +
                                                   //===========================
                                                   BillVATDiscAmt.AsCurrency +
                                                   //===========================
                                                   BillOCAmount1.AsCurrency + //-----
                                                   BillOCAmount2.AsCurrency + //-----
                                                   BillOCAmount3.AsCurrency + //-----
                                                   Billgram.AsCurrency +
                                                   //================================
                                                   BillFlatRateWattage.AsCurrency + //31  //-----
                                                   //===============================
                                                   BillPrevYearAdjPowerCost.AsCurrency +
                                                   BillSysLossUnderRecov.AsCurrency+
                                                   BillDiffBillPerKwhr.AsCurrency + //------
                                                   BillDiffBillPerKW.AsCurrency +   //------
                                                   BillDiffBillPerCust.AsCurrency+  //------
                                                   BillPKVRAmount.AsCurrency+       //------
                                                   BillTransSysAncRefund.AsCurrency+
                                                   BillTransDemAncRefund.AsCurrency+ //------
                                                   BillVATTransAncRefund.AsCurrency+
                                                   BillRPTax.AsCurrency+
                                                   BillSCDisc.AsCurrency+
                                                   BillFitAll.AsCurrency+
                                                   BillOtherGenRateAdj.AsCurrency+
                                                   BillOtherTransCostAdj.AsCurrency+
                                                   BillOtherTransDemandCostAdj.AsCurrency+ //-----
                                                   BillOtherSystemLossCostAdj.AsCurrency+
                                                   BillOtherLifelineRateCostAdj.AsCurrency+
                                                   BillOtherSeniorCitizenRateAdj.AsCurrency+
                                                   BillPARec.AsCurrency);//50

                  BillreferenceAtmNo.Text := referenceNo(BillCode.Text,FormatDateTime('YYMMDD',IncDay(BillPresentReadingDate.AsDateTime,-4)),BillTotalBill.AsFloat);

                  NxMemo2.Add('Answer :'+Floattostr(BillLifelineDiscSubs.AsCurrency));
                  NxMemo2.Add('Answer :'+Floattostr(BillTotalBill.AsCurrency));
                  NxMemo2.Add('SCDistRateOther :'+Floattostr(MRateOtherSeniorCitizenRateAdj.AsCurrency));
                  NxMemo2.Add('SDDist :'+Floattostr(BillSCDisc.AsCurrency) +'  OtherSCDist:'+Floattostr(RoundOff(KWHR * MRateOtherSeniorCitizenRateAdj.AsFloat)));
                  NxMemo2.Add('SCdistSub :'+Floattostr(BillOtherSeniorCitizenRateAdj.AsFloat));//BillOtherSeniorCitizenRateAdj.AsCurrency+BillSCDisc.AsCurrency));
                If PKKVAmt > 0 then
                begin
                  BillAdjAmountBalance.AsCurrency      := PKKVAmt;

                  If BillTotalBill.AsCurrency <= PKKVAmt then
                  BillAdjAmountApplied.AsCurrency      := BillTotalBill.AsCurrency else
                  BillAdjAmountApplied.AsCurrency      := PKKVAmt;
                end;

              SetRestUnpaid.Close;
              SetRestUnpaid.ParamByName('code').Text      := BillCode.Text;
              SetRestUnpaid.ParamByName('billmonth').Text := BillBillMonth.Text;
              SetRestUnpaid.Open;

              If not SetRestUnpaid.IsEmpty then
               begin
                 SetRestUnpaid.Edit;
                 SetRestUnpaidRestBillMonth.Text := BillBillMonth.Text;
                 SetRestUnpaid.Post;
               end;

               SetRestUnpaid.Close;

    end;
end;

procedure TReadingComputeForm.PrevReadKeyPress(Sender: TObject;
  var Key: Char);
begin
   If Key = #27 then
     begin
      Panel10.Left    := 210;
      Panel10.Top     := 143;
      Panel10.Visible := True;
      Panel10.BringToFront;
      Edit3.Text := '';
      Edit3.SetFocus;
     end;

   If Key = #13 then
     begin
       BillingData.Bill.Edit;
       ComputeBill;
       BillingData.Bill.Post;
       Edit1.Text := '';
       Edit1.SetFocus;
     end;
end;

procedure TReadingComputeForm.PresReadKeyPress(Sender: TObject;
  var Key: Char);
begin
   If Key = #13 then
      begin
       BillingData.Bill.Edit;
       ComputeBill;
       BillingData.Bill.Post;
       Edit1.Text := '';
       Edit1.SetFocus;
      end;
end;

procedure TReadingComputeForm.checklistpanelbuttonClick(Sender: TObject);
Var
LineLimit      : Word;
BillMonthArray : Array[1..3] of String[5];
BillMonthCons  : Array[1..3] of Double;
Mon,Yr         : Word;
Check          : Integer;
BillMonthStr   : String[20];
I              : Integer;
MonStr,YrStr   : String[2];
FieldFinding   : String[30];
FilterStr      : String;
Procedure PrintHeading;
begin
 With BillingData do
 begin
  Write(Lst,#18);
  Writeln(lst,#27 + 'P'+'PAGE # '+IntToStr(PageCount));
  Writeln(lst,#27 + '4'+'BILLING CHECK LIST'+#27+'5');
  Writeln(lst,'BILLING MONTH     : '+BillMonthStr);
  Writeln(Lst,'READING DATE      : '+PresentReadingDate);
  Writeln(lst,'CIPHER BOOK       : '+StaticText2.Caption);

  If RadioGroup2.ItemIndex = 0 then
    begin
        Writeln(lst,'RANGE             : ALL');
    end
  else if RadioGroup2.ItemIndex = 1 then
    begin
      Writeln(lst,'RANGE             : '+FromAcct.text+' - '+ToAcct.Text);
    end
  else if RadioGroup2.ItemIndex = 2 then
    begin
      Writeln(lst,'RANGE             : VERIFY ALL READING');
    end
  else if RadioGroup2.ItemIndex = 3 then
    begin
      Writeln(lst,'RANGE             : ALL CONSISTENT READING');
    end;


  Write(Lst,#15);
  Writeln(lst,'-----------------------------------------------------------------------------------------------------------------------------------------');
  Writeln(lst,'|  Acct #  |   Consumer Name    |T|PresRead|PrevRead|    KWHR|     Amount | ',
               BillMonthArray[1],' | ',
               BillMonthArray[2],' | ',
               BillMonthArray[3],' |        Field Findings        | Read Time |');
  Writeln(lst,'-----------------------------------------------------------------------------------------------------------------------------------------');
 end;
end;

begin
  With BillingData do begin
    isonumberQ.Close;
    isonumberQ.ParamByName('reporttype').Text := 'Billing Checklist';
    isonumberQ.Open;
  end;

  CLBillQ.Close;
  If RadioGroup2.ItemIndex = 0 then
    begin
     //CLBill.ParamByName('fromacct').Text := '000000000';
     //CLBill.ParamByName('toacct').Text   := '999999999';
     CLBillQ.FilterSQL :='accountnumber between '+ quotedstr('000000000') +
                         ' and ' +quotedstr('999999999') +
                         ' and cbook = ' + quotedstr(StaticText2.Caption);

    end
  else if RadioGroup2.ItemIndex = 1 then
    begin
     //CLBill.ParamByName('fromacct').Text := FromAcct.Text;
     //CLBill.ParamByName('toacct').Text   := ToAcct.Text;
     CLBillQ.FilterSQL :='accountnumber between '+ quotedstr(FromAcct.Text) +
                         ' and ' + quotedstr(ToAcct.Text) +
                         ' and cbook = ' + quotedstr(StaticText2.Caption);
     end
  else if RadioGroup2.ItemIndex = 2 then
    begin
     VerifyReading();

     if VCount>=1 then
      Begin

        FilterStr := 'accountnumber in (';
        for I := 0 to VCount - 1 do
          Begin

            if I>0 then
              begin
                  FilterStr := FilterStr + ',' + quotedstr(VerifiedRdng[I]);
              end
            else
              begin
                  FilterStr := FilterStr + quotedstr(VerifiedRdng[I]);
              end;

          End;
          FilterStr := FilterStr +')';
          CLBillQ.FilterSQL := FilterStr +
                           ' and cbook = ' + quotedstr(StaticText2.Caption);
      End
     else
      begin
        messagedlg('No records to print...',mtWarning,[mbOK],0);
        exit;
      end;
    end
  else if RadioGroup2.ItemIndex = 3 then
    begin
     ConsistentReading();

     if aveCount>=1 then
      Begin

        FilterStr := 'accountnumber in (';
        for I := 0 to aveCount - 1 do
          Begin

            if I>0 then
              begin
                  FilterStr := FilterStr + ',' + quotedstr(consistentRdng[I]);
              end
            else
              begin
                  FilterStr := FilterStr + quotedstr(consistentRdng[I]);
              end;

          End;
          FilterStr := FilterStr +')';
          CLBillQ.FilterSQL := FilterStr +
                           ' and cbook = ' + quotedstr(StaticText2.Caption);
      End
     else
      begin
        messagedlg('No records to print...',mtWarning,[mbOK],0);
        exit;
      end;

    end;

  //CLBill.ParamByName('cbook').Text    := StaticText2.Caption;
  CLBillQ.Open;

  TotalConsumer         := 0;
  LineCount             := 0;

  Val(Copy(BillMonth,1,2),Mon,Check);
  Val(Copy(BillMonth,3,2),Yr,Check);

  FillChar(BillMonthArray,SizeOf(BillMonthArray),#0);

  For I := 3 downto 1 do
   begin

    Dec(Mon);
    If Mon < 1 then
      begin
        Mon := 12;
        Dec(yr);
      end;

   Str(Mon,MonStr);
   Str(Yr,YrStr);

   MonStr := JustStr(MonStr,'0',2,1);
   YrStr  := JustStr(YrStr,'0',2,1);

   BillMonthArray[I] := MonStr + YrStr;
   end;

  AssignFile(Lst,'LPT1');
  Reset(Lst);
  Rewrite(Lst);
  If IOResult <> 0 then
    begin
     ShowMessage('Printer not Ready');
     Exit;
    end;


  Write(Lst,#27+'C'+#0+#11);
  LineLimit := 50;

  HeadingSW := True;

  Gauge3.MinValue := 0;
  Gauge3.MaxValue := CLBillQ.RecordCount;
  Gauge3.Progress := 0;

  Repeat

    Gauge3.AddProgress(1);
    Application.ProcessMessages;

    ARHistory.Close;
    ARHistory.ParamByName('code').Text := CLBillQCode.Text;
    ARHistory.Open;

    ARHistory.First;

    FillChar(BillMonthCons,SizeOf(BillMonthCons),SizeOf(BillMonthCons));

    BillMonthCons[1] := 0;
    BillMonthCons[2] := 0;
    BillMonthCons[3] := 0;
    While not ARHistory.eof do
    begin
      If (ARHistorybillmonth.Text = BillMonthArray[1]) then BillMonthCons[1] := ARHistoryKilowattHour.AsFloat;
      If (ARHistorybillmonth.Text = BillMonthArray[2]) then BillMonthCons[2] := ARHistoryKilowattHour.AsFloat;
      If (ARHistorybillmonth.Text = BillMonthArray[3]) then BillMonthCons[3] := ARHistoryKilowattHour.AsFloat;

      ARHistory.Next;
    end;


    If HeadingSW then
      begin
       PrintHeading;
       HeadingSW := False;
      end;

    FF.ParamByName('Code').Text      := CLBillQCode.Text;
    FF.ParamByName('BillMonth').Text := BillMonth;
    FF.Open;

    If FF.IsEmpty then FieldFinding := '' else
       If Copy(FFRemarks.Text,1,4) = 'none' then
         FieldFinding := Copy(Trim(FFRemarks.Text),5,length(Trim(FFRemarks.Text))) else
         FieldFinding := Trim(FFRemarks.Text);

    FF.Close;

    If CLBillQKilowattUsed.AsCurrency = 0 then
    Writeln(lst,'|',JustStr(CLBillQAccountNumber.Text,' ',10,0)     ,'|',
                    JustStr(CLBillQName.Text,' ',20,0)              ,'|',
                    JustStr(CLBillQWRateCode.Text,' ',1,0)           ,'|',
                    CLBillQPresentReadingKWH.AsCurrency:8:1         ,'|',
                    CLBillQPreviousReadingKWH.AsCurrency:8:1        ,'|',
                    CLBillQKilowattHour.AsCurrency:8:1              ,'|',
                    Format(CLBillQTotalBill.AsCurrency-CLBillQAdjAmountApplied.AsCurrency,'###,###.##'),'|',
                   // BillMonthCons[1]:5:0                           ,'|',
                   // BillMonthCons[2]:5:0                           ,'|',
                   // BillMonthCons[3]:5:0                           ,'|',

                    BillMonthCons[1]:6:1                           ,'|',
                    BillMonthCons[2]:6:1                           ,'|',
                    BillMonthCons[3]:6:1                           ,'|',

                    JustStr(FieldFinding,' ',30,0)                 ,'|',
                    JustStr(CLBillQReadTime.Text,' ',9,0)           ,'|')
                    else
    Writeln(lst,'|',JustStr(CLBillQAccountNumber.Text,' ',10,0)     ,'|',
                    JustStr(CLBillQName.Text,' ',20,0)              ,'|',
                    JustStr(CLBillQWRateCode.Text,' ',1,0)           ,'|',
                    CLBillQPresentReadingKWH.AsCurrency:8:1         ,'|',
                    CLBillQPreviousReadingKWH.AsCurrency:8:1        ,'|',
                    CLBillQKilowattHour.AsCurrency:8:1              ,'|',
                    Format(CLBillQTotalBill.AsCurrency--CLBillQAdjAmountApplied.AsCurrency,'###,###.##'),'|',
                    CLBillQKilowattUsed.AsCurrency:18:1             ,'|',
                    JustStr(FieldFinding,' ',30,0)                 ,'|',
                    JustStr(CLBillQReadTime.Text,' ',9,0)           ,'|');
    Inc(TotalConsumer);

    Inc(LineCount);
    If (LineCount = LineLimit-2) and not CLBillQ.eof then
     begin
       LineCount := 0;
       Inc(PageCount);
       Writeln(lst,'-----------------------------------------------------------------------------------------------------------------------------------------');
       Writeln(lst,'');
       Writeln(lst,BillingData.isonumberQisoNumber.Text +
               '                                                           '+
               BillingData.isonumberQrevision.Text+
               '                                                           '+
               BillingData.isonumberQdateF.Text);
      Write(Lst,#12);
       HeadingSW := True;
     end; { end if Line Count }

   CLBillQ.Next;

  Until (CLBillQ.Eof);

  Writeln(lst,'-----------------------------------------------------------------------------------------------------------------------------------------');
  Writeln(Lst,'TOTAL CONSUMERS : '+IntToStr(TotalConsumer));

  while (LineCount < LineLimit-2) do begin
    Writeln(lst,'');
    Inc(LineCount);
  end;
  Writeln(lst,BillingData.isonumberQisoNumber.Text +
               '                                                           '+
               BillingData.isonumberQrevision.Text+
               '                                                           '+
               BillingData.isonumberQdateF.Text);

  Write(lst,#18,#12);

  CloseFile(Lst);

  ShowMessage('Done.');
end;

procedure TReadingComputeForm.Edit1Change(Sender: TObject);
Var SearchAccount : String;
begin
 With BillingData do
   begin
     If Length(Edit1.Text) >= 4 then
      begin
         SearchAccount    := Area.Text+Book.Text+Edit1.Text;
         Master.Close;
         Master.SQL.Clear;
         Master.SQL.Add('select * from master where accountnumber = :accountnumber');
         Master.ParamByName('AccountNumber').Text := SearchAccount;
         Master.Open;
      end;
   end;
end;

procedure TReadingComputeForm.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
If IOResult <> 0 then begin end;

  If Key = #13 then
   begin
    If (PreviousReadingDate = '') or
       (PresentReadingDate = '') or
       (BillMonth= '') then
       begin
        ShowMessage('Filter data was not properly set ....'+#13+
                    'Please try again');
        Close;
        Exit;
       end;

      With BillingData do
        begin
           CheckDuplicate.Close;
           CheckDuplicate.ParamByName('code').Text      := MasterCode.Text;
           CheckDuplicate.ParamByName('billmonth').Text := BillMonth;
           CheckDuplicate.Open;

           If not CheckDuplicate.IsEmpty then
             begin

               if (MessageDlg('That account has already been billed for that month.'+#13+#10+
                              'Continue anyway?', mtWarning, [mbYes, mbNo], 0) in [mrNo, mrNone]) then
                 begin
                  CheckDuplicate.Close;
                  Exit;
                 end;
             end;
           CheckDuplicate.Close;

           Bill.Append;
           BillCode.Text                        := MasterCode.Text;
           BillArea.Text                        := MasterArea.Text;
           BillBook.Text                        := MasterBook.Text;
           BillSequence.Text                    := MasterSequence.Text;
           BillAccountNumber.Text               := MasterAccountNumber.Text;
           BillName.Text                        := MasterName.Text;
           BillAddress.Text                     := MasterAddress.Text;
           BillRateCode.Text                    := MasterRateCode.Text;
           BillWRateCode.Text                   := MasterWRateCode.Text;
           BillMultiplier.Text                  := MasterMultiplier.Text;
           BillSerial.Text                      := MasterSerial.Text;
           BillVATDisc.AsCurrency               := MasterVATDisc.AsCurrency;
           BillPreviousReadingDate.Text         := PreviousReadingDate;
           BillPresentReadingDate.Text          := PresentReadingDate;
           BillPresentReadingKWH.Text           := '0.00';
           BillPreviousReadingKWH.Text          := MasterPresentReadingKWH.Text;
           BillDiff.Text                        := '0.00';
           BillDemand.Text                      := MasterDemand.Text;
           BillKilowattUsed.Text                := MasterKilowattUsed.Text;
           BillFlatRateWattage.Text             := MasterFlatRateWattage.Text;
           BillFeedBackCode.Text                := MasterFeedBackCode.Text;
           BillCM.Text                          := MasterCM.Text;
           BillCMMultiplier.Text                := MasterCMMultiplier.Text;
           BillCMPreviousReadingKWH.Text        := MasterCMPreviousReadingKWH.Text;
           BillCMPresentReadingKWH.Text         := MasterCMPresentReadingKWH.Text;
           BillCMKilowattHour.Text              := MasterCMKilowattHour.Text;
           BillCMDemand.Text                    := MasterCMDemand.Text;
           BillTransformerRental.Text           := MasterTransformerRental.Text;
           BillStatusCode.Text                  := '2';
           BillBillMonth.Text                   := BillMonth;
           BillCBook.Text                       := MasterCBook.Text;
           BillisGram.AsBoolean                 := MasterisGram.AsBoolean;

           checkcollection.Close;
           checkcollection.ParamByName('code').Text      := MasterCode.Text;
           checkcollection.ParamByName('billmonth').Text := BillMonth;
           checkcollection.Open;

           if not checkcollection.IsEmpty then
             begin
               BillPresentReadingKWH.AsFloat := MasterPresentReadingKWH.AsFloat + checkcollectionkilowatthour.AsFloat;
               BillKilowattHour.AsFloat      := checkcollectionkilowatthour.AsFloat;
               BillOEBRNumber.Text           := checkcollectionreceiptnumber.Text;
               PresRead.ReadOnly             := True;
             end else PresRead.ReadOnly      := False;

           checkcollection.Close;

           If (MasterOCMo1.AsInteger*MasterOCAmount1.AsCurrency) <> MasterOCTotal1.AsCurrency then
           begin
            BillOCCode1.Text                    := MasterOCCode1.Text;
            BillOCAmount1.AsCurrency            := MasterOCAmount1.AsCurrency;
           end;

           If (MasterOCMo2.AsInteger*MasterOCAmount2.AsCurrency) <> MasterOCTotal2.AsCurrency then
           begin
            BillOCCode2.Text                    := MasterOCCode2.Text;
            BillOCAmount2.AsCurrency            := MasterOCAmount2.AsCurrency;
           end;

           If (MasterOCMo3.AsInteger*MasterOCAmount3.AsCurrency) <> MasterOCTotal3.AsCurrency then
           begin
            BillOCCode3.Text                    := MasterOCCode3.Text;
            BillOCAmount3.AsCurrency            := MasterOCAmount3.AsCurrency;
           end;

           Bill.Post;
           Bill.Edit;
           PresRead.SetFocus;
        end;

end;
end;

procedure TReadingComputeForm.PDJSillyLabel5Click(Sender: TObject);
begin
  Close;
end;

procedure TReadingComputeForm.DBGrid2DblClick(Sender: TObject);
begin
Edit1.SetFocus;
end;

procedure TReadingComputeForm.DBGrid3KeyPress(Sender: TObject;
  var Key: Char);
begin
   If Key = #13 then
     begin
       BillingData.Bill.Edit;
       PresRead.SetFocus;
     end;

end;

procedure TReadingComputeForm.powerbillClick(Sender: TObject);
begin

 With BillingData do Bill.Refresh;
 If not assigned(BillingPrintBillForm) then
 BillingPrintBillForm  := TBillingPrintBillForm.Create(Application);
 BillingPrintBillForm.Show;

 BillingPrintBillForm.StartOEBR.Text         := StartPrintOEBR;
 BillingPrintBillForm.EndOEBR.Text           := EndPrintOEBR;
 BillingPrintBillForm.Show;
 BillingPrintBillForm.StartOEBR.SetFocus;

end;

procedure TReadingComputeForm.billingregisterClick(Sender: TObject);
Procedure PrintHeading;
begin
 With BillingData do
 begin
  Write(Lst,#18);
  Writeln(lst,#27 + 'P'+'PAGE # '+IntToStr(PageCount));
  Writeln(lst,#27 + '4'+'BILLING REGISTER'+#27+'5');
  Writeln(lst,'BILLING MONTH     : '+BillMonthStr);
  Writeln(Lst,'READING DATE      : '+PresentReadingDate);
  Writeln(lst,'Cipher Book       : '+StaticText2.Caption);
  Write(Lst,#27+'M');
  Writeln(lst,'-------------------------------------------------------------------------------------------------------------------------------------------------------------------');
  Writeln(lst,'|  Acct #  |        Consumer Name         |PresRead|PrevRead|    KWHR|  DEMAND| Basic Charge |Uni-Charge Adj| XFRent/LLP |  XF Refund |   Total Bill |  OEBR #  |R|');
  Writeln(lst,'-------------------------------------------------------------------------------------------------------------------------------------------------------------------');
 end;
end;

begin
  TotalConsumer         := 0;
  LineCount             := 0;

  AssignFile(Lst,'LPT1');
  Rewrite(Lst);
  If IOResult <> 0 then
    begin
     ShowMessage('Printer not Ready');
     Exit;
    end;

  HeadingSW := True;
  PTotalPower        := 0 ;
  PTotalAdjustment   := 0 ;
  PTotalBill         := 0 ;
  PTotalKWHr         := 0 ;
  PTotalKWUsed       := 0 ;
  PTransRental       := 0 ;
  PTransRefund       := 0 ;

  GTotalPower        := 0 ;
  GTotalAdjustment   := 0 ;
  GTotalBill         := 0 ;
  GTotalKWHr         := 0 ;
  GTotalKWUsed       := 0 ;
  GTransRental       := 0 ;
  GTransRefund       := 0 ;

  If not assigned(BillingStatusUpdateForm) then
  BillingStatusUpdateForm := TBillingStatusUpdateForm.Create(Application);
  BillingStatusUpdateForm.Caption := 'BILLING REGISTER';
  BillingStatusUpdateForm.Label1.Caption := 'Printing Billing Register.....';
  BillingStatusUpdateForm.Show;

  BillingStatusUpdateForm.ProgressBar1.Min := 0;
  BillingStatusUpdateForm.ProgressBar1.Max := BillingData.Bill.RecordCount;

  BillingStatusUpdateForm.ProgressBar1.Position := 0;

  BillingData.Bill.First;

  With BillingData do
  Repeat

  BillingStatusUpdateForm.ProgressBar1.StepBy(1);
  Application.ProcessMessages;

  If HeadingSW then
    begin
     PrintHeading;
     HeadingSW := False;
    end;

    TotalPower      := BillGenSysCharge.AsCurrency +
                       BillHostCommCharge.AsCurrency +
                       BillForexCharge.AsCurrency +
                       BillTCDemandCharge.AsCurrency +
                       BillTCTransSystemCharge.AsCurrency +
                       BillSystemLossCharge.AsCurrency +
                       BillDCDemandCharge.AsCurrency +
                       BillDCDistributionCharge.AsCurrency +
                       BillSCRetCustCharge.AsCurrency +
                       BillSCSupplySysCharge.AsCurrency +
                       BillMCRetailCustCharge.AsCurrency +
                       BillMCSystemCharge.AsCurrency+
                       BillMCC.AsCurrency+
                       BillDiffBillPerKwhr.AsCurrency+
                       BillDiffBillPerKW.AsCurrency+
                       BillDiffBillPerCust.AsCurrency;

    TotalAdjustment := BillUCNPCStrandedDebts.AsCurrency +
                       BillUCNPCStrandedContCost.AsCurrency +
                       BillUCDUStrandedContCost.AsCurrency +
                       BillUCME.AsCurrency +
                       BillUCEqTaxesAndRoyalties.AsCurrency +
                       BillUCEC.AsCurrency +
                       BillUCCrossSubRemoval.AsCurrency +
                       BillICCrossSubsidyCharge.AsCurrency +
                       BillPowerActRateRed.AsCurrency +
                       BillLifelineDiscSubs.AsCurrency +
                       BillLoanCondo.AsCurrency +
                       BillLCCustMo.AsCurrency +
                       BillVAT.AsCurrency +
                       BillPrevYearAdjPowerCost.AsCurrency +
                       BillSysLossUnderRecov.AsCurrency +
                       BillFlatRateWattage.AsCurrency;

    TransRental     := BillTransformerRental.AsCurrency;
    TransRefund     := BillOCAmount1.AsCurrency +
                       BillOCAmount2.AsCurrency +
                       BillOCAmount3.AsCurrency;

    PTotalPower        := PTotalPower + TotalPower;
    PTotalAdjustment   := PTotalAdjustment + TotalAdjustment;
    PTransRental       := PTransRental  + TransRental;
    PTransRefund       := PTransRefund + TransRefund;
    PTotalBill         := PTotalBill + BillTotalBill.AsCurrency;
    PTotalKWHr         := PTotalKWHr + BillKilowattHour.AsCurrency;
    PTotalKWUsed       := PTotalKWUsed + BillKilowattUsed.AsCurrency;

    GTotalPower        := GTotalPower + TotalPower;
    GTotalAdjustment   := GTotalAdjustment + TotalAdjustment;
    GTransRental       := GTransRental  + TransRental;
    GTransRefund       := GTransRefund + TransRefund;
    GTotalBill         := GTotalBill + BillTotalBill.AsCurrency;
    GTotalKWHr         := GTotalKWHr + BillKilowattHour.AsCurrency;
    GTotalKWUsed       := GTotalKWUsed + BillKilowattUsed.AsCurrency;

    Writeln(lst,'|',JustStr(BillAccountNumber.Text,' ',10,0)        ,'|',
                    JustStr(BillName.Text,' ',30,0)                 ,'|',
                    BillPreviousReadingKWH.AsCurrency:8:1           ,'|',
                    BillPresentReadingKWH.AsCurrency:8:1            ,'|',
                    BillKilowattHour.AsCurrency:8:1                 ,'|',
                    BillKilowattUsed.AsCurrency:8:1                 ,'|',
                    Format(TotalPower,'#,###,###.##')               ,'|',
                    Format(TotalAdjustment,'#,###,###.##')          ,'|',
                    Format(TransRental,'###,###.##')                ,'|',
                    Format(TransRefund,'###,###.##')                ,'|',
                    Format(BillTotalBill.AsCurrency,'#,###,###.##') ,'|',
                    JustStr(BillOebrNumber.Text,' ',10,0)           ,'|',
                    JustStr(BillRateCode.Text,' ',1,0)              ,'|');

    Inc(TotalConsumer);

  Inc(LineCount);
  If (LineCount = 50) and not Bill.eof then
   begin
    LineCount := 0;
    Inc(PageCount);

    Writeln(lst,'-------------------------------------------------------------------------------------------------------------------------------------------------------------------');
    Writeln(lst,'| Page Total --------------------------------------------->>|',
                  PTotalKWHr:8:1                          ,'|',
                  PTotalKWUsed:8:1                        ,'|',
                  Format(PTotalPower,'#,###,###.##')      ,'|',
                  Format(PTotalAdjustment,'#,###,###.##') ,'|',
                  Format(PTransRental,'###,###.##')       ,'|',
                  Format(PTransRefund,'###,###.##')       ,'|',
                  Format(PTotalBill,'#,###,###.##')       ,
                  '|          | |');
    Writeln(lst,'-------------------------------------------------------------------------------------------------------------------------------------------------------------------');
    PTotalPower        := 0 ;
    PTotalAdjustment   := 0 ;
    PTotalBill         := 0 ;
    PTotalKWHr         := 0 ;
    PTotalKWUsed       := 0 ;
    PTransRental       := 0 ;
    PTransRefund       := 0 ;
    Write(Lst,#12);
    HeadingSW := True;
   end; { end if Line Count }
   Bill.Next;
  Until (Bill.Eof);

  If LineCount > 0 then
  begin
  Writeln(lst,'-------------------------------------------------------------------------------------------------------------------------------------------------------------------');
  Writeln(lst,'| Page Total --------------------------------------------->>|',
                PTotalKWHr:8:1                          ,'|',
                PTotalKWUsed:8:1                        ,'|',
                Format(PTotalPower,'#,###,###.##')      ,'|',
                Format(PTotalAdjustment,'#,###,###.##') ,'|',
                Format(PTransRental,'###,###.##')       ,'|',
                Format(PTransRefund,'###,###.##')       ,'|',
                Format(PTotalBill,'#,###,###.##')       ,
                '|          | |');
  end;
  Writeln(lst,'-------------------------------------------------------------------------------------------------------------------------------------------------------------------');
  Writeln(lst,'| Grand Total -------------------------------------------->>|',
                GTotalKWHr:8:1                          ,'|',
                GTotalKWUsed:8:1                        ,'|',
                Format(GTotalPower,'#,###,###.##')      ,'|',
                Format(GTotalAdjustment,'#,###,###.##') ,'|',
                Format(GTransRental,'###,###.##')       ,'|',
                Format(GTransRefund,'###,###.##')       ,'|',
                Format(GTotalBill,'#,###,###.##')       ,
                '|          | |');
  Writeln(lst,'-------------------------------------------------------------------------------------------------------------------------------------------------------------------');
  Writeln(Lst,'TOTAL CONSUMERS : '+IntToStr(TotalConsumer));
  Write(lst,#18,#12);
  BillingStatusUpdateForm.Close;
  CloseFile(Lst);

  ShowMessage('Done.');
end;

procedure TReadingComputeForm.BitBtn1Click(Sender: TObject);
var
  i : integer;
begin
    VerifyReading();

    consistentRdngQ.close;
    if VCount>=1 then  Begin

        consistentRdngQ.FilterSQL :='';
        consistentRdngQ.FilterSQL := 'accountnumber in (';
        for I := 0 to VCount - 1 do Begin
            // messagedlg(VerifiedRdng[I],mtInformation,[mbOK],0);
          if I>0 then begin
                consistentRdngQ.FilterSQL := consistentRdngQ.FilterSQL + ',' + quotedstr(VerifiedRdng[I]);
          end else begin
                consistentRdngQ.FilterSQL := consistentRdngQ.FilterSQL + quotedstr(VerifiedRdng[I]);
          end;

        End;
        consistentRdngQ.FilterSQL := consistentRdngQ.FilterSQL +')';
        consistentRdngQ.Open;
    End;


 //============================================================================
 //============================================================================
  If (IntroForm.UsersBillCode.Text = '') or
     (IntroForm.Users.Active = False) then
    begin
      MessageDlg('You are not authorized to issue bill....', mtError, [mbOK], 0);
      exit;
    end;

  AssignBillNumberPanel.Caption := 'Assign Bill Number (Verified Reading)';
  //DBGrid1.DataSource := BillingData.BillSource;
  DBGrid1.DataSource  := consistentRS;
  recordLabel.Caption := IntToStr(consistentRdngQ.RecordCount);

  NxHeaderPanel4.Visible := false;
  AssignBillNumberPanel.Left    := 116;
  AssignBillNumberPanel.Top     := 95;
  IntroForm.Users.Refresh; //RefreshRecord;
  St1.Caption                             := IntroForm.UsersBillCode.Text;
  St2.Caption                             := IntroForm.UsersUserName.Text;
  St3.Caption                             := IntroForm.UsersBillNumber.Text;
  St4.Caption                             := StaticText2.Caption;
  AssignBillNumberPanel.Color             := clBtnHighlight;
  AssignBillNumberPanel.HeaderFont.Color  :=clBtnHighlight;
  AssignBillNumberPanel.Visible := True;
  AssignBillNumberPanel.BringToFront;
end;

procedure TReadingComputeForm.BitBtn2Click(Sender: TObject);
var
  i : integer;
begin
    ConsistentReading();

    consistentRdngQ.close;
    if aveCount>=1 then  Begin

        consistentRdngQ.FilterSQL := '';
        consistentRdngQ.FilterSQL := 'accountnumber in (';

        for I := 0 to aveCount - 1 do Begin
          if I>0 then begin
                consistentRdngQ.FilterSQL := consistentRdngQ.FilterSQL + ',' + quotedstr(consistentRdng[I]);
          end else begin
                consistentRdngQ.FilterSQL := consistentRdngQ.FilterSQL + quotedstr(consistentRdng[I]);
          end;

        End;
        consistentRdngQ.FilterSQL := consistentRdngQ.FilterSQL +')';
        consistentRdngQ.Open;
    End;

  //===========================================================================
  //===========================================================================

   If (IntroForm.UsersBillCode.Text = '') or
     (IntroForm.Users.Active = False) then
   begin
      MessageDlg('You are not authorized to issue bill....', mtError, [mbOK], 0);
      exit;
   end;
  AssignBillNumberPanel.Caption := 'Assign Bill Number (Consistent Reading)';
  DBGrid1.DataSource  := consistentRS;
  recordLabel.Caption := IntToStr(consistentRdngQ.RecordCount);

  NxHeaderPanel4.Visible := false;
  AssignBillNumberPanel.Left    := 116;
  AssignBillNumberPanel.Top     := 95;
  IntroForm.Users.Refresh;  //RefreshRecord;
  St1.Caption                             := IntroForm.UsersBillCode.Text;
  St2.Caption                             := IntroForm.UsersUserName.Text;
  St3.Caption                             := IntroForm.UsersBillNumber.Text;
  St4.Caption                             := StaticText2.Caption;
  AssignBillNumberPanel.Color             := clActiveCaption;
  AssignBillNumberPanel.HeaderFont.Color  := clActiveCaption;
  AssignBillNumberPanel.Visible := True;
  AssignBillNumberPanel.BringToFront;
end;

procedure TReadingComputeForm.Disconnection1Click(Sender: TObject);
begin
If not assigned(DisconnectionTransactionForm) then
DisconnectionTransactionForm := TDisconnectionTransactionForm.Create(Application);
DisconnectionTransactionForm.Show;
end;

procedure TReadingComputeForm.Reconnection1Click(Sender: TObject);
begin
If not assigned(ReconnectionTransactionForm) then
ReconnectionTransactionForm := TReconnectionTransactionForm.Create(Application);
ReconnectionTransactionForm.Show;
end;


procedure TReadingComputeForm.CanvassCancelBtnClick(Sender: TObject);
begin
  NxHeaderPanel3.Visible := false;
end;

procedure TReadingComputeForm.ChangeMeter1Click(Sender: TObject);
begin
If not assigned(ChangeMeterTransactionForm) then
ChangeMeterTransactionForm := TChangeMeterTransactionForm.Create(Application);
ChangeMeterTransactionForm.Show;
end;

procedure TReadingComputeForm.ChangeName1Click(Sender: TObject);
begin
If not assigned(ChangeNameTransactionForm) then
ChangeNameTransactionForm := TChangeNameTransactionForm.Create(Application);
ChangeNameTransactionForm.Show;
end;

procedure TReadingComputeForm.CheckBox1Click(Sender: TObject);
begin
if checkbox1.checked = true then
  begin
    prev.Enabled := false;
  end
  else
  begin
    prev.Enabled := true;
  end;
end;

procedure TReadingComputeForm.ransferArea1Click(Sender: TObject);
begin
If not assigned(TransferAreaTransactionForm) then
TransferAreaTransactionForm := TTransferAreaTransactionForm.Create(Application);
TransferAreaTransactionForm.Show;
end;

procedure TReadingComputeForm.PresReadExit(Sender: TObject);
begin
 BillingData.Bill.Edit;
 ComputeBill;
 BillingData.Bill.Post;
 Edit1.Text := '';
 Edit1.SetFocus;
end;

procedure TReadingComputeForm.fixdatesClick(Sender: TObject);
var
  prevMonth : String;
  prevYear  : String;
begin
  prevMonth := IntToStr(strtoint(FormatDateTime('MM',now))-1);
  prevYear := FormatDateTime('YYYY',now);

  if prevMonth = '0' then
  begin
       prevYear := IntToStr(strtoint(FormatDateTime('YYYY',now))-1);
       prevMonth := '12';
  end;

  Pres.date      := StrtoDate(FormatDateTime('MM/DD/YYYY',now));
  prev.Date      := Strtodate(prevMonth+'/'+FormatDateTime('DD',now)+'/'+prevYear);
  BMon.Text      := FormatDateTime('MMYY',now);
  Panel3.Left    := 258;
  Panel3.Top     := 182;
  Panel3.Visible := True;
  Panel3.BringToFront;
  Pres.SetFocus;
end;

procedure TReadingComputeForm.PDJSillyLabel9Click(Sender: TObject);
begin
 if checkbox1.checked = false then
 begin
    With BillingData do
      begin

      Bill.First;
      While not Bill.Eof do
      begin

      Bill.Edit;
      BillPresentReadingDate.AsDateTime  := Pres.Date;
      BillPreviousReadingDate.AsDateTime := Prev.Date;
      BillBillMonth.Text                 := BMon.Text;
      Bill.Post;

      Bill.Next;
      end;
    end;
 end
else
  begin
    with BillingData do
      begin
        bill.First;
        while not Bill.Eof do
          begin
            fixdate1.Close;
            fixdate1.ParamByName('accountnumber').Text := BillAccountNumber.Text;
            fixdate1.Open;
            if fixdate1.IsEmpty then
              begin
                fixdate2.Close;
                fixdate2.ParamByName('accountnumber').Text := BillAccountNumber.Text;
                fixdate2.Open;
                Bill.Edit;
                BillPresentReadingDate.AsDateTime  := Pres.Date;
                Edit2.Text := FormatDateTime('MM/DD/YYYY',fixdate2newconnectiondate.AsDateTime);
                Prev.text := Edit2.Text;
                BillPreviousReadingDate.AsDateTime := Prev.Date;
                BillBillMonth.Text                 := BMon.Text;
                Bill.Post;

                Bill.Next;
              end
            else
              begin
                Bill.Edit;
                BillPresentReadingDate.AsDateTime  := Pres.Date;
                Edit2.Text := FormatDateTime('MM/DD/YYYY',fixdate1PresentReadingDate.AsDateTime);
                Prev.text := Edit2.Text;
                BillPreviousReadingDate.AsDateTime := Prev.Date;
                BillBillMonth.Text                 := BMon.Text;
                Bill.Post;

                Bill.Next;
              end;
          end;
      end;
  end;


end;

procedure TReadingComputeForm.PDJSillyLabel10Click(Sender: TObject);
begin
  Panel3.Visible := False;
end;

procedure TReadingComputeForm.PDJSillyLabel11Click(Sender: TObject);
begin
  If Edit3.Text = 'shepherd' then
    begin
      PrevRead.ReadOnly := False;
      PrevRead.SetFocus;
    end;
   Panel10.Visible := False;
end;

procedure TReadingComputeForm.Timer1Timer(Sender: TObject);
begin
  StaticText1.Caption := 'Records = '+IntToStr(BillingData.Bill.RecordCount);
  Application.ProcessMessages;
end;

procedure TReadingComputeForm.RadioGroup1Click(Sender: TObject);
begin
 With BillingData do
 begin

  Case RadioGroup1.ItemIndex of
  0 : begin
       Bill.OrderFields := 'AccountNumber';
       Bill.Refresh;
      end;
  1 : begin
       Bill.OrderFields := 'Sequence';
       Bill.Refresh;
      end;
  end;
 end;
end;

procedure TReadingComputeForm.PDJSillyLabel14Click(Sender: TObject);
Var
BNStr : String[10];
BNVal : Integer;

begin
BNVal := StrToInt(IntroForm.UsersBillNumber.Text);

  {if AssignBillNumberPanel.Caption = 'Assign Bill Number (Verified Reading)' then
  Begin
      Gauge2.Progress := 0;
      Gauge2.MaxValue := BillingData.Bill.RecordCount;

      With BillingData do
       begin

        StartPrintOEBR := '';
        EndPrintOEBR   := '';

        Bill.Refresh;
        Bill.First;
        While not Bill.Eof do
         begin
         Gauge2.AddProgress(1);
         Application.ProcessMessages;

         CheckDuplicate.Close;
         CheckDuplicate.ParamByName('code').Text      := BillCode.Text;
         CheckDuplicate.ParamByName('billmonth').Text := BillMonth;
         CheckDuplicate.Open;

         If not CheckDuplicate.IsEmpty then
           begin
             Bill.Delete;
             CheckDuplicate.Close;
             Continue;
           end;
          CheckDuplicate.Close;

          If BillOEBRNumber.Text = '' then
           begin

            Inc(BNVal);
            BNStr := JustStr(IntToStr(BNVal),'0',8,1);
            Bill.Edit;
            BillOEBRNumber.Text := IntroForm.UsersBillCode.Text + BNStr;

            If StartPrintOEBR = '' then StartPrintOEBR := BillOEBRNumber.Text;
            IntroForm.Users.Edit;
            IntroForm.UsersBillNumber.Text := IntToStr(BNVal);
            IntroForm.Users.Post;

            PutBillRestUnpaid.ParamByName('code').Text        := BillCode.Text;
            PutBillRestUnpaid.ParamByName('billmonth').Text   := BillBillMonth.Text;
            PutBillRestUnpaid.ParamByName('billnumber').Text  := BillOEBRNumber.Text;
            PutBillRestUnpaid.Execute;

            Bill.Post;

           end;

          Bill.Next;
         end;

       EndPrintOEBR := BillOEBRNumber.Text;
       end;


  end else if AssignBillNumberPanel.Caption = 'Assign Bill Number (Consistent Reading)' then Begin  }
      Gauge2.Progress := 0;
      Gauge2.MaxValue := consistentRdngQ.RecordCount;

       StartPrintOEBR := '';
       EndPrintOEBR   := '';

       consistentRdngQ.Refresh;
       consistentRdngQ.First;

       while not consistentRdngQ.Eof do begin
         Gauge2.AddProgress(1);
         Application.ProcessMessages;

         CheckDuplicate.Close;
         CheckDuplicate.ParamByName('code').Text      := consistentRdngQCode.Text;
         CheckDuplicate.ParamByName('billmonth').Text := BillMonth;
         CheckDuplicate.Open;

         If not CheckDuplicate.IsEmpty then
           begin
             consistentRdngQ.Delete;
             CheckDuplicate.Close;
             Continue;
           end;
          CheckDuplicate.Close;

          If (consistentRdngQOEBRNumber.Text = '') And (consistentRdngQKilowattHour.AsFloat>=0) then
           begin
              Inc(BNVal);
              BNStr := JustStr(IntToStr(BNVal),'0',8,1);
              consistentRdngQ.Edit;
              consistentRdngQOEBRNumber.Text := IntroForm.UsersBillCode.Text + BNStr;

              If StartPrintOEBR = '' then StartPrintOEBR := consistentRdngQOEBRNumber.Text;
              IntroForm.Users.Edit;
              IntroForm.UsersBillNumber.Text := IntToStr(BNVal);
              IntroForm.Users.Post;

              PutBillRestUnpaid.ParamByName('code').Text        := consistentRdngQCode.Text;
              PutBillRestUnpaid.ParamByName('billmonth').Text   := consistentRdngQBillMonth.Text;
              PutBillRestUnpaid.ParamByName('billnumber').Text  := consistentRdngQOEBRNumber.Text;
              PutBillRestUnpaid.Execute;

              consistentRdngQ.Post;
           end;
         consistentRdngQ.Next;
       end;
 // End; ===========================================

 BillingData.Bill.First;
 consistentRdngQ.First;
 MessageDlg('Assign Bill Number done....', mtInformation, [mbOK], 0);
end;

procedure TReadingComputeForm.PDJSillyLabel15Click(Sender: TObject);
begin
 AssignBillNumberPanel.Visible := False;
end;

procedure TReadingComputeForm.ViewARLedgerandUnpaidBills1Click(
  Sender: TObject);
begin
   With BillingData do
    begin
     NxPageControl1.ActivePageIndex := 0;
     PageControl2.ActivePageIndex := 0;
     NxPageControl2.ActivePageIndex := 0;
     PageControl3.ActivePageIndex := 0;

     RBConn.Close;
     RBConn.ParamByName('Code').Text := BillCode.Text;
     RBConn.Open;

     if RBConnconncode.Text = '1' then
     StaticText3.Caption := 'Active' else
     StaticText3.Caption := 'Disconnected';

     AR.Close;
     AR.ParamByName('code').Text := BillCode.Text;
     AR.Open;
     AR.Last;

     UnPB.Close;
     UnPB.SQL.Clear;
     UnPB.SQL.Add('select * from unpaidbills where code = :code');
     UnPB.SQL.Add('order by date');
     UnPB.ParamByName('code').Text := BillCode.Text;
     UnPB.Open;

     Disco.Close;
     Disco.FilterSQL := 'code = '+quotedstr(BillCode.Text);
     Disco.Open;

     Recon.Close;
     Recon.FilterSQL := 'code = '+quotedstr(BillCode.Text);
     Recon.Open;

     ChangeMeter.Close;
     ChangeMeter.FilterSQL := 'code = '+quotedstr(BillCode.Text);
     ChangeMeter.Open;

     ChangeName.Close;
     ChangeName.FilterSQL := 'code = '+quotedstr(BillCode.Text);
     ChangeName.Open;

     TransferArea.Close;
     TransferArea.FilterSQL := 'code = '+quotedstr(BillCode.Text);
     TransferArea.Open;

     BillHistory.Close;
     BillHistory.ParamByName('code').Text := BillCode.Text;
     BillHistory.Open;

     LateBills.Close;
     LateBills.ParamByName('code').Text := BillCode.Text;
     LateBills.Open;

     PilferBill.Close;
     PilferBill.ParamByName('code').Text := BillCode.Text;
     PilferBill.Open;

     Pantawid.Close;
     Pantawid.ParamByName('Code').Text := BillCode.Text;;
     Pantawid.ParamByName('Area').Text := BillArea.Text;
     Pantawid.ParamByName('Book').Text := BillBook.Text;
     Pantawid.Open;

     Recovery.Close;
     Recovery.ParamByName('Code').Text := BillCode.Text;
     Recovery.ParamByName('Area').Text := BillArea.Text;
     Recovery.ParamByName('Book').Text := BillBook.Text;
     Recovery.Open;

     MSA.Close;
     MSA.SQL.Clear;
     MSA.SQL.Add('select * from MSComplete where code = :code');
     MSA.ParamByName('code').Text := BillCode.Text;
     MSA.Open;

     RemoveMeter.Close;
     RemoveMeter.MacroByName('Code').Active          := True;
     RemoveMeter.MacroByName('Date').Active          := False;
     RemoveMeter.MacroByName('Name').Active          := False;
     RemoveMeter.MacroByName('AccountNumber').Active := False;

     RemoveMeter.ParamByName('Code').Text   := BillCode.Text;
     RemoveMeter.Open;

     NxHeaderPanel2.Caption := 'Consumer Details ';
     NxHeaderPanel2.Left := 35;
     NxHeaderPanel2.Top  := 77;
     NxHeaderPanel2.BringToFront;
     NxHeaderPanel2.Visible := True;

     Application.ProcessMessages;
    end;
end;

procedure TReadingComputeForm.SearchAccountKeyPress(Sender: TObject;
  var Key: Char);
Var SAccount : String;
begin
 If Key = #13 then
  begin
    SAccount    := SearchAccount.Text;
    If not BillingData.Bill.Locate('AccountNumber',SAccount,[]) then
    MessageDlg('Account Number not found...', mtError, [mbOK], 0);
  end;
end;

procedure TReadingComputeForm.SelectRouteClick(Sender: TObject);
begin
  If not assigned(ReadingDataFilterForm) then ReadingDataFilterForm := TReadingDataFilterForm.Create(Application);
  ReadingDataFilterForm.Show;
end;

procedure TReadingComputeForm.restorefrombillingarchiveClick(Sender: TObject);
begin
try
  createTable.Execute
except
end;
  NxHeaderPanel3.Left := 286;
  NxHeaderPanel3.Top  := 125;
  NxHeaderPanel3.BringToFront;
  NxHeaderPanel3.Visible := true;
end;

procedure TReadingComputeForm.restorefrombillingarchivecloseClick(Sender: TObject);
begin
  RestoreFromBillingArchivePanel.Visible := False
end;

procedure TReadingComputeForm.NxButton3Click(Sender: TObject);
begin
  CheckListPanel.Visible := False;
end;

procedure TReadingComputeForm.checklistbuttonClick(Sender: TObject);
begin
  CheckListPanel.Left    := 214;
  CheckListPanel.Top     := 175;
  CheckListPanel.Visible := true;
  CheckListPanel.BringToFront;
  RadioGroup2.SetFocus;
end;

procedure TReadingComputeForm.RadioGroup2Click(Sender: TObject);
begin
  If (RadioGroup2.ItemIndex = 0) or (RadioGroup2.ItemIndex = 2) or (RadioGroup2.ItemIndex = 3) then GroupBox1.Enabled := False else
    begin
      GroupBox1.Enabled := True;
      FromAcct.SetFocus;
    end;

end;

procedure TReadingComputeForm.FromAcctKeyPress(Sender: TObject;
  var Key: Char);
begin
  If key = #13 then
    begin
     Perform(CM_DIALOGKEY,VK_TAB,0);
     key := #0;
    end;
end;

procedure TReadingComputeForm.DownLoadBtnClick(Sender: TObject);

function OpenConnection : Boolean;
  var n : Longint;
begin
  n := CeRapiInit;
  Result :=  n = 0;
end;

var tmpStringList : TStringList;
    i : Integer;
begin
  case RadioGroup3.ItemIndex of
  0: begin
       If BillingData.Bill.RecordCount > 0 then
        begin
          if MessageDlg('This Cipher Book already contains records.'+#13+#10+
                        'Click yes to re-populate, no to append', mtWarning, [mbYes,mbNo], 0) = mrYes then
           begin

             BillingData.AllPurpose.SQL.Clear;
             BillingData.AllPurpose.SQL.Add('Delete from TempBill');
             BillingData.AllPurpose.SQL.Add('       where Cbook = '+QuotedStr(StaticText2.Caption));
             BillingData.AllPurpose.SQL.Add('       and BillMonth = '+QuotedStr(BillMonth));
             BillingData.AllPurpose.Execute;
             BillingData.Bill.Close;
             BillingData.Bill.DisableControls;
             BillingData.Bill.Open;
             BillingData.Bill.EnableControls;
           end
        end;

       if MessageDlg('Download Data from Device ..... Proceed?', mtConfirmation, [mbOK,mbCancel], 0) = mrOk then
        begin

          try
             IF NOT Serial.Connected THEN
              begin
                Serial.Open;
                serial.WriteStr('UPLOAD' + #10);
              end;
          except
           begin
             MessageDlg('Check if device is ready to accept data or cable is properly attach..', mtError, [mbOK], 0);
             exit;
           end;
          end;

          FillChar(UploadStr,SizeOf(UploadStr),#0);
          UpCount := 0;

          Panel6.Left := 151;
          Panel6.Top  := 160;
          Gauge5.Progress := 0;
          Gauge5.MinValue := 0;
          Gauge5.MaxValue := UpCount;
          Panel6.BringToFront;
          Panel6.Visible := True;
          NxMemo1.Lines.Clear;
          Application.ProcessMessages;

          FirstRec  := True;
          NewConnSW := False;
        end;
     end;
  1: begin
        if openConnection then
        begin
          if not DirectoryExists('d:\MobileTransfer') then MkDir('d:\MobileTransfer');

          if FileExists('d:\MobileTransfer\RESULT.TXT') then
             if (MessageDlg('There is a result file in the transfer folder ''d:\MobileTransfer'''+#13+#10+'Do you want to overwrite this file?..', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
              CopyFileFromDevice('d:\MobileTransfer\RESULT.TXT','\DiskOnChip\ZANECO\RESULT.TXT');

           CeRapiUninit;
          tmpStringList := TStringList.Create;
          tmpStringList.LoadFromFile('d:\MobileTransfer\RESULT.TXT');

          FillChar(UploadStr,SizeOf(UploadStr),#0);
          UpCount := 0;

          Panel6.Left := 60;
          Panel6.Top  := 162;
          Gauge5.Progress := 0;
          Gauge5.MinValue := 0;
          Gauge5.MaxValue := UpCount;
          Panel6.BringToFront;
          Panel6.Visible := True;
          NxMemo1.Lines.Clear;

          UpCount := tmpStringList.Count;

          FirstRec  := True;
          NewConnSW := False;

          For i := 1 to UpCount do
           begin
             UploadStr[i] := tmpStringList[i-1];
             Label11.Caption := 'Records Read '+IntToStr(i);
             NxMemo1.Lines.Add(UploadStr[i]);

             Application.ProcessMessages;

           end;

          MessageDlg('', mtError, [mbOK], 0);

           PopulateTempBill;
        end
       else
        begin
          CeRapiUnInit;
          MessageDlg('Could not access device!'+#13+#10+'Please check the connection of your device..', mtWarning, [mbOK], 0);
        end;
     end;
  2: begin
        if OpenDialog1.Execute then
        begin
          tmpStringList := TStringList.Create;
          tmpStringList.LoadFromFile(OpenDialog1.FileName);

          FillChar(UploadStr,SizeOf(UploadStr),#0);
          UpCount := 0;

          Panel6.Left := 60;
          Panel6.Top  := 162;
          Gauge5.Progress := 0;
          Gauge5.MinValue := 0;
          Gauge5.MaxValue := UpCount;
          Panel6.BringToFront;
          Panel6.Visible := True;
          NxMemo1.Lines.Clear;

          UpCount := tmpStringList.Count;

          FirstRec  := True;
          NewConnSW := False;

          For i := 1 to UpCount do
           begin
             UploadStr[i] := tmpStringList[i-1];
             Label11.Caption := 'Records Read '+IntToStr(i);
             NxMemo1.Lines.Add(UploadStr[i]);

             Application.ProcessMessages;

           end;

          MessageDlg('', mtError, [mbOK], 0);

          PopulateTempBill;
        end;
     end;
  end;
end;

procedure TReadingComputeForm.ViewPrintClick(Sender: TObject);
begin
  With BillingData do
   begin
    If Bill.Filtered then
     begin
      Bill.Filter            := '';
      Bill.Filtered          := False;
      ViewPrint.Caption      := 'View Unprinted SOA         ';
      DBGrid3.Color          := clWhite;
     end
     else
     begin
      Bill.Filter            := 'StatusCode = ''0''';
      Bill.Filtered          := True;
      ViewPrint.Caption      := 'View All                             ';
      DBGrid3.Color          := clSkyBlue;
     end;
   end;
end;

procedure TReadingComputeForm.ViewReadingTypeClick(Sender: TObject);
var
 I         : Integer;
 strFilter : String;
begin
  with BillingData do
  begin

      Bill.FilterSQL := '';
      if ViewReadingType.Caption = 'View Consistent Reading  ' Then Begin
         ConsistentReading();

          if aveCount>=1 then
            Begin
              strFilter := ' accountnumber in (';
              for I := 0 to aveCount - 1 do Begin
                if I>0 then begin
                      strFilter := strFilter + ',' + quotedstr(consistentRdng[I]);
                end else begin
                      strFilter := strFilter + quotedstr(consistentRdng[I]);
                end;

              End;
             strFilter           := strFilter +')';
             Bill.FilterSQL      := strFilter;

             DBGrid3.Color           := clActiveCaption;
             ViewReadingType.Caption := 'View All                             ';
             Label21.Caption         := 'Consistent Reading';
            end
          else
            begin
              messagedlg('No consistent records to view..',mtInformation,[mbOK],0);
              ViewReadingType.Caption := 'View All                             ';
              Label21.Caption         := '...';
            End;

      end else if ViewReadingType.Caption = 'View All                             ' Then Begin

         Bill.Filter             := 'cbook = ' + quotedstr(cbookBillmonth[0]);
         Bill.Filtered           := true;
         DBGrid3.Color           := clWhite;
         ViewReadingType.Caption := 'View Verify Reading         ';
         Label21.Caption         := '...';
      end else if ViewReadingType.Caption = 'View Verify Reading         ' Then Begin
         VerifyReading();

         if VCount>=1 then
          Begin

            strFilter := 'accountnumber in (';
            for I := 0 to VCount - 1 do Begin
              //messagedlg(consistentRdng[I],mtWarning,[mbOK],0);
              if I>0 then begin
                    strFilter := strFilter + ',' + quotedstr(VerifiedRdng[I]);
              end else begin
                    strFilter :=strFilter + quotedstr(VerifiedRdng[I]);
              end;

            End;
            strFilter      := strFilter +')';
            Bill.FilterSQL := strFilter;


          end;

          DBGrid3.Color           := clWhite;
          ViewReadingType.Caption := 'View Consistent Reading  ';
          Label21.Caption         := 'Verify Reading';
      End;

  end;
end;

procedure TReadingComputeForm.ApplicationEvents1Exception(Sender: TObject;
  E: Exception);
begin
  Panel2.Visible := False;
  MessageDlg('Error....'+#10+#13+E.Message, mtError, [mbOK], 0);
end;

procedure TReadingComputeForm.NxButton4Click(Sender: TObject);
begin
  With BillingData do
   begin
    Bill.FilterSQL := '';
    If (NxButton4.Caption = 'View All                              ') then
     begin
      Bill.Filter            := 'cbook = ' + quotedstr(cbookBillmonth[0]);
      Bill.Filtered          := true;
      NxButton4.Caption      := 'View Negative KWHR        ';
      DBGrid3.Color          := clWhite;
      Label21.Caption        := '...';
     end
     else if (NxButton4.Caption = 'View Negative KWHR        ') then
     begin
      Bill.Filter            := 'KilowattHour < 0 and cbook = ' + quotedstr(cbookBillmonth[0]);
      Bill.Filtered          := True;
      NxButton4.Caption      := 'View All                              ';
      DBGrid3.Color          := $0080FFFF;
      Label21.Caption        := 'Negative KWHR';
     end;
   end;
end;

procedure TReadingComputeForm.NxButton7Click(Sender: TObject);
begin
{  if (MessageDlg('Are you sure, you want to compute again the CBook reading entry?', mtWarning, [mbYes, mbNo], 0) = mrNo) then exit;

  With BillingData do
  begin
    PresRead.ReadOnly := true;
    Edit1.ReadOnly    := true;
    bill.First;

    while not bill.Eof do
    begin
      BillingData.Bill.Edit;
      ComputeBill;
      BillingData.Bill.Post;
      bill.Next;
    end;

    showmessage('CBook reading entry successfully recomputed...');
    PresRead.ReadOnly := false;
    Edit1.ReadOnly    := false;
  end; }
end;

procedure TReadingComputeForm.NxLinkLabel1Click(Sender: TObject);
begin
  With BillingData do
  begin
     AR.Close;
     UnPB.Close;
     Disco.Close;
     Recon.Close;
     ChangeMeter.Close;
     ChangeName.Close;
     TransferArea.Close;
     BillHistory.Close;
     LateBills.Close;
     PilferBill.Close;
     Pantawid.Close;
     Recovery.Close;
     MSA.Close;
     RBConn.Close;
     NxHeaderPanel2.Visible := False;
  end;
end;

procedure TReadingComputeForm.NxButton11Click(Sender: TObject);
var
  monthtmp : String;
begin
 //check billmonth if already closed then not allowed==============
 monthtmp := inttostr(strtoint(formatdatetime('MM',now))+1);
 if  (strtoint(formatdatetime('MM',now))+1<10) then monthtmp:='0'+ monthtmp;

 {if BillMonth=formatdatetime('MMYY',now) then
 begin
   UpdateSQL.SQL.Clear;
   UpdateSQL.SQL.Add('Select * from billhistory b');
   UpdateSQL.SQL.Add('where b.billmonth = :billmonth and ');
   UpdateSQL.SQL.Add('b.cbook = :cbook');
   UpdateSQL.ParamByName('billmonth').Text := monthtmp + formatdatetime('YY',now);
   UpdateSQL.ParamByName('cbook').Text := StaticText2.Caption;
   UpdateSQL.Open;
   if UpdateSQL.IsEmpty then
   begin
      UpdateSQL.SQL.Clear;
      UpdateSQL.SQL.Add('Select * from tempbill ');
      UpdateSQL.SQL.Add('where billmonth = :billmonth');
      UpdateSQL.ParamByName('billmonth').Text := BillMonth;
      UpdateSQL.Open;
      if UpdateSQL.IsEmpty then
      begin
        //showmessage('ok3');
        messagedlg('Unable to execute due to closed bill month transaction.. ',mtWarning,[mbOK],0);
        exit;
      end;
   end else begin
     //showmessage('ok2');
     messagedlg('Unable to execute due to closed bill month transaction.. ',mtWarning,[mbOK],0);
     exit;
   end;
 end else begin
   //showmessage('ok1');
   messagedlg('Unable to execute due to closed bill month transaction.. ',mtWarning,[mbOK],0);
   exit;
 end;     }
 //==========================================================
 //showmessage('ok');
 If NxEdit1.Text <> 'shepherd' then
 begin
   messagedlg('Invalid password ',mtWarning,[mbOK],0);
   exit;
 end;

 If MessageDlg('Retrieve from Master will reconstruct the temporary billing file '+
                #13+#10+'Cbook: '+ StaticText2.Caption +
                #13+#10+'Area : '+ BillMonth +
                #13+#10+'from the master file and may be used for reprinting the power bill.'+
                #13+#10+'This will also delete the correspondin A/R Ledger and Unpaid bills.'+
                #13+#10+'Proceed ?', mtWarning, [mbYes,mbNo], 0) = MrNo then exit;

RestoreFromBillingArchivePanel.Left    := 244;
RestoreFromBillingArchivePanel.Top     := 171;
RestoreFromBillingArchivePanel.Visible := True;
RestoreFromBillingArchivePanel.BringToFront;
Application.ProcessMessages;

With BillingData do
begin
  try
      createunpaidTmp.Execute;
  except
    on E: Exception do MessageDlg('Error....'+#10+#13+E.Message, mtError, [mbOK], 0);
  end;

  try
    retrieveAdd.Close;
    retrieveAdd.ParamByName('ExecutedBy').Text    := IntroForm.UsersUserID.Text;
    retrieveAdd.ParamByName('dateExecute').AsDate := now;//StrToDate(formatdatetime('YYYY-MM-DD',now));
    retrieveAdd.ParamByName('cbook').Text         := StaticText2.Caption;
    retrieveAdd.ParamByName('billmonth').Text     := BillMonth;
    retrieveAdd.Execute;
  except
    on E: Exception do MessageDlg('Error....'+#10+#13+E.Message, mtError, [mbOK], 0);
  end;

  try
    unpaidbillsTmp.Close;
    unpaidbillsTmp.ParamByName('cbook').Text      := StaticText2.Caption;
    unpaidbillsTmp.ParamByName('billmonth').Text  := BillMonth;
    unpaidbillsTmp.Execute;
  except
    on E: Exception do MessageDlg('Error....'+#10+#13+E.Message, mtError, [mbOK], 0);
  end;

  Try
   UpdateSQL.SQL.Clear;
   UpdateSQL.SQL.Add('Replace into TempBill');
   UpdateSQL.SQL.Add('      (Code,');
   UpdateSQL.SQL.Add('      Area, ');
   UpdateSQL.SQL.Add('      Book, ');
   UpdateSQL.SQL.Add('      Sequence,');
   UpdateSQL.SQL.Add('      AccountNumber,');
   UpdateSQL.SQL.Add('      Name,');
   UpdateSQL.SQL.Add('      Address,');
   UpdateSQL.SQL.Add('      RateCode,');
   UpdateSQL.SQL.Add('      Serial,');
   UpdateSQL.SQL.Add('      Multiplier,');
   UpdateSQL.SQL.Add('      PreviousReadingDate,');
   UpdateSQL.SQL.Add('      PresentReadingDate,');
   UpdateSQL.SQL.Add('      PresentReadingKWH,');
   UpdateSQL.SQL.Add('      PreviousReadingKWH,');
   UpdateSQL.SQL.Add('      Diff,');
   UpdateSQL.SQL.Add('      Demand,');
   UpdateSQL.SQL.Add('      FlatRateWattage,');
   UpdateSQL.SQL.Add('      FeedBackCode,');
   UpdateSQL.SQL.Add('      CM,');
   UpdateSQL.SQL.Add('      CMMultiplier,');
   UpdateSQL.SQL.Add('      CMPreviousReadingKWH,');
   UpdateSQL.SQL.Add('      CMPresentReadingKWH,');
   UpdateSQL.SQL.Add('      CMKilowattHour,');
   UpdateSQL.SQL.Add('      CMDemand,');
   UpdateSQL.SQL.Add('      KilowattHour,');
   UpdateSQL.SQL.Add('      KilowattUsed,');
   UpdateSQL.SQL.Add('      GenSysCharge,');
   UpdateSQL.SQL.Add('      HostCommCharge,');
   UpdateSQL.SQL.Add('      ForexCharge,');
   UpdateSQL.SQL.Add('      TCDemandCharge,');
   UpdateSQL.SQL.Add('      TCTransSystemCharge,');
   UpdateSQL.SQL.Add('      SystemLossCharge,');
   UpdateSQL.SQL.Add('      DCDemandCharge,');
   UpdateSQL.SQL.Add('      DCDistributionCharge,');
   UpdateSQL.SQL.Add('      SCRetCustCharge,');
   UpdateSQL.SQL.Add('      SCSupplySysCharge,');
   UpdateSQL.SQL.Add('      MCRetailCustCharge,');
   UpdateSQL.SQL.Add('      MCSystemCharge,');
   UpdateSQL.SQL.Add('      UCNPCStrandedDebts,');
   UpdateSQL.SQL.Add('      UCNPCStrandedContCost,');
   UpdateSQL.SQL.Add('      UCDUStrandedContCost,');
   UpdateSQL.SQL.Add('      UCME,');
   UpdateSQL.SQL.Add('      UCEqTaxesAndRoyalties,');
   UpdateSQL.SQL.Add('      UCEC,');
   UpdateSQL.SQL.Add('      UCCrossSubRemoval,');
   UpdateSQL.SQL.Add('      ICCrossSubsidyCharge,');
   UpdateSQL.SQL.Add('      PowerActRateRed,');
   UpdateSQL.SQL.Add('      LifelineDiscSubs,');
   UpdateSQL.SQL.Add('      LoanCondo,');
   UpdateSQL.SQL.Add('      TransformerRental,');
   UpdateSQL.SQL.Add('      OCAmount1,');
   UpdateSQL.SQL.Add('      OCCode1,');
   UpdateSQL.SQL.Add('      OCMo1,');
   UpdateSQL.SQL.Add('      OCTotal1,');
   UpdateSQL.SQL.Add('      OCCode2,');
   UpdateSQL.SQL.Add('      OCAmount2,');
   UpdateSQL.SQL.Add('      OCMo2,');
   UpdateSQL.SQL.Add('      OCTotal2,');
   UpdateSQL.SQL.Add('      OCCode3,');
   UpdateSQL.SQL.Add('      OCAmount3,');
   UpdateSQL.SQL.Add('      OCMo3,');
   UpdateSQL.SQL.Add('      OCTotal3,');
   UpdateSQL.SQL.Add('      TotalBill,');
   UpdateSQL.SQL.Add('      BillNumber,');
   UpdateSQL.SQL.Add('      OEBRNumber,');
   UpdateSQL.SQL.Add('      BillMonth,');
   UpdateSQL.SQL.Add('      BillDate,');
   UpdateSQL.SQL.Add('      StatusCode,');
   UpdateSQL.SQL.Add('      LCCustMo,');
   UpdateSQL.SQL.Add('      PrevYearAdjPowerCost,');
   UpdateSQL.SQL.Add('      SysLossUnderRecov,');
   UpdateSQL.SQL.Add('      VATDisc,');
   UpdateSQL.SQL.Add('      VATDiscAmt,');
   UpdateSQL.SQL.Add('      VATDistDiscAmt,');
   UpdateSQL.SQL.Add('      VATGenCoDiscAmt,');
   UpdateSQL.SQL.Add('      VATTransCoDiscAmt,');
   UpdateSQL.SQL.Add('      VATSystemLossDiscAmt,');
   UpdateSQL.SQL.Add('      VATDist,');
   UpdateSQL.SQL.Add('      VATGenCO,');
   UpdateSQL.SQL.Add('      VATTransCO,');
   UpdateSQL.SQL.Add('      VATSystemLossGenCO,');
   UpdateSQL.SQL.Add('      VATSystemLossTransCO,');
   UpdateSQL.SQL.Add('      VAT,');
   UpdateSQL.SQL.Add('      AdjAmountBalance,');
   UpdateSQL.SQL.Add('      AdjAmountApplied,');
   UpdateSQL.SQL.Add('      ReadTime,');
   UpdateSQL.SQL.Add('      DiffBillPerKwhr,');
   UpdateSQL.SQL.Add('      DiffBillPerKW,');
   UpdateSQL.SQL.Add('      DiffBillPerCust,');
   UpdateSQL.SQL.Add('      MCC,');
   UpdateSQL.SQL.Add('      PKVROebrNumber,');
   UpdateSQL.SQL.Add('      PKVRBillMonth,');
   UpdateSQL.SQL.Add('      PKVRAmount,');
   UpdateSQL.SQL.Add('      TransSysAncRefund,');
   UpdateSQL.SQL.Add('      TransDemAncRefund,');
   UpdateSQL.SQL.Add('      VATTransAncRefund,');
   UpdateSQL.SQL.Add('      SCDisc,');
   UpdateSQL.SQL.Add('      WRateCode,');
   UpdateSQL.SQL.Add('      SCAmt4Disc,');
   UpdateSQL.SQL.Add('      CBook,');
   UpdateSQL.SQL.Add('      RPTax,');
   UpdateSQL.SQL.Add('      RateOrder,');
   UpdateSQL.SQL.Add('      OtherGenRateAdj,');
   UpdateSQL.SQL.Add('      OtherTransCostAdj,');
   UpdateSQL.SQL.Add('      OtherTransDemandCostAdj,');
   UpdateSQL.SQL.Add('      OtherSystemLossCostAdj,');
   UpdateSQL.SQL.Add('      OtherLifelineRateCostAdj,');
   UpdateSQL.SQL.Add('      OtherSeniorCitizenRateAdj,');
   UpdateSQL.SQL.Add('      Fitall,');
   UpdateSQL.SQL.Add('      PARec,');
   UpdateSQL.SQL.Add('      VATparec,');
   UpdateSQL.SQL.Add('      VATmcc,');
   UpdateSQL.SQL.Add('      referenceAtmNo)');
   UpdateSQL.SQL.Add('Select');
   UpdateSQL.SQL.Add('      Code,');
   UpdateSQL.SQL.Add('      Area, ');
   UpdateSQL.SQL.Add('      Book, ');
   UpdateSQL.SQL.Add('      Sequence,');
   UpdateSQL.SQL.Add('      AccountNumber,');
   UpdateSQL.SQL.Add('      Name,');
   UpdateSQL.SQL.Add('      Address,');
   UpdateSQL.SQL.Add('      RateCode,');
   UpdateSQL.SQL.Add('      Serial,');
   UpdateSQL.SQL.Add('      Multiplier,');
   UpdateSQL.SQL.Add('      PreviousReadingDate,');
   UpdateSQL.SQL.Add('      PresentReadingDate,');
   UpdateSQL.SQL.Add('      PresentReadingKWH,');
   UpdateSQL.SQL.Add('      PreviousReadingKWH,');
   UpdateSQL.SQL.Add('      Diff,');
   UpdateSQL.SQL.Add('      Demand,');
   UpdateSQL.SQL.Add('      FlatRateWattage,');
   UpdateSQL.SQL.Add('      FeedBackCode,');
   UpdateSQL.SQL.Add('      CM,');
   UpdateSQL.SQL.Add('      CMMultiplier,');
   UpdateSQL.SQL.Add('      CMPreviousReadingKWH,');
   UpdateSQL.SQL.Add('      CMPresentReadingKWH,');
   UpdateSQL.SQL.Add('      CMKilowattHour,');
   UpdateSQL.SQL.Add('      CMDemand,');
   UpdateSQL.SQL.Add('      KilowattHour,');
   UpdateSQL.SQL.Add('      KilowattUsed,');
   UpdateSQL.SQL.Add('      GenSysCharge,');
   UpdateSQL.SQL.Add('      HostCommCharge,');
   UpdateSQL.SQL.Add('      ForexCharge,');
   UpdateSQL.SQL.Add('      TCDemandCharge,');
   UpdateSQL.SQL.Add('      TCTransSystemCharge,');
   UpdateSQL.SQL.Add('      SystemLossCharge,');
   UpdateSQL.SQL.Add('      DCDemandCharge,');
   UpdateSQL.SQL.Add('      DCDistributionCharge,');
   UpdateSQL.SQL.Add('      SCRetCustCharge,');
   UpdateSQL.SQL.Add('      SCSupplySysCharge,');
   UpdateSQL.SQL.Add('      MCRetailCustCharge,');
   UpdateSQL.SQL.Add('      MCSystemCharge,');
   UpdateSQL.SQL.Add('      UCNPCStrandedDebts,');
   UpdateSQL.SQL.Add('      UCNPCStrandedContCost,');
   UpdateSQL.SQL.Add('      UCDUStrandedContCost,');
   UpdateSQL.SQL.Add('      UCME,');
   UpdateSQL.SQL.Add('      UCEqTaxesAndRoyalties,');
   UpdateSQL.SQL.Add('      UCEC,');
   UpdateSQL.SQL.Add('      UCCrossSubRemoval,');
   UpdateSQL.SQL.Add('      ICCrossSubsidyCharge,');
   UpdateSQL.SQL.Add('      PowerActRateRed,');
   UpdateSQL.SQL.Add('      LifelineDiscSubs,');
   UpdateSQL.SQL.Add('      LoanCondo,');
   UpdateSQL.SQL.Add('      TransformerRental,');
   UpdateSQL.SQL.Add('      OCAmount1,');
   UpdateSQL.SQL.Add('      OCCode1,');
   UpdateSQL.SQL.Add('      OCMo1,');
   UpdateSQL.SQL.Add('      OCTotal1,');
   UpdateSQL.SQL.Add('      OCCode2,');
   UpdateSQL.SQL.Add('      OCAmount2,');
   UpdateSQL.SQL.Add('      OCMo2,');
   UpdateSQL.SQL.Add('      OCTotal2,');
   UpdateSQL.SQL.Add('      OCCode3,');
   UpdateSQL.SQL.Add('      OCAmount3,');
   UpdateSQL.SQL.Add('      OCMo3,');
   UpdateSQL.SQL.Add('      OCTotal3,');
   UpdateSQL.SQL.Add('      TotalBill,');
   UpdateSQL.SQL.Add('      BillNumber,');
   UpdateSQL.SQL.Add('      OEBRNumber,');
   UpdateSQL.SQL.Add('      BillMonth,');
   UpdateSQL.SQL.Add('      BillDate,');
   UpdateSQL.SQL.Add('      StatusCode,');
   UpdateSQL.SQL.Add('      LCCustMo,');
   UpdateSQL.SQL.Add('      PrevYearAdjPowerCost,');
   UpdateSQL.SQL.Add('      SysLossUnderRecov,');
   UpdateSQL.SQL.Add('      VATDisc,');
   UpdateSQL.SQL.Add('      VATDiscAmt,');
   UpdateSQL.SQL.Add('      VATDistDiscAmt,');
   UpdateSQL.SQL.Add('      VATGenCoDiscAmt,');
   UpdateSQL.SQL.Add('      VATTransCoDiscAmt,');
   UpdateSQL.SQL.Add('      VATSystemLossDiscAmt,');
   UpdateSQL.SQL.Add('      VATDist,');
   UpdateSQL.SQL.Add('      VATGenCO,');
   UpdateSQL.SQL.Add('      VATTransCO,');
   UpdateSQL.SQL.Add('      VATSystemLossGenCO,');
   UpdateSQL.SQL.Add('      VATSystemLossTransCO,');
   UpdateSQL.SQL.Add('      VAT,');
   UpdateSQL.SQL.Add('      AdjAmountBalance,');
   UpdateSQL.SQL.Add('      AdjAmountApplied,');
   UpdateSQL.SQL.Add('      ReadTime,');
   UpdateSQL.SQL.Add('      DiffBillPerKwhr,');
   UpdateSQL.SQL.Add('      DiffBillPerKW,');
   UpdateSQL.SQL.Add('      DiffBillPerCust,');
   UpdateSQL.SQL.Add('      MCC,');
   UpdateSQL.SQL.Add('      PKVROebrNumber,');
   UpdateSQL.SQL.Add('      PKVRBillMonth,');
   UpdateSQL.SQL.Add('      PKVRAmount,');
   UpdateSQL.SQL.Add('      TransSysAncRefund,');
   UpdateSQL.SQL.Add('      TransDemAncRefund,');
   UpdateSQL.SQL.Add('      VATTransAncRefund,');
   UpdateSQL.SQL.Add('      SCDisc,');
   UpdateSQL.SQL.Add('      WRateCode,');
   UpdateSQL.SQL.Add('      SCAmt4Disc,');
   UpdateSQL.SQL.Add('      CBook,');
   UpdateSQL.SQL.Add('      RPTax,');
   UpdateSQL.SQL.Add('      RateOrder,');
   UpdateSQL.SQL.Add('      OtherGenRateAdj,');
   UpdateSQL.SQL.Add('      OtherTransCostAdj,');
   UpdateSQL.SQL.Add('      OtherTransDemandCostAdj,');
   UpdateSQL.SQL.Add('      OtherSystemLossCostAdj,');
   UpdateSQL.SQL.Add('      OtherLifelineRateCostAdj,');
   UpdateSQL.SQL.Add('      OtherSeniorCitizenRateAdj,');
   UpdateSQL.SQL.Add('      Fitall,');
   UpdateSQL.SQL.Add('      PARec,');
   UpdateSQL.SQL.Add('      VATparec,');
   UpdateSQL.SQL.Add('      VATmcc,');
   UpdateSQL.SQL.Add('      referenceAtmNo');
   UpdateSQL.SQL.Add('from BillHistory');
   UpdateSQL.SQL.Add('where cbook = '+QuotedStr(StaticText2.Caption));
   UpdateSQL.SQL.Add('and BillMonth = '+QuotedStr(BillMonth));
   UpdateSQL.SQL.Add('and exists (Select * from unpaidbillstmp u ');
   UpdateSQL.SQL.Add('where u.code = billhistory.code and u.billmonth = billhistory.billmonth)');
   UpdateSQL.SQL.Add('Order by accountnumber');
   UpdateSQL.execute;
  except
    on E: Exception do MessageDlg('Error....'+#10+#13+E.Message, mtError, [mbOK], 0);
  end;

  If UpdateSQL.RowsAffected = 0 then
    begin
     MessageDlg('There are no recods to restore from the Billing History Archieve.....', mtInformation, [mbOK], 0);
     exit;
    end;

  Memo1.Lines.Clear;
  Memo1.Lines.Add('Restored Billhistory : '+IntToStr(UpdateSQL.RowsAffected));
  Memo1.Lines.Add('');

  Try
  UpdateSQL.SQL.Clear;
  UpdateSQL.SQL.Add('Delete from arledger using arledger, billhistory ');
  UpdateSQL.SQL.Add('where billhistory.cbook = '+QuotedStr(StaticText2.Caption));
  UpdateSQL.SQL.Add('and arledger.Code = billhistory.Code');
  UpdateSQL.SQL.Add('and arledger.document = billhistory.oebrnumber');
  UpdateSQL.SQL.Add('and arledger.billmonth = '+QuotedStr(BillMonth));
  UpdateSQL.SQL.Add('and exists (Select * from unpaidbillstmp u ');
  UpdateSQL.SQL.Add('where u.code = billhistory.code and u.billmonth = billhistory.billmonth)');
  UpdateSQL.Execute;
  except
    on E: Exception do MessageDlg('Error....'+#10+#13+'E.Message', mtError, [mbOK], 0);
  end;

  Memo1.Lines.Add('Deleted from A/R Ledger : '+IntToStr(UpdateSQL.RowsAffected));
  Memo1.Lines.Add('');

  Try
  UpdateSQL.SQL.Clear;
  UpdateSQL.SQL.Add('Delete from unpaidbills using unpaidbills, billhistory ');
  UpdateSQL.SQL.Add('where billhistory.CBook = '+QuotedStr(StaticText2.Caption));
  UpdateSQL.SQL.Add('and unpaidbills.Code = billhistory.Code');
  UpdateSQL.SQL.Add('and unpaidbills.document = billhistory.oebrnumber');
  UpdateSQL.SQL.Add('and unpaidbills.billmonth = '+QuotedStr(BillMonth));
  UpdateSQL.Execute;
  except
    on E: Exception do MessageDlg('Error....'+#10+#13+'E.Message', mtError, [mbOK], 0);
  end;

  Memo1.Lines.Add('Deleted from Unpaid Bills : '+IntToStr(UpdateSQL.RowsAffected));
  Memo1.Lines.Add('');

  
  Try
  UpdateSQL.SQL.Clear;
  UpdateSQL.SQL.Add('Delete from billadjledger using billadjledger, billhistory ');
  UpdateSQL.SQL.Add('where billhistory.CBook = '+QuotedStr(StaticText2.Caption));
  UpdateSQL.SQL.Add('and billadjledger.Code = billhistory.Code');
  UpdateSQL.SQL.Add('and billadjledger.billnumber = billhistory.oebrnumber');
  UpdateSQL.SQL.Add('and billadjledger.billmonth = '+QuotedStr(BillMonth));
  UpdateSQL.SQL.Add('and exists (Select * from unpaidbillstmp u ');
  UpdateSQL.SQL.Add('where u.code = billhistory.code and u.billmonth = billhistory.billmonth)');
  UpdateSQL.Execute;
   except
     on E: Exception do
       begin
         MessageDlg(E.Message, mtError, [mbOK], 0);
         exit;
       end;
   end;

  Memo1.Lines.Add('Deleted from PANTAWID Ledger : '+IntToStr(UpdateSQL.RowsAffected));
  Memo1.Lines.Add('');


  Try
   UpdateSQL.SQL.Clear;
   UpdateSQL.SQL.Add('delete from billhistory');
   UpdateSQL.SQL.Add('where CBook = '+QuotedStr(StaticText2.Caption));
   UpdateSQL.SQL.Add('and BillMonth = '+QuotedStr(BillMonth));
   UpdateSQL.SQL.Add('and exists (Select * from unpaidbillstmp u ');
   UpdateSQL.SQL.Add('where u.code = billhistory.code and u.billmonth = billhistory.billmonth)');
   UpdateSQL.execute;
  except
    on E: Exception do MessageDlg('Error....'+#10+#13+'E.Message', mtError, [mbOK], 0);
  end;

  Memo1.Lines.Add('Deleted from Billing Archive : '+IntToStr(UpdateSQL.RowsAffected));
  Memo1.Lines.Add('');

end;

BillingData.Bill.Refresh;
MessageDlg('Done...', mtInformation, [mbOK], 0);

end;

procedure TReadingComputeForm.NxButton1Click(Sender: TObject);
begin
  NxHeaderPanel4.Visible := False;
end;

procedure TReadingComputeForm.NxButton2Click(Sender: TObject);
begin
 If not assigned(SpotBillingForm) then
 SpotBillingForm  := TSpotBillingForm.Create(Application);
 SpotBillingForm.Show;
end;

procedure TReadingComputeForm.serialRxChar(Sender: TObject; Count: Integer);
var
  ansiStr: AnsiString;

begin
   Inc(UpCount);

   //==Temporarily remove this statement========
   //Serial.ReadStr(UploadStr[UpCount],Count);
   //===========================================
   ansiStr := AnsiString(UploadStr[UpCount]);
   Serial.ReadStr(ansiStr,Count);

   Label11.Caption := 'Records Read '+IntToStr(UpCount);
   NxMemo1.Lines.Add(UploadStr[UpCount]);
   Application.ProcessMessages;
   Application.ProcessMessages;
   Application.ProcessMessages;

   If copy(UploadStr[UpCount],1,5) = '.....' then
     begin
      // serial.WriteStr('');
      // serial.WriteStr('');
      // serial.Close;
      PopulateTempBill;
      exit;
     end;

end;

procedure TReadingComputeForm.PopulateTempBill;
Var
TotalConsumer   : Word       ;
Check           : Integer    ;
I,J             : Integer    ;
UpAccountNumber : String[10] ;
UpReading       : Real       ;
UpDemand        : Real       ;
UpReadingStr    : String[8]  ;
UpDemandStr     : String[6]  ;
UpFeedBack      : String[30] ;
UpPrintStat     : String[1]  ;
UpReadTime      : String[15] ;
CMKW            : Currency   ;
iBillMonth      : Integer    ;
DaysFactor      : Real       ;
Days            : Integer    ;
LLine           : Currency   ;
FFCode          : String[2]  ;
FFStr           : String     ;
FFRem           : String     ;
UploadFileName  : String[50] ;
VatableAmount   : Currency   ;
VAT12, VAT10    : Currency   ;
PKKVAmt         : Currency   ;
VATparecComp    : Currency   ;
DBKwhr          : Real       ;
DBKW            : Real       ;
WithDB          : Boolean    ;
DiffBillVAT     : Currency   ;
SCLD            : Currency   ;
ZeroVAT         : TMyQuery   ;
DiffKwhr2       : Double     ;

GAreaRTaxTmp    : String     ;
ComputeAverage  : Double     ;
referenceAtm    : String     ;
mccComp         : Currency   ;

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

label compute;

begin
    MessageDlg('Download done..... '+IntToStr(Upcount)+' Downloaded'+#10+#13+
               'Will now process', mtInformation, [mbOK], 0);

   Gauge5.Progress := 0;
   Gauge5.MinValue := 0;
   Gauge5.MaxValue := UpCount;
   Application.ProcessMessages;
   Application.ProcessMessages;
   Application.ProcessMessages;

   For J := 1 to UpCount do
   begin
   try
   Gauge5.AddProgress(1);
   Application.ProcessMessages;
   Application.ProcessMessages;
   Application.ProcessMessages;

         If TRIM(UploadStr[J]) = 'NEW CONN' then
           begin
             NewConnSW := True;
             continue;
           end;

         If NewConnSW = true then
           begin
             if trim(Copy(UploadStr[J],31,15)) = '' then continue;
             NewConn.Append;
             NewConnName.Text           := Copy(UploadStr[J],1,30);
             NewConnSerial.Text         := Copy(UploadStr[J],31,15);
             NewConnPresentReading.Text := trim(Copy(UploadStr[J],46,6));
             NewConnRemarks.Text        := Copy(UploadStr[J],52,30);
             NewConnReadTime.Text       := Copy(UploadStr[J],82,10);
             NewConnArea.Text           := '0'+Copy(UploadStr[J],92,2);
             NewConnBook.Text           := '0'+Copy(UploadStr[J],94,2);
             NewConn.Post;
             continue;
           end;

         If Trim(UploadStr[J]) = '' then continue;

         Application.ProcessMessages;

         UpAccountNumber := Trim(Copy(UploadStr[J],1,6));
         UpReadingStr    := Trim(Copy(UploadStr[J],25,8));
         UpDemandStr     := Trim(Copy(UploadStr[J],33,7));
         UpPrintStat     := Trim(Copy(UploadStr[J],40,1));
         UpFeedBack      := Trim(Copy(UploadStr[J],41,12));

         FFCode          := Trim(Copy(UploadStr[J],53,2));
         FFRem           := Trim(Copy(UploadStr[J],55,15));
         UpReadTime      := Trim(Copy(UploadStr[J],70,10));
         referenceAtm    := Trim(Copy(UploadStr[J],89,16));

         FFStr := FFRem;

          If trim(UpReadingStr) = '' then UpReadingStr := '000000';

         If trim(UpReadingStr) <> '' then
          begin

            MasterQ.Close;
            MasterQ.SQL.Clear;
            MasterQ.SQL.Add('Select * from Master');
            MasterQ.SQL.Add('where code = :code');
            MasterQ.ParamByName('code').AsInteger := StrToInt(UpAccountNumber);
            MasterQ.Open;

            GAreaRTaxTmp := MasterQArea.Text;

            If MasterQ.IsEmpty then
              begin
                MessageDlg(UpAccountNumber, mtWarning, [mbOK], 0);
                continue;
              end;

             Val(UpReadingStr,UpReading,Check);


             With BillingData do
             begin

                  CheckDuplicate.Close;
                  CheckDuplicate.ParamByName('code').Text      := MasterQCode.Text;
                  CheckDuplicate.ParamByName('billmonth').Text := BillMonth;
                  CheckDuplicate.Open;

                  If not CheckDuplicate.IsEmpty then
                    begin
                      if (MessageDlg('That account has already been billed for that month.'+#13+#10+
                                     'Continue anyway?', mtWarning, [mbYes, mbNo], 0) in [mrNo, mrNone]) then
                        begin
                         CheckDuplicate.Close;
                         continue;
                        end;
                    end;
                  CheckDuplicate.Close;

                  If Length(Trim(FFStr)) > 0 then
                   begin
                    UpdateBCFF.ParamByName('Code').Text      := MasterQCode.Text;
                    UpdateBCFF.ParamByName('FFDate').AsDate  := StrToDate(PresentReadingDate);
                    UpdateBCFF.ParamByName('BillMonth').Text := BillMonth;
                    UpdateBCFF.ParamByName('Remarks').Text   := FFStr+' '+UpFeedBack;
                    UpdateBCFF.Execute;
                   end;

                  Bill.Append;
                  BillCode.Text                        := MasterQCode.Text;
                  BillArea.Text                        := MasterQArea.Text;
                  BillBook.Text                        := MasterQBook.Text;
                  BillSequence.Text                    := MasterQSequence.Text;
                  BillAccountNumber.Text               := MasterQAccountNumber.Text;
                  BillName.Text                        := MasterQName.Text;
                  BillAddress.Text                     := MasterQAddress.Text;
                  BillRateCode.Text                    := MasterQRateCode.Text;
                  BillWRateCode.Text                   := MasterQWRateCode.Text;
                  BillMultiplier.Text                  := MasterQMultiplier.Text;
                  BillSerial.Text                      := MasterQSerial.Text;
                  BillVATDisc.AsCurrency               := MasterQVATDisc.AsCurrency;
                  BillPreviousReadingDate.Text         := PreviousReadingDate;
                  BillPresentReadingDate.Text          := PresentReadingDate;
                  BillPresentReadingKWH.Text           := UpReadingStr;
                  BillPreviousReadingKWH.Text          := MasterQPresentReadingKWH.Text;
                  BillDiff.Text                        := '0.00';

                  //if IsNumeric(trim(UpDemandStr)) then
                  if StrToFloat(UpDemandStr)>0 then
                      BillDemand.AsCurrency            := StrToCurr(Trim(UpDemandStr))
                   else
                      BillDemand.AsCurrency            := 0.0;//MasterQDemand.Text;

                  //Bill.FieldByName('prevKilowatthour').AsFloat := MasterKilowattHour.AsFloat;
                  if StrToFloat(UpDemandStr)>0 then
                    BillKilowattUsed.AsCurrency        := StrToCurr(Trim(UpDemandStr))
                  else
                    BillKilowattUsed.AsCurrency        := 0.0;

                  BillFlatRateWattage.Text                := MasterQFlatRateWattage.Text;
                  BillFeedBackCode.Text                   := '';
                  BillCM.Text                             := MasterQCM.Text;
                  BillCMMultiplier.Text                   := MasterQCMMultiplier.Text;
                  BillCMPreviousReadingKWH.Text           := MasterQCMPreviousReadingKWH.Text;
                  BillCMPresentReadingKWH.Text            := MasterQCMPresentReadingKWH.Text;
                  BillCMKilowattHour.Text                 := MasterQCMKilowattHour.Text;
                  BillCMDemand.Text                       := MasterQCMDemand.Text;
                  BillTransformerRental.Text              := MasterQTransformerRental.Text;
                  BillStatusCode.Text                     := UpPrintStat;
                  BillBillMonth.Text                      := BillMonth;
                  BillReadTime.Text                       := UpReadTime;
                  BillCBook.Text                          := MasterQCBook.Text;
                  BillreferenceAtmNo.Text                 := referenceAtm;
                  BillisGram.AsBoolean                    := MasterQisGram.AsBoolean;


                  checkcollection.Close;
                  checkcollection.ParamByName('code').Text      := MasterQCode.Text;
                  checkcollection.ParamByName('billmonth').Text := BillMonth;
                  checkcollection.Open;

                  if not checkcollection.IsEmpty then
                    begin
                      BillPresentReadingKWH.AsFloat := MasterQPresentReadingKWH.AsFloat + checkcollectionkilowatthour.AsFloat;
                      BillKilowattHour.AsFloat      := checkcollectionkilowatthour.AsFloat;
                      BillOEBRNumber.Text           := checkcollectionreceiptnumber.Text;
                      PresRead.ReadOnly             := True;
                    end else PresRead.ReadOnly      := False;

                  checkcollection.Close;

                  If (MasterQOCMo1.AsInteger*MasterQOCAmount1.AsCurrency) <> MasterQOCTotal1.AsCurrency then
                  begin
                   BillOCCode1.Text                    := MasterQOCCode1.Text;
                   BillOCAmount1.AsCurrency            := MasterQOCAmount1.AsCurrency;
                  end;

                  If (MasterQOCMo2.AsInteger*MasterQOCAmount2.AsCurrency) <> MasterQOCTotal2.AsCurrency then
                  begin
                   BillOCCode2.Text                    := MasterQOCCode2.Text;
                   BillOCAmount2.AsCurrency            := MasterQOCAmount2.AsCurrency;
                  end;

                  If (MasterQOCMo3.AsInteger*MasterQOCAmount3.AsCurrency) <> MasterQOCTotal3.AsCurrency then
                  begin
                   BillOCCode3.Text                    := MasterQOCCode3.Text;
                   BillOCAmount3.AsCurrency            := MasterQOCAmount3.AsCurrency;
                  end;

                  if (MasterQRateCode.Text = 'S') then
                  begin
                    BillKilowattHour.AsCurrency := MasterQKilowattHour.AsCurrency;
                  end;

                  If Copy(UPFeedBack,1,3) = 'AVE' then
                  BillKilowattHour.AsCurrency := MasterQKilowattHour.AsCurrency;

                  If Copy(UPFeedBack,1,5) = 'RESET' then
                    begin
                      If Length(MasterQPresentReadingKWH.Text) = 3 then BillFeedBackCode.Text := '4D';
                      If Length(MasterQPresentReadingKWH.Text) = 4 then BillFeedBackCode.Text := '5D';
                      If Length(MasterQPresentReadingKWH.Text) = 5 then BillFeedBackCode.Text := '6D';
                    end;

                   With ReadingComputeForm do
                     begin

                       MRate.First;
                         While not MRate.Eof do
                           begin
                             If ((MRateRateCode.Text = BillRateCode.Text) and (MRateWRSw.Text = '0')) or
                                ((MRateWRateCode.Text = BillWRateCode.Text) and (MRateWRSw.Text = '1')) then Goto Compute;
                            MRate.Next;
                           end;

                           ShowMessage('Rate Record not found ....');
                           continue;

                           Compute:
                           If (Bill.State = dsEdit) or (Bill.State = dsInsert) then
                            try
                             Bill.Post;
                            except
                             Bill.Cancel;
                             continue;
                            end;

                           Bill.Edit;

                           If BillMultiplier.AsCurrency = 0 then BillMultiplier.AsCurrency := 1;
                           If BillCMMultiplier.AsCurrency = 0 then BillCMMultiplier.AsCurrency := 1;
                           If BillFeedBackCode.Text <> 'A' then
                           begin

                             if (BillFeedBackCode.Text = '4D') then
                             begin
                                 BillDiff.AsCurrency := RoundOff(1000 - BillPreviousReadingKWH.AsCurrency) +
                                 BillPresentReadingKWH.AsCurrency;
                             end

                             else if (BillFeedBackCode.Text = '5D') then
                             begin
                               BillDiff.AsCurrency := RoundOff(10000 - BillPreviousReadingKWH.AsCurrency) +
                                 BillPresentReadingKWH.AsCurrency;
                             end

                             else if (BillFeedBackCode.Text = '6D') then
                             begin
                               BillDiff.AsCurrency := RoundOff(100000 - BillPreviousReadingKWH.AsCurrency) +
                                 BillPresentReadingKWH.AsCurrency;
                             end

                             else
                             begin
                               BillDiff.AsCurrency := RoundOff(BillPresentReadingKWH.AsCurrency - BillPreviousReadingKWH.AsCurrency);
                             end;

                             BillKilowattHour.AsCurrency := RoundOff(BillDiff.AsCurrency * BillMultiplier.AsCurrency);

                             BillCMKilowatthour.AsCurrency := 0;

                             If BillCM.Text = '1' then
                               begin
                                 BillCMKilowattHour.AsCurrency := RoundOff(BillCMPresentReadingKWH.AsFloat -
                                                                   BillCMPreviousReadingKWH.AsFloat) *
                                                                   BillCMMultiplier.AsInteger;
                                 If BillCMKilowatthour.AsCurrency < 0 then BillCMKilowatthour.AsCurrency := 0;
                               end
                               else
                                 BillCMKilowatthour.AsCurrency := 0;

                             BillDiff.AsCurrency := RoundOff(BillPresentReadingKWH.AsCurrency - BillPreviousReadingKWH.AsCurrency);

                             BillKilowattHour.AsCurrency := (BillDiff.AsCurrency * BillMultiplier.AsCurrency) +
                                                             BillCMKilowatthour.AsCurrency;
                           end;

                             CMKW := 0;
                             // If BillCM.Text = '1' then
                             //    If BillCMDemand.AsCurrency > 0 then
                             //    CMKW := BillCMDemand.AsCurrency;   change meter demand remove at the instance of mam alma contrivida 03-06-2012

                           KWHR := BillKilowattHour.AsCurrency;

                           //Remove averaging of 15 KWHr reading============
                           //===============================================
                           {If BillWRateCode.Text = 'R' then
                             begin
                               If (BillKilowattHour.AsCurrency >= 0) and (BillKilowattHour.AsCurrency <= 15) then
                               KWHR := 15;
                             end;   }

                           //==============================================

                          WithDB := False;
                          DBKwhr := 0;
                          DBKW   := 0;
                          If MRateDiffBillApply.AsInteger = 1 then
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

                           BillGenSysCharge.AsCurrency              := RoundOff(KWHR * MRateGenSysRate.AsCurrency);
                           BillOtherGenRateAdj.AsCurrency           := RoundOff(KWHR * MRateOtherGenRateAdj.AsCurrency);
                           BillHostCommCharge.AsCurrency            := RoundOff(KWHR * MRateHostCommRate.AsCurrency);
                           BillForexCharge.AsCurrency               := RoundOff(KWHR * MRateForexRate.AsCurrency);
                           BillTCDemandCharge.AsCurrency            := RoundOff((BillKilowattUsed.AsCurrency+CMKW) * MRateTCDemandRate.AsCurrency);
                           BillOtherTransDemandCostAdj.AsCurrency   := RoundOff((BillKilowattUsed.AsCurrency+CMKW) * MRateOtherTransDemandCostAdj.AsCurrency);
                           BillTCTransSystemCharge.AsCurrency       := RoundOff(KWHR * MRateTCSystemRate.AsCurrency);
                           BillOtherTransCostAdj.AsCurrency         := RoundOff(KWHR * MRateOtherTransCostAdj.AsCurrency);
                           BillSystemLossCharge.AsCurrency          := RoundOff(KWHR * MRateSystemLossRate.AsCurrency);
                           BillOtherSystemLossCostAdj.AsCurrency    := RoundOff(KWHR * MRateOtherSystemLossCostAdj.AsCurrency);
                           BillDCDemandCharge.AsCurrency            := RoundOff(BillKilowattUsed.AsCurrency+CMKW) * MRateDCDemandRate.AsCurrency;

                           BillDCDistributionCharge.AsCurrency      := RoundOff(KWHR * MRateDCSystemRate.AsCurrency);
                           BillSCRetCustCharge.AsCurrency           := RoundOff(MRateSCRetailCustRate.AsCurrency);
                           BillSCSupplySysCharge.AsCurrency         := RoundOff(KWHR * MRateSCSupplySysRate.AsCurrency);
                           BillMCRetailCustCharge.AsCurrency        := RoundOff(MRateMCRetailCustRate.AsCurrency);
                           BillMCSystemCharge.AsCurrency            := RoundOff(KWHR * MRateMCSysRate.AsCurrency);
                           mccComp                                  := RoundOff(KWHR * MRateMCC.AsCurrency);

                           BillMCC.AsCurrency                       := mccComp;

                           if BillisGram.AsBoolean  then
                              Billgram.AsCurrency                   := RoundOff(KWHR * MRateGram.AsCurrency)
                            else
                              Billgram.AsCurrency                   := 0;

                            RpTaxQuery.Close;
                            RpTaxQuery.ParamByName('BillMonth').Text :=  MRateMBillMonth.Text;
                            RpTaxQuery.ParamByName('area').Text      :=  BillArea.Text;
                            RpTaxQuery.Open;

                            BillRPTax.AsCurrency                    := 0;
                            BillRateOrder.text                      := RpTaxQueryRateOrder.Text;

                            if not RpTaxQuery.IsEmpty then
                            begin
                              BillRPTax.AsCurrency                  := RoundOff(KWHR * RpTaxQueryRateAmnt.AsCurrency);
                            end;

                            RpTaxQuery.Close;


                           If WithDB then
                             begin
                               BillDiffBillPerKwhr.AsCurrency       := RoundOff(DBKwhr * MRateDiffBillPerKwhr.AsCurrency) / 10;
                               BillDiffBillPerKW.AsCurrency         := RoundOff(DBKW * MRateDIffBillPerKW.AsCurrency) / 10;
                               BillDiffBillPerCust.AsCurrency       := RoundOff(MRateDiffBillPerCust.AsCurrency) / 10;
                             end;

                           BillUCNPCStrandedDebts.AsCurrency        := RoundOff(KWHR * MRateUCNPCStrandedDebtsRate.AsCurrency);
                           BillUCNPCStrandedContCost.AsCurrency     := RoundOff(KWHR * MRateUCNPCStrandedContCostRate.AsCurrency);
                           BillUCDUStrandedContCost.AsCurrency      := RoundOff(KWHR * MRateUCDUStrandedContCostRate.AsCurrency);
                           BillUCME.AsCurrency                      := RoundOff(KWHR * MRateUCMERate.AsCurrency);
                           BillUCEqTaxesAndRoyalties.AsCurrency     := RoundOff(KWHR * MRateUCEqTaxesAndRoyaltiesRate.AsCurrency);
                           BillUCEC.AsCurrency                      := RoundOff(KWHR * MRateUCECRate.AsCurrency);
                           BillUCCrossSubRemoval.AsCurrency         := RoundOff(KWHR * MRateUCCrossSubsidyRemovalRate.AsCurrency);
                           BillICCrossSubsidyCharge.AsCurrency      := RoundOff(KWHR * MRateICCrossSubsidyRate.AsCurrency);
                           BillPowerActRateRed.AsCurrency           := RoundOff(KWHR * MRatePARARate.AsCurrency);
                           BillLifelineDiscSubs.AsCurrency          := RoundOff(KWHR * MRateLifelineSubsidyRate.AsCurrency);
                           BillOtherLifelineRateCostAdj.AsCurrency  := RoundOff(KWHR * MRateOtherLifelineRateCostAdj.AsCurrency);
                           BillSCDisc.AsCurrency                    := RoundOff(KWHR * MRateSCDiscSubs.AsCurrency);
                           BillOtherSeniorCitizenRateAdj.AsCurrency := RoundOff(KWHR * MRateOtherSeniorCitizenRateAdj.AsCurrency);
                           BillLoanCondo.AsCurrency                 := RoundOff(KWHR * MRateLoanCondo.AsCurrency);

                           //====this statement not included for rate computation=============
                           //BillFlatRateWattage.AsCurrency           := RoundOff(KWHR * MRateGram.AsCurrency);
                           //=================================================================

                           BillLCCustMo.AsCurrency                  := RoundOff(MRateLCCustMo.AsCurrency);
                           BillPrevYearAdjPowerCost.AsCurrency      := RoundOff(KWHR * MRatePrevYearAdjPowerCost.AsCurrency);
                           BillSysLossUnderRecov.AsCurrency         := RoundOff(KWHR * MRateSysLossUnderRecov.AsCurrency);

                           BillTransSysAncRefund.AsCurrency         := RoundOff(KWHR * MRateTransSysAncRefund.AsCurrency);
                           BillTransDemAncRefund.AsCurrency         := RoundOff((BillKilowattUsed.AsCurrency+CMKW) * MRateTransDemAncRefund.AsCurrency);
                           BillVATTransAncRefund.AsCurrency         := RoundOff(KWHR * MRateVATTransAncRefund.AsCurrency);
                           BillFitAll.AsCurrency                    := RoundOff(KWHR * MRateFitAllrate.AsCurrency);
                           BillPARec.AsCurrency                     := RoundOff(KWHR * MRatePARec.AsCurrency);
                           VATGenCo                                 := RoundOff(KWHR * MRateVATGenco.AsFloat);
                           VATTransCo                               := RoundOff(KWHR * MRateVATTransco.AsFloat);
                           VATSystemLoss                            := RoundOff(KWHR * MRateVATSystemLoss.AsFloat);

                           TotalPower := Roundoff(BillGenSysCharge.AsCurrency +
                                         BillHostCommCharge.AsCurrency +
                                         BillForexCharge.AsCurrency +
                                         BillTCDemandCharge.AsCurrency +
                                         BillTCTransSystemCharge.AsCurrency +
                                         BillSystemLossCharge.AsCurrency +
                                         BillDCDemandCharge.AsCurrency +
                                         BillDCDistributionCharge.AsCurrency +
                                         BillSCSupplySysCharge.AsCurrency +
                                         BillMCSystemCharge.AsCurrency+
                                         BillMCRetailCustCharge.AsCurrency+
                                         BillTransSysAncRefund.AsCurrency+
                                         BillTransDemAncRefund.AsCurrency);

                              if True then

                              SCLD := 1;
                              If (BillWRateCode.Text = 'R') or
                                 (BillWRateCode.Text = 'X') then
                               begin
                                 If KWHR <= 15                    then
                                   begin
                                     BillLifelineDiscSubs.AsCurrency := roundoff(TotalPower * -0.50);
                                     BillOtherLifelineRateCostAdj.AsCurrency  := 0.0;
                                     SCLD := 0.50;
                                   end;

                                 If (KWHR >  15) and (KWHR <= 16) then
                                   begin
                                     BillLifelineDiscSubs.AsCurrency := roundoff(TotalPower * -0.40);
                                     BillOtherLifelineRateCostAdj.AsCurrency := 0.0;
                                     SCLD := 0.60;
                                   end;

                                 If (KWHR >  16) and (KWHR <= 17) then
                                   begin
                                     BillLifelineDiscSubs.AsCurrency := roundoff(TotalPower * -0.30);
                                     BillOtherLifelineRateCostAdj.AsCurrency := 0.0;
                                     SCLD := 0.70;
                                   end;

                                 If (KWHR >  17) and (KWHR <= 18) then
                                   begin
                                     BillLifelineDiscSubs.AsCurrency := roundoff(TotalPower * -0.20);
                                     BillOtherLifelineRateCostAdj.AsCurrency := 0.0;
                                     SCLD := 0.80;
                                   end;

                                 If (KWHR >  18) and (KWHR <= 19) then
                                   begin
                                     BillLifelineDiscSubs.AsCurrency := roundoff(TotalPower * -0.10);
                                      BillOtherLifelineRateCostAdj.AsCurrency := 0.0;
                                     SCLD := 0.90;
                                   end;

                                 If (KWHR >  19) and (KWHR <= 20) then
                                   begin
                                     BillLifelineDiscSubs.AsCurrency := roundoff(TotalPower * -0.05);
                                     BillOtherLifelineRateCostAdj.AsCurrency := 0.0;
                                     SCLD := 0.95
                                   end;
                               end;

                             If BillLifelineDiscSubs.AsCurrency < 0 then
                             begin
                                BillSCDisc.AsCurrency := 0;
                                BillOtherSeniorCitizenRateAdj.AsCurrency := 0.0;
                             end;

                             If (MRateSCDiscApply.Text = '1') and (BillKilowattHour.AsFloat <= MRateSCDiscKWHR.AsFloat) then
                              begin

                                SCRead.ParamByName('scode').Text := BillCode.Text;
                                SCRead.ParamByName('presentreadingdate').AsDate := BillPresentReadingDate.AsDateTime;
                                SCRead.Open;

                                If not SCRead.IsEmpty then
                                  begin
                                    BillSCAmt4Disc.AsCurrency := (BillGenSysCharge.AsCurrency +
                                                                  BillHostCommCharge.AsCurrency +
                                                                  BillForexCharge.AsCurrency +
                                                                  BillTCDemandCharge.AsCurrency +
                                                                  BillTCTransSystemCharge.AsCurrency +
                                                                  BillSystemLossCharge.AsCurrency +
                                                                  BillDCDemandCharge.AsCurrency +
                                                                  BillDCDistributionCharge.AsCurrency +
                                                                  BillSCRetCustCharge.AsCurrency +
                                                                  BillSCSupplySysCharge.AsCurrency +
                                                                  BillMCRetailCustCharge.AsCurrency +
                                                                  BillMCSystemCharge.AsCurrency +
                                                                  BillLoanCondo.AsCurrency) * SCLD;

                                    BillSCDisc.AsCurrency     := (BillSCAmt4Disc.AsCurrency * (MRateSCDiscPercent.AsCurrency/100)) * -1;
                                    BillOtherSeniorCitizenRateAdj.AsCurrency := 0.0;
                                  end;

                               SCRead.Close;
                              end;


                              DiffBillVAT             := roundoff(BillDiffBillPerKwhr.AsCurrency +
                                                         BillDiffBillPerKW.AsCurrency +
                                                         BillDiffBillPerCust.AsCurrency) * (MRateVAT.AsCurrency / 100);

                              VATparecComp            := 0;
                              VATparecComp            := BillPARec.AsCurrency * ( MRateVAT.AsCurrency / 100);
                              BillVATparec.AsCurrency := VATparecComp;
                              BillVATmcc.AsCurrency   := RoundOff(mccComp * (MRateVAT.AsCurrency / 100));

                              BillVAT.AsCurrency :=  roundoff((( BillForexCharge.AsCurrency+
                                                         BillDCDemandCharge.AsCurrency+
                                                         BillDCDistributionCharge.AsCurrency+
                                                         BillSCRetCustCharge.AsCurrency+
                                                         BillSCSupplySysCharge.AsCurrency+
                                                         BillMCRetailCustCharge.AsCurrency+
                                                         BillMCSystemCharge.AsCurrency+
                                                         BillICCrossSubsidyCharge.AsCurrency+
                                                         BillLifelineDiscSubs.AsCurrency+
                                                         BillSCDisc.AsCurrency+
                                                         BillOtherLifelineRateCostAdj.AsCurrency+
                                                         BillOtherSeniorCitizenRateAdj.AsCurrency+
                                                         BillLoanCondo.AsCurrency+
                                                         BillLCCustMo.AsCurrency+
                                                         mccComp) *
                                                         MRateVAT.AsCurrency / 100)  ) +
                                                         VATGenCO +
                                                         VATTransCO +
                                                         VATSystemLoss +
                                                         DiffBillVAT +
                                                         VATparecComp;

                              BillVATGenCO.AsCurrency           := VATGenCO;
                              BillVATTransCO.AsCurrency         := VATTransCo;
                              BillVATSystemLossGenCO.AsCurrency := VATSystemLoss;

                              BillVATDist.AsCurrency            := BillVAT.AsCurrency - (VATGenCO+
                                                                                         VATTransCo+
                                                                                         VATSystemLoss);
                            //Temporary remove the vat discount=========================
                            //==========================================================
                           {If BillVATDisc.AsFloat > 0 then
                           begin
                             BillVATDistDiscAmt.AsFloat          := RoundOff(BillVATDist.AsFloat * (BillVATDisc.AsFloat / 100) * -1);
                             BillVATGenCoDiscAmt.AsFloat         := 0;
                             BillVATTransCoDiscAmt.AsFloat       := 0;
                             BillVATSystemLossDiscAmt.AsFloat    := 0;

                             BillVATDiscAmt.AsFloat              := BillVATDistDiscAmt.AsFloat+
                                                                    BillVATGenCoDiscAmt.AsFloat+
                                                                    BillVATTransCoDiscAmt.AsFloat+
                                                                    BillVATSystemLossDiscAmt.AsFloat;
                           end;  }
                            BillVATDiscAmt.AsFloat   := 0;
                            ZeroVAT            := TMyQuery.Create(Self);
                            ZeroVAT.Connection := BillingData.MyConnection1;
                            ZeroVAT.SQL.Clear;

                            ZeroVAT.SQL.Add('Select accountnumber from ZeroVat where code = :code and dateentered <= :dateentered');
                            ZeroVAT.ParamByName('Code').Text        := BillCode.Text;
                            ZeroVAT.ParamByName('DateEntered').AsDate := BillPresentReadingDate.AsDateTime;
                            ZeroVAT.Open;

                            if not ZeroVAT.IsEmpty then
                            begin

                              BillVATDistDiscAmt.AsFloat          := BillVATDist.AsFloat * -1;
                              BillVATGenCoDiscAmt.AsFloat         := BillVATGenCO.AsFloat * -1;
                              BillVATTransCoDiscAmt.AsFloat       := BillVATTransCO.AsFloat * -1;
                              BillVATSystemLossDiscAmt.AsFloat    := BillVATSystemLossGenCO.AsFloat * -1;

                              BillVATDiscAmt.AsFloat              := BillVATDistDiscAmt.AsFloat+
                                                                     BillVATGenCoDiscAmt.AsFloat+
                                                                     BillVATTransCoDiscAmt.AsFloat+
                                                                     BillVATSystemLossDiscAmt.AsFloat;

                            end;

                            ZeroVAT.Close;
                            FreeAndNil(ZeroVAT);

                            //===========================================================
                            //===========================================================

                          PKKVAmt                  := 0;

                          If MRatePantawidApply.AsInteger = 1 then
                          begin
                            PKVRIndex.ParamByName('code').Text   := BillCode.Text;
                            PKVRIndex.ParamByName('AN').Text     := BillAccountNumber.Text;
                            PKVRIndex.Open;

                            If PKVRIndex.IsEmpty then
                              begin
                                GetPKV.ParamByName('code').Text      := BillCode.Text;
                                GetPKV.ParamByName('area').Text      := BillArea.Text;
                                GetPKV.ParamByName('book').Text      := BillBook.Text;
                                GetPKV.Open;

                                If GetPKV.IsEmpty then
                                  PKKVAmt := 0 else
                                  PKKVAmt := GetPKVdebit.AsCurrency - GetPKVcredit.AsCurrency;
                                GetPKV.Close;
                              end;
                          end;

                          If MRatePantawidRecovApply.AsInteger = 1 then
                          begin
                            PKVRIndex.ParamByName('code').Text   := BillCode.Text;
                            PKVRIndex.ParamByName('AN').Text     := BillAccountNumber.Text;
                            PKVRIndex.Open;

                            If not PKVRIndex.IsEmpty then
                              begin
                                PKVR.ParamByName('code').Text      := BillCode.Text;
                                PKVR.ParamByName('area').Text      := BillArea.Text;
                                PKVR.ParamByName('book').Text      := BillBook.Text;
                                PKVR.Open;

                                If not PKVR.IsEmpty then
                                  begin
                                    BillPKVROebrNumber.Text := PKVRbillnumber.Text;
                                    BillPKVRBillMonth.Text  := PKVRBillMonth.Text;
                                    BillPKVRAmount.Text     := PKVRcredit.Text;
                                  end;
                                PKVR.Close;
                              end;
                              PKVRIndex.Close;
                          end;

                            BillTotalBill.AsCurrency :=  roundoff   (BillGenSysCharge.AsCurrency +
                                                                     BillHostCommCharge.AsCurrency +
                                                                     BillForexCharge.AsCurrency +
                                                                     BillTCDemandCharge.AsCurrency +  //-----
                                                                     BillTCTransSystemCharge.AsCurrency +
                                                                     BillSystemLossCharge.AsCurrency +
                                                                     BillDCDemandCharge.AsCurrency +  //-----
                                                                     BillDCDistributionCharge.AsCurrency +
                                                                     BillSCRetCustCharge.AsCurrency +
                                                                     BillSCSupplySysCharge.AsCurrency +
                                                                     BillMCRetailCustCharge.AsCurrency +
                                                                     BillMCSystemCharge.AsCurrency +
                                                                     BillMCC.AsCurrency +
                                                                     BillUCNPCStrandedDebts.AsCurrency +
                                                                     BillUCNPCStrandedContCost.AsCurrency +
                                                                     BillUCDUStrandedContCost.AsCurrency +
                                                                     BillUCME.AsCurrency +
                                                                     BillUCEqTaxesAndRoyalties.AsCurrency +
                                                                     BillUCEC.AsCurrency +
                                                                     BillUCCrossSubRemoval.AsCurrency +
                                                                     BillICCrossSubsidyCharge.AsCurrency +
                                                                     BillPowerActRateRed.AsCurrency +
                                                                     BillLifelineDiscSubs.AsCurrency +
                                                                     BillLoanCondo.AsCurrency +
                                                                     BillLCCustMo.AsCurrency +
                                                                     BillVAT.AsCurrency +
                                                                     //==========================
                                                                     BillVATDiscAmt.AsCurrency +
                                                                     //==========================
                                                                     BillOCAmount1.AsCurrency + //-----
                                                                     BillOCAmount2.AsCurrency + //-----
                                                                     BillOCAmount3.AsCurrency + //-----
                                                                     //============================
                                                                     BillFlatRateWattage.AsCurrency +   //31   //-----
                                                                     //============================

                                                                     BillPrevYearAdjPowerCost.AsCurrency +
                                                                     BillSysLossUnderRecov.AsCurrency+
                                                                     BillRPTax.AsCurrency +
                                                                     BillDiffBillPerKwhr.AsCurrency +  //-----
                                                                     BillDiffBillPerKW.AsCurrency +    //-----
                                                                     BillDiffBillPerCust.AsCurrency +  //-----
                                                                     BillPKVRAmount.AsCurrency+        //-----
                                                                     BillTransSysAncRefund.AsCurrency+
                                                                     BillTransDemAncRefund.AsCurrency+ //-----
                                                                     BillVATTransAncRefund.AsCurrency+
                                                                     BillSCDisc.AsCurrency+
                                                                     BillFitAll.AsCurrency+
                                                                     BillOtherGenRateAdj.AsCurrency+
                                                                     BillOtherTransCostAdj.AsCurrency+
                                                                     BillOtherTransDemandCostAdj.AsCurrency+  //-----
                                                                     BillOtherSystemLossCostAdj.AsCurrency+
                                                                     BillOtherLifelineRateCostAdj.AsCurrency+
                                                                     BillOtherSeniorCitizenRateAdj.AsCurrency+
                                                                     BillPARec.AsCurrency+
                                                                     Billgram.AsCurrency);//50

                                If PKKVAmt > 0 then
                                begin
                                  BillAdjAmountBalance.AsCurrency      := PKKVAmt;

                                  If BillTotalBill.AsCurrency <= PKKVAmt then
                                  BillAdjAmountApplied.AsCurrency      := BillTotalBill.AsCurrency else
                                  BillAdjAmountApplied.AsCurrency      := PKKVAmt;
                                end;

                          UpdatePsion.ParamByName('cbook').Text                := BillCBook.Text;
                          UpdatePsion.ParamByName('billmonth').Text            := BillMonth;
                          UpdatePsion.ParamByName('DateDownloaded').AsDateTime := Now();
                          UpdatePsion.Execute;

              //================================================================
              //==Filter Ready Post Bill========================================
              //================================================================
              //'10174005A'
              tmpQuery.Close;
              tmpQuery.SQL.Clear;
              tmpQuery.SQL.Add('Select a.* from ((Select * from zaneco.billhistory ');
              tmpQuery.SQL.Add('                where accountnumber =:accountnumber ');
              tmpQuery.SQL.Add('                order by entry desc limit 3) union');
              tmpQuery.SQL.Add('(Select * from zaneco.latebillhistory  ');
              tmpQuery.SQL.Add('                where accountnumber = :accountnumber ');
              tmpQuery.SQL.Add('                order by entry desc limit 3)) a ');
              tmpQuery.SQL.Add(' order by presentreadingdate desc limit 3 ');
              tmpQuery.Open;

              tmpQuery.First;
              ComputeAverage := 0;
              while not tmpQuery.Eof do
              begin
                ComputeAverage :=  ComputeAverage + tmpQuery.FieldByName('diff').AsFloat;
                tmpQuery.Next;
              end;

             // ComputeAverage := ComputeAverage div 3.0;
              if (ComputeAverage>=100) and
              (KWHR >= (ComputeAverage - ComputeAverage*0.5)) and
              (KWHR <= (ComputeAverage + ComputeAverage*0.5)) then begin
                  Bill.FieldByName('ReadyPost').AsInteger := 1
              end else if (ComputeAverage<100) and (ComputeAverage>=50) and
                 (KWHR > 20) and (KWHR< 150) then begin
                  Bill.FieldByName('ReadyPost').AsInteger := 1
              end else if (ComputeAverage<50) and (ComputeAverage>0) and
                 (KWHR > 0) and (KWHR< 100) then begin
                  Bill.FieldByName('ReadyPost').AsInteger := 1
              end;

             // if (ComputeAverage>=100) and (ComputeAverage<=200)
             // (KWHR > (ComputeAverage *6.0)) then begin
             //     Bill.FieldByName('HighCon').AsInteger := 1;
             // end else if (ComputeAverage< 100) and (ComputeAverage>=50) and
             // (KWHR > (ComputeAverage *8.0)) then begin
             //     Bill.FieldByName('HighCon').AsInteger := 1;
             // end else if (ComputeAverage< 100) and (ComputeAverage>=50) and
             // (KWHR > (ComputeAverage *9.0)) then begin
             //     Bill.FieldByName('HighCon').AsInteger := 1;
              //================================================================

              If (Bill.State = dsInsert) or (Bill.State = dsEdit)  then
                begin
                  try
                   Bill.Post;
                  except
                   Bill.Cancel;
                  end;
                end;

            end;
           end;
          end;
   except
     on E: Exception do MessageDlg(E.Message, mtError, [mbOK], 0);
   end;
  end;

  MessageDlg('Done....', mtInformation, [mbOK], 0);
  Panel6.Visible := False;

//   ===========================================
//   ===========================================
//   ===========================================

{RoundOff := Data;
Str(Data:0:4,Dst);

 If Copy(Dst,Length(Dst)-1,1) >= '5' then
        if data >= 0 then Val2 := StrToCurr(Copy(Dst,1,length(dst)-2))+0.01 else
                          Val2 := StrToCurr(Copy(Dst,1,length(dst)-2))-0.01 else
      Val2 := StrToCurr(Copy(Dst,1,length(dst)-2));

RoundOff := Val2;
If (Dst = '0.00') or (Dst = '-0.00') then RoundOff := 0.00;
end;


label compute;

begin
    MessageDlg('Download done..... '+IntToStr(Upcount)+' Downloaded'+#10+#13+
               'Will now process', mtInformation, [mbOK], 0);

   Gauge5.Progress := 0;
   Gauge5.MinValue := 0;
   Gauge5.MaxValue := UpCount;
   Application.ProcessMessages;
   Application.ProcessMessages;
   Application.ProcessMessages;

   For J := 1 to UpCount do
   begin
   try
   Gauge5.AddProgress(1);
   Application.ProcessMessages;
   Application.ProcessMessages;
   Application.ProcessMessages;

         If TRIM(UploadStr[J]) = 'NEW CONN' then
           begin
             NewConnSW := True;
             continue;
           end;

         If NewConnSW = true then
           begin
             if trim(Copy(UploadStr[J],31,15)) = '' then continue;
             NewConn.Append;
             NewConnName.Text           := Copy(UploadStr[J],1,30);
             NewConnSerial.Text         := Copy(UploadStr[J],31,15);
             NewConnPresentReading.Text := trim(Copy(UploadStr[J],46,6));
             NewConnRemarks.Text        := Copy(UploadStr[J],52,30);
             NewConnReadTime.Text       := Copy(UploadStr[J],82,10);
             NewConnArea.Text           := '0'+Copy(UploadStr[J],92,2);
             NewConnBook.Text           := '0'+Copy(UploadStr[J],94,2);
             NewConn.Post;
             continue;
           end;

         If Trim(UploadStr[J]) = '' then continue;

         Application.ProcessMessages;

         UpAccountNumber := Trim(Copy(UploadStr[J],1,6));
         UpReadingStr    := Trim(Copy(UploadStr[J],25,8));
         UpDemandStr     := Trim(Copy(UploadStr[J],33,4));
         UpPrintStat     := Trim(Copy(UploadStr[J],37,1));
         UpFeedBack      := Trim(Copy(UploadStr[J],38,15));
         FFCode          := Trim(Copy(UploadStr[J],53,2));
         FFRem           := Trim(Copy(UploadStr[J],55,15));
         UpReadTime      := Trim(Copy(UploadStr[J],70,10));



         FFStr := FFRem;

          If trim(UpReadingStr) = '' then UpReadingStr := '000000';

         If trim(UpReadingStr) <> '' then
          begin

            MasterQ.Close;
            MasterQ.SQL.Clear;
            MasterQ.SQL.Add('Select * from Master');
            MasterQ.SQL.Add('where code = :code');
            MasterQ.ParamByName('code').AsInteger := StrToInt(UpAccountNumber);
            MasterQ.Open;

            GAreaRTaxTmp := MasterQArea.Text;

            If MasterQ.IsEmpty then
              begin
                MessageDlg(UpAccountNumber, mtWarning, [mbOK], 0);
                continue;
              end;

             Val(UpReadingStr,UpReading,Check);

             With BillingData do
             begin

                  CheckDuplicate.Close;
                  CheckDuplicate.ParamByName('code').Text      := MasterQCode.Text;
                  CheckDuplicate.ParamByName('billmonth').Text := BillMonth;
                  CheckDuplicate.Open;

                  If not CheckDuplicate.IsEmpty then
                    begin
                      if (MessageDlg('That account has already been billed for that month.'+#13+#10+
                                     'Continue anyway?', mtWarning, [mbYes, mbNo], 0) in [mrNo, mrNone]) then
                        begin
                         CheckDuplicate.Close;
                         continue;
                        end;
                    end;
                  CheckDuplicate.Close;

                  If Length(Trim(FFStr)) > 0 then
                   begin
                    UpdateBCFF.ParamByName('Code').Text      := MasterQCode.Text;
                    UpdateBCFF.ParamByName('FFDate').AsDate  := StrToDate(PresentReadingDate);
                    UpdateBCFF.ParamByName('BillMonth').Text := BillMonth;
                    UpdateBCFF.ParamByName('Remarks').Text   := FFStr+' '+UpFeedBack;
                    UpdateBCFF.Execute;
                   end;

                  Bill.Append;
                  BillCode.Text                        := MasterQCode.Text;
                  BillArea.Text                        := MasterQArea.Text;
                  BillBook.Text                        := MasterQBook.Text;
                  BillSequence.Text                    := MasterQSequence.Text;
                  BillAccountNumber.Text               := MasterQAccountNumber.Text;
                  BillName.Text                        := MasterQName.Text;
                  BillAddress.Text                     := MasterQAddress.Text;
                  BillRateCode.Text                    := MasterQRateCode.Text;
                  BillWRateCode.Text                   := MasterQWRateCode.Text;
                  BillMultiplier.Text                  := MasterQMultiplier.Text;
                  BillSerial.Text                      := MasterQSerial.Text;
                  BillVATDisc.AsCurrency               := MasterQVATDisc.AsCurrency;
                  BillPreviousReadingDate.Text         := PreviousReadingDate;
                  BillPresentReadingDate.Text          := PresentReadingDate;
                  BillPresentReadingKWH.Text           := UpReadingStr;
                  BillPreviousReadingKWH.Text          := MasterQPresentReadingKWH.Text;
                  BillDiff.Text                        := '0.00';

                  if IsNumeric(trim(UpDemandStr)) then
                      BillDemand.AsCurrency            := StrToCurr(Trim(UpDemandStr))
                   else
                      BillDemand.Text                  := MasterQDemand.Text;

                  //Bill.FieldByName('prevKilowatthour').AsFloat := MasterKilowattHour.AsFloat;

                  BillKilowattUsed.Text                := MasterQKilowattUsed.Text;
                  BillFlatRateWattage.Text             := MasterQFlatRateWattage.Text;
                  BillFeedBackCode.Text                := '';
                  BillCM.Text                          := MasterQCM.Text;
                  BillCMMultiplier.Text                := MasterQCMMultiplier.Text;
                  BillCMPreviousReadingKWH.Text        := MasterQCMPreviousReadingKWH.Text;
                  BillCMPresentReadingKWH.Text         := MasterQCMPresentReadingKWH.Text;
                  BillCMKilowattHour.Text              := MasterQCMKilowattHour.Text;
                  BillCMDemand.Text                    := MasterQCMDemand.Text;
                  BillTransformerRental.Text           := MasterQTransformerRental.Text;
                  BillStatusCode.Text                  := UpPrintStat;
                  BillBillMonth.Text                   := BillMonth;
                  BillReadTime.Text                    := UpReadTime;
                  BillCBook.Text                       := MasterQCBook.Text;

                  checkcollection.Close;
                  checkcollection.ParamByName('code').Text      := MasterQCode.Text;
                  checkcollection.ParamByName('billmonth').Text := BillMonth;
                  checkcollection.Open;

                  if not checkcollection.IsEmpty then
                    begin
                      BillPresentReadingKWH.AsFloat := MasterQPresentReadingKWH.AsFloat + checkcollectionkilowatthour.AsFloat;
                      BillKilowattHour.AsFloat      := checkcollectionkilowatthour.AsFloat;
                      BillOEBRNumber.Text           := checkcollectionreceiptnumber.Text;
                      PresRead.ReadOnly             := True;
                    end else PresRead.ReadOnly      := False;

                  checkcollection.Close;

                  If (MasterQOCMo1.AsInteger*MasterQOCAmount1.AsCurrency) <> MasterQOCTotal1.AsCurrency then
                  begin
                   BillOCCode1.Text                    := MasterQOCCode1.Text;
                   BillOCAmount1.AsCurrency            := MasterQOCAmount1.AsCurrency;
                  end;

                  If (MasterQOCMo2.AsInteger*MasterQOCAmount2.AsCurrency) <> MasterQOCTotal2.AsCurrency then
                  begin
                   BillOCCode2.Text                    := MasterQOCCode2.Text;
                   BillOCAmount2.AsCurrency            := MasterQOCAmount2.AsCurrency;
                  end;

                  If (MasterQOCMo3.AsInteger*MasterQOCAmount3.AsCurrency) <> MasterQOCTotal3.AsCurrency then
                  begin
                   BillOCCode3.Text                    := MasterQOCCode3.Text;
                   BillOCAmount3.AsCurrency            := MasterQOCAmount3.AsCurrency;
                  end;

                  if (MasterQRateCode.Text = 'S') then
                  begin
                    BillKilowattHour.AsCurrency := MasterQKilowattHour.AsCurrency;
                  end;

                  If Copy(UPFeedBack,1,3) = 'AVE' then
                  BillKilowattHour.AsCurrency := MasterQKilowattHour.AsCurrency;

                  If Copy(UPFeedBack,1,5) = 'RESET' then
                    begin
                      If Length(MasterQPresentReadingKWH.Text) = 3 then BillFeedBackCode.Text := '4D';
                      If Length(MasterQPresentReadingKWH.Text) = 4 then BillFeedBackCode.Text := '5D';
                      If Length(MasterQPresentReadingKWH.Text) = 5 then BillFeedBackCode.Text := '6D';
                    end;

                   With ReadingComputeForm do
                     begin

                       MRate.First;
                         While not MRate.Eof do
                           begin
                             If ((MRateRateCode.Text = BillRateCode.Text) and (MRateWRSw.Text = '0')) or
                                ((MRateWRateCode.Text = BillWRateCode.Text) and (MRateWRSw.Text = '1')) then Goto Compute;
                            MRate.Next;
                           end;

                           ShowMessage('Rate Record not found ....');
                           continue;

                           Compute:
                           If (Bill.State = dsEdit) or (Bill.State = dsInsert) then
                            try
                             Bill.Post;
                            except
                             Bill.Cancel;
                             continue;
                            end;

                           Bill.Edit;

                           If BillMultiplier.AsCurrency = 0 then BillMultiplier.AsCurrency := 1;
                           If BillCMMultiplier.AsCurrency = 0 then BillCMMultiplier.AsCurrency := 1;
                           If BillFeedBackCode.Text <> 'A' then
                           begin

                             if (BillFeedBackCode.Text = '4D') then
                             begin
                               BillDiff.AsCurrency := RoundOff(1000 - BillPreviousReadingKWH.AsCurrency) +
                                 BillPresentReadingKWH.AsCurrency;
                             end

                             else if (BillFeedBackCode.Text = '5D') then
                             begin
                               BillDiff.AsCurrency := RoundOff(10000 - BillPreviousReadingKWH.AsCurrency) +
                                 BillPresentReadingKWH.AsCurrency;
                             end

                             else if (BillFeedBackCode.Text = '6D') then
                             begin
                               BillDiff.AsCurrency := RoundOff(100000 - BillPreviousReadingKWH.AsCurrency) +
                                 BillPresentReadingKWH.AsCurrency;
                             end

                             else
                             begin
                               BillDiff.AsCurrency := RoundOff(BillPresentReadingKWH.AsCurrency - BillPreviousReadingKWH.AsCurrency);
                             end;

                             BillKilowattHour.AsCurrency := RoundOff(BillDiff.AsCurrency * BillMultiplier.AsCurrency);

                             BillCMKilowatthour.AsCurrency := 0;

                             If BillCM.Text = '1' then
                               begin
                                 BillCMKilowattHour.AsCurrency := RoundOff(BillCMPresentReadingKWH.AsFloat -
                                                                   BillCMPreviousReadingKWH.AsFloat) *
                                                                   BillCMMultiplier.AsInteger;
                                 If BillCMKilowatthour.AsCurrency < 0 then BillCMKilowatthour.AsCurrency := 0;
                               end
                               else
                                 BillCMKilowatthour.AsCurrency := 0;

                             BillDiff.AsCurrency := RoundOff(BillPresentReadingKWH.AsCurrency - BillPreviousReadingKWH.AsCurrency);

                             BillKilowattHour.AsCurrency := (BillDiff.AsCurrency * BillMultiplier.AsCurrency) +
                                                             BillCMKilowatthour.AsCurrency;
                           end;

                             CMKW := 0;
                             // If BillCM.Text = '1' then
                             //    If BillCMDemand.AsCurrency > 0 then
                             //    CMKW := BillCMDemand.AsCurrency;   change meter demand remove at the instance of mam alma contrivida 03-06-2012

                           KWHR := BillKilowattHour.AsCurrency;

                           If BillWRateCode.Text = 'R' then
                             begin
                               If (BillKilowattHour.AsCurrency >= 0) and (BillKilowattHour.AsCurrency <= 15) then
                               KWHR := 15;
                             end;

                          WithDB := False;
                          DBKwhr := 0;
                          DBKW   := 0;
                          If MRateDiffBillApply.AsInteger = 1 then
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

                           BillGenSysCharge.AsCurrency              := RoundOff(KWHR * MRateGenSysRate.AsCurrency);
                           BillOtherGenRateAdj.AsCurrency           := RoundOff(KWHR * MRateOtherGenRateAdj.AsCurrency);
                           BillHostCommCharge.AsCurrency            := RoundOff(KWHR * MRateHostCommRate.AsCurrency);
                           BillForexCharge.AsCurrency               := RoundOff(KWHR * MRateForexRate.AsCurrency);
                           BillTCDemandCharge.AsCurrency            := RoundOff((BillKilowattUsed.AsCurrency+CMKW) * MRateTCDemandRate.AsCurrency);
                           BillOtherTransDemandCostAdj.AsCurrency   := RoundOff((BillKilowattUsed.AsCurrency+CMKW) * MRateOtherTransDemandCostAdj.AsCurrency);
                           BillTCTransSystemCharge.AsCurrency       := RoundOff(KWHR * MRateTCSystemRate.AsCurrency);
                           BillOtherTransCostAdj.AsCurrency         := RoundOff(KWHR * MRateOtherTransCostAdj.AsCurrency);
                           BillSystemLossCharge.AsCurrency          := RoundOff(KWHR * MRateSystemLossRate.AsCurrency);
                           BillOtherSystemLossCostAdj.AsCurrency    := RoundOff(KWHR * MRateOtherSystemLossCostAdj.AsCurrency);
                           BillDCDemandCharge.AsCurrency            := RoundOff(BillKilowattUsed.AsCurrency+CMKW) * MRateDCDemandRate.AsCurrency;

                           BillDCDistributionCharge.AsCurrency      := RoundOff(KWHR * MRateDCSystemRate.AsCurrency);
                           BillSCRetCustCharge.AsCurrency           := RoundOff(MRateSCRetailCustRate.AsCurrency);
                           BillSCSupplySysCharge.AsCurrency         := RoundOff(KWHR * MRateSCSupplySysRate.AsCurrency);
                           BillMCRetailCustCharge.AsCurrency        := RoundOff(MRateMCRetailCustRate.AsCurrency);
                           BillMCSystemCharge.AsCurrency            := RoundOff(KWHR * MRateMCSysRate.AsCurrency);
                           BillMCC.AsCurrency                       := RoundOff(KWHR * MRateMCC.AsCurrency);

                            RpTaxQuery.Close;
                            RpTaxQuery.ParamByName('BillMonth').Text :=  MRateMBillMonth.Text;
                            RpTaxQuery.ParamByName('area').Text      :=  BillArea.Text;
                            RpTaxQuery.Open;

                            BillRPTax.AsCurrency                    := 0;
                            BillRateOrder.text                      := RpTaxQueryRateOrder.Text;

                            if not RpTaxQuery.IsEmpty then
                            begin
                              BillRPTax.AsCurrency                  := RoundOff(KWHR * RpTaxQueryRateAmnt.AsCurrency);
                            end;

                            RpTaxQuery.Close;


                           If WithDB then
                             begin
                               BillDiffBillPerKwhr.AsCurrency       := RoundOff(DBKwhr * MRateDiffBillPerKwhr.AsCurrency) / 10;
                               BillDiffBillPerKW.AsCurrency         := RoundOff(DBKW * MRateDIffBillPerKW.AsCurrency) / 10;
                               BillDiffBillPerCust.AsCurrency       := RoundOff(MRateDiffBillPerCust.AsCurrency) / 10;
                             end;

                           BillUCNPCStrandedDebts.AsCurrency        := RoundOff(KWHR * MRateUCNPCStrandedDebtsRate.AsCurrency);
                           BillUCNPCStrandedContCost.AsCurrency     := RoundOff(KWHR * MRateUCNPCStrandedContCostRate.AsCurrency);
                           BillUCDUStrandedContCost.AsCurrency      := RoundOff(KWHR * MRateUCDUStrandedContCostRate.AsCurrency);
                           BillUCME.AsCurrency                      := RoundOff(KWHR * MRateUCMERate.AsCurrency);
                           BillUCEqTaxesAndRoyalties.AsCurrency     := RoundOff(KWHR * MRateUCEqTaxesAndRoyaltiesRate.AsCurrency);
                           BillUCEC.AsCurrency                      := RoundOff(KWHR * MRateUCECRate.AsCurrency);
                           BillUCCrossSubRemoval.AsCurrency         := RoundOff(KWHR * MRateUCCrossSubsidyRemovalRate.AsCurrency);
                           BillICCrossSubsidyCharge.AsCurrency      := RoundOff(KWHR * MRateICCrossSubsidyRate.AsCurrency);
                           BillPowerActRateRed.AsCurrency           := RoundOff(KWHR * MRatePARARate.AsCurrency);
                           BillLifelineDiscSubs.AsCurrency          := RoundOff(KWHR * MRateLifelineSubsidyRate.AsCurrency);
                           BillOtherLifelineRateCostAdj.AsCurrency  := RoundOff(KWHR * MRateOtherLifelineRateCostAdj.AsCurrency);
                           BillSCDisc.AsCurrency                    := RoundOff(KWHR * MRateSCDiscSubs.AsCurrency);
                           BillOtherSeniorCitizenRateAdj.AsCurrency := RoundOff(KWHR * MRateOtherSeniorCitizenRateAdj.AsCurrency);
                           BillLoanCondo.AsCurrency                 := RoundOff(KWHR * MRateLoanCondo.AsCurrency);
                           BillFlatRateWattage.AsCurrency           := RoundOff(KWHR * MRateGram.AsCurrency);
                           BillLCCustMo.AsCurrency                  := RoundOff(MRateLCCustMo.AsCurrency);
                           BillPrevYearAdjPowerCost.AsCurrency      := RoundOff(KWHR * MRatePrevYearAdjPowerCost.AsCurrency);
                           BillSysLossUnderRecov.AsCurrency         := RoundOff(KWHR * MRateSysLossUnderRecov.AsCurrency);

                           BillTransSysAncRefund.AsCurrency         := RoundOff(KWHR * MRateTransSysAncRefund.AsCurrency);
                           BillTransDemAncRefund.AsCurrency         := RoundOff((BillKilowattUsed.AsCurrency+CMKW) * MRateTransDemAncRefund.AsCurrency);
                           BillVATTransAncRefund.AsCurrency         := RoundOff(KWHR * MRateVATTransAncRefund.AsCurrency);
                           BillFitAll.AsCurrency                    := RoundOff(KWHR * MRateFitAllrate.AsCurrency);

                           VATGenCo                                 := RoundOff(KWHR * MRateVATGenco.AsFloat);
                           VATTransCo                               := RoundOff(KWHR * MRateVATTransco.AsFloat);
                           VATSystemLoss                            := RoundOff(KWHR * MRateVATSystemLoss.AsFloat);

                           TotalPower := Roundoff(BillGenSysCharge.AsCurrency +        //=====
                                         BillHostCommCharge.AsCurrency +
                                         BillForexCharge.AsCurrency +
                                         BillTCDemandCharge.AsCurrency +      //=====
                                         BillTCTransSystemCharge.AsCurrency + //=====
                                         BillSystemLossCharge.AsCurrency +    //=====
                                         BillDCDemandCharge.AsCurrency +
                                         BillDCDistributionCharge.AsCurrency +
                                         BillSCSupplySysCharge.AsCurrency +
                                         BillMCSystemCharge.AsCurrency+
                                         BillMCRetailCustCharge.AsCurrency+
                                         BillTransSysAncRefund.AsCurrency+
                                         BillTransDemAncRefund.AsCurrency);

                              if True then


                              SCLD := 1;
                              If (BillWRateCode.Text = 'R') or
                                 (BillWRateCode.Text = 'X') then
                               begin
                                 If KWHR <= 15                    then
                                   begin
                                     BillLifelineDiscSubs.AsCurrency := roundoff(TotalPower * -0.50);
                                     BillOtherLifelineRateCostAdj.AsCurrency  := 0.0;
                                     SCLD := 0.50;
                                   end;

                                 If (KWHR >  15) and (KWHR <= 16) then
                                   begin
                                     BillLifelineDiscSubs.AsCurrency := roundoff(TotalPower * -0.40);
                                     BillOtherLifelineRateCostAdj.AsCurrency := 0.0;
                                     SCLD := 0.60;
                                   end;

                                 If (KWHR >  16) and (KWHR <= 17) then
                                   begin
                                     BillLifelineDiscSubs.AsCurrency := roundoff(TotalPower * -0.30);
                                     BillOtherLifelineRateCostAdj.AsCurrency := 0.0;
                                     SCLD := 0.70;
                                   end;

                                 If (KWHR >  17) and (KWHR <= 18) then
                                   begin
                                     BillLifelineDiscSubs.AsCurrency := roundoff(TotalPower * -0.20);
                                     BillOtherLifelineRateCostAdj.AsCurrency := 0.0;
                                     SCLD := 0.80;
                                   end;

                                 If (KWHR >  18) and (KWHR <= 19) then
                                   begin
                                     BillLifelineDiscSubs.AsCurrency := roundoff(TotalPower * -0.10);
                                      BillOtherLifelineRateCostAdj.AsCurrency := 0.0;
                                     SCLD := 0.90;
                                   end;

                                 If (KWHR >  19) and (KWHR <= 20) then
                                   begin
                                     BillLifelineDiscSubs.AsCurrency := roundoff(TotalPower * -0.05);
                                     BillOtherLifelineRateCostAdj.AsCurrency := 0.0;
                                     SCLD := 0.95
                                   end;
                               end;

                             If BillLifelineDiscSubs.AsCurrency < 0 then
                             begin
                                BillSCDisc.AsCurrency := 0;
                                BillOtherSeniorCitizenRateAdj.AsCurrency := 0.0;
                             end;

                             If (MRateSCDiscApply.Text = '1') and (BillKilowattHour.AsFloat <= MRateSCDiscKWHR.AsFloat) then
                              begin

                                SCRead.ParamByName('scode').Text := BillCode.Text;
                                SCRead.ParamByName('presentreadingdate').AsDate := BillPresentReadingDate.AsDateTime;
                                SCRead.Open;

                                If not SCRead.IsEmpty then
                                  begin
                                    BillSCAmt4Disc.AsCurrency := (BillGenSysCharge.AsCurrency +         //=====
                                                                  BillHostCommCharge.AsCurrency +
                                                                  BillForexCharge.AsCurrency +
                                                                  BillTCDemandCharge.AsCurrency +       //=====
                                                                  BillTCTransSystemCharge.AsCurrency +  //=====
                                                                  BillSystemLossCharge.AsCurrency +     //=====
                                                                  BillDCDemandCharge.AsCurrency +
                                                                  BillDCDistributionCharge.AsCurrency +
                                                                  BillSCRetCustCharge.AsCurrency +
                                                                  BillSCSupplySysCharge.AsCurrency +
                                                                  BillMCRetailCustCharge.AsCurrency +
                                                                  BillMCSystemCharge.AsCurrency +
                                                                  BillLoanCondo.AsCurrency) * SCLD;

                                    BillSCDisc.AsCurrency     := (BillSCAmt4Disc.AsCurrency * (MRateSCDiscPercent.AsCurrency/100)) * -1;
                                    BillOtherSeniorCitizenRateAdj.AsCurrency := 0.0;
                                  end;

                               SCRead.Close;
                              end;


                              DiffBillVAT :=  roundoff(BillDiffBillPerKwhr.AsCurrency +
                                                       BillDiffBillPerKW.AsCurrency +
                                                       BillDiffBillPerCust.AsCurrency) * (MRateVAT.AsCurrency / 100);

                              BillVAT.AsCurrency :=  roundoff((( BillForexCharge.AsCurrency+
                                                         BillDCDemandCharge.AsCurrency+
                                                         BillDCDistributionCharge.AsCurrency+
                                                         BillSCRetCustCharge.AsCurrency+
                                                         BillSCSupplySysCharge.AsCurrency+
                                                         BillMCRetailCustCharge.AsCurrency+
                                                         BillMCSystemCharge.AsCurrency+
                                                         BillICCrossSubsidyCharge.AsCurrency+
                                                         BillLifelineDiscSubs.AsCurrency+      //=====
                                                         BillSCDisc.AsCurrency+                //=====
                                                         BillOtherLifelineRateCostAdj.AsCurrency+
                                                         BillOtherSeniorCitizenRateAdj.AsCurrency+
                                                         BillLoanCondo.AsCurrency+
                                                         BillLCCustMo.AsCurrency) *
                                                         MRateVAT.AsCurrency / 100)) +
                                                         VATGenCO +
                                                         VATTransCO +
                                                         VATSystemLoss +
                                                         DiffBillVAT;

                              BillVATGenCO.AsCurrency           := VATGenCO;
                              BillVATTransCO.AsCurrency         := VATTransCo;
                              BillVATSystemLossGenCO.AsCurrency := VATSystemLoss;

                              BillVATDist.AsCurrency            := BillVAT.AsCurrency - (VATGenCO+
                                                                                         VATTransCo+
                                                                                         VATSystemLoss);

                           If BillVATDisc.AsFloat > 0 then
                           begin
                             BillVATDistDiscAmt.AsFloat          := RoundOff(BillVATDist.AsFloat * (BillVATDisc.AsFloat / 100) * -1);
                             BillVATGenCoDiscAmt.AsFloat         := 0;
                             BillVATTransCoDiscAmt.AsFloat       := 0;
                             BillVATSystemLossDiscAmt.AsFloat    := 0;

                             BillVATDiscAmt.AsFloat              := BillVATDistDiscAmt.AsFloat+
                                                                    BillVATGenCoDiscAmt.AsFloat+
                                                                    BillVATTransCoDiscAmt.AsFloat+
                                                                    BillVATSystemLossDiscAmt.AsFloat;
                           end;

                            ZeroVAT            := TMyQuery.Create(Self);
                            ZeroVAT.Connection := BillingData.MyConnection1;
                            ZeroVAT.SQL.Clear;

                            ZeroVAT.SQL.Add('Select accountnumber from ZeroVat where code = :code and dateentered <= :dateentered');
                            ZeroVAT.ParamByName('Code').Text        := BillCode.Text;
                            ZeroVAT.ParamByName('DateEntered').AsDate := BillPresentReadingDate.AsDateTime;
                            ZeroVAT.Open;

                            if not ZeroVAT.IsEmpty then
                            begin
                              BillVATDistDiscAmt.AsFloat          := BillVATDist.AsFloat * -1;
                              BillVATGenCoDiscAmt.AsFloat         := BillVATGenCO.AsFloat * -1;
                              BillVATTransCoDiscAmt.AsFloat       := BillVATTransCO.AsFloat * -1;
                              BillVATSystemLossDiscAmt.AsFloat    := BillVATSystemLossGenCO.AsFloat * -1;

                              BillVATDiscAmt.AsFloat              := BillVATDistDiscAmt.AsFloat+
                                                                     BillVATGenCoDiscAmt.AsFloat+
                                                                     BillVATTransCoDiscAmt.AsFloat+
                                                                     BillVATSystemLossDiscAmt.AsFloat;

                            end;

                            ZeroVAT.Close;
                            FreeAndNil(ZeroVAT);

                          PKKVAmt := 0;

                          If MRatePantawidApply.AsInteger = 1 then
                          begin
                            PKVRIndex.ParamByName('code').Text   := BillCode.Text;
                            PKVRIndex.ParamByName('AN').Text     := BillAccountNumber.Text;
                            PKVRIndex.Open;

                            If PKVRIndex.IsEmpty then
                              begin
                                GetPKV.ParamByName('code').Text      := BillCode.Text;
                                GetPKV.ParamByName('area').Text      := BillArea.Text;
                                GetPKV.ParamByName('book').Text      := BillBook.Text;
                                GetPKV.Open;

                                If GetPKV.IsEmpty then
                                  PKKVAmt := 0 else
                                  PKKVAmt := GetPKVdebit.AsCurrency - GetPKVcredit.AsCurrency;
                                GetPKV.Close;
                              end;
                          end;

                          If MRatePantawidRecovApply.AsInteger = 1 then
                          begin
                            PKVRIndex.ParamByName('code').Text   := BillCode.Text;
                            PKVRIndex.ParamByName('AN').Text     := BillAccountNumber.Text;
                            PKVRIndex.Open;

                            If not PKVRIndex.IsEmpty then
                              begin
                                PKVR.ParamByName('code').Text      := BillCode.Text;
                                PKVR.ParamByName('area').Text      := BillArea.Text;
                                PKVR.ParamByName('book').Text      := BillBook.Text;
                                PKVR.Open;

                                If not PKVR.IsEmpty then
                                  begin
                                    BillPKVROebrNumber.Text := PKVRbillnumber.Text;
                                    BillPKVRBillMonth.Text  := PKVRBillMonth.Text;
                                    BillPKVRAmount.Text     := PKVRcredit.Text;
                                  end;
                                PKVR.Close;
                              end;
                              PKVRIndex.Close;
                          end;

                            BillTotalBill.AsCurrency :=  roundoff   (BillGenSysCharge.AsCurrency +
                                                                     BillHostCommCharge.AsCurrency +
                                                                     BillForexCharge.AsCurrency +
                                                                     BillTCDemandCharge.AsCurrency +
                                                                     BillTCTransSystemCharge.AsCurrency +
                                                                     BillSystemLossCharge.AsCurrency +
                                                                     BillDCDemandCharge.AsCurrency +
                                                                     BillDCDistributionCharge.AsCurrency +
                                                                     BillSCRetCustCharge.AsCurrency +
                                                                     BillSCSupplySysCharge.AsCurrency +
                                                                     BillMCRetailCustCharge.AsCurrency +
                                                                     BillMCSystemCharge.AsCurrency +
                                                                     BillUCNPCStrandedDebts.AsCurrency +
                                                                     BillUCNPCStrandedContCost.AsCurrency +
                                                                     BillUCDUStrandedContCost.AsCurrency +
                                                                     BillUCME.AsCurrency +
                                                                     BillUCEqTaxesAndRoyalties.AsCurrency +
                                                                     BillUCEC.AsCurrency +
                                                                     BillUCCrossSubRemoval.AsCurrency +
                                                                     BillICCrossSubsidyCharge.AsCurrency +
                                                                     BillPowerActRateRed.AsCurrency +
                                                                     BillLifelineDiscSubs.AsCurrency +
                                                                     BillLoanCondo.AsCurrency +
                                                                     BillLCCustMo.AsCurrency +
                                                                     BillVAT.AsCurrency +
                                                                     BillVATDiscAmt.AsCurrency +
                                                                     BillOCAmount1.AsCurrency +
                                                                     BillOCAmount2.AsCurrency +
                                                                     BillOCAmount3.AsCurrency +
                                                                     BillTransformerRental.AsCurrency +   //30
                                                                     BillFlatRateWattage.AsCurrency +
                                                                     BillPrevYearAdjPowerCost.AsCurrency +
                                                                     BillSysLossUnderRecov.AsCurrency+
                                                                     BillMCC.AsCurrency +

                                                                     BillRPTax.AsCurrency +
                                                                     BillDiffBillPerKwhr.AsCurrency +
                                                                     BillDiffBillPerKW.AsCurrency +
                                                                     BillDiffBillPerCust.AsCurrency +
                                                                     BillPKVRAmount.AsCurrency+
                                                                     BillTransSysAncRefund.AsCurrency+
                                                                     BillTransDemAncRefund.AsCurrency+
                                                                     BillVATTransAncRefund.AsCurrency+
                                                                     BillSCDisc.AsCurrency+
                                                                     BillFitAll.AsCurrency+

                                                                     BillOtherGenRateAdj.AsCurrency+
                                                                     BillOtherTransCostAdj.AsCurrency+
                                                                     BillOtherTransDemandCostAdj.AsCurrency+
                                                                     BillOtherSystemLossCostAdj.AsCurrency+
                                                                     BillOtherLifelineRateCostAdj.AsCurrency+
                                                                     BillOtherSeniorCitizenRateAdj.AsCurrency);

                                If PKKVAmt > 0 then
                                begin
                                  BillAdjAmountBalance.AsCurrency      := PKKVAmt;

                                  If BillTotalBill.AsCurrency <= PKKVAmt then
                                  BillAdjAmountApplied.AsCurrency      := BillTotalBill.AsCurrency else
                                  BillAdjAmountApplied.AsCurrency      := PKKVAmt;
                                end;

                          UpdatePsion.ParamByName('cbook').Text                := BillCBook.Text;
                          UpdatePsion.ParamByName('billmonth').Text            := BillMonth;
                          UpdatePsion.ParamByName('DateDownloaded').AsDateTime := Now();
                          UpdatePsion.Execute;

              //================================================================
              //==Filter Ready Post Bill========================================
              //================================================================
              //'10174005A'
              tmpQuery.Close;
              tmpQuery.SQL.Clear;
              tmpQuery.SQL.Add('Select a.* from ((Select * from zaneco.billhistory ');
              tmpQuery.SQL.Add('                where accountnumber =:accountnumber ');
              tmpQuery.SQL.Add('                order by entry desc limit 3) union');
              tmpQuery.SQL.Add('(Select * from zaneco.latebillhistory  ');
              tmpQuery.SQL.Add('                where accountnumber = :accountnumber ');
              tmpQuery.SQL.Add('                order by entry desc limit 3)) a ');
              tmpQuery.SQL.Add(' order by presentreadingdate desc limit 3 ');
              tmpQuery.Open;

              tmpQuery.First;
              ComputeAverage := 0;
              while not tmpQuery.Eof do
              begin
                ComputeAverage :=  ComputeAverage + tmpQuery.FieldByName('diff').AsFloat;
                tmpQuery.Next;
              end;

             // ComputeAverage := ComputeAverage div 3.0;
              if (ComputeAverage>=100) and
              (KWHR >= (ComputeAverage - ComputeAverage*0.5)) and
              (KWHR <= (ComputeAverage + ComputeAverage*0.5)) then begin
                  Bill.FieldByName('ReadyPost').AsInteger := 1
              end else if (ComputeAverage<100) and (ComputeAverage>=50) and
                 (KWHR > 20) and (KWHR< 150) then begin
                  Bill.FieldByName('ReadyPost').AsInteger := 1
              end else if (ComputeAverage<50) and (ComputeAverage>0) and
                 (KWHR > 0) and (KWHR< 100) then begin
                  Bill.FieldByName('ReadyPost').AsInteger := 1
              end;

             // if (ComputeAverage>=100) and (ComputeAverage<=200)
             // (KWHR > (ComputeAverage *6.0)) then begin
             //     Bill.FieldByName('HighCon').AsInteger := 1;
             // end else if (ComputeAverage< 100) and (ComputeAverage>=50) and
             // (KWHR > (ComputeAverage *8.0)) then begin
             //     Bill.FieldByName('HighCon').AsInteger := 1;
             // end else if (ComputeAverage< 100) and (ComputeAverage>=50) and
             // (KWHR > (ComputeAverage *9.0)) then begin
             //     Bill.FieldByName('HighCon').AsInteger := 1;
             //================================================================

              If (Bill.State = dsInsert) or (Bill.State = dsEdit)  then
                begin
                  try
                   Bill.Post;
                  except
                   Bill.Cancel;
                  end;
                end;

            end;
           end;
          end;
   except
     on E: Exception do MessageDlg(E.Message, mtError, [mbOK], 0);
   end;
  end; //end for J

  MessageDlg('Done....', mtInformation, [mbOK], 0);
  Panel6.Visible := False; }

//==============================
//===============================
//===============================

end;

procedure TReadingComputeForm.A1Click(Sender: TObject);
begin
  If not assigned(BillMasterMainRecordForm) then
  BillMasterMainRecordForm := TBillMasterMainRecordForm.Create(Application);
  BillMasterMainRecordForm.AccountCode := 0;
  BillMasterMainRecordForm.CName.Text  := NewConnName.Text;
  BillMasterMainRecordForm.Serial.Text := NewConnSerial.Text;

  If BillMasterMainRecordForm.ShowModal = Mrok then
    begin

     With BillingData do
     begin
      Master.Close;
      Master.SQL.Clear;
      Master.SQL.Add('select * from master where accountnumber = :accountnumber');
      Master.ParamByName('AccountNumber').Text := AccountNumber;
      Master.Open;

      With BillingData do
        begin
           CheckDuplicate.Close;
           CheckDuplicate.ParamByName('code').Text      := MasterCode.Text;
           CheckDuplicate.ParamByName('billmonth').Text := BillMonth;
           CheckDuplicate.Open;

           If not CheckDuplicate.IsEmpty then
             begin

               if (MessageDlg('That account has already been billed for that month.'+#13+#10+
                              'Continue anyway?', mtWarning, [mbYes, mbNo], 0) in [mrNo, mrNone]) then
                 begin
                  CheckDuplicate.Close;
                  Exit;
                 end;
             end;
           CheckDuplicate.Close;

           Bill.Append;
           BillCode.Text                        := MasterCode.Text;
           BillArea.Text                        := MasterArea.Text;
           BillBook.Text                        := MasterBook.Text;
           BillSequence.Text                    := MasterSequence.Text;
           BillAccountNumber.Text               := MasterAccountNumber.Text;
           BillName.Text                        := MasterName.Text;
           BillAddress.Text                     := MasterAddress.Text;
           BillRateCode.Text                    := MasterRateCode.Text;
           BillMultiplier.Text                  := MasterMultiplier.Text;
           BillSerial.Text                      := MasterSerial.Text;
           BillVATDisc.AsCurrency               := MasterVATDisc.AsCurrency;
           BillPreviousReadingDate.Text         := PreviousReadingDate;
           BillPresentReadingDate.Text          := PresentReadingDate;
           BillPresentReadingKWH.Text           := '0.00';
           BillPreviousReadingKWH.Text          := MasterPresentReadingKWH.Text;
           BillDiff.Text                        := '0.00';
           BillDemand.Text                      := MasterDemand.Text;
           BillKilowattUsed.Text                := MasterKilowattUsed.Text;
           BillFlatRateWattage.Text             := MasterFlatRateWattage.Text;
           BillFeedBackCode.Text                := MasterFeedBackCode.Text;
           BillCM.Text                          := MasterCM.Text;
           BillCMMultiplier.Text                := MasterCMMultiplier.Text;
           BillCMPreviousReadingKWH.Text        := MasterCMPreviousReadingKWH.Text;
           BillCMPresentReadingKWH.Text         := MasterCMPresentReadingKWH.Text;
           BillCMKilowattHour.Text              := MasterCMKilowattHour.Text;
           BillCMDemand.Text                    := MasterCMDemand.Text;
           BillTransformerRental.Text           := MasterTransformerRental.Text;
           BillStatusCode.Text                  := '2';
           BillBillMonth.Text                   := BillMonth;

           checkcollection.Close;
           checkcollection.ParamByName('code').Text      := MasterCode.Text;
           checkcollection.ParamByName('billmonth').Text := BillMonth;
           checkcollection.Open;

           if not checkcollection.IsEmpty then
             begin
               BillPresentReadingKWH.AsFloat := MasterPresentReadingKWH.AsFloat + checkcollectionkilowatthour.AsFloat;
               BillKilowattHour.AsFloat      := checkcollectionkilowatthour.AsFloat;
               BillOEBRNumber.Text           := checkcollectionreceiptnumber.Text;
               PresRead.ReadOnly             := True;
             end else PresRead.ReadOnly      := False;

           checkcollection.Close;

           If (MasterOCMo1.AsInteger*MasterOCAmount1.AsCurrency) <> MasterOCTotal1.AsCurrency then
           begin
            BillOCCode1.Text                    := MasterOCCode1.Text;
            BillOCAmount1.AsCurrency            := MasterOCAmount1.AsCurrency;
           end;

           If (MasterOCMo2.AsInteger*MasterOCAmount2.AsCurrency) <> MasterOCTotal2.AsCurrency then
           begin
            BillOCCode2.Text                    := MasterOCCode2.Text;
            BillOCAmount2.AsCurrency            := MasterOCAmount2.AsCurrency;
           end;

           If (MasterOCMo3.AsInteger*MasterOCAmount3.AsCurrency) <> MasterOCTotal3.AsCurrency then
           begin
            BillOCCode3.Text                    := MasterOCCode3.Text;
            BillOCAmount3.AsCurrency            := MasterOCAmount3.AsCurrency;
           end;

           Bill.Post;
           Bill.Edit;
           PresRead.Text := NewConnPresentReading.Text;
           BillReadTime.Text := NewConnReadTime.Text;
           PresRead.SetFocus;
           menupanel.Expanded        := False;
           ReadingDataPanel.Expanded := True;
        end;
     end;
    NewConn.Delete;
    end;
end;

procedure TReadingComputeForm.ApplicationEvents2Exception(Sender: TObject;
  E: Exception);
begin
  Panel6.Visible := False;
end;

procedure TReadingComputeForm.assignbillnumberClick(Sender: TObject);
begin
  NxHeaderPanel4.Top := 78;
  NxHeaderPanel4.Left := 280;
  NxHeaderPanel4.BringToFront;
  NxHeaderPanel4.Visible := True;
end;

procedure TReadingComputeForm.DBGrid3GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor;
  State: TGridDrawState; StateEx: TGridDrawStateEx);
var
  prevKwhr : Double;
  Kwhr     : Double;
begin
   If BillingData.BillKilowattHour.AsInteger < 0 then
      BackGround  := $009393FF;

   If BillingData.BillKilowattHour.AsInteger = 0 then
      BackGround := $00FF84FF;

   If BillingData.BillFeedBackCode.Text = 'A' then
      BackGround := clHotLight;

   {try
     prevKwhr := BillingData.Bill.FieldByName('prevKilowatthour').AsFloat;
     Kwhr     := BillingData.BillKilowattHour.AsFloat;

     if (prevKwhr<=100) and (Kwhr>=600) or
        (prevKwhr>100)  and (Kwhr>=(prevKwhr*6.0)) then
        begin
          BackGround := $0000E8E8;
        end;
   except

   end; }

end;
procedure TReadingComputeForm.ConsistentReading();
var
  I : Integer;
begin
  tmpQ.Close;
  tmpQ.SQL.Clear;
  tmpQ.SQL.Add('Select * from tempbill ');
  tmpQ.SQL.Add(' where cbook = :cbook and billmonth= :billmonth');
  tmpQ.ParamByName('cbook').Text      := cbookBillmonth[0];
  tmpQ.ParamByName('billmonth').Text  := cbookBillmonth[1];
  tmpQ.Open;
  tmpQ.First;

  aveCount:= 0;
  rdngKwh := 0.0;
  while not tmpQ.Eof do begin
    rdngAve := 0.0;
    rdngKwh := tmpQ.FieldByName('KilowattHour').AsFloat;

    averagebillQ.Close;
    averagebillQ.ParamByName('accountnumber').Text  := tmpQ.FieldByName('accountnumber').Text;
    averagebillQ.ParamByName('billmonth').Text      := cbookBillmonth[1];
    averagebillQ.Open;

    if not averagebillQ.IsEmpty then rdngAve := averagebillQaverageKwh.AsFloat;

    //==========================================================================
    //==========================================================================
    If (rdngAve >= 10) And (rdngAve <= 20) And (rdngKwh <= 40) And (rdngKwh >= 10) Then begin
         consistentRdng[aveCount]:= tmpQ.FieldByName('accountnumber').Text;
         Inc(aveCount);
    end else if (rdngAve > 20) And (rdngAve <= 100) And ((rdngAve - (rdngAve * 0.5)) <= rdngKwh) And ((rdngAve + (rdngAve * 0.5)) >= rdngKwh) Then begin
         consistentRdng[aveCount]:= tmpQ.FieldByName('accountnumber').Text;
         Inc(aveCount);
    end else if (rdngAve > 100) And (rdngAve <= 1000) And ((rdngAve - (rdngAve * 0.25)) <= rdngKwh) And ((rdngAve + (rdngAve * 0.25)) >= rdngKwh) Then begin
         consistentRdng[aveCount]:= tmpQ.FieldByName('accountnumber').Text;
         Inc(aveCount);
    end else if  (rdngAve > 1000) And (rdngAve <= 5000) And ((rdngAve - (rdngAve * 0.2)) <= rdngKwh) And ((rdngAve + (rdngAve * 0.2)) >= rdngKwh) Then Begin
         consistentRdng[aveCount]:= tmpQ.FieldByName('accountnumber').Text;
         Inc(aveCount);
    end else if (rdngAve > 5000) And ((rdngAve - 1000) <= rdngAve) And ((rdngAve + 1000) >= rdngAve) then Begin
         consistentRdng[aveCount]:= tmpQ.FieldByName('accountnumber').Text;
         Inc(aveCount);
    end;

    tmpQ.Next;
  end;

end;
procedure TReadingComputeForm.VerifyReading();
var
 I : Integer;
begin
  tmpQ.Close;
  tmpQ.SQL.Clear;
  tmpQ.SQL.Add('Select * from tempbill ');
  tmpQ.SQL.Add(' where cbook = :cbook and billmonth= :billmonth');
  tmpQ.ParamByName('cbook').Text      := cbookBillmonth[0];
  tmpQ.ParamByName('billmonth').Text  := cbookBillmonth[1];
  tmpQ.Open;
  tmpQ.First;

  VCount  := 0;
  rdngKwh := 0.0;
  while not tmpQ.Eof do begin
    rdngAve := 0.0;
    rdngKwh := tmpQ.FieldByName('KilowattHour').AsFloat;

    averagebillQ.Close;
    averagebillQ.ParamByName('accountnumber').Text  := tmpQ.FieldByName('accountnumber').Text;
    averagebillQ.ParamByName('billmonth').Text      := cbookBillmonth[1];
    averagebillQ.Open;

    if not averagebillQ.IsEmpty then rdngAve := averagebillQaverageKwh.AsFloat;


     If (rdngAve >= 10) And (rdngAve <= 20) Then begin
       If Not ((rdngKwh <= 40) And (rdngKwh >= 10)) Then begin
          VerifiedRdng[VCount]:= tmpQ.FieldByName('accountnumber').Text;
          Inc(VCount);
       end;
     end Else If (rdngAve > 20) And (rdngAve <= 100) Then begin
       If Not (((rdngAve - (rdngAve * 0.5)) <= rdngKwh) And ((rdngAve + (rdngAve * 0.5)) >= rdngKwh)) Then begin
          VerifiedRdng[VCount]:= tmpQ.FieldByName('accountnumber').Text;
          Inc(VCount);
       end;
     end Else If (rdngAve > 100) And (rdngAve <= 1000) Then begin
       If Not (((rdngAve - (rdngAve * 0.25)) <= rdngKwh) And ((rdngAve + (rdngAve * 0.25)) >= rdngKwh)) Then begin
          VerifiedRdng[VCount]:= tmpQ.FieldByName('accountnumber').Text;
          Inc(VCount);
       end;
     end Else If (rdngAve > 1000) And (rdngAve <= 5000) Then begin
       If Not (((rdngAve - (rdngAve * 0.2)) <= rdngKwh) And ((rdngAve + (rdngAve * 0.2)) >= rdngKwh)) Then begin
          VerifiedRdng[VCount]:= tmpQ.FieldByName('accountnumber').Text;
          Inc(VCount);
       end;
     end Else If (rdngAve > 5000) Then begin
       If Not (((rdngAve - 1000) <= rdngAve) And ((rdngAve + 1000) >= rdngAve)) Then begin
          VerifiedRdng[VCount]:= tmpQ.FieldByName('accountnumber').Text;
          Inc(VCount);
       end;
     end Else If (rdngAve < 10.0) Or (rdngKwh < 10.0) Then begin
         VerifiedRdng[VCount]:= tmpQ.FieldByName('accountnumber').Text;
         Inc(VCount);
     end;

    tmpQ.Next;
  end;

end;

end.



