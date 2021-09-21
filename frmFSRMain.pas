unit frmFSRMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, ExtCtrls, ComCtrls, StdCtrls, DB, MemDS, DBAccess,
  MyAccess,
  NxCollection, QRCtrls, DateUtils, QRPDFFilt, QRExport;

type
  TFSRMain = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    PageControl1: TPageControl;
    FSRPart1: TTabSheet;
    FSRPart2: TTabSheet;
    FSRPart3: TTabSheet;
    FSRPart4: TTabSheet;
    Panel1: TPanel;
    part4: TQuickRep;
    part3: TQuickRep;
    part2: TQuickRep;
    part1: TQuickRep;
    qPart1: TMyQuery;
    qPart2: TMyQuery;
    qPart3: TMyQuery;
    qPart4: TMyQuery;
    qrFSRReport: TQRCompositeReport;
    NxButton1: TNxButton;
    NxButton2: TNxButton;
    NxButton3: TNxButton;
    TitleBand1: TQRBand;
    DetailBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    DetailBand2: TQRBand;
    ColumnHeaderBand2: TQRBand;
    DetailBand3: TQRBand;
    ColumnHeaderBand3: TQRBand;
    DetailBand4: TQRBand;
    SummaryBand1: TQRBand;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape9: TQRShape;
    SummaryBand2: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    qFSRCoverage: TQRLabel;
    QRShape3: TQRShape;
    QRShape33: TQRShape;
    QRShape35: TQRShape;
    QRShape10: TQRShape;
    QRShape34: TQRShape;
    QRShape36: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape15: TQRShape;
    QRShape6: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRLabel3: TQRLabel;
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
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel15: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    QRShape14: TQRShape;
    QRShape24: TQRShape;
    QRShape23: TQRShape;
    QRShape25: TQRShape;
    SummaryBand3: TQRBand;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRExpr8: TQRExpr;
    QRExpr9: TQRExpr;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QRShape39: TQRShape;
    QRShape40: TQRShape;
    QRShape41: TQRShape;
    QRShape42: TQRShape;
    QRShape43: TQRShape;
    QRShape44: TQRShape;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
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
    QRShape45: TQRShape;
    QRShape46: TQRShape;
    QRShape47: TQRShape;
    QRShape48: TQRShape;
    QRShape49: TQRShape;
    QRShape50: TQRShape;
    QRShape51: TQRShape;
    QRShape52: TQRShape;
    QRShape53: TQRShape;
    QRShape56: TQRShape;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRDBText28: TQRDBText;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    qReportSignatories: TMyQuery;
    NxButton4: TNxButton;
    MyQuery1: TMyQuery;
    QRBand1: TQRBand;
    QRLabel34: TQRLabel;
    NetRec2: TQRLabel;
    NetRec4: TQRLabel;
    NetRec5: TQRLabel;
    NetRec6: TQRLabel;
    QRLabel35: TQRLabel;
    NetRec1: TQRLabel;
    QRPDFFilter1: TQRPDFFilter;
    QRExcelFilter1: TQRExcelFilter;
    GroupBox1: TGroupBox;
    DMO: TCheckBox;
    SAO: TCheckBox;
    PAO: TCheckBox;
    LAO: TCheckBox;
    procedure qrFSRReportAddReports(Sender: TObject);
    procedure NxButton2Click(Sender: TObject);
    procedure NxButton3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure NxButton4Click(Sender: TObject);
    procedure DateTimePicker1CloseUp(Sender: TObject);
    procedure QRExpr6Print(Sender: TObject; var Value: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSRMain: TFSRMain;

implementation

uses frmFSR, frmFSRSignatories, Data;
{$R *.dfm}

procedure TFSRMain.DateTimePicker1CloseUp(Sender: TObject);
begin
  DateTimePicker2.Date := EndOfTheMonth(DateTimePicker1.Date);
end;

procedure TFSRMain.FormShow(Sender: TObject);
begin
  Try
    MyQuery1.Execute;
  except

  End;
  DateTimePicker1.Date := StartOfTheMonth(now);
  DateTimePicker2.Date := EndOfTheMonth(now);
  FSRMain.Constraints.MaxHeight := 202;
  FSRMain.Constraints.MaxWidth := 381;
end;

procedure TFSRMain.NxButton1Click(Sender: TObject);
begin
  if (DMO.Checked = False) and
     (SAO.Checked = False) and
     (PAO.Checked = False) and
     (LAO.Checked = False) then
    begin
      MessageDlg('Select an area to process..', mtError, [mbOK], 0);
      exit;
    end;

  qPart1.Close;
  qPart2.Close;
  qPart3.Close;
  qPart4.Close;
  qReportSignatories.Close;

  qPart1.MacroByName('DMO').Active := False;
  qPart1.MacroByName('SAO').Active := False;
  qPart1.MacroByName('PAO').Active := False;
  qPart1.MacroByName('LAO').Active := False;

  qPart1.MacroByName('DMOunion').Active := False;
  qPart1.MacroByName('SAOunion').Active := False;
  qPart1.MacroByName('PAOunion').Active := False;

  qPart3.MacroByName('DMO').Active := False;
  qPart3.MacroByName('SAO').Active := False;
  qPart3.MacroByName('PAO').Active := False;
  qPart3.MacroByName('LAO').Active := False;

  qPart3.MacroByName('DMOBills3').Active := False;
  qPart3.MacroByName('SAOBills3').Active := False;
  qPart3.MacroByName('PAOBills3').Active := False;
  qPart3.MacroByName('LAOBills3').Active := False;

  qPart3.MacroByName('DMOBills2union').Active := False;
  qPart3.MacroByName('SAOBills2union').Active := False;
  qPart3.MacroByName('PAOBills2union').Active := False;

  qPart3.MacroByName('DMOBills3union').Active := False;
  qPart3.MacroByName('SAOBills3union').Active := False;
  qPart3.MacroByName('PAOBills3union').Active := False;

  if DMO.Checked = true then
     begin
      qPart1.MacroByName('DMO').Active       := True;
      qPart3.MacroByName('DMO').Active       := True;
      qPart3.MacroByName('DMOBills3').Active := True;
     end;

  if SAO.Checked = true then
     begin
      if DMO.Checked = true then
        begin
         qPart1.MacroByName('DMOunion').Active        := True;
         qPart3.MacroByName('DMOBills2union').Active  := True;
         qPart3.MacroByName('DMOBills3union').Active  := True;
        end;
      qPart1.MacroByName('SAO').Active             := True;
      qPart3.MacroByName('SAO').Active             := True;
      qPart3.MacroByName('SAOBills3').Active := True;
     end;

  if PAO.Checked = true then
     begin
      if (DMO.Checked = true) or (SAO.Checked = true) then
        begin
         qPart1.MacroByName('SAOunion').Active        := True;
         qPart3.MacroByName('SAOBills2union').Active  := True;
         qPart3.MacroByName('SAOBills3union').Active  := True;
        end;
      qPart1.MacroByName('PAO').Active             := True;
      qPart3.MacroByName('PAO').Active             := True;
      qPart3.MacroByName('PAOBills3').Active := True;
     end;

  if LAO.Checked = true then
     begin
      if (DMO.Checked = true) or (SAO.Checked = true) or (PAO.Checked = true) then
        begin
          qPart1.MacroByName('PAOunion').Active        := True;
          qPart3.MacroByName('PAOBills2union').Active  := True;
          qPart3.MacroByName('PAOBills3union').Active  := True;
        end;
      qPart1.MacroByName('LAO').Active             := True;
      qPart3.MacroByName('LAO').Active             := True;
      qPart3.MacroByName('LAOBills3').Active       := True;
     end;

  qPart1.ParamByName('BillingPeriod').Text := Edit1.Text;
  qPart1.ParamByName('BillMonth').Text      := Edit1.Text;
  qPart3.ParamByName('BillingPeriod').Text := Edit1.Text;
  qPart3.ParamByName('DateFrom').AsDate    := DateTimePicker1.Date;
  qPart3.ParamByName('Dateto').AsDate      := DateTimePicker2.Date;
  qPart1.Open;
  qPart2.Open;
  qPart3.Open;
  qPart4.Open;
  qReportSignatories.Open;
  qFSRCoverage.Caption := 'Period covered ' + DatetoStr(DateTimePicker1.Date)
    + '-' + DatetoStr(DateTimePicker2.Date);
  qrFSRReport.Prepare;
  qrFSRReport.Preview;
  qReportSignatories.close;

end;

procedure TFSRMain.NxButton2Click(Sender: TObject);
begin
  if not assigned(FinancialStatisticalReportConfig) then
    FinancialStatisticalReportConfig := TFinancialStatisticalReportConfig.Create
      (Self);
  FinancialStatisticalReportConfig.Show;
end;

procedure TFSRMain.NxButton3Click(Sender: TObject);
begin
  if not assigned(FSRSignatories) then
    FSRSignatories := TFSRSignatories.Create(Self);
  FSRSignatories.Show;
end;

procedure TFSRMain.NxButton4Click(Sender: TObject);
var
  quUpdater: TMyQuery;
begin
  quUpdater := TMyQuery.Create(Self);
  quUpdater.Connection := Billingdata.MyConnection1;
  quUpdater.SQL.Add('call updateFSRPart3PrevToDate(' + QuotedStr(Edit1.Text)
      + ',' + QuotedStr(FormatDateTime('YYYY-MM-DD', DateTimePicker1.Date))
      + ',' + QuotedStr(FormatDateTime('YYYY-MM-DD', DateTimePicker2.Date))
      + ')');
  quUpdater.Execute;
  MessageDlg('Done updating Totals', mtInformation, [mbOK], 0);
end;

procedure TFSRMain.QRExpr6Print(Sender: TObject; var Value: string);
begin
  NetRec1.Caption := FormatCurr('#,##0.00',QRExpr6.Value.dblResult);
  NetRec2.Caption := FormatCurr('#,##0.00',QRExpr7.Value.dblResult);
  NetRec4.Caption := FormatCurr('#,##0.00',QRExpr6.Value.dblResult);
  NetRec5.Caption := FormatCurr('#,##0.00',QRExpr7.Value.dblResult);
  NetRec6.Caption := FormatCurr('#,##0.00',QRExpr6.Value.dblResult + QRExpr7.Value.dblResult);
end;

procedure TFSRMain.qrFSRReportAddReports(Sender: TObject);
begin
  qrFSRReport.Reports.Add(part1);
  qrFSRReport.Reports.Add(part2);
  qrFSRReport.Reports.Add(part3);
  qrFSRReport.Reports.Add(part4);
end;

end.
