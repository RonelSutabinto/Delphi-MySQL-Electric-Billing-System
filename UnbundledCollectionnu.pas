unit UnbundledCollectionnu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, MemDS, DBAccess, MyAccess, QRCtrls, QuickRpt, ComCtrls, StdCtrls, dateutils,
  ExtCtrls;

type
  TfrmUnbundledCollectionnu = class(TForm)
    Panel1: TPanel;
    pLateBill: TPanel;
    Label1: TLabel;
    dtpDateFrom: TDateTimePicker;
    dtpDateTo: TDateTimePicker;
    pCurrentBill: TPanel;
    Label2: TLabel;
    eBillMonth: TEdit;
    Panel2: TPanel;
    rbAllArea: TRadioButton;
    rbSelectArea: TRadioButton;
    Panel3: TPanel;
    Label3: TLabel;
    eArea: TEdit;
    Panel4: TPanel;
    btnPrint: TButton;
    Panel5: TPanel;
    PageControl1: TPageControl;
    tsUnbundledCollection: TTabSheet;
    qrUnbundledCollection: TQuickRep;
    QRBand1: TQRBand;
    QRLabel33: TQRLabel;
    QRShape56: TQRShape;
    QRShape57: TQRShape;
    QRLabel34: TQRLabel;
    QRShape58: TQRShape;
    QRLabel35: TQRLabel;
    QRShape59: TQRShape;
    QRLabel36: TQRLabel;
    QRShape60: TQRShape;
    QRLabel37: TQRLabel;
    QRShape61: TQRShape;
    QRLabel38: TQRLabel;
    QRShape62: TQRShape;
    QRLabel39: TQRLabel;
    QRShape63: TQRShape;
    QRLabel40: TQRLabel;
    QRShape64: TQRShape;
    QRLabel41: TQRLabel;
    QRShape65: TQRShape;
    QRLabel42: TQRLabel;
    QRShape66: TQRShape;
    QRLabel43: TQRLabel;
    QRShape67: TQRShape;
    QRLabel44: TQRLabel;
    QRShape68: TQRShape;
    QRLabel45: TQRLabel;
    QRShape69: TQRShape;
    QRLabel46: TQRLabel;
    QRShape70: TQRShape;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRShape71: TQRShape;
    QRLabel49: TQRLabel;
    QRShape72: TQRShape;
    QRLabel50: TQRLabel;
    QRShape73: TQRShape;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    QRShape159: TQRShape;
    QRLabel86: TQRLabel;
    QRBand2: TQRBand;
    QRShape75: TQRShape;
    QRShape76: TQRShape;
    QRShape77: TQRShape;
    QRShape78: TQRShape;
    QRShape79: TQRShape;
    QRShape80: TQRShape;
    QRShape81: TQRShape;
    QRShape82: TQRShape;
    QRShape83: TQRShape;
    QRShape84: TQRShape;
    QRShape85: TQRShape;
    QRShape86: TQRShape;
    QRShape87: TQRShape;
    QRShape88: TQRShape;
    QRShape89: TQRShape;
    QRShape90: TQRShape;
    QRShape91: TQRShape;
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
    QRDBText32: TQRDBText;
    QRDBText33: TQRDBText;
    QRDBText34: TQRDBText;
    QRDBText35: TQRDBText;
    QRDBText36: TQRDBText;
    QRDBText37: TQRDBText;
    QRDBText38: TQRDBText;
    QRShape160: TQRShape;
    QRBand3: TQRBand;
    QRShape92: TQRShape;
    QRShape93: TQRShape;
    QRShape94: TQRShape;
    QRShape95: TQRShape;
    QRShape96: TQRShape;
    QRShape97: TQRShape;
    QRShape98: TQRShape;
    QRShape99: TQRShape;
    QRShape100: TQRShape;
    QRShape101: TQRShape;
    QRShape102: TQRShape;
    QRShape103: TQRShape;
    QRShape104: TQRShape;
    QRShape105: TQRShape;
    QRShape106: TQRShape;
    QRShape107: TQRShape;
    QRShape108: TQRShape;
    QRExpr31: TQRExpr;
    QRExpr32: TQRExpr;
    QRExpr33: TQRExpr;
    QRExpr34: TQRExpr;
    QRLabel55: TQRLabel;
    QRShape161: TQRShape;
    QRBand4: TQRBand;
    QRLabel56: TQRLabel;
    qrlCUFDMonth: TQRLabel;
    QRLabel58: TQRLabel;
    QRLabel59: TQRLabel;
    tsCurrentSubsidiary: TTabSheet;
    qrCurrentSubsidiary: TQuickRep;
    QRBand5: TQRBand;
    QRLabel32: TQRLabel;
    QRShape38: TQRShape;
    QRShape74: TQRShape;
    QRLabel60: TQRLabel;
    QRShape109: TQRShape;
    QRLabel61: TQRLabel;
    QRShape110: TQRShape;
    QRLabel62: TQRLabel;
    QRShape111: TQRShape;
    QRLabel63: TQRLabel;
    QRShape112: TQRShape;
    QRLabel64: TQRLabel;
    QRShape113: TQRShape;
    QRLabel65: TQRLabel;
    QRShape114: TQRShape;
    QRLabel66: TQRLabel;
    QRShape115: TQRShape;
    QRLabel67: TQRLabel;
    QRShape116: TQRShape;
    QRLabel68: TQRLabel;
    QRShape117: TQRShape;
    QRLabel69: TQRLabel;
    QRShape118: TQRShape;
    QRLabel70: TQRLabel;
    QRShape119: TQRShape;
    QRLabel71: TQRLabel;
    QRShape120: TQRShape;
    QRLabel72: TQRLabel;
    QRShape121: TQRShape;
    QRLabel73: TQRLabel;
    QRLabel74: TQRLabel;
    QRShape122: TQRShape;
    QRLabel75: TQRLabel;
    QRShape123: TQRShape;
    QRLabel76: TQRLabel;
    QRShape124: TQRShape;
    QRLabel77: TQRLabel;
    QRLabel78: TQRLabel;
    QRLabel79: TQRLabel;
    QRLabel80: TQRLabel;
    QRBand6: TQRBand;
    QRShape125: TQRShape;
    QRShape126: TQRShape;
    QRShape127: TQRShape;
    QRShape128: TQRShape;
    QRShape129: TQRShape;
    QRShape130: TQRShape;
    QRShape131: TQRShape;
    QRShape132: TQRShape;
    QRShape133: TQRShape;
    QRShape134: TQRShape;
    QRShape135: TQRShape;
    QRShape136: TQRShape;
    QRShape137: TQRShape;
    QRShape138: TQRShape;
    QRShape139: TQRShape;
    QRShape140: TQRShape;
    QRShape141: TQRShape;
    QRDBText20: TQRDBText;
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
    QRBand7: TQRBand;
    QRShape142: TQRShape;
    QRShape143: TQRShape;
    QRShape144: TQRShape;
    QRShape145: TQRShape;
    QRShape146: TQRShape;
    QRShape147: TQRShape;
    QRShape148: TQRShape;
    QRShape149: TQRShape;
    QRShape150: TQRShape;
    QRShape151: TQRShape;
    QRShape152: TQRShape;
    QRShape153: TQRShape;
    QRShape154: TQRShape;
    QRShape155: TQRShape;
    QRShape156: TQRShape;
    QRShape157: TQRShape;
    QRShape158: TQRShape;
    QRExpr18: TQRExpr;
    QRExpr19: TQRExpr;
    QRExpr20: TQRExpr;
    QRExpr21: TQRExpr;
    QRLabel81: TQRLabel;
    QRBand8: TQRBand;
    QRLabel82: TQRLabel;
    qrlCSuFDMonth: TQRLabel;
    QRLabel84: TQRLabel;
    QRLabel85: TQRLabel;
    qrlCSuMunicipality: TQRLabel;
    qCollectionReport: TMyQuery;
    QRCompositeReport1: TQRCompositeReport;
    qrlCUFDMunicipality: TQRLabel;
    procedure QRCompositeReport1AddReports(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure rbAllAreaClick(Sender: TObject);
    procedure rbSelectAreaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    function RetrieveMunicipalityName(pArea : string) : string;
    function RetrieveMonthName(Date : TDate) : String;
  public
    { Public declarations }
  end;

var
  frmUnbundledCollectionnu: TfrmUnbundledCollectionnu;

implementation

uses Data;

{$R *.dfm}

procedure TfrmUnbundledCollectionnu.btnPrintClick(Sender: TObject);
begin
  if rbAllArea.Checked = true then
    begin
     qCollectionReport.Close;
     qCollectionReport.ParamByName('BM').Text      := eBillMonth.Text;
     qCollectionReport.ParamByName('RT').AsInteger := 1;
     qCollectionReport.ParamByName('A').Text       := eArea.Text;
     qCollectionReport.ParamByName('DF').AsDate    := dtpDateFrom.Date;
     qCollectionReport.ParamByName('DT').AsDate    := dtpDateTo.Date;

     qCollectionReport.Open;
     qrlCUFDMonth.Caption := 'For the Period of ' + RetrieveMonthName(dtpDateto.Date);
     qrlCUFDMunicipality.Caption := 'For All Areas';
     QRCompositeReport1.preview;
    end
  else if rbSelectArea.Checked = true then
    begin
     qCollectionReport.Close;
     qCollectionReport.ParamByName('BM').Text      := eBillMonth.Text;
     qCollectionReport.ParamByName('RT').AsInteger := 2;
     qCollectionReport.ParamByName('A').Text       := eArea.Text;
     qCollectionReport.ParamByName('DF').AsDate    := dtpDateFrom.Date;
     qCollectionReport.ParamByName('DT').AsDate    := dtpDateTo.Date;

     qCollectionReport.Open;
     qrlCUFDMonth.Caption := 'For the Period of ' + RetrieveMonthName(dtpDateto.Date);
     qrlCUFDMunicipality.Caption := 'For the Municipality of ' + RetrieveMunicipalityName(eArea.text);
     QRCompositeReport1.preview;
    end;




end;

procedure TfrmUnbundledCollectionnu.FormShow(Sender: TObject);
begin
  dtpDateFrom.Date := StartOfTheMonth(now);
  dtpDateTo.Date   := EndOfTheMonth(now);
end;

procedure TfrmUnbundledCollectionnu.QRCompositeReport1AddReports(
  Sender: TObject);
begin
  with QRCompositeReport1.Reports do
  begin
   Add(qrUnbundledCollection);
  end;
end;
procedure TfrmUnbundledCollectionnu.rbAllAreaClick(Sender: TObject);
begin
  eArea.Enabled := rbSelectArea.Checked;
end;

procedure TfrmUnbundledCollectionnu.rbSelectAreaClick(Sender: TObject);
begin
  eArea.Enabled := rbSelectArea.Checked;
end;

function TfrmUnbundledCollectionnu.RetrieveMonthName(Date: TDate): String;
begin
  Result := FormatDateTime('MMMM YYYY',Date);
end;

function TfrmUnbundledCollectionnu.RetrieveMunicipalityName(pArea: string): string;
begin
  case strtoint(pArea) of
   1: Result := 'RIZAL';
   2: Result := 'SIBUTAD';
   3: Result := 'MUTIA';
   4: Result := 'LA LIBERTAD';
   5: Result := 'SERGIO OSME�A';
   6: Result := 'DAPITAN';
   7: Result := 'PI�AN';
   8: Result := 'POLANCO';
   9: Result := 'DIPOLOG NORTH';
   10: Result := 'DIPOLOG SOUTH';
   11: Result := 'KATIPUNAN';
   12: Result := 'ROXAS';
   13: Result := 'MANUKAN';
   14: Result := 'JOSE DALMAN';
   15: Result := 'SINDANGAN';
   16: Result := 'LEON B. POSTIGO';
   17: Result := 'SIAYAN';
   18: Result := 'SALUG';
   19: Result := 'LILOY';
   20: Result := 'LABASON';
   21: Result := 'TAMPILISAN';
   22: Result := 'GODOD';
   23: Result := 'GUTALAC';
   24: Result := 'DAPITAN / PI�AN';
   25: Result := 'KALAWIT';
  end;
end;

end.
