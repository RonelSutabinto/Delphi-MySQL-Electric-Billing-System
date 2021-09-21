unit AgingAnalysisSummary;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, Mask, PDJSillyLabel, StdCtrls, Gradient, DB,
  DBTables;

type
  TAgingAnalysisSummaryForm = class(TForm)
    Panel1: TPanel;
    Label14: TLabel;
    Label29: TLabel;
    AgingArea: TEdit;
    PDJSillyLabel11: TPDJSillyLabel;
    PDJSillyLabel12: TPDJSillyLabel;
    AgingBillMonth: TEdit;
    UnPaidBills: TTable;
    Vicinity: TTable;
    Master: TTable;
    MasterSource: TDataSource;
    MasterAccountNumber: TStringField;
    MasterName: TStringField;
    MasterRateCode: TStringField;
    MasterArea: TStringField;
    MasterBook: TStringField;
    MasterCode: TAutoIncField;
    VicinityAddress: TStringField;
    VicinityArea: TStringField;
    VicinityBook: TStringField;
    UnPaidBillsDate: TDateField;
    UnPaidBillsAmount: TCurrencyField;
    UnPaidBillsBillMonth: TStringField;
    UnPaidBillsAccountNumber: TStringField;
    UnPaidBillsCode: TFloatField;
    UnPaidBillsRateCode: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PDJSillyLabel11Click(Sender: TObject);
    procedure PDJSillyLabel12Click(Sender: TObject);
    procedure CloseTable(Table: TTable);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AgingAnalysisSummaryForm: TAgingAnalysisSummaryForm;
  Lst              : Text;
  HeadingSW        : Boolean;
  PageCount        : Word;
  LineCount        : Word;
  TotalConsumer    : Word;

  RCount            : Word;
  RCurrent          : Currency;
  RAge30Days        : Currency;
  RAge60Days        : Currency;
  RAge90Days        : Currency;
  RAge120Days       : Currency;
  RAgeOver120Days   : Currency;
  RAgeTotal         : Currency;

  BCount            : Word;
  BCurrent          : Currency;
  BAge30Days        : Currency;
  BAge60Days        : Currency;
  BAge90Days        : Currency;
  BAge120Days       : Currency;
  BAgeOver120Days   : Currency;
  BAgeTotal         : Currency;

  CCount            : Word;
  CCurrent          : Currency;
  CAge30Days        : Currency;
  CAge60Days        : Currency;
  CAge90Days        : Currency;
  CAge120Days       : Currency;
  CAgeOver120Days   : Currency;
  CAgeTotal         : Currency;

  ICount            : Word;
  ICurrent          : Currency;
  IAge30Days        : Currency;
  IAge60Days        : Currency;
  IAge90Days        : Currency;
  IAge120Days       : Currency;
  IAgeOver120Days   : Currency;
  IAgeTotal         : Currency;

  PCount            : Word;
  PCurrent          : Currency;
  PAge30Days        : Currency;
  PAge60Days        : Currency;
  PAge90Days        : Currency;
  PAge120Days       : Currency;
  PAgeOver120Days   : Currency;
  PAgeTotal         : Currency;

  SCount            : Word;
  SCurrent          : Currency;
  SAge30Days        : Currency;
  SAge60Days        : Currency;
  SAge90Days        : Currency;
  SAge120Days       : Currency;
  SAgeOver120Days   : Currency;
  SAgeTotal         : Currency;

  Current          : Currency;
  Age30Days        : Currency;
  Age60Days        : Currency;
  Age90Days        : Currency;
  Age120Days       : Currency;
  AgeOver120Days   : Currency;
  AgeTotal         : Currency;

  TCurrent         : Currency;
  TAge30Days       : Currency;
  TAge60Days       : Currency;
  TAge90Days       : Currency;
  TAge120Days      : Currency;
  TAgeOver120Days  : Currency;
  TAgeTotal        : Currency;

