unit PwrSales;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, MemDS, DBAccess, MyAccess, NxPageControl, NxCollection, StdCtrls,
  NxEdit, QuickRpt, QRCtrls, ExtCtrls, strutils, Dateutils;

type
  TPSales = class(TForm)
    NxLabel2: TNxLabel;
    NxEdit1: TNxEdit;
    NxButton5: TNxButton;
    NxNotebook1: TNxNotebook;
    PowerSales: TNxTabSheet;
    MyConnection1: TMyConnection;
    quPowerSales: TMyQuery;
    qrPowerAccounts: TQuickRep;
    QRBand5: TQRBand;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    QRDBText31: TQRDBText;
    QRBand6: TQRBand;
    QRLabel31: TQRLabel;
    QRExpr15: TQRExpr;
    QRExpr16: TQRExpr;
    QRExpr17: TQRExpr;
    QRExpr18: TQRExpr;
    QRExpr19: TQRExpr;
    QRExpr20: TQRExpr;
    QRExpr21: TQRExpr;
    QRExpr22: TQRExpr;
    QRExpr23: TQRExpr;
    QRExpr24: TQRExpr;
    QRExpr25: TQRExpr;
    QRExpr26: TQRExpr;
    QRExpr27: TQRExpr;
    QRExpr28: TQRExpr;
    QRGroup2: TQRGroup;
    QRShape20: TQRShape;
    QRLabel32: TQRLabel;
    QRShape21: TQRShape;
    QRLabel33: TQRLabel;
    QRShape22: TQRShape;
    QRLabel34: TQRLabel;
    QRShape23: TQRShape;
    QRLabel35: TQRLabel;
    QRShape24: TQRShape;
    QRLabel36: TQRLabel;
    QRShape25: TQRShape;
    QRLabel37: TQRLabel;
    QRShape26: TQRShape;
    QRLabel38: TQRLabel;
    QRShape27: TQRShape;
    QRLabel39: TQRLabel;
    QRShape28: TQRShape;
    QRLabel40: TQRLabel;
    QRShape29: TQRShape;
    QRLabel41: TQRLabel;
    QRShape30: TQRShape;
    QRLabel42: TQRLabel;
    QRShape31: TQRShape;
    QRLabel43: TQRLabel;
    QRShape32: TQRShape;
    QRLabel44: TQRLabel;
    QRShape33: TQRShape;
    QRLabel45: TQRLabel;
    QRShape34: TQRShape;
    QRLabel46: TQRLabel;
    QRShape35: TQRShape;
    QRLabel47: TQRLabel;
    QRShape36: TQRShape;
    QRLabel48: TQRLabel;
    QRShape37: TQRShape;
    QRLabel49: TQRLabel;
    QRShape38: TQRShape;
    QRLabel50: TQRLabel;
    QRShape39: TQRShape;
    QRLabel51: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    quPowerSalesarea: TStringField;
    quPowerSalesMunicipality: TStringField;
    quPowerSalesNoOfConsumers: TLargeintField;
    quPowerSalesKWHR: TFloatField;
    quPowerSalesAmount: TFloatField;
    quPowerSalesLNoOfConsumers: TLargeintField;
    quPowerSalesLKWHR: TFloatField;
    quPowerSalesLAmount: TFloatField;
    quPowerSalesHNoOfConsumers: TLargeintField;
    quPowerSalesHKWHR: TFloatField;
    quPowerSalesdemand: TStringField;
    quPowerSalesHAmount: TFloatField;
    quPowerSalesTNoOfConsumers: TLargeintField;
    quPowerSalesTKWHR: TFloatField;
    quPowerSalesdemandt: TStringField;
    quPowerSalesTAmount: TFloatField;
    QRCompositeReport1: TQRCompositeReport;
    PowerSalesAreaBook: TNxTabSheet;
    qrPowerAccountsB: TQuickRep;
    QRBand1: TQRBand;
    QRDBText32: TQRDBText;
    QRDBText33: TQRDBText;
    QRDBText34: TQRDBText;
    QRDBText35: TQRDBText;
    QRDBText36: TQRDBText;
    QRDBText37: TQRDBText;
    QRDBText38: TQRDBText;
    QRDBText39: TQRDBText;
    QRDBText40: TQRDBText;
    QRDBText41: TQRDBText;
    QRDBText42: TQRDBText;
    QRDBText43: TQRDBText;
    QRDBText44: TQRDBText;
    QRDBText45: TQRDBText;
    QRDBText46: TQRDBText;
    QRDBText47: TQRDBText;
    QRBand7: TQRBand;
    QRLabel52: TQRLabel;
    QRExpr29: TQRExpr;
    QRExpr30: TQRExpr;
    QRExpr31: TQRExpr;
    QRExpr32: TQRExpr;
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
    QRGroup3: TQRGroup;
    QRShape40: TQRShape;
    QRLabel53: TQRLabel;
    QRShape41: TQRShape;
    QRLabel54: TQRLabel;
    QRShape42: TQRShape;
    QRLabel55: TQRLabel;
    QRShape43: TQRShape;
    QRLabel56: TQRLabel;
    QRShape44: TQRShape;
    QRLabel57: TQRLabel;
    QRShape45: TQRShape;
    QRLabel58: TQRLabel;
    QRShape46: TQRShape;
    QRLabel59: TQRLabel;
    QRShape47: TQRShape;
    QRLabel60: TQRLabel;
    QRShape48: TQRShape;
    QRLabel61: TQRLabel;
    QRShape49: TQRShape;
    QRLabel62: TQRLabel;
    QRShape50: TQRShape;
    QRLabel63: TQRLabel;
    QRShape51: TQRShape;
    QRLabel64: TQRLabel;
    QRShape52: TQRShape;
    QRLabel65: TQRLabel;
    QRShape53: TQRShape;
    QRLabel66: TQRLabel;
    QRShape54: TQRShape;
    QRLabel67: TQRLabel;
    QRShape55: TQRShape;
    QRLabel68: TQRLabel;
    QRShape56: TQRShape;
    QRLabel69: TQRLabel;
    QRShape57: TQRShape;
    QRLabel70: TQRLabel;
    QRShape58: TQRShape;
    QRLabel71: TQRLabel;
    QRShape59: TQRShape;
    QRLabel72: TQRLabel;
    QRLabel73: TQRLabel;
    QRLabel74: TQRLabel;
    QRLabel75: TQRLabel;
    QRLabel77: TQRLabel;
    quPowerSalesBA: TMyQuery;
    NxButton1: TNxButton;
    quPowerSalesBAArea: TStringField;
    quPowerSalesBAbook: TStringField;
    quPowerSalesBANoOfConsumers: TLargeintField;
    quPowerSalesBAKWHR: TFloatField;
    quPowerSalesBAAmount: TFloatField;
    quPowerSalesBALNoOfConsumers: TLargeintField;
    quPowerSalesBALKWHR: TFloatField;
    quPowerSalesBALAmount: TFloatField;
    quPowerSalesBAHNoOfConsumers: TLargeintField;
    quPowerSalesBAHKWHR: TFloatField;
    quPowerSalesBAHAmount: TFloatField;
    quPowerSalesBATNoOfConsumers: TLargeintField;
    quPowerSalesBATKWHR: TFloatField;
    quPowerSalesBATAmount: TFloatField;
    QRCompositeReport2: TQRCompositeReport;
    procedure QRCompositeReport1AddReports(Sender: TObject);
    procedure qrPowerAccountsBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure NxButton5Click(Sender: TObject);
    procedure QRCompositeReport2AddReports(Sender: TObject);
    procedure qrPowerAccountsBBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure NxButton1Click(Sender: TObject);
  private
    { Private declarations }


  public
    { Public declarations }

   increments : integer;
  end;

