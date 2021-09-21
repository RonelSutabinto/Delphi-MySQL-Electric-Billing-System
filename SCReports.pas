unit SCReports;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, NxEdit, NxCollection, DB, MemDS, DBAccess, MyAccess,
  QuickRpt, ComCtrls, ExtCtrls, QRCtrls;

type
  TSCReportForm = class(TForm)
    NxEdit1: TNxEdit;
    NxLabel1: TNxLabel;
    NxButton1: TNxButton;
    NxButton2: TNxButton;
    NxButton3: TNxButton;
    AnnexA1: TMyQuery;
    AnnexA1kilowatthour: TFloatField;
    AnnexA1TKwhr: TFloatField;
    AnnexA1TRate: TFloatField;
    AnnexA1FixCharges: TFloatField;
    AnnexA1SCDiscPercent: TFloatField;
    AnnexA1amount4discount: TCurrencyField;
    AnnexA1amountlessld: TCurrencyField;
    AnnexA1amountdiscount: TCurrencyField;
    AnnexA1tAccount: TLargeintField;
    AnnexA3: TMyQuery;
    AnnexA3billmonth: TStringField;
    AnnexA3mbillmonth: TStringField;
    AnnexA3yearmon: TStringField;
    AnnexA3tdiscount: TFloatField;
    AnnexA3tkwhr: TFloatField;
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    AnnexA3SubsRate: TCurrencyField;
    QuickRep2: TQuickRep;
    QRBand1: TQRBand;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRSysData4: TQRSysData;
    QRSysData5: TQRSysData;
    QRSysData6: TQRSysData;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel28: TQRLabel;
    QRBand2: TQRBand;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    AnnexA1LifelineLevel: TStringField;
    AnnexA1LifelineDiscount: TStringField;
    AnnexA1LifelineDiscountPercentage: TFloatField;
    AnnexA3BillMonthStr: TStringField;
    SCList: TMyQuery;
    SCListSCode: TFloatField;
    SCListArea: TStringField;
    SCListBook: TStringField;
    SCListSequence: TStringField;
    SCListAccountNumber: TStringField;
    SCListBillingName: TStringField;
    SCListName: TStringField;
    SCListBDay: TDateField;
    SCListCPNo: TStringField;
    SCListSCIDNo: TStringField;
    SCListSpouseSCIDNo: TStringField;
    SCListDateApplied: TDateField;
    SCListExpirationDate: TDateField;
    SCListRemarks: TStringField;
    SCListAddress: TStringField;
    SCListscdisc: TFloatField;
    SCListoebrnumber: TStringField;
    SCListkilowatthour: TFloatField;
    NxButton4: TNxButton;
    TabSheet3: TTabSheet;
    QuickRep3: TQuickRep;
    QRBand3: TQRBand;
    QRLabel20: TQRLabel;
    QRLabel26: TQRLabel;
    QRSysData7: TQRSysData;
    QRSysData8: TQRSysData;
    QRSysData9: TQRSysData;
    QRLabel27: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel34: TQRLabel;
    QRBand4: TQRBand;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    SummaryBand1: TQRBand;
    QRLabel32: TQRLabel;
    QRExpr1: TQRExpr;
    SummaryBand2: TQRBand;
    QRLabel35: TQRLabel;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRLabel36: TQRLabel;
    TAccount: TMyQuery;
    TAccounttAccount: TLargeintField;
    QRDBText19: TQRDBText;
    SCListidSCDisc: TLongWordField;
    procedure AnnexA1CalcFields(DataSet: TDataSet);
    procedure AnnexA3CalcFields(DataSet: TDataSet);
    procedure NxButton1Click(Sender: TObject);
    procedure NxButton2Click(Sender: TObject);
    procedure NxButton3Click(Sender: TObject);
    procedure NxButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SCReportForm: TSCReportForm;

implementation

uses Data;

{$R *.dfm}

procedure TSCReportForm.AnnexA1CalcFields(DataSet: TDataSet);
begin
  AnnexA1amount4discount.AsCurrency := (AnnexA1TKwhr.AsFloat * AnnexA1TRate.AsFloat) +
                                       (AnnexA1FixCharges.AsFloat * AnnexA1tAccount.AsFloat);

  AnnexA1amountlessld.AsCurrency    := AnnexA1amount4discount.AsCurrency * AnnexA1LifelineDiscountPercentage.AsFloat;

  AnnexA1amountdiscount.AsCurrency  := AnnexA1amountlessld.AsCurrency * (AnnexA1SCDiscPercent.AsCurrency/100);
end;

procedure TSCReportForm.AnnexA3CalcFields(DataSet: TDataSet);
begin
   If AnnexA3tkwhr.AsFloat > 0 then
     AnnexA3SubsRate.AsCurrency := AnnexA3tdiscount.AsCurrency / AnnexA3tkwhr.AsFloat
   else
     AnnexA3SubsRate.AsCurrency := 0;
end;

procedure TSCReportForm.NxButton1Click(Sender: TObject);
begin
  AnnexA1.ParamByName('BillMonth').Text := NxEdit1.Text;
  AnnexA1.Open;

  TAccount.ParamByName('BillMonth').Text := NxEdit1.Text;
  TAccount.Open;

  QRLabel3.Caption := 'For the Billing Month '+FormatDateTime('MMMM, YYYY',StrToDate(Copy(NxEdit1.Text,1,2)+'/01/'+Copy(NxEdit1.Text,3,2)));
  QuickRep1.Preview;
  AnnexA1.Close;
  TAccount.Close;
end;

procedure TSCReportForm.NxButton2Click(Sender: TObject);
begin
  AnnexA3.Open;

  QuickRep2.Preview;
  AnnexA3.Close;
end;

procedure TSCReportForm.NxButton3Click(Sender: TObject);
begin
  Close;
end;

procedure TSCReportForm.NxButton4Click(Sender: TObject);
begin
  SCList.ParamByName('BillMonth').Text := NxEdit1.Text;
  SCList.Open;

  QRLabel30.Caption := 'For the Billing Month '+FormatDateTime('MMMM, YYYY',StrToDate(Copy(NxEdit1.Text,1,2)+'/01/'+Copy(NxEdit1.Text,3,2)));
  QuickRep3.Preview;
  SCList.Close;
end;

end.
