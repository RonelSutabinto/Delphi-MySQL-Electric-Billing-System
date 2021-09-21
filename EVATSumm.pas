unit EVATSumm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, DB, MemDS, DBAccess, MyAccess,
  PDJSillyLabel, QuickRpt, QRCtrls, DsFancyButton, NxCollection, NxEdit,
  frxClass, frxDBSet;

type
  TEVATSummaryForm = class(TForm)
    Panel1: TPanel;
    StaticText1: TStaticText;
    Label1: TLabel;
    Label2: TLabel;
    DateFrom: TDateTimePicker;
    DateTo: TDateTimePicker;
    Bevel1: TBevel;
    EVATSumm: TMyQuery;
    PDJSillyLabel1: TNxButton;
    PDJSillyLabel2: TNxButton;
    TotalEVAT: TMyQuery;
    RadioGroup1: TRadioGroup;
    EVATSummarea: TStringField;
    EVATSummaddress: TStringField;
    EVATSummEVAT: TFloatField;
    EVATSummEVATDist: TFloatField;
    EVATSummEVATGenCO: TFloatField;
    EVATSummEVATTransCO: TFloatField;
    EVATSummEVATSystemLoss: TFloatField;
    TotalEVATEVAT: TFloatField;
    TotalEVATEVATDist: TFloatField;
    TotalEVATEVATGenCO: TFloatField;
    TotalEVATEVATTransCO: TFloatField;
    TotalEVATEVATSystemLoss: TFloatField;
    TotalNet: TMyQuery;
    TotalNetTotal: TFloatField;
    TotalNetEVAT: TFloatField;
    TotalNetEVATDist: TFloatField;
    TotalNetEVATGenCO: TFloatField;
    TotalNetEVATTransCO: TFloatField;
    TotalNetEVATSystemLoss: TFloatField;
    TotalNetUCEC: TFloatField;
    TotalNetUCME: TFloatField;
    TotalNettotalNet: TFloatField;
    TotalNetTR: TFloatField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    EVATSummaryReportBIR: TQuickRep;
    QRBand1: TQRBand;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRSysData3: TQRSysData;
    QRSysData4: TQRSysData;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRBand2: TQRBand;
    QRDBText16: TQRDBText;
    QRLabel23: TQRLabel;
    QRDBText20: TQRDBText;
    QRBand3: TQRBand;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText19: TQRDBText;
    TabSheet3: TTabSheet;
    EVATSummaryReportDIST: TQuickRep;
    QRBand4: TQRBand;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel24: TQRLabel;
    QRSysData5: TQRSysData;
    QRSysData6: TQRSysData;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel33: TQRLabel;
    QRBand5: TQRBand;
    QRDBText27: TQRDBText;
    QRLabel34: TQRLabel;
    QRDBText31: TQRDBText;
    QRBand6: TQRBand;
    QRDBText32: TQRDBText;
    QRDBText33: TQRDBText;
    QRDBText36: TQRDBText;
    QRDBText40: TQRDBText;
    TabSheet4: TTabSheet;
    EVATSummaryReportERC: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    PeriodCoveredLabel: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel20: TQRLabel;
    SummaryBand1: TQRBand;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBText18: TQRDBText;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText17: TQRDBText;
    NetPKV: TMyQuery;
    TotalPKV: TMyQuery;
    TabSheet5: TTabSheet;
    PKVReport: TQuickRep;
    QRBand10: TQRBand;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    PKVCovered: TQRLabel;
    QRSysData9: TQRSysData;
    QRSysData10: TQRSysData;
    QRBand11: TQRBand;
    QRLabel57: TQRLabel;
    QRDBText46: TQRDBText;
    QRDBText47: TQRDBText;
    QRDBText48: TQRDBText;
    QRDBText49: TQRDBText;
    QRDBText50: TQRDBText;
    QRDBText51: TQRDBText;
    QRDBText52: TQRDBText;
    QRDBText53: TQRDBText;
    QRBand12: TQRBand;
    QRDBText54: TQRDBText;
    QRDBText55: TQRDBText;
    QRDBText56: TQRDBText;
    QRDBText57: TQRDBText;
    QRDBText58: TQRDBText;
    QRDBText59: TQRDBText;
    QRDBText60: TQRDBText;
    QRDBText61: TQRDBText;
    QRDBText62: TQRDBText;
    QRDBText63: TQRDBText;
    QRDBText64: TQRDBText;
    NetPKVarea: TStringField;
    NetPKVaddress: TStringField;
    NetPKVTotal: TFloatField;
    NetPKVEVAT: TFloatField;
    NetPKVEVATDist: TFloatField;
    NetPKVEVATGenCO: TFloatField;
    NetPKVEVATTransCO: TFloatField;
    NetPKVEVATSystemLoss: TFloatField;
    NetPKVUCEC: TFloatField;
    NetPKVUCME: TFloatField;
    NetPKVTR: TFloatField;
    NetPKVtotalNet: TFloatField;
    TotalPKVTotal: TFloatField;
    TotalPKVEVAT: TFloatField;
    TotalPKVEVATDist: TFloatField;
    TotalPKVEVATGenCO: TFloatField;
    TotalPKVEVATTransCO: TFloatField;
    TotalPKVEVATSystemLoss: TFloatField;
    TotalPKVUCEC: TFloatField;
    TotalPKVUCME: TFloatField;
    TotalPKVTR: TFloatField;
    TotalPKVtotalNet: TFloatField;
    QRDBText45: TQRDBText;
    TotalNetSystemLossCharge: TFloatField;
    NetPKVSystemLossCharge: TFloatField;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRLabel56: TQRLabel;
    QRLabel58: TQRLabel;
    QRDBText67: TQRDBText;
    QRDBText68: TQRDBText;
    TotalPKVSystemLossCharge: TFloatField;
    TotalNetnetcollection: TCurrencyField;
    TotalNetPKVRAmount: TFloatField;
    TotalNetMCC: TFloatField;
    TotalNetUCNPCSCC: TFloatField;
    QRLabel62: TQRLabel;
    QRDBText75: TQRDBText;
    NetCollectionReport: TQuickRep;
    Head: TQRBand;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    NetCovered: TQRLabel;
    QRSysData7: TQRSysData;
    QRSysData8: TQRSysData;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel59: TQRLabel;
    QRLabel60: TQRLabel;
    QRLabel61: TQRLabel;
    QRBand8: TQRBand;
    QRLabel39: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText39: TQRDBText;
    QRDBText41: TQRDBText;
    QRDBText44: TQRDBText;
    QRDBText66: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText42: TQRDBText;
    QRDBText70: TQRDBText;
    QRDBText72: TQRDBText;
    QRDBText74: TQRDBText;
    QRBand9: TQRBand;
    QRDBText23: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText28: TQRDBText;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    QRDBText37: TQRDBText;
    QRDBText34: TQRDBText;
    QRDBText35: TQRDBText;
    QRDBText43: TQRDBText;
    QRDBText65: TQRDBText;
    QRDBText38: TQRDBText;
    QRDBText69: TQRDBText;
    QRDBText71: TQRDBText;
    QRDBText73: TQRDBText;
    TabSheet6: TTabSheet;
    TotalNetCBook: TMyQuery;
    FilterTcombo: TNxComboBox;
    Label3: TLabel;
    NxComboBox1: TNxComboBox;
    masterQuery: TMyQuery;
    Label4: TLabel;
    QRCompositeReport2: TQRCompositeReport;
    NetCollectionCBook: TMyQuery;
    TotalNetCBookTotal: TFloatField;
    TotalNetCBookEVAT: TFloatField;
    TotalNetCBookEVATDist: TFloatField;
    TotalNetCBookEVATGenCO: TFloatField;
    TotalNetCBookEVATTransCO: TFloatField;
    TotalNetCBookEVATSystemLoss: TFloatField;
    TotalNetCBookUCEC: TFloatField;
    TotalNetCBookUCME: TFloatField;
    TotalNetCBookUCNPCSCC: TFloatField;
    TotalNetCBookSystemLossCharge: TFloatField;
    TotalNetCBookTR: TFloatField;
    TotalNetCBookPKVRAmount: TFloatField;
    TotalNetCBookMCC: TFloatField;
    TotalNetCBooktotalNet: TFloatField;
    QuickRep2: TQuickRep;
    QRBand7: TQRBand;
    QRLabel63: TQRLabel;
    QRLabel64: TQRLabel;
    QRLabel65: TQRLabel;
    QRLabel66: TQRLabel;
    QRLabel68: TQRLabel;
    QRLabel69: TQRLabel;
    QRLabel70: TQRLabel;
    QRLabel71: TQRLabel;
    QRLabel72: TQRLabel;
    QRLabel73: TQRLabel;
    QRLabel74: TQRLabel;
    QRLabel75: TQRLabel;
    QRLabel76: TQRLabel;
    QRLabel77: TQRLabel;
    QRLabel78: TQRLabel;
    QRLabel79: TQRLabel;
    QRLabel80: TQRLabel;
    QRSysData11: TQRSysData;
    QRBand14: TQRBand;
    QRDBText89: TQRDBText;
    QRDBText91: TQRDBText;
    QRDBText92: TQRDBText;
    QRDBText93: TQRDBText;
    QRDBText94: TQRDBText;
    QRDBText95: TQRDBText;
    QRDBText96: TQRDBText;
    QRDBText97: TQRDBText;
    QRDBText98: TQRDBText;
    QRDBText99: TQRDBText;
    QRDBText101: TQRDBText;
    QRDBText102: TQRDBText;
    QRDBText103: TQRDBText;
    QRBand13: TQRBand;
    QRLabel81: TQRLabel;
    QRDBText76: TQRDBText;
    QRDBText77: TQRDBText;
    QRDBText78: TQRDBText;
    QRDBText79: TQRDBText;
    QRDBText80: TQRDBText;
    QRDBText81: TQRDBText;
    QRDBText82: TQRDBText;
    QRDBText83: TQRDBText;
    QRDBText84: TQRDBText;
    QRDBText85: TQRDBText;
    QRDBText86: TQRDBText;
    QRDBText87: TQRDBText;
    QRSysData12: TQRSysData;
    QRDBText90: TQRDBText;
    QRDBText104: TQRDBText;
    masterQueryarea: TStringField;
    NetCollectionCBookCBook: TStringField;
    NetCollectionCBookaddress: TStringField;
    NetCollectionCBookTotal: TFloatField;
    NetCollectionCBookEVAT: TFloatField;
    NetCollectionCBookEVATDist: TFloatField;
    NetCollectionCBookEVATGenCO: TFloatField;
    NetCollectionCBookEVATTransCO: TFloatField;
    NetCollectionCBookEVATSystemLoss: TFloatField;
    NetCollectionCBookUCEC: TFloatField;
    NetCollectionCBookUCME: TFloatField;
    NetCollectionCBookUCNPCSCC: TFloatField;
    NetCollectionCBookSystemLossCharge: TFloatField;
    NetCollectionCBookTR: TFloatField;
    NetCollectionCBookPKVRAmount: TFloatField;
    NetCollectionCBookmcc: TFloatField;
    NetCollectionCBooktotalNet: TFloatField;
    QRDBText88: TQRDBText;
    QRDBText100: TQRDBText;
    NetCollectionCBooknetcollection: TFloatField;
    TotalNetCBooknetcollections: TFloatField;
    NetColl_Rep: TfrxReport;
    NetCollection: TMyQuery;
    NetCollectionarea: TStringField;
    NetCollectionaddress: TStringField;
    NetCollectionTotal: TFloatField;
    NetCollectionEVAT: TFloatField;
    NetCollectionEVATDist: TFloatField;
    NetCollectionEVATGenCO: TFloatField;
    NetCollectionEVATTransCO: TFloatField;
    NetCollectionEVATSystemLoss: TFloatField;
    NetCollectionUCEC: TFloatField;
    NetCollectionUCME: TFloatField;
    NetCollectiontotalNet: TFloatField;
    NetCollectionTR: TFloatField;
    NetCollectionSystemLossCharge: TFloatField;
    NetCollectionnetcollection: TCurrencyField;
    NetCollectionPKVRAmount: TFloatField;
    NetCollectionMCC: TFloatField;
    NetCollectionUCNPCSCC: TFloatField;
    NetCollectionFitall: TFloatField;
    NetCollectionRPT: TFloatField;
    NetCollectionUCNPCSCD: TFloatField;
    NetCollectionICCS: TFloatField;
    NetCollectionPARec: TFloatField;
    NetCollectionVATmcc: TFloatField;
    NetCollectionbreakDownOC: TStringField;
    netCollSum: TMyQuery;
    netCollSumFitall: TFloatField;
    netCollSumRPT: TFloatField;
    netCollSumUCNPCSCD: TFloatField;
    netCollSumICCS: TFloatField;
    netCollSumPARec: TFloatField;
    netCollSumVATmcc: TFloatField;
    netCollSumbreakDownOC: TStringField;
    netCollSumPC: TStringField;
    netCollSum_tfrx: TfrxDBDataset;
    NetColl_tfrx: TfrxDBDataset;
    totalNet_Tfrx: TfrxDBDataset;
    NetCollectiongram: TFloatField;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PDJSillyLabel1Click(Sender: TObject);
    procedure PDJSillyLabel2Click(Sender: TObject);
    procedure NetCollectionCalcFields(DataSet: TDataSet);
    procedure TotalNetCalcFields(DataSet: TDataSet);
    procedure FilterTcomboSelect(Sender: TObject);
    procedure QRCompositeReport2AddReports(Sender: TObject);
    procedure TotalNetCBookCalcFields(DataSet: TDataSet);
    procedure NetCollectionCBookCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EVATSummaryForm: TEVATSummaryForm;