var
  PSales: TPSales;

implementation

{$R *.dfm}

procedure TPSales.NxButton1Click(Sender: TObject);
begin

 increments := 0;

 qupowersalesBA.Close;
 qupowersalesBA.ParamByName('pdf').Text         := nxedit1.Text;
 qupowersalesBA.Open;


 qrlabel73.Caption := 'POWER SALES - CURRENT';
 qrlabel77.Caption := 'For the month of ' + FormatDateTime('MMMM YYYYY',strtodate(leftstr(nxedit1.Text,2) + '/01/20' + rightstr(nxedit1.Text,2)));

 qrPowerAccountsB.PreviewInitialState := wsMaximized;
 qrPowerAccountsB.PreviewWidth        := screen.Width;
 qrPowerAccountsB.PreviewHeight       := Screen.Height;
 qrPowerAccountsB.Preview;
end;

procedure TPSales.NxButton5Click(Sender: TObject);
begin
 Increments := 0;

 quPowerSales.Close;
 quPowerSales.ParamByName('df').Text    := nxedit1.Text;
 quPowerSales.ParamByName('months').asinteger := increments;
 quPowerSales.Open;


 qrlabel26.Caption := 'POWER SALES';
 qrlabel29.Caption := 'For the month of ' + FormatDateTime('MMMM YYYYY',strtodate(leftstr(nxedit1.Text,2) + '/01/20' + rightstr(nxedit1.Text,2)));

 qrPowerAccounts.PreviewInitialState := wsMaximized;
 qrPowerAccounts.PreviewWidth        := screen.Width;
 qrPowerAccounts.PreviewHeight       := Screen.Height;
 qrPowerAccounts.Preview;