implementation

uses StatusUpdate, ModTools, DateUtils;

{$R *.dfm}

procedure TAgingAnalysisSummaryForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
   AgingAnalysisSummaryForm := Nil;
end;

procedure TAgingAnalysisSummaryForm.PDJSillyLabel11Click(Sender: TObject);
begin
  Close;
end;

Procedure TAgingAnalysisSummaryForm.CloseTable(Table: TTable);
begin
  if (Table.Active) then
    Table.Close;
end;

procedure TAgingAnalysisSummaryForm.PDJSillyLabel12Click(Sender: TObject);
var
  Months           : Integer;

Procedure PrintHeading;
begin
  Write(Lst,#18);
  Writeln(lst,#27 + 'P'+'PAGE # '+IntToStr(PageCount));
  Writeln(lst,JustStr('SURIGAO DEL SUR II ELECTRIC COOPERATIVE, INC.',' ',130,2));
  Writeln(lst,JustStr('(SURSECO II)',' ',130,2));
  Writeln(lst,JustStr(FormatDateTime('mmmm dd, yyyy', Date),' ',130,1));
  Writeln(lst,#27 + '4',JustStr('AGING ANALYSIS PER TOWN',' ',130,2),#27+'5');
  Writeln(lst,JustStr('For the Month of ' + MonthStr(Copy(AgingBillMonth.Text,1,2), fmLong) + ', ''' + Copy(AgingBillMonth.Text,3,2),' ',130,2));
  Writeln(Lst);
  Writeln(lst,'AREA/TOWN : '+AgingArea.Text);
  Write(Lst,#27+'M');
  Writeln(lst,'|------------------------------------------------------------------------------------------------------------------------------------|');
  Writeln(lst,'|ACCT#    TYP  NAME                              CURRENT   1-30 DAYS  31-60 DAYS  61-90 DAYS  91-120 DAYS     OVER 120     T O T A L');
  Writeln(lst,'|------------------------------------------------------------------------------------------------------------------------------------|');
end;

begin

  Vicinity.Open;
  if not (Vicinity.Locate('Area', AgingArea.Text, [loCaseInsensitive])) then
  begin
    ShowMessage('Area Code invalid.');
    AgingArea.SetFocus;
    Exit;
  end;

  TotalConsumer  := 0;
  LineCount      := 0;
  PageCount      := 1;

  // Prompt for confirmation
  if (MessageDlg('Print Aging Analysis?'+#13+'Please turn the printer on.',
    mtConfirmation, mbOkCancel, 0) = mrCancel) then
      Exit;

  // DONE -oLeslee : AssignFile to LPT1
  AssignFile(Lst,'LPT1');
  Rewrite(Lst);
  If IOResult <> 0 then
  begin
   MessageDlg('Printer not Ready', mtError, [mbOk], 0);
   Exit;
  end;

  HeadingSW := True;

  Master.Filter :=  'Area = ' + QuotedStr(AgingArea.Text);
  Master.Filtered := True;

  UnPaidBills.MasterSource := MasterSource;
  UnPaidBills.MasterFields := 'Code';
  UnPaidBills.IndexName := 'UnPBCode';

  Master.Open;
  UnPaidBills.Open;

  If not assigned(BillingStatusUpdateForm) then
  BillingStatusUpdateForm := TBillingStatusUpdateForm.Create(Application);
  BillingStatusUpdateForm.Caption := 'AGING ANALYSIS';
  BillingStatusUpdateForm.Label1.Caption := 'Printing Aging Analysis.....';
  BillingStatusUpdateForm.Show;

  BillingStatusUpdateForm.ProgressBar1.Min := 0;
  BillingStatusUpdateForm.ProgressBar1.Max := Master.RecordCount;

  BillingStatusUpdateForm.ProgressBar1.Position := 0;

  RCount            := 0;
  RCurrent          := 0;
  RAge30Days        := 0;
  RAge60Days        := 0;
  RAge90Days        := 0;
  RAge120Days       := 0;
  RAgeOver120Days   := 0;
  RAgeTotal         := 0;

  BCount            := 0;
  BCurrent          := 0;
  BAge30Days        := 0;
  BAge60Days        := 0;
  BAge90Days        := 0;
  BAge120Days       := 0;
  BAgeOver120Days   := 0;
  BAgeTotal         := 0;

  CCount            := 0;
  CCurrent          := 0;
  CAge30Days        := 0;
  CAge60Days        := 0;
  CAge90Days        := 0;
  CAge120Days       := 0;
  CAgeOver120Days   := 0;
  CAgeTotal         := 0;

  ICount            := 0;
  ICurrent          := 0;
  IAge30Days        := 0;
  IAge60Days        := 0;
  IAge90Days        := 0;
  IAge120Days       := 0;
  IAgeOver120Days   := 0;
  IAgeTotal         := 0;

  PCount            := 0;
  PCurrent          := 0;
  PAge30Days        := 0;
  PAge60Days        := 0;
  PAge90Days        := 0;
  PAge120Days       := 0;
  PAgeOver120Days   := 0;
  PAgeTotal         := 0;

  SCount            := 0;
  SCurrent          := 0;
  SAge30Days        := 0;
  SAge60Days        := 0;
  SAge90Days        := 0;
  SAge120Days       := 0;
  SAgeOver120Days   := 0;
  SAgeTotal         := 0;

  TCurrent          := 0;
  TAge30Days        := 0;
  TAge60Days        := 0;
  TAge120Days       := 0;
  TAgeOver120Days   := 0;
  TAgeTotal         := 0;

  try
    Master.First;
    while not Master.Eof do
    begin
      Application.ProcessMessages;

      If HeadingSW then
      begin
       PrintHeading;
       HeadingSW := False;
      end;

      Current          := 0;
      Age30Days        := 0;
      Age60Days        := 0;
      Age90Days        := 0;
      Age120Days       := 0;
      AgeOver120Days   := 0;
      AgeTotal         := 0;

      UnPaidBills.First;
      while not UnPaidBills.Eof do
      begin
        Months := StrToInt(Copy(AgingBillMonth.Text, 3, 2) + Copy(AgingBillMonth.Text, 1, 2)) -
        StrToInt(Copy(UnPaidBillsBillMonth.Text, 3, 2) + Copy(UnPaidBillsBillMonth.Text, 1, 2));

        If (Months = 0) then
        begin
          Current         := Current + UnPaidBillsAmount.AsCurrency ;
          TCurrent        := TCurrent + UnPaidBillsAmount.AsCurrency ;
          if (UnPaidBillsRateCode.Text = 'R') then RCurrent := RCurrent + UnPaidBillsAmount.AsCurrency ;
          if (UnPaidBillsRateCode.Text = 'C') then CCurrent := CCurrent + UnPaidBillsAmount.AsCurrency ;
          if (UnPaidBillsRateCode.Text = 'I') then ICurrent := ICurrent + UnPaidBillsAmount.AsCurrency ;
          if (UnPaidBillsRateCode.Text = 'P') then PCurrent := PCurrent + UnPaidBillsAmount.AsCurrency ;
          if (UnPaidBillsRateCode.Text = 'S') then SCurrent := SCurrent + UnPaidBillsAmount.AsCurrency ;
          if (UnPaidBillsRateCode.Text = 'B') then BCurrent := BCurrent + UnPaidBillsAmount.AsCurrency ;
        end;

        If (Months = 1) then
        begin
          Age30Days         := Age30Days + UnPaidBillsAmount.AsCurrency ;
          TAge30Days        := TAge30Days + UnPaidBillsAmount.AsCurrency ;
          if (UnPaidBillsRateCode.Text = 'R') then RAge30Days := RAge30Days + UnPaidBillsAmount.AsCurrency ;
          if (UnPaidBillsRateCode.Text = 'C') then CAge30Days := CAge30Days + UnPaidBillsAmount.AsCurrency ;
          if (UnPaidBillsRateCode.Text = 'I') then IAge30Days := IAge30Days + UnPaidBillsAmount.AsCurrency ;
          if (UnPaidBillsRateCode.Text = 'P') then PAge30Days := PAge30Days + UnPaidBillsAmount.AsCurrency ;
          if (UnPaidBillsRateCode.Text = 'S') then SAge30Days := SAge30Days + UnPaidBillsAmount.AsCurrency ;
          if (UnPaidBillsRateCode.Text = 'B') then BAge30Days := BAge30Days + UnPaidBillsAmount.AsCurrency ;
        end;

        If (Months = 2) then
        begin
          Age60Days         := Age60Days + UnPaidBillsAmount.AsCurrency ;
          TAge60Days        := TAge60Days + UnPaidBillsAmount.AsCurrency ;
          if (UnPaidBillsRateCode.Text = 'R') then RAge60Days := RAge60Days + UnPaidBillsAmount.AsCurrency ;
          if (UnPaidBillsRateCode.Text = 'C') then CAge60Days := CAge60Days + UnPaidBillsAmount.AsCurrency ;
          if (UnPaidBillsRateCode.Text = 'I') then IAge60Days := IAge60Days + UnPaidBillsAmount.AsCurrency ;
          if (UnPaidBillsRateCode.Text = 'P') then PAge60Days := PAge60Days + UnPaidBillsAmount.AsCurrency ;
          if (UnPaidBillsRateCode.Text = 'S') then SAge60Days := SAge60Days + UnPaidBillsAmount.AsCurrency ;
          if (UnPaidBillsRateCode.Text = 'B') then BAge60Days := BAge60Days + UnPaidBillsAmount.AsCurrency ;
        end;

        If (Months = 3) then
        begin
          Age90Days         := Age90Days + UnPaidBillsAmount.AsCurrency ;
          TAge90Days        := TAge90Days + UnPaidBillsAmount.AsCurrency ;
          if (UnPaidBillsRateCode.Text = 'R') then RAge90Days := RAge90Days + UnPaidBillsAmount.AsCurrency ;
          if (UnPaidBillsRateCode.Text = 'C') then CAge90Days := CAge90Days + UnPaidBillsAmount.AsCurrency ;
          if (UnPaidBillsRateCode.Text = 'I') then IAge90Days := IAge90Days + UnPaidBillsAmount.AsCurrency ;
          if (UnPaidBillsRateCode.Text = 'P') then PAge90Days := PAge90Days + UnPaidBillsAmount.AsCurrency ;
          if (UnPaidBillsRateCode.Text = 'S') then SAge90Days := SAge90Days + UnPaidBillsAmount.AsCurrency ;
          if (UnPaidBillsRateCode.Text = 'B') then BAge90Days := BAge90Days + UnPaidBillsAmount.AsCurrency ;
        end;

        If (Months = 4) then
        begin
          Age120Days         := Age120Days + UnPaidBillsAmount.AsCurrency ;
          TAge120Days        := TAge120Days + UnPaidBillsAmount.AsCurrency ;
          if (UnPaidBillsRateCode.Text = 'R') then RAge120Days := RAge120Days + UnPaidBillsAmount.AsCurrency ;
          if (UnPaidBillsRateCode.Text = 'C') then CAge120Days := CAge120Days + UnPaidBillsAmount.AsCurrency ;
          if (UnPaidBillsRateCode.Text = 'I') then IAge120Days := IAge120Days + UnPaidBillsAmount.AsCurrency ;
          if (UnPaidBillsRateCode.Text = 'P') then PAge120Days := PAge120Days + UnPaidBillsAmount.AsCurrency ;
          if (UnPaidBillsRateCode.Text = 'S') then SAge120Days := SAge120Days + UnPaidBillsAmount.AsCurrency ;
          if (UnPaidBillsRateCode.Text = 'B') then BAge120Days := BAge120Days + UnPaidBillsAmount.AsCurrency ;
        end;

        If (Months > 4) then
        begin
          AgeOver120Days         := AgeOver120Days + UnPaidBillsAmount.AsCurrency ;
          TAgeOver120Days        := TAgeOver120Days + UnPaidBillsAmount.AsCurrency ;
          if (UnPaidBillsRateCode.Text = 'R') then RAgeOver120Days := RAgeOver120Days + UnPaidBillsAmount.AsCurrency ;
          if (UnPaidBillsRateCode.Text = 'C') then CAgeOver120Days := CAgeOver120Days + UnPaidBillsAmount.AsCurrency ;
          if (UnPaidBillsRateCode.Text = 'I') then IAgeOver120Days := IAgeOver120Days + UnPaidBillsAmount.AsCurrency ;
          if (UnPaidBillsRateCode.Text = 'P') then PAgeOver120Days := PAgeOver120Days + UnPaidBillsAmount.AsCurrency ;
          if (UnPaidBillsRateCode.Text = 'S') then SAgeOver120Days := SAgeOver120Days + UnPaidBillsAmount.AsCurrency ;
          if (UnPaidBillsRateCode.Text = 'B') then BAgeOver120Days := BAgeOver120Days + UnPaidBillsAmount.AsCurrency ;
        end;

        If (Months >= 0) then
        begin
          AgeTotal         := AgeTotal + UnPaidBillsAmount.AsCurrency ;
          TAgeTotal        := TAgeTotal + UnPaidBillsAmount.AsCurrency ;
          if (UnPaidBillsRateCode.Text = 'R') then RAgeTotal := RAgeTotal + UnPaidBillsAmount.AsCurrency ;
          if (UnPaidBillsRateCode.Text = 'C') then CAgeTotal := CAgeTotal + UnPaidBillsAmount.AsCurrency ;
          if (UnPaidBillsRateCode.Text = 'I') then IAgeTotal := IAgeTotal + UnPaidBillsAmount.AsCurrency ;
          if (UnPaidBillsRateCode.Text = 'P') then PAgeTotal := PAgeTotal + UnPaidBillsAmount.AsCurrency ;
          if (UnPaidBillsRateCode.Text = 'S') then SAgeTotal := SAgeTotal + UnPaidBillsAmount.AsCurrency ;
          if (UnPaidBillsRateCode.Text = 'B') then BAgeTotal := BAgeTotal + UnPaidBillsAmount.AsCurrency ;
        end;

        UnPaidBills.Next;
      end;

      // Print only the accounts with aging
      if (AgeTotal > 0) then
      begin
        Inc(TotalConsumer);
        if (MasterRateCode.Text = 'R') then Inc(RCount);
        if (MasterRateCode.Text = 'C') then Inc(CCount);
        if (MasterRateCode.Text = 'I') then Inc(ICount);
        if (MasterRateCode.Text = 'P') then Inc(PCount);
        if (MasterRateCode.Text = 'S') then Inc(SCount);
        if (MasterRateCode.Text = 'B') then Inc(BCount);
      end;

      BillingStatusUpdateForm.ProgressBar1.StepBy(1);
      Master.Next;
    end;

    // Print GRAND TOTALS 
    Writeln(lst,'|------------------------------------------------------------------------------------------------------------------------------------|');
    Writeln(lst,'|','              Residential            ',
                    JustStr(IntToStr(RCount), ' ', 7, 1),
                    Format(RCurrent,'###,###.##'),
                    Format(RAge30Days,'###,###.##'),
                    Format(RAge60Days,'###,###.##'),
                    Format(RAge90Days,'###,###.##'),
                    Format(RAge120Days,'###,###.##'),
                    Format(RAgeOver120Days,'#,###,###.##'),
                    Format(RAgeTotal,'#,###,###.##'),
                    '|');
    Writeln(lst,'|','              Commercial             ',
                    JustStr(IntToStr(CCount), ' ', 7, 1),
                    Format(CCurrent,'###,###.##'),
                    Format(CAge30Days,'###,###.##'),
                    Format(CAge60Days,'###,###.##'),
                    Format(CAge90Days,'###,###.##'),
                    Format(CAge120Days,'###,###.##'),
                    Format(CAgeOver120Days,'#,###,###.##'),
                    Format(CAgeTotal,'#,###,###.##'),
                    '|');
    Writeln(lst,'|','              Industrial             ',
                    JustStr(IntToStr(ICount), ' ', 7, 1),
                    Format(ICurrent,'###,###.##'),
                    Format(IAge30Days,'###,###.##'),
                    Format(IAge60Days,'###,###.##'),
                    Format(IAge90Days,'###,###.##'),
                    Format(IAge120Days,'###,###.##'),
                    Format(IAgeOver120Days,'#,###,###.##'),
                    Format(IAgeTotal,'#,###,###.##'),
                    '|');
    Writeln(lst,'|','              Public Building        ',
                    JustStr(IntToStr(PCount), ' ', 7, 1),
                    Format(PCurrent,'###,###.##'),
                    Format(PAge30Days,'###,###.##'),
                    Format(PAge60Days,'###,###.##'),
                    Format(PAge90Days,'###,###.##'),
                    Format(PAge120Days,'###,###.##'),
                    Format(PAgeOver120Days,'#,###,###.##'),
                    Format(PAgeTotal,'#,###,###.##'),
                    '|');
    Writeln(lst,'|','              Street Lights          ',
                    JustStr(IntToStr(SCount), ' ', 7, 1),
                    Format(SCurrent,'###,###.##'),
                    Format(SAge30Days,'###,###.##'),
                    Format(SAge60Days,'###,###.##'),
                    Format(SAge90Days,'###,###.##'),
                    Format(SAge120Days,'###,###.##'),
                    Format(SAgeOver120Days,'#,###,###.##'),
                    Format(SAgeTotal,'#,###,###.##'),
                    '|');
    Writeln(lst,'|','              BAPA                   ',
                    JustStr(IntToStr(BCount), ' ', 7, 1),
                    Format(BCurrent,'###,###.##'),
                    Format(BAge30Days,'###,###.##'),
                    Format(BAge60Days,'###,###.##'),
                    Format(BAge90Days,'###,###.##'),
                    Format(BAge120Days,'###,###.##'),
                    Format(BAgeOver120Days,'#,###,###.##'),
                    Format(BAgeTotal,'#,###,###.##'),
                    '|');
    Writeln(lst,'|------------------------------------------------------------------------------------------------------------------------------------|');
    Writeln(lst,'|','              GRAND TOTAL            ',
                    JustStr(IntToStr(TotalConsumer), ' ', 7, 1),
                    Format(TCurrent,'###,###.##'),
                    Format(TAge30Days,'###,###.##'),
                    Format(TAge60Days,'###,###.##'),
                    Format(TAge90Days,'###,###.##'),
                    Format(TAge120Days,'###,###.##'),
                    Format(TAgeOver120Days,'#,###,###.##'),
                    Format(TAgeTotal,'#,###,###.##'),
                    '|');
    Writeln(lst,'|------------------------------------------------------------------------------------------------------------------------------------|');
    Write(lst,#18,#12);
    CloseFile(Lst);

    BillingStatusUpdateForm.FormStyle := fsNormal;
    MessageDlg('Printing done.', mtInformation, [mbOk], 0);

  finally
    BillingStatusUpdateForm.Close;
    CloseTable(Master);
    CloseTable(UnPaidBills);
    CloseTable(Vicinity);
  end;
end;


end.