implementation

uses Data, DateUtils;

{$R *.dfm}

procedure TEVATSummaryForm.FormShow(Sender: TObject);
begin
  DateFrom.Date := StartOfTheMonth(now);
  DateTo.Date   := EndOfTheMonth(now);

  {masterQuery.Close;
  masterQuery.Open;
  masterQuery.First;

  while not masterQuery.Eof do
  begin
      NxComboBox1.Items.Add(masterQuery.FieldByName('area').Text);
      masterQuery.Next;
  end;

  NxComboBox1.Enabled := false;
  label4.Enabled := false; }
end;

procedure TEVATSummaryForm.FilterTcomboSelect(Sender: TObject);
begin
  if FilterTcombo.Text = 'Area' then
  begin
     NxComboBox1.Enabled := false;
     label4.Enabled := false;
  end else if FilterTcombo.Text = 'CBook' then begin
     masterQuery.Close;
     masterQuery.Open;

     masterQuery.First;
     while not masterQuery.Eof do
     begin
        NxComboBox1.Items.Add(masterQuery.FieldByName('area').Text);
        masterQuery.Next;
     end;

     NxComboBox1.Enabled := true;
     label4.Enabled := true;
  end;
end;

procedure TEVATSummaryForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    EVATSumm.Close;
    TotalEVAT.Close;
    NetCollection.Close;
    TotalNet.Close;
    NetPKV.Close;
    TotalPKV.Close;
    Action := caFree;
    EVATSummaryForm := Nil;
