unit BillAdjPopulate;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DsFancyButton, ExtCtrls, StdCtrls, DB, MemDS, DBAccess, MyAccess,
  Spin, ComCtrls, QuickRpt, QRCtrls, NxCollection;

type
  TBillAdjPopulateForm = class(TForm)
    Memo1: TMemo;
    BillMonth: TLabeledEdit;
    ApplyButton: TNxButton;
    DsFancyButton1: TNxButton;
    Amount: TLabeledEdit;
    GetBillHistory: TMyQuery;
    kwhrfrom: TSpinEdit;
    Label1: TLabel;
    Label2: TLabel;
    Bevel1: TBevel;
    kwhrto: TSpinEdit;
    Label3: TLabel;
    PostDate: TDateTimePicker;
    Label4: TLabel;
    DsFancyButton2: TNxButton;
    Area: TLabeledEdit;
    DsFancyButton3: TNxButton;
    detail: TMyQuery;
    Panel1: TPanel;
    detailACCOUNTNUMBER: TStringField;
    detailNAME: TStringField;
    detailCreditMemo: TStringField;
    detaildebit: TFloatField;
    detailAppliedAmount: TFloatField;
    detailAppliedAmountThisMonth: TFloatField;
    detailbalance: TCurrencyField;
    QuickRep1: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    SummaryBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    QRSysData1: TQRSysData;
    QRLabel2: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel10: TQRLabel;
    detailtotalapplied: TCurrencyField;
    QRDBText5: TQRDBText;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    Summ: TMyQuery;
    Summaddress: TStringField;
    SummTAccount: TLargeintField;
    Summdebit: TFloatField;
    SummAppliedAmount: TFloatField;
    SummAppliedAmountThisMonth: TFloatField;
    Summtotalapplied: TCurrencyField;
    Summbalance: TCurrencyField;
    summtotal: TMyQuery;
    summtotalTAccount: TLargeintField;
    summtotaldebit: TFloatField;
    summtotalAppliedAmount: TFloatField;
    summtotalAppliedAmountThisMonth: TFloatField;
    summtotaltotalapplied: TCurrencyField;
    summtotalbalance: TCurrencyField;
    QuickRep2: TQuickRep;
    QRBand1: TQRBand;
    QRLabel14: TQRLabel;
    QRSysData3: TQRSysData;
    QRSysData4: TQRSysData;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRBand2: TQRBand;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRBand3: TQRBand;
    QRLabel25: TQRLabel;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    DetailTotal: TMyQuery;
    DetailTotaltaccount: TLargeintField;
    DetailTotaldebit: TFloatField;
    DetailTotalAppliedAmount: TFloatField;
    DetailTotalAppliedAmountThisMonth: TFloatField;
    DetailTotaltotalapplied: TCurrencyField;
    DetailTotalbalance: TCurrencyField;
    Summarea: TStringField;
    AreaBook: TMyQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    LargeintField1: TLargeintField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    CurrencyField1: TCurrencyField;
    CurrencyField2: TCurrencyField;
    procedure BillMonthChange(Sender: TObject);
    procedure DsFancyButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ApplyButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure detailCalcFields(DataSet: TDataSet);
    procedure DetailTotalCalcFields(DataSet: TDataSet);
    procedure DsFancyButton2Click(Sender: TObject);
    procedure SummCalcFields(DataSet: TDataSet);
    procedure summtotalCalcFields(DataSet: TDataSet);
    procedure DsFancyButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BillAdjPopulateForm: TBillAdjPopulateForm;

implementation

uses Data;

{$R *.dfm}

procedure TBillAdjPopulateForm.BillMonthChange(Sender: TObject);
begin
  If BillMonth.Text = '' then ApplyButton.Enabled := False else ApplyButton.Enabled := True;
end;

procedure TBillAdjPopulateForm.DsFancyButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TBillAdjPopulateForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action              := caFree ;
 BillAdjPopulateForm := Nil    ;
end;

procedure TBillAdjPopulateForm.ApplyButtonClick(Sender: TObject);
begin
  Memo1.Lines.Clear;

  Try
  GetBillHistory.ParamByName('billmonth').Text     := BillMonth.Text;
  GetBillHistory.ParamByName('debit').Text         := Amount.Text;
  GetBillHistory.ParamByName('kwhrfrom').Text      := kwhrfrom.Text;
  GetBillHistory.ParamByName('kwhrto').Text        := kwhrto.Text;
  GetBillHistory.ParamByName('postingdate').AsDate := PostDate.Date;
  GetBillHistory.Execute;
  Memo1.Lines.Add('Add success... Number of records added '+IntToStr(GetBillHistory.RowsAffected));
  except
  on E: Exception do Memo1.Lines.Add(E.Message);
  end;

end;

procedure TBillAdjPopulateForm.FormShow(Sender: TObject);
begin
  PostDate.Date := Now;
end;

procedure TBillAdjPopulateForm.detailCalcFields(DataSet: TDataSet);
begin
  detailtotalapplied.AsCurrency := detailAppliedAmount.AsCurrency +
                                   detailAppliedAmountThisMonth.AsCurrency;
  detailbalance.AsCurrency      := detaildebit.AsCurrency - (detailAppliedAmount.AsCurrency +
                                                             detailAppliedAmountThisMonth.AsCurrency);
