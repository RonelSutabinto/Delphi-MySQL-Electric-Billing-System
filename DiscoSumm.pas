unit DiscoSumm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, MemDS, DBAccess, MyAccess, DsFancyButton, ExtCtrls,
  ComCtrls, StdCtrls, Grids, DBGrids, QRCtrls, QuickRpt, Gauges, NxCollection,
  DBGrid1;

type
  TDiscoSummForm = class(TForm)
    CreateNewSummary: TMyQuery;
    Panel1: TPanel;
    DiscoSumm: TMyQuery;
    DsFancyButton1: TNxButton;
    Label1: TLabel;
    DateFrom: TDateTimePicker;
    DsFancyButton2: TNxButton;
    DsFancyButton3: TNxButton;
    DsFancyButton4: TNxButton;
    DSDiscoSumm: TDataSource;
    Panel2: TPanel;
    DiscoSummary: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    SummaryBand1: TQRBand;
    QRLabel22: TQRLabel;
    TitleBand1: TQRBand;
    QRLabel1: TQRLabel;
    ReportName: TQRLabel;
    Month: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText12: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    DiscoSummCutoffDate: TDateField;
    DiscoSummArea: TStringField;
    DiscoSummName: TStringField;
    DiscoSummRConsumer: TIntegerField;
    DiscoSummRAmount: TFloatField;
    DiscoSummCConsumer: TIntegerField;
    DiscoSummCAmount: TFloatField;
    DiscoSummPConsumer: TIntegerField;
    DiscoSummPAmount: TFloatField;
    DiscoSummSConsumer: TIntegerField;
    DiscoSummSAmount: TFloatField;
    DiscoSummIConsumer: TIntegerField;
    DiscoSummIAmount: TFloatField;
    DiscoSummTConsumer: TIntegerField;
    DiscoSummTAmount: TFloatField;
    DiscoSummID: TIntegerField;
    QRDBText7: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    T: TMyQuery;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    TRConsumer: TFloatField;
    TRAmount: TFloatField;
    TCConsumer: TFloatField;
    TCAmount: TFloatField;
    TPConsumer: TFloatField;
    TPAmount: TFloatField;
    TSConsumer: TFloatField;
    TSAmount: TFloatField;
    TIConsumer: TFloatField;
    TIAmount: TFloatField;
    TTConsumer: TFloatField;
    TTAmount: TFloatField;
    Label2: TLabel;
    DateTo: TDateTimePicker;
    Label3: TLabel;
    Bevel1: TBevel;
    Disco: TMyQuery;
    Panel3: TPanel;
    DsFancyButton5: TNxButton;
    Label4: TLabel;
    Area: TLabeledEdit;
    Gauge1: TGauge;
    Bevel2: TBevel;
    DsFancyButton6: TNxButton;
    DsFancyButton7: TNxButton;
    DiscoCode: TIntegerField;
    DiscoArea: TStringField;
    DiscoBook: TStringField;
    DiscoSequence: TStringField;
    DiscoAccountNumber: TStringField;
    DiscoName: TStringField;
    DiscoAddress: TStringField;
    DiscoRateCode: TStringField;
    DiscoConsCode: TStringField;
    DiscoConnCode: TStringField;
    DiscoTransformer: TStringField;
    DiscoMeterBrand: TStringField;
    DiscoSerial: TStringField;
    DiscoMultiplier: TFloatField;
    DiscoNewConnectionDate: TDateField;
    DiscoReconnectionDate: TDateField;
    DiscoDisconnectionDate: TDateField;
    DiscoPreviousReadingDate: TDateField;
    DiscoPresentReadingDate: TDateField;
    DiscoPreviousReadingKWH: TFloatField;
    DiscoPresentReadingKWH: TFloatField;
    DiscoDiff: TFloatField;
    DiscoDemand: TFloatField;
    DiscoFlatRateWattage: TFloatField;
    DiscoFeedBackCode: TStringField;
    DiscoCM: TStringField;
    DiscoCMMultiplier: TFloatField;
    DiscoCMPreviousReadingKWH: TFloatField;
    DiscoCMPresentReadingKWH: TFloatField;
    DiscoCMKilowattHour: TFloatField;
    DiscoCMDemand: TFloatField;
    DiscoKilowattHour: TFloatField;
    DiscoKilowattUsed: TFloatField;
    DiscoGenSysCharge: TFloatField;
    DiscoHostCommCharge: TFloatField;
    DiscoForexCharge: TFloatField;
    DiscoTCDemandCharge: TFloatField;
    DiscoTCTransSystemCharge: TFloatField;
    DiscoSystemLossCharge: TFloatField;
    DiscoDCDemandCharge: TFloatField;
    DiscoDCDistributionCharge: TFloatField;
    DiscoSCRetCustCharge: TFloatField;
    DiscoSCSupplySysCharge: TFloatField;
    DiscoMCRetailCustCharge: TFloatField;
    DiscoMCSystemCharge: TFloatField;
    DiscoUCNPCStrandedDebts: TFloatField;
    DiscoUCNPCStrandedContCost: TFloatField;
    DiscoUCDUStrandedContCost: TFloatField;
    DiscoUCME: TFloatField;
    DiscoUCEqTaxesAndRoyalties: TFloatField;
    DiscoUCEC: TFloatField;
    DiscoUCCrossSubRemoval: TFloatField;
    DiscoICCrossSubsidyCharge: TFloatField;
    DiscoPowerActRateRed: TFloatField;
    DiscoLifelineDiscSubs: TFloatField;
    DiscoLoanCondo: TFloatField;
    DiscoTransformerRental: TFloatField;
    DiscoOCCode1: TStringField;
    DiscoOCAmount1: TFloatField;
    DiscoOCMo1: TFloatField;
    DiscoOCTotal1: TFloatField;
    DiscoOCCode2: TStringField;
    DiscoOCAmount2: TFloatField;
    DiscoOCMo2: TFloatField;
    DiscoOCTotal2: TFloatField;
    DiscoOCCode3: TStringField;
    DiscoOCAmount3: TFloatField;
    DiscoOCMo3: TFloatField;
    DiscoOCTotal3: TFloatField;
    DiscoTotalBill: TFloatField;
    DiscoBillNumber: TStringField;
    DiscoOEBRNumber: TStringField;
    DiscoBillMonth: TStringField;
    DiscoDeleteRemarks: TStringField;
    DiscoPoleNumber: TStringField;
    DiscoFeederNumber: TStringField;
    DiscoXFormerQty: TIntegerField;
    DiscoXFormerKVA: TStringField;
    DiscoAge30: TFloatField;
    DiscoAge60: TFloatField;
    DiscoAge90: TFloatField;
    DiscoAge120: TFloatField;
    DiscoAgeOver120: TFloatField;
    DiscoAgeTotal: TFloatField;
    DiscoTotalPayments: TFloatField;
    DiscoARBalance: TFloatField;
    DiscoLCCustMo: TFloatField;
    DiscoPrevYearAdjPowerCost: TFloatField;
    DiscoSysLossUnderRecov: TFloatField;
    DiscoVATDisc: TFloatField;
    DiscoVATDiscAmt: TFloatField;
    DiscoVATDistDiscAmt: TFloatField;
    DiscoVATGenCoDiscAmt: TFloatField;
    DiscoVATTransCoDiscAmt: TFloatField;
    DiscoVATSystemLossDiscAmt: TFloatField;
    DiscoVATDist: TFloatField;
    DiscoVATGenCO: TFloatField;
    DiscoVATTransCO: TFloatField;
    DiscoVATSystemLossGenCO: TFloatField;
    DiscoVATSystemLossTransCO: TFloatField;
    DiscoVAT: TFloatField;
    Discoamount: TFloatField;
    PBName: TEdit;
    Label14: TLabel;
    PBPos: TEdit;
    Label15: TLabel;
    CBName: TEdit;
    CBPos: TEdit;
    Label16: TLabel;
    VBName: TEdit;
    VBPos: TEdit;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    PBNameQ: TQRLabel;
    CBNameQ: TQRLabel;
    VBNameQ: TQRLabel;
    PBPosQ: TQRLabel;
    CBPosQ: TQRLabel;
    VBPosQ: TQRLabel;
    CountDisco: TMyQuery;
    DBGrid1: TDBGrid1;
    procedure DsFancyButton4Click(Sender: TObject);
    procedure DsFancyButton1Click(Sender: TObject);
    procedure DsFancyButton2Click(Sender: TObject);
    procedure DsFancyButton3Click(Sender: TObject);
    procedure DsFancyButton6Click(Sender: TObject);
    procedure DsFancyButton5Click(Sender: TObject);
    procedure DsFancyButton7Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DiscoSummForm: TDiscoSummForm;