end;

procedure TPSales.QRCompositeReport1AddReports(Sender: TObject);
begin
  With qrcompositereport1.Reports do
   begin
    add(qrPowerAccounts);
   end;
end;

procedure TPSales.QRCompositeReport2AddReports(Sender: TObject);
begin
  With qrcompositereport2.Reports do
   begin
    add(qrPowerAccountsB);
   end;
end;

procedure TPSales.qrPowerAccountsBBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
{ case increments of
  1 : begin

       qupowersalesBA.Close;
       qupowersalesBA.ParamByName('pdf').Text         := nxedit1.Text;
       qupowersalesBA.ParamByName('months').asinteger := 1;
       qupowersalesBA.Open;


//      dates := formatdatetime('DD/MM/YYYY',incmonth(strtodate(leftstr(nxedit1.Text,2) + '/01/20' + rightstr(nxedit1.Text,2)),-1));
      dates := incmonth(strtodate(leftstr(nxedit1.Text,2) + '/01/20' + rightstr(nxedit1.Text,2)),-1);

       qrlabel73.Caption := 'POWER SALES';
       qrlabel77.Caption := 'For the month of ' + FormatDateTime('MMMM YYYYY',dates);

      end;
  2 : begin
       qupowersalesBA.Close;
       qupowersalesBA.ParamByName('pdf').Text         := nxedit1.Text;
       qupowersalesBA.ParamByName('months').asinteger := 2;
       qupowersalesBA.Open;


//      dates := formatdatetime('DD/MM/YYYY',incmonth(strtodate(leftstr(nxedit1.Text,2) + '/01/20' + rightstr(nxedit1.Text,2)),-1));
      dates := incmonth(strtodate(leftstr(nxedit1.Text,2) + '/01/20' + rightstr(nxedit1.Text,2)),-2);

       qrlabel73.Caption := 'POWER SALES';
       qrlabel77.Caption := 'For the month of ' + FormatDateTime('MMMM YYYYY',dates);
      end;

  3 : begin
       qupowersalesBA.Close;
       qupowersalesBA.ParamByName('pdf').Text         := nxedit1.Text;
       qupowersalesBA.ParamByName('months').asinteger := 3;
       qupowersalesBA.Open;


//      dates := formatdatetime('DD/MM/YYYY',incmonth(strtodate(leftstr(nxedit1.Text,2) + '/01/20' + rightstr(nxedit1.Text,2)),-1));
      dates := incmonth(strtodate(leftstr(nxedit1.Text,2) + '/01/20' + rightstr(nxedit1.Text,2)),-3);

       qrlabel73.Caption := 'POWER SALES';
       qrlabel77.Caption := 'For the month of ' + FormatDateTime('MMMM YYYYY',dates);
      end;

  4 : begin
       qupowersalesBA.Close;
       qupowersalesBA.ParamByName('pdf').Text         := nxedit1.Text;
       qupowersalesBA.ParamByName('months').asinteger := 4;
       qupowersalesBA.Open;


//      dates := formatdatetime('DD/MM/YYYY',incmonth(strtodate(leftstr(nxedit1.Text,2) + '/01/20' + rightstr(nxedit1.Text,2)),-1));
      dates := incmonth(strtodate(leftstr(nxedit1.Text,2) + '/01/20' + rightstr(nxedit1.Text,2)),-4);

       qrlabel73.Caption := 'POWER SALES';
       qrlabel77.Caption := 'For the month of ' + FormatDateTime('MMMM YYYYY',dates);
      end;
 end;
       increments := increments + 1;   }