end;

procedure TBillAdjPopulateForm.DetailTotalCalcFields(DataSet: TDataSet);
begin
  DetailTotaltotalapplied.AsCurrency := DetailTotalAppliedAmount.AsCurrency +
                                        DetailTotalAppliedAmountThisMonth.AsCurrency;

  DetailTotalbalance.AsCurrency      := DetailTotaldebit.AsCurrency - (DetailTotalAppliedAmount.AsCurrency +
                                                                       DetailTotalAppliedAmountThisMonth.AsCurrency);

end;

procedure TBillAdjPopulateForm.DsFancyButton2Click(Sender: TObject);
Const
AddrT   : Array[1..25] of String[15] =
       ('RIZAL',
        'SIBUTAD',
        'MUTIA',
        'LA LIBERTAD',
        'SERGIO OSMEÑA',
        'DAPITAN',
        'PIÑAN',
        'POLANCO',
        'DIPOLOG NORTH',
        'DIPOLOG SOUTH',
        'KATIPUNAN',
        'ROXAS',
        'MANUKAN',
        'JOSE DALMAN',
        'SINDANGAN',
        'LEON B. POSTIGO',
        'SIAYAN',
        'SALUG',
        'LILOY',
        'LABASON',
        'TAMPILISAN',
        'GODOD',
        'GUTALAC',
        'DAPITAN / PIÑAN',
        'KALAWIT');

Var BM : String;
begin
  Memo1.Lines.Clear;

  Try
   BM := FormatDateTime('MMMM, YY',StrToDate(Copy(billmonth.text,1,2)+'/01/'+Copy(billmonth.text,3,2)));
  except
   MessageDlg('Invalid bill month', mtError, [mbOK], 0);
   BillMonth.SetFocus;
   exit;
  end;

  Detail.ParamByName('billmonth').Text  := Copy(BillMonth.Text,3,2)+Copy(BillMonth.Text,1,2);
  Detail.ParamByName('billmonth1').Text := BillMonth.Text;
  Detail.ParamByName('Area').Text       := Area.Text;
  Detail.Open;

  DetailTotal.ParamByName('billmonth').Text  := Copy(BillMonth.Text,3,2)+Copy(BillMonth.Text,1,2);
  DetailTotal.ParamByName('billmonth1').Text := BillMonth.Text;
  DetailTotal.ParamByName('Area').Text       := Area.Text;
  DetailTotal.Open;

  QRLabel4.Caption := 'FOR THE BILLING MONTH '+BM;
  QRLabel6.Caption := 'Municipality of '+Addrt[strtoint(Area.Text)];

  QuickRep1.PreviewWidth  := Screen.Width;
  QuickRep1.PreviewHeight := Screen.Height;
  QuickRep1.Preview;

  Detail.Close;
  Detailtotal.Close;
end;

procedure TBillAdjPopulateForm.SummCalcFields(DataSet: TDataSet);
begin
  Summtotalapplied.AsCurrency := SummAppliedAmount.AsCurrency +
                                 SummAppliedAmountThisMonth.AsCurrency;
  Summbalance.AsCurrency      := Summdebit.AsCurrency - (SummAppliedAmount.AsCurrency +
                                                         SummAppliedAmountThisMonth.AsCurrency);

end;

procedure TBillAdjPopulateForm.summtotalCalcFields(DataSet: TDataSet);
begin
  summtotaltotalapplied.AsCurrency := summtotalAppliedAmount.AsCurrency +
                                      summtotalAppliedAmountThisMonth.AsCurrency;
  summtotalbalance.AsCurrency      := summtotaldebit.AsCurrency - (summtotalAppliedAmount.AsCurrency +
                                                                   summtotalAppliedAmountThisMonth.AsCurrency);
end;

procedure TBillAdjPopulateForm.DsFancyButton3Click(Sender: TObject);
Var BM : String;

begin
  Memo1.Lines.Clear;

  Try
   BM := FormatDateTime('MMMM, YY',StrToDate(Copy(billmonth.text,1,2)+'/01/'+Copy(billmonth.text,3,2)));
  except
   MessageDlg('Invalid bill month', mtError, [mbOK], 0);
   BillMonth.SetFocus;
   exit;
  end;

  Summ.ParamByName('billmonth').Text  := Copy(BillMonth.Text,3,2)+Copy(BillMonth.Text,1,2);
  Summ.ParamByName('billmonth1').Text := BillMonth.Text;
  Summ.Open;

  SummTotal.ParamByName('billmonth').Text  := Copy(BillMonth.Text,3,2)+Copy(BillMonth.Text,1,2);
  SummTotal.ParamByName('billmonth1').Text := BillMonth.Text;
  SummTotal.Open;

  QRLabel16.Caption := 'FOR THE BILLING MONTH '+BM;

  QuickRep2.PreviewWidth  := Screen.Width;
  QuickRep2.PreviewHeight := Screen.Height;
  QuickRep2.Preview;

  Summ.Close;
  Summtotal.Close;

end;

end.