implementation

uses Data, ModTools;

Var
lst : text;

{$R *.dfm}

procedure TDiscoSummForm.DsFancyButton4Click(Sender: TObject);
begin
  DiscoSumm.Close;
  T.Close;
  Close;
end;

procedure TDiscoSummForm.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  With Sender as TDBGrid do
  begin
   if (DataSource.DataSet.RecNo mod 2) = 0 then
     begin
      if Canvas.Brush.Color = clWindow then Canvas.Brush.Color  := clTealShadow;
     end;
     DefaultDrawColumnCell(Rect,DataCol,Column,State);
  end;
end;

procedure TDiscoSummForm.DsFancyButton1Click(Sender: TObject);
Var
 RCount,CCount,SCount,PCount,ICount,TCount : Integer;

begin
  DiscoSumm.Close;
  DiscoSumm.ParamByName('CutoffDate').AsDate := DateTo.Date;
  DiscoSumm.Open;

  If DiscoSumm.RecordCount > 0 then
  if (MessageDlg('That cutoff date already exist... '+#13+#10+
                 'Do you wish to overwrite?', mtWarning, [mbYes, mbNo], 0) = mrNo) then exit;

  CreateNewSummary.ParamByName('DateFrom').AsDate := DateFrom.Date;
  CreateNewSummary.ParamByName('DateTo').AsDate   := DateTo.Date;
  CreateNewSummary.ParamByName('CDate').AsDate    := DateTo.Date;
  CreateNewSummary.Execute;

  DiscoSumm.Close;
  DiscoSumm.ParamByName('CutoffDate').AsDate := DateTo.Date;
  DiscoSumm.Open;

  DiscoSumm.First;
  While not DiscoSumm.Eof do
   begin
    RCount := 0;
    CCount := 0;
    SCount := 0;
    PCount := 0;
    ICount := 0;
    TCount := 0;

    CountDisco.Close;
    CountDisco.ParamByName('Area').Text       := DiscoSummArea.Text;
    CountDisco.ParamByName('ratecode').Text   := 'R';
    CountDisco.ParamByName('DateFrom').AsDate := DateFrom.Date;
    CountDisco.ParamByName('DateTo').AsDate   := DateTo.Date;
    CountDisco.Open;
    RCount := CountDisco.RecordCount;

    CountDisco.Close;
    CountDisco.ParamByName('Area').Text       := DiscoSummArea.Text;
    CountDisco.ParamByName('ratecode').Text   := 'C';
    CountDisco.ParamByName('DateFrom').AsDate := DateFrom.Date;
    CountDisco.ParamByName('DateTo').AsDate   := DateTo.Date;
    CountDisco.Open;
    CCount := CountDisco.RecordCount;

    CountDisco.Close;
    CountDisco.ParamByName('Area').Text       := DiscoSummArea.Text;
    CountDisco.ParamByName('ratecode').Text   := 'P';
    CountDisco.ParamByName('DateFrom').AsDate := DateFrom.Date;
    CountDisco.ParamByName('DateTo').AsDate   := DateTo.Date;
    CountDisco.Open;
    PCount := CountDisco.RecordCount;

    CountDisco.Close;
    CountDisco.ParamByName('Area').Text       := DiscoSummArea.Text;
    CountDisco.ParamByName('ratecode').Text   := 'I';
    CountDisco.ParamByName('DateFrom').AsDate := DateFrom.Date;
    CountDisco.ParamByName('DateTo').AsDate   := DateTo.Date;
    CountDisco.Open;
    ICount := CountDisco.RecordCount;

    CountDisco.Close;
    CountDisco.ParamByName('Area').Text       := DiscoSummArea.Text;
    CountDisco.ParamByName('ratecode').Text   := 'S';
    CountDisco.ParamByName('DateFrom').AsDate := DateFrom.Date;
    CountDisco.ParamByName('DateTo').AsDate   := DateTo.Date;
    CountDisco.Open;
    SCount := CountDisco.RecordCount;

    CountDisco.Close;
    CountDisco.ParamByName('Area').Text       := DiscoSummArea.Text;
    CountDisco.ParamByName('ratecode').Text   := '%';
    CountDisco.ParamByName('DateFrom').AsDate := DateFrom.Date;
    CountDisco.ParamByName('DateTo').AsDate   := DateTo.Date;
    CountDisco.Open;
    TCount := CountDisco.RecordCount;

    DiscoSumm.Edit;
    DiscoSummRConsumer.AsInteger := RCount;
    DiscoSummCConsumer.AsInteger := CCount;
    DiscoSummPConsumer.AsInteger := PCount;
    DiscoSummIConsumer.AsInteger := ICount;
    DiscoSummSConsumer.AsInteger := SCount;
    DiscoSummTConsumer.AsInteger := TCount;
    DiscoSumm.Post;

    DiscoSumm.Next;
   end;

