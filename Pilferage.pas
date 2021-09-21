unit Pilferage;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, MemDS, DBAccess, MyAccess, NxCollection, NxEdit, ExtCtrls,
  StdCtrls, Mask, DBCtrls, Grids, DBGrids, CRGrid, ComCtrls, Menus,
  QRCtrls, QuickRpt, CRDBGrid1, ToolPanels, AdvSmoothTabPager, NxPageControl,
  ExtDlgs, Vcl.Imaging.jpeg;

type
  TPilferageBillingForm = class(TForm)
    CreatePFBill: TMyQuery;
    Bill: TMyQuery;
    Master: TMyQuery;
    MasterCode: TIntegerField;
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
    MasterPreviousReadingKWH: TFloatField;
    MasterPresentReadingKWH: TFloatField;
    MasterDiff: TFloatField;
    MasterDemand: TFloatField;
    MasterFlatRateWattage: TFloatField;
    MasterFeedBackCode: TStringField;
    MasterCM: TStringField;
    MasterCMMultiplier: TFloatField;
    MasterCMPreviousReadingKWH: TFloatField;
    MasterCMPresentReadingKWH: TFloatField;
    MasterCMKilowattHour: TFloatField;
    MasterCMDemand: TFloatField;
    MasterKilowattHour: TFloatField;
    MasterKilowattUsed: TFloatField;
    MasterGenSysCharge: TFloatField;
    MasterHostCommCharge: TFloatField;
    MasterForexCharge: TFloatField;
    MasterTCDemandCharge: TFloatField;
    MasterTCTransSystemCharge: TFloatField;
    MasterSystemLossCharge: TFloatField;
    MasterDCDemandCharge: TFloatField;
    MasterDCDistributionCharge: TFloatField;
    MasterSCRetCustCharge: TFloatField;
    MasterSCSupplySysCharge: TFloatField;
    MasterMCRetailCustCharge: TFloatField;
    MasterMCSystemCharge: TFloatField;
    MasterUCNPCStrandedDebts: TFloatField;
    MasterUCNPCStrandedContCost: TFloatField;
    MasterUCDUStrandedContCost: TFloatField;
    MasterUCME: TFloatField;
    MasterUCEqTaxesAndRoyalties: TFloatField;
    MasterUCEC: TFloatField;
    MasterUCCrossSubRemoval: TFloatField;
    MasterICCrossSubsidyCharge: TFloatField;
    MasterPowerActRateRed: TFloatField;
    MasterLifelineDiscSubs: TFloatField;
    MasterLoanCondo: TFloatField;
    MasterTransformerRental: TFloatField;
    MasterOCCode1: TStringField;
    MasterOCAmount1: TFloatField;
    MasterOCMo1: TFloatField;
    MasterOCTotal1: TFloatField;
    MasterOCCode2: TStringField;
    MasterOCAmount2: TFloatField;
    MasterOCMo2: TFloatField;
    MasterOCTotal2: TFloatField;
    MasterOCCode3: TStringField;
    MasterOCAmount3: TFloatField;
    MasterOCMo3: TFloatField;
    MasterOCTotal3: TFloatField;
    MasterTotalBill: TFloatField;
    MasterBillNumber: TStringField;
    MasterOEBRNumber: TStringField;
    MasterBillMonth: TStringField;
    MasterDeleteRemarks: TStringField;
    MasterPoleNumber: TStringField;
    MasterFeederNumber: TStringField;
    MasterXFormerQty: TIntegerField;
    MasterXFormerKVA: TStringField;
    MasterAge30: TFloatField;
    MasterAge60: TFloatField;
    MasterAge90: TFloatField;
    MasterAge120: TFloatField;
    MasterAgeOver120: TFloatField;
    MasterAgeTotal: TFloatField;
    MasterTotalPayments: TFloatField;
    MasterARBalance: TFloatField;
    MasterLCCustMo: TFloatField;
    MasterPrevYearAdjPowerCost: TFloatField;
    MasterSysLossUnderRecov: TFloatField;
    MasterVATDisc: TFloatField;
    MasterVATDiscAmt: TFloatField;
    MasterVATDistDiscAmt: TFloatField;
    MasterVATGenCoDiscAmt: TFloatField;
    MasterVATTransCoDiscAmt: TFloatField;
    MasterVATSystemLossDiscAmt: TFloatField;
    MasterVATDist: TFloatField;
    MasterVATGenCO: TFloatField;
    MasterVATTransCO: TFloatField;
    MasterVATSystemLossGenCO: TFloatField;
    MasterVATSystemLossTransCO: TFloatField;
    MasterVAT: TFloatField;
    MasterDiffBillPerKwhr: TFloatField;
    MasterDiffBillPerKW: TFloatField;
    MasterDiffBillPerCust: TFloatField;
    MasterMCC: TFloatField;
    MasterPKVROebrNumber: TStringField;
    MasterPKVRBillMonth: TStringField;
    MasterPKVRAmount: TFloatField;
    DataSource1: TDataSource;
    dsBill: TMyDataSource;
    CBM: TMyQuery;
    MRate: TMyQuery;
    OC: TMyQuery;
    OCparticulars: TStringField;
    OCamount: TFloatField;
    NewPilferPanel: TNxHeaderPanel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    BillHistory: TMyQuery;
    dsBillHistory: TMyDataSource;
    BillHistorybillmonth: TStringField;
    BillHistorykilowatthour: TFloatField;
    BillHistoryserial: TStringField;
    ReferenceKWHR: TNxNumberEdit;
    Label20: TLabel;
    DiffKWHR: TNxNumberEdit;
    Label21: TLabel;
    BillMonth: TNxEdit;
    Label22: TLabel;
    DiffAmount: TNxNumberEdit;
    Label23: TLabel;
    Penalty: TNxNumberEdit;
    Label24: TLabel;
    TotalBill: TNxNumberEdit;
    Label25: TLabel;
    CBMmbillmonth: TStringField;
    CBMmbillorder: TDateField;
    NxButton7: TNxButton;
    NxButton9: TNxButton;
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
    MRateDiffBillPerKwhr: TFloatField;
    MRateDIffBillPerKW: TFloatField;
    MRateDiffBillPerCust: TFloatField;
    MRateMCC: TFloatField;
    MRateDiffBillMonth: TStringField;
    MRateDiffBillApply: TStringField;
    MRatePantawidApply: TStringField;
    MRateTransSysAncRefundTitle: TStringField;
    MRateTransSysAncRefund: TFloatField;
    MRateTransDemAncRefundTitle: TStringField;
    MRateTransDemAncRefund: TFloatField;
    MRateVATTransAncRefundTitle: TStringField;
    MRateVATTransAncRefund: TFloatField;
    BillingDate: TNxDatePicker;
    Label16: TLabel;
    DiffDemand: TNxNumberEdit;
    Label17: TLabel;
    BillHistorykilowattused: TFloatField;
    PFCount: TMyQuery;
    PFCountnumoff: TStringField;
    Panel2: TPanel;
    CreateSign: TMyQuery;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    PopupMenu1: TPopupMenu;
    EditPenalty1: TMenuItem;
    EditPenaltyPanel: TNxHeaderPanel;
    Label18: TLabel;
    DBEdit15: TDBEdit;
    Label19: TLabel;
    DBEdit16: TDBEdit;
    Label26: TLabel;
    DBEdit17: TDBEdit;
    Label27: TLabel;
    DBEdit18: TDBEdit;
    Label28: TLabel;
    DBEdit19: TDBEdit;
    Label29: TLabel;
    DBEdit20: TDBEdit;
    Label30: TLabel;
    DBEdit21: TDBEdit;
    NxButton10: TNxButton;
    NxButton11: TNxButton;
    SOAPanel: TNxHeaderPanel;
    GroupBox1: TGroupBox;
    PreparedName: TEdit;
    PreparedPos: TEdit;
    GroupBox2: TGroupBox;
    CheckedName: TEdit;
    CheckedPos: TEdit;
    GroupBox3: TGroupBox;
    AttestedName: TEdit;
    AttestedPos: TEdit;
    GroupBox4: TGroupBox;
    NotedName: TEdit;
    NotedPos: TEdit;
    Label31: TLabel;
    DBEdit22: TDBEdit;
    Label32: TLabel;
    DBEdit23: TDBEdit;
    Label33: TLabel;
    DBEdit24: TDBEdit;
    Label34: TLabel;
    DBEdit25: TDBEdit;
    Label35: TLabel;
    DBEdit26: TDBEdit;
    Label36: TLabel;
    DBEdit27: TDBEdit;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    NxButton12: TNxButton;
    NxButton13: TNxButton;
    NxButton14: TNxButton;
    Signatory: TMyQuery;
    SignatoryPreparedByName: TStringField;
    SignatoryPreparedByPosition: TStringField;
    SignatoryCheckedByName: TStringField;
    SignatoryCheckedByPosition: TStringField;
    SignatoryAttestedByName: TStringField;
    SignatoryAttestedByPosition: TStringField;
    SignatoryNotedByName: TStringField;
    SignatoryNotedByPosition: TStringField;
    QuickRep1: TQuickRep;
    TitleBand1: TQRBand;
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
    QRLabel8: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRSysData1: TQRSysData;
    ConsumerType: TQRLabel;
    SOABillMonth: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel28: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel35: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRLabel16: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel36: TQRLabel;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    QRDBText31: TQRDBText;
    QRDBText32: TQRDBText;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRDBText33: TQRDBText;
    QRDBText34: TQRDBText;
    QRLabel40: TQRLabel;
    QRLabel42: TQRLabel;
    QRDBText36: TQRDBText;
    QRDBText37: TQRDBText;
    QRDBText39: TQRDBText;
    QRDBText40: TQRDBText;
    QRLabel41: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRDBText35: TQRDBText;
    QRDBText38: TQRDBText;
    QRDBText41: TQRDBText;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRDBText42: TQRDBText;
    QRDBText43: TQRDBText;
    QRDBText44: TQRDBText;
    QRDBText45: TQRDBText;
    QRDBText46: TQRDBText;
    QRDBText47: TQRDBText;
    QRDBText48: TQRDBText;
    QRDBText49: TQRDBText;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRDBText50: TQRDBText;
    QRDBText51: TQRDBText;
    QRDBText52: TQRDBText;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRLabel57: TQRLabel;
    QRDBText53: TQRDBText;
    QRDBText54: TQRDBText;
    QRDBText55: TQRDBText;
    QRDBText56: TQRDBText;
    QRDBText57: TQRDBText;
    QRDBText58: TQRDBText;
    QRDBText59: TQRDBText;
    QRDBText60: TQRDBText;
    QRLabel58: TQRLabel;
    QRDBText61: TQRDBText;
    QRDBText62: TQRDBText;
    QRDBText63: TQRDBText;
    QRLabel59: TQRLabel;
    QRLabel60: TQRLabel;
    QRDBText64: TQRDBText;
    QRLabel61: TQRLabel;
    QRLabel62: TQRLabel;
    QRLabel63: TQRLabel;
    QRLabel64: TQRLabel;
    QRDBText65: TQRDBText;
    QRDBText66: TQRDBText;
    QRLabel65: TQRLabel;
    QRLabel66: TQRLabel;
    QRDBText67: TQRDBText;
    QRDBText68: TQRDBText;
    QRDBText69: TQRDBText;
    QRDBText70: TQRDBText;
    QRDBText71: TQRDBText;
    QRLabel56: TQRLabel;
    QRDBText72: TQRDBText;
    DetailBand1: TQRBand;
    QRDBText73: TQRDBText;
    QRDBText74: TQRDBText;
    SummaryBand1: TQRBand;
    QRShape9: TQRShape;
    QRLabel67: TQRLabel;
    QRAmountDue: TQRDBText;
    QRLabel68: TQRLabel;
    QRLabel69: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText18: TQRDBText;
    QRLabel10: TQRLabel;
    QRShape4: TQRShape;
    QRLabel11: TQRLabel;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText23: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRLabel18: TQRLabel;
    QRDBText75: TQRDBText;
    QRDBText76: TQRDBText;
    QRLabel19: TQRLabel;
    QRDBText77: TQRDBText;
    DBEdit33: TDBEdit;
    Label42: TLabel;
    PosttoARLedgerandUnpaid1: TMenuItem;
    ARUpdateQuery: TMyQuery;
    UnPBUpdateQuery: TMyQuery;
    Bevel2: TBevel;
    Payment: TNxNumberEdit;
    Label43: TLabel;
    Balance: TNxNumberEdit;
    Label44: TLabel;
    BillArea: TStringField;
    BillBook: TStringField;
    BillSequence: TStringField;
    BillAccountNumber: TStringField;
    BillName: TStringField;
    BillAddress: TStringField;
    BillRateCode: TStringField;
    BillSerial: TStringField;
    BillMultiplier: TFloatField;
    BillPreviousReadingDate: TDateField;
    BillPresentReadingDate: TDateField;
    BillPreviousReadingKWH: TFloatField;
    BillPresentReadingKWH: TFloatField;
    BillDiff: TFloatField;
    BillDemand: TFloatField;
    BillFlatRateWattage: TFloatField;
    BillFeedBackCode: TStringField;
    BillCM: TStringField;
    BillCMMultiplier: TFloatField;
    BillCMPreviousReadingKWH: TFloatField;
    BillCMPresentReadingKWH: TFloatField;
    BillCMKilowattHour: TFloatField;
    BillCMDemand: TFloatField;
    BillKilowattHour: TFloatField;
    BillKilowattUsed: TFloatField;
    BillGenSysCharge: TFloatField;
    BillHostCommCharge: TFloatField;
    BillForexCharge: TFloatField;
    BillTCDemandCharge: TFloatField;
    BillTCTransSystemCharge: TFloatField;
    BillSystemLossCharge: TFloatField;
    BillDCDemandCharge: TFloatField;
    BillDCDistributionCharge: TFloatField;
    BillSCRetCustCharge: TFloatField;
    BillSCSupplySysCharge: TFloatField;
    BillMCRetailCustCharge: TFloatField;
    BillMCSystemCharge: TFloatField;
    BillUCNPCStrandedDebts: TFloatField;
    BillUCNPCStrandedContCost: TFloatField;
    BillUCDUStrandedContCost: TFloatField;
    BillUCME: TFloatField;
    BillUCEqTaxesAndRoyalties: TFloatField;
    BillUCEC: TFloatField;
    BillUCCrossSubRemoval: TFloatField;
    BillICCrossSubsidyCharge: TFloatField;
    BillPowerActRateRed: TFloatField;
    BillLifelineDiscSubs: TFloatField;
    BillLoanCondo: TFloatField;
    BillTransformerRental: TFloatField;
    BillOCCode1: TStringField;
    BillOCAmount1: TFloatField;
    BillOCMo1: TFloatField;
    BillOCTotal1: TFloatField;
    BillOCCode2: TStringField;
    BillOCAmount2: TFloatField;
    BillOCMo2: TFloatField;
    BillOCTotal2: TFloatField;
    BillOCCode3: TStringField;
    BillOCAmount3: TFloatField;
    BillOCMo3: TFloatField;
    BillOCTotal3: TFloatField;
    BillTotalBill: TFloatField;
    BillBillNumber: TStringField;
    BillOEBRNumber: TStringField;
    BillBillMonth: TStringField;
    BillBillDate: TDateField;
    Billstatuscode: TStringField;
    BillLCCustMo: TFloatField;
    BillPrevYearAdjPowerCost: TFloatField;
    BillSysLossUnderRecov: TFloatField;
    BillVATDisc: TFloatField;
    BillVATDiscAmt: TFloatField;
    BillVATDistDiscAmt: TFloatField;
    BillVATGenCoDiscAmt: TFloatField;
    BillVATTransCoDiscAmt: TFloatField;
    BillVATSystemLossDiscAmt: TFloatField;
    BillVATDist: TFloatField;
    BillVATGenCO: TFloatField;
    BillVATTransCO: TFloatField;
    BillVATSystemLossGenCO: TFloatField;
    BillVATSystemLossTransCO: TFloatField;
    BillVAT: TFloatField;
    BillAdjAmountBalance: TFloatField;
    BillAdjAmountApplied: TFloatField;
    BillReadTime: TStringField;
    BillDiffBillPerKwhr: TFloatField;
    BillDiffBillPerKW: TFloatField;
    BillDiffBillPerCust: TFloatField;
    BillMCC: TFloatField;
    BillPKVROebrNumber: TStringField;
    BillPKVRBillMonth: TStringField;
    BillPKVRAmount: TFloatField;
    BillTransSysAncRefund: TFloatField;
    BillTransDemAncRefund: TFloatField;
    BillVATTransAncRefund: TFloatField;
    BillPenalty: TFloatField;
    BillAmountPaid: TFloatField;
    BillTotalAmount: TCurrencyField;
    BillInstallment: TFloatField;
    Inst: TNxNumberEdit;
    Label45: TLabel;
    Amortization: TNxNumberEdit;
    Label46: TLabel;
    SaveMode: TNxComboBox;
    Label47: TLabel;
    BillRefKilowattHour: TFloatField;
    Billpostingcode: TStringField;
    BillBalance: TFloatField;
    BillAmortization: TFloatField;
    OCMaster: TMyQuery;
    PilferBillingRegister: TQuickRep;
    PilferBillReg: TMyQuery;
    PilferBillRegArea: TStringField;
    PilferBillRegBook: TStringField;
    PilferBillRegSequence: TStringField;
    PilferBillRegAccountNumber: TStringField;
    PilferBillRegName: TStringField;
    PilferBillRegAddress: TStringField;
    PilferBillRegRateCode: TStringField;
    PilferBillRegSerial: TStringField;
    PilferBillRegMultiplier: TFloatField;
    PilferBillRegPreviousReadingDate: TDateField;
    PilferBillRegPresentReadingDate: TDateField;
    PilferBillRegPreviousReadingKWH: TFloatField;
    PilferBillRegPresentReadingKWH: TFloatField;
    PilferBillRegDiff: TFloatField;
    PilferBillRegDemand: TFloatField;
    PilferBillRegFlatRateWattage: TFloatField;
    PilferBillRegFeedBackCode: TStringField;
    PilferBillRegCM: TStringField;
    PilferBillRegCMMultiplier: TFloatField;
    PilferBillRegCMPreviousReadingKWH: TFloatField;
    PilferBillRegCMPresentReadingKWH: TFloatField;
    PilferBillRegCMKilowattHour: TFloatField;
    PilferBillRegCMDemand: TFloatField;
    PilferBillRegKilowattHour: TFloatField;
    PilferBillRegKilowattUsed: TFloatField;
    PilferBillRegGenSysCharge: TFloatField;
    PilferBillRegHostCommCharge: TFloatField;
    PilferBillRegForexCharge: TFloatField;
    PilferBillRegTCDemandCharge: TFloatField;
    PilferBillRegTCTransSystemCharge: TFloatField;
    PilferBillRegSystemLossCharge: TFloatField;
    PilferBillRegDCDemandCharge: TFloatField;
    PilferBillRegDCDistributionCharge: TFloatField;
    PilferBillRegSCRetCustCharge: TFloatField;
    PilferBillRegSCSupplySysCharge: TFloatField;
    PilferBillRegMCRetailCustCharge: TFloatField;
    PilferBillRegMCSystemCharge: TFloatField;
    PilferBillRegUCNPCStrandedDebts: TFloatField;
    PilferBillRegUCNPCStrandedContCost: TFloatField;
    PilferBillRegUCDUStrandedContCost: TFloatField;
    PilferBillRegUCME: TFloatField;
    PilferBillRegUCEqTaxesAndRoyalties: TFloatField;
    PilferBillRegUCEC: TFloatField;
    PilferBillRegUCCrossSubRemoval: TFloatField;
    PilferBillRegICCrossSubsidyCharge: TFloatField;
    PilferBillRegPowerActRateRed: TFloatField;
    PilferBillRegLifelineDiscSubs: TFloatField;
    PilferBillRegLoanCondo: TFloatField;
    PilferBillRegTransformerRental: TFloatField;
    PilferBillRegOCCode1: TStringField;
    PilferBillRegOCAmount1: TFloatField;
    PilferBillRegOCMo1: TFloatField;
    PilferBillRegOCTotal1: TFloatField;
    PilferBillRegOCCode2: TStringField;
    PilferBillRegOCAmount2: TFloatField;
    PilferBillRegOCMo2: TFloatField;
    PilferBillRegOCTotal2: TFloatField;
    PilferBillRegOCCode3: TStringField;
    PilferBillRegOCAmount3: TFloatField;
    PilferBillRegOCMo3: TFloatField;
    PilferBillRegOCTotal3: TFloatField;
    PilferBillRegTotalBill: TFloatField;
    PilferBillRegBillNumber: TStringField;
    PilferBillRegOEBRNumber: TStringField;
    PilferBillRegBillMonth: TStringField;
    PilferBillRegBillDate: TDateField;
    PilferBillRegstatuscode: TStringField;
    PilferBillRegLCCustMo: TFloatField;
    PilferBillRegPrevYearAdjPowerCost: TFloatField;
    PilferBillRegSysLossUnderRecov: TFloatField;
    PilferBillRegVATDisc: TFloatField;
    PilferBillRegVATDiscAmt: TFloatField;
    PilferBillRegVATDistDiscAmt: TFloatField;
    PilferBillRegVATGenCoDiscAmt: TFloatField;
    PilferBillRegVATTransCoDiscAmt: TFloatField;
    PilferBillRegVATSystemLossDiscAmt: TFloatField;
    PilferBillRegVATDist: TFloatField;
    PilferBillRegVATGenCO: TFloatField;
    PilferBillRegVATTransCO: TFloatField;
    PilferBillRegVATSystemLossGenCO: TFloatField;
    PilferBillRegVATSystemLossTransCO: TFloatField;
    PilferBillRegVAT: TFloatField;
    PilferBillRegAdjAmountBalance: TFloatField;
    PilferBillRegAdjAmountApplied: TFloatField;
    PilferBillRegReadTime: TStringField;
    PilferBillRegDiffBillPerKwhr: TFloatField;
    PilferBillRegDiffBillPerKW: TFloatField;
    PilferBillRegDiffBillPerCust: TFloatField;
    PilferBillRegMCC: TFloatField;
    PilferBillRegPKVROebrNumber: TStringField;
    PilferBillRegPKVRBillMonth: TStringField;
    PilferBillRegPKVRAmount: TFloatField;
    PilferBillRegTransSysAncRefund: TFloatField;
    PilferBillRegTransDemAncRefund: TFloatField;
    PilferBillRegVATTransAncRefund: TFloatField;
    PilferBillRegRefKilowattHour: TFloatField;
    PilferBillRegPenalty: TFloatField;
    PilferBillRegAmountPaid: TFloatField;
    PilferBillRegBalance: TFloatField;
    PilferBillRegInstallment: TFloatField;
    PilferBillRegAmortization: TFloatField;
    PilferBillRegpostingcode: TStringField;
    SummaryBand2: TQRBand;
    PageHeaderBand1: TQRBand;
    DetailBand2: TQRBand;
    QRLabel20: TQRLabel;
    QRLabel70: TQRLabel;
    QRLabel71: TQRLabel;
    QRLabel72: TQRLabel;
    QRImage2: TQRImage;
    QRPeriodCovered: TQRLabel;
    QRLabel74: TQRLabel;
    QRLabel75: TQRLabel;
    QRLabel76: TQRLabel;
    QRLabel77: TQRLabel;
    QRLabel78: TQRLabel;
    QRLabel79: TQRLabel;
    QRLabel80: TQRLabel;
    QRLabel81: TQRLabel;
    QRLabel82: TQRLabel;
    QRLabel83: TQRLabel;
    QRLabel84: TQRLabel;
    QRLabel85: TQRLabel;
    QRLabel86: TQRLabel;
    QRLabel87: TQRLabel;
    QRDBText78: TQRDBText;
    QRDBText79: TQRDBText;
    QRDBText80: TQRDBText;
    QRDBText81: TQRDBText;
    QRDBText82: TQRDBText;
    QRDBText83: TQRDBText;
    QRDBText84: TQRDBText;
    QRDBText85: TQRDBText;
    QRDBText86: TQRDBText;
    PilferBillRegTotalAmount: TCurrencyField;
    QRLabel88: TQRLabel;
    QRDBText87: TQRDBText;
    QRLabel89: TQRLabel;
    QRDBText88: TQRDBText;
    QRDBText89: TQRDBText;
    QRDBText90: TQRDBText;
    QRLabel90: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    PilferRegisterPanel: TNxHeaderPanel;
    PRDateFrom: TNxDatePicker;
    PRDateTo: TNxDatePicker;
    NxLabel2: TNxLabel;
    NxButton8: TNxButton;
    NxButton15: TNxButton;
    TSalesLateBills: TMyQuery;
    TSalesLateBillsArea: TStringField;
    TSalesLateBillsaddress: TStringField;
    TSalesLateBillsminimumkilowatthour: TFloatField;
    TSalesLateBillsminimumbills: TLargeintField;
    TSalesLateBillsRBills: TLargeintField;
    TSalesLateBillsRKilowatthour: TFloatField;
    TSalesLateBillsRTotalPower: TFloatField;
    TSalesLateBillsCBills: TLargeintField;
    TSalesLateBillsCKilowatthour: TFloatField;
    TSalesLateBillsCTotalPower: TFloatField;
    TSalesLateBillsIBills: TLargeintField;
    TSalesLateBillsIKilowatthour: TFloatField;
    TSalesLateBillsITotalPower: TFloatField;
    TSalesLateBillsPBills: TLargeintField;
    TSalesLateBillsPKilowatthour: TFloatField;
    TSalesLateBillsPTotalPower: TFloatField;
    TSalesLateBillsSBills: TLargeintField;
    TSalesLateBillsSKilowatthour: TFloatField;
    TSalesLateBillsSTotalPower: TFloatField;
    TSalesLateBillsTBills: TLargeintField;
    TSalesLateBillsTKilowatthour: TFloatField;
    TSalesLateBillsTTotalPower: TFloatField;
    TSalesLateBillsUCME: TFloatField;
    TSalesLateBillsUCEC: TFloatField;
    TSalesLateBillsVATDist: TFloatField;
    TSalesLateBillsVATDistDiscAmt: TFloatField;
    TSalesLateBillsVATDistNet: TFloatField;
    TSalesLateBillsVATGenCO: TFloatField;
    TSalesLateBillsVATGenCODiscAmt: TFloatField;
    TSalesLateBillsVATGenCONet: TFloatField;
    TSalesLateBillsVATTransCO: TFloatField;
    TSalesLateBillsVATTransCODiscAmt: TFloatField;
    TSalesLateBillsVATTransCONet: TFloatField;
    TSalesLateBillsVATSystemLossGenCO: TFloatField;
    TSalesLateBillsVATSystemLossDiscAmt: TFloatField;
    TSalesLateBillsVATSystemLossNet: TFloatField;
    TSalesLateBillsOCAmount: TFloatField;
    TSalesLateBillsSystemLossCharge: TFloatField;
    TSalesLateBillsDiffBill: TFloatField;
    TSalesLateBillsMCC: TFloatField;
    TSalesLateBillsTransSysAncRefund: TFloatField;
    TSalesLateBillsTransDemAncRefund: TFloatField;
    TSalesLateBillsVATTransAncRefund: TFloatField;
    TSalesTotalLateBills: TMyQuery;
    TSalesTotalLateBillsminimumkilowatthour: TFloatField;
    TSalesTotalLateBillsminimumbills: TLargeintField;
    TSalesTotalLateBillsRBills: TLargeintField;
    TSalesTotalLateBillsRKilowatthour: TFloatField;
    TSalesTotalLateBillsRTotalPower: TFloatField;
    TSalesTotalLateBillsCBills: TLargeintField;
    TSalesTotalLateBillsCKilowatthour: TFloatField;
    TSalesTotalLateBillsCTotalPower: TFloatField;
    TSalesTotalLateBillsIBills: TLargeintField;
    TSalesTotalLateBillsIKilowatthour: TFloatField;
    TSalesTotalLateBillsITotalPower: TFloatField;
    TSalesTotalLateBillsPBills: TLargeintField;
    TSalesTotalLateBillsPKilowatthour: TFloatField;
    TSalesTotalLateBillsPTotalPower: TFloatField;
    TSalesTotalLateBillsSBills: TLargeintField;
    TSalesTotalLateBillsSKilowatthour: TFloatField;
    TSalesTotalLateBillsSTotalPower: TFloatField;
    TSalesTotalLateBillsTBills: TLargeintField;
    TSalesTotalLateBillsTKilowatthour: TFloatField;
    TSalesTotalLateBillsTTotalPower: TFloatField;
    TSalesTotalLateBillsUCME: TFloatField;
    TSalesTotalLateBillsUCEC: TFloatField;
    TSalesTotalLateBillsVATDist: TFloatField;
    TSalesTotalLateBillsVATDistDiscAmt: TFloatField;
    TSalesTotalLateBillsVATDistNet: TFloatField;
    TSalesTotalLateBillsVATGenCO: TFloatField;
    TSalesTotalLateBillsVATGenCODiscAmt: TFloatField;
    TSalesTotalLateBillsVATGenCONet: TFloatField;
    TSalesTotalLateBillsVATTransCO: TFloatField;
    TSalesTotalLateBillsVATTransCODiscAmt: TFloatField;
    TSalesTotalLateBillsVATTransCONet: TFloatField;
    TSalesTotalLateBillsVATSystemLossGenCO: TFloatField;
    TSalesTotalLateBillsVATSystemLossDiscAmt: TFloatField;
    TSalesTotalLateBillsVATSystemLossNet: TFloatField;
    TSalesTotalLateBillsOCAmount: TFloatField;
    TSalesTotalLateBillsSystemLossCharge: TFloatField;
    TSalesTotalLateBillsDiffBill: TFloatField;
    TSalesTotalLateBillsMCC: TFloatField;
    TSalesTotalLateBillsTransSysAncRefund: TFloatField;
    TSalesTotalLateBillsTransDemAncRefund: TFloatField;
    TSalesTotalLateBillsVATTransAncRefund: TFloatField;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    SalesReportLateBills1: TQuickRep;
    QRBand1: TQRBand;
    QRDBText91: TQRDBText;
    QRDBText92: TQRDBText;
    QRDBText95: TQRDBText;
    QRDBText96: TQRDBText;
    QRDBText97: TQRDBText;
    QRDBText98: TQRDBText;
    QRDBText99: TQRDBText;
    QRDBText100: TQRDBText;
    QRDBText124: TQRDBText;
    QRDBText125: TQRDBText;
    QRDBText126: TQRDBText;
    QRDBText127: TQRDBText;
    QRDBText128: TQRDBText;
    QRDBText129: TQRDBText;
    QRBand2: TQRBand;
    QRShape5: TQRShape;
    QRLabel73: TQRLabel;
    QRLabel91: TQRLabel;
    QRLabel92: TQRLabel;
    LateBillsBillMonth: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRLabel93: TQRLabel;
    QRLabel94: TQRLabel;
    QRLabel95: TQRLabel;
    QRShape6: TQRShape;
    QRLabel96: TQRLabel;
    QRLabel97: TQRLabel;
    QRLabel98: TQRLabel;
    QRLabel99: TQRLabel;
    QRShape7: TQRShape;
    QRLabel100: TQRLabel;
    QRLabel101: TQRLabel;
    QRLabel102: TQRLabel;
    QRLabel103: TQRLabel;
    QRShape8: TQRShape;
    QRLabel104: TQRLabel;
    QRLabel105: TQRLabel;
    QRLabel106: TQRLabel;
    QRLabel107: TQRLabel;
    QRSysData4: TQRSysData;
    QRBand3: TQRBand;
    QRShape10: TQRShape;
    QRLabel114: TQRLabel;
    QRDBText132: TQRDBText;
    QRDBText133: TQRDBText;
    QRDBText134: TQRDBText;
    QRDBText135: TQRDBText;
    QRDBText136: TQRDBText;
    QRDBText137: TQRDBText;
    QRDBText138: TQRDBText;
    QRDBText139: TQRDBText;
    QRDBText140: TQRDBText;
    QRDBText141: TQRDBText;
    QRDBText142: TQRDBText;
    QRDBText173: TQRDBText;
    QRLabel115: TQRLabel;
    PrepareLateBills: TQRLabel;
    PreparePositionLateBills: TQRLabel;
    SalesReportLateBills2: TQuickRep;
    QRBand4: TQRBand;
    QRDBText93: TQRDBText;
    QRDBText94: TQRDBText;
    QRDBText176: TQRDBText;
    QRDBText177: TQRDBText;
    QRDBText178: TQRDBText;
    QRDBText179: TQRDBText;
    QRDBText180: TQRDBText;
    QRDBText181: TQRDBText;
    QRDBText182: TQRDBText;
    QRDBText183: TQRDBText;
    QRDBText184: TQRDBText;
    QRDBText185: TQRDBText;
    QRDBText186: TQRDBText;
    QRDBText187: TQRDBText;
    QRDBText246: TQRDBText;
    QRBand5: TQRBand;
    QRShape11: TQRShape;
    QRSysData5: TQRSysData;
    QRLabel118: TQRLabel;
    QRLabel119: TQRLabel;
    QRLabel120: TQRLabel;
    QRLabel121: TQRLabel;
    QRLabel122: TQRLabel;
    QRShape12: TQRShape;
    QRLabel123: TQRLabel;
    QRLabel124: TQRLabel;
    QRLabel125: TQRLabel;
    QRShape13: TQRShape;
    QRLabel127: TQRLabel;
    QRLabel128: TQRLabel;
    QRLabel129: TQRLabel;
    QRLabel130: TQRLabel;
    QRShape14: TQRShape;
    QRLabel131: TQRLabel;
    QRLabel132: TQRLabel;
    QRLabel133: TQRLabel;
    QRLabel134: TQRLabel;
    QRLabel135: TQRLabel;
    QRLabel136: TQRLabel;
    QRShape15: TQRShape;
    QRLabel165: TQRLabel;
    QRLabel166: TQRLabel;
    QRBand6: TQRBand;
    QRShape16: TQRShape;
    QRLabel137: TQRLabel;
    QRDBText188: TQRDBText;
    QRDBText189: TQRDBText;
    QRDBText190: TQRDBText;
    QRDBText191: TQRDBText;
    QRDBText192: TQRDBText;
    QRDBText193: TQRDBText;
    QRDBText194: TQRDBText;
    QRDBText195: TQRDBText;
    QRDBText196: TQRDBText;
    QRDBText197: TQRDBText;
    QRDBText198: TQRDBText;
    QRDBText199: TQRDBText;
    QRLabel138: TQRLabel;
    CheckedbyLateBills: TQRLabel;
    CheckedbyPositionLateBills: TQRLabel;
    QRLabel142: TQRLabel;
    NotedByLateBills: TQRLabel;
    NotedbyPositionLateBills: TQRLabel;
    QRDBText247: TQRDBText;
    SalesReportLateBills3: TQuickRep;
    QRBand7: TQRBand;
    QRDBText207: TQRDBText;
    QRDBText208: TQRDBText;
    QRDBText209: TQRDBText;
    QRDBText219: TQRDBText;
    QRDBText220: TQRDBText;
    QRDBText221: TQRDBText;
    QRDBText222: TQRDBText;
    QRDBText223: TQRDBText;
    QRDBText224: TQRDBText;
    QRBand8: TQRBand;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRSysData6: TQRSysData;
    QRLabel108: TQRLabel;
    QRLabel109: TQRLabel;
    QRLabel146: TQRLabel;
    QRLabel147: TQRLabel;
    QRLabel148: TQRLabel;
    QRLabel149: TQRLabel;
    QRLabel150: TQRLabel;
    QRLabel154: TQRLabel;
    QRLabel155: TQRLabel;
    QRLabel156: TQRLabel;
    QRLabel157: TQRLabel;
    QRLabel159: TQRLabel;
    QRLabel160: TQRLabel;
    QRBand9: TQRBand;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRLabel162: TQRLabel;
    QRDBText226: TQRDBText;
    QRDBText227: TQRDBText;
    QRDBText228: TQRDBText;
    QRDBText229: TQRDBText;
    QRDBText230: TQRDBText;
    QRDBText231: TQRDBText;
    QRDBText232: TQRDBText;
    QRDBText233: TQRDBText;
    PilferSalesReportPanel: TNxHeaderPanel;
    Label48: TLabel;
    PName: TEdit;
    PPosition: TEdit;
    Label49: TLabel;
    CName: TEdit;
    CPosition: TEdit;
    Label50: TLabel;
    NName: TEdit;
    NPosition: TEdit;
    SalesDateFrom: TNxDatePicker;
    SalesDateTo: TNxDatePicker;
    NxLabel3: TNxLabel;
    NxButton16: TNxButton;
    NxButton17: TNxButton;
    TSalesLateBillsPenalty: TFloatField;
    TSalesTotalLateBillsPenalty: TFloatField;
    DBEdit34: TDBEdit;
    DBEdit35: TDBEdit;
    DBEdit36: TDBEdit;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    DeleteRecord: TMenuItem;
    NumMonths: TNxNumberEdit;
    Label54: TLabel;
    BillWRateCode: TStringField;
    BillNumMonth: TFloatField;
    PilferBillRegWRateCode: TStringField;
    PilferBillRegNumMonth: TFloatField;
    MasterSCDisc: TFloatField;
    MasterWRateCode: TStringField;
    QRLabel110: TQRLabel;
    QRDBText101: TQRDBText;
    QRLabel111: TQRLabel;
    QRDBText102: TQRDBText;
    MRateWRateCode: TStringField;
    MRateSCDiscApply: TStringField;
    MRateSCDiscPercent: TFloatField;
    MRateSCDiscSubs: TFloatField;
    MRatePantawidRecovApply: TStringField;
    MRateWRSw: TStringField;
    OCMasterDateEntered: TDateField;
    OCMasterAccountCode: TStringField;
    OCMasterDescription: TStringField;
    OCMasterOCType: TStringField;
    OCMasterOCCODE: TStringField;
    MRateSCDiscKWHR: TLongWordField;
    OCMasteridocmaster: TLongWordField;
    OCMasterDebitAccountCode: TStringField;
    PilferBillRegentry: TIntegerField;
    PilferBillRegscdisc: TFloatField;
    PilferBillRegscamt4disc: TFloatField;
    Signatoryidcdcrsign: TLongWordField;
    CRDBGrid2: TCRDBGrid1;
    Billscdisc: TFloatField;
    QRLabel112: TQRLabel;
    QRDBText103: TQRDBText;
    QRLabel113: TQRLabel;
    QRDBText104: TQRDBText;
    QRDBText105: TQRDBText;
    QRLabel116: TQRLabel;
    QRDBText106: TQRDBText;
    QRLabel117: TQRLabel;
    QRDBText107: TQRDBText;
    QRDBText108: TQRDBText;
    Billentry: TIntegerField;
    Billscamt4disc: TFloatField;
    BillRPTax: TFloatField;
    PilferBillRegRPTax: TFloatField;
    PilferBillRegBTax: TFloatField;
    BillOtherGenRateAdj: TFloatField;
    BillOtherTransCostAdj: TFloatField;
    BillOtherTransDemandCostAdj: TFloatField;
    BillOtherSystemLossCostAdj: TFloatField;
    BillOtherLifelineRateCostAdj: TFloatField;
    BillOtherSeniorCitizenRateAdj: TFloatField;
    MRateOtherGenRateAdj: TFloatField;
    MRateOtherTransCostAdj: TFloatField;
    MRateOtherTransDemandCostAdj: TFloatField;
    MRateOtherSystemLossCostAdj: TFloatField;
    MRateOtherLifelineRateCostAdj: TFloatField;
    MRateOtherSeniorCitizenRateAdj: TFloatField;
    RpTaxQuery: TMyQuery;
    RpTaxQueryarea: TStringField;
    RpTaxQuerybillmonth: TStringField;
    RpTaxQueryrateamnt: TFloatField;
    RpTaxQueryrateorder: TStringField;
    BillRateOrder: TStringField;
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
    OtherOUQuery: TMyQuery;
    MRateGenSysRate2: TFloatField;
    MRateTCDemandRate2: TFloatField;
    MRateTCSystemRate2: TFloatField;
    MRateSystemLossRate2: TFloatField;
    MRateLifelineSubsidyRate2: TFloatField;
    MRateSCDiscSubs2: TFloatField;
    MRateRptaxR: TFloatField;
    QRLabel126: TQRLabel;
    QRDBText109: TQRDBText;
    QRLabel139: TQRLabel;
    QRDBText110: TQRDBText;
    QRDBText111: TQRDBText;
    OtherOUQueryGenSysCharge2: TFloatField;
    OtherOUQueryTCDemandCharge2: TFloatField;
    OtherOUQueryTCTransSystemCharge2: TFloatField;
    OtherOUQuerySystemLossCharge2: TFloatField;
    OtherOUQueryLifelineDiscSubs2: TFloatField;
    OtherOUQuerySCDisc2: TFloatField;
    QRLabel140: TQRLabel;
    QRDBText112: TQRDBText;
    QRLabel141: TQRLabel;
    QRDBText113: TQRDBText;
    QRDBText114: TQRDBText;
    BillFitall: TFloatField;
    MRateFitallrate: TFloatField;
    QRLabel143: TQRLabel;
    QRDBText115: TQRDBText;
    QRLabel144: TQRLabel;
    QRDBText116: TQRDBText;
    QRDBText117: TQRDBText;
    NxHeaderPanel2: TNxHeaderPanel;
    Bevel3: TBevel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label72: TLabel;
    Label58: TLabel;
    Bevel4: TBevel;
    refKWHR_nc: TNxNumberEdit;
    diffKWHR_nc: TNxNumberEdit;
    billmonthRate_nc: TNxEdit;
    amounth_nc: TNxNumberEdit;
    penalty_nc: TNxNumberEdit;
    total_nc: TNxNumberEdit;
    datepck_nc: TNxDatePicker;
    diffDmnd_nc: TNxNumberEdit;
    noMonthIns_nc: TNxNumberEdit;
    amortization_nc: TNxNumberEdit;
    nomonth_nc: TNxNumberEdit;
    name_nc: TEdit;
    address_nc: TEdit;
    idnum_nc: TEdit;
    NxButton19: TNxButton;
    NxButton20: TNxButton;
    Bill_ncQ: TMyQuery;
    Bill_ncQentry: TIntegerField;
    Bill_ncQIDnum: TStringField;
    Bill_ncQName: TStringField;
    Bill_ncQAddress: TStringField;
    Bill_ncQRateCode: TStringField;
    Bill_ncQSerial: TStringField;
    Bill_ncQMultiplier: TFloatField;
    Bill_ncQPreviousReadingDate: TDateField;
    Bill_ncQPresentReadingDate: TDateField;
    Bill_ncQPreviousReadingKWH: TFloatField;
    Bill_ncQPresentReadingKWH: TFloatField;
    Bill_ncQDiff: TFloatField;
    Bill_ncQDemand: TFloatField;
    Bill_ncQFlatRateWattage: TFloatField;
    Bill_ncQFeedBackCode: TStringField;
    Bill_ncQCM: TStringField;
    Bill_ncQCMMultiplier: TFloatField;
    Bill_ncQCMPreviousReadingKWH: TFloatField;
    Bill_ncQCMPresentReadingKWH: TFloatField;
    Bill_ncQCMKilowattHour: TFloatField;
    Bill_ncQCMDemand: TFloatField;
    Bill_ncQKilowattHour: TFloatField;
    Bill_ncQKilowattUsed: TFloatField;
    Bill_ncQGenSysCharge: TFloatField;
    Bill_ncQHostCommCharge: TFloatField;
    Bill_ncQForexCharge: TFloatField;
    Bill_ncQTCDemandCharge: TFloatField;
    Bill_ncQTCTransSystemCharge: TFloatField;
    Bill_ncQSystemLossCharge: TFloatField;
    Bill_ncQDCDemandCharge: TFloatField;
    Bill_ncQDCDistributionCharge: TFloatField;
    Bill_ncQSCRetCustCharge: TFloatField;
    Bill_ncQSCSupplySysCharge: TFloatField;
    Bill_ncQMCRetailCustCharge: TFloatField;
    Bill_ncQMCSystemCharge: TFloatField;
    Bill_ncQUCNPCStrandedDebts: TFloatField;
    Bill_ncQUCNPCStrandedContCost: TFloatField;
    Bill_ncQUCDUStrandedContCost: TFloatField;
    Bill_ncQUCME: TFloatField;
    Bill_ncQUCEqTaxesAndRoyalties: TFloatField;
    Bill_ncQUCEC: TFloatField;
    Bill_ncQUCCrossSubRemoval: TFloatField;
    Bill_ncQICCrossSubsidyCharge: TFloatField;
    Bill_ncQPowerActRateRed: TFloatField;
    Bill_ncQLifelineDiscSubs: TFloatField;
    Bill_ncQLoanCondo: TFloatField;
    Bill_ncQTransformerRental: TFloatField;
    Bill_ncQOCCode1: TStringField;
    Bill_ncQOCAmount1: TFloatField;
    Bill_ncQOCMo1: TFloatField;
    Bill_ncQOCTotal1: TFloatField;
    Bill_ncQOCCode2: TStringField;
    Bill_ncQOCAmount2: TFloatField;
    Bill_ncQOCMo2: TFloatField;
    Bill_ncQOCTotal2: TFloatField;
    Bill_ncQOCCode3: TStringField;
    Bill_ncQOCAmount3: TFloatField;
    Bill_ncQOCMo3: TFloatField;
    Bill_ncQOCTotal3: TFloatField;
    Bill_ncQTotalBill: TFloatField;
    Bill_ncQBillNumber: TStringField;
    Bill_ncQOEBRNumber: TStringField;
    Bill_ncQBillMonth: TStringField;
    Bill_ncQBillDate: TDateField;
    Bill_ncQstatuscode: TStringField;
    Bill_ncQLCCustMo: TFloatField;
    Bill_ncQPrevYearAdjPowerCost: TFloatField;
    Bill_ncQSysLossUnderRecov: TFloatField;
    Bill_ncQVATDisc: TFloatField;
    Bill_ncQVATDiscAmt: TFloatField;
    Bill_ncQVATDistDiscAmt: TFloatField;
    Bill_ncQVATGenCoDiscAmt: TFloatField;
    Bill_ncQVATTransCoDiscAmt: TFloatField;
    Bill_ncQVATSystemLossDiscAmt: TFloatField;
    Bill_ncQVATDist: TFloatField;
    Bill_ncQVATGenCO: TFloatField;
    Bill_ncQVATTransCO: TFloatField;
    Bill_ncQVATSystemLossGenCO: TFloatField;
    Bill_ncQVATSystemLossTransCO: TFloatField;
    Bill_ncQVAT: TFloatField;
    Bill_ncQAdjAmountBalance: TFloatField;
    Bill_ncQAdjAmountApplied: TFloatField;
    Bill_ncQReadTime: TStringField;
    Bill_ncQDiffBillPerKwhr: TFloatField;
    Bill_ncQDiffBillPerKW: TFloatField;
    Bill_ncQDiffBillPerCust: TFloatField;
    Bill_ncQMCC: TFloatField;
    Bill_ncQPKVROebrNumber: TStringField;
    Bill_ncQPKVRBillMonth: TStringField;
    Bill_ncQPKVRAmount: TFloatField;
    Bill_ncQTransSysAncRefund: TFloatField;
    Bill_ncQTransDemAncRefund: TFloatField;
    Bill_ncQVATTransAncRefund: TFloatField;
    Bill_ncQRefKilowattHour: TFloatField;
    Bill_ncQPenalty: TFloatField;
    Bill_ncQAmountPaid: TFloatField;
    Bill_ncQBalance: TFloatField;
    Bill_ncQInstallment: TFloatField;
    Bill_ncQAmortization: TFloatField;
    Bill_ncQpostingcode: TStringField;
    Bill_ncQWRateCode: TStringField;
    Bill_ncQNumMonth: TFloatField;
    Bill_ncQscdisc: TFloatField;
    Bill_ncQscamt4disc: TFloatField;
    Bill_ncQRPTax: TFloatField;
    Bill_ncQRateOrder: TStringField;
    Bill_ncQOtherGenRateAdj: TFloatField;
    Bill_ncQOtherTransCostAdj: TFloatField;
    Bill_ncQOtherTransDemandCostAdj: TFloatField;
    Bill_ncQOtherSystemLossCostAdj: TFloatField;
    Bill_ncQOtherLifelineRateCostAdj: TFloatField;
    Bill_ncQOtherSeniorCitizenRateAdj: TFloatField;
    Bill_ncQFitall: TFloatField;
    Biil_ncS: TMyDataSource;
    pilferbill_ncQ: TMyQuery;
    pilferbill_ncQentry: TIntegerField;
    pilferbill_ncQIDnum: TStringField;
    pilferbill_ncQName: TStringField;
    pilferbill_ncQAddress: TStringField;
    pilferbill_ncQRateCode: TStringField;
    pilferbill_ncQSerial: TStringField;
    pilferbill_ncQMultiplier: TFloatField;
    pilferbill_ncQPreviousReadingDate: TDateField;
    pilferbill_ncQPresentReadingDate: TDateField;
    pilferbill_ncQPreviousReadingKWH: TFloatField;
    pilferbill_ncQPresentReadingKWH: TFloatField;
    pilferbill_ncQDiff: TFloatField;
    pilferbill_ncQDemand: TFloatField;
    pilferbill_ncQFlatRateWattage: TFloatField;
    pilferbill_ncQFeedBackCode: TStringField;
    pilferbill_ncQCM: TStringField;
    pilferbill_ncQCMMultiplier: TFloatField;
    pilferbill_ncQCMPreviousReadingKWH: TFloatField;
    pilferbill_ncQCMPresentReadingKWH: TFloatField;
    pilferbill_ncQCMKilowattHour: TFloatField;
    pilferbill_ncQCMDemand: TFloatField;
    pilferbill_ncQKilowattHour: TFloatField;
    pilferbill_ncQKilowattUsed: TFloatField;
    pilferbill_ncQGenSysCharge: TFloatField;
    pilferbill_ncQHostCommCharge: TFloatField;
    pilferbill_ncQForexCharge: TFloatField;
    pilferbill_ncQTCDemandCharge: TFloatField;
    pilferbill_ncQTCTransSystemCharge: TFloatField;
    pilferbill_ncQSystemLossCharge: TFloatField;
    pilferbill_ncQDCDemandCharge: TFloatField;
    pilferbill_ncQDCDistributionCharge: TFloatField;
    pilferbill_ncQSCRetCustCharge: TFloatField;
    pilferbill_ncQSCSupplySysCharge: TFloatField;
    pilferbill_ncQMCRetailCustCharge: TFloatField;
    pilferbill_ncQMCSystemCharge: TFloatField;
    pilferbill_ncQUCNPCStrandedDebts: TFloatField;
    pilferbill_ncQUCNPCStrandedContCost: TFloatField;
    pilferbill_ncQUCDUStrandedContCost: TFloatField;
    pilferbill_ncQUCME: TFloatField;
    pilferbill_ncQUCEqTaxesAndRoyalties: TFloatField;
    pilferbill_ncQUCEC: TFloatField;
    pilferbill_ncQUCCrossSubRemoval: TFloatField;
    pilferbill_ncQICCrossSubsidyCharge: TFloatField;
    pilferbill_ncQPowerActRateRed: TFloatField;
    pilferbill_ncQLifelineDiscSubs: TFloatField;
    pilferbill_ncQLoanCondo: TFloatField;
    pilferbill_ncQTransformerRental: TFloatField;
    pilferbill_ncQOCCode1: TStringField;
    pilferbill_ncQOCAmount1: TFloatField;
    pilferbill_ncQOCMo1: TFloatField;
    pilferbill_ncQOCTotal1: TFloatField;
    pilferbill_ncQOCCode2: TStringField;
    pilferbill_ncQOCAmount2: TFloatField;
    pilferbill_ncQOCMo2: TFloatField;
    pilferbill_ncQOCTotal2: TFloatField;
    pilferbill_ncQOCCode3: TStringField;
    pilferbill_ncQOCAmount3: TFloatField;
    pilferbill_ncQOCMo3: TFloatField;
    pilferbill_ncQOCTotal3: TFloatField;
    pilferbill_ncQTotalBill: TFloatField;
    pilferbill_ncQBillNumber: TStringField;
    pilferbill_ncQOEBRNumber: TStringField;
    pilferbill_ncQBillMonth: TStringField;
    pilferbill_ncQBillDate: TDateField;
    pilferbill_ncQstatuscode: TStringField;
    pilferbill_ncQLCCustMo: TFloatField;
    pilferbill_ncQPrevYearAdjPowerCost: TFloatField;
    pilferbill_ncQSysLossUnderRecov: TFloatField;
    pilferbill_ncQVATDisc: TFloatField;
    pilferbill_ncQVATDiscAmt: TFloatField;
    pilferbill_ncQVATDistDiscAmt: TFloatField;
    pilferbill_ncQVATGenCoDiscAmt: TFloatField;
    pilferbill_ncQVATTransCoDiscAmt: TFloatField;
    pilferbill_ncQVATSystemLossDiscAmt: TFloatField;
    pilferbill_ncQVATDist: TFloatField;
    pilferbill_ncQVATGenCO: TFloatField;
    pilferbill_ncQVATTransCO: TFloatField;
    pilferbill_ncQVATSystemLossGenCO: TFloatField;
    pilferbill_ncQVATSystemLossTransCO: TFloatField;
    pilferbill_ncQVAT: TFloatField;
    pilferbill_ncQAdjAmountBalance: TFloatField;
    pilferbill_ncQAdjAmountApplied: TFloatField;
    pilferbill_ncQReadTime: TStringField;
    pilferbill_ncQDiffBillPerKwhr: TFloatField;
    pilferbill_ncQDiffBillPerKW: TFloatField;
    pilferbill_ncQDiffBillPerCust: TFloatField;
    pilferbill_ncQMCC: TFloatField;
    pilferbill_ncQPKVROebrNumber: TStringField;
    pilferbill_ncQPKVRBillMonth: TStringField;
    pilferbill_ncQPKVRAmount: TFloatField;
    pilferbill_ncQTransSysAncRefund: TFloatField;
    pilferbill_ncQTransDemAncRefund: TFloatField;
    pilferbill_ncQVATTransAncRefund: TFloatField;
    pilferbill_ncQRefKilowattHour: TFloatField;
    pilferbill_ncQPenalty: TFloatField;
    pilferbill_ncQAmountPaid: TFloatField;
    pilferbill_ncQBalance: TFloatField;
    pilferbill_ncQInstallment: TFloatField;
    pilferbill_ncQAmortization: TFloatField;
    pilferbill_ncQpostingcode: TStringField;
    pilferbill_ncQWRateCode: TStringField;
    pilferbill_ncQNumMonth: TFloatField;
    pilferbill_ncQscdisc: TFloatField;
    pilferbill_ncQscamt4disc: TFloatField;
    pilferbill_ncQRPTax: TFloatField;
    pilferbill_ncQRateOrder: TStringField;
    pilferbill_ncQBTax: TFloatField;
    pilferbill_ncQOtherGenRateAdj: TFloatField;
    pilferbill_ncQOtherTransCostAdj: TFloatField;
    pilferbill_ncQOtherTransDemandCostAdj: TFloatField;
    pilferbill_ncQOtherSystemLossCostAdj: TFloatField;
    pilferbill_ncQOtherLifelineRateCostAdj: TFloatField;
    pilferbill_ncQOtherSeniorCitizenRateAdj: TFloatField;
    pilferbill_ncQFitall: TFloatField;
    DBEdit37: TDBEdit;
    ComboBox1: TComboBox;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Bill_ncQAccountNumber: TStringField;
    pilferbill_ncQAccountNumber: TStringField;
    pilfelunionQ: TMyQuery;
    pilfelunionQentry: TIntegerField;
    pilfelunionQArea: TStringField;
    pilfelunionQBook: TStringField;
    pilfelunionQSequence: TStringField;
    pilfelunionQAccountNumber: TStringField;
    pilfelunionQName: TStringField;
    pilfelunionQAddress: TStringField;
    pilfelunionQRateCode: TStringField;
    pilfelunionQSerial: TStringField;
    pilfelunionQMultiplier: TFloatField;
    pilfelunionQPreviousReadingDate: TDateField;
    pilfelunionQPresentReadingDate: TDateField;
    pilfelunionQPreviousReadingKWH: TFloatField;
    pilfelunionQPresentReadingKWH: TFloatField;
    pilfelunionQDiff: TFloatField;
    pilfelunionQDemand: TFloatField;
    pilfelunionQFlatRateWattage: TFloatField;
    pilfelunionQFeedBackCode: TStringField;
    pilfelunionQCM: TStringField;
    pilfelunionQCMMultiplier: TFloatField;
    pilfelunionQCMPreviousReadingKWH: TFloatField;
    pilfelunionQCMPresentReadingKWH: TFloatField;
    pilfelunionQCMKilowattHour: TFloatField;
    pilfelunionQCMDemand: TFloatField;
    pilfelunionQKilowattHour: TFloatField;
    pilfelunionQKilowattUsed: TFloatField;
    pilfelunionQGenSysCharge: TFloatField;
    pilfelunionQHostCommCharge: TFloatField;
    pilfelunionQForexCharge: TFloatField;
    pilfelunionQTCDemandCharge: TFloatField;
    pilfelunionQTCTransSystemCharge: TFloatField;
    pilfelunionQSystemLossCharge: TFloatField;
    pilfelunionQDCDemandCharge: TFloatField;
    pilfelunionQDCDistributionCharge: TFloatField;
    pilfelunionQSCRetCustCharge: TFloatField;
    pilfelunionQSCSupplySysCharge: TFloatField;
    pilfelunionQMCRetailCustCharge: TFloatField;
    pilfelunionQMCSystemCharge: TFloatField;
    pilfelunionQUCNPCStrandedDebts: TFloatField;
    pilfelunionQUCNPCStrandedContCost: TFloatField;
    pilfelunionQUCDUStrandedContCost: TFloatField;
    pilfelunionQUCME: TFloatField;
    pilfelunionQUCEqTaxesAndRoyalties: TFloatField;
    pilfelunionQUCEC: TFloatField;
    pilfelunionQUCCrossSubRemoval: TFloatField;
    pilfelunionQICCrossSubsidyCharge: TFloatField;
    pilfelunionQPowerActRateRed: TFloatField;
    pilfelunionQLifelineDiscSubs: TFloatField;
    pilfelunionQLoanCondo: TFloatField;
    pilfelunionQTransformerRental: TFloatField;
    pilfelunionQOCCode1: TStringField;
    pilfelunionQOCAmount1: TFloatField;
    pilfelunionQOCMo1: TFloatField;
    pilfelunionQOCTotal1: TFloatField;
    pilfelunionQOCCode2: TStringField;
    pilfelunionQOCAmount2: TFloatField;
    pilfelunionQOCMo2: TFloatField;
    pilfelunionQOCTotal2: TFloatField;
    pilfelunionQOCCode3: TStringField;
    pilfelunionQOCAmount3: TFloatField;
    pilfelunionQOCMo3: TFloatField;
    pilfelunionQOCTotal3: TFloatField;
    pilfelunionQTotalBill: TFloatField;
    pilfelunionQBillNumber: TStringField;
    pilfelunionQOEBRNumber: TStringField;
    pilfelunionQBillMonth: TStringField;
    pilfelunionQBillDate: TDateField;
    pilfelunionQstatuscode: TStringField;
    pilfelunionQLCCustMo: TFloatField;
    pilfelunionQPrevYearAdjPowerCost: TFloatField;
    pilfelunionQSysLossUnderRecov: TFloatField;
    pilfelunionQVATDisc: TFloatField;
    pilfelunionQVATDiscAmt: TFloatField;
    pilfelunionQVATDistDiscAmt: TFloatField;
    pilfelunionQVATGenCoDiscAmt: TFloatField;
    pilfelunionQVATTransCoDiscAmt: TFloatField;
    pilfelunionQVATSystemLossDiscAmt: TFloatField;
    pilfelunionQVATDist: TFloatField;
    pilfelunionQVATGenCO: TFloatField;
    pilfelunionQVATTransCO: TFloatField;
    pilfelunionQVATSystemLossGenCO: TFloatField;
    pilfelunionQVATSystemLossTransCO: TFloatField;
    pilfelunionQVAT: TFloatField;
    pilfelunionQAdjAmountBalance: TFloatField;
    pilfelunionQAdjAmountApplied: TFloatField;
    pilfelunionQReadTime: TStringField;
    pilfelunionQDiffBillPerKwhr: TFloatField;
    pilfelunionQDiffBillPerKW: TFloatField;
    pilfelunionQDiffBillPerCust: TFloatField;
    pilfelunionQMCC: TFloatField;
    pilfelunionQPKVROebrNumber: TStringField;
    pilfelunionQPKVRBillMonth: TStringField;
    pilfelunionQPKVRAmount: TFloatField;
    pilfelunionQTransSysAncRefund: TFloatField;
    pilfelunionQTransDemAncRefund: TFloatField;
    pilfelunionQVATTransAncRefund: TFloatField;
    pilfelunionQRefKilowattHour: TFloatField;
    pilfelunionQPenalty: TFloatField;
    pilfelunionQAmountPaid: TFloatField;
    pilfelunionQBalance: TFloatField;
    pilfelunionQInstallment: TFloatField;
    pilfelunionQAmortization: TFloatField;
    pilfelunionQpostingcode: TStringField;
    pilfelunionQWRateCode: TStringField;
    pilfelunionQNumMonth: TFloatField;
    pilfelunionQscdisc: TFloatField;
    pilfelunionQscamt4disc: TFloatField;
    pilfelunionQRPTax: TFloatField;
    pilfelunionQRateOrder: TStringField;
    pilfelunionQBTax: TFloatField;
    pilfelunionQOtherGenRateAdj: TFloatField;
    pilfelunionQOtherTransCostAdj: TFloatField;
    pilfelunionQOtherTransDemandCostAdj: TFloatField;
    pilfelunionQOtherSystemLossCostAdj: TFloatField;
    pilfelunionQOtherLifelineRateCostAdj: TFloatField;
    pilfelunionQOtherSeniorCitizenRateAdj: TFloatField;
    pilfelunionQFitall: TFloatField;
    pilfelunionQbillmonthP: TStringField;
    pilfelunionS: TMyDataSource;
    AdvSmoothTabPager1: TAdvSmoothTabPager;
    AdvSmoothTabPager11: TAdvSmoothTabPage;
    NxLabel1: TNxLabel;
    Bevel1: TBevel;
    Label1: TLabel;
    Label10: TLabel;
    Label9: TLabel;
    Label8: TLabel;
    Label7: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    NxHeaderPanel1: TNxHeaderPanel;
    CRDBGrid1: TCRDBGrid1;
    SearchMaster: TNxButtonEdit;
    Panel1: TPanel;
    NxButton1: TNxButton;
    DateFrom: TNxDatePicker;
    DateTo: TNxDatePicker;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    NxButton2: TNxButton;
    NxButton3: TNxButton;
    NxButton4: TNxButton;
    NxButton6: TNxButton;
    NxButton5: TNxButton;
    AdvSmoothTabPager12: TAdvSmoothTabPage;
    NxPageControl1: TNxPageControl;
    NxHeaderPanel3: TNxHeaderPanel;
    CRDBGrid11: TCRDBGrid1;
    NxButton21: TNxButton;
    NxButton22: TNxButton;
    NxButton23: TNxButton;
    NxButton24: TNxButton;
    NxButton25: TNxButton;
    Label67: TLabel;
    DBEdit38: TDBEdit;
    Label76: TLabel;
    DBEdit41: TDBEdit;
    Label77: TLabel;
    DBEdit42: TDBEdit;
    DBEdit43: TDBEdit;
    Label78: TLabel;
    Label79: TLabel;
    DBEdit44: TDBEdit;
    Bevel5: TBevel;
    Label82: TLabel;
    Panel3: TPanel;
    NxButton26: TNxButton;
    NxDatePicker1: TNxDatePicker;
    NxDatePicker2: TNxDatePicker;
    NxButtonEdit1: TNxButtonEdit;
    NxLabel4: TNxLabel;
    Label68: TLabel;
    DBEdit39: TDBEdit;
    DBEdit40: TDBEdit;
    Label71: TLabel;
    Label80: TLabel;
    DBEdit45: TDBEdit;
    BillCode: TFloatField;
    pilfelunionQCode: TFloatField;
    PilferBillRegCode: TFloatField;
    nc_MasterQ: TMyQuery;
    nc_MasterQCode: TIntegerField;
    nc_MasterQArea: TStringField;
    nc_MasterQBook: TStringField;
    nc_MasterQSequence: TStringField;
    nc_MasterQAccountNumber: TStringField;
    nc_MasterQName: TStringField;
    nc_MasterQAddress: TStringField;
    nc_MasterQRateCode: TStringField;
    nc_MasterQConsCode: TStringField;
    nc_MasterQConnCode: TStringField;
    nc_MasterQTransformer: TStringField;
    nc_MasterQMeterBrand: TStringField;
    nc_MasterQSerial: TStringField;
    nc_MasterQMultiplier: TFloatField;
    nc_MasterQNewConnectionDate: TDateField;
    nc_MasterQReconnectionDate: TDateField;
    nc_MasterQDisconnectionDate: TDateField;
    nc_MasterQPreviousReadingDate: TDateField;
    nc_MasterQPresentReadingDate: TDateField;
    nc_MasterQPreviousReadingKWH: TFloatField;
    nc_MasterQPresentReadingKWH: TFloatField;
    nc_MasterQDiff: TFloatField;
    nc_MasterQDemand: TFloatField;
    nc_MasterQFlatRateWattage: TFloatField;
    nc_MasterQFeedBackCode: TStringField;
    nc_MasterQCM: TStringField;
    nc_MasterQCMMultiplier: TFloatField;
    nc_MasterQCMPreviousReadingKWH: TFloatField;
    nc_MasterQCMPresentReadingKWH: TFloatField;
    nc_MasterQCMKilowattHour: TFloatField;
    nc_MasterQCMDemand: TFloatField;
    nc_MasterQKilowattHour: TFloatField;
    nc_MasterQKilowattUsed: TFloatField;
    nc_MasterQGenSysCharge: TFloatField;
    nc_MasterQHostCommCharge: TFloatField;
    nc_MasterQForexCharge: TFloatField;
    nc_MasterQTCDemandCharge: TFloatField;
    nc_MasterQTCTransSystemCharge: TFloatField;
    nc_MasterQSystemLossCharge: TFloatField;
    nc_MasterQDCDemandCharge: TFloatField;
    nc_MasterQDCDistributionCharge: TFloatField;
    nc_MasterQSCRetCustCharge: TFloatField;
    nc_MasterQSCSupplySysCharge: TFloatField;
    nc_MasterQMCRetailCustCharge: TFloatField;
    nc_MasterQMCSystemCharge: TFloatField;
    nc_MasterQUCNPCStrandedDebts: TFloatField;
    nc_MasterQUCNPCStrandedContCost: TFloatField;
    nc_MasterQUCDUStrandedContCost: TFloatField;
    nc_MasterQUCME: TFloatField;
    nc_MasterQUCEqTaxesAndRoyalties: TFloatField;
    nc_MasterQUCEC: TFloatField;
    nc_MasterQUCCrossSubRemoval: TFloatField;
    nc_MasterQICCrossSubsidyCharge: TFloatField;
    nc_MasterQPowerActRateRed: TFloatField;
    nc_MasterQLifelineDiscSubs: TFloatField;
    nc_MasterQLoanCondo: TFloatField;
    nc_MasterQTransformerRental: TFloatField;
    nc_MasterQOCCode1: TStringField;
    nc_MasterQOCAmount1: TFloatField;
    nc_MasterQOCMo1: TFloatField;
    nc_MasterQOCTotal1: TFloatField;
    nc_MasterQOCCode2: TStringField;
    nc_MasterQOCAmount2: TFloatField;
    nc_MasterQOCMo2: TFloatField;
    nc_MasterQOCTotal2: TFloatField;
    nc_MasterQOCCode3: TStringField;
    nc_MasterQOCAmount3: TFloatField;
    nc_MasterQOCMo3: TFloatField;
    nc_MasterQOCTotal3: TFloatField;
    nc_MasterQTotalBill: TFloatField;
    nc_MasterQBillNumber: TStringField;
    nc_MasterQOEBRNumber: TStringField;
    nc_MasterQBillMonth: TStringField;
    nc_MasterQDeleteRemarks: TStringField;
    nc_MasterQPoleNumber: TStringField;
    nc_MasterQFeederNumber: TStringField;
    nc_MasterQXFormerQty: TIntegerField;
    nc_MasterQXFormerKVA: TStringField;
    nc_MasterQAge30: TFloatField;
    nc_MasterQAge60: TFloatField;
    nc_MasterQAge90: TFloatField;
    nc_MasterQAge120: TFloatField;
    nc_MasterQAgeOver120: TFloatField;
    nc_MasterQAgeTotal: TFloatField;
    nc_MasterQTotalPayments: TFloatField;
    nc_MasterQARBalance: TFloatField;
    nc_MasterQLCCustMo: TFloatField;
    nc_MasterQPrevYearAdjPowerCost: TFloatField;
    nc_MasterQSysLossUnderRecov: TFloatField;
    nc_MasterQVATDisc: TFloatField;
    nc_MasterQVATDiscAmt: TFloatField;
    nc_MasterQVATDistDiscAmt: TFloatField;
    nc_MasterQVATGenCoDiscAmt: TFloatField;
    nc_MasterQVATTransCoDiscAmt: TFloatField;
    nc_MasterQVATSystemLossDiscAmt: TFloatField;
    nc_MasterQVATDist: TFloatField;
    nc_MasterQVATGenCO: TFloatField;
    nc_MasterQVATTransCO: TFloatField;
    nc_MasterQVATSystemLossGenCO: TFloatField;
    nc_MasterQVATSystemLossTransCO: TFloatField;
    nc_MasterQVAT: TFloatField;
    nc_MasterQDiffBillPerKwhr: TFloatField;
    nc_MasterQDiffBillPerKW: TFloatField;
    nc_MasterQDiffBillPerCust: TFloatField;
    nc_MasterQMCC: TFloatField;
    nc_MasterQPKVROebrNumber: TStringField;
    nc_MasterQPKVRBillMonth: TStringField;
    nc_MasterQPKVRAmount: TFloatField;
    nc_MasterQSCDisc: TFloatField;
    nc_MasterQWRateCode: TStringField;
    nc_MasterQSCAmt4Disc: TFloatField;
    nc_MasterQDWLEN1: TFloatField;
    nc_MasterQDWLEN2: TFloatField;
    nc_MasterQCBook: TStringField;
    nc_MasterQRPTax: TFloatField;
    nc_MasterQRateOrder: TStringField;
    nc_MasterQBTax: TFloatField;
    nc_MasterQRateOrderNo: TIntegerField;
    nc_MasterQOtherGenRateAdj: TFloatField;
    nc_MasterQOtherTransCostAdj: TFloatField;
    nc_MasterQOtherTransDemandCostAdj: TFloatField;
    nc_MasterQOtherSystemLossCostAdj: TFloatField;
    nc_MasterQOtherLifelineRateCostAdj: TFloatField;
    nc_MasterQOtherSeniorCitizenRateAdj: TFloatField;
    nc_MasterQFitall: TFloatField;
    sample: TMyQuery;
    tmpQ: TMyQuery;
    Label81: TLabel;
    payment_nc: TNxNumberEdit;
    balance_nc: TNxNumberEdit;
    Label83: TLabel;
    TabSheet6: TTabSheet;
    QuickRep2: TQuickRep;
    QRBand10: TQRBand;
    QRLabel145: TQRLabel;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
    QRExpr9: TQRExpr;
    QRExpr10: TQRExpr;
    QRExpr11: TQRExpr;
    QRExpr12: TQRExpr;
    QRBand11: TQRBand;
    QRLabel151: TQRLabel;
    QRLabel152: TQRLabel;
    QRLabel153: TQRLabel;
    QRLabel158: TQRLabel;
    QRImage3: TQRImage;
    QRLabel161: TQRLabel;
    QRLabel164: TQRLabel;
    QRLabel167: TQRLabel;
    QRLabel169: TQRLabel;
    QRLabel170: TQRLabel;
    QRLabel171: TQRLabel;
    QRLabel172: TQRLabel;
    QRLabel173: TQRLabel;
    QRLabel174: TQRLabel;
    QRLabel176: TQRLabel;
    QRLabel177: TQRLabel;
    QRLabel178: TQRLabel;
    QRLabel179: TQRLabel;
    QRLabel180: TQRLabel;
    QRLabel181: TQRLabel;
    QRBand12: TQRBand;
    QRDBText119: TQRDBText;
    QRDBText120: TQRDBText;
    QRDBText122: TQRDBText;
    QRDBText123: TQRDBText;
    QRDBText130: TQRDBText;
    QRDBText131: TQRDBText;
    QRDBText143: TQRDBText;
    QRDBText144: TQRDBText;
    QRDBText145: TQRDBText;
    QRDBText146: TQRDBText;
    QRDBText147: TQRDBText;
    QRDBText148: TQRDBText;
    PilferBillReg_NC: TMyQuery;
    TabSheet7: TTabSheet;
    QuickRep3: TQuickRep;
    QRBand13: TQRBand;
    QRDBText149: TQRDBText;
    QRDBText150: TQRDBText;
    QRDBText151: TQRDBText;
    QRDBText152: TQRDBText;
    QRDBText153: TQRDBText;
    QRDBText154: TQRDBText;
    QRDBText155: TQRDBText;
    QRDBText156: TQRDBText;
    QRDBText157: TQRDBText;
    QRDBText158: TQRDBText;
    QRDBText159: TQRDBText;
    QRDBText160: TQRDBText;
    QRBand14: TQRBand;
    QRShape29: TQRShape;
    QRLabel163: TQRLabel;
    QRLabel168: TQRLabel;
    QRLabel175: TQRLabel;
    QRSysData7: TQRSysData;
    QRSysData8: TQRSysData;
    QRSysData9: TQRSysData;
    QRLabel182: TQRLabel;
    QRLabel184: TQRLabel;
    QRShape30: TQRShape;
    QRLabel185: TQRLabel;
    QRLabel186: TQRLabel;
    QRLabel187: TQRLabel;
    QRLabel188: TQRLabel;
    QRShape31: TQRShape;
    QRLabel189: TQRLabel;
    QRLabel190: TQRLabel;
    QRLabel191: TQRLabel;
    QRLabel192: TQRLabel;
    QRShape32: TQRShape;
    QRLabel193: TQRLabel;
    QRLabel194: TQRLabel;
    QRLabel195: TQRLabel;
    QRLabel196: TQRLabel;
    QRBand15: TQRBand;
    QRShape33: TQRShape;
    QRLabel197: TQRLabel;
    QRDBText161: TQRDBText;
    QRDBText162: TQRDBText;
    QRDBText163: TQRDBText;
    QRDBText164: TQRDBText;
    QRDBText165: TQRDBText;
    QRDBText166: TQRDBText;
    QRDBText167: TQRDBText;
    QRDBText168: TQRDBText;
    QRDBText169: TQRDBText;
    QRDBText170: TQRDBText;
    QRDBText171: TQRDBText;
    QRDBText172: TQRDBText;
    QRLabel198: TQRLabel;
    QRLabel199: TQRLabel;
    QRLabel200: TQRLabel;
    QRDBText174: TQRDBText;
    QRLabel201: TQRLabel;
    QRDBText118: TQRDBText;
    QRLabel183: TQRLabel;
    QRDBImage1: TQRDBImage;
    S: TMyQuery;
    SSign1: TBlobField;
    SSign2: TBlobField;
    SidSOASign: TLongWordField;
    SSign3: TBlobField;
    DBImage1: TDBImage;
    OpenPictureDialog1: TOpenPictureDialog;
    BillVATparec: TFloatField;
    BillPARec: TFloatField;
    MRatePARec: TFloatField;
    Bill_ncQPARec: TFloatField;
    Bill_ncQVATparec: TFloatField;
    QRLabel202: TQRLabel;
    QRDBText121: TQRDBText;
    QRLabel203: TQRLabel;
    QRDBText175: TQRDBText;
    QRDBText200: TQRDBText;
    DBImage2: TDBImage;
    s_ds: TMyDataSource;
    QRDBImage3: TQRDBImage;
    QRLabel27: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel34: TQRLabel;
    QRDBText10: TQRDBText;
    QRDBText28: TQRDBText;
    BillVATmcc: TFloatField;
    Bill_ncQVATmcc: TFloatField;
    MasterisGram: TBooleanField;
    Billgram: TFloatField;
    QRLabel204: TQRLabel;
    QRDBText201: TQRDBText;
    QRLabel205: TQRLabel;
    QRDBText202: TQRDBText;
    QRDBText203: TQRDBText;
    QRImage1: TQRImage;
    QRLabel206: TQRLabel;
    QRDBText204: TQRDBText;
    QRLabel207: TQRLabel;
    QRDBText205: TQRDBText;
    QRDBText206: TQRDBText;
    QRLabel17: TQRLabel;
    QRDBText210: TQRDBText;
    QRLabel208: TQRLabel;
    QRDBText211: TQRDBText;
    QRDBText212: TQRDBText;
    QRLabel209: TQRLabel;
    QRDBText213: TQRDBText;
    QRLabel210: TQRLabel;
    QRDBText214: TQRDBText;
    QRDBText215: TQRDBText;
    QRLabel211: TQRLabel;
    QRDBText216: TQRDBText;
    QRLabel212: TQRLabel;
    QRDBText217: TQRDBText;
    QRDBText218: TQRDBText;
    QRLabel213: TQRLabel;
    QRDBText225: TQRDBText;
    QRLabel214: TQRLabel;
    QRDBText234: TQRDBText;
    QRDBText235: TQRDBText;
    QRLabel215: TQRLabel;
    QRDBText236: TQRDBText;
    QRLabel216: TQRLabel;
    QRDBText237: TQRDBText;
    QRDBText238: TQRDBText;
    procedure FormShow(Sender: TObject);
    procedure NxButton5Click(Sender: TObject);
    procedure SearchMasterButtonClick(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure SearchMasterKeyPress(Sender: TObject; var Key: Char);
    procedure CRDBGrid2DblClick(Sender: TObject);
    procedure NxButton2Click(Sender: TObject);
    procedure NxButton9Click(Sender: TObject);
    procedure BillingDateKeyPress(Sender: TObject; var Key: Char);
    procedure BillingDateExit(Sender: TObject);
    procedure DiffAmountExit(Sender: TObject);
    procedure NxButton7Click(Sender: TObject);
    procedure EditPenalty1Click(Sender: TObject);
    procedure BillCalcFields(DataSet: TDataSet);
    procedure NxButton3Click(Sender: TObject);
    procedure NxButton12Click(Sender: TObject);
    procedure NxButton14Click(Sender: TObject);
    procedure NxButton13Click(Sender: TObject);
    procedure QRDBText73Print(sender: TObject; var Value: String);
    procedure PosttoARLedgerandUnpaid1Click(Sender: TObject);
    procedure PilferBillRegCalcFields(DataSet: TDataSet);
    procedure NxButton4Click(Sender: TObject);
    procedure NxButton8Click(Sender: TObject);
    procedure NxButton6Click(Sender: TObject);
    procedure NxButton16Click(Sender: TObject);
    procedure NxButton10Click(Sender: TObject);
    procedure NxButton11Click(Sender: TObject);
    procedure NxButton15Click(Sender: TObject);
    procedure NxButton17Click(Sender: TObject);
    procedure DBEdit21Exit(Sender: TObject);
    procedure DeleteRecordClick(Sender: TObject);
    procedure NxButton20Click(Sender: TObject);
    procedure refKWHR_ncChange(Sender: TObject);
    procedure refKWHR_ncClick(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure datepck_ncKeyPress(Sender: TObject; var Key: Char);
    procedure datepck_ncExit(Sender: TObject);
    procedure DBEdit37KeyPress(Sender: TObject; var Key: Char);
    procedure name_ncKeyPress(Sender: TObject; var Key: Char);
    procedure diffDmnd_ncChange(Sender: TObject);
    procedure penalty_ncChange(Sender: TObject);
    procedure noMonthIns_ncChange(Sender: TObject);
    procedure address_ncKeyPress(Sender: TObject; var Key: Char);
    procedure idnum_ncKeyPress(Sender: TObject; var Key: Char);
    procedure billmonthRate_ncKeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure refKWHR_ncKeyPress(Sender: TObject; var Key: Char);
    procedure diffKWHR_ncKeyPress(Sender: TObject; var Key: Char);
    procedure diffDmnd_ncKeyPress(Sender: TObject; var Key: Char);
    procedure nomonth_ncKeyPress(Sender: TObject; var Key: Char);
    procedure amounth_ncKeyPress(Sender: TObject; var Key: Char);
    procedure penalty_ncKeyPress(Sender: TObject; var Key: Char);
    procedure total_ncKeyPress(Sender: TObject; var Key: Char);
    procedure amountToBepaid_ncKeyPress(Sender: TObject; var Key: Char);
    procedure balance_ncKeyPress(Sender: TObject; var Key: Char);
    procedure noMonthIns_ncKeyPress(Sender: TObject; var Key: Char);
    procedure NxButton19Click(Sender: TObject);
    procedure NxButton21Click(Sender: TObject);
    procedure AdvSmoothTabPager1Change(Sender: TObject);
    procedure NxButton22Click(Sender: TObject);
    procedure NxButton25Click(Sender: TObject);
    procedure payment_ncKeyPress(Sender: TObject; var Key: Char);
    procedure payment_ncChange(Sender: TObject);
    procedure nomonth_ncChange(Sender: TObject);
    procedure NxButton23Click(Sender: TObject);
    procedure DBImage1Click(Sender: TObject);
    procedure DBImage2Click(Sender: TObject);
  private
    { Private declarations }
  public
   Procedure ComputeBill(Kwhr,Demand : Real);
   Procedure ComputeBillNC(Kwhr,Demand : Real);
    { Public declarations }
  end;

var
  PilferageBillingForm : TPilferageBillingForm ;
  TotalPower           : Currency              ;
  VATGenco             : Currency              ;
  VATTransCO           : Currency              ;
  VATSystemLoss        : Currency              ;
  BNStr                : String[10]            ;
  BNVal                : Integer               ;

  TotalPowerNC         : Currency              ;
  VATGencoNC           : Currency              ;
  VATTransCONC         : Currency              ;
  VATSystemLossNC      : Currency              ;
  BNStrNC              : String[10]            ;
  BNValNC              : Integer               ;
  isGram_              : Integer               ;

implementation

uses Data, DateUtils, Intro, ModTools;

{$R *.dfm}

Function RoundOff(Data : Currency) : Currency;
Var DSt  : String;
    Val2 : Currency;
begin
Str(Data:0:4,Dst);

 If Copy(Dst,Length(Dst)-1,1) >= '5' then
        if data >= 0 then Val2 := StrToCurr(Copy(Dst,1,length(dst)-2))+0.01 else
                          Val2 := StrToCurr(Copy(Dst,1,length(dst)-2))-0.01 else
      Val2 := StrToCurr(Copy(Dst,1,length(dst)-2));

RoundOff := Val2;
If (Dst = '0.00') or (Dst = '-0.00') then RoundOff := 0.00;
end;
Procedure TPilferageBillingForm.ComputeBillNC;
var
  VATparecComp : Currency;
  mccComp      : Currency;
begin

   Bill_ncQGenSysCharge.AsCurrency            := RoundOff(KWHR * MRateGenSysRate.AsCurrency);
   Bill_ncQOtherGenRateAdj.AsCurrency         := RoundOff(KWHR * MRateOtherGenRateAdj.AsCurrency);
   Bill_ncQHostCommCharge.AsCurrency          := RoundOff(KWHR * MRateHostCommRate.AsCurrency);
   Bill_ncQForexCharge.AsCurrency             := RoundOff(KWHR * MRateForexRate.AsCurrency);
   Bill_ncQTCDemandCharge.AsCurrency          := RoundOff(Demand * MRateTCDemandRate.AsCurrency);
   Bill_ncQOtherTransDemandCostAdj.AsCurrency := RoundOff(Demand * MRateOtherTransDemandCostAdj.AsCurrency);

   Bill_ncQTCTransSystemCharge.AsCurrency     := RoundOff(KWHR * MRateTCSystemRate.AsCurrency);
   Bill_ncQOtherTransCostAdj.AsCurrency       := RoundOff(KWHR * MRateOtherTransCostAdj.AsCurrency);
   Bill_ncQSystemLossCharge.AsCurrency        := RoundOff(KWHR * MRateSystemLossRate.AsCurrency);
   Bill_ncQOtherSystemLossCostAdj.AsCurrency  := RoundOff(KWHR * MRateOtherSystemLossCostAdj.AsCurrency);
   Bill_ncQDCDemandCharge.AsCurrency          := RoundOff(Demand * MRateDCDemandRate.AsCurrency);

   Bill_ncQDCDistributionCharge.AsCurrency    := RoundOff(KWHR * MRateDCSystemRate.AsCurrency);
   Bill_ncQSCRetCustCharge.AsCurrency         := RoundOff(MRateSCRetailCustRate.AsCurrency);
   Bill_ncQSCSupplySysCharge.AsCurrency       := RoundOff(KWHR * MRateSCSupplySysRate.AsCurrency);
   Bill_ncQMCRetailCustCharge.AsCurrency      := RoundOff(MRateMCRetailCustRate.AsCurrency);
   Bill_ncQMCSystemCharge.AsCurrency          := RoundOff(KWHR * MRateMCSysRate.AsCurrency);
   mccComp                                    := RoundOff(KWHR * MRateMCC.AsCurrency);
   Bill_ncQMCC.AsCurrency                     := mccComp;
   Bill_ncQscdisc.AsCurrency                  := RoundOff(KWHR * MRateSCDiscSubs.AsCurrency);
   Bill_ncQOtherSeniorCitizenRateAdj.AsCurrency := RoundOff(KWHR * MRateOtherSeniorCitizenRateAdj.AsCurrency);

   Bill_ncQUCNPCStrandedDebts.AsCurrency      := RoundOff(KWHR * MRateUCNPCStrandedDebtsRate.AsCurrency);
   Bill_ncQUCNPCStrandedContCost.AsCurrency   := RoundOff(KWHR * MRateUCNPCStrandedContCostRate.AsCurrency);
   Bill_ncQUCDUStrandedContCost.AsCurrency    := RoundOff(KWHR * MRateUCDUStrandedContCostRate.AsCurrency);
   Bill_ncQUCME.AsCurrency                    := RoundOff(KWHR * MRateUCMERate.AsCurrency);
   Bill_ncQUCEqTaxesAndRoyalties.AsCurrency   := RoundOff(KWHR * MRateUCEqTaxesAndRoyaltiesRate.AsCurrency);
   Bill_ncQUCEC.AsCurrency                    := RoundOff(KWHR * MRateUCECRate.AsCurrency);
   Bill_ncQUCCrossSubRemoval.AsCurrency       := RoundOff(KWHR * MRateUCCrossSubsidyRemovalRate.AsCurrency);
   Bill_ncQICCrossSubsidyCharge.AsCurrency    := RoundOff(KWHR * MRateICCrossSubsidyRate.AsCurrency);
   Bill_ncQPowerActRateRed.AsCurrency         := RoundOff(KWHR * MRatePARARate.AsCurrency);
   Bill_ncQLifelineDiscSubs.AsCurrency        := RoundOff(KWHR * MRateLifelineSubsidyRate.AsCurrency);
   Bill_ncQOtherLifelineRateCostAdj.AsCurrency:= RoundOff(KWHR * MRateOtherLifelineRateCostAdj.AsCurrency);
   Bill_ncQLoanCondo.AsCurrency               := RoundOff(KWHR * MRateLoanCondo.AsCurrency);
   Bill_ncQLCCustMo.AsFloat                   := RoundOff(MRateLCCustMo.AsFloat);
   Bill_ncQPrevYearAdjPowerCost.AsCurrency    := RoundOff(KWHR * MRatePrevYearAdjPowerCost.AsCurrency);
   Bill_ncQSysLossUnderRecov.AsCurrency       := RoundOff(KWHR * MRateSysLossUnderRecov.AsCurrency);
   Bill_ncQFitall.AsCurrency                  := RoundOff(KWHR * MRateFitallrate.AsCurrency);
   Bill_ncQPARec.AsCurrency                   := RoundOff(KWHR * MRatePARec.AsCurrency);


   Bill_ncQTransSysAncRefund.AsCurrency       := RoundOff(KWHR * MRateTransSysAncRefund.AsCurrency);
   Bill_ncQTransDemAncRefund.AsCurrency       := RoundOff(Demand * MRateTransDemAncRefund.AsCurrency);
   Bill_ncQVATTransAncRefund.AsCurrency       := RoundOff(KWHR * MRateVATTransAncRefund.AsCurrency);

   VATGenCoNC                                 := RoundOff(KWHR * MRateVATGenco.AsCurrency);
   VATTransCoNC                               := RoundOff(KWHR * MRateVATTransco.AsCurrency);
   VATSystemLossNC                            := RoundOff(KWHR * MRateVATSystemLoss.AsCurrency);
   Bill_ncQPenalty.AsCurrency                 := penalty_nc.AsFloat;

   RpTaxQuery.Close;
   RpTaxQuery.ParamByName('BillMonth').Text :=  MRateMBillMonth.Text;
   RpTaxQuery.ParamByName('area').Text      :=  BillArea.Text; //'0' + Area.Text;
   RpTaxQuery.Open;

   Bill_ncQRPTax.AsCurrency                  := 0;
   Bill_ncQRateOrder.text                    := RpTaxQueryRateOrder.Text;

   if not RpTaxQuery.IsEmpty then
   begin
    Bill_ncQRPTax.AsCurrency := RoundOff(KWHR * RpTaxQueryRateAmnt.AsCurrency);
   end;

   RpTaxQuery.Close;

   VATparecComp        := 0;
   VATparecComp        := Bill_ncQPARec.AsCurrency * ( MRateVAT.AsCurrency / 100);
   Bill_ncQVATparec.AsCurrency := VATparecComp;
   Bill_ncQVATmcc.AsCurrency   := RoundOff(mccComp * (MRateVAT.AsCurrency / 100));

   Bill_ncQVAT.AsCurrency :=  Roundoff((( Bill_ncQForexCharge.AsCurrency+
                                      Bill_ncQDCDemandCharge.AsCurrency+
                                      Bill_ncQDCDistributionCharge.AsCurrency+
                                      Bill_ncQSCRetCustCharge.AsCurrency+
                                      Bill_ncQSCSupplySysCharge.AsCurrency+
                                      Bill_ncQMCRetailCustCharge.AsCurrency+
                                      Bill_ncQMCSystemCharge.AsCurrency+
                                      Bill_ncQICCrossSubsidyCharge.AsCurrency+
                                      Bill_ncQLifelineDiscSubs.AsCurrency+
                                      Bill_ncQscdisc.AsCurrency+
                                      Bill_ncQOtherLifelineRateCostAdj.AsCurrency+
                                      Bill_ncQOtherSeniorCitizenRateAdj.AsCurrency+
                                      Bill_ncQLoanCondo.AsCurrency+
                                      Bill_ncQLCCustMo.AsCurrency+
                                      mccComp)*
                                      MRateVAT.AsCurrency / 100)) +
                                      VATGenCONC +
                                      VATTransCONC +
                                      VATSystemLossNC+
                                      VATparecComp;

   Bill_ncQVATGenCO.AsCurrency           := VATGenCONC;
   Bill_ncQVATTransCO.AsCurrency         := VATTransCoNC;
   Bill_ncQVATSystemLossGenCO.AsCurrency := VATSystemLossNC;

   Bill_ncQVATDist.AsCurrency            := Bill_ncQVAT.AsCurrency - (VATGenCONC+
                                                              VATTransCoNC+
                                                              VATSystemLossNC);

   Bill_ncQTotalBill.AsCurrency :=  Roundoff   (Bill_ncQGenSysCharge.AsCurrency +
                                            Bill_ncQHostCommCharge.AsCurrency +
                                            Bill_ncQForexCharge.AsCurrency +
                                            Bill_ncQTCDemandCharge.AsCurrency +
                                            Bill_ncQTCTransSystemCharge.AsCurrency +
                                            Bill_ncQSystemLossCharge.AsCurrency +
                                            Bill_ncQDCDemandCharge.AsCurrency +
                                            Bill_ncQDCDistributionCharge.AsCurrency +
                                            Bill_ncQSCRetCustCharge.AsCurrency +
                                            Bill_ncQSCSupplySysCharge.AsCurrency +
                                            Bill_ncQMCRetailCustCharge.AsCurrency +
                                            Bill_ncQMCSystemCharge.AsCurrency +
                                            Bill_ncQUCNPCStrandedDebts.AsCurrency +
                                            Bill_ncQUCNPCStrandedContCost.AsCurrency +
                                            Bill_ncQUCDUStrandedContCost.AsCurrency +
                                            Bill_ncQUCME.AsCurrency +
                                            Bill_ncQUCEqTaxesAndRoyalties.AsCurrency +
                                            Bill_ncQUCEC.AsCurrency +
                                            Bill_ncQUCCrossSubRemoval.AsCurrency +
                                            Bill_ncQICCrossSubsidyCharge.AsCurrency +
                                            Bill_ncQPowerActRateRed.AsCurrency +
                                            Bill_ncQLifelineDiscSubs.AsCurrency +
                                            Bill_ncQLoanCondo.AsCurrency +
                                            Bill_ncQLCCustMo.AsCurrency +
                                            Bill_ncQVAT.AsCurrency +
                                            Bill_ncQPrevYearAdjPowerCost.AsCurrency +
                                            Bill_ncQSysLossUnderRecov.AsCurrency+
                                            Bill_ncQMCC.AsCurrency +
                                            Bill_ncQTransSysAncRefund.AsCurrency+
                                            Bill_ncQTransDemAncRefund.AsCurrency+
                                            Bill_ncQVATTransAncRefund.AsCurrency+
                                            Bill_ncQRPTax.AsCurrency+
                                            Bill_ncQOtherGenRateAdj.AsCurrency+
                                            Bill_ncQOtherTransCostAdj.AsCurrency+
                                            Bill_ncQOtherTransDemandCostAdj.AsCurrency+
                                            Bill_ncQOtherSystemLossCostAdj.AsCurrency+
                                            Bill_ncQOtherLifelineRateCostAdj.AsCurrency+
                                            Bill_ncQOtherSeniorCitizenRateAdj.AsCurrency+
                                            Bill_ncQscdisc.AsCurrency+
                                            Bill_ncQFitall.AsCurrency+
                                            Bill_ncQPARec.AsCurrency);

   amounth_nc.AsFloat      := Bill_ncQTotalBill.AsCurrency;
   total_nc.AsFloat        := Bill_ncQTotalBill.AsCurrency + penalty_nc.AsFloat;
   amortization_nc.AsFloat := total_nc.AsFloat;
end;

procedure TPilferageBillingForm.ComboBox1Change(Sender: TObject);
begin
  MRate.FilterSQL := 'WRateCode = '+QuotedStr(ComboBox1.Text);
end;

procedure TPilferageBillingForm.ComboBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 then
    begin
      Perform(CM_DIALOGKEY,VK_TAB,0);
      Key := #0;
    end;

end;

Procedure TPilferageBillingForm.ComputeBill;
var
VATparecComp : Currency;
mccComp      : Currency;
begin

   BillGenSysCharge.AsCurrency            := RoundOff(KWHR * MRateGenSysRate.AsCurrency);
   BillOtherGenRateAdj.AsCurrency         := RoundOff(KWHR * MRateOtherGenRateAdj.AsCurrency);
   BillHostCommCharge.AsCurrency          := RoundOff(KWHR * MRateHostCommRate.AsCurrency);
   BillForexCharge.AsCurrency             := RoundOff(KWHR * MRateForexRate.AsCurrency);
   BillTCDemandCharge.AsCurrency          := RoundOff(Demand * MRateTCDemandRate.AsCurrency);
   BillOtherTransDemandCostAdj.AsCurrency := RoundOff(Demand * MRateOtherTransDemandCostAdj.AsCurrency);

   BillTCTransSystemCharge.AsCurrency     := RoundOff(KWHR * MRateTCSystemRate.AsCurrency);
   BillOtherTransCostAdj.AsCurrency       := RoundOff(KWHR * MRateOtherTransCostAdj.AsCurrency);
   BillSystemLossCharge.AsCurrency        := RoundOff(KWHR * MRateSystemLossRate.AsCurrency);
   BillOtherSystemLossCostAdj.AsCurrency  := RoundOff(KWHR * MRateOtherSystemLossCostAdj.AsCurrency);
   BillDCDemandCharge.AsCurrency          := RoundOff(Demand * MRateDCDemandRate.AsCurrency);

   BillDCDistributionCharge.AsCurrency    := RoundOff(KWHR * MRateDCSystemRate.AsCurrency);
   BillSCRetCustCharge.AsCurrency         := RoundOff(MRateSCRetailCustRate.AsCurrency);
   BillSCSupplySysCharge.AsCurrency       := RoundOff(KWHR * MRateSCSupplySysRate.AsCurrency);
   BillMCRetailCustCharge.AsCurrency      := RoundOff(MRateMCRetailCustRate.AsCurrency);
   BillMCSystemCharge.AsCurrency          := RoundOff(KWHR * MRateMCSysRate.AsCurrency);
   mccComp                                := RoundOff(KWHR * MRateMCC.AsCurrency);
   BillMCC.AsCurrency                     := mccComp;
   Billscdisc.AsCurrency                  := RoundOff(KWHR * MRateSCDiscSubs.AsCurrency);
   BillOtherSeniorCitizenRateAdj.AsCurrency := RoundOff(KWHR * MRateOtherSeniorCitizenRateAdj.AsCurrency);

   BillUCNPCStrandedDebts.AsCurrency      := RoundOff(KWHR * MRateUCNPCStrandedDebtsRate.AsCurrency);
   BillUCNPCStrandedContCost.AsCurrency   := RoundOff(KWHR * MRateUCNPCStrandedContCostRate.AsCurrency);
   BillUCDUStrandedContCost.AsCurrency    := RoundOff(KWHR * MRateUCDUStrandedContCostRate.AsCurrency);
   BillUCME.AsCurrency                    := RoundOff(KWHR * MRateUCMERate.AsCurrency);
   BillUCEqTaxesAndRoyalties.AsCurrency   := RoundOff(KWHR * MRateUCEqTaxesAndRoyaltiesRate.AsCurrency);
   BillUCEC.AsCurrency                    := RoundOff(KWHR * MRateUCECRate.AsCurrency);
   BillUCCrossSubRemoval.AsCurrency       := RoundOff(KWHR * MRateUCCrossSubsidyRemovalRate.AsCurrency);
   BillICCrossSubsidyCharge.AsCurrency    := RoundOff(KWHR * MRateICCrossSubsidyRate.AsCurrency);
   BillPowerActRateRed.AsCurrency         := RoundOff(KWHR * MRatePARARate.AsCurrency);
   BillLifelineDiscSubs.AsCurrency        := RoundOff(KWHR * MRateLifelineSubsidyRate.AsCurrency);
   BillOtherLifelineRateCostAdj.AsCurrency:= RoundOff(KWHR * MRateOtherLifelineRateCostAdj.AsCurrency);
   BillLoanCondo.AsCurrency               := RoundOff(KWHR * MRateLoanCondo.AsCurrency);
   BillLCCustMo.AsFloat                   := RoundOff(MRateLCCustMo.AsFloat);
   BillPrevYearAdjPowerCost.AsCurrency    := RoundOff(KWHR * MRatePrevYearAdjPowerCost.AsCurrency);
   BillSysLossUnderRecov.AsCurrency       := RoundOff(KWHR * MRateSysLossUnderRecov.AsCurrency);
   BillFitall.AsCurrency                  := RoundOff(KWHR * MRateFitallrate.AsCurrency);
   BillPARec.AsCurrency                   := RoundOff(KWHR * MRatePARec.AsCurrency);

   BillTransSysAncRefund.AsCurrency       := RoundOff(KWHR * MRateTransSysAncRefund.AsCurrency);
   BillTransDemAncRefund.AsCurrency       := RoundOff(Demand * MRateTransDemAncRefund.AsCurrency);
   BillVATTransAncRefund.AsCurrency       := RoundOff(KWHR * MRateVATTransAncRefund.AsCurrency);

   VATGenCo                               := RoundOff(KWHR * MRateVATGenco.AsCurrency);
   VATTransCo                             := RoundOff(KWHR * MRateVATTransco.AsCurrency);
   VATSystemLoss                          := RoundOff(KWHR * MRateVATSystemLoss.AsCurrency);
   BillPenalty.AsCurrency                 := Penalty.AsFloat;

   if isGram_=1 then
      Billgram.AsCurrency                 := RoundOff(KWHR * MRateGram.AsCurrency)
   else
      Billgram.AsCurrency                 := 0;

   RpTaxQuery.Close;
   RpTaxQuery.ParamByName('BillMonth').Text :=  MRateMBillMonth.Text;
   RpTaxQuery.ParamByName('area').Text      :=  BillArea.Text;
   RpTaxQuery.Open;

   BillRPTax.AsCurrency                  := 0;
   BillRateOrder.text                    := RpTaxQueryRateOrder.Text;

   if not RpTaxQuery.IsEmpty then
   begin
    BillRPTax.AsCurrency := RoundOff(KWHR * RpTaxQueryRateAmnt.AsCurrency);
   end;

   RpTaxQuery.Close;

   VATparecComp        := 0;
   VATparecComp        := BillPARec.AsCurrency * ( MRateVAT.AsCurrency / 100);
                          BillVATparec.AsCurrency := VATparecComp;

   BillVATmcc.AsCurrency   := RoundOff(mccComp * (MRateVAT.AsCurrency / 100));

   BillVAT.AsCurrency :=  Roundoff((( BillForexCharge.AsCurrency+
                                      BillDCDemandCharge.AsCurrency+
                                      BillDCDistributionCharge.AsCurrency+
                                      BillSCRetCustCharge.AsCurrency+
                                      BillSCSupplySysCharge.AsCurrency+
                                      BillMCRetailCustCharge.AsCurrency+
                                      BillMCSystemCharge.AsCurrency+
                                      BillICCrossSubsidyCharge.AsCurrency+
                                      BillLifelineDiscSubs.AsCurrency+
                                      Billscdisc.AsCurrency+
                                      BillOtherLifelineRateCostAdj.AsCurrency+
                                      BillOtherSeniorCitizenRateAdj.AsCurrency+
                                      BillLoanCondo.AsCurrency+
                                      BillLCCustMo.AsCurrency+
                                      mccComp)*
                                      MRateVAT.AsCurrency / 100)) +
                                      VATGenCO +
                                      VATTransCO +
                                      VATSystemLoss +
                                      VATparecComp;

   BillVATGenCO.AsCurrency           := VATGenCO;
   BillVATTransCO.AsCurrency         := VATTransCo;
   BillVATSystemLossGenCO.AsCurrency := VATSystemLoss;

   BillVATDist.AsCurrency            := BillVAT.AsCurrency - (VATGenCO+
                                                              VATTransCo+
                                                              VATSystemLoss);

   BillTotalBill.AsCurrency :=  Roundoff   (BillGenSysCharge.AsCurrency +
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
                                            BillPrevYearAdjPowerCost.AsCurrency +
                                            BillSysLossUnderRecov.AsCurrency+
                                            BillMCC.AsCurrency +
                                            BillTransSysAncRefund.AsCurrency+
                                            BillTransDemAncRefund.AsCurrency+
                                            BillVATTransAncRefund.AsCurrency+
                                            BillRPTax.AsCurrency+
                                            BillOtherGenRateAdj.AsCurrency+
                                            BillOtherTransCostAdj.AsCurrency+
                                            BillOtherTransDemandCostAdj.AsCurrency+
                                            BillOtherSystemLossCostAdj.AsCurrency+
                                            BillOtherLifelineRateCostAdj.AsCurrency+
                                            BillOtherSeniorCitizenRateAdj.AsCurrency+
                                            Billscdisc.AsCurrency+
                                            BillFitall.AsCurrency+
                                            BillPARec.AsCurrency+
                                            Billgram.AsCurrency );

   DiffAmount.AsFloat := BillTotalBill.AsCurrency;
   TotalBill.AsFloat  := BillTotalBill.AsCurrency + Penalty.AsFloat;
end;


procedure TPilferageBillingForm.FormShow(Sender: TObject);
begin
  AdvSmoothTabPager1.ActivePageIndex :=0;
  Bill_ncQ.Close;
  Bill_ncq.Open;

  try
    CreatePFBill.Execute;
  except
  end;

  try
    CreateSign.Execute;
  except
  end;

  DateFrom.Date := StartOfTheMonth(now);
  DateTo.Date   := EndOfTheMonth(now);

  Bill.Close;
  Bill.MacroByName('bill').Active := true;
  Bill.MacroByName('billnc').Active := false;
  Bill.FilterSQL := 'billdate between :datefrom and :dateto';
  Bill.ParamByName('DateFrom').AsDate := DateFrom.Date;
  Bill.ParamByName('DateTo').AsDate   := DateTo.Date;
  Bill.Open;
end;

procedure TPilferageBillingForm.idnum_ncKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 then
    begin
      Perform(CM_DIALOGKEY,VK_TAB,0);
      Key := #0;
    end;

end;

procedure TPilferageBillingForm.name_ncKeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 then
    begin
      Perform(CM_DIALOGKEY,VK_TAB,0);
      Key := #0;
    end;
end;

procedure TPilferageBillingForm.noMonthIns_ncChange(Sender: TObject);
begin
  //  if noMonthIns_nc.AsFloat>0 then amortization_nc.AsFloat := total_nc.AsFloat/noMonthIns_nc.AsFloat;
  refKWHR_ncChange(Sender);
end;

procedure TPilferageBillingForm.noMonthIns_ncKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 then
    begin
      Perform(CM_DIALOGKEY,VK_TAB,0);
      Key := #0;
    end;

end;

procedure TPilferageBillingForm.nomonth_ncChange(Sender: TObject);
begin
   refKWHR_ncChange(Sender);
end;

procedure TPilferageBillingForm.nomonth_ncKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 then
    begin
      Perform(CM_DIALOGKEY,VK_TAB,0);
      Key := #0;
    end;

end;

procedure TPilferageBillingForm.NxButton5Click(Sender: TObject);
begin
  Master.Close;
  close;
end;

procedure TPilferageBillingForm.SearchMasterButtonClick(Sender: TObject);
begin
  Master.Close;
  Master.ParamByName('code').Text := '%';
  Master.ParamByName('accountnumber').Text := SearchMaster.Text+'%';
  Master.Open;

  If Master.IsEmpty then
    begin
      MessageDlg('Account Number not on file...', mtError, [mbOK], 0);
      Master.Close;
    end;

  Bill.Close;
  Bill.FilterSQL := 'code = :code';
  Bill.ParamByName('code').Text := MasterCode.Text;
  Bill.Open;
  NxHeaderPanel1.Caption := 'Pilferage Bill for '+MasterAccountNumber.Text + ' ' + MasterName.Text;
end;

procedure TPilferageBillingForm.NxButton1Click(Sender: TObject);
begin
  Bill.Close;
  Bill.FilterSQL := 'billdate between :datefrom and :dateto';
  Bill.ParamByName('DateFrom').AsDate := DateFrom.Date;
  Bill.ParamByName('DateTo').AsDate   := DateTo.Date;
  Bill.Open;
  NxHeaderPanel1.Caption := 'Pilferage Bill - ALL';
end;

procedure TPilferageBillingForm.SearchMasterKeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 then SearchMasterButtonClick(Self);
end;

procedure TPilferageBillingForm.total_ncKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 then
    begin
      Perform(CM_DIALOGKEY,VK_TAB,0);
      Key := #0;
    end;

end;

procedure TPilferageBillingForm.CRDBGrid2DblClick(Sender: TObject);
begin
  ReferenceKWHR.AsFloat := BillHistorykilowatthour.AsFloat;
  DiffKWHR.AsFloat      := ReferenceKWHR.AsFloat * NumMonths.AsFloat;
  DiffDemand.AsFloat    := BillHistorykilowattused.AsFloat;
  BillingDate.SetFocus;
end;

procedure TPilferageBillingForm.datepck_ncExit(Sender: TObject);
begin
//  refKWHR_ncChange(Sender);
end;

procedure TPilferageBillingForm.datepck_ncKeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 then
    begin
      Perform(CM_DIALOGKEY,VK_TAB,0);
      Key := #0;
    end;
end;

procedure TPilferageBillingForm.NxButton20Click(Sender: TObject);
begin
  Bill_ncQ.Cancel;
  NxHeaderPanel2.Visible := False;
end;

procedure TPilferageBillingForm.NxButton21Click(Sender: TObject);
var
  tmpID : String;
  ID    : Integer;
begin
  BNVal := StrToInt(IntroForm.UsersBillNumber.Text);
  datepck_nc.Date := strtodate(FormatDateTime('MM/DD/YYYY', now));

  Bill_ncQ.Append;
  Inc(BNVal);
  BNStr                                := JustStr(IntToStr(BNVal),'0',8,1);
  Bill_ncQOEBRNumber.Text            := IntroForm.UsersBillCode.Text + BNStr;
  //Bill_ncQBillNumber.Text              :=  IntroForm.UsersBillCode.Text + BNStr;


  pilferbill_ncQ.Close;
  pilferbill_ncQ.Open;

  if pilferbill_ncQ.IsEmpty then
  begin
    Bill_ncQAccountNumber.Text :=  'NC000001';
  end else begin
    tmpID := Copy(pilferbill_ncQAccountnumber.Text,3,6);

    ID := StrToInt(tmpID)+1;
    Bill_ncQAccountNumber.Text :='NC'+JustStr(IntToStr(ID),'0',6,1);
  end;


  CBM.Open;
  billmonthRate_nc.Text := CBMmbillmonth.Text;
  CBM.Close;

  MRate.Close;
  MRate.ParamByName('BillMonth').Text := billmonthRate_nc.Text;
  MRate.Open;

  ComboBox1.ItemIndex       := 0;
  name_nc.Text              := '';
  address_nc.Text           := '';
  idnum_nc.Text             := '';
  refKWHR_nc.AsFloat        := 0;
  diffKWHR_nc.AsFloat       := 0;
  diffDmnd_nc.AsFloat       := 0;
  nomonth_nc.AsFloat        := 12;
  amounth_nc.AsFloat        := 0;
  penalty_nc.AsFloat        := 0;
  total_nc.AsFloat          := 0;
  noMonthIns_nc.AsFloat     := 1;
  amortization_nc.AsFloat   := 0;
  payment_nc.AsFloat        := 0;
  balance_nc.AsFloat        := 0;


  NxHeaderPanel2.Left := 29;
  NxHeaderPanel2.Top  := 34;
  NxHeaderPanel2.BringToFront;
  NxHeaderPanel2.Visible := True;

  datepck_nc.SetFocus;

end;

procedure TPilferageBillingForm.NxButton22Click(Sender: TObject);
begin
   If Billpostingcode.Text <> '2' then
   begin
       messagedlg('Pilferage bill not yet posted..',mtWarning,[mbOK],0);
       exit;
   end;

   NxButton3Click(Sender);
end;

procedure TPilferageBillingForm.NxButton23Click(Sender: TObject);
begin
  NxButton4Click(Sender);
end;

procedure TPilferageBillingForm.NxButton25Click(Sender: TObject);
begin
  Close;
end;

procedure TPilferageBillingForm.NxButton2Click(Sender: TObject);
begin
BNVal := StrToInt(IntroForm.UsersBillNumber.Text);

  If (not Master.Active) then
    begin
      MessageDlg('Select a consumer first...', mtError, [mbOK], 0);
      SearchMaster.SetFocus;
    end;

  If (Master.IsEmpty) then
    begin
      MessageDlg('Select a consumer first...', mtError, [mbOK], 0);
      SearchMaster.SetFocus;
    end;

  BillHistory.Close;
  BillHistory.ParamByName('Code').Text := MasterCode.Text;
  BillHistory.Open;

  CBM.Open;
  BillMonth.Text := CBMmbillmonth.Text;
  CBM.Close;

  MRate.Close;
  MRate.ParamByName('BillMonth').Text := BillMonth.Text;
  MRate.Open;

  if MRateWRSw.Text = '0' then
    MRate.FilterSQL := 'RateCode = '+QuotedStr(MasterRateCode.Text) else
    MRate.FilterSQL := 'WRateCode = '+QuotedStr(MasterWRateCode.Text);

  DiffAmount.AsFloat := 0.00;
  Penalty.AsFloat    := 0.00;
  TotalBill.AsFloat  := 0.00;

  NewPilferPanel.Left    := 5;
  NewPilferPanel.Top     := 8;
  NewPilferPanel.Visible := True;
  NewPilferPanel.BringToFront;
  BillingDate.Date       := Now;

  ReferenceKWHR.AsFloat  := 0.00;
  DiffKWHR.AsFloat       := 0.00;
  DiffKWHR.AsFloat       := 0.00;
  DiffAmount.AsFloat     := 0.00;
  Penalty.AsFloat        := 0.00;
  TotalBill.AsFloat      := 0.00;
  Payment.AsFloat        := 0.00;
  Balance.AsFloat        := 0.00;
  Inst.AsInteger         := 0;
  Amortization.AsFloat   := 0.00;
  SaveMode.ItemIndex     := 0;

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
  Inc(BNVal);
  BNStr                                := JustStr(IntToStr(BNVal),'0',8,1);
  BillOEBRNumber.Text                  := IntroForm.UsersBillCode.Text + BNStr;

  if MasterisGram.AsBoolean then
  isgram_     := 1
  else
  isgram_     := 0;

  CRDBGrid2.SetFocus;
end;

procedure TPilferageBillingForm.NxButton9Click(Sender: TObject);
begin
  NewPilferPanel.Visible := False;
  Bill.Cancel;
  MRate.Close;
end;

procedure TPilferageBillingForm.payment_ncChange(Sender: TObject);
begin
  refKWHR_ncChange(Sender);
end;

procedure TPilferageBillingForm.payment_ncKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 then
    begin
      Perform(CM_DIALOGKEY,VK_TAB,0);
      Key := #0;
    end;

end;

procedure TPilferageBillingForm.penalty_ncChange(Sender: TObject);
begin
  refKWHR_ncChange(Sender);
 // noMonthIns_ncChange(Sender);
end;

procedure TPilferageBillingForm.penalty_ncKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 then
    begin
      Perform(CM_DIALOGKEY,VK_TAB,0);
      Key := #0;
    end;

end;

procedure TPilferageBillingForm.BillingDateKeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 then
    begin
      Perform(CM_DIALOGKEY,VK_TAB,0);
      Key := #0;
    end;
end;

procedure TPilferageBillingForm.billmonthRate_ncKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 then
    begin
      Perform(CM_DIALOGKEY,VK_TAB,0);
      Key := #0;
    end;

end;

procedure TPilferageBillingForm.BillingDateExit(Sender: TObject);
begin
  MRate.Close;
  MRate.ParamByName('BillMonth').Text := BillMonth.Text;
  MRate.Open;

  if MRateWRSw.Text = '0' then
    MRate.FilterSQL := 'RateCode = '+QuotedStr(MasterRateCode.Text) else
    MRate.FilterSQL := 'WRateCode = '+QuotedStr(MasterWRateCode.Text);
  ComputeBill(DiffKWHR.AsFloat,DiffDemand.AsFloat);
end;

procedure TPilferageBillingForm.DiffAmountExit(Sender: TObject);
begin
   TotalBill.AsFloat  := DiffAmount.AsFloat + Penalty.AsFloat;
   Balance.AsFloat    := TotalBill.AsFloat - Payment.AsFloat;

   If Balance.AsFloat = 0 then
     begin
      Inst.AsInteger := 0;
      Amortization.AsFloat := 0;
     end;
     
   If Balance.AsFloat > 0 then
     begin
       If Inst.AsInteger = 0 then Inst.AsInteger := 1;
       Amortization.AsFloat := Balance.AsFloat / Inst.AsInteger;
       SaveMode.ItemIndex := 1;
     end;
end;

procedure TPilferageBillingForm.diffDmnd_ncChange(Sender: TObject);
begin
  refKWHR_ncChange(Sender);
end;

procedure TPilferageBillingForm.diffDmnd_ncKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 then
    begin
      Perform(CM_DIALOGKEY,VK_TAB,0);
      Key := #0;
    end;

end;

procedure TPilferageBillingForm.diffKWHR_ncKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 then
    begin
      Perform(CM_DIALOGKEY,VK_TAB,0);
      Key := #0;
    end;

end;

procedure TPilferageBillingForm.NxButton7Click(Sender: TObject);
begin
   PFCount.ParamByName('code').Text := MasterCode.Text;
   PFCount.Open;
   BillBillMonth.Text               := 'PF'+PFCountnumoff.Text;
   PFCount.Close;
   If SaveMode.ItemIndex = 0 then Billpostingcode.Text := '2' else Billpostingcode.Text := '1';

   if TotalBill.AsFloat = Payment.AsFloat then
   BillStatusCode.Text              := '1';

   if Balance.AsFloat > 0 then
   BillStatusCode.Text              := '2';

   BillBillDate.AsDateTime          := BillingDate.Date;
   BillRefKilowattHour.AsFloat      := ReferenceKWHR.AsFloat;
   BillKilowattHour.AsFloat         := DiffKWHR.AsFloat;
   BillKilowattUsed.AsFloat         := DiffDemand.AsFloat;
   BillTotalBill.AsFloat            := DiffAmount.AsFloat;
   BillPenalty.AsFloat              := Penalty.AsFloat;
   BillBalance.AsFloat              := Balance.AsFloat;
   BillInstallment.AsInteger        := Inst.AsInteger;
   BillAmortization.AsFloat         := Amortization.AsFloat;
   BillAmountPaid.AsFloat           := Payment.AsFloat;
   BillNumMonth.AsFloat             := NumMonths.AsFloat;
   Bill.Post;

   IntroForm.Users.Edit;
   IntroForm.UsersBillNumber.Text := IntToStr(BNVal);
   IntroForm.Users.Post;

   NewPilferPanel.Visible  := False;
end;

procedure TPilferageBillingForm.EditPenalty1Click(Sender: TObject);
var
  ratecodeTmp : String;
begin
  If Bill.IsEmpty then
    begin
      MessageDlg('No Pilferage Bill has been selected', mtError, [mbOK], 0);
      exit;
    end;

  If Billpostingcode.Text = '2' then
    begin
      MessageDlg('That pilferage bill is already a posted as a reference...'+#13+#10+
                 'Only pilferage bills for posting as receivable may be edited', mtInformation, [mbOK], 0);
      exit;
    end;

  if (AdvSmoothTabPager1.ActivePageIndex =0) then
  begin
      Bill.Edit;

      EditPenaltyPanel.Left := 189;
      EditPenaltyPanel.Top  := 73;
      EditPenaltyPanel.BringToFront;
      EditPenaltyPanel.Visible := True;
      DBEdit21.SetFocus;
  end else if (AdvSmoothTabPager1.ActivePageIndex =1) then begin
     tmpQ.Close;
     tmpQ.SQL.Clear;
     tmpQ.SQL.Add('Select * from pilferbillnonec where entry like :entry');
     tmpQ.ParamByName('entry').Text := Billentry.text;
     tmpQ.Open;

     Bill_ncQ.Close;
     Bill_ncQ.ParamByName('accountnumber').Text := tmpQ.FieldByName('accountnumber').Text;
     Bill_ncQ.Open;

     Bill_ncQ.Edit;

     ratecodeTmp := BillRateCode.Text;
     if ratecodeTmp ='R' then
     begin
        ComboBox1.ItemIndex := 0;
     end else if ratecodeTmp ='H' then  begin
        ComboBox1.ItemIndex := 1;
     end else if ratecodeTmp ='L' then  begin
        ComboBox1.ItemIndex := 2;
     end;

     billmonthRate_nc.Text                := BillBillMonth.Text;
     datepck_nc.Date                      := BillBillDate.AsDateTime;
     refKWHR_nc.AsFloat                   := BillRefKilowattHour.AsFloat;
     diffKWHR_nc.AsFloat                  := BillKilowattHour.AsFloat;
     diffDmnd_nc.AsFloat                  := BillKilowattUsed.AsFloat;
     amounth_nc.AsFloat                   := BillTotalBill.AsFloat;
     penalty_nc.AsFloat                   := BillPenalty.AsFloat;
     noMonthIns_nc.AsInteger              := BillInstallment.AsInteger;
     amortization_nc.AsFloat              := BillAmortization.AsFloat;
     nomonth_nc.AsFloat                   := BillNumMonth.AsFloat;
     name_nc.Text                         := BillName.Text;
     address_nc.Text                      := Bill_ncQAddress.Text;
     idnum_nc.Text                        := tmpQ.FieldByName('IDnum').Text;
     balance_nc.AsFloat                   := BillBalance.AsFloat;
     payment_nc.AsFloat                   := BillAmountPaid.AsFloat;
     //Bill_ncQBillMonthP.Text              := billmonthRate_nc.Text;

     NxHeaderPanel2.Left := 29;
     NxHeaderPanel2.Top  := 34;
     NxHeaderPanel2.BringToFront;
     NxHeaderPanel2.Visible := True;

     datepck_nc.SetFocus;
  end;

end;

procedure TPilferageBillingForm.address_ncKeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 then
    begin
      Perform(CM_DIALOGKEY,VK_TAB,0);
      Key := #0;
    end;

end;

procedure TPilferageBillingForm.AdvSmoothTabPager1Change(Sender: TObject);
begin
 if AdvSmoothTabPager1.ActivePageIndex =0 then
  begin
    FormShow(Sender);
  end else if AdvSmoothTabPager1.ActivePageIndex =1 then
  begin
    NxDatePicker1.Date := StartOfTheMonth(now);
    NxDatePicker2.Date := EndOfTheMonth(now);

    Bill.Close;
    Bill.MacroByName('bill').Active := False;
    Bill.MacroByName('billnc').Active := True;

    Bill.FilterSQL := 'billdate between :datefrom and :dateto';
    Bill.ParamByName('DateFrom').AsDate := NxDatePicker1.Date;
    Bill.ParamByName('DateTo').AsDate   := NxDatePicker2.Date;
    Bill.Open;
  end;
end;

procedure TPilferageBillingForm.amounth_ncKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 then
    begin
      Perform(CM_DIALOGKEY,VK_TAB,0);
      Key := #0;
    end;

end;

procedure TPilferageBillingForm.amountToBepaid_ncKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 then
    begin
      Perform(CM_DIALOGKEY,VK_TAB,0);
      Key := #0;
    end;

end;

procedure TPilferageBillingForm.balance_ncKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 then
    begin
      Perform(CM_DIALOGKEY,VK_TAB,0);
      Key := #0;
    end;

end;

procedure TPilferageBillingForm.BillCalcFields(DataSet: TDataSet);
begin
  BillTotalAmount.AsCurrency := BillTotalBill.AsCurrency + BillPenalty.AsCurrency;
end;

procedure TPilferageBillingForm.NxButton3Click(Sender: TObject);
begin
  S.Close;
  S.Open;
  try
   CreateSign.Execute;
  except
  end;

  signatory.open;

  If signatory.IsEmpty then
    begin
     Signatory.Append;
     SignatoryPreparedByName.Text     := 'ALMO O. CONTRIVIDA';
     signatoryPreparedByPosition.Text := 'Billing Section Head';

     SignatoryCheckedByName.Text      := 'LEONORA I. TIMTIM, MBA';
     SignatoryCheckedByPosition.Text  := 'FSD Manager';

     SignatoryAttestedByName.Text     := 'RONALD A. LAPINIG';
     SignatoryAttestedByPosition.Text := 'ISD Division Chief';

     SignatoryNotedByName.Text        := 'ADELMO P. LAPUT';
     SignatoryNotedByPosition.Text    := 'General Manager - CEO';

     signatory.Post;
    end else
    begin
     PreparedName.Text                := signatoryPreparedByName.Text;
     PreparedPos.Text                 := signatoryPreparedByPosition.Text;

     CheckedName.Text                 := SignatoryCheckedByName.Text;
     CheckedPos.Text                  := SignatoryCheckedByPosition.Text;

     AttestedName.Text                := SignatoryAttestedByName.Text;
     AttestedPos.Text                 := SignatoryAttestedByPosition.Text;

     NotedName.Text                   := SignatoryNotedByName.Text;
     NotedPos.Text                    := SignatoryNotedByPosition.Text;
    end;

  SOAPanel.Left  := 73;
  SOAPanel.Top   := 60;
  SOAPanel.BringToFront;
  SOAPanel.Visible := True;


end;

procedure TPilferageBillingForm.NxButton12Click(Sender: TObject);
begin
  Signatory.edit;
  signatoryPreparedByName.Text     := PreparedName.Text;
  signatoryPreparedByPosition.Text := PreparedPos.Text ;

  signatoryCheckedByName.Text      := CheckedName.Text ;
  signatoryCheckedByPosition.Text  := CheckedPos.Text  ;

  SignatoryAttestedByName.Text     := AttestedName.Text ;
  SignatoryAttestedByPosition.Text := AttestedPos.Text  ;

  SignatoryNotedByName.Text        := NotedName.Text;
  SignatoryNotedByPosition.Text    := NotedPos.Text ;
  signatory.Post;

  //s.Edit;
  //s.Post;
end;

procedure TPilferageBillingForm.NxButton14Click(Sender: TObject);
begin
  Signatory.Close;
  MRate.Close;
  SOAPanel.Visible := False;
end;

procedure TPilferageBillingForm.NxButton13Click(Sender: TObject);
begin
  Master.Close;
  Master.ParamByName('code').Text := BillCode.Text;
  Master.ParamByName('accountnumber').Text := BillAccountNumber.Text;
  Master.Open;

  If Bill.IsEmpty then
    begin
      MessageDlg('No Pilferage Bill has been selected', mtError, [mbOK], 0);
      exit;
    end;

  CBM.Open;

  if AdvSmoothTabPager1.ActivePageIndex =0 then
  begin

      OC.Close;
      OC.MacroByName('pilfer').Active      := True;
      OC.MacroByName('pilfernc').Active    := False;
      OC.ParamByName('Code').Text          := BillCode.Text;
      OC.ParamByName('CurrBillMonth').Text := BillBillMonth.Text;
      OC.ParamByName('BillMonth').Text     := CBMmbillmonth.Text;
      OC.Open;

      MRate.Close;
      MRate.ParamByName('BillMonth').Text := CBMmbillmonth.Text;
      Mrate.ParamByName('area').Text      := DBEdit22.Text;
      MRate.Open;

      //showmessage(MasterWRateCode.Text);

      if MRateWRSw.Text = '0' then
        MRate.FilterSQL := 'RateCode = '+QuotedStr(MasterRateCode.Text) else
        MRate.FilterSQL := 'WRateCode = '+QuotedStr(MasterWRateCode.Text);

    end else if AdvSmoothTabPager1.ActivePageIndex =1 then  begin

      MRate.Close;
      MRate.ParamByName('BillMonth').Text := DBEdit38.Text;
      MRate.Open;

      MRate.FilterSQL := 'WRateCode = '+QuotedStr(DBEdit41.Text);

      OC.Close;
      OC.MacroByName('pilfer').Active      := False;
      OC.MacroByName('pilfernc').Active    := True;
      OC.ParamByName('Code').Text          := BillAccountNumber.Text;
      OC.ParamByName('BillMonth').Text     := BillBillMonth.Text;
      OC.Open;
  end;

  OtherOUQuery.Close;

  if AdvSmoothTabPager1.ActivePageIndex =0 then
  begin
      OtherOUQuery.MacroByName('pilfer').Active   := True;
      OtherOUQuery.MacroByName('pilfernc').Active := False;
  end else if AdvSmoothTabPager1.ActivePageIndex =1 then  begin
      OtherOUQuery.MacroByName('pilfer').Active   := False;
      OtherOUQuery.MacroByName('pilfernc').Active := True;
  end;

  OtherOUQuery.ParamByName('entry').Text := Billentry.Text;
  OtherOUQuery.Open;

  QuickRep1.Preview;

  OC.Close;
  CBM.Close;
end;

procedure TPilferageBillingForm.QRDBText73Print(sender: TObject;
  var Value: String);
begin
//  showmessage(Copy(Value,1,8));
  If (Copy(Value,1,4) = 'BILL')  then
    begin
     QRDBText73.Font.Style := [FsBold];
     QRDBText74.Font.Style := [fsBold];
    end else
    begin
     QRDBText73.Font.Style := [];
     QRDBText74.Font.Style := [];
    end;
end;

procedure TPilferageBillingForm.refKWHR_ncChange(Sender: TObject);
begin
  if ComboBox1.Text= '' then
  begin
    messagedlg('Please set rate code type...',mtWarning,[mbOK],0);
    exit;
  end;

  diffKWHR_nc.AsFloat :=   refKWHR_nc.AsFloat * nomonth_nc.AsFloat;
  MRate.Close;
  MRate.ParamByName('BillMonth').Text := billmonthRate_nc.Text;
  MRate.Open;

  MRate.FilterSQL := 'WRateCode = '+QuotedStr(ComboBox1.Text);

  ComputeBillNC(diffKWHR_nc.AsFloat,diffDmnd_nc.AsFloat);


   total_nc.AsFloat  := amounth_nc.AsFloat + penalty_nc.AsFloat;
   balance_nc.AsFloat    := total_nc.AsFloat - Payment_nc.AsFloat;

   If balance_nc.AsFloat = 0 then
     begin
      noMonthIns_nc.AsInteger := 0;
      amortization_nc.AsFloat := 0;
     end;

   If balance_nc.AsFloat > 0 then
     begin
       If noMonthIns_nc.AsInteger = 0 then noMonthIns_nc.AsInteger := 1;
       amortization_nc.AsFloat := balance_nc.AsFloat / noMonthIns_nc.AsInteger;
       //SaveMode.ItemIndex := 1;
     end;
end;

procedure TPilferageBillingForm.refKWHR_ncClick(Sender: TObject);
begin
  refKWHR_ncChange(Sender);
end;

procedure TPilferageBillingForm.refKWHR_ncKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 then
    begin
      Perform(CM_DIALOGKEY,VK_TAB,0);
      Key := #0;
    end;

end;

procedure TPilferageBillingForm.PosttoARLedgerandUnpaid1Click(
  Sender: TObject);
Var Integrated      : Boolean;
    InsertOCDetail  : TMyQuery;
    codeTmp         : String;
    nameTmp         : String;
    amortizationTmp : Double;
    numberIns       : Integer;
    ocledgerCount   : Integer;
    idocdetailTmp   : Integer;
    penaltyNC       : Double;
    billNumberTmp   : String;

begin
  penaltyNC := 0.0;
  If Bill.IsEmpty then
    begin
      MessageDlg('No Pilferage Bill has been selected', mtError, [mbOK], 0);
      exit;
    end;

  If Billpostingcode.Text = '2' then
    begin
      MessageDlg('Can''t post code 2 posting code', mtError, [mbOK], 0);
      exit;
    end;

   If (Billstatuscode.Text = '1') and (AdvSmoothTabPager1.ActivePageIndex =0) then
    begin
     ARUpdateQuery.ParamByName('code').Text            := BillCode.Text;
     ARUpdateQuery.ParamByName('BillMonth').Text       := BillBillMonth.Text;
     ARUpdateQuery.Execute;

     UnPBUpdateQuery.ParamByName('code').Text          := BillCode.Text;
     UnPBUpdateQuery.ParamByName('billmonth').Text     := BillBillMonth.Text;
     UnPBUpdateQuery.Execute;

     Bill.Edit;
     Billpostingcode.Text := '2';
     Bill.Post;
    end;

   If (Billstatuscode.Text = '2') then
     begin
        OCMaster.Open;

        InsertOCDetail := TMyQuery.Create(Self);
        InsertOCDetail.Connection := BillingData.MyConnection1;
        InsertOCDetail.SQL.Clear;

        numberIns         := BillInstallment.AsInteger;
        amortizationTmp   := BillAmortization.AsFloat;
        nameTmp           := BillName.Text;
        ocledgerCount     := numberIns;
        penaltyNC         := BillPenalty.Asfloat;
        billNumberTmp     := BillOEBRNumber.Text;

       { if AdvSmoothTabPager1.ActivePageIndex = 0 then
        begin
            InsertOCDetail.SQL.Add('Insert ignore into OCDetail');
            codeTmp := BillCode.Text;
        end else if AdvSmoothTabPager1.ActivePageIndex = 1 then begin
            InsertOCDetail.SQL.Add('Insert ignore into OCDetailnonec');
            codeTmp := Billentry.Text;
        end;  }


       if (AdvSmoothTabPager1.ActivePageIndex =0) then
       begin
          codeTmp := BillCode.Text;
          InsertOCDetail.SQL.Add('Insert ignore into OCDetail');
          InsertOCDetail.SQL.Add('(idOCMaster,');
          InsertOCDetail.SQL.Add(' Code,');
          InsertOCDetail.SQL.Add(' ConsumerName,');
          InsertOCDetail.SQL.Add(' DateEntered,');
          InsertOCDetail.SQL.Add(' Months,');
          InsertOCDetail.SQL.Add(' Amount, OCCode) values');
          InsertOCDetail.SQL.Add('(:idOCMaster,');
          InsertOCDetail.SQL.Add(' :Code,');
          InsertOCDetail.SQL.Add(' :ConsumerName,');
          InsertOCDetail.SQL.Add(' :DateEntered,');
          InsertOCDetail.SQL.Add(' :Months,');
          InsertOCDetail.SQL.Add(' :Amount, :OCCode)');

          InsertOCDetail.ParamByName('idOCMaster').Text    := OCMasteridocmaster.Text;
          InsertOCDetail.ParamByName('Code').Text          := codeTmp;
          InsertOCDetail.ParamByName('ConsumerName').Text  := nameTmp;
          InsertOCDetail.ParamByName('DateEntered').AsDate := Now;
          InsertOCDetail.ParamByName('Months').AsInteger   := numberIns;
          InsertOCDetail.ParamByName('Amount').AsFloat     := amortizationTmp;
          InsertOCDetail.ParamByName('OCCode').Text        := OCMasterOCCODE.Text;
          InsertOCDetail.Execute;
       end;

        OCMaster.Close;

        if AdvSmoothTabPager1.ActivePageIndex =1 then
        begin
          codeTmp := Billentry.Text;

          if penaltyNC>0.0 then
          begin

            tmpQ.Close;
            tmpQ.SQL.Clear;
            tmpQ.SQL.Add('insert into ocledgernonec (Code,DateEntered,BillMonth,BillNumber,Amount)');
            tmpQ.SQL.Add('values (:Code,:DateEntered,:BillMonth,:BillNumber,:Amount)');
            tmpQ.ParamByName('Code').Text            := codeTmp;
            tmpQ.ParamByName('DateEntered').AsDate   := now;
            tmpQ.ParamByName('BillMonth').Text       := BillBillMonth.Text;
            tmpQ.ParamByName('BillNumber').Text      := billNumberTmp;
            tmpQ.ParamByName('Amount').AsFloat       := penaltyNC;
            tmpQ.Execute;
          end;

          while ocledgerCount>0 do
          begin

            tmpQ.Close;
            tmpQ.SQL.Clear;
            tmpQ.SQL.Add('insert into ocledgernonec (Code,DateEntered,BillMonth,BillNumber,Amount)');
            tmpQ.SQL.Add('values (:Code,:DateEntered,:BillMonth,:BillNumber,:Amount)');
            tmpQ.ParamByName('code').Text            := codeTmp;
            tmpQ.ParamByName('DateEntered').AsDate   := now;
            tmpQ.ParamByName('BillMonth').Text       := BillBillMonth.Text;
            //tmpQ.ParamByName('BillNumber').Text      := IntroForm.UsersBillCode.Text + BNStr;
            tmpQ.ParamByName('BillNumber').Text      := billNumberTmp;
            tmpQ.ParamByName('Amount').AsFloat       := amortizationTmp;
            tmpQ.Execute;

            ocledgerCount := ocledgerCount-1;
          end;
        end;

        If (BillAmountPaid.AsCurrency > 0) and (AdvSmoothTabPager1.ActivePageIndex =0) then
        begin
          ARUpdateQuery.ParamByName('code').Text            := BillCode.Text;
          ARUpdateQuery.ParamByName('BillMonth').Text       := BillBillMonth.Text;
          ARUpdateQuery.Execute;

          UnPBUpdateQuery.ParamByName('code').Text          := BillCode.Text;
          UnPBUpdateQuery.ParamByName('billmonth').Text     := BillBillMonth.Text;
          UnPBUpdateQuery.Execute;
        end;

        Bill.Edit;
        Billpostingcode.Text := '2';
        Bill.Post;
     end;

   MessageDlg('Posting done.', mtInformation, [mbOK], 0);
end;

procedure TPilferageBillingForm.PilferBillRegCalcFields(DataSet: TDataSet);
begin
  PilferBillRegTotalAmount.AsCurrency := PilferBillRegTotalBill.AsCurrency + PilferBillRegPenalty.AsCurrency;
end;

procedure TPilferageBillingForm.NxButton4Click(Sender: TObject);
begin
   PilferRegisterPanel.Left    := 213;
   PilferRegisterPanel.Top     := 60;
   PilferRegisterPanel.BringToFront;
   PilferRegisterPanel.Visible := True;
   PRDateFrom.Date             := StartOfTheMonth(Now);
   PRDateTo.Date               := EndOfTheMonth(Now);
   PRDateFrom.SetFocus;
end;

procedure TPilferageBillingForm.NxButton8Click(Sender: TObject);
begin
  if (AdvSmoothTabPager1.ActivePageIndex =0) then
  begin
    With PilferBillReg do
    begin
      Close;

      ParamByName('DateFrom').AsDate := PRDateFrom.Date;
      ParamByName('DateTo').AsDate   := PRDateTo.Date;

      Open;

      If IsEmpty then
        begin
          MessageDlg('No records to print for that period covered.', mtError, [mbOK], 0);
          close;
          exit;
        end;

      QRPeriodCovered.Caption := 'Period Covered '+DateToStr(PRDateFrom.Date)+' - '+DateToStr(PRDateTo.Date);
      PilferBillingRegister.Preview;

      Close;
    end;
  end else if (AdvSmoothTabPager1.ActivePageIndex =1) then  begin
    With PilferBillReg_NC do
    begin
      Close;
      ParamByName('datefrom').AsDate  := PRDateFrom.Date;
      ParamByName('dateto').AsDate   := PRDateTo.Date;
      Open;

      If IsEmpty then
      begin
        MessageDlg('No records to print for that period covered.', mtError, [mbOK], 0);
        close;
        exit;
      end;

      QRLabel161.Caption := 'Period Covered '+DateToStr(PRDateFrom.Date)+' - '+DateToStr(PRDateTo.Date);

      QuickRep2.Preview;

      PilferRegisterPanel.Visible := False;
    end;
  end;
end;

procedure TPilferageBillingForm.NxButton6Click(Sender: TObject);
begin
   PilferSalesReportPanel.Left    := 177;
   PilferSalesReportPanel.Top     := 112;
   PilferSalesReportPanel.BringToFront;
   PilferSalesReportPanel.Visible := True;
   SalesDateFrom.Date             := StartOfTheMonth(Now);
   SalesDateTo.Date               := EndOfTheMonth(Now);
   SalesDateFrom.SetFocus;
end;

procedure TPilferageBillingForm.NxButton16Click(Sender: TObject);
begin
    TSalesLateBills.Close;
    TSalesLateBills.ParamByName('datefrom').AsDate := DateFrom.Date;
    TSalesLateBills.ParamByName('dateto').AsDate   := DateTo.Date;
    TSalesLateBills.Open;

    TSalesTotalLateBills.Close;
    TSalesTotalLateBills.ParamByName('datefrom').AsDate := DateFrom.Date;
    TSalesTotalLateBills.ParamByName('dateto').AsDate   := DateTo.Date;
    TSalesTotalLateBills.Open;

    LateBillsBillMonth.Text            := 'Period Covered '+
                                          DateToStr(SalesDateFrom.Date)+' - '+
                                          DateToStr(SalesDateTo.Date);

    PrepareLateBills.Caption           := PName.text;
    PreparePositionLateBills.Caption   := PPosition.text;
    CheckedByLateBills.Caption         := CName.text;
    CheckedByPositionLateBills.Caption := CPosition.text;
    NotedByLateBills.Caption           := NName.text;
    NotedByPositionLateBills.Caption   := NPosition.text;

    SalesReportLateBills1.Preview;
    SalesReportLateBills2.Preview;
    SalesReportLateBills3.Preview;
end;

procedure TPilferageBillingForm.NxButton10Click(Sender: TObject);
begin
  Bill.Post;
  EditPenaltyPanel.Visible := False;
end;

procedure TPilferageBillingForm.NxButton11Click(Sender: TObject);
begin
  EditPenaltyPanel.Visible := False;
end;

procedure TPilferageBillingForm.NxButton15Click(Sender: TObject);
begin
  PilferRegisterPanel.Visible := False;
end;

procedure TPilferageBillingForm.NxButton17Click(Sender: TObject);
begin
  PilferSalesReportPanel.Visible := False;
end;

procedure TPilferageBillingForm.NxButton19Click(Sender: TObject);
begin
   if (name_nc.Text = '') or (name_nc.Text = '') or (ComboBox1.Text = '') then
   begin
     messageDlg('Fill all fields to contiue this process..',mtWarning,[mbOK],0);
     exit;
   end;

   Bill_ncQBillMonth.Text               := billmonthRate_nc.Text; //'NCP1';
   Bill_ncQOCCode1.Text                 := 'PF01';
   Bill_ncQStatusCode.Text              := '2';
   Bill_ncQpostingcode.Text             := '1';

   Bill_ncQBillDate.AsDateTime          := datepck_nc.Date;
   Bill_ncQRefKilowattHour.AsFloat      := refKWHR_nc.AsFloat;
   Bill_ncQKilowattHour.AsFloat         := diffKWHR_nc.AsFloat;
   Bill_ncQKilowattUsed.AsFloat         := diffDmnd_nc.AsFloat;
   Bill_ncQTotalBill.AsFloat            := amounth_nc.AsFloat;
   Bill_ncQPenalty.AsFloat              := penalty_nc.AsFloat;
   Bill_ncQInstallment.AsInteger        := noMonthIns_nc.AsInteger;
   Bill_ncQAmortization.AsFloat         := amortization_nc.AsFloat;
   Bill_ncQNumMonth.AsFloat             := nomonth_nc.AsFloat;
   Bill_ncQName.Text                    := name_nc.Text;
   Bill_ncQAddress.Text                 := address_nc.Text;
   Bill_ncQIDnum.Text                   := idnum_nc.Text;
   Bill_ncQBalance.AsFloat              := balance_nc.AsFloat;
   Bill_ncQAmountPaid.AsFloat           := payment_nc.AsFloat;
   Bill_ncQRateCode.Text                := ComboBox1.Text;

   Bill_ncQ.Post;

  
   IntroForm.Users.Edit;
   IntroForm.UsersBillNumber.Text := IntToStr(BNVal);
   IntroForm.Users.Post;

   messageDlg('None-Consumer pilferage bill saved.',mtInformation,[mbOK],0);
   NxHeaderPanel2.Visible := False;
   AdvSmoothTabPager1Change(Sender);
end;

procedure TPilferageBillingForm.DBEdit21Exit(Sender: TObject);
begin
   BillBalance.AsCurrency      := (BillTotalBill.AsCurrency + BillPenalty.AsCurrency) - BillAmountPaid.AsCurrency;
   If BillInstallment.AsInteger > 0 then
   BillAmortization.AsCurrency := BillBalance.AsCurrency/BillInstallment.AsInteger;
end;

procedure TPilferageBillingForm.DBEdit37KeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 then
    begin
      Perform(CM_DIALOGKEY,VK_TAB,0);
      Key := #0;
    end;
end;

procedure TPilferageBillingForm.DBImage1Click(Sender: TObject);
begin
  If OpenPictureDialog1.Execute then
  begin
    S.Edit;
    SSign2.LoadFromFile(OpenPictureDialog1.Filename);
    S.Post;
  end;

end;

procedure TPilferageBillingForm.DBImage2Click(Sender: TObject);
begin
  If OpenPictureDialog1.Execute then
  begin
    S.Edit;
    SSign1.LoadFromFile(OpenPictureDialog1.Filename);
    S.Post;
  end;
end;

procedure TPilferageBillingForm.DeleteRecordClick(Sender: TObject);
begin

  If Bill.IsEmpty then
    begin
      MessageDlg('No records to delete', mtInformation, [mbOK], 0);
      exit;
    end;

  if (MessageDlg('You may only delete this record..  If posted, you need to '+#13+#10+
                 'ask the System Administrator to delete the records from '+#13+#10+
                 'A/R Ledger and Unpaid bills.', mtConfirmation, [mbYes, mbNo], 0) = mrNo) then exit;

  if Billpostingcode.AsInteger = 2 then begin
      MessageDlg('Unable to delete this posted bill..',mtWarning,[mbOK],0);
      exit;
  end;

  Bill.Delete;

end;

end.