end;

procedure TPSales.qrPowerAccountsBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
{ case increments of
  1 : begin
       qupowersales.Close;
       qupowersales.ParamByName('df').Text    := nxedit1.Text;
       qupowersales.ParamByName('months').asinteger := increments;
       qupowersales.Open;

//      dates := formatdatetime('DD/MM/YYYY',incmonth(strtodate(leftstr(nxedit1.Text,2) + '/01/20' + rightstr(nxedit1.Text,2)),-1));
      dates := incmonth(strtodate(leftstr(nxedit1.Text,2) + '/01/20' + rightstr(nxedit1.Text,2)),-1);

      qrlabel26.Caption := ' POWER SALES';
      qrlabel29.Caption := 'For the month of ' + FormatDateTime('MMMM YYYYY',dates);


      end;
  2 : begin
       qupowersales.Close;
       qupowersales.ParamByName('df').Text    := nxedit1.Text;
       qupowersales.ParamByName('months').asinteger := increments;
       qupowersales.Open;

//      dates := formatdatetime('DD/MM/YYYY',incmonth(strtodate(leftstr(nxedit1.Text,2) + '/01/20' + rightstr(nxedit1.Text,2)),-1));
      dates := incmonth(strtodate(leftstr(nxedit1.Text,2) + '/01/20' + rightstr(nxedit1.Text,2)),-2);

      qrlabel26.Caption := ' POWER SALES';
      qrlabel29.Caption := 'For the month of ' + FormatDateTime('MMMM YYYYY',dates);
      end;

  3 : begin
       qupowersales.Close;
       qupowersales.ParamByName('df').Text    := nxedit1.Text;
       qupowersales.ParamByName('months').asinteger := increments;
       qupowersales.Open;

//      dates := formatdatetime('DD/MM/YYYY',incmonth(strtodate(leftstr(nxedit1.Text,2) + '/01/20' + rightstr(nxedit1.Text,2)),-1));
      dates := incmonth(strtodate(leftstr(nxedit1.Text,2) + '/01/20' + rightstr(nxedit1.Text,2)),-3);

      qrlabel26.Caption := ' POWER SALES';
      qrlabel29.Caption := 'For the month of ' + FormatDateTime('MMMM YYYYY',dates);
      end;

  4 : begin
       qupowersales.Close;
       qupowersales.ParamByName('df').Text    := nxedit1.Text;
       qupowersales.ParamByName('months').asinteger := increments;
       qupowersales.Open;

//      dates := formatdatetime('DD/MM/YYYY',incmonth(strtodate(leftstr(nxedit1.Text,2) + '/01/20' + rightstr(nxedit1.Text,2)),-1));
      dates := incmonth(strtodate(leftstr(nxedit1.Text,2) + '/01/20' + rightstr(nxedit1.Text,2)),-4);

      qrlabel26.Caption := ' POWER SALES';
      qrlabel29.Caption := 'For the month of ' + FormatDateTime('MMMM YYYYY',dates);
      end;
 end;
       increments := increments + 1;      }

end;

end.