CountDisco.Close;
MessageDlg('Create new summary done.....', mtInformation, [mbOK], 0);

end;

procedure TDiscoSummForm.DsFancyButton2Click(Sender: TObject);
begin
  DiscoSumm.Close;
  DiscoSumm.ParamByName('CutoffDate').AsDate := DateTo.Date;
  DiscoSumm.Open;

  If DiscoSumm.RecordCount = 0 then
  begin
    MessageDlg('The requested cutoff date does not exist....', mtInformation, [mbOK], 0);
    DiscoSumm.Close;
  end;
end;


procedure TDiscoSummForm.DsFancyButton3Click(Sender: TObject);
begin
   T.ParamByName('CutoffDate').AsDate := DateTo.Date;
   T.Open;

   PBNameQ.Caption := PBName.Text;
   PBPosQ.Caption  := PBPos.Text;

   CBNameQ.Caption := CBName.Text;
   CBPosQ.Caption  := CBPos.Text;

   VBNameQ.Caption := VBName.Text;
   VBPosQ.Caption  := VBPos.Text;

   Month.Caption := 'Period Covered '+DateToStr(DateFrom.date)+ ' - '+DateToStr(DateTo.date);
   DiscoSummary.Preview;
   T.Close;
end;

procedure TDiscoSummForm.DsFancyButton6Click(Sender: TObject);
var
  PageCount, LineCount, HeadSW: Word;
  TAmount     : Currency;
  TConsumersR : Integer;
  TConsumersC : Integer;
  TConsumersP : Integer;
  TConsumersS : Integer;
  TConsumersI : Integer;

  procedure Heading;
  begin
    Write(Lst, #18, #27 + 'P');
    writeln(lst, 'Page #            : ', PageCount);
    writeln(lst, 'Report Name       : DETAILED DISCONNECTED CONSUMERS REFERENCE');
    writeln(lst, 'Period Covered    : ',DateToStr(DateFrom.Date), ' - ',DatetoStr(DateTo.Date));
    Writeln(lst, '-------------------------------------------------------------------------------');
    Writeln(lst, 'Ar. Bk. Seq. ACCT #   Consumer Name                            C        Amount');
    Writeln(lst, '-------------------------------------------------------------------------------');
  end;

begin

  Disco.Active := False;
  Disco.ParamByName('Datefrom').AsDate := datefrom.Date;
  Disco.ParamByName('Dateto').AsDate   := dateto.Date;
  Disco.ParamByName('area').Text       := Area.Text;
  Disco.open;

  If Disco.IsEmpty then
   begin
    MessageDlg('There are no records to print for that selection.', mtInformation, [mbOK], 0);
    disco.close;
    exit;
   end;

  ShowMessage('Set Printer on.....');

  try
    AssignFile(Lst, 'LPT1');
    Rewrite(Lst);
  except
    ShowMessage('Printer not Ready');
    Exit;
  end;

  Disco.First;
  Gauge1.Progress := 0;
  Gauge1.MinValue := 0;
  Gauge1.MaxValue := Disco.RecordCount;

  LineCount := 0;
  HeadSw := 0;
  TConsumersR := 0;
  TConsumersC := 0;
  TConsumersP := 0;
  TConsumersI := 0;
  TConsumersS := 0;
  TAmount := 0;

  Disco.First;

  while not Disco.Eof do
    begin
      Gauge1.AddProgress(1);
      Application.ProcessMessages;

      if HeadSW = 0 then
        begin
          HeadSW := 1;
          Heading;
        end;
        
      Writeln(Lst, JustStr(DiscoArea.Text, ' ', 3, 0), ' ',
        JustStr(DiscoBook.Text, ' ', 3, 0), ' ',
        JustStr(DiscoSequence.Text, ' ', 4, 0), ' ',
        JustStr(DiscoAccountNumber.Text, ' ', 8, 0), ' ',
        JustStr(DiscoName.Text, ' ', 40, 0), ' ',
        JustStr(DiscoRateCode.Text, ' ', 1, 0), ' ',
        Format(DiscoAmount.AsCurrency,'#,###,###.##'));
        
      If Discoratecode.Text = 'R' then Inc(TConsumersR);
      If Discoratecode.Text = 'C' then Inc(TConsumersC);
      If Discoratecode.Text = 'P' then Inc(TConsumersP);
      If Discoratecode.Text = 'I' then Inc(TConsumersI);
      If Discoratecode.Text = 'S' then Inc(TConsumersS);

      TAmount := TAmount + DiscoAmount.AsCurrency;

      Inc(LineCount);
      if LineCount = 50 then
        begin
          HeadSW := 0;
          LineCount := 0;
          Inc(PageCount);
          Writeln(lst, '-------------------------------------------------------------------------------');
          Write(Lst, #12);
        end;
     Disco.Next;
    end;

  if LineCount > 0 then
    Writeln(lst, '-------------------------------------------------------------------------------');
    Writeln(lst, 'Total  Res ',IntToStr(TConsumersR):4,
                 '  Comm ',IntToStr(TConsumersC):4,
                 '  PB ',IntToStr(TConsumersP):4,
                 '  Ind ',IntToStr(TConsumersI):4,
                 '  SL ',IntToStr(TConsumersS):4,
                 '    Amount ',Format(TAmount,'#,###,###.##'));
    Writeln(lst, '-------------------------------------------------------------------------------');

  Disco.Active := false;
  CloseFile(Lst);
  ShowMessage('Done.');
end;

procedure TDiscoSummForm.DsFancyButton5Click(Sender: TObject);
begin
  Panel3.Left    := 221;
  Panel3.Top     := 126;
  Panel3.Visible := True;
  Area.SetFocus;
end;

procedure TDiscoSummForm.DsFancyButton7Click(Sender: TObject);
begin
  Panel3.Visible := False;
end;

end.
