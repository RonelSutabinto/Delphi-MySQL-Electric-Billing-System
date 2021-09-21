
unit OneYearLifeLine;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin, DB, MemDS, DBAccess, MyAccess, DsFancyButton,
  ExtCtrls, QRCtrls, QuickRpt, NxCollection;

type
  TOneYearLifelineForm = class(TForm)
    PYear: TSpinEdit;
    Label1: TLabel;
    DsFancyButton1: TNxButton;
    DsFancyButton2: TNxButton;
    CreateSource: TMyQuery;
    InsertBillHistory: TMyQuery;
    InsertLateBillHistory: TMyQuery;
    Timer1: TTimer;
    LifeLine: TMyQuery;
    Panel1: TPanel;
    LifeLineRANGE: TStringField;
    LifeLinediscount: TStringField;
    LifeLineDecAccounts: TLargeintField;
    LifeLinelifelinediscount: TFloatField;
    LifeLinelifelinesubsidy: TFloatField;
    ConsType: TRadioGroup;
    Panel2: TPanel;
    LifeLinekilowatthour: TFloatField;
    LifeLineavekilowatthour: TIntegerField;
    LifeLineavediscount: TCurrencyField;
    LifeLineavesubsidy: TCurrencyField;
    QuickRep1: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    ReportLabel: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    SummaryBand1: TQRBand;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    procedure Timer1Timer(Sender: TObject);
    procedure DsFancyButton1Click(Sender: TObject);
    procedure LifeLineCalcFields(DataSet: TDataSet);
    procedure DsFancyButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OneYearLifelineForm: TOneYearLifelineForm;

implementation

uses Data;

{$R *.dfm}

procedure TOneYearLifelineForm.Timer1Timer(Sender: TObject);
begin
  Application.ProcessMessages;
end;

procedure TOneYearLifelineForm.DsFancyButton1Click(Sender: TObject);
const
RateStr : Array[0..6] of String[15] = ('RESIDENTIAL','COMMERCIAL','PUBLIC BLDG.','INDUSTRIAL','STREET LIGHTS','IRRIGATION','ALL');
CT      : Array[0..6] of String[1] = ('R','C','P','I','S','G','%');

Var BM : String[4];

begin
  Panel1.Left := 28;
  Panel1.Top  := 82;
  Panel1.Visible := True;
  Panel1.BringToFront;
  Application.ProcessMessages;

  DsFancyButton1.Visible := False;
  Application.ProcessMessages;

  CreateSource.Execute;
  Application.ProcessMessages;

  InsertBillHistory.ParamByName('PYear').Text    :=  PYear.Text;
  InsertBillHistory.ParamByName('ratecode').Text :=  ct[ConsType.itemindex];
  InsertBillHistory.Execute;
  Application.ProcessMessages;

  InsertLateBillHistory.ParamByName('PYear').Text    :=  PYear.Text;
  InsertLateBillHistory.ParamByName('ratecode').Text :=  ct[ConsType.itemindex];
  InsertLateBillHistory.Execute;
  Application.ProcessMessages;

  BM := '12'+Copy(PYear.Text,3,2);

  LifeLine.ParamByName('billmonth').Text := BM;
  LifeLine.Open;
  If Lifeline.IsEmpty then
    begin
      MessageDlg('there is no available lifeline data for that year...', mtInformation, [mbOK], 0);
      LifeLine.Close;
      exit;
    end;

  Application.ProcessMessages;

  Panel1.Visible := False;

  If ConsType.ItemIndex = 6 then
  ReportLabel.Caption := 'For the Year '+PYear.Text+' for all consumer type' else
  ReportLabel.Caption := 'For the Year '+PYear.Text+' for consumer type '+RateStr[constype.itemindex];
  QuickRep1.Preview;

  LifeLine.Close;
  DsFancyButton1.Visible := True;
end;

procedure TOneYearLifelineForm.LifeLineCalcFields(DataSet: TDataSet);
begin
  LifeLineavekilowatthour.AsInteger := LifeLinekilowatthour.AsInteger div 12;
  LifeLineavediscount.AsCurrency    := LifeLinelifelinediscount.AsCurrency / 12;
  LifeLineavesubsidy.AsCurrency     := LifeLinelifelinesubsidy.AsCurrency / 12;
end;

procedure TOneYearLifelineForm.DsFancyButton2Click(Sender: TObject);
begin
 Close;
end;

end.