end;

procedure TEVATSummaryForm.PDJSillyLabel1Click(Sender: TObject);
begin
 if FilterTcombo.Text = 'CBook' then
 begin
      NetCollectionCBook.Close;
      NetCollectionCBook.ParamByName('DateFrom').AsDate := DateFrom.Date;;
      NetCollectionCBook.ParamByName('DateTo').AsDate   := DateTo.Date;;
      NetCollectionCBook.ParamByName('areaf').Text           := NxComboBox1.Text;
      NetCollectionCBook.Open;

      TotalNetCBook.Close;
      TotalNetCBook.ParamByName('DateFrom').AsDate := DateFrom.Date;;
      TotalNetCBook.ParamByName('DateTo').AsDate   := DateTo.Date;;
      TotalNetCBook.ParamByName('areaf').Text := NxComboBox1.Text;
      TotalNetCBook.Open;

      QRLabel65.Caption := 'PERIOD COVERED '+DateToStr(DateFrom.Date)+' to '+DateToStr(DateTo.Date);
      QRCompositeReport2.Preview;
      //Case RadioGroup1.ItemIndex of
      // 03 : QRCompositeReport2.Preview;
      //end;
 end else begin

 If RadioGroup1.ItemIndex in [0..2] then
 begin
   EVATSumm.Close;
   EVATSumm.ParamByName('DateFrom').AsDate := DateFrom.Date;;
   EVATSumm.ParamByName('DateTo').AsDate   := DateTo.Date;;
   EVATSumm.Open;

   TotalEVAT.Close;
   TotalEVAT.ParamByName('DateFrom').AsDate := DateFrom.Date;;
   TotalEVAT.ParamByName('DateTo').AsDate   := DateTo.Date;;
   TotalEVAT.Open;

   PeriodCoveredLabel.Caption := 'PERIOD COVERED '+DateToStr(DateFrom.Date)+' to '+DateToStr(DateTo.Date);
   QRLabel13.Caption          := 'PERIOD COVERED '+DateToStr(DateFrom.Date)+' to '+DateToStr(DateTo.Date);
   QRLabel24.Caption          := 'PERIOD COVERED '+DateToStr(DateFrom.Date)+' to '+DateToStr(DateTo.Date);
 end;

 If RadioGroup1.ItemIndex = 3 then
 begin
   NetCollection.Close;
   NetCollection.ParamByName('DateFrom').AsDate := DateFrom.Date;
   NetCollection.ParamByName('DateTo').AsDate   := DateTo.Date;
   NetCollection.Open;

   netCollSum.Close;
   netCollSum.ParamByName('DateFrom').AsDate := DateFrom.Date;
   netCollSum.ParamByName('DateTo').AsDate   := DateTo.Date;
   netCollSum.Open;

   NetCovered.Caption := 'PERIOD COVERED '+DateToStr(DateFrom.Date)+' to '+DateToStr(DateTo.Date);
 end;

 If RadioGroup1.ItemIndex = 4 then
 begin
   NetPKV.Close;
   NetPKV.ParamByName('DateFrom').AsDate := DateFrom.Date;;
   NetPKV.ParamByName('DateTo').AsDate   := DateTo.Date;;
   NetPKV.Open;

   TotalPKV.Close;
   TotalPKV.ParamByName('DateFrom').AsDate := DateFrom.Date;;
   TotalPKV.ParamByName('DateTo').AsDate   := DateTo.Date;;
   TotalPKV.Open;

   PKVCovered.Caption := 'PERIOD COVERED '+DateToStr(DateFrom.Date)+' to '+DateToStr(DateTo.Date);
 end;


 Case RadioGroup1.ItemIndex of
 00 : EVATSummaryReportERC.Preview;
 01 : EVATSummaryReportBIR.Preview;
 02 : EVATSummaryReportDIST.Preview;
 03 : NetColl_Rep.ShowReport; //NetCollectionReport.Preview;
 04 : PKVReport.Preview;
 end;
 end;

