unit UnbndAdjReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, Mask, DBCtrls, QuickRpt, QRPDFFilt, DB,
  MemDS, DBAccess, MyAccess, QRCtrls,StrUtils,DateUtils;

type
  TUnBnAdjReport = class(TForm)
    Panel1: TPanel;
    pLateBill: TPanel;
    Label1: TLabel;
    dtpDateFrom: TDateTimePicker;
    dtpDateTo: TDateTimePicker;
    Panel2: TPanel;
    rbSummary: TRadioButton;
    PerArea: TRadioButton;
    Panel4: TPanel;
    btnPrint: TButton;
    Panel6: TPanel;
    Label4: TLabel;
    Position: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    Button1: TButton;
    QRCompositeReport1: TQRCompositeReport;
    qrCurrentUnbundled: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRLabel2: TQRLabel;
    QRShape3: TQRShape;
    QRLabel3: TQRLabel;
    QRShape4: TQRShape;
    QRLabel4: TQRLabel;
    QRShape5: TQRShape;
    QRLabel5: TQRLabel;
    QRShape6: TQRShape;
    QRLabel6: TQRLabel;
    QRShape7: TQRShape;
    QRLabel7: TQRLabel;
    QRShape8: TQRShape;
    QRLabel8: TQRLabel;
    QRShape9: TQRShape;
    QRLabel9: TQRLabel;
    QRShape10: TQRShape;
    QRLabel10: TQRLabel;
    QRShape11: TQRShape;
    QRLabel11: TQRLabel;
    QRShape12: TQRShape;
    QRLabel12: TQRLabel;
    QRShape13: TQRShape;
    QRLabel13: TQRLabel;
    QRShape14: TQRShape;
    QRLabel14: TQRLabel;
    QRShape15: TQRShape;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRShape16: TQRShape;
    QRLabel17: TQRLabel;
    QRShape17: TQRShape;
    QRLabel18: TQRLabel;
    QRShape18: TQRShape;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRShape19: TQRShape;
    QRBand3: TQRBand;
    QRShape38: TQRShape;
    QRShape39: TQRShape;
    QRShape40: TQRShape;
    QRShape41: TQRShape;
    QRShape42: TQRShape;
    QRShape43: TQRShape;
    QRShape44: TQRShape;
    QRShape45: TQRShape;
    QRShape46: TQRShape;
    QRShape47: TQRShape;
    QRShape48: TQRShape;
    QRShape49: TQRShape;
    QRShape50: TQRShape;
    QRShape51: TQRShape;
    QRShape52: TQRShape;
    QRShape53: TQRShape;
    QRShape54: TQRShape;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRLabel24: TQRLabel;
    QRShape55: TQRShape;
    QRBand4: TQRBand;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    qAdjustmentRptAreaBook: TMyQuery;
    qAdjustmentRpt: TMyQuery;
    qrlCUFDMonth: TQRLabel;
    QRBand2: TQRBand;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRShape37: TQRShape;
    QRLabel23: TQRLabel;
    procedure btnSignatoriesClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure QRBand4BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }

  public
    { Public declarations }
  end;
 function RetrieveMonthName(Date : TDate) : String;
var
  UnBnAdjReport: TUnBnAdjReport;
  I:integer;
  MunicipalPointer:Boolean;
  const
  AreaTemp : array[1..25] of string = ('001','002','003','004',
                                      '005','006','007','008','009','010','011',
                                    '012','013','014','015','016','017','018',
                                    '019','020','021','022','023','024','025');


  MunicipalTemp : array[1..25] of string = ('RIZAL','SIBUTAD','MUTIA','LA LIBERTAD',
                                      'SERGIO OSMEÑA','DAPITAN','PIÑAN','POLANCO','DIPOLOG NORTH','DIPOLOG SOUTH','KATIPUNAN',
                                    'ROXAS','MANUKAN','JOSE DALMAN','SINDANGAN','LEON B. POSTIGO','SIAYAN','SALUG',
                                    'LILOY','LABASON','TAMPILISAN','GODOD','GUTALAC','DAPITAN / PIÑAN','KALAWIT');


implementation

uses Data;

{$R *.dfm}

procedure TUnBnAdjReport.btnPrintClick(Sender: TObject);
begin
  I:=1;
  if rbSummary.Checked then begin
            qAdjustmentRpt.Close;
           // qAdjustmentRpt.ParamByName('BM').Text      := eBillMonth.Text;
            qAdjustmentRpt.ParamByName('RT').AsInteger:=1;
            qAdjustmentRpt.ParamByName('DF').AsDate    := dtpDateFrom.Date;
            qAdjustmentRpt.ParamByName('DT').AsDate    := dtpDateTo.Date;
            qAdjustmentRpt.Open;
            MunicipalPointer:=false;
            qrCurrentUnbundled.Preview;
     end else if PerArea.Checked then begin
         while(I<=25) do begin
            qAdjustmentRpt.Close;
           // qAdjustmentRpt.ParamByName('BM').Text      := eBillMonth.Text;
            qAdjustmentRpt.ParamByName('RT').AsInteger:=2;
            qAdjustmentRpt.ParamByName('A').Text:= AreaTemp[I];
            qAdjustmentRpt.ParamByName('DF').AsDate    := dtpDateFrom.Date;
            qAdjustmentRpt.ParamByName('DT').AsDate    := dtpDateTo.Date;
            qAdjustmentRpt.Open;
            MunicipalPointer:=true;
            qrCurrentUnbundled.Preview;
            I:=I+1;
         end;


  end;

end;

procedure TUnBnAdjReport.btnSignatoriesClick(Sender: TObject);
begin
  Panel6.Visible := True;
end;

procedure TUnBnAdjReport.Button1Click(Sender: TObject);
begin
  Panel6.Visible := False;
end;

procedure TUnBnAdjReport.FormShow(Sender: TObject);
begin
  dtpDateFrom.Date:= StartOfTheMonth(Now);
  dtpDateTo.Date:=EndOfTheMonth(Now);
end;

procedure TUnBnAdjReport.QRBand4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
  var
  formattedDateTimeFrom : string;
   formattedDateTimeTo : string;
begin
  DateTimeToString(formattedDateTimeFrom, 'mmmm dd, yyyy', dtpDateFrom.date );
  DateTimeToString(formattedDateTimeTo, 'mmmm dd, yyyy', dtpDateTo.date );
  qrlCUFDMonth.Caption := 'For the Period Covered of ' + formattedDateTimeFrom + ' To ' + formattedDateTimeTo;
  QRLabel23.Caption:= MunicipalTemp[I];
  if MunicipalPointer=false then  QRLabel23.Caption:='';
end;

function RetrieveMonthName(Date: TDate): String;
begin
  Result := FormatDateTime('MMMM YYYY',Date);
end;
end.
