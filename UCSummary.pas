unit UCSummary;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, DB, DBTables;

type
  TUCSummaryForm = class(TForm)
    DetailTable: TTable;
    DetailTableEntry: TAutoIncField;
    DetailTableBillMonth: TStringField;
    DetailTableArea: TStringField;
    DetailTableBook: TStringField;
    DetailTableAddress: TStringField;
    DetailTableTotalConsumers: TFloatField;
    DetailTableKilowattHour: TCurrencyField;
    DetailTableKilowattUsed: TCurrencyField;
    DetailTableGenSysCharge: TCurrencyField;
    DetailTableHostCommCharge: TCurrencyField;
    DetailTableForexCharge: TCurrencyField;
    DetailTableTCDemandCharge: TCurrencyField;
    DetailTableTCTransSystemCharge: TCurrencyField;
    DetailTableSystemLossCharge: TCurrencyField;
    DetailTableDCDemandCharge: TCurrencyField;
    DetailTableDCDistributionCharge: TCurrencyField;
    DetailTableSCRetCustCharge: TCurrencyField;
    DetailTableSCSupplySysCharge: TCurrencyField;
    DetailTableMCRetailCustCharge: TCurrencyField;
    DetailTableMCSystemCharge: TCurrencyField;
    DetailTableUCNPCStrandedDebts: TCurrencyField;
    DetailTableUCNPCStrandedContCost: TCurrencyField;
    DetailTableUCDUStrandedContCost: TCurrencyField;
    DetailTableUCME: TCurrencyField;
    DetailTableUCEqTaxesAndRoyalties: TCurrencyField;
    DetailTableUCEC: TCurrencyField;
    DetailTableUCCrossSubRemoval: TCurrencyField;
    DetailTableICCrossSubsidyCharge: TCurrencyField;
    DetailTablePowerActRateRed: TCurrencyField;
    DetailTableLifelineDiscSubs: TCurrencyField;
    DetailTableLoanCondo: TCurrencyField;
    DetailTableTransformerRental: TCurrencyField;
    DetailTableOCCode1: TStringField;
    DetailTableOCAmount1: TCurrencyField;
    DetailTableOCCode2: TStringField;
    DetailTableOCAmount2: TCurrencyField;
    DetailTableOCCode3: TStringField;
    DetailTableOCAmount3: TCurrencyField;
    DetailTableTotalBill: TCurrencyField;
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRDBText32: TQRDBText;
    QRDBText33: TQRDBText;
    QRDBText34: TQRDBText;
    QRDBText35: TQRDBText;
    QRDBText36: TQRDBText;
    QRDBText37: TQRDBText;
    QRDBText38: TQRDBText;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRDBText39: TQRDBText;
    QRDBText40: TQRDBText;
    QRDBText41: TQRDBText;
    QRDBText42: TQRDBText;
    QRDBText43: TQRDBText;
    QRDBText44: TQRDBText;
    QRDBText45: TQRDBText;
    QRDBText46: TQRDBText;
    QRDBText47: TQRDBText;
    QRDBText48: TQRDBText;
    QRDBText49: TQRDBText;
    QRDBText50: TQRDBText;
    QRDBText51: TQRDBText;
    QRDBText52: TQRDBText;
    QRDBText53: TQRDBText;
    QRDBText54: TQRDBText;
    QRDBText55: TQRDBText;
    QRDBText56: TQRDBText;
    QRDBText57: TQRDBText;
    QRDBText58: TQRDBText;
    QRDBText59: TQRDBText;
    QRDBText60: TQRDBText;
    QRDBText61: TQRDBText;
    QRDBText62: TQRDBText;
    QRExpr31: TQRExpr;
    QRBand2: TQRBand;
    QRSysData5: TQRSysData;
    QRBand3: TQRBand;
    QRSysData6: TQRSysData;
    QRSysData7: TQRSysData;
    QRSysData8: TQRSysData;
    QRSysData9: TQRSysData;
    QRSysData10: TQRSysData;
    QRBand4: TQRBand;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel58: TQRLabel;
    QRLabel59: TQRLabel;
    QRLabel60: TQRLabel;
    QRLabel61: TQRLabel;
    QRLabel62: TQRLabel;
    QRLabel63: TQRLabel;
    QRLabel64: TQRLabel;
    QRBand5: TQRBand;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRExpr32: TQRExpr;
    QRLabel72: TQRLabel;
    QRLabel73: TQRLabel;
    QRExpr33: TQRExpr;
    QRExpr34: TQRExpr;
    QRExpr35: TQRExpr;
    QRExpr36: TQRExpr;
    QRExpr37: TQRExpr;
    QRExpr38: TQRExpr;
    QRExpr39: TQRExpr;
    QRExpr40: TQRExpr;
    QRExpr41: TQRExpr;
    QRExpr42: TQRExpr;
    QRExpr43: TQRExpr;
    QRExpr44: TQRExpr;
    QRExpr45: TQRExpr;
    QRExpr46: TQRExpr;
    QRExpr47: TQRExpr;
    QRExpr48: TQRExpr;
    QRExpr49: TQRExpr;
    QRExpr50: TQRExpr;
    QRExpr51: TQRExpr;
    QRExpr52: TQRExpr;
    QRExpr53: TQRExpr;
    QRExpr54: TQRExpr;
    QRExpr55: TQRExpr;
    QRExpr56: TQRExpr;
    QRExpr57: TQRExpr;
    QRLabel74: TQRLabel;
    QRExpr58: TQRExpr;
    QRExpr59: TQRExpr;
    QRExpr60: TQRExpr;
    MasterTable: TQuery;
    MasterTableArea: TStringField;
    MasterTableBillMonth: TStringField;
    MasterTableNPCSD: TCurrencyField;
    MasterTableNPCSCC: TCurrencyField;
    MasterTableDUSCC: TCurrencyField;
    MasterTableME: TCurrencyField;
    MasterTableTaxes: TCurrencyField;
    MasterTableEC: TCurrencyField;
    MasterTableCSR: TCurrencyField;
    MasterTableTotalKWHR: TCurrencyField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UCSummaryForm: TUCSummaryForm;

implementation

{$R *.dfm}

end.