end;

procedure TEVATSummaryForm.PDJSillyLabel2Click(Sender: TObject);
begin
  Close;
end;

procedure TEVATSummaryForm.QRCompositeReport2AddReports(Sender: TObject);
begin
  //masterQuery.Close;
   QRCompositeReport2.Reports.Add(QuickRep2);
end;

procedure TEVATSummaryForm.NetCollectionCalcFields(DataSet: TDataSet);
begin
  NetCollectionnetcollection.AsCurrency := NetCollectionTotal.AsCurrency - (NetCollectionEVATDist.AsCurrency +
                                                                            NetCollectionEVATGenCO.AsCurrency +
                                                                            NetCollectionEVATTransCO.AsCurrency +
                                                                            NetCollectionEVATSystemLoss.AsCurrency +
                                                                            NetCollectionUCEC.AsCurrency +
                                                                            NetCollectionUCME.AsCurrency +
                                                                            NetCollectionSystemLossCharge.AsCurrency +
                                                                            NetCollectionTR.AsCurrency);
end;

procedure TEVATSummaryForm.NetCollectionCBookCalcFields(DataSet: TDataSet);
begin
  NetCollectionCBookNetcollection.AsCurrency := NetCollectionCBookTotal.AsCurrency - (NetCollectionCBookEVATDist.AsCurrency +
                                                                            NetCollectionCBookEVATGenCO.AsCurrency +
                                                                            NetCollectionCBookEVATTransCO.AsCurrency +
                                                                            NetCollectionCBookEVATSystemLoss.AsCurrency +
                                                                            NetCollectionCBookUCEC.AsCurrency +
                                                                            NetCollectionCBookUCME.AsCurrency +
                                                                            NetCollectionCBookSystemLossCharge.AsCurrency +
                                                                            NetCollectionCBookTR.AsCurrency);

