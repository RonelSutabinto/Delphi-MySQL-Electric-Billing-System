unit readandbill;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, MemDS, DBAccess, MyAccess, StdCtrls, NxEdit, NxCollection,
  NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid, NxColumns,
  NxDBColumns, NxBusy, ExtCtrls, Gauges, CPort, Rapi, Rapi2, Grids, DBGrids,
  CRGrid, CRDBGrid1, Mask, DBCtrls, NxPageControl, CPortTypes;

type
  TReadandBillForm = class(TForm)
    RB: TMyQuery;
    BillMonth: TNxEdit;
    Label1: TLabel;
    NxButton1: TNxButton;
    NxButton3: TNxButton;
    NxButton4: TNxButton;
    dsRB: TMyDataSource;
    CheckRate: TMyQuery;
    UpdateRB: TMyQuery;
    MeterReader: TNxEdit;
    Label3: TLabel;
    CipherBookPanel: TNxHeaderPanel;
    Upload: TMyQuery;
    Serial: TComPort;
    Timer1: TTimer;
    UploadRESULT: TStringField;
    Gauge1: TGauge;
    Upload2: TMyQuery;
    RadioGroup1: TRadioGroup;
    NxButton5: TNxButton;
    NxLinkLabel1: TNxLinkLabel;
    CipherBook: TMyQuery;
    CipherBookMaster: TMyQuery;
    CipherBookcbook: TStringField;
    CipherBooktcons: TLargeintField;
    CipherBookMasterarea: TStringField;
    CipherBookMasterbook: TStringField;
    CipherBookMasteraccountnumber: TStringField;
    CipherBookMastername: TStringField;
    CipherBookMasteraddress: TStringField;
    dsCipherBook: TMyDataSource;
    dsCipherBookMaster: TMyDataSource;
    UpdateCipherBook: TMyQuery;
    RBCBook: TStringField;
    RBbillmonth: TStringField;
    RBuploaded: TStringField;
    RBmeterreader: TStringField;
    RBTCons: TLargeintField;
    RBUploadStat: TStringField;
    CipherBookRange: TMyQuery;
    dsCipherBookRange: TMyDataSource;
    CipherBookRangearea: TStringField;
    CipherBookRangebook: TStringField;
    CipherBookRangeaddress: TStringField;
    CipherBookRangestartacct: TStringField;
    CipherBookRangeEndAcct: TStringField;
    CipherBookRangetcons: TLargeintField;
    NxLinkLabel3: TNxLinkLabel;
    RBDateUploaded: TDateTimeField;
    RBDateDownloaded: TDateTimeField;
    OCBilling: TMyQuery;
    OCBillingoccode: TStringField;
    OCBillingamount: TFloatField;
    OCBillingoctype: TStringField;
    InitOC: TMyQuery;
    MasterOC: TMyQuery;
    MasterOCCode: TIntegerField;
    MasterOCArea: TStringField;
    MasterOCBook: TStringField;
    MasterOCSequence: TStringField;
    MasterOCAccountNumber: TStringField;
    MasterOCName: TStringField;
    MasterOCAddress: TStringField;
    MasterOCRateCode: TStringField;
    MasterOCConsCode: TStringField;
    MasterOCConnCode: TStringField;
    MasterOCTransformer: TStringField;
    MasterOCMeterBrand: TStringField;
    MasterOCSerial: TStringField;
    MasterOCMultiplier: TFloatField;
    MasterOCNewConnectionDate: TDateField;
    MasterOCReconnectionDate: TDateField;
    MasterOCDisconnectionDate: TDateField;
    MasterOCPreviousReadingDate: TDateField;
    MasterOCPresentReadingDate: TDateField;
    MasterOCPreviousReadingKWH: TFloatField;
    MasterOCPresentReadingKWH: TFloatField;
    MasterOCDiff: TFloatField;
    MasterOCDemand: TFloatField;
    MasterOCFlatRateWattage: TFloatField;
    MasterOCFeedBackCode: TStringField;
    MasterOCCM: TStringField;
    MasterOCCMMultiplier: TFloatField;
    MasterOCCMPreviousReadingKWH: TFloatField;
    MasterOCCMPresentReadingKWH: TFloatField;
    MasterOCCMKilowattHour: TFloatField;
    MasterOCCMDemand: TFloatField;
    MasterOCKilowattHour: TFloatField;
    MasterOCKilowattUsed: TFloatField;
    MasterOCGenSysCharge: TFloatField;
    MasterOCHostCommCharge: TFloatField;
    MasterOCForexCharge: TFloatField;
    MasterOCTCDemandCharge: TFloatField;
    MasterOCTCTransSystemCharge: TFloatField;
    MasterOCSystemLossCharge: TFloatField;
    MasterOCDCDemandCharge: TFloatField;
    MasterOCDCDistributionCharge: TFloatField;
    MasterOCSCRetCustCharge: TFloatField;
    MasterOCSCSupplySysCharge: TFloatField;
    MasterOCMCRetailCustCharge: TFloatField;
    MasterOCMCSystemCharge: TFloatField;
    MasterOCUCNPCStrandedDebts: TFloatField;
    MasterOCUCNPCStrandedContCost: TFloatField;
    MasterOCUCDUStrandedContCost: TFloatField;
    MasterOCUCME: TFloatField;
    MasterOCUCEqTaxesAndRoyalties: TFloatField;
    MasterOCUCEC: TFloatField;
    MasterOCUCCrossSubRemoval: TFloatField;
    MasterOCICCrossSubsidyCharge: TFloatField;
    MasterOCPowerActRateRed: TFloatField;
    MasterOCLifelineDiscSubs: TFloatField;
    MasterOCLoanCondo: TFloatField;
    MasterOCTransformerRental: TFloatField;
    MasterOCOCCode1: TStringField;
    MasterOCOCAmount1: TFloatField;
    MasterOCOCMo1: TFloatField;
    MasterOCOCTotal1: TFloatField;
    MasterOCOCCode2: TStringField;
    MasterOCOCAmount2: TFloatField;
    MasterOCOCMo2: TFloatField;
    MasterOCOCTotal2: TFloatField;
    MasterOCOCCode3: TStringField;
    MasterOCOCAmount3: TFloatField;
    MasterOCOCMo3: TFloatField;
    MasterOCOCTotal3: TFloatField;
    MasterOCTotalBill: TFloatField;
    MasterOCBillNumber: TStringField;
    MasterOCOEBRNumber: TStringField;
    MasterOCBillMonth: TStringField;
    MasterOCDeleteRemarks: TStringField;
    MasterOCPoleNumber: TStringField;
    MasterOCFeederNumber: TStringField;
    MasterOCXFormerQty: TIntegerField;
    MasterOCXFormerKVA: TStringField;
    MasterOCAge30: TFloatField;
    MasterOCAge60: TFloatField;
    MasterOCAge90: TFloatField;
    MasterOCAge120: TFloatField;
    MasterOCAgeOver120: TFloatField;
    MasterOCAgeTotal: TFloatField;
    MasterOCTotalPayments: TFloatField;
    MasterOCARBalance: TFloatField;
    MasterOCLCCustMo: TFloatField;
    MasterOCPrevYearAdjPowerCost: TFloatField;
    MasterOCSysLossUnderRecov: TFloatField;
    MasterOCVATDisc: TFloatField;
    MasterOCVATDiscAmt: TFloatField;
    MasterOCVATDistDiscAmt: TFloatField;
    MasterOCVATGenCoDiscAmt: TFloatField;
    MasterOCVATTransCoDiscAmt: TFloatField;
    MasterOCVATSystemLossDiscAmt: TFloatField;
    MasterOCVATDist: TFloatField;
    MasterOCVATGenCO: TFloatField;
    MasterOCVATTransCO: TFloatField;
    MasterOCVATSystemLossGenCO: TFloatField;
    MasterOCVATSystemLossTransCO: TFloatField;
    MasterOCVAT: TFloatField;
    MasterOCDiffBillPerKwhr: TFloatField;
    MasterOCDiffBillPerKW: TFloatField;
    MasterOCDiffBillPerCust: TFloatField;
    MasterOCMCC: TFloatField;
    MasterOCPKVROebrNumber: TStringField;
    MasterOCPKVRBillMonth: TStringField;
    MasterOCPKVRAmount: TFloatField;
    MasterOCSCDisc: TFloatField;
    MasterOCWRateCode: TStringField;
    MasterOCSCAmt4Disc: TFloatField;
    MasterOCDWLEN1: TFloatField;
    MasterOCDWLEN2: TFloatField;
    MasterOCCBook: TStringField;
    OCBillingidocdetail: TLongWordField;
    CRDBGrid5: TCRDBGrid1;
    CRDBGrid1: TCRDBGrid1;
    CRDBGrid2: TCRDBGrid1;
    CRDBGrid4: TCRDBGrid1;
    SaveDialog1: TSaveDialog;
    MasterCBemptQ: TMyQuery;
    masterCBemptS: TMyDataSource;
    NxButton2: TNxButton;
    panelCompleteCbook: TNxHeaderPanel;
    NxLinkLabel4: TNxLinkLabel;
    SelectedCBQ: TMyQuery;
    SelectedcbS: TMyDataSource;
    MasterCBemptQCode: TIntegerField;
    MasterCBemptQArea: TStringField;
    MasterCBemptQBook: TStringField;
    MasterCBemptQSequence: TStringField;
    MasterCBemptQAccountNumber: TStringField;
    MasterCBemptQName: TStringField;
    MasterCBemptQAddress: TStringField;
    MasterCBemptQRateCode: TStringField;
    MasterCBemptQConsCode: TStringField;
    MasterCBemptQConnCode: TStringField;
    MasterCBemptQTransformer: TStringField;
    MasterCBemptQMeterBrand: TStringField;
    MasterCBemptQSerial: TStringField;
    MasterCBemptQMultiplier: TFloatField;
    MasterCBemptQNewConnectionDate: TDateField;
    MasterCBemptQReconnectionDate: TDateField;
    MasterCBemptQDisconnectionDate: TDateField;
    MasterCBemptQPreviousReadingDate: TDateField;
    MasterCBemptQPresentReadingDate: TDateField;
    MasterCBemptQPreviousReadingKWH: TFloatField;
    MasterCBemptQPresentReadingKWH: TFloatField;
    MasterCBemptQDiff: TFloatField;
    MasterCBemptQDemand: TFloatField;
    MasterCBemptQFlatRateWattage: TFloatField;
    MasterCBemptQFeedBackCode: TStringField;
    MasterCBemptQCM: TStringField;
    MasterCBemptQCMMultiplier: TFloatField;
    MasterCBemptQCMPreviousReadingKWH: TFloatField;
    MasterCBemptQCMPresentReadingKWH: TFloatField;
    MasterCBemptQCMKilowattHour: TFloatField;
    MasterCBemptQCMDemand: TFloatField;
    MasterCBemptQKilowattHour: TFloatField;
    MasterCBemptQKilowattUsed: TFloatField;
    MasterCBemptQGenSysCharge: TFloatField;
    MasterCBemptQHostCommCharge: TFloatField;
    MasterCBemptQForexCharge: TFloatField;
    MasterCBemptQTCDemandCharge: TFloatField;
    MasterCBemptQTCTransSystemCharge: TFloatField;
    MasterCBemptQSystemLossCharge: TFloatField;
    MasterCBemptQDCDemandCharge: TFloatField;
    MasterCBemptQDCDistributionCharge: TFloatField;
    MasterCBemptQSCRetCustCharge: TFloatField;
    MasterCBemptQSCSupplySysCharge: TFloatField;
    MasterCBemptQMCRetailCustCharge: TFloatField;
    MasterCBemptQMCSystemCharge: TFloatField;
    MasterCBemptQUCNPCStrandedDebts: TFloatField;
    MasterCBemptQUCNPCStrandedContCost: TFloatField;
    MasterCBemptQUCDUStrandedContCost: TFloatField;
    MasterCBemptQUCME: TFloatField;
    MasterCBemptQUCEqTaxesAndRoyalties: TFloatField;
    MasterCBemptQUCEC: TFloatField;
    MasterCBemptQUCCrossSubRemoval: TFloatField;
    MasterCBemptQICCrossSubsidyCharge: TFloatField;
    MasterCBemptQPowerActRateRed: TFloatField;
    MasterCBemptQLifelineDiscSubs: TFloatField;
    MasterCBemptQLoanCondo: TFloatField;
    MasterCBemptQTransformerRental: TFloatField;
    MasterCBemptQOCCode1: TStringField;
    MasterCBemptQOCAmount1: TFloatField;
    MasterCBemptQOCMo1: TFloatField;
    MasterCBemptQOCTotal1: TFloatField;
    MasterCBemptQOCCode2: TStringField;
    MasterCBemptQOCAmount2: TFloatField;
    MasterCBemptQOCMo2: TFloatField;
    MasterCBemptQOCTotal2: TFloatField;
    MasterCBemptQOCCode3: TStringField;
    MasterCBemptQOCAmount3: TFloatField;
    MasterCBemptQOCMo3: TFloatField;
    MasterCBemptQOCTotal3: TFloatField;
    MasterCBemptQTotalBill: TFloatField;
    MasterCBemptQBillNumber: TStringField;
    MasterCBemptQOEBRNumber: TStringField;
    MasterCBemptQBillMonth: TStringField;
    MasterCBemptQDeleteRemarks: TStringField;
    MasterCBemptQPoleNumber: TStringField;
    MasterCBemptQFeederNumber: TStringField;
    MasterCBemptQXFormerQty: TIntegerField;
    MasterCBemptQXFormerKVA: TStringField;
    MasterCBemptQAge30: TFloatField;
    MasterCBemptQAge60: TFloatField;
    MasterCBemptQAge90: TFloatField;
    MasterCBemptQAge120: TFloatField;
    MasterCBemptQAgeOver120: TFloatField;
    MasterCBemptQAgeTotal: TFloatField;
    MasterCBemptQTotalPayments: TFloatField;
    MasterCBemptQARBalance: TFloatField;
    MasterCBemptQLCCustMo: TFloatField;
    MasterCBemptQPrevYearAdjPowerCost: TFloatField;
    MasterCBemptQSysLossUnderRecov: TFloatField;
    MasterCBemptQVATDisc: TFloatField;
    MasterCBemptQVATDiscAmt: TFloatField;
    MasterCBemptQVATDistDiscAmt: TFloatField;
    MasterCBemptQVATGenCoDiscAmt: TFloatField;
    MasterCBemptQVATTransCoDiscAmt: TFloatField;
    MasterCBemptQVATSystemLossDiscAmt: TFloatField;
    MasterCBemptQVATDist: TFloatField;
    MasterCBemptQVATGenCO: TFloatField;
    MasterCBemptQVATTransCO: TFloatField;
    MasterCBemptQVATSystemLossGenCO: TFloatField;
    MasterCBemptQVATSystemLossTransCO: TFloatField;
    MasterCBemptQVAT: TFloatField;
    MasterCBemptQDiffBillPerKwhr: TFloatField;
    MasterCBemptQDiffBillPerKW: TFloatField;
    MasterCBemptQDiffBillPerCust: TFloatField;
    MasterCBemptQMCC: TFloatField;
    MasterCBemptQPKVROebrNumber: TStringField;
    MasterCBemptQPKVRBillMonth: TStringField;
    MasterCBemptQPKVRAmount: TFloatField;
    MasterCBemptQSCDisc: TFloatField;
    MasterCBemptQWRateCode: TStringField;
    MasterCBemptQSCAmt4Disc: TFloatField;
    MasterCBemptQDWLEN1: TFloatField;
    MasterCBemptQDWLEN2: TFloatField;
    MasterCBemptQCBook: TStringField;
    MasterCBemptQRPTax: TFloatField;
    MasterCBemptQRateOrder: TStringField;
    MasterCBemptQBTax: TFloatField;
    MasterCBemptQRateOrderNo: TIntegerField;
    MasterCBemptQOtherGenRateAdj: TFloatField;
    MasterCBemptQOtherTransCostAdj: TFloatField;
    MasterCBemptQOtherTransDemandCostAdj: TFloatField;
    MasterCBemptQOtherSystemLossCostAdj: TFloatField;
    MasterCBemptQOtherLifelineRateCostAdj: TFloatField;
    MasterCBemptQOtherSeniorCitizenRateAdj: TFloatField;
    MasterCBemptQFitall: TFloatField;
    AssignCipherPanel: TNxHeaderPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label2: TLabel;
    Area1: TNxEdit;
    Book1: TNxEdit;
    From1: TNxEdit;
    To1: TNxEdit;
    Area2: TNxEdit;
    Book2: TNxEdit;
    From2: TNxEdit;
    To2: TNxEdit;
    Area3: TNxEdit;
    Book3: TNxEdit;
    From3: TNxEdit;
    To3: TNxEdit;
    Area4: TNxEdit;
    Book4: TNxEdit;
    From4: TNxEdit;
    To4: TNxEdit;
    NxButton6: TNxButton;
    CB: TNxEdit;
    NxLinkLabel2: TNxLinkLabel;
    CRDBGrid7: TCRDBGrid;
    NxLinkLabel5: TNxLinkLabel;
    NxLinkLabel6: TNxLinkLabel;
    NxLinkLabel7: TNxLinkLabel;
    Panel1: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    NxLinkLabel8: TNxLinkLabel;
    NxLinkLabel9: TNxLinkLabel;
    dbArea: TDBEdit;
    dbBook: TDBEdit;
    dbStart: TDBEdit;
    dbEnd: TDBEdit;
    dbCbook: TDBEdit;
    NxButton11: TNxButton;
    Button1: TButton;
    NxButton10: TNxButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    assigncbQ: TMyQuery;
    assigncbQid: TLongWordField;
    assigncbQcbook: TStringField;
    assigncbQarea: TStringField;
    assigncbQbook: TStringField;
    assigncbQstartAccnt: TStringField;
    assigncbQendAccnt: TStringField;
    assigncbS: TMyDataSource;
    SelectedCBQcbook: TStringField;
    SelectedCBQarea: TStringField;
    SelectedCBQbook: TStringField;
    SelectedCBQstartacct: TStringField;
    SelectedCBQEndAcct: TStringField;
    SelectedCBQtcons: TLargeintField;
    SelectedCBQaddress: TStringField;
    CipherBookRangecbook: TStringField;
    NxButton7: TNxButton;
    NxPageControl1: TNxPageControl;
    NxTabSheet1: TNxTabSheet;
    CRDBGrid6: TCRDBGrid;
    CRDBGrid11: TCRDBGrid1;
    NxTabSheet2: TNxTabSheet;
    CRDBGrid8: TCRDBGrid;
    emptyRcodeQ: TMyQuery;
    emptyRcodeS: TMyDataSource;
    emptyRcodeQCode: TIntegerField;
    emptyRcodeQArea: TStringField;
    emptyRcodeQBook: TStringField;
    emptyRcodeQSequence: TStringField;
    emptyRcodeQAccountNumber: TStringField;
    emptyRcodeQName: TStringField;
    emptyRcodeQAddress: TStringField;
    emptyRcodeQRateCode: TStringField;
    emptyRcodeQConsCode: TStringField;
    emptyRcodeQConnCode: TStringField;
    emptyRcodeQTransformer: TStringField;
    emptyRcodeQMeterBrand: TStringField;
    emptyRcodeQSerial: TStringField;
    emptyRcodeQMultiplier: TFloatField;
    emptyRcodeQNewConnectionDate: TDateField;
    emptyRcodeQReconnectionDate: TDateField;
    emptyRcodeQDisconnectionDate: TDateField;
    emptyRcodeQPreviousReadingDate: TDateField;
    emptyRcodeQPresentReadingDate: TDateField;
    emptyRcodeQPreviousReadingKWH: TFloatField;
    emptyRcodeQPresentReadingKWH: TFloatField;
    emptyRcodeQDiff: TFloatField;
    emptyRcodeQDemand: TFloatField;
    emptyRcodeQFlatRateWattage: TFloatField;
    emptyRcodeQFeedBackCode: TStringField;
    emptyRcodeQCM: TStringField;
    emptyRcodeQCMMultiplier: TFloatField;
    emptyRcodeQCMPreviousReadingKWH: TFloatField;
    emptyRcodeQCMPresentReadingKWH: TFloatField;
    emptyRcodeQCMKilowattHour: TFloatField;
    emptyRcodeQCMDemand: TFloatField;
    emptyRcodeQKilowattHour: TFloatField;
    emptyRcodeQKilowattUsed: TFloatField;
    emptyRcodeQGenSysCharge: TFloatField;
    emptyRcodeQHostCommCharge: TFloatField;
    emptyRcodeQForexCharge: TFloatField;
    emptyRcodeQTCDemandCharge: TFloatField;
    emptyRcodeQTCTransSystemCharge: TFloatField;
    emptyRcodeQSystemLossCharge: TFloatField;
    emptyRcodeQDCDemandCharge: TFloatField;
    emptyRcodeQDCDistributionCharge: TFloatField;
    emptyRcodeQSCRetCustCharge: TFloatField;
    emptyRcodeQSCSupplySysCharge: TFloatField;
    emptyRcodeQMCRetailCustCharge: TFloatField;
    emptyRcodeQMCSystemCharge: TFloatField;
    emptyRcodeQUCNPCStrandedDebts: TFloatField;
    emptyRcodeQUCNPCStrandedContCost: TFloatField;
    emptyRcodeQUCDUStrandedContCost: TFloatField;
    emptyRcodeQUCME: TFloatField;
    emptyRcodeQUCEqTaxesAndRoyalties: TFloatField;
    emptyRcodeQUCEC: TFloatField;
    emptyRcodeQUCCrossSubRemoval: TFloatField;
    emptyRcodeQICCrossSubsidyCharge: TFloatField;
    emptyRcodeQPowerActRateRed: TFloatField;
    emptyRcodeQLifelineDiscSubs: TFloatField;
    emptyRcodeQLoanCondo: TFloatField;
    emptyRcodeQTransformerRental: TFloatField;
    emptyRcodeQOCCode1: TStringField;
    emptyRcodeQOCAmount1: TFloatField;
    emptyRcodeQOCMo1: TFloatField;
    emptyRcodeQOCTotal1: TFloatField;
    emptyRcodeQOCCode2: TStringField;
    emptyRcodeQOCAmount2: TFloatField;
    emptyRcodeQOCMo2: TFloatField;
    emptyRcodeQOCTotal2: TFloatField;
    emptyRcodeQOCCode3: TStringField;
    emptyRcodeQOCAmount3: TFloatField;
    emptyRcodeQOCMo3: TFloatField;
    emptyRcodeQOCTotal3: TFloatField;
    emptyRcodeQTotalBill: TFloatField;
    emptyRcodeQBillNumber: TStringField;
    emptyRcodeQOEBRNumber: TStringField;
    emptyRcodeQBillMonth: TStringField;
    emptyRcodeQDeleteRemarks: TStringField;
    emptyRcodeQPoleNumber: TStringField;
    emptyRcodeQFeederNumber: TStringField;
    emptyRcodeQXFormerQty: TIntegerField;
    emptyRcodeQXFormerKVA: TStringField;
    emptyRcodeQAge30: TFloatField;
    emptyRcodeQAge60: TFloatField;
    emptyRcodeQAge90: TFloatField;
    emptyRcodeQAge120: TFloatField;
    emptyRcodeQAgeOver120: TFloatField;
    emptyRcodeQAgeTotal: TFloatField;
    emptyRcodeQTotalPayments: TFloatField;
    emptyRcodeQARBalance: TFloatField;
    emptyRcodeQLCCustMo: TFloatField;
    emptyRcodeQPrevYearAdjPowerCost: TFloatField;
    emptyRcodeQSysLossUnderRecov: TFloatField;
    emptyRcodeQVATDisc: TFloatField;
    emptyRcodeQVATDiscAmt: TFloatField;
    emptyRcodeQVATDistDiscAmt: TFloatField;
    emptyRcodeQVATGenCoDiscAmt: TFloatField;
    emptyRcodeQVATTransCoDiscAmt: TFloatField;
    emptyRcodeQVATSystemLossDiscAmt: TFloatField;
    emptyRcodeQVATDist: TFloatField;
    emptyRcodeQVATGenCO: TFloatField;
    emptyRcodeQVATTransCO: TFloatField;
    emptyRcodeQVATSystemLossGenCO: TFloatField;
    emptyRcodeQVATSystemLossTransCO: TFloatField;
    emptyRcodeQVAT: TFloatField;
    emptyRcodeQDiffBillPerKwhr: TFloatField;
    emptyRcodeQDiffBillPerKW: TFloatField;
    emptyRcodeQDiffBillPerCust: TFloatField;
    emptyRcodeQMCC: TFloatField;
    emptyRcodeQPKVROebrNumber: TStringField;
    emptyRcodeQPKVRBillMonth: TStringField;
    emptyRcodeQPKVRAmount: TFloatField;
    emptyRcodeQSCDisc: TFloatField;
    emptyRcodeQWRateCode: TStringField;
    emptyRcodeQSCAmt4Disc: TFloatField;
    emptyRcodeQDWLEN1: TFloatField;
    emptyRcodeQDWLEN2: TFloatField;
    emptyRcodeQCBook: TStringField;
    emptyRcodeQRPTax: TFloatField;
    emptyRcodeQRateOrder: TStringField;
    emptyRcodeQBTax: TFloatField;
    emptyRcodeQRateOrderNo: TIntegerField;
    emptyRcodeQOtherGenRateAdj: TFloatField;
    emptyRcodeQOtherTransCostAdj: TFloatField;
    emptyRcodeQOtherTransDemandCostAdj: TFloatField;
    emptyRcodeQOtherSystemLossCostAdj: TFloatField;
    emptyRcodeQOtherLifelineRateCostAdj: TFloatField;
    emptyRcodeQOtherSeniorCitizenRateAdj: TFloatField;
    emptyRcodeQFitall: TFloatField;
    NxLinkLabel10: TNxLinkLabel;
    NxLinkLabel11: TNxLinkLabel;
    AverageQ: TMyQuery;
    sampleQ: TMyQuery;
    AveUpdateQ: TMyQuery;
    AveInsertQ: TMyQuery;
    AverageQcode: TFloatField;
    AverageQaccountnumber: TStringField;
    AverageQname: TStringField;
    AverageQaveKwh: TFloatField;
    AverageQcbook: TStringField;
    AverageQprevKwhused: TMemoField;
    AverageQbillmonthprev: TMemoField;
    AverageQbillmonth: TStringField;
    UploadH: TMyQuery;
    StringField1: TStringField;
    Upload2DOWNLOAD: TStringField;
    CRDBGrid3: TCRDBGrid1;
    contactQ: TMyQuery;
    contactQtelno: TStringField;
    procedure RBCalcFields(DataSet: TDataSet);
    procedure NxButton1Click(Sender: TObject);
    procedure NxButton4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Area1KeyPress(Sender: TObject; var Key: Char);
    procedure Timer1Timer(Sender: TObject);
    procedure NxButton3Click(Sender: TObject);
    procedure NxButton5Click(Sender: TObject);
    procedure NxButton6Click(Sender: TObject);
    procedure NxLinkLabel1Click(Sender: TObject);
    procedure NxLinkLabel3Click(Sender: TObject);
    procedure dsCipherBookDataChange(Sender: TObject; Field: TField);
    procedure NxLinkLabel2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dsRBDataChange(Sender: TObject; Field: TField);
    procedure NxButton2Click(Sender: TObject);
    procedure NxLinkLabel4Click(Sender: TObject);
    procedure CRDBGrid6CellClick(Column: TColumn);
    procedure CRDBGrid6KeyPress(Sender: TObject; var Key: Char);
    procedure NxButton10Click(Sender: TObject);
    procedure NxButton11Click(Sender: TObject);
    procedure SelectAssigncb();
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure NxLinkLabel5Click(Sender: TObject);
    procedure NxLinkLabel9Click(Sender: TObject);
    procedure NxLinkLabel8Click(Sender: TObject);
    procedure NxLinkLabel6Click(Sender: TObject);
    procedure CRDBGrid7CellClick(Column: TColumn);
    procedure CRDBGrid4CellClick(Column: TColumn);
    procedure NxLinkLabel7Click(Sender: TObject);
    procedure NxButton7Click(Sender: TObject);
    procedure CRDBGrid8KeyPress(Sender: TObject; var Key: Char);
    procedure NxLinkLabel11Click(Sender: TObject);
    procedure NxLinkLabel10Click(Sender: TObject);
  private
    { Private declarations }
    function OpenConnection : Boolean;
    procedure UploadProcedure;

  public
    { Public declarations }
  end;

