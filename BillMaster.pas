
unit BillMaster;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, Mask, DBCtrls, Grids, DBGrids,
  Menus, Buttons, PDJSillyLabel, BarMenus, DB,
  TeEngine, Series, TeeProcs, Chart, DbChart, MemDS, DBAccess, MyAccess,
  Gauges, CRGrid, DsFancyButton, NxPageControl, NxCollection, NxEdit,
  QRCtrls, QuickRpt, CRDBGrid1, DBGrid1, VclTee.TeeGDIPlus;

type
  TBillMasterForm = class(TForm)
    Panel1: TPanel;
    ConsumerName: TDBText;
    Address: TDBText;
    DiscoCode: TDBText;
    Serial: TDBText;
    AccountNumber: TDBText;
    Balance: TDBText;
    BcBarMainMenu1: TBcBarMainMenu;
    Transaction1: TMenuItem;
    StatusUpdate1: TMenuItem;
    N2: TMenuItem;
    Exit1: TMenuItem;
    Reports1: TMenuItem;
    N3: TMenuItem;
    AgingReport1: TMenuItem;
    ConsumptionMonitor1: TMenuItem;
    RecordUtilities1: TMenuItem;
    NormalMode1: TMenuItem;
    CurrentBillingMode1: TMenuItem;
    N4: TMenuItem;
    Disconnection1: TMenuItem;
    Reconnection1: TMenuItem;
    ChangeMeter1: TMenuItem;
    ChangeName1: TMenuItem;
    TransferArea1: TMenuItem;
    linesonly: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    OtherCharges1: TMenuItem;
    UpdateMasterFromBilling1: TMenuItem;
    N7: TMenuItem;
    MasterList1: TMenuItem;
    SequenceEditor1: TMenuItem;
    SetBillingFilter1: TMenuItem;
    UnpaidBillsSummary1: TMenuItem;
    ReprintBillingRegister1: TMenuItem;
    Panel7: TPanel;
    Label13: TLabel;
    Area: TEdit;
    Book: TEdit;
    Label32: TLabel;
    BillMonth: TEdit;
    Label14: TLabel;
    PDJSillyLabel4: TDsFancyButton;
    PDJSillyLabel5: TDsFancyButton;
    MeterReadingSheet2: TMenuItem;
    N9: TMenuItem;
    BcBarPopupMenu1: TBcBarPopupMenu;
    DeleteRecord1: TMenuItem;
    BcBarPopupMenu2: TBcBarPopupMenu;
    SetRelationtoAccountNumber1: TMenuItem;
    StaticText1: TStaticText;
    Bevel1: TBevel;
    DSMasterR: TDataSource;
    ViewAdjustedBills1: TMenuItem;
    ViewAdjustmentPanel: TPanel;
    DSViewAdj: TDataSource;
    Label12: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    Bevel2: TBevel;
    PDJSillyLabel11: TDsFancyButton;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Panel8: TPanel;
    Label15: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    Label16: TLabel;
    Edit1: TEdit;
    PDJSillyLabel3: TDsFancyButton;
    PDJSillyLabel6: TDsFancyButton;
    Bevel6: TBevel;
    Bevel7: TBevel;
    Bevel8: TBevel;
    DBText3: TDBText;
    Label31: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Bevel12: TBevel;
    Bevel13: TBevel;
    Bevel14: TBevel;
    Panel10: TPanel;
    Label18: TLabel;
    Label19: TLabel;
    Bevel15: TBevel;
    Edit2: TEdit;
    PDJSillyLabel9: TDsFancyButton;
    PDJSillyLabel10: TDsFancyButton;
    MasterR: TMyQuery;
    graphdata: TMyQuery;
    ViewAdj: TMyQuery;
    DataSource1: TDataSource;
    Gauge1: TGauge;
    DBChart1: TDBChart;
    Series1: TBarSeries;
    ARStatusUpdate: TMyQuery;
    Panel3: TPanel;
    Animate1: TAnimate;
    Label2: TLabel;
    ViewAdjCode: TFloatField;
    ViewAdjArea: TStringField;
    ViewAdjBook: TStringField;
    ViewAdjSequence: TStringField;
    ViewAdjAccountNumber: TStringField;
    ViewAdjName: TStringField;
    ViewAdjAddress: TStringField;
    ViewAdjBillMonth: TStringField;
    ViewAdjABRateCode: TStringField;
    ViewAdjRateCode: TStringField;
    ViewAdjABMultiplier: TFloatField;
    ViewAdjMultiplier: TFloatField;
    ViewAdjABPreviousReadingKWH: TFloatField;
    ViewAdjPreviousReadingKWH: TFloatField;
    ViewAdjABPresentReadingKWH: TFloatField;
    ViewAdjPresentReadingKWH: TFloatField;
    ViewAdjABDiff: TFloatField;
    ViewAdjDiff: TFloatField;
    ViewAdjABDemand: TFloatField;
    ViewAdjDemand: TFloatField;
    ViewAdjABKilowattHour: TFloatField;
    ViewAdjKilowattHour: TFloatField;
    ViewAdjABKilowattUsed: TFloatField;
    ViewAdjKilowattUsed: TFloatField;
    ViewAdjABGenSysCharge: TFloatField;
    ViewAdjGenSysCharge: TFloatField;
    ViewAdjABHostCommCharge: TFloatField;
    ViewAdjHostCommCharge: TFloatField;
    ViewAdjABForexCharge: TFloatField;
    ViewAdjForexCharge: TFloatField;
    ViewAdjABTCDemandCharge: TFloatField;
    ViewAdjTCDemandCharge: TFloatField;
    ViewAdjABTCTransSystemCharge: TFloatField;
    ViewAdjTCTransSystemCharge: TFloatField;
    ViewAdjABSystemLossCharge: TFloatField;
    ViewAdjSystemLossCharge: TFloatField;
    ViewAdjABDCDemandCharge: TFloatField;
    ViewAdjDCDemandCharge: TFloatField;
    ViewAdjABDCDistributionCharge: TFloatField;
    ViewAdjDCDistributionCharge: TFloatField;
    ViewAdjABSCRetCustCharge: TFloatField;
    ViewAdjSCRetCustCharge: TFloatField;
    ViewAdjABSCSupplySysCharge: TFloatField;
    ViewAdjSCSupplySysCharge: TFloatField;
    ViewAdjABMCRetailCustCharge: TFloatField;
    ViewAdjMCRetailCustCharge: TFloatField;
    ViewAdjABMCSystemCharge: TFloatField;
    ViewAdjMCSystemCharge: TFloatField;
    ViewAdjABUCNPCStrandedDebts: TFloatField;
    ViewAdjUCNPCStrandedDebts: TFloatField;
    ViewAdjABUCNPCStrandedContCost: TFloatField;
    ViewAdjUCNPCStrandedContCost: TFloatField;
    ViewAdjABUCDUStrandedContCost: TFloatField;
    ViewAdjUCDUStrandedContCost: TFloatField;
    ViewAdjABUCME: TFloatField;
    ViewAdjUCME: TFloatField;
    ViewAdjABUCEqTaxesAndRoyalities: TFloatField;
    ViewAdjUCEqTaxesAndRoyalties: TFloatField;
    ViewAdjABUCEC: TFloatField;
    ViewAdjUCEC: TFloatField;
    ViewAdjABUCCrossSubRemoval: TFloatField;
    ViewAdjUCCrossSubRemoval: TFloatField;
    ViewAdjABICCrossSubsidyCharge: TFloatField;
    ViewAdjICCrossSubsidyCharge: TFloatField;
    ViewAdjABPowerActRateRed: TFloatField;
    ViewAdjPowerActRateRed: TFloatField;
    ViewAdjABLifelineDiscSubs: TFloatField;
    ViewAdjLifelineDiscSubs: TFloatField;
    ViewAdjABLoanCondo: TFloatField;
    ViewAdjLoanCondo: TFloatField;
    ViewAdjABTransformerRental: TFloatField;
    ViewAdjTransformerRental: TFloatField;
    ViewAdjABOCCode1: TStringField;
    ViewAdjOCCode1: TStringField;
    ViewAdjABOCAmount1: TFloatField;
    ViewAdjOCAmount1: TFloatField;
    ViewAdjABOCCode2: TStringField;
    ViewAdjOCCode2: TStringField;
    ViewAdjABOCAmount2: TFloatField;
    ViewAdjOCAmount2: TFloatField;
    ViewAdjABOCCode3: TStringField;
    ViewAdjOCCode3: TStringField;
    ViewAdjABOCAmount3: TFloatField;
    ViewAdjOCAmount3: TFloatField;
    ViewAdjABTotalBill: TFloatField;
    ViewAdjTotalBill: TFloatField;
    ViewAdjBillNumber: TStringField;
    ViewAdjABOEBRNumber: TStringField;
    ViewAdjOEBRNumber: TStringField;
    ViewAdjAdjDate: TDateField;
    ViewAdjAdjustmentCode: TStringField;
    ViewAdjPostCode: TStringField;
    ViewAdjABLCCustMo: TFloatField;
    ViewAdjLCCustMo: TFloatField;
    ViewAdjABVAT: TFloatField;
    ViewAdjVAT: TFloatField;
    ViewAdjABVATDist: TFloatField;
    ViewAdjVATDist: TFloatField;
    ViewAdjABVATGenCO: TFloatField;
    ViewAdjVATGEnCO: TFloatField;
    ViewAdjABVATTransCO: TFloatField;
    ViewAdjVATTransCO: TFloatField;
    ViewAdjABVATSystemLossGenCO: TFloatField;
    ViewAdjVATSystemLossGenCO: TFloatField;
    ViewAdjABVATSystemLossTransCO: TFloatField;
    ViewAdjVATSystemLossTransCO: TFloatField;
    ViewAdjPreviousReadingDate: TDateField;
    ViewAdjPresentReadingDate: TDateField;
    MasterRCode: TFloatField;
    MasterRArea: TStringField;
    MasterRBook: TStringField;
    MasterRSequence: TStringField;
    MasterRAccountNumber: TStringField;
    MasterRName: TStringField;
    MasterRAddress: TStringField;
    MasterRRateCode: TStringField;
    MasterRSerial: TStringField;
    MasterRMultiplier: TFloatField;
    MasterRPreviousReadingDate: TDateField;
    MasterRPresentReadingDate: TDateField;
    MasterRPreviousReadingKWH: TFloatField;
    MasterRPresentReadingKWH: TFloatField;
    MasterRDiff: TFloatField;
    MasterRDemand: TFloatField;
    MasterRFlatRateWattage: TFloatField;
    MasterRFeedBackCode: TStringField;
    MasterRCM: TStringField;
    MasterRCMMultiplier: TFloatField;
    MasterRCMPreviousReadingKWH: TFloatField;
    MasterRCMPresentReadingKWH: TFloatField;
    MasterRCMKilowattHour: TFloatField;
    MasterRCMDemand: TFloatField;
    MasterRKilowattHour: TFloatField;
    MasterRKilowattUsed: TFloatField;
    MasterRGenSysCharge: TFloatField;
    MasterRHostCommCharge: TFloatField;
    MasterRForexCharge: TFloatField;
    MasterRTCDemandCharge: TFloatField;
    MasterRTCTransSystemCharge: TFloatField;
    MasterRSystemLossCharge: TFloatField;
    MasterRDCDemandCharge: TFloatField;
    MasterRDCDistributionCharge: TFloatField;
    MasterRSCRetCustCharge: TFloatField;
    MasterRSCSupplySysCharge: TFloatField;
    MasterRMCRetailCustCharge: TFloatField;
    MasterRMCSystemCharge: TFloatField;
    MasterRUCNPCStrandedDebts: TFloatField;
    MasterRUCNPCStrandedContCost: TFloatField;
    MasterRUCDUStrandedContCost: TFloatField;
    MasterRUCME: TFloatField;
    MasterRUCEqTaxesAndRoyalties: TFloatField;
    MasterRUCEC: TFloatField;
    MasterRUCCrossSubRemoval: TFloatField;
    MasterRICCrossSubsidyCharge: TFloatField;
    MasterRPowerActRateRed: TFloatField;
    MasterRLifelineDiscSubs: TFloatField;
    MasterRLoanCondo: TFloatField;
    MasterRTransformerRental: TFloatField;
    MasterROCCode1: TStringField;
    MasterROCAmount1: TFloatField;
    MasterROCMo1: TFloatField;
    MasterROCTotal1: TFloatField;
    MasterROCCode2: TStringField;
    MasterROCAmount2: TFloatField;
    MasterROCMo2: TFloatField;
    MasterROCTotal2: TFloatField;
    MasterROCCode3: TStringField;
    MasterROCAmount3: TFloatField;
    MasterROCMo3: TFloatField;
    MasterROCTotal3: TFloatField;
    MasterRTotalBill: TFloatField;
    MasterRBillNumber: TStringField;
    MasterROEBRNumber: TStringField;
    MasterRBillMonth: TStringField;
    MasterRstatuscode: TStringField;
    MasterRLCCustMo: TFloatField;
    MasterRVATDist: TFloatField;
    MasterRVATGenCO: TFloatField;
    MasterRVATTransCO: TFloatField;
    MasterRVATSystemLossGenCO: TFloatField;
    MasterRVATSystemLossTransCO: TFloatField;
    MasterRVAT: TFloatField;
    LateBills1: TMenuItem;
    Bevel19: TBevel;
    UpdateLateBills1: TMenuItem;
    ReprintBillingRegisterLateBills1: TMenuItem;
    Panel4: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Bevel20: TBevel;
    Gauge2: TGauge;
    Bevel21: TBevel;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    PDJSillyLabel1: TDsFancyButton;
    PDJSillyLabel2: TDsFancyButton;
    StaticText6: TStaticText;
    DateFrom: TDateTimePicker;
    StaticText7: TStaticText;
    Label6: TLabel;
    Label7: TLabel;
    DateTo: TDateTimePicker;
    Bevel22: TBevel;
    DSMSA: TDataSource;
    MasterTextPanel: TPanel;
    Label9: TLabel;
    Bevel23: TBevel;
    Gauge3: TGauge;
    Bevel24: TBevel;
    RadioGroup2: TRadioGroup;
    BMonthT: TLabeledEdit;
    PDJSillyLabel7: TDsFancyButton;
    PDJSillyLabel8: TDsFancyButton;
    MasterT: TMyQuery;
    Utilities1: TMenuItem;
    CreateConsumerTextforEngineering1: TMenuItem;
    N1: TMenuItem;
    CollectorsDisconnectedBillsList1: TMenuItem;
    Panel5: TPanel;
    Label8: TLabel;
    DiscoBills: TMyQuery;
    DatePaid: TDateTimePicker;
    Label10: TLabel;
    Bevel25: TBevel;
    DsFancyButton1: TDsFancyButton;
    DsFancyButton2: TDsFancyButton;
    Gauge4: TGauge;
    DiscoBillsid: TIntegerField;
    DiscoBillsBillNumber: TStringField;
    DiscoBillscode: TIntegerField;
    DiscoBillsAccountNumber: TStringField;
    DiscoBillsRateCode: TStringField;
    DiscoBillsName: TStringField;
    DiscoBillsBillMonth: TStringField;
    DiscoBillsLastReading: TIntegerField;
    DiscoBillsAmount: TFloatField;
    DiscoBillsposted: TStringField;
    DiscoBillscollectorcode: TStringField;
    DiscoBillsdatepaid: TDateField;
    DiscoBillsbatch: TStringField;
    DiscoBillssortmonth: TStringField;
    N8: TMenuItem;
    DisonnectedConsumersSummary1: TMenuItem;
    Panel6: TPanel;
    Label11: TLabel;
    RadioGroup3: TRadioGroup;
    fromdate: TDateTimePicker;
    todate: TDateTimePicker;
    DsFancyButton3: TDsFancyButton;
    DsFancyButton4: TDsFancyButton;
    BillHistory: TMyQuery;
    dsbillhistory: TDataSource;
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
    SummaryofConsumersPerKilowatthour1: TMenuItem;
    OneYearAverageLifeLineReport1: TMenuItem;
    PANTADWIDKURYENTEApplications1: TMenuItem;
    Pantawid: TMyQuery;
    dspantawid: TDataSource;
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
    DeleteBillwithPANTAWID1: TMenuItem;
    BillRatesReference1: TMenuItem;
    N10: TMenuItem;
    ConsumerswithDemand1: TMenuItem;
    NxHeaderPanel1: TNxHeaderPanel;
    Button1: TNxButton;
    Button2: TNxButton;
    SearchArea: TNxEdit;
    SearchBook: TNxEdit;
    Search: TNxEdit;
    RadioGroup1: TRadioGroup;
    NxLabel1: TNxLabel;
    NxLabel2: TNxLabel;
    MasterDemand: TMyQuery;
    MasterDemandPanel: TNxHeaderPanel;
    CDBillMonth: TNxEdit;
    NxLabel3: TNxLabel;
    ConsumerDemandOption: TRadioGroup;
    NxButton1: TNxButton;
    NxButton2: TNxButton;
    PageControl3: TPageControl;
    TabSheet13: TTabSheet;
    QuickRep1: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    SummaryBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    MasterDemandaccountnumber: TStringField;
    MasterDemandname: TStringField;
    MasterDemandkilowattused: TFloatField;
    MasterDemandtotalbill: TFloatField;
    QRLabel4: TQRLabel;
    MasterDemandconsumertype: TStringField;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel9: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    MasterDemandSummary: TMyQuery;
    MasterDemandSummaryarea: TStringField;
    MasterDemandSummaryconsumerClass: TStringField;
    MasterDemandSummaryconsumertype: TStringField;
    MasterDemandSummarykilowattused: TFloatField;
    MasterDemandSummarytotalbill: TFloatField;
    TabSheet14: TTabSheet;
    QuickRep2: TQuickRep;
    QRBand1: TQRBand;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRSysData3: TQRSysData;
    QRSysData4: TQRSysData;
    QRBand2: TQRBand;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRBand3: TQRBand;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRLabel18: TQRLabel;
    QRBand4: TQRBand;
    MasterDemandSummaryaddress: TStringField;
    Label17: TLabel;
    DBText4: TDBText;
    ReprintPowerBill1: TMenuItem;
    BillHistoryAdjAmountBalance: TFloatField;
    BillHistoryAdjAmountApplied: TFloatField;
    BillHistoryReadTime: TStringField;
    LateBills: TMyQuery;
    dsLateBills: TDataSource;
    PopupMenu1: TPopupMenu;
    ReprintPowerBillfromBillingArchive1: TMenuItem;
    PopupMenu2: TPopupMenu;
    MenuItem1: TMenuItem;
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
    N11: TMenuItem;
    PANTAWIDKURYENTERecoveryApplications1: TMenuItem;
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
    dsrecovery: TDataSource;
    Pantawidmybalance: TFloatField;
    PilferBill: TMyQuery;
    dsPilferBill: TMyDataSource;
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
    NxHeaderPanel2: TNxHeaderPanel;
    PageControl1: TNxPageControl;
    TabSheet2: TNxTabSheet;
    TabSheet3: TNxTabSheet;
    Panel2: TPanel;
    PageControl2: TNxPageControl;
    TabSheet6: TNxTabSheet;
    TabSheet7: TNxTabSheet;
    TabSheet8: TNxTabSheet;
    TabSheet9: TNxTabSheet;
    TabSheet10: TNxTabSheet;
    TabSheet4: TNxTabSheet;
    TabSheet5: TNxTabSheet;
    TabSheet11: TNxTabSheet;
    NxPageControl1: TNxPageControl;
    NxTabSheet1: TNxTabSheet;
    NxTabSheet2: TNxTabSheet;
    NxTabSheet3: TNxTabSheet;
    TabSheet12: TNxTabSheet;
    PageControl4: TPageControl;
    TabSheet15: TTabSheet;
    TabSheet16: TTabSheet;
    NxHeaderPanel3: TNxHeaderPanel;
    Label1: TLabel;
    NxLinkLabel1: TNxLinkLabel;
    NxLinkLabel2: TNxLinkLabel;
    PrintARLedger2: TMenuItem;
    NxTabSheet4: TNxTabSheet;
    N12: TMenuItem;
    RemoveMeterTransaction1: TMenuItem;
    N13: TMenuItem;
    UnbundledARMonthEndSummaries1: TMenuItem;
    N14: TMenuItem;
    OtherChargesIntegrationInterface1: TMenuItem;
    Pantawidkilowatthour: TLongWordField;
    recoverykilowatthour: TLongWordField;
    graphdataentry: TIntegerField;
    graphdataCode: TFloatField;
    graphdataArea: TStringField;
    graphdataBook: TStringField;
    graphdataSequence: TStringField;
    graphdataAccountNumber: TStringField;
    graphdataName: TStringField;
    graphdataAddress: TStringField;
    graphdataRateCode: TStringField;
    graphdataSerial: TStringField;
    graphdataMultiplier: TFloatField;
    graphdataPreviousReadingDate: TDateField;
    graphdataPresentReadingDate: TDateField;
    graphdataPreviousReadingKWH: TFloatField;
    graphdataPresentReadingKWH: TFloatField;
    graphdataDiff: TFloatField;
    graphdataDemand: TFloatField;
    graphdataFlatRateWattage: TFloatField;
    graphdataFeedBackCode: TStringField;
    graphdataCM: TStringField;
    graphdataCMMultiplier: TFloatField;
    graphdataCMPreviousReadingKWH: TFloatField;
    graphdataCMPresentReadingKWH: TFloatField;
    graphdataCMKilowattHour: TFloatField;
    graphdataCMDemand: TFloatField;
    graphdataKilowattHour: TFloatField;
    graphdataKilowattUsed: TFloatField;
    graphdataGenSysCharge: TFloatField;
    graphdataHostCommCharge: TFloatField;
    graphdataForexCharge: TFloatField;
    graphdataTCDemandCharge: TFloatField;
    graphdataTCTransSystemCharge: TFloatField;
    graphdataSystemLossCharge: TFloatField;
    graphdataDCDemandCharge: TFloatField;
    graphdataDCDistributionCharge: TFloatField;
    graphdataSCRetCustCharge: TFloatField;
    graphdataSCSupplySysCharge: TFloatField;
    graphdataMCRetailCustCharge: TFloatField;
    graphdataMCSystemCharge: TFloatField;
    graphdataUCNPCStrandedDebts: TFloatField;
    graphdataUCNPCStrandedContCost: TFloatField;
    graphdataUCDUStrandedContCost: TFloatField;
    graphdataUCME: TFloatField;
    graphdataUCEqTaxesAndRoyalties: TFloatField;
    graphdataUCEC: TFloatField;
    graphdataUCCrossSubRemoval: TFloatField;
    graphdataICCrossSubsidyCharge: TFloatField;
    graphdataPowerActRateRed: TFloatField;
    graphdataLifelineDiscSubs: TFloatField;
    graphdataLoanCondo: TFloatField;
    graphdataTransformerRental: TFloatField;
    graphdataOCCode1: TStringField;
    graphdataOCAmount1: TFloatField;
    graphdataOCMo1: TFloatField;
    graphdataOCTotal1: TFloatField;
    graphdataOCCode2: TStringField;
    graphdataOCAmount2: TFloatField;
    graphdataOCMo2: TFloatField;
    graphdataOCTotal2: TFloatField;
    graphdataOCCode3: TStringField;
    graphdataOCAmount3: TFloatField;
    graphdataOCMo3: TFloatField;
    graphdataOCTotal3: TFloatField;
    graphdataTotalBill: TFloatField;
    graphdataBillNumber: TStringField;
    graphdataOEBRNumber: TStringField;
    graphdataBillMonth: TStringField;
    graphdataBillDate: TDateField;
    graphdatastatuscode: TStringField;
    graphdataLCCustMo: TFloatField;
    graphdataPrevYearAdjPowerCost: TFloatField;
    graphdataSysLossUnderRecov: TFloatField;
    graphdataVATDisc: TFloatField;
    graphdataVATDiscAmt: TFloatField;
    graphdataVATDistDiscAmt: TFloatField;
    graphdataVATGenCoDiscAmt: TFloatField;
    graphdataVATTransCoDiscAmt: TFloatField;
    graphdataVATSystemLossDiscAmt: TFloatField;
    graphdataVATDist: TFloatField;
    graphdataVATGenCO: TFloatField;
    graphdataVATTransCO: TFloatField;
    graphdataVATSystemLossGenCO: TFloatField;
    graphdataVATSystemLossTransCO: TFloatField;
    graphdataVAT: TFloatField;
    graphdataAdjAmountBalance: TFloatField;
    graphdataAdjAmountApplied: TFloatField;
    graphdataReadTime: TStringField;
    graphdataDiffBillPerKwhr: TFloatField;
    graphdataDiffBillPerKW: TFloatField;
    graphdataDiffBillPerCust: TFloatField;
    graphdataMCC: TFloatField;
    graphdataPKVROebrNumber: TStringField;
    graphdataPKVRBillMonth: TStringField;
    graphdataPKVRAmount: TFloatField;
    graphdataTransSysAncRefund: TFloatField;
    graphdataTransDemAncRefund: TFloatField;
    graphdataVATTransAncRefund: TFloatField;
    graphdataSCDisc: TFloatField;
    graphdataWRateCode: TStringField;
    graphdataSCAmt4Disc: TFloatField;
    graphdataCBook: TStringField;
    DBGrid8: TCRDBGrid1;
    CRDBGrid1: TCRDBGrid1;
    CRDBGrid3: TCRDBGrid1;
    CRDBGrid2: TCRDBGrid1;
    DBGrid2: TDBGrid1;
    DBGrid10: TDBGrid1;
    DBGrid3: TDBGrid1;
    DBGrid4: TDBGrid1;
    DBGrid5: TDBGrid1;
    DBGrid6: TDBGrid1;
    DBGrid7: TDBGrid1;
    DBGrid9: TDBGrid1;
    DBGrid11: TDBGrid1;
    DBGrid1: TDBGrid1;
    DBGrid12: TDBGrid1;
    DBGrid13: TDBGrid1;
    Zer1: TMenuItem;
    QueryDisco: TMyQuery;
    QueryDiscoEntry: TIntegerField;
    QueryDiscoCode: TFloatField;
    QueryDiscoDate: TDateField;
    QueryDiscoArea: TStringField;
    QueryDiscoBook: TStringField;
    QueryDiscoSequence: TStringField;
    QueryDiscoAccountNumber: TStringField;
    QueryDiscoName: TStringField;
    QueryDiscoLastReading: TFloatField;
    QueryDiscoMeterBrand: TStringField;
    QueryDiscoSerialNumber: TStringField;
    QueryDiscoDisconnector: TStringField;
    dsDisco: TMyDataSource;
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
    Label20: TLabel;
    Label35: TLabel;
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
    N15: TMenuItem;
    ViewSpotBill: TMenuItem;
    masterDelete: TMyQuery;
    ConsumerPriorityNumber1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure Disconnection1Click(Sender: TObject);
    procedure Reconnection1Click(Sender: TObject);
    procedure ChangeMeter1Click(Sender: TObject);
    procedure ChangeName1Click(Sender: TObject);
    procedure TransferArea1Click(Sender: TObject);
    procedure AgingReport1Click(Sender: TObject);
    procedure ConsumptionMonitor1Click(Sender: TObject);
    procedure NormalMode1Click(Sender: TObject);
    procedure CurrentBillingMode1Click(Sender: TObject);
    procedure OtherCharges1Click(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure UpdateMasterFromBilling1Click(Sender: TObject);
    procedure SequenceEditor1Click(Sender: TObject);
    procedure MasterList1Click(Sender: TObject);
    procedure SetBillingFilter1Click(Sender: TObject);
    procedure linesonlyClick(Sender: TObject);
    procedure GovernmentStatementofAccount1Click(Sender: TObject);
    procedure PDJSillyLabel4Click(Sender: TObject);
    procedure ReprintBillingRegister1Click(Sender: TObject);
    procedure MeterReadingSheet2Click(Sender: TObject);
    procedure PDJSillyLabel5Click(Sender: TObject);
    procedure UnpaidBillsSummary1Click(Sender: TObject);
    procedure UpdateMasterfromLateBills1Click(Sender: TObject);
    procedure DeleteRecord1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure PDJSillyLabel6Click(Sender: TObject);
    procedure PDJSillyLabel3Click(Sender: TObject);
    procedure PDJSillyLabel9Click(Sender: TObject);
    procedure PDJSillyLabel10Click(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure SetRelationtoAccountNumber1Click(Sender: TObject);
    procedure ViewAdjustedBills1Click(Sender: TObject);
    procedure PDJSillyLabel11Click(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure SearchKeyPress(Sender: TObject; var Key: Char);
    procedure StatusUpdate1Click(Sender: TObject);
    procedure LateBills1Click(Sender: TObject);
    procedure UpdateLateBills1Click(Sender: TObject);
    procedure PDJSillyLabel2Click(Sender: TObject);
    procedure PDJSillyLabel1Click(Sender: TObject);
    procedure ReprintBillingRegisterLateBills1Click(Sender: TObject);
    procedure PDJSillyLabel8Click(Sender: TObject);
    procedure PDJSillyLabel7Click(Sender: TObject);
    procedure CreateConsumerTextforEngineering1Click(Sender: TObject);
    procedure SearchAreaKeyPress(Sender: TObject; var Key: Char);
    procedure SearchBookKeyPress(Sender: TObject; var Key: Char);
    procedure DsFancyButton1Click(Sender: TObject);
    procedure DsFancyButton2Click(Sender: TObject);
    procedure CollectorsDisconnectedBillsList1Click(Sender: TObject);
    procedure DisonnectedConsumersSummary1Click(Sender: TObject);
    procedure RadioGroup3Click(Sender: TObject);
    procedure DsFancyButton3Click(Sender: TObject);
    procedure DsFancyButton4Click(Sender: TObject);
    procedure SummaryofConsumersPerKilowatthour1Click(Sender: TObject);
    procedure OneYearAverageLifeLineReport1Click(Sender: TObject);
    procedure PANTADWIDKURYENTEApplications1Click(Sender: TObject);
    procedure DeleteBillwithPANTAWID1Click(Sender: TObject);
    procedure BillRatesReference1Click(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure ConsumerswithDemand1Click(Sender: TObject);
    procedure NxButton2Click(Sender: TObject);
    procedure ReprintPowerBill1Click(Sender: TObject);
    procedure ReprintPowerBillfromBillingArchive1Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure PANTAWIDKURYENTERecoveryApplications1Click(Sender: TObject);
    procedure NxLinkLabel1Click(Sender: TObject);
    procedure NxLinkLabel2Click(Sender: TObject);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure PrintARLedger2Click(Sender: TObject);
    procedure RemoveMeterTransaction1Click(Sender: TObject);
    procedure UnbundledARMonthEndSummaries1Click(Sender: TObject);
    procedure OtherChargesIntegrationInterface1Click(Sender: TObject);
    procedure Zer1Click(Sender: TObject);
    procedure ConsumerPriorityNumber1Click(Sender: TObject);
  private
    { Private declarations }
    OldPos, DeltaPos      : TPoint;
    Moving                : Boolean;
    MovingPnl             : TNxHeaderPanel;
  public
    { Public declarations }

  end;

var
  BillMasterForm: TBillMasterForm;
  Mode : Word;
  PassWord : String[30];
  MasterText         : Text;

implementation

uses DateUtils,
     Data,
     BillMasterMainRecord,
     BillMasterCurrentBill,
     DisconnectionTransaction,
     ReconnectionTransaction,
     ChangeMeterTransaction,
     ChangeNameTransaction,
     TransferAreaTransaction,
     ReadingFilter,
     OtherCharges,
     StatusUpdate,
     ModTools,
     ConsumptionMonitor,
     SequenceEditor,
     MasterList,
     ReadingCompute,
     PostAR,
     MeterReadingSheet,
     UnpaidMasterList,
     Frequency,
     ReadingFilterlatebill,
     ReadingComputeLateBill,
     PostARLateBill,
     DiscoSumm,
     summkwhr,
     OneYearLifeLine,
     BillAdjPopulate,
     DeletePantawidKuryente,
     billrates,
     Intro,
     BillingPrintBills,
     pantawidrecovery, RemoveMeter, AR, OCIntegration, ZeroVAT,
  PriorityNumberFrm;

Var
Lst                : Text     ;
HeadingSW          : Boolean  ;
TotalConsumer      : Word     ;
LineCount          : Word     ;
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

{$R *.dfm}
procedure TBillMasterForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   With BillingData do
    begin
     Master.Active        := False;
     AR.Active            := False;
     FlatRate.Active      := False;
     FlatRateIndex.Active := False;
     Vicinity.Active      := False;
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
     graphdata.Active     := False;
    end;
     BillHistory.Close;
     Pantawid.Close;
     PilferBill.Close;

   If Assigned(ReadingDataFilterForm) then ReadingDataFilterForm.Destroy;
   ReadingDataFilterForm := Nil;
   If Assigned(ReadingComputeForm) then ReadingComputeForm.Destroy;
   ReadingComputeForm := Nil;
   Action := caFree;
   BillMasterForm := Nil;
end;


procedure TBillMasterForm.FormShow(Sender: TObject);
begin
  if IntroForm.UsersisWan.AsBoolean = false then
  begin
    SetBillingFilter1.Enabled := true;
    LateBills1.Enabled := true;
    UpdateMasterFromBilling1.Enabled := true;
    UpdateLateBills1.Enabled := true;
  end;

  Mode := 1;
  PageControl1.ActivePageIndex := 0;
  Search.SetFocus;
end;

procedure TBillMasterForm.Exit1Click(Sender: TObject);
begin
  Close;
end;

procedure TBillMasterForm.NormalMode1Click(Sender: TObject);
begin
  Mode := 1;
  Label1.Caption := ' Record Access Mode -> Normal Mode';
  PageControl1.ActivePageIndex := 0;
end;
procedure TBillMasterForm.CurrentBillingMode1Click(Sender: TObject);
begin
  Label1.Caption := ' Record Access Mode -> Current Billing Mode';
  Mode := 2;
end;

procedure TBillMasterForm.Disconnection1Click(Sender: TObject);
begin
  Label1.Caption := ' Record Access Mode -> Disconnection Mode';
  Mode := 3;
end;

procedure TBillMasterForm.Reconnection1Click(Sender: TObject);
begin
  Label1.Caption := ' Record Access Mode -> Reconnection Mode';
  Mode := 4;
end;

procedure TBillMasterForm.ChangeMeter1Click(Sender: TObject);
begin
  Label1.Caption := ' Record Access Mode -> Change Meter Mode';
  Mode := 5;
end;

procedure TBillMasterForm.ChangeName1Click(Sender: TObject);
begin
  Label1.Caption := ' Record Access Mode -> Change Name Mode';
  Mode := 6;
end;

procedure TBillMasterForm.TransferArea1Click(Sender: TObject);
begin
  Label1.Caption := ' Record Access Mode -> Transfer Area Mode';
  Mode := 7;
end;

procedure TBillMasterForm.AgingReport1Click(Sender: TObject);
begin
   If not assigned(FrequencyForm) then
   FrequencyForm := TFrequencyForm.Create(Application);
   BillingData.Fr.Active := True;
   FrequencyForm.Show;
end;

procedure TBillMasterForm.ConsumptionMonitor1Click(Sender: TObject);
begin
   // remove this
   If not assigned(ConsumptionMonitorForm) then
   ConsumptionMonitorForm := TConsumptionMonitorForm.Create(Application);
   ConsumptionMonitorForm.Show;
end;

Procedure PrintLedger;
Var
LineCount : Word;

Procedure ARLedgerHeading;
begin
With BillingData do
begin
  Write(lst,#27+'P',#18);
  Writeln(Lst,'DATE PRINTED  : ',DateToStr(Date));
  Writeln(Lst,'OUTPUT        : Accounts Receivable Ledger');
  Writeln(Lst,'ACCOUNT #     : ',MasterAccountNumber.Text);
  Writeln(Lst,'CUSTOMER NAME : ',MasterName.Text);
  Write(Lst,#15);
  Writeln(Lst,'--------------------------------------------------------------------------------------------------------');
  Writeln(Lst,'|   Date   |Reference |BMon|Reading|  KWHR|         Debit |        Credit |       Balance |OR/Collector|');
  Writeln(Lst,'--------------------------------------------------------------------------------------------------------');
end;
end;

begin
AssignFile(Lst,'LPT1');
Rewrite(Lst);
If IOResult <> 0 then
  begin
   ShowMessage('Printer not Ready');
   Exit;
  end;

LineCount := 0;
ARLedgerHeading;

With BillingData do
 begin
    AR.First;
    While not AR.Eof do
      begin

      If (BillMasterForm.RadioGroup3.ItemIndex = 0) or
         ((ARDate.AsDateTime >= BillMasterForm.fromdate.Date) and
          (ARDate.AsDateTime <= BillMasterForm.todate.Date)) then
      begin
      Writeln(Lst,'|',  FormatDateTime('MM/DD/YYYY',ARDate.AsDateTime)    ,'|',
                        JustStr(ARDocument.Text,' ',10,0)                 ,'|',
                        JustStr(ARBillMonth.Text,' ',4,0)                 ,'|',
                        ARReading.Text:7                                  ,'|',
                        ARKilowattHour.Text:6                             ,'|',
                        Format(ARDebit.AsCurrency,'##,###,###.##')        ,'|',
                        Format(ARCredit.AsCurrency,'##,###,###.##')       ,'|',
                        Format(ARmybal.AsCurrency,'##,###,###.##')        ,'|',
                        JustStr(ARCollectorCode.Text,' ',12,0)            ,'|');
      Inc(LineCount);
      end;

      If LineCount > 50 then
        begin
        LineCount := 0;
        Writeln(Lst,'--------------------------------------------------------------------------------------------------------');
        Write(Lst,#12);
        ARLedgerHeading;
        end;

      AR.Next;
      end;
  If LineCount > 0 then
  begin
    Writeln(Lst,'--------------------------------------------------------------------------------------------------------');
    Write(Lst,#12);
  end;
end;
ShowMessage('Done.');
Write(Lst,#12);
CloseFile(Lst);
end;

procedure TBillMasterForm.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
   if IntroForm.UsersisWan.AsBoolean = true then
   exit;

   If Key = '+' then
     begin
      If not assigned(BillMasterMainRecordForm) then
      BillMasterMainRecordForm := TBillMasterMainRecordForm.Create(Application);
      BillMasterMainRecordForm.Show;
     end;

   If Key = #13 then
     begin
      BillingData.Master.Edit;
      Case Mode of

        1 : begin
             If IntroForm.UsersUserRestriction.Text = 'ADMINISTRATOR' then
             begin

               If not assigned(BillMasterMainRecordForm) then
               BillMasterMainRecordForm := TBillMasterMainRecordForm.Create(Application);
               BillMasterMainRecordForm.AccountCode := BillingData.MasterCode.AsInteger;
               With BillMasterMainRecordForm, BillingData do
                 begin
                   Area.Text              := MasterArea.Text;
                   Book.Text              := MasterBook.Text;
                   Sequence.Text          := MasterSequence.Text;
                   AccountNumber.Text     := MasterAccountNumber.Text;
                   CName.Text             := MasterName.Text;
                   Address.Text           := MasterAddress.Text;
                   Ratecode.Text          := MasterRateCode.Text;
                   WRatecode.Text         := MasterWRateCode.Text;
                   DiscountRate.AsFloat   := MasterVATDisc.AsFloat;

                   CType.ItemIndex        := -1;
                   If MasterConsCode.Text = '1' then CType.ItemIndex := 0;
                   If MasterConsCode.Text = '2' then CType.ItemIndex := 1;
                   If MasterConsCode.Text = '3' then CType.ItemIndex := 2;
                   If MasterConsCode.Text = '4' then CType.ItemIndex := 3;
                   If MasterConsCode.Text = '5' then CType.ItemIndex := 4;

                   If MasterConnCode.Text = '1' then ConnCode.ItemIndex := 0 else ConnCode.ItemIndex := 1;

                   Transformer.Text       := MasterTransformer.Text;
                   PoleNumber.Text        := MasterPoleNumber.Text;
                   MeterBrand.Text        := MasterMeterBrand.Text;
                   Serial.Text            := MasterSerial.Text;
                   Multiplier.AsInteger   := MasterMultiplier.AsInteger;
                   NewConnectionDate.Date := MasterNewConnectionDate.AsDateTime;
                   PresentReading.AsFloat := MasterPresentReadingKWH.AsFloat;
                   Demand.AsFloat         := MasterKilowattUsed.AsFloat;

                   if MasterisFixDemand.AsInteger = 1 then
                      CB_isFixedDemand.Checked := true
                   else
                      CB_isFixedDemand.Checked := false;

                   if (MasterWRateCode.Text = 'R') or (MasterWRateCode.Text = 'L') then
                      CB_isFixedDemand.Enabled := false
                   else
                      CB_isFixedDemand.Enabled := true;


                   XFormerQTY.Text        := MasterXFormerQty.Text;
                   XFormerKVA.Text        := MasterXFormerKVA.Text;
                   CBook.Text             := MasterCBook.Text;
                 end;
               BillMasterMainRecordForm.Show;

             end else
             MessageDlg('Your restriction does not allow editing of a Master record', mtWarning, [mbOK], 0);
            end;

        2 : begin
              If not assigned(CurrentBillingForm) then
              CurrentBillingForm := TCurrentBillingForm.Create(Application);
              CurrentBillingForm.Show;
            end;

        3 : begin
              If not assigned(DisconnectionTransactionForm) then
              DisconnectionTransactionForm := TDisconnectionTransactionForm.Create(Application);
              DisconnectionTransactionForm.Show;
            end;

        4 : begin
              If not assigned(ReconnectionTransactionForm) then
              ReconnectionTransactionForm := TReconnectionTransactionForm.Create(Application);
              ReconnectionTransactionForm.Show;
            end;

        5 : begin
              If not assigned(ChangeMeterTransactionForm) then
              ChangeMeterTransactionForm := TChangeMeterTransactionForm.Create(Application);
              ChangeMeterTransactionForm.Show;
            end;

        6 : begin
              If not assigned(ChangeNameTransactionForm) then
              ChangeNameTransactionForm := TChangeNameTransactionForm.Create(Application);
              ChangeNameTransactionForm.Show;
            end;

        7 : begin
              If not assigned(TransferAreaTransactionForm) then
              TransferAreaTransactionForm := TTransferAreaTransactionForm.Create(Application);
              TransferAreaTransactionForm.Show;
            end;

        8 : begin
              If not assigned(OtherChargeForm) then
              OtherChargeForm := TOtherChargeForm.Create(Application);
              OtherChargeForm.Show;
            end;

      end;
     end;
end;

procedure TBillMasterForm.OtherCharges1Click(Sender: TObject);
begin
  Label1.Caption := ' Record Access Mode -> Other Charges Mode';
  Mode := 8;
end;

procedure TBillMasterForm.OtherChargesIntegrationInterface1Click(
  Sender: TObject);
begin
  If not assigned(OCIntegrationForm) then OCIntegrationForm := TOCIntegrationForm.Create(Application);
  OCIntegrationForm.Show;
end;

procedure TBillMasterForm.UpdateMasterFromBilling1Click(Sender: TObject);
begin
  If not assigned(ARPostingForm) then
  ARPostingForm := TARPostingForm.Create(Application);
  ARPostingForm.PostingDate.Date := Now;
  ARPostingForm.Show;
end;

procedure TBillMasterForm.SequenceEditor1Click(Sender: TObject);
begin
  If not assigned(SequenceEditorForm) then
    SequenceEditorForm := TSequenceEditorForm.Create(Application);
    SequenceEditorForm.Show;
end;

procedure TBillMasterForm.MasterList1Click(Sender: TObject);
begin
   If not assigned(MasterListForm) then
   MasterListForm := TMasterListForm.Create(Application);
   MasterListForm.Show;
end;

procedure TBillMasterForm.SetBillingFilter1Click(Sender: TObject);
begin
  If not assigned(ReadingDataFilterForm) then ReadingDataFilterForm := TReadingDataFilterForm.Create(Application);
  ReadingDataFilterForm.Show;
end;

procedure TBillMasterForm.linesonlyClick(Sender: TObject);
begin
  If Assigned(ReadingDataFilterForm) then
  begin
   If not assigned(ReadingComputeForm) then
   ReadingComputeForm := TReadingComputeForm.Create(Application);
   ReadingComputeForm.Show;
  end else showmessage('Set Billing Filter first...');
end;

procedure TBillMasterForm.GovernmentStatementofAccount1Click(
  Sender: TObject);
begin
   PageControl1.ActivePageIndex   := 0;
   PageControl1.Enabled           := False;
end;

procedure TBillMasterForm.PDJSillyLabel4Click(Sender: TObject);
Procedure PrintHeading;
begin
 With BillingData do
 begin
  Write(Lst,#18);
  Writeln(lst,#27 + 'P'+'PAGE # '+IntToStr(PageCount));
  Writeln(lst,#27 + '4'+'BILLING REGISTER'+#27+'5');
  Writeln(lst,'BILLING MONTH     : '+BillMonth.Text+' REPRINT');
  Writeln(lst,'AREA/BOOK/ADDRESS : '+Area.Text+'/'+ Book.Text+'-'+VicinityAddress.Text);
  Write(Lst,#27+'M');
  Writeln(lst,'-------------------------------------------------------------------------------------------------------------------------------------------------------------------');
  Writeln(lst,'|  Acct #  |        Consumer Name         |PresRead|PrevRead|    KWHR|  DEMAND| Basic Charge |Uni-Charge Adj| XFRent/LLP |  XF Refund |   Total Bill |  OEBR #  |R|');
  Writeln(lst,'-------------------------------------------------------------------------------------------------------------------------------------------------------------------');
 end;
end;

begin
  TotalConsumer         := 0;
  LineCount             := 0;

  MasterR.Close;
  MasterR.SQL.Clear;
  MasterR.SQL.Add('select * from billhistory');
  MasterR.SQL.Add('where area = :area and');
  MasterR.SQL.Add('      book = :book and');
  MasterR.SQL.Add('      billmonth = :billmonth');
  MasterR.SQL.Add('order by  accountnumber');
  MasterR.ParamByName('Area').Text      := Area.Text;
  MasterR.ParamByName('Book').Text      := Book.Text;
  MasterR.ParamByName('BillMonth').Text := BillMonth.Text;
  MasterR.Open;

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

  Gauge1.Progress := 0;
  Gauge1.MinValue := 0;
  Gauge1.MaxValue := MasterR.RecordCount;
  MasterR.First;

  While not MasterR.Eof do
   begin
     Gauge1.AddProgress(1);
     Application.ProcessMessages;

     If HeadingSW then
       begin
        PrintHeading;
        HeadingSW := False;
       end;

       TotalPower      := MasterRGenSysCharge.AsCurrency +
                          MasterRHostCommCharge.AsCurrency +
                          MasterRForexCharge.AsCurrency +
                          MasterRTCDemandCharge.AsCurrency +
                          MasterRTCTransSystemCharge.AsCurrency +
                          MasterRSystemLossCharge.AsCurrency +
                          MasterRDCDemandCharge.AsCurrency +
                          MasterRDCDistributionCharge.AsCurrency +
                          MasterRSCRetCustCharge.AsCurrency +
                          MasterRSCSupplySysCharge.AsCurrency +
                          MasterRMCRetailCustCharge.AsCurrency +
                          MasterRMCSystemCharge.AsCurrency;

       TotalAdjustment := MasterRUCNPCStrandedDebts.AsCurrency +
                          MasterRUCNPCStrandedContCost.AsCurrency +
                          MasterRUCDUStrandedContCost.AsCurrency +
                          MasterRUCME.AsCurrency +
                          MasterRUCEqTaxesAndRoyalties.AsCurrency +
                          MasterRUCEC.AsCurrency +
                          MasterRUCCrossSubRemoval.AsCurrency +
                          MasterRICCrossSubsidyCharge.AsCurrency +
                          MasterRPowerActRateRed.AsCurrency +
                          MasterRLifelineDiscSubs.AsCurrency +
                          MasterRLoanCondo.AsCurrency +
                          MasterRLCCustMo.AsCurrency +
                          MasterRVAT.AsCurrency;

       TransRental     := MasterRTransformerRental.AsCurrency;
       TransRefund     := MasterROCAmount1.AsCurrency +
                          MasterROCAmount2.AsCurrency +
                          MasterROCAmount3.AsCurrency;

       PTotalPower        := PTotalPower + TotalPower;
       PTotalAdjustment   := PTotalAdjustment + TotalAdjustment;
       PTransRental       := PTransRental  + TransRental;
       PTransRefund       := PTransRefund + TransRefund;
       PTotalBill         := PTotalBill + MasterRTotalBill.AsCurrency;
       PTotalKWHr         := PTotalKWHr + MasterRKilowattHour.AsCurrency;
       PTotalKWUsed       := PTotalKWUsed + MasterRKilowattUsed.AsCurrency;

       GTotalPower        := GTotalPower + TotalPower;
       GTotalAdjustment   := GTotalAdjustment + TotalAdjustment;
       GTransRental       := GTransRental  + TransRental;
       GTransRefund       := GTransRefund + TransRefund;
       GTotalBill         := GTotalBill + MasterRTotalBill.AsCurrency;
       GTotalKWHr         := GTotalKWHr + MasterRKilowattHour.AsCurrency;
       GTotalKWUsed       := GTotalKWUsed + MasterRKilowattUsed.AsCurrency;

       Writeln(lst,'|',JustStr(MasterRAccountNumber.Text,' ',10,0)        ,'|',
                       JustStr(MasterRName.Text,' ',30,0)                 ,'|',
                       MasterRPreviousReadingKWH.AsCurrency:8:1           ,'|',
                       MasterRPresentReadingKWH.AsCurrency:8:1            ,'|',
                       MasterRKilowattHour.AsCurrency:8:1                 ,'|',
                       MasterRKilowattUsed.AsCurrency:8:1                 ,'|',
                       Format(TotalPower,'#,###,###.##')                  ,'|',
                       Format(TotalAdjustment,'#,###,###.##')             ,'|',
                       Format(TransRental,'###,###.##')                   ,'|',
                       Format(TransRefund,'###,###.##')                   ,'|',
                       Format(MasterRTotalBill.AsCurrency,'#,###,###.##') ,'|',
                       JustStr(MasterROebrNumber.Text,' ',10,0)           ,'|',
                       JustStr(MasterRRateCode.Text,' ',1,0)              ,'|');

       Inc(TotalConsumer);

     Inc(LineCount);
     If (LineCount = 50) and not MasterR.eof then
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
   MasterR.Next;
   end; { end while not eof }
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
  CloseFile(Lst);
  MessageDlg('Printing done....', mtInformation, [mbOK], 0);
end;

procedure TBillMasterForm.ReprintBillingRegister1Click(Sender: TObject);
begin
  Panel7.Left     :=  195;
  Panel7.Top      :=  145;
  Panel7.Visible  :=  True;
  Panel7.BringToFront;
  Area.SetFocus;
end;

procedure TBillMasterForm.MeterReadingSheet2Click(Sender: TObject);
begin
  If not Assigned(MeterReadingSheetForm) then
   MeterReadingSheetForm := TMeterReadingSheetForm.Create(Application);
   MeterReadingSheetForm.Show;
end;

procedure TBillMasterForm.PDJSillyLabel5Click(Sender: TObject);
begin
   Panel7.Visible := False;
end;

procedure TBillMasterForm.UnbundledARMonthEndSummaries1Click(Sender: TObject);
begin
  If not Assigned(AccountsReceivable) then
   AccountsReceivable := TAccountsReceivable.Create(Application);
   AccountsReceivable.Show;
end;

procedure TBillMasterForm.UnpaidBillsSummary1Click(Sender: TObject);
begin
  If not Assigned(UnpaidBillsListForm) then
   UnpaidBillsListForm := TUnpaidBillsListForm.Create(Application);
   UnpaidBillsListForm.Show;
end;

procedure TBillMasterForm.UpdateMasterfromLateBills1Click(Sender: TObject);
begin
{ TODO : Replace post to A/R from Latebills ...... }
end;


procedure TBillMasterForm.DeleteRecord1Click(Sender: TObject);
begin
  if IntroForm.UsersisWan.AsBoolean = true then
  exit;

  Password := '';
  Panel8.Left    := 148;
  Panel8.Left    := 105;
  Panel8.Visible := True;
  Panel8.BringToFront;
  Edit1.SetFocus;
end;

procedure TBillMasterForm.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
   If Key <> #13 then
     begin
       PassWord := PassWord + Key;
       Key := '*';
     end;
end;

procedure TBillMasterForm.PDJSillyLabel6Click(Sender: TObject);
begin
  Panel8.Visible := False;
end;

procedure TBillMasterForm.PDJSillyLabel3Click(Sender: TObject);
var
  accnt : String;
begin
   If Password = 'shepherd' then
   begin
      codeDeleteMaster := BillingData.MasterCode.Text;
      accnt := BillingData.MasterAccountNumber.Text;
      BillingData.Master.Delete;

      messagedlg('Consumer account: '+accnt+', was deleted...',mtInformation,[mbOK],0);
   end else begin
      ShowMessage('Invalid password');
   end;

   Panel8.Visible := False;
end;

procedure TBillMasterForm.PDJSillyLabel9Click(Sender: TObject);
begin
  If Password = 'shepherd' then
     begin
       DBGrid2.ReadOnly := False;
       DBGrid9.ReadOnly := False;
     end else ShowMessage('Invalid password');
  Panel10.Visible := False;
end;

procedure TBillMasterForm.PDJSillyLabel10Click(Sender: TObject);
begin
  DBGrid2.ReadOnly  := True;
  DBGrid9.ReadOnly  := True;
  Panel10.Visible := False;
end;

procedure TBillMasterForm.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
   If Key <> #13 then
     begin
       PassWord := PassWord + Key;
       Key := '*';
     end;
end;

procedure TBillMasterForm.SetRelationtoAccountNumber1Click(
  Sender: TObject);
begin
  PassWord := '';
  Panel10.Left    := 180;
  Panel10.Top     := 124;
  Panel10.Visible := True;
  Panel10.BringToFront;
  Edit2.SetFocus;
end;

procedure TBillMasterForm.ViewAdjustedBills1Click(Sender: TObject);
begin
  ViewAdj.Close;
  ViewAdj.ParamByName('AccountNumber').Text := BillingData.MasterAccountNumber.Text;
  ViewAdj.Open;
  ViewAdjustmentPanel.Left     := 16;
  ViewAdjustmentPanel.Top      := 3;
  StaticText2.Caption := BillingData.MasterAccountNumber.Text;
  StaticText3.Caption := BillingData.MasterName.Text;
  StaticText3.Caption := BillingData.MasterAddress.Text;
  StaticText3.Caption := BillingData.MasterSerial.Text;
  ViewAdjustmentPanel.Visible  := True;
  ViewAdjustmentPanel. BringToFront;
end;

procedure TBillMasterForm.Zer1Click(Sender: TObject);
begin
   If not assigned(ZeroVATForm) then ZeroVATForm := TZeroVATForm.Create(Self);
   ZeroVATForm.Show;
end;

procedure TBillMasterForm.PDJSillyLabel11Click(Sender: TObject);
begin
  ViewAdj.Close;
  ViewAdj.UnPrepare;
  ViewAdjustmentPanel.Visible := False;
end;

procedure TBillMasterForm.DataSource1DataChange(Sender: TObject;
  Field: TField);
begin
   With BillingData do
    begin
     graphdata.Close;
     graphdata.ParamByName('code').Text := MasterCode.Text;
     graphdata.Open;
    end;
end;

procedure TBillMasterForm.Button1Click(Sender: TObject);
begin
  With BillingData do
   begin
    DataSource1.OnDataChange := Nil;
    Master.Close;
    Master.SQL.Clear;
    Master.SQL.Add('select * from master where area = :area and book = :book order by accountnumber');
    Master.ParamByName('area').Text := SearchArea.Text;
    Master.ParamByName('book').Text := SearchBook.Text;
    Master.Open;

    If Master.IsEmpty then
      begin
       MessageDlg('No records match query....', mtError, [mbOK], 0);
       Master.Close;
       SearchArea.SetFocus;
      end;
   end;
   DataSource1.OnDataChange := DataSource1DataChange;
   DataSource1DataChange(self,nil);
end;

procedure TBillMasterForm.Button2Click(Sender: TObject);
begin

With BillingData do
begin
DataSource1.OnDataChange := Nil;

Case RadioGroup1.ItemIndex of
0 :  begin
      Master.Close;
      Master.SQL.Clear;
      Master.SQL.Add('select * from master where accountnumber like :accountnumber');
      Master.SQL.Add('order by accountnumber');
      Master.ParamByName('accountnumber').Text := '%'+Search.Text+'%';
      Master.Open;
     end;

1 :  begin
      Master.Close;
      Master.SQL.Clear;
      Master.SQL.Add('select * from master where name like :name');
      Master.SQL.Add('order by name');
      Master.ParamByName('name').Text := '%'+Search.Text+'%';
      Master.Open;
     end;

2 :  begin
      Master.Close;
      Master.SQL.Clear;
      Master.SQL.Add('select * from master where serial like :serial');
      Master.SQL.Add('order by accountnumber');
      Master.ParamByName('serial').Text := '%'+Search.Text+'%';
      Master.Open;
     end;
3 :  begin
      Master.Close;
      Master.SQL.Clear;
      Master.SQL.Add('select * from master where vatdisc > 0');
      Master.SQL.Add('order by accountnumber');
      Master.Open;
     end;
end;

If Master.IsEmpty then
  begin
   MessageDlg('No records match.....', mtError, [mbOK], 0);
   Master.Close;
  end;
Search.SetFocus;

DataSource1.OnDataChange := DataSource1DataChange;
DataSource1DataChange(self,nil);

end;
end;

procedure TBillMasterForm.RadioGroup1Click(Sender: TObject);
begin
  Search.SetFocus;
end;

procedure TBillMasterForm.SearchKeyPress(Sender: TObject; var Key: Char);
begin
   If Key = #13 then Button2Click(self);
end;

procedure TBillMasterForm.StatusUpdate1Click(Sender: TObject);
begin
if (MessageDlg('This will update the A.R Balance Co;umn in the Master FIle.'+#13+#10+'This may take several minutes to complete..'+#13+#10+'Proceed?', mtConfirmation, [mbYes, mbNo], 0) = mrNo) then exit;

Panel3.Left         := 191;
Panel3.Top          := 177;
Panel3.Visible      := True;
Panel3.BringToFront;
Animate1.Active := True;
Application.ProcessMessages;

ARStatusUpdate.Close;
ARStatusUpdate.SQL.Clear;
ARStatusUpdate.SQL.Add('truncate arstatus');
ARStatusUpdate.Execute;
Application.ProcessMessages;

ARStatusUpdate.Close;
ARStatusUpdate.SQL.Clear;
ARStatusUpdate.SQL.Add('update master set arbalance = 0');
ARStatusUpdate.Execute;
Application.ProcessMessages;

ARStatusUpdate.SQL.Clear;
ARStatusUpdate.SQL.Add('insert into arstatus (code, balance)');
ARStatusUpdate.SQL.Add('select code, sum(amount) from unpaidbills');
ARStatusUpdate.SQL.Add('group by code');
ARStatusUpdate.Execute;
Application.ProcessMessages;

ARStatusUpdate.SQL.Clear;
ARStatusUpdate.SQL.Add('update master, arstatus');
ARStatusUpdate.SQL.Add('set master.arBalance =  arstatus.balance');
ARStatusUpdate.SQL.Add('where master.code = arstatus.code');
ARStatusUpdate.Execute;
Application.ProcessMessages;

Animate1.Active := False;
Panel3.Visible  := False;
MessageDlg('Done....', mtInformation, [mbOK], 0);
end;

procedure TBillMasterForm.LateBills1Click(Sender: TObject);
begin
   If not assigned(ReadingDataFilterLateBillForm) then
   ReadingDataFilterLateBillForm := TReadingDataFilterLateBillForm.Create(Application);
   ReadingDataFilterLateBillForm.ShowModal;

   If ReadingDataFilterLateBillForm.ModalResult = mrcancel then exit;

   If not assigned(ReadingComputeLateBillsForm) then
   ReadingComputeLateBillsForm    := TReadingComputeLateBillsForm.Create(Application);
   ReadingComputeLateBillsForm.Show;
end;

procedure TBillMasterForm.UpdateLateBills1Click(Sender: TObject);
begin
  If not assigned(ARPostingLateBillForm) then
  ARPostingLateBillForm := TARPostingLateBillForm.Create(Application);
  ARPostingLateBillForm.CutoffDate.Date := Now;
  ARPostingLateBillForm.Show;
end;

procedure TBillMasterForm.PDJSillyLabel2Click(Sender: TObject);
begin
  Panel4.Visible := False;
end;

procedure TBillMasterForm.PDJSillyLabel1Click(Sender: TObject);
Procedure PrintHeading;
begin
 With BillingData do
 begin
  Write(Lst,#18);
  Writeln(lst,#27 + 'P'+'PAGE # '+IntToStr(PageCount));
  Writeln(lst,#27 + '4'+'BILLING REGISTER - LATE BILLS'+#27+'5');
  Writeln(lst,'BILLING MONTH     : '+Edit5.Text+' REPRINT ');
  Writeln(lst,'AREA/BOOK/ADDRESS : '+Area.Text+'/'+ Book.Text+'-'+VicinityAddress.Text);
  Write(Lst,#27+'M');
  Writeln(lst,'----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------');
  Writeln(lst,'|  Acct #  |        Consumer Name         |PreaRead|PrevRead|    KWHR|  DEMAND| Basic Charge |Uni-Charge Adj| XFRent/LLP |  XF Refund |   Total Bill |  OEBR #  |R|    Reading Dates    | BM |');
  Writeln(lst,'----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------');
 end;
end;

begin
  TotalConsumer         := 0;
  LineCount             := 0;

  MasterR.Close;
  MasterR.SQL.Clear;
  MasterR.SQL.Add('select * from latebillhistory');
  MasterR.SQL.Add('where area = :area and');
  MasterR.SQL.Add('      book = :book and');
  MasterR.SQL.Add('      billdate between :datefrom and :dateto');
  MasterR.SQL.Add('order by billnumber');
  MasterR.ParamByName('Area').Text       := Edit3.Text;
  MasterR.ParamByName('Book').Text       := Edit4.Text;
  MasterR.ParamByName('datefrom').AsDate := DateFrom.Date;
  MasterR.ParamByName('dateto').AsDate   := DateTo.Date;
  MasterR.Open;

  if MasterR.IsEmpty then
    begin
     MessageDlg('No records to print....', mtError, [mbOK], 0);
     MasterR.Close;
     Exit;
    end;

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

  Gauge2.Progress := 0;
  Gauge2.MinValue := 0;
  Gauge2.MaxValue := MasterR.RecordCount;
  MasterR.First;

  While not MasterR.Eof do
   begin
     Gauge2.AddProgress(1);
     Application.ProcessMessages;

     If HeadingSW then
       begin
        PrintHeading;
        HeadingSW := False;
       end;

       TotalPower      := MasterRGenSysCharge.AsCurrency +
                          MasterRHostCommCharge.AsCurrency +
                          MasterRForexCharge.AsCurrency +
                          MasterRTCDemandCharge.AsCurrency +
                          MasterRTCTransSystemCharge.AsCurrency +
                          MasterRSystemLossCharge.AsCurrency +
                          MasterRDCDemandCharge.AsCurrency +
                          MasterRDCDistributionCharge.AsCurrency +
                          MasterRSCRetCustCharge.AsCurrency +
                          MasterRSCSupplySysCharge.AsCurrency +
                          MasterRMCRetailCustCharge.AsCurrency +
                          MasterRMCSystemCharge.AsCurrency;

       TotalAdjustment := MasterRUCNPCStrandedDebts.AsCurrency +
                          MasterRUCNPCStrandedContCost.AsCurrency +
                          MasterRUCDUStrandedContCost.AsCurrency +
                          MasterRUCME.AsCurrency +
                          MasterRUCEqTaxesAndRoyalties.AsCurrency +
                          MasterRUCEC.AsCurrency +
                          MasterRUCCrossSubRemoval.AsCurrency +
                          MasterRICCrossSubsidyCharge.AsCurrency +
                          MasterRPowerActRateRed.AsCurrency +
                          MasterRLifelineDiscSubs.AsCurrency +
                          MasterRLoanCondo.AsCurrency +
                          MasterRLCCustMo.AsCurrency +
                          MasterRVAT.AsCurrency;

       TransRental     := MasterRTransformerRental.AsCurrency;
       TransRefund     := MasterROCAmount1.AsCurrency +
                          MasterROCAmount2.AsCurrency +
                          MasterROCAmount3.AsCurrency;

       PTotalPower        := PTotalPower + TotalPower;
       PTotalAdjustment   := PTotalAdjustment + TotalAdjustment;
       PTransRental       := PTransRental  + TransRental;
       PTransRefund       := PTransRefund + TransRefund;
       PTotalBill         := PTotalBill + MasterRTotalBill.AsCurrency;
       PTotalKWHr         := PTotalKWHr + MasterRKilowattHour.AsCurrency;
       PTotalKWUsed       := PTotalKWUsed + MasterRKilowattUsed.AsCurrency;

       GTotalPower        := GTotalPower + TotalPower;
       GTotalAdjustment   := GTotalAdjustment + TotalAdjustment;
       GTransRental       := GTransRental  + TransRental;
       GTransRefund       := GTransRefund + TransRefund;
       GTotalBill         := GTotalBill + MasterRTotalBill.AsCurrency;
       GTotalKWHr         := GTotalKWHr + MasterRKilowattHour.AsCurrency;
       GTotalKWUsed       := GTotalKWUsed + MasterRKilowattUsed.AsCurrency;

       Writeln(lst,'|',JustStr(MasterRAccountNumber.Text,' ',10,0)        ,'|',
                       JustStr(MasterRName.Text,' ',30,0)                 ,'|',
                       MasterRPreviousReadingKWH.AsCurrency:8:1            ,'|',
                       MasterRPresentReadingKWH.AsCurrency:8:1           ,'|',
                       MasterRKilowattHour.AsCurrency:8:1                 ,'|',
                       MasterRKilowattUsed.AsCurrency:8:1                 ,'|',
                       Format(TotalPower,'#,###,###.##')                  ,'|',
                       Format(TotalAdjustment,'#,###,###.##')             ,'|',
                       Format(TransRental,'###,###.##')                   ,'|',
                       Format(TransRefund,'###,###.##')                   ,'|',
                       Format(MasterRTotalBill.AsCurrency,'#,###,###.##') ,'|',
                       JustStr(MasterROebrNumber.Text,' ',10,0)           ,'|',
                       JustStr(MasterRRateCode.Text,' ',1,0)              ,'|',
                       JustStr(MasterRPreviousReadingDate.Text,' ',10,0),' ',
                       JustStr(MasterRPresentReadingDate.Text,' ',10,0)   ,'|',
                       JustStr(MasterRBillMonth.Text,' ',4,0)             ,'|');

       Inc(TotalConsumer);

     Inc(LineCount);
     If (LineCount = 50) and not MasterR.eof then
      begin
       LineCount := 0;
       Inc(PageCount);

       Writeln(lst,'----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------');
       Writeln(lst,'| Page Total --------------------------------------------->>|',
                     PTotalKWHr:8:1                          ,'|',
                     PTotalKWUsed:8:1                        ,'|',
                     Format(PTotalPower,'#,###,###.##')      ,'|',
                     Format(PTotalAdjustment,'#,###,###.##') ,'|',
                     Format(PTransRental,'###,###.##')       ,'|',
                     Format(PTransRefund,'###,###.##')       ,'|',
                     Format(PTotalBill,'#,###,###.##')       ,
                     '|          | |                          |');
       Writeln(lst,'----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------');
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
   MasterR.Next;
   end; { end while not eof }
  If LineCount > 0 then
  begin
  Writeln(lst,'----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------');
  Writeln(lst,'| Page Total --------------------------------------------->>|',
                PTotalKWHr:8:1                          ,'|',
                PTotalKWUsed:8:1                        ,'|',
                Format(PTotalPower,'#,###,###.##')      ,'|',
                Format(PTotalAdjustment,'#,###,###.##') ,'|',
                Format(PTransRental,'###,###.##')       ,'|',
                Format(PTransRefund,'###,###.##')       ,'|',
                Format(PTotalBill,'#,###,###.##')       ,
                '|          | |                          |');
  end;
  Writeln(lst,'----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------');
  Writeln(lst,'| Grand Total -------------------------------------------->>|',
                GTotalKWHr:8:1                          ,'|',
                GTotalKWUsed:8:1                        ,'|',
                Format(GTotalPower,'#,###,###.##')      ,'|',
                Format(GTotalAdjustment,'#,###,###.##') ,'|',
                Format(GTransRental,'###,###.##')       ,'|',
                Format(GTransRefund,'###,###.##')       ,'|',
                Format(GTotalBill,'#,###,###.##')       ,
                '|          | |                          |');
  Writeln(lst,'----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------');
  Writeln(Lst,'TOTAL CONSUMERS : '+IntToStr(TotalConsumer));
  Write(lst,#18,#12);
  CloseFile(Lst);
  MessageDlg('Printing done....', mtInformation, [mbOK], 0);
end;

procedure TBillMasterForm.ReprintBillingRegisterLateBills1Click(
  Sender: TObject);
begin
  Panel4.Left     := 184;
  Panel4.Top      := 135;
  Panel4.Visible  := True;
  Panel4.BringToFront;
  Edit3.SetFocus;
end;

procedure TBillMasterForm.PDJSillyLabel8Click(Sender: TObject);
begin
  MasterTextPanel.Visible := False;
end;

procedure TBillMasterForm.PDJSillyLabel7Click(Sender: TObject);
begin
  If BMonthT.Text = '' then
    begin
      MessageDlg('Please input a billmonth for consumption reference....', mtInformation, [mbOK], 0);
      BMonthT.SetFocus;
      exit;
    end;

  MasterT.Close;
  MasterT.SQL.Clear;
  MasterT.SQL.Add('select billhistory.accountnumber,');
  MasterT.SQL.Add('       billhistory.name,');
  MasterT.SQL.Add('       billhistory.address,');
  MasterT.SQL.Add('       billhistory.ratecode,');
  MasterT.SQL.Add('       billhistory.serial,');
  MasterT.SQL.Add('       billhistory.billmonth,');
  MasterT.SQL.Add('       billhistory.kilowatthour');
  MasterT.SQL.Add('from billhistory');
  MasterT.SQL.Add('where billhistory.billmonth = :billmonth');
  MasterT.ParamByName('billmonth').Text := BMonthT.Text;
  Case RadioGroup2.ItemIndex of
  0 : MasterT.SQL.Add('order by accountnumber');
  1 : MasterT.SQL.Add('order by name');
  end;
  MasterT.Open;

  Gauge3.Progress := 0;
  Gauge3.MinValue := 0;
  Gauge3.MaxValue := MasterT.RecordCount;

  Try
  AssignFile(MasterText,'C:\Master.txt');
  Rewrite(MasterText);
  except
  MessageDlg('Unable to open C:\Master.txt... try exiting the program', mtError, [mbOK], 0);
  exit;
  end;


  While not MasterT.Eof do
   begin
    Application.ProcessMessages;
    Gauge3.AddProgress(1);

    Writeln(MasterText,'"'+MasterT.FieldByName('accountnumber').text+'","'+
                           MasterT.FieldByName('name').text+'","'+
                           MasterT.FieldByName('address').text+'","'+
                           MasterT.FieldByName('ratecode').text+'","'+
                           MasterT.FieldByName('serial').text+'","'+
                           MasterT.FieldByName('billmonth').text+'",',
                           MasterT.FieldByName('kilowatthour').text);
    MasterT.Next;
   end;

  CloseFile(MasterText);
  MasterT.Close;
  MessageDlg('Done... Text file saved in C:\Master.txt', mtWarning, [mbOK], 0);
end;

procedure TBillMasterForm.CreateConsumerTextforEngineering1Click(
  Sender: TObject);
begin
  MasterTextPanel.Left    := 203;
  MasterTextPanel.Top     := 129;
  MasterTextPanel.Visible := True;
  MasterTextPanel.BringToFront;
  BMonthT.SetFocus;
end;

procedure TBillMasterForm.SearchAreaKeyPress(Sender: TObject;
  var Key: Char);
begin
   If Key=#13 then SearchBook.SetFocus;
end;

procedure TBillMasterForm.SearchBookKeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 then Button1Click(self);
end;

procedure TBillMasterForm.DsFancyButton1Click(Sender: TObject);
Var
PageCount,
LineCount,
DetailCount,
HeadSW              : Word    ;
PageTotal,
GrandTotal          : Double  ;

Procedure Heading;
begin
Write(Lst,#18,#27+'P');
writeln(lst,'Page #      : ',PageCount);
writeln(lst,'PRINT DATE  : ',DateToStr(Now),' ',TimeToStr(Now));
writeln(lst,'REPORT NAME : DISCONNECTED BILLS LIST');
Write  (Lst,#27+'M');
Writeln(lst,'---------------------------------------------------------------------------------------------');
Writeln(lst,'| No.|   ACCT #   |       Consumer Name         |Bill Number|       Amount |BMon|Reading|CC |');
Writeln(lst,'---------------------------------------------------------------------------------------------');
end;

begin

 DiscoBills.Close;
 DiscoBills.ParamByName('datepaid').AsDate := DatePaid.Date;
 DiscoBills.Open;

 If DiscoBills.IsEmpty then
   begin
    MessageDlg('There are no records to print for date...', mtError, [mbOK], 0);
    DiscoBills.Close;
    exit;
   end;

 Try
 AssignFile(Lst,'LPT1');
 Rewrite(Lst);
 except
  ShowMessage('Printer not Ready');
  Exit;
 end;

 LineCount       := 0;
 PageCount       := 1;
 HeadSw          := 0;
 DetailCount     := 0;
 PageTotal       := 0;
 GrandTotal      := 0;

 Gauge1.Progress := 0;
 Gauge1.MinValue := 0;
 Gauge1.MaxValue := DiscoBills.RecordCount;

 DiscoBills.First;

 while not DiscoBills.Eof do
  begin
   Gauge1.AddProgress(1);
   Application.ProcessMessages;

   If HeadSW = 0 then
     begin
       HeadSW := 1;
       Heading;
     end;

   Inc(DetailCount);

   Writeln(Lst,'|',DetailCount:3,'.|',
               JustStr(DiscoBillsAccountNumber.Text,' ',10,0),'-',
               JustStr(DiscoBillsRateCode.Text,' ',1,0),                   '|',
               Juststr(DiscoBillsName.Text,' ',30,0),                      '|',
               Juststr(DiscoBillsBillNumber.Text,' ',10,0),                '|',
               Format(DiscoBillsAmount.AsCurrency,'#,###,###.##'),         '|',
               Juststr(DiscoBillsBillMonth.Text,' ',04,0),                 '|',
               Juststr(IntToStr(DiscoBillsLastReading.AsInteger),' ',7,1), '|',
               JustStr(DiscoBillscollectorcode.Text,' ',3,0),              '|');

   PageTotal                    := PageTotal + DiscoBillsAmount.AsCurrency;
   GrandTotal                   := GrandTotal + DiscoBillsAmount.AsCurrency;

   Inc(LineCount);
   If LineCount = 50 then
     begin
      HeadSW    := 0;
      LineCount := 0;
      Inc(PageCount);
      Writeln(lst,'---------------------------------------------------------------------------------------------');
      Writeln(lst,'|                                                Page Total |',Format(PageTotal,'#,###,###.##'),'|    |       |  |');
      Writeln(lst,'---------------------------------------------------------------------------------------------');
      PageTotal := 0;
      Write(Lst,#12);
     end;

   DiscoBills.Next;
  end;

 If LineCount > 0 then
  begin
   Writeln(lst,'---------------------------------------------------------------------------------------------');
   Writeln(lst,'|                                                Page Total |',Format(PageTotal,'#,###,###.##'),'|    |       |  |');
  end;

 Writeln(lst,'---------------------------------------------------------------------------------------------');
 Writeln(lst,'|                                               Grand Total |',Format(GrandTotal,'#,###,###.##'),'     |');
 Writeln(lst,'---------------------------------------------------------------------------------------------');

 Write(lst,#12);
 DiscoBills.Close;
 CloseFile(lst);
 MessageDlg('Done....', mtInformation, [mbOK], 0);

end;

procedure TBillMasterForm.DsFancyButton2Click(Sender: TObject);
begin
  Panel5.Visible := False;
end;

procedure TBillMasterForm.CollectorsDisconnectedBillsList1Click(
  Sender: TObject);
begin
  DatePaid.Date  := Now;
  Panel5.Left    := 188;
  Panel5.Top     := 113;
  Panel5.Visible := true;
  Panel5.BringToFront;
  DatePaid.SetFocus;
end;

procedure TBillMasterForm.DisonnectedConsumersSummary1Click(
  Sender: TObject);
begin
  If not Assigned(DiscoSummForm) then
  DiscoSummForm := TDiscoSummForm.Create(Application);
  DiscoSummForm.DateFrom.Date := Now;
  DiscoSummForm.DateTo.Date   := Now;
  DiscoSummForm.Show;
end;

procedure TBillMasterForm.RadioGroup3Click(Sender: TObject);
begin
   If RadioGroup3.ItemIndex = 1 then
     begin
      fromdate.Enabled := true;
      todate.Enabled   := True;
     end
     else
     begin
      fromdate.Enabled := false;
      todate.Enabled   := false;
     end

end;

procedure TBillMasterForm.DsFancyButton3Click(Sender: TObject);
begin
  if MessageDlg('Ledger Hardcopy. Ready Printer.  Proceed now?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then PrintLedger;
  Panel6.Visible := False;
end;

procedure TBillMasterForm.DsFancyButton4Click(Sender: TObject);
begin
  Panel6.Visible := False;
end;

procedure TBillMasterForm.SummaryofConsumersPerKilowatthour1Click(
  Sender: TObject);
begin
  If not Assigned(SummKwhrForm) then
  SummKwhrForm := TSummKwhrForm.Create(Application);
  SummKwhrForm.Show;
end;

procedure TBillMasterForm.OneYearAverageLifeLineReport1Click(
  Sender: TObject);
begin
  If not Assigned(OneYearLifelineForm) then
  OneYearLifelineForm := TOneYearLifelineForm.Create(Application);
  OneYearLifelineForm.Show;
end;

procedure TBillMasterForm.PANTADWIDKURYENTEApplications1Click(
  Sender: TObject);
begin
  If not Assigned(BillAdjPopulateForm) then
  BillAdjPopulateForm := TBillAdjPopulateForm.Create(Application);
  BillAdjPopulateForm.Show;
end;

procedure TBillMasterForm.DeleteBillwithPANTAWID1Click(Sender: TObject);
begin
  If not Assigned(DeletePATAWID) then
  DeletePATAWID := TDeletePATAWID.Create(Application);
  DeletePATAWID.Show;
end;

procedure TBillMasterForm.BillRatesReference1Click(Sender: TObject);
begin
  If not assigned(BillRateForm) then BillRateForm := TBillRateForm.Create(Application);
  BillRateForm.Show;
end;

procedure TBillMasterForm.NxButton1Click(Sender: TObject);
begin
  Case ConsumerDemandOption.ItemIndex of
   0 : begin
        MasterDemand.ParamByName('billmonth').Text := CDBillMonth.Text;
        MasterDemand.Open;
        If MasterDemand.IsEmpty then
          begin
           MessageDlg('Noting to print....', mtError, [mbOK], 0);
           MasterDemand.Close;
           CDBillMonth.SetFocus;
           exit;
          end;
        QRLabel3.Caption := 'For the billing month '+ FormatDateTime('MMMM, YYYY',StrToDate(Copy(CDBillMonth.Text,1,2)+'/01/'+Copy(CDBillMonth.Text,3,2)));
        QuickRep1.Preview;
        MasterDemand.Close;
        end;
   1 : begin
        MasterDemandSummary.ParamByName('Year').Text := CDBillMonth.Text;
        MasterDemandSummary.Open;
        If MasterDemandSummary.IsEmpty then
          begin
           MessageDlg('Noting to print....', mtError, [mbOK], 0);
           MasterDemandSummary.Close;
           CDBillMonth.SetFocus;
           exit;
          end;
        QRLabel12.Caption := 'For the Year '+ CDBillMonth.Text;
        QuickRep2.Preview;
        MasterDemandSummary.Close;
        end;
  end;
end;

procedure TBillMasterForm.ConsumerPriorityNumber1Click(Sender: TObject);
begin
  if not assigned(priorityNoFrm) then
  priorityNoFrm := TpriorityNoFrm.Create(Application);

  priorityNoFrm.ShowModal
end;

procedure TBillMasterForm.ConsumerswithDemand1Click(Sender: TObject);
begin
  MasterDemandPanel.Left     := 187;
  MasterDemandPanel.Top      := 165;
  MasterDemandPanel.Visible  := True;
  MasterDemandPanel.BringToFront;
  CDBillMonth.SetFocus;
end;

procedure TBillMasterForm.NxButton2Click(Sender: TObject);
begin
  MasterDemandPanel.Visible := False;
end;

procedure TBillMasterForm.ReprintPowerBill1Click(Sender: TObject);
begin
 If not assigned(BillingPrintBillForm) then
 BillingPrintBillForm  := TBillingPrintBillForm.Create(Application);
 BillingPrintBillForm.Show;

 BillingPrintBillForm.StartOEBR.Text         := BillingData.ARDocument.Text;
 BillingPrintBillForm.EndOEBR.Text           := BillingData.ARDocument.Text;
 BillingPrintBillForm.PrintOption.Visible    := False;
 BillingPrintBillForm.ReprintOption.Checked  := True;
 BillingPrintBillForm.ReprintLate.Checked    := False;

 BillingPrintBillForm.Show;
 BillingPrintBillForm.StartOEBR.SetFocus;
end;

procedure TBillMasterForm.ReprintPowerBillfromBillingArchive1Click(
  Sender: TObject);
begin
 If not assigned(BillingPrintBillForm) then
 BillingPrintBillForm  := TBillingPrintBillForm.Create(Application);
 BillingPrintBillForm.Show;

 BillingPrintBillForm.StartOEBR.Text         := BillHistoryOEBRNumber.Text;
 BillingPrintBillForm.EndOEBR.Text           := BillHistoryOEBRNumber.Text;
 BillingPrintBillForm.PrintOption.Visible    := True;
 BillingPrintBillForm.ReprintOption.Checked  := True;
 BillingPrintBillForm.ReprintLate.Checked    := False;

 BillingPrintBillForm.Show;
 BillingPrintBillForm.StartOEBR.SetFocus;
end;

procedure TBillMasterForm.MenuItem1Click(Sender: TObject);
begin
 If not assigned(BillingPrintBillForm) then
 BillingPrintBillForm  := TBillingPrintBillForm.Create(Application);
 BillingPrintBillForm.Show;

 BillingPrintBillForm.StartOEBR.Text         := LateBillsOEBRNumber.Text;
 BillingPrintBillForm.EndOEBR.Text           := LateBillsOEBRNumber.Text;
 BillingPrintBillForm.PrintOption.Visible    := True;
 BillingPrintBillForm.ReprintOption.Checked  := False;
 BillingPrintBillForm.ReprintLate.Checked    := True;


 BillingPrintBillForm.Show;
 BillingPrintBillForm.StartOEBR.SetFocus;

end;

procedure TBillMasterForm.PANTAWIDKURYENTERecoveryApplications1Click(
  Sender: TObject);
begin
  If not Assigned(PantawidRecoveryForm) then
  PantawidRecoveryForm := TPantawidRecoveryForm.Create(Application);
  PantawidRecoveryForm.Show;
end;

procedure TBillMasterForm.NxLinkLabel1Click(Sender: TObject);
begin
   With BillingData do
    begin
     PageControl1.ActivePageIndex := 0;
     PageControl2.ActivePageIndex := 0;
     PageControl3.ActivePageIndex := 0;
     PageControl4.ActivePageIndex := 0;

     AR.Close;
     AR.ParamByName('code').Text := MasterCode.Text;
     AR.Open;
     AR.Last;

     UnPB.Close;
     UnPB.SQL.Clear;
     UnPB.SQL.Add('select * from unpaidbills where code = :code');
     UnPB.SQL.Add('order by date');
     UnPB.ParamByName('code').Text := MasterCode.Text;
     UnPB.Open;

     Disco.Close;
     Disco.FilterSQL := 'code = '+quotedstr(mastercode.Text);
     Disco.Open;

     Recon.Close;
     Recon.FilterSQL := 'code = '+quotedstr(mastercode.Text);
     Recon.Open;

     ChangeMeter.Close;
     ChangeMeter.FilterSQL := 'code = '+quotedstr(mastercode.Text);
     ChangeMeter.Open;

     ChangeName.Close;
     ChangeName.FilterSQL := 'code = '+quotedstr(mastercode.Text);
     ChangeName.Open;

     TransferArea.Close;
     TransferArea.FilterSQL := 'code = '+quotedstr(mastercode.Text);
     TransferArea.Open;

     BillHistory.Close;
     BillHistory.ParamByName('code').Text := MasterCode.Text;
     BillHistory.Open;

     LateBills.Close;
     LateBills.ParamByName('code').Text := MasterCode.Text;
     LateBills.Open;

     PilferBill.Close;
     PilferBill.ParamByName('code').Text := MasterCode.Text;
     PilferBill.Open;

     Pantawid.Close;
     Pantawid.ParamByName('Code').Text := MasterCode.Text;
     Pantawid.ParamByName('Area').Text := MasterArea.Text;
     Pantawid.ParamByName('Book').Text := MasterBook.Text;
     Pantawid.Open;

     Recovery.Close;
     Recovery.ParamByName('Code').Text := MasterCode.Text;
     Recovery.ParamByName('Area').Text := MasterArea.Text;
     Recovery.ParamByName('Book').Text := MasterBook.Text;
     Recovery.Open;

     MSA.Close;
     MSA.SQL.Clear;
     MSA.SQL.Add('select * from MSComplete where code = :code');
     MSA.ParamByName('code').Text := MasterCode.Text;
     MSA.Open;

     RemoveMeter.Close;
     RemoveMeter.MacroByName('Code').Active          := True;
     RemoveMeter.MacroByName('Date').Active          := False;
     RemoveMeter.MacroByName('Name').Active          := False;
     RemoveMeter.MacroByName('AccountNumber').Active := False;

     RemoveMeter.ParamByName('Code').Text   := MasterCode.Text;
     RemoveMeter.Open;

     NxHeaderPanel2.Caption := 'Consumer Details - '+MasterAccountNumber.Text+'  '+MasterName.Text;
     NxHeaderPanel2.Left := 11;
     NxHeaderPanel2.Top  := 48;
     NxHeaderPanel2.BringToFront;
     NxHeaderPanel2.Visible := True;

     Application.ProcessMessages;
    end;

    //with BillingData do begin
      QueryDisco.Close;
      QueryDisco.ParamByName('accountnumber').text := BillingData.MasterAccountNumber.Text;
      QueryDisco.Open;
    //end;
end;

procedure TBillMasterForm.NxLinkLabel2Click(Sender: TObject);
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
     NxHeaderPanel2.Visible := False;
  end;
end;

procedure TBillMasterForm.FormMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if (Button=mbLeft) And (Sender is TNxHeaderPanel) then
   begin
     Moving    := True;
     MovingPnl := TNxHeaderPanel(Sender);
     OldPos.X  := X;
     OldPos.Y  := Y;
   end
  else
   begin
     Moving    := False;
     MovingPnl := nil;
   end;
end;

procedure TBillMasterForm.FormMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  if (Moving) and (MovingPnl<>Nil) then
   begin
     DeltaPos.x := X -OldPos.x;
     DeltaPos.y := Y -OldPos.y;
     MovingPnl.Left := MovingPnl.Left +DeltaPos.x;
     MovingPnl.Top := MovingPnl.Top +DeltaPos.y;
   end;
end;

procedure TBillMasterForm.FormMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if (Button = mbLeft) then
   begin
     Moving := False;
     MovingPnl := Nil;
   end;
end;

procedure TBillMasterForm.PrintARLedger2Click(Sender: TObject);
begin
  Panel6.Left := 240;
  Panel6.Top  := 157;
  Panel6.Visible := True;
  Panel6.BringToFront;
end;

procedure TBillMasterForm.RemoveMeterTransaction1Click(Sender: TObject);
begin
  If not assigned(RemoveMeterForm) then RemoveMeterForm := TRemoveMeterForm.Create(Application);
  RemoveMeterForm.Show;
end;

end.