end;

procedure TEVATSummaryForm.TotalNetCalcFields(DataSet: TDataSet);
begin
  TotalNetnetcollection.AsCurrency := TotalNetTotal.AsCurrency - (TotalNetEVATDist.AsCurrency +
                                                                  TotalNetEVATGenCO.AsCurrency +
                                                                  TotalNetEVATTransCO.AsCurrency +
                                                                  TotalNetEVATSystemLoss.AsCurrency +
                                                                  TotalNetUCEC.AsCurrency +
                                                                  TotalNetUCME.AsCurrency +
                                                                  TotalNetSystemLossCharge.AsCurrency +
                                                                  TotalNetTR.AsCurrency);

end;

procedure TEVATSummaryForm.TotalNetCBookCalcFields(DataSet: TDataSet);
begin
TotalNetCBooknetcollections.AsCurrency := TotalNetCBookTotal.AsCurrency - (TotalNetCBookEVATDist.AsCurrency +
                                                                  TotalNetCBookEVATGenCO.AsCurrency +
                                                                  TotalNetCBookEVATTransCO.AsCurrency +
                                                                  TotalNetCBookEVATSystemLoss.AsCurrency +
                                                                  TotalNetCBookUCEC.AsCurrency +
                                                                  TotalNetCBookUCME.AsCurrency +
                                                                  TotalNetCBookSystemLossCharge.AsCurrency +
                                                                  TotalNetCBookTR.AsCurrency);