var
  ReadandBillForm  : TReadandBillForm;
  TargetFile : Text;
  BillMonthArray : Array[1..3] of String[5];
  CBook          : Array[0..3] of String[6];
  billmonthPrev  : Array[0..2] of String[6];
  Lst            : Text;
  assignSelectTmp: Integer;
  CB1,CB2,CB3,CB4:String;

implementation
uses Data, ModTools, Math, intro, BillMasterMainRecord;

{$R *.dfm}


function TReadandBillForm.OpenConnection : Boolean;
  var n : Longint;
begin
  n := CeRapiInit;
  Result :=  n = 0;
end;

procedure TReadandBillForm.UploadProcedure;
var BillMonthArray : Array[1..3] of String[5];
    Mon,Yr         : Word;
    Check          : Integer;
    MonStr,YrStr   : String[2];
    I,B            : Integer;
    IOC            : Integer;
    monthStr       : String;
    yearStr        : String;
    monthInt       : Integer;
    yearInt        : Integer;
    billmonth1     : String;
    billmonth2     : String;
    billmonth3     : String;
    billmonthTmp   : String;
    prevKwhStr     : String;
    prevBillmonStr : String;
begin
   
  If BillMonth.Text = '' then
   begin
     MessageDlg('Billmonth is empty', mtError, [mbOK], 0);
     exit;
   end;

  If MeterReader.Text = '' then
   begin
     MessageDlg('Meter Reader is empty', mtError, [mbOK], 0);
     exit;
   end;

  FillChar(CBook,SizeOf(CBook),#0);

  if CRDBGrid3.SelectedRows.Count > 4 then
    begin
      MessageDlg('Only 4 cipher books are allowed...', mtError, [mbOK], 0);
      exit;
    end;

    with CRDBGrid3.DataSource.DataSet do
    begin
      for i := 0 to CRDBGrid3.SelectedRows.Count-1 do
      begin
        GotoBookmark(Pointer(CRDBGrid3.SelectedRows.Items[i]));
        CBook[I] := RBCBook.Text;
      end;
    end;

  if (MessageDlg('Will upload the Cipherbook(s) '+CBook[0]+' '+CBook[1]+' '+CBook[2]+' '+CBook[3]+#13+#10+'Proceed?', mtConfirmation, [mbYes, mbCancel], 0) in [mrCancel, mrNone]) then exit;

  CheckRate.Close;
  CheckRate.SQL.Clear;
  CheckRate.SQL.Add('select * from meterrate where mbillmonth = :bm');
  CheckRate.ParamByName('bm').Text := BillMonth.Text;
  CheckRate.Open;

  If CheckRate.IsEmpty then
   begin
     MessageDlg('Bill Month '+BillMonth.Text+' not found in rate file...', mtError, [mbOK], 0);
     CheckRate.Close;
     exit;
   end;

  If RB.Active = false then
   begin
     MessageDlg('Select a bill month first', mtWarning, [mbOK], 0);
     exit;
   end;

  for i := 0 to CRDBGrid3.SelectedRows.Count-1 do
    begin
      InitOC.ParamByName('CBook').Text := CBook[I];
      InitOC.Execute;
    end;

  for i := 0 to CRDBGrid3.SelectedRows.Count-1 do
    begin
      MasterOC.Close;
      MasterOC.ParamByName('CBook').Text := CBook[I];
      MasterOC.Open;
      Gauge1.Progress := 0;

      WhIle not MasterOC.Eof do
        begin
          Gauge1.AddProgress(1);
          OCBilling.Close;
          OCBilling.ParamByName('Code').Text := MasterOCCode.Text;
          OCBilling.Open;

          IOC := 0;

          MasterOC.Edit;

          while not OCBilling.Eof do
          begin
          Inc(IOC);

          case IOC of
          1 : begin
                MasterOCOCCode1.Text         := OCBillingoccode.Text;
                MasterOCOCAmount1.AsCurrency := OCBillingamount.AsCurrency;
                MasterOCOCTotal1.AsFloat     := OCBillingidocdetail.AsFloat;
              end;
          2 : begin
                MasterOCOCCode2.Text         := OCBillingoccode.Text;
                MasterOCOCAmount2.AsCurrency := OCBillingamount.AsCurrency;
                MasterOCOCTotal2.AsFloat     := OCBillingidocdetail.AsFloat;
              end;
          3 : begin
                MasterOCOCCode3.Text         := OCBillingoccode.Text;
                MasterOCOCAmount3.AsCurrency := OCBillingamount.AsCurrency;
                MasterOCOCTotal3.AsFloat     := OCBillingidocdetail.AsFloat;
              end;
          end;
          OCBilling.Next;
          end;

          MasterOC.Post;

          MasterOC.Next;
        end;
    end;

  MasterOC.Close;
  OCBilling.Close;

  Gauge1.Progress := 0;

  Val(Copy(BillMonth.Text,1,2),Mon,Check);
  Val(Copy(BillMonth.Text,3,2),Yr,Check);

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

   //==========Filter Prev. Month for Consistent and Verified Reading
   //================================================================
   billmonthTmp := BillMonth.Text;

    monthInt := StrToInt(Copy(billmonthTmp,1,2));
    yearInt  := StrToInt(Copy(billmonthTmp,3,2));

    for B := 0 to 2 do begin
        monthInt := monthInt -1;
        if monthInt <1 then begin
          monthInt := 12;
          yearInt := yearInt-1;
        end;

        monthStr := IntToStr(monthInt);
        yearStr := IntToStr(yearInt);

        if monthInt<10 then monthStr := '0'+IntToStr(monthInt);
        if yearInt<10 then yearStr := '0'+IntToStr(yearInt);

        billmonthPrev[B] :=  monthStr + yearStr;
    end;
   //=================================================================
   //=================================================================
   Upload2.MacroByName('isfixDemand').Active := false;
   Upload2.MacroByName('residential').Active := true;
   Upload2.MacroByName('Android').Active     := false;


  case RadioGroup1.ItemIndex of
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

           ParamByName('Name').Text        := MeterReader.Text+' '+RBCBook.Text;
           ParamByName('BM').Text          := BillMonth.Text;
           ParamByName('cbook').Text       := CBook[0];
           ParamByName('cbook1').Text      := CBook[1];
           ParamByName('cbook2').Text      := CBook[2];
           ParamByName('cbook3').Text      := CBook[3];

           Open;
           First;
         end;

        Gauge1.MinValue := 0;
        Gauge1.MaxValue := Upload.RecordCount;
        Gauge1.Progress := 0;

        Timer1.Enabled := True;

      end;
  1 : begin
        if OpenConnection then
         begin
           if not DirectoryExists('d:\MobileTransfer') then MkDir('d:\MobileTransfer');


           with Upload2 do
            begin
             Close;

             //Fitering Industrial records================
             //===========================================
             {case RadioGroup1.ItemIndex of
                0:begin
                  MacroByName('industrial').Active := false;
                end;
                1:begin
                  MacroByName('industrial').Active := true;
                end;
              end;}
              //===========================================
              //===========================================
             Upload2.MacroByName('residential').Active := false;
             ParamByName('Name').Text        := MeterReader.Text+' '+RBCBook.Text;
             ParamByName('BM').Text          := BillMonth.Text;
             ParamByName('telno').Text       := contactQtelno.Text;
             ParamByName('cbook').Text       := CBook[0];
             ParamByName('cbook1').Text      := CBook[1];
             ParamByName('cbook2').Text      := CBook[2];
             ParamByName('cbook3').Text      := CBook[3];

             //ParamByName('Area').Text        := '0' + Copy(CBook[0],1,2);
             //ParamByName('Area1').Text       := '0' + Copy(CBook[1],1,2);
             //ParamByName('Area2').Text       := '0' + Copy(CBook[2],1,2);
             //ParamByName('Area3').Text       := '0' + Copy(CBook[3],1,2);

             ParamByName('billmonth1').Text  :=  billmonthPrev[0];
             ParamByName('billmonth2').Text  :=  billmonthPrev[1];
             ParamByName('billmonth3').Text  :=  billmonthPrev[2];

             open;
           end;

           if Upload2.RecordCount = 0 then
            begin
              MessageDlg('No records found', mtWarning, [mbOK], 0);
              exit;
            end;

            Upload2.First;
            Gauge1.MinValue := 1;
            Gauge1.MaxValue := Upload2.RecordCount;
            Gauge1.Progress := 1;

            AssignFile(lst,'d:\MobileTransfer\UPLOAD.TXT');
            Rewrite(lst);

            while not Upload2.Eof do
            begin
              Gauge1.AddProgress(1);
              Application.ProcessMessages;
              Writeln(lst,Upload2DOWNLOAD.text);
              Upload2.Next;
            end;

           CloseFile(Lst);

           CopyFileToDevice('d:\MobileTransfer\UPLOAD.TXT', '\DiskOnChip\ZANECO\UPLOAD.TXT', True);

           CeRapiUninit;

           if CBook[0] <> #0 then
           begin
             UpdateRB.ParamByName('CBook').Text              := CBook[0];
             UpdateRB.ParamByName('billmonth').Text          := BillMonth.Text;
             UpdateRB.ParamByName('meterreader').Text        := MeterReader.Text;
             UpdateRB.ParamByName('DateUploaded').AsDateTime := Now();
             UpdateRB.Execute;
           end;

           if CBook[1] <> #0 then
           begin
             UpdateRB.ParamByName('CBook').Text              := CBook[1];
             UpdateRB.ParamByName('billmonth').Text          := BillMonth.Text;
             UpdateRB.ParamByName('meterreader').Text        := MeterReader.Text;
             UpdateRB.ParamByName('DateUploaded').AsDateTime := Now();
             UpdateRB.Execute;
           end;

           if CBook[2] <> #0 then
           begin
             UpdateRB.ParamByName('CBook').Text              := CBook[2];
             UpdateRB.ParamByName('billmonth').Text          := BillMonth.Text;
             UpdateRB.ParamByName('meterreader').Text        := MeterReader.Text;
             UpdateRB.ParamByName('DateUploaded').AsDateTime := Now();
             UpdateRB.Execute;
           end;

           if CBook[3] <> #0 then
           begin
             UpdateRB.ParamByName('CBook').Text              := CBook[3];
             UpdateRB.ParamByName('billmonth').Text          := BillMonth.Text;
             UpdateRB.ParamByName('meterreader').Text        := MeterReader.Text;
             UpdateRB.ParamByName('DateUploaded').AsDateTime := Now();
             UpdateRB.Execute;
           end;

           RB.Refresh;
           MeterReader.Text := '';

           //=====================================================
           //=====================================================

           AverageQ.Close;
           //AverageQ.ParamByname('billmonth').Text     := billmonthTmp;
           AverageQ.ParamByname('billmonth1').Text    := billmonthPrev[0];
           AverageQ.ParamByname('billmonth2').Text    := billmonthPrev[1];
           AverageQ.ParamByname('billmonth3').Text    := billmonthPrev[2];
           AverageQ.ParamByname('cbook').Text         := CBook[0];
           AverageQ.ParamByname('cbook1').Text        := CBook[1];
           AverageQ.ParamByname('cbook2').Text        := CBook[2];
           AverageQ.ParamByname('cbook3').Text        := CBook[3];
           AverageQ.Open;
           AverageQ.First;

           Gauge1.MinValue := 1;
           Gauge1.MaxValue := AverageQ.RecordCount;
           Gauge1.Progress := 1;

           while not AverageQ.Eof do  begin
              prevKwhStr     := AverageQ.FieldByName('prevKwhused').AsString;
              prevBillmonStr := AverageQ.FieldByName('billmonthprev').AsString;

              AveInsertQ.ParamByName('code').Text           := AverageQcode.Text;
              AveInsertQ.ParamByName('accountnumber').Text  := AverageQaccountnumber.Text;
              AveInsertQ.ParamByName('name').Text           := AverageQname.Text;
              AveInsertQ.ParamByName('prevKwh').Text        := prevKwhStr;
              AveInsertQ.ParamByName('prevBillmonth').Text  := prevBillmonStr;
              AveInsertQ.ParamByName('averageKwh').AsFloat  := AverageQaveKwh.AsFloat;
              AveInsertQ.ParamByName('billmonth').Text      := billmonthTmp;
              AveInsertQ.ParamByName('cbook').Text          := AverageQcbook.Text;

              try
                  AveInsertQ.Execute;
              Except
                  AveUpdateQ.ParamByName('code').Text           := AverageQcode.Text;
                  AveUpdateQ.ParamByName('accountnumber').Text  := AverageQaccountnumber.Text;
                  AveUpdateQ.ParamByName('name').Text           := AverageQname.Text;
                  AveUpdateQ.ParamByName('prevKwh').Text        := prevKwhStr;
                  AveUpdateQ.ParamByName('prevBillmonth').Text  := prevBillmonStr;
                  AveUpdateQ.ParamByName('averageKwh').AsFloat  := AverageQaveKwh.AsFloat;
                  AveUpdateQ.ParamByName('billmonth').Text      := billmonthTmp;
                  AveUpdateQ.ParamByName('cbook').Text          := AverageQcbook.Text;
                  AveUpdateQ.Execute;
              end;

              Gauge1.AddProgress(1);
              Application.ProcessMessages;
              AverageQ.Next;
           end;

           MessageDlg('Done Uploading to WinCe Device', mtWarning, [mbOK], 0);
         end
        else
         begin
           CeRapiUninit;
           MessageDlg('Could not establish connection to WinCe Device', mtWarning, [mbOK], 0);
         end;
      end;
  2 : begin
           if CBook[0] <> #0 then
           begin
             UpdateRB.ParamByName('CBook').Text              := CBook[0];
             UpdateRB.ParamByName('billmonth').Text          := BillMonth.Text;
             UpdateRB.ParamByName('meterreader').Text        := MeterReader.Text;
             UpdateRB.ParamByName('DateUploaded').AsDateTime := Now();
             UpdateRB.Execute;
           end;

           if CBook[1] <> #0 then
           begin
             UpdateRB.ParamByName('CBook').Text              := CBook[1];
             UpdateRB.ParamByName('billmonth').Text          := BillMonth.Text;
             UpdateRB.ParamByName('meterreader').Text        := MeterReader.Text;
             UpdateRB.ParamByName('DateUploaded').AsDateTime := Now();
             UpdateRB.Execute;
           end;

           if CBook[2] <> #0 then
           begin
             UpdateRB.ParamByName('CBook').Text              := CBook[2];
             UpdateRB.ParamByName('billmonth').Text          := BillMonth.Text;
             UpdateRB.ParamByName('meterreader').Text        := MeterReader.Text;
             UpdateRB.ParamByName('DateUploaded').AsDateTime := Now();
             UpdateRB.Execute;
           end;

           if CBook[3] <> #0 then
           begin
             UpdateRB.ParamByName('CBook').Text              := CBook[3];
             UpdateRB.ParamByName('billmonth').Text          := BillMonth.Text;
             UpdateRB.ParamByName('meterreader').Text        := MeterReader.Text;
             UpdateRB.ParamByName('DateUploaded').AsDateTime := Now();
             UpdateRB.Execute;
           end;
      end;
  3 : begin
        if SaveDialog1.Execute then
         begin
           with Upload2 do
            begin
             Close;

             //Fitering Industrial records================
             //===========================================
             {case RadioGroup1.ItemIndex of
                0:begin
                  MacroByName('industrial').Active := false;
                end;
                1:begin
                  MacroByName('industrial').Active := true;
                end;
              end;}
              //===========================================
              //===========================================
             MacroByName('isfixDemand').Active       := true;
             MacroByName('residential').Active       := false;
             MacroByName('Android').Active     := true;
             ParamByName('Name').Text          := MeterReader.Text+' '+RBCBook.Text;
             ParamByName('BM').Text            := BillMonth.Text;
             ParamByName('telno').Text         := contactQtelno.Text;
             ParamByName('cbook').Text         := CBook[0];
             ParamByName('cbook1').Text        := CBook[1];
             ParamByName('cbook2').Text        := CBook[2];
             ParamByName('cbook3').Text        := CBook[3];

             //ParamByName('Area').Text          := '0' + Copy(CBook[0],1,2);
             //ParamByName('Area1').Text         := '0' + Copy(CBook[1],1,2);
             //ParamByName('Area2').Text         := '0' + Copy(CBook[2],1,2);
             //ParamByName('Area3').Text         := '0' + Copy(CBook[3],1,2);

             ParamByName('billmonth1').Text    :=  billmonthPrev[0];
             ParamByName('billmonth2').Text    :=  billmonthPrev[1];
             ParamByName('billmonth3').Text    :=  billmonthPrev[2];

             open;
           end;

           if Upload2.RecordCount = 0 then
            begin
              MessageDlg('No records found', mtWarning, [mbOK], 0);
              exit;
            end;

            Upload2.First;
            Gauge1.MinValue := 1;
            Gauge1.MaxValue := Upload2.RecordCount;
            Gauge1.Progress := 1;
            AssignFile(lst,SaveDialog1.FileName);
            Rewrite(lst);

            while not Upload2.Eof do
            begin
              Gauge1.AddProgress(1);
              Application.ProcessMessages;
              Writeln(lst,Upload2DOWNLOAD.text);
              Upload2.Next;
            end;



           if CBook[0] <> #0 then
           begin
             UpdateRB.ParamByName('CBook').Text              := CBook[0];
             UpdateRB.ParamByName('billmonth').Text          := BillMonth.Text;
             UpdateRB.ParamByName('meterreader').Text        := MeterReader.Text;
             UpdateRB.ParamByName('DateUploaded').AsDateTime := Now();
             UpdateRB.Execute;
           end;

           if CBook[1] <> #0 then
           begin
             UpdateRB.ParamByName('CBook').Text              := CBook[1];
             UpdateRB.ParamByName('billmonth').Text          := BillMonth.Text;
             UpdateRB.ParamByName('meterreader').Text        := MeterReader.Text;
             UpdateRB.ParamByName('DateUploaded').AsDateTime := Now();
             UpdateRB.Execute;
           end;

           if CBook[2] <> #0 then
           begin
             UpdateRB.ParamByName('CBook').Text              := CBook[2];
             UpdateRB.ParamByName('billmonth').Text          := BillMonth.Text;
             UpdateRB.ParamByName('meterreader').Text        := MeterReader.Text;
             UpdateRB.ParamByName('DateUploaded').AsDateTime := Now();
             UpdateRB.Execute;
           end;

           if CBook[3] <> #0 then
           begin
             UpdateRB.ParamByName('CBook').Text              := CBook[3];
             UpdateRB.ParamByName('billmonth').Text          := BillMonth.Text;
             UpdateRB.ParamByName('meterreader').Text        := MeterReader.Text;
             UpdateRB.ParamByName('DateUploaded').AsDateTime := Now();
             UpdateRB.Execute;
           end;

           RB.Refresh;
           MeterReader.Text := '';

           //==========================================================================
           //==========================================================================

           AverageQ.Close;
           //AverageQ.ParamByname('billmonth').Text     := billmonthTmp;
           AverageQ.ParamByname('billmonth1').Text    := billmonthPrev[0];
           AverageQ.ParamByname('billmonth2').Text    := billmonthPrev[1];
           AverageQ.ParamByname('billmonth3').Text    := billmonthPrev[2];
           AverageQ.ParamByname('cbook').Text         := CBook[0];
           AverageQ.ParamByname('cbook1').Text        := CBook[1];
           AverageQ.ParamByname('cbook2').Text        := CBook[2];
           AverageQ.ParamByname('cbook3').Text        := CBook[3];
           AverageQ.Open;
           AverageQ.First;

           Gauge1.MinValue := 1;

           if AverageQ.RecordCount< 1 then
            Gauge1.MaxValue := 1
           else
            Gauge1.MaxValue := AverageQ.RecordCount;

           Gauge1.Progress := 1;
           while not AverageQ.Eof do  begin
              prevKwhStr     := AverageQ.FieldByName('prevKwhused').AsString;
              prevBillmonStr := AverageQ.FieldByName('billmonthprev').AsString;

              AveInsertQ.ParamByName('code').Text           := AverageQcode.Text;
              AveInsertQ.ParamByName('accountnumber').Text  := AverageQaccountnumber.Text;
              AveInsertQ.ParamByName('name').Text           := AverageQname.Text;
              AveInsertQ.ParamByName('prevKwh').Text        := prevKwhStr;
              AveInsertQ.ParamByName('prevBillmonth').Text  := prevBillmonStr;
              AveInsertQ.ParamByName('averageKwh').AsFloat  := AverageQaveKwh.AsFloat;
              AveInsertQ.ParamByName('billmonth').Text      := billmonthTmp;
              AveInsertQ.ParamByName('cbook').Text          := AverageQcbook.Text;

              try
                  AveInsertQ.Execute;
              Except
                  //messagedlg('Update Record',mtWarning,[mbOK],0);
                  AveUpdateQ.ParamByName('code').Text           := AverageQcode.Text;
                  AveUpdateQ.ParamByName('accountnumber').Text  := AverageQaccountnumber.Text;
                  AveUpdateQ.ParamByName('name').Text           := AverageQname.Text;
                  AveUpdateQ.ParamByName('prevKwh').Text        := prevKwhStr;
                  AveUpdateQ.ParamByName('prevBillmonth').Text  := prevBillmonStr;
                  AveUpdateQ.ParamByName('averageKwh').AsFloat  := AverageQaveKwh.AsFloat;
                  AveUpdateQ.ParamByName('billmonth').Text      := billmonthTmp;
                  AveUpdateQ.ParamByName('cbook').Text          := AverageQcbook.Text;
                  AveUpdateQ.Execute;
              end;

              Gauge1.AddProgress(1);
              Application.ProcessMessages;
              AverageQ.Next;
           end;

           //write upload text file to default directory========================================
           //===================================================================================
           try
             CloseFile(Lst);
             //CopyFileToDevice('d:\MobileTransfer\UPLOAD.TXT', '\DiskOnChip\ZANECO\UPLOAD.TXT', True);
             CeRapiUninit;
           except
            on E: Exception do
            begin
               MessageDlg(e.Message,mtError,[mbOK],0);
            end;
           end;

           MessageDlg('Done Uploading to Android', mtInformation, [mbOK], 0);
         end;
      end;
  end;
end;

procedure TReadandBillForm.RBCalcFields(DataSet: TDataSet);
begin
  If RBuploaded.Text = '1' then RBUploadStat.Text := 'OK' else RBUploadStat.Text := '';
end;

procedure TReadandBillForm.NxButton10Click(Sender: TObject);
begin
  AssignCipherPanel.Width := 239;
  NxLinkLabel2.Top    := 4;
  NxLinkLabel2.Left   := 174;
end;

procedure TReadandBillForm.NxButton11Click(Sender: TObject);
begin
  AssignCipherPanel.Width := 569;
  NxLinkLabel2.Top    := 4;
  NxLinkLabel2.Left   := 512;

end;

procedure TReadandBillForm.NxButton1Click(Sender: TObject);
begin
  If BillMonth.Text = '' then
    begin
      MessageDlg('Billmonth is empty', mtError, [mbOK], 0);
      exit;
    end;

  RB.Close;
  RB.ParamByName('BillMonth').Text := BillMonth.Text;
  RB.Open;
end;

procedure TReadandBillForm.NxButton2Click(Sender: TObject);
begin
  panelCompleteCbook.Left := 69;
  panelCompleteCbook.Top  := 35;
  panelCompleteCbook.BringToFront;
  panelCompleteCbook.Visible := True;
  MasterCBemptQ.Close;
  MasterCBemptQ.Open;

  emptyRcodeQ.Close;
  emptyRcodeQ.Open;

end;

procedure TReadandBillForm.NxButton4Click(Sender: TObject);
begin
  Close;
end;

procedure TReadandBillForm.NxButton5Click(Sender: TObject);
begin
  CipherBook.Open;
  CipherBookMaster.ParamByName('cbook').Text := CipherBookcbook.Text;
  CipherBookMaster.Open;
  CipherBookPanel.Left    := 11;
  CipherBookPanel.Top     := 43;
  CipherBookPanel.Visible := True;
  CipherBookPanel.BringToFront;
end;

procedure TReadandBillForm.NxButton6Click(Sender: TObject);
begin
if CB.Text = '' then
  begin
    MessageDlg('Please supply Cipher Book number..', mtError, [mbOK], 0);
    CB.SetFocus;
    Exit;
  end;

   with UpdateCipherBook do
    begin
     ParamByName('CBook').Text       := CB.Text;

     ParamByName('Area1').Text       := Area1.Text;
     ParamByName('Book1').Text       := Book1.Text;
     ParamByName('From1').Text       := copy(area1.text,2,2)+copy(book1.text,2,2)+From1.Text;
     ParamByName('To1').Text         := copy(area1.Text,2,2)+copy(book1.text,2,2)+To1.Text;

     ParamByName('Area2').Text       := Area2.Text;
     ParamByName('Book2').Text       := Book2.Text;
     ParamByName('From2').Text       := copy(area2.text,2,2)+copy(book2.text,2,2)+From2.Text;
     ParamByName('To2').Text         := copy(area2.Text,2,2)+copy(book2.text,2,2)+To2.Text;

     ParamByName('Area3').Text       := Area3.Text;
     ParamByName('Book3').Text       := Book3.Text;
     ParamByName('From3').Text       := copy(area3.text,2,2)+copy(book3.text,2,2)+From3.Text;
     ParamByName('To3').Text         := copy(area3.Text,2,2)+copy(book3.text,2,2)+To3.Text;

     ParamByName('Area4').Text       := Area4.Text;
     ParamByName('Book4').Text       := Book4.Text;
     ParamByName('From4').Text       := copy(area4.text,2,2)+copy(book4.text,2,2)+From4.Text;
     ParamByName('To4').Text         := copy(area4.Text,2,2)+copy(book4.text,2,2)+To4.Text;

     execute;

     MessageDlg('Done... Rows affected '+IntToStr(RowsAffected), mtInformation, [mbOK], 0);
     CipherBook.Refresh;
     CipherBookMaster.Refresh;

      {Area1.Text := '000';
      Book1.Text := '000';
      From1.Text := '000000';
      To1.Text   := '999999';

      Area2.Text := '000';
      Book2.Text := '000';
      From2.Text := '000000';
      To2.Text   := '999999';

      Area3.Text := '000';
      Book3.Text := '000';
      From3.Text := '000000';
      To3.Text   := '999999';

      Area4.Text := '000';
      Book4.Text := '000';
      From4.Text := '000000';
      To4.Text   := '999999';  }
   end;

end;

procedure TReadandBillForm.NxButton7Click(Sender: TObject);
begin
  Area1.Text := '000';
  Book1.Text := '000';
  From1.Text := '000000';
  To1.Text   := '999999';

  Area2.Text := '000';
  Book2.Text := '000';
  From2.Text := '000000';
  To2.Text   := '999999';

  Area3.Text := '000';
  Book3.Text := '000';
  From3.Text := '000000';
  To3.Text   := '999999';

  Area4.Text := '000';
  Book4.Text := '000';
  From4.Text := '000000';
  To4.Text   := '999999';
  CB.Text := '';
  Area1.SetFocus;
end;

procedure TReadandBillForm.NxLinkLabel10Click(Sender: TObject);
begin
  MasterCBemptQ.Refresh;
end;

procedure TReadandBillForm.NxLinkLabel11Click(Sender: TObject);
begin
  emptyRcodeQ.Refresh;
end;

procedure TReadandBillForm.NxLinkLabel1Click(Sender: TObject);
begin
  CipherBook.Close;
  CipherBookMaster.Close;
  CipherBookRange.Close;
  AssignCipherPanel.Visible := False;
  CipherBookPanel.Visible   := False;
end;

procedure TReadandBillForm.NxLinkLabel2Click(Sender: TObject);
begin
 AssignCipherPanel.Visible := False;
end;

procedure TReadandBillForm.NxLinkLabel3Click(Sender: TObject);
begin
  assignSelectTmp := 1;

  assigncbQ.Close;
  assigncbQ.Open;

  AssignCipherPanel.Width := 239;
  NxLinkLabel2.Top        := 4;
  NxLinkLabel2.Left       := 174;

  AssignCipherPanel.Left    := 186;
  AssignCipherPanel.Top     := 176;
  AssignCipherPanel.Visible := True;
  AssignCipherPanel.BringToFront;

  Area1.Text := '000';
  Book1.Text := '000';
  From1.Text := '000000';
  To1.Text   := '999999';

  Area2.Text := '000';
  Book2.Text := '000';
  From2.Text := '000000';
  To2.Text   := '999999';

  Area3.Text := '000';
  Book3.Text := '000';
  From3.Text := '000000';
  To3.Text   := '999999';

  Area4.Text := '000';
  Book4.Text := '000';
  From4.Text := '000000';
  To4.Text   := '999999';
  Area1.SetFocus;
end;

procedure TReadandBillForm.NxLinkLabel4Click(Sender: TObject);
begin
  panelCompleteCbook.Visible := false;
end;

procedure TReadandBillForm.NxLinkLabel5Click(Sender: TObject);
begin
  assigncbQ.Append;
  Panel1.Top := 40;
  Panel1.Left:= 218;
  Panel1.BringToFront;
  Panel1.Visible := true;
end;

procedure TReadandBillForm.NxLinkLabel6Click(Sender: TObject);
begin
  assigncbQ.Edit;
  Panel1.Top := 40;
  Panel1.Left:= 218;
  Panel1.BringToFront;
  Panel1.Visible := true;
end;

procedure TReadandBillForm.NxLinkLabel7Click(Sender: TObject);
begin
  if (MessageDlg('Delete this CBook?',mtWarning,[mbYes,mbNo],0)=mrNo) then exit;

  assigncbQ.Delete;
end;

procedure TReadandBillForm.NxLinkLabel8Click(Sender: TObject);
begin
  assigncbQ.Post;
  assigncbQ.Refresh;
  panel1.Visible := false;
end;

procedure TReadandBillForm.NxLinkLabel9Click(Sender: TObject);
begin
  assigncbQ.Cancel;
  Panel1.Visible := false;
end;

procedure TReadandBillForm.Button1Click(Sender: TObject);
begin
  assignSelectTmp := 1;

  SelectAssigncb();
  Area1.Color := $00FFC4C4;
  book1.Color := $00FFC4C4;
  from1.Color := $00FFC4C4;
  to1.Color   := $00FFC4C4;

  CB.Text := CB1;
end;

procedure TReadandBillForm.Button2Click(Sender: TObject);
begin
  assignSelectTmp := 2;
  SelectAssigncb();
  Area2.Color := $00FFC4C4;
  book2.Color := $00FFC4C4;
  from2.Color := $00FFC4C4;
  to2.Color   := $00FFC4C4;

  CB.Text := CB2;
end;

procedure TReadandBillForm.Button3Click(Sender: TObject);
begin
  assignSelectTmp := 3;
  SelectAssigncb();
  Area3.Color := $00FFC4C4;
  book3.Color := $00FFC4C4;
  from3.Color := $00FFC4C4;
  to3.Color   := $00FFC4C4;

  CB.Text := CB3;
end;

procedure TReadandBillForm.Button4Click(Sender: TObject);
begin
  assignSelectTmp := 4;
  SelectAssigncb();
  Area4.Color := $00FFC4C4;
  book4.Color := $00FFC4C4;
  from4.Color := $00FFC4C4;
  to4.Color   := $00FFC4C4;

  CB.Text := CB4;
end;

procedure TReadandBillForm.CRDBGrid4CellClick(Column: TColumn);
var
  startTmp,endTmp:String;
begin
  startTmp  := CipherBookRangestartacct.Text;
  endTmp    := CipherBookRangeEndAcct.Text;
  if Panel1.Visible = true then
  begin
    assigncbQcbook.Text      := CipherBookRangecbook.Text;
    assigncbQbook.Text       := CipherBookRangebook.Text;
    assigncbQarea.Text       := CipherBookRangearea.Text;
    assigncbQstartAccnt.Text := Copy(startTmp,5,length(startTmp));
    assigncbQendAccnt.Text   := Copy(endTmp,5,length(endTmp));
  end;
end;

procedure TReadandBillForm.CRDBGrid6CellClick(Column: TColumn);
begin
   SelectedCBQ.Close;
    SelectedCBQ.ParamByName('area').Text :=  MasterCBemptQArea.Text;
    SelectedCBQ.ParamByName('book').Text :=  MasterCBemptQBook.Text;
    SelectedCBQ.Open;
end;

procedure TReadandBillForm.CRDBGrid6KeyPress(Sender: TObject; var Key: Char);
var
  areaTmp :String;
  bookTmp :String;
begin
  if key = #13 then
  begin
    If IntroForm.UsersUserRestriction.Text = 'ADMINISTRATOR' then
             begin

               If not assigned(BillMasterMainRecordForm) then
               BillMasterMainRecordForm := TBillMasterMainRecordForm.Create(Application);
               BillMasterMainRecordForm.AccountCode := BillingData.MasterCode.AsInteger;
               With BillMasterMainRecordForm, BillingData do
                 begin
                   areaTmp := MasterCBemptQArea.Text;
                   bookTmp := MasterCBemptQBook.Text;

                   CType.ItemIndex        := -1;
                   If MasterCBemptQConsCode.Text = '1' then CType.ItemIndex := 0;
                   If MasterCBemptQConsCode.Text = '2' then CType.ItemIndex := 1;
                   If MasterCBemptQConsCode.Text = '3' then CType.ItemIndex := 2;
                   If MasterCBemptQConsCode.Text = '4' then CType.ItemIndex := 3;
                   If MasterCBemptQConsCode.Text = '5' then CType.ItemIndex := 4;
                   If MasterCBemptQConnCode.Text = '1' then ConnCode.ItemIndex := 0 else ConnCode.ItemIndex := 1;

                   Area.Text              := areaTmp;
                   Book.Text              := bookTmp;
                   Sequence.Text          := MasterCBemptQSequence.Text;
                   AccountNumber.Text     := MasterCBemptQAccountNumber.Text;
                   CName.Text             := MasterCBemptQName.Text;
                   Address.Text           := MasterCBemptQAddress.Text;
                   Ratecode.Text          := MasterCBemptQRateCode.Text;
                   WRatecode.Text         := MasterCBemptQWRateCode.Text;
                   DiscountRate.AsFloat   := MasterCBemptQVATDisc.AsFloat;

                   Transformer.Text       := MasterCBemptQTransformer.Text;
                   PoleNumber.Text        := MasterCBemptQPoleNumber.Text;
                   MeterBrand.Text        := MasterCBemptQMeterBrand.Text;
                   Serial.Text            := MasterCBemptQSerial.Text;
                   Multiplier.AsInteger   := MasterCBemptQMultiplier.AsInteger;
                   NewConnectionDate.Date := MasterCBemptQNewConnectionDate.AsDateTime;
                   PresentReading.AsFloat := MasterCBemptQPresentReadingKWH.AsFloat;
                   Demand.AsFloat         := MasterCBemptQKilowattUsed.AsFloat;
                   XFormerQTY.Text        := MasterCBemptQXFormerQty.Text;
                   XFormerKVA.Text        := MasterCBemptQXFormerKVA.Text;
                   CBook.Text             := MasterCBemptQCBook.Text;

                   AccountCode            := StrToInt(MasterCBemptQCode.Text);

                   cipherRangeQ.close;
                   cipherRangeQ.ParamByName('area').Text := areaTmp;
                   cipherRangeQ.ParamByName('book').Text := booktmp;
                   cipherRangeQ.Open;

                   CipherBookMaster.close;
                   CipherBookMaster.ParamByName('cbook').Text :=  cipherRangeQcbook.Text;
                   CipherBookMaster.Open;
                 end;


               BillMasterMainRecordForm.Show;

             end else begin
             MessageDlg('Your restriction does not allow editing of a Master record', mtWarning, [mbOK], 0);
            end;
  end;
end;

procedure TReadandBillForm.CRDBGrid7CellClick(Column: TColumn);
begin
 // assignSelectTmp
 case assignSelectTmp of
  1: begin
      area1.Text := assigncbQarea.Text;
      book1.Text := assigncbQbook.Text;
      from1.Text := assigncbQstartAccnt.Text;
      to1.Text   := assigncbQendAccnt.Text;

      CB1     :=assigncbQcbook.Text;
      CB.Text := CB1;
  end;
  2: begin
      area2.Text := assigncbQarea.Text;
      book2.Text := assigncbQbook.Text;
      from2.Text := assigncbQstartAccnt.Text;
      to2.Text   := assigncbQendAccnt.Text;

      CB2     :=assigncbQcbook.Text;
      CB.Text := CB2;
  end;
  3: begin
      area3.Text := assigncbQarea.Text;
      book3.Text := assigncbQbook.Text;
      from3.Text := assigncbQstartAccnt.Text;
      to3.Text   := assigncbQendAccnt.Text;

      CB3     :=assigncbQcbook.Text;
      CB.Text := CB3;
  end;
  4: begin
      area4.Text := assigncbQarea.Text;
      book4.Text := assigncbQbook.Text;
      from4.Text := assigncbQstartAccnt.Text;
      to4.Text   := assigncbQendAccnt.Text;

      CB4     :=assigncbQcbook.Text;
      CB.Text := CB4;
  end;
 end;
end;

procedure TReadandBillForm.CRDBGrid8KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
     If IntroForm.UsersUserRestriction.Text = 'ADMINISTRATOR' then
             begin

               If not assigned(BillMasterMainRecordForm) then
               BillMasterMainRecordForm := TBillMasterMainRecordForm.Create(Application);
               BillMasterMainRecordForm.AccountCode := BillingData.MasterCode.AsInteger;
               With BillMasterMainRecordForm, BillingData do
                 begin
                   CType.ItemIndex        := -1;
                   If emptyRcodeQConsCode.Text = '1' then CType.ItemIndex := 0;
                   If emptyRcodeQConsCode.Text = '2' then CType.ItemIndex := 1;
                   If emptyRcodeQConsCode.Text = '3' then CType.ItemIndex := 2;
                   If emptyRcodeQConsCode.Text = '4' then CType.ItemIndex := 3;
                   If emptyRcodeQConsCode.Text = '5' then CType.ItemIndex := 4;
                   If emptyRcodeQConnCode.Text = '1' then ConnCode.ItemIndex := 0 else ConnCode.ItemIndex := 1;

                   Area.Text              := emptyRcodeQArea.Text;;
                   Book.Text              := emptyRcodeQBook.Text;
                   Sequence.Text          := emptyRcodeQSequence.Text;
                   AccountNumber.Text     := emptyRcodeQAccountNumber.Text;
                   CName.Text             := emptyRcodeQName.Text;
                   Address.Text           := emptyRcodeQAddress.Text;
                   Ratecode.Text          := emptyRcodeQRateCode.Text;
                   WRatecode.Text         := emptyRcodeQWRateCode.Text;
                   DiscountRate.AsFloat   := emptyRcodeQVATDisc.AsFloat;

                   Transformer.Text       := emptyRcodeQTransformer.Text;
                   PoleNumber.Text        := emptyRcodeQPoleNumber.Text;
                   MeterBrand.Text        := emptyRcodeQMeterBrand.Text;
                   Serial.Text            := emptyRcodeQSerial.Text;
                   Multiplier.AsInteger   := emptyRcodeQMultiplier.AsInteger;
                   NewConnectionDate.Date := emptyRcodeQNewConnectionDate.AsDateTime;
                   PresentReading.AsFloat := emptyRcodeQPresentReadingKWH.AsFloat;
                   Demand.AsFloat         := emptyRcodeQKilowattUsed.AsFloat;
                   XFormerQTY.Text        := emptyRcodeQXFormerQty.Text;
                   XFormerKVA.Text        := emptyRcodeQXFormerKVA.Text;
                   CBook.Text             := emptyRcodeQCBook.Text;

                   AccountCode            := StrToInt(emptyRcodeQCode.Text);

                 end;


               BillMasterMainRecordForm.Show;

             end else begin
             MessageDlg('Your restriction does not allow editing of a Master record', mtWarning, [mbOK], 0);
            end;
  end;
end;

procedure TReadandBillForm.dsCipherBookDataChange(Sender: TObject;
  Field: TField);
begin
  CipherBookMaster.Close;
  CipherBookMaster.ParamByName('cbook').Text := CipherBookcbook.Text;
  CipherBookMaster.Open;

  CipherBookRange.Close;
  CipherBookRange.ParamByName('cbook').Text := CipherBookcbook.Text;
  CipherBookRange.Open;
end;

procedure TReadandBillForm.dsRBDataChange(Sender: TObject; Field: TField);
begin
  CipherBookRange.Close;
  CipherBookRange.ParamByName('cbook').Text := RBCBook.Text;
  CipherBookRange.Open;
end;

procedure TReadandBillForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  RB.Close;
  Action := caFree;
  ReadandBillForm := Nil;
end;

procedure TReadandBillForm.FormShow(Sender: TObject);
begin
  contactQ.Close;
  contactQ.Open;

  BillMonth.text := FormatDateTime('mmyy',Now);
  BillMonth.SetFocus;
end;

procedure TReadandBillForm.Area1KeyPress(Sender: TObject; var Key: Char);
begin
  If key = #13 then
    begin
      Perform(CM_DIALOGKEY,VK_TAB,0);
      Key := #0;
    end;
end;

procedure TReadandBillForm.Timer1Timer(Sender: TObject);
begin
  Try
    IF not Upload.eof THEN
    BEGIN
        Application.ProcessMessages;
        Gauge1.AddProgress(1);
        Serial.WriteStr(UploadRESULT.Text + #10);
        Upload.Next;
    END
    ELSE
    BEGIN
         Timer1.Enabled := False;
         MessageDlg('Data transfer successful', mtInformation, [mbOK], 0);
         Upload.Close;
         Serial.Close;

           if CBook[0] <> #0 then
           begin
             UpdateRB.ParamByName('CBook').Text              := CBook[0];
             UpdateRB.ParamByName('billmonth').Text          := BillMonth.Text;
             UpdateRB.ParamByName('meterreader').Text        := MeterReader.Text;
             UpdateRB.ParamByName('DateUploaded').AsDateTime := Now();
             UpdateRB.Execute;
           end;

           if CBook[1] <> #0 then
           begin
             UpdateRB.ParamByName('CBook').Text              := CBook[1];
             UpdateRB.ParamByName('billmonth').Text          := BillMonth.Text;
             UpdateRB.ParamByName('meterreader').Text        := MeterReader.Text;
             UpdateRB.ParamByName('DateUploaded').AsDateTime := Now();
             UpdateRB.Execute;
           end;

           if CBook[2] <> #0 then
           begin
             UpdateRB.ParamByName('CBook').Text              := CBook[2];
             UpdateRB.ParamByName('billmonth').Text          := BillMonth.Text;
             UpdateRB.ParamByName('meterreader').Text        := MeterReader.Text;
             UpdateRB.ParamByName('DateUploaded').AsDateTime := Now();
             UpdateRB.Execute;
           end;

           if CBook[3] <> #0 then
           begin
             UpdateRB.ParamByName('CBook').Text              := CBook[3];
             UpdateRB.ParamByName('billmonth').Text          := BillMonth.Text;
             UpdateRB.ParamByName('meterreader').Text        := MeterReader.Text;
             UpdateRB.ParamByName('DateUploaded').AsDateTime := Now();
             UpdateRB.Execute;
           end;

     RB.Refresh;
     MeterReader.Text := '';

    END;
  EXCEPT
    Timer1.Enabled := False;
    MessageDlg('Data transfer terminated unexpectedly..'+#13+#10+'Check if cable is properly attached..', mtError, [mbOK], 0);
    Upload.Close;
    Serial.Close;
  END;

end;

procedure TReadandBillForm.NxButton3Click(Sender: TObject);
begin
  UploadProcedure;
end;


procedure TReadandBillForm.SelectAssigncb();
begin
  //df  $00FFC4C4
  Area1.Color := clWindow;
  book1.Color := clWindow;
  from1.Color := clWindow;
  to1.Color   := clWindow;

  Area2.Color := clWindow;
  book2.Color := clWindow;
  from2.Color := clWindow;
  to2.Color   := clWindow;

  Area3.Color := clWindow;
  book3.Color := clWindow;
  from3.Color := clWindow;
  to3.Color   := clWindow;

  Area4.Color := clWindow;
  book4.Color := clWindow;
  from4.Color := clWindow;
  to4.Color   := clWindow;
end;
end.