end;
 {

  NetCollectionCBookNetcollection.AsCurrency := NetCollectionCBookTotal.AsCurrency - (NetCollectionCBookEVATDist.AsCurrency +
                                                                            NetCollectionCBookEVATGenCO.AsCurrency +
                                                                            NetCollectionCBookEVATTransCO.AsCurrency +
                                                                            NetCollectionCBookEVATSystemLoss.AsCurrency +
                                                                            NetCollectionCBookUCEC.AsCurrency +
                                                                            NetCollectionCBookUCME.AsCurrency +
                                                                            NetCollectionCBookSystemLossCharge.AsCurrency +
                                                                            NetCollectionCBookTR.AsCurrency);



 TotalNetCBooknetcollection.AsCurrency := TotalNetCBookTotal.AsCurrency - (TotalNetCBookEVATDist.AsCurrency +
                                                                  TotalNetCBookEVATGenCO.AsCurrency +
                                                                  TotalNetCBookEVATTransCO.AsCurrency +
                                                                  TotalNetCBookEVATSystemLoss.AsCurrency +
                                                                  TotalNetCBookUCEC.AsCurrency +
                                                                  TotalNetCBookUCME.AsCurrency +
                                                                  TotalNetCBookSystemLossCharge.AsCurrency +
                                                                  TotalNetCBookTR.AsCurrency);

 }
end.
