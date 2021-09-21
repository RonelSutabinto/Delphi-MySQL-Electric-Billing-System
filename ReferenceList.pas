unit ReferenceList;

interface

uses
  Windows,
  Messages,
  SysUtils,
  Variants,
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,
  StdCtrls,
  Buttons,
  Mask,
  ExtCtrls,
  ComCtrls,
  DB,
  MemDS,
  DBAccess,
  MyAccess;

type
  TReferenceListForm = class(TForm)
    Panel7: TPanel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    DateFrom: TDateTimePicker;
    DateTo: TDateTimePicker;
    StaticText1: TStaticText;
    Bevel1: TBevel;
    Edit1: TEdit;
    Label1: TLabel;
    RadioGroup1: TRadioGroup;
    Bevel2: TBevel;
    Disco: TMyQuery;
    Recon: TMyQuery;
    ChangeMeter: TMyQuery;
    Master: TMyQuery;
    ChangeName: TMyQuery;
    MasterCode: TIntegerField;
    MasterArea: TStringField;
    MasterBook: TStringField;
    MasterSequence: TStringField;
    MasterAccountNumber: TStringField;
    MasterName: TStringField;
    MasterAddress: TStringField;
    MasterRateCode: TStringField;
    MasterRateString: TStringField;
    MasterConsCode: TStringField;
    MasterConnCode: TStringField;
    MasterConsPic: TBlobField;
    MasterTransformer: TStringField;
    MasterMeterBrand: TStringField;
    MasterSerial: TStringField;
    MasterMultiplier: TFloatField;
    MasterNewConnectionDate: TDateField;
    MasterNewConnectionORNumber: TStringField;
    MasterNewConnectionORDate: TDateField;
    MasterReconnectionDate: TDateField;
    MasterDisconnectionDate: TDateField;
    MasterPreviousReadingDate: TDateField;
    MasterPresentReadingDate: TDateField;
    MasterPreviousReadingKWH: TFloatField;
    MasterPresentReadingKWH: TFloatField;
    MasterDiff: TFloatField;
    MasterDemand: TFloatField;
    MasterFlatRateWattage: TFloatField;
    MasterFeedBackCode: TStringField;
    MasterCM: TStringField;
    MasterCMMultiplier: TFloatField;
    MasterCMPreviousReadingKWH: TFloatField;
    MasterCMPresentReadingKWH: TFloatField;
    MasterCMKilowattHour: TFloatField;
    MasterCMDemand: TFloatField;
    MasterCMFeebBack: TStringField;
    MasterKilowattHour: TFloatField;
    MasterKilowattUsed: TFloatField;
    MasterGenSysCharge: TFloatField;
    MasterHostCommCharge: TFloatField;
    MasterFPCA: TFloatField;
    MasterForexCharge: TFloatField;
    MasterTCDemandCharge: TFloatField;
    MasterTCTransSystemCharge: TFloatField;
    MasterSystemLossCharge: TFloatField;
    MasterDCDemandCharge: TFloatField;
    MasterDCDistributionCharge: TFloatField;
    MasterSCRetCustCharge: TFloatField;
    MasterSCSupplySysCharge: TFloatField;
    MasterMCRetailCustCharge: TFloatField;
    MasterMCSystemCharge: TFloatField;
    MasterUCNPCStrandedDebts: TFloatField;
    MasterUCNPCStrandedContCost: TFloatField;
    MasterUCDUStrandedContCost: TFloatField;
    MasterUCME: TFloatField;
    MasterUCEqTaxesAndRoyalties: TFloatField;
    MasterUCEC: TFloatField;
    MasterUCCrossSubRemoval: TFloatField;
    MasterICCrossSubsidyCharge: TFloatField;
    MasterPowerActRateRed: TFloatField;
    MasterLifelineDiscSubs: TFloatField;
    MasterLoanCondo: TFloatField;
    MasterTransformerRental: TFloatField;
    MasterOCCode1: TStringField;
    MasterOCAmount1: TFloatField;
    MasterOCMo1: TFloatField;
    MasterOCTotal1: TFloatField;
    MasterOCCode2: TStringField;
    MasterOCAmount2: TFloatField;
    MasterOCMo2: TFloatField;
    MasterOCTotal2: TFloatField;
    MasterOCCode3: TStringField;
    MasterOCAmount3: TFloatField;
    MasterOCMo3: TFloatField;
    MasterOCTotal3: TFloatField;
    MasterTotalBill: TFloatField;
    MasterBillNumber: TStringField;
    MasterOEBRNumber: TStringField;
    MasterBillMonth: TStringField;
    MasterPoleNumber: TStringField;
    MasterFeederNumber: TStringField;
    MasterAge30: TFloatField;
    MasterAge60: TFloatField;
    MasterAge90: TFloatField;
    MasterAge120: TFloatField;
    MasterAgeOver120: TFloatField;
    MasterAgeTotal: TFloatField;
    MasterTotalPayments: TFloatField;
    MasterGrid: TStringField;
    MasterARBalance: TFloatField;
    MasterConsCount: TIntegerField;
    MasterGrossKilowattHour: TFloatField;
    MasterLessKilowattHour: TFloatField;
    MasterSumBillMonth: TStringField;
    MasterCoreloss: TFloatField;
    MasterBillDate: TDateField;
    MasterRoverBook: TStringField;
    MasterValidatedBy: TStringField;
    MasterEncodedBy: TStringField;
    MasterAverageLoad: TFloatField;
    DiscoEntry: TIntegerField;
    DiscoCode: TFloatField;
    DiscoDate: TDateField;
    DiscoArea: TStringField;
    DiscoBook: TStringField;
    DiscoSequence: TStringField;
    DiscoAccountNumber: TStringField;
    DiscoName: TStringField;
    DiscoLastReading: TFloatField;
    DiscoMeterBrand: TStringField;
    DiscoSerialNumber: TStringField;
    Discoaccountnumber_1: TStringField;
    Discoroverbook: TStringField;
    ReconEntry: TIntegerField;
    ReconCode: TFloatField;
    ReconDate: TDateField;
    ReconArea: TStringField;
    ReconBook: TStringField;
    ReconSequence: TStringField;
    ReconAccountNumber: TStringField;
    ReconName: TStringField;
    ReconInitialReading: TFloatField;
    ReconMeterBrand: TStringField;
    ReconSerialNumber: TStringField;
    Reconaccountnumber_1: TStringField;
    Reconroverbook: TStringField;
    ChangeMeterEntry: TIntegerField;
    ChangeMeterCode: TFloatField;
    ChangeMeterDate: TDateField;
    ChangeMeterArea: TStringField;
    ChangeMeterBook: TStringField;
    ChangeMeterSequence: TStringField;
    ChangeMeterAccountNumber: TStringField;
    ChangeMeterName: TStringField;
    ChangeMeterLastReading: TFloatField;
    ChangeMeterOldMeterBrand: TStringField;
    ChangeMeterOldSerialNumber: TStringField;
    ChangeMeterOldMeterMult: TFloatField;
    ChangeMeterInitialReading: TFloatField;
    ChangeMeterNewMeterBrand: TStringField;
    ChangeMeterNewMeterSerial: TStringField;
    ChangeMeterNewMeterMult: TFloatField;
    ChangeMeterFeedback: TStringField;
    ChangeMeterAveCons: TFloatField;
    ChangeMeteraccountnumber_1: TStringField;
    ChangeMeterroverbook: TStringField;
    ChangeNameEntry: TIntegerField;
    ChangeNameCode: TFloatField;
    ChangeNameDate: TDateField;
    ChangeNameArea: TStringField;
    ChangeNameBook: TStringField;
    ChangeNameSequence: TStringField;
    ChangeNameAccountNumber: TStringField;
    ChangeNameOldName: TStringField;
    ChangeNameNewName: TStringField;
    ChangeNameaccountnumber_1: TStringField;
    ChangeNameroverbook: TStringField;
    TransferArea: TMyQuery;
    IntegerField1: TIntegerField;
    FloatField1: TFloatField;
    DateField1: TDateField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    Edit2: TEdit;
    Label2: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ReferenceListForm: TReferenceListForm;

implementation

uses 
  StatusUpdate,
  BillMenu,
  ModTools, Data;

var
  Lst     : Text;

{$R *.dfm}

  // New Connection Reference

procedure TReferenceListForm.BitBtn1Click(Sender: TObject);
var
  PageCount, LineCount, HeadSW: Word;

  procedure Heading;
  begin
    Write(Lst, #18, #27 + 'P');
    writeln(lst, 'Page #            : ', PageCount);
    writeln(lst, 'Report Name       : NEW CONNECTION REFERENCE');
    If RadioGroup1.ItemIndex = 0 then
    writeln(lst, 'Roverbook         : ',Edit1.Text);
    writeln(lst, 'Period Covered    : ',DateToStr(DateFrom.Date), ' - ',DatetoStr(DateTo.Date));
    Write(lst, #27 + 'M');
    Writeln(lst, '--------------------------------------------------------------------------------------------------');
    Writeln(lst, 'Ar. Bk. Seq.  ACCT #  Consumer Name                Address              RC CT CN MB/Serial    Mult');
    Writeln(lst, '--------------------------------------------------------------------------------------------------');
  end;

begin

  Master.Active := False;
  Master.ParamByName('Datefrom').AsDate := datefrom.Date;
  Master.ParamByName('Dateto').AsDate   := dateto.Date;
  if RadioGroup1.ItemIndex = 0 then
  begin
  Master.ParamByName('area').Text  := edit1.Text;
  Master.ParamByName('book').Text  := edit2.Text;
  end
  else
  begin
  Master.ParamByName('area').Text  := '%';
  Master.ParamByName('book').Text  := '%';
  end;
  Master.open;

  If Master.IsEmpty then
   begin
    MessageDlg('There are no records to print for that selection.', mtInformation, [mbOK], 0);
    Master.close;
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

  if not assigned(BillingStatusUpdateForm) then
    BillingStatusUpdateForm := TBillingStatusUpdateForm.Create(Application);
  BillingStatusUpdateForm.Label1.Caption := 'New Connection List.....';
  BillingStatusUpdateForm.Show;


  BillingStatusUpdateForm.ProgressBar1.Position := 0;
  BillingStatusUpdateForm.ProgressBar1.Min := 0;
  BillingStatusUpdateForm.ProgressBar1.Max := Master.RecordCount;

  LineCount := 0;
  HeadSw := 0;

  Master.First;

  while not Master.Eof do
    begin
      BillingStatusUpdateForm.ProgressBar1.StepBy(1);
      Application.ProcessMessages;

      if HeadSW = 0 then
        begin
          HeadSW := 1;
          Heading;
        end;

      Writeln(Lst, JustStr(MasterArea.Text, ' ', 3, 0), ' ',
        JustStr(MasterBook.Text, ' ', 3, 0), ' ',
        JustStr(MasterSequence.Text, ' ', 4, 0), ' ',
        JustStr(MasterAccountNumber.Text, ' ', 8, 0), ' ',
        JustStr(MasterName.Text, ' ', 28, 0), ' ',
        JustStr(MasterAddress.Text, ' ', 20, 0), ' ',
        JustStr(MasterRateCode.Text, ' ', 1, 0), '  ',
        JustStr(MasterConsCode.Text, ' ', 1, 0), '  ',
        JustStr(MasterConnCode.Text, ' ', 1, 0), '  ',
        JustStr(MasterMeterBrand.Text, ' ', 2, 0),
        JustStr(MasterSerial.Text, ' ', 10, 0), ' ',
        MasterMultiplier.AsInteger: 4);

      Inc(LineCount);
      if LineCount = 50 then
        begin
          HeadSW := 0;
          LineCount := 0;
          Inc(PageCount);
          Writeln(lst, '--------------------------------------------------------------------------------------------------');
          Write(Lst, #12);
        end;

      Master.Next;
    end;

  Master.Close;
  if LineCount > 0 then
  Writeln(lst, '--------------------------------------------------------------------------------------------------');
  BillingStatusUpdateForm.Close;
  ShowMessage('Done.');
  CloseFile(Lst);
end;

//Disconnection Reference

procedure TReferenceListForm.BitBtn2Click(Sender: TObject);
var
  PageCount, LineCount, HeadSW: Word;

  procedure Heading;
  begin
    Write(Lst, #18, #27 + 'P');
    writeln(lst, 'Page #            : ', PageCount);
    writeln(lst, 'Report Name       : DISCONNECTION REFERENCE');
    If RadioGroup1.ItemIndex = 0 then
    writeln(lst, 'Roverbook         : ',Edit1.Text);
    writeln(lst, 'Period Covered    : ',DateToStr(DateFrom.Date), ' - ',DatetoStr(DateTo.Date));
    Writeln(lst, '-------------------------------------------------------------------------------');
    Writeln(lst, 'Ar. Bk. Seq.  ACCT #  Consumer Name                  Last Read Brand Serial    ');
    Writeln(lst, '-------------------------------------------------------------------------------');
  end;

begin

  Disco.Active := False;
  Disco.ParamByName('Datefrom').AsDate := datefrom.Date;
  Disco.ParamByName('Dateto').AsDate   := dateto.Date;
  if RadioGroup1.ItemIndex = 0 then
  begin
  Disco.ParamByName('area').Text  := edit1.Text;
  Disco.ParamByName('book').Text  := edit2.Text;
  end
  else
  begin
  Disco.ParamByName('area').Text  := '%';
  Disco.ParamByName('book').Text  := '%';
  end;
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

  if not assigned(BillingStatusUpdateForm) then
    BillingStatusUpdateForm := TBillingStatusUpdateForm.Create(Application);
  BillingStatusUpdateForm.Label1.Caption := 'Disconnection List.....';
  BillingStatusUpdateForm.Show;

  {Disconnections}
  with BillingData do
    begin
      Disco.First;
      BillingStatusUpdateForm.ProgressBar1.Position := 0;
      BillingStatusUpdateForm.ProgressBar1.Min := 0;
      BillingStatusUpdateForm.ProgressBar1.Max := Disco.RecordCount;

      LineCount := 0;
      HeadSw := 0;

      Disco.First;

      while not Disco.Eof do
        begin
          BillingStatusUpdateForm.ProgressBar1.StepBy(1);
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
            JustStr(DiscoName.Text, ' ', 30, 0), ' ',
            ReconInitialReading.AsInteger: 9, ' ',
            JustStr(DiscoMeterBrand.Text, ' ', 5, 0), ' ',
            JustStr(DiscoSerialNumber.Text, ' ', 10, 0), ' ');

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
    end;

  if LineCount > 0 then
    Writeln(lst, '-------------------------------------------------------------------------------');

  Disco.Active := false;
  BillingStatusUpdateForm.Close;
  CloseFile(Lst);
  ShowMessage('Done.');
end;

//Reconnection Reference

procedure TReferenceListForm.BitBtn3Click(Sender: TObject);
var
  PageCount, LineCount, HeadSW: Word;

  procedure Heading;
  begin
    Write(Lst, #18, #27 + 'P');
    writeln(lst, 'Page #            : ', PageCount);
    writeln(lst, 'Report Name       :  RECONNECTION REFERENCE');
    If RadioGroup1.ItemIndex = 0 then
    writeln(lst, 'Roverbook         : ',Edit1.Text);
    writeln(lst, 'Period Covered    : ',DateToStr(DateFrom.Date), ' - ',DatetoStr(DateTo.Date));
    Writeln(lst, '-------------------------------------------------------------------------------');
    Writeln(lst, 'Ar. Bk. Seq.  ACCT #  Consumer Name                  Init Read Brand Serial    ');
    Writeln(lst, '-------------------------------------------------------------------------------');
  end;

begin

  Recon.Active := False;
  Recon.ParamByName('Datefrom').AsDate := datefrom.Date;
  Recon.ParamByName('Dateto').AsDate   := dateto.Date;
  if RadioGroup1.ItemIndex = 0 then
  begin
  Recon.ParamByName('area').Text  := edit1.Text;
  Recon.ParamByName('book').Text  := edit2.Text;
  end
  else
  begin
  Recon.ParamByName('area').Text  := '%';
  Recon.ParamByName('book').Text  := '%';
  end;
  Recon.open;

  If Recon.IsEmpty then
   begin
    MessageDlg('There are no records to print for that selection.', mtInformation, [mbOK], 0);
    Recon.close;
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

  if not assigned(BillingStatusUpdateForm) then
    BillingStatusUpdateForm := TBillingStatusUpdateForm.Create(Application);
  BillingStatusUpdateForm.Label1.Caption := 'Reconnection List.....';
  BillingStatusUpdateForm.Show;

  with BillingData do
    begin

      Recon.First;
      BillingStatusUpdateForm.ProgressBar1.Position := 0;
      BillingStatusUpdateForm.ProgressBar1.Min := 0;
      BillingStatusUpdateForm.ProgressBar1.Max := Recon.RecordCount;

      LineCount := 0;
      HeadSw := 0;

      Recon.First;

      while not Recon.Eof do
        begin
          BillingStatusUpdateForm.ProgressBar1.StepBy(1);
          Application.ProcessMessages;

          if HeadSW = 0 then
            begin
              HeadSW := 1;
              Heading;
            end;

          Writeln(Lst, JustStr(ReconArea.Text, ' ', 3, 0), ' ',
            JustStr(ReconBook.Text, ' ', 3, 0), ' ',
            JustStr(ReconSequence.Text, ' ', 4, 0), ' ',
            JustStr(ReconAccountNumber.Text, ' ', 8, 0), ' ',
            JustStr(ReconName.Text, ' ', 30, 0), ' ',
            ReconInitialReading.AsInteger: 9, ' ',
            JustStr(ReconMeterBrand.Text, ' ', 5, 0), ' ',
            JustStr(ReconSerialNumber.Text, ' ', 10, 0), ' ');

          Inc(LineCount);
          if LineCount = 50 then
            begin
              HeadSW := 0;
              LineCount := 0;
              Inc(PageCount);
              Writeln(lst, '-------------------------------------------------------------------------------');
              Write(Lst, #12);
            end;
          Recon.Next;
        end;
    end;

  if LineCount > 0 then
    Writeln(lst, '-------------------------------------------------------------------------------');

  Recon.Active := False;
  BillingStatusUpdateForm.Close;
  CloseFile(Lst);
  ShowMessage('Done.');
end;

//Change Meter

procedure TReferenceListForm.BitBtn5Click(Sender: TObject);
var
  PageCount, LineCount, HeadSW: Word;

  procedure Heading;
  begin
    Write(Lst, #18, #27 + 'P');
    writeln(lst, 'Page #            : ', PageCount);
    writeln(lst, 'Report Name       :  CHANGE METER REFERENCE');
    If RadioGroup1.ItemIndex = 0 then
    writeln(lst, 'Roverbook         : ',Edit1.Text);
    writeln(lst, 'Period Covered    : ',DateToStr(DateFrom.Date), ' - ',DatetoStr(DateTo.Date));
    Writeln(lst, '----------------------------------------------------------------------------------------------------------');
    Writeln(lst, 'Ar. Bk. Seq.  ACCT #  Consumer Name                  Last Read Brand Serial     Init Read Brand Serial    ');
    Writeln(lst, '----------------------------------------------------------------------------------------------------------');
  end;

begin

  ChangeMeter.Active := False;
  ChangeMeter.ParamByName('Datefrom').AsDate := datefrom.Date;
  ChangeMeter.ParamByName('Dateto').AsDate   := dateto.Date;
  if RadioGroup1.ItemIndex = 0 then
  begin
  ChangeMeter.ParamByName('area').Text  := edit1.Text;
  ChangeMeter.ParamByName('book').Text  := edit2.Text;
  end
  else
  begin
  ChangeMeter.ParamByName('area').Text  := '%';
  ChangeMeter.ParamByName('book').Text  := '%';
  end;
  ChangeMeter.open;

  If ChangeMeter.IsEmpty then
   begin
    MessageDlg('There are no records to print for that selection.', mtInformation, [mbOK], 0);
    ChangeMeter.close;
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

  if not assigned(BillingStatusUpdateForm) then
    BillingStatusUpdateForm := TBillingStatusUpdateForm.Create(Application);
  BillingStatusUpdateForm.Label1.Caption := 'Change Meter List.....';
  BillingStatusUpdateForm.Show;

  with BillingData do
    begin

      ChangeMeter.First;
      BillingStatusUpdateForm.ProgressBar1.Position := 0;
      BillingStatusUpdateForm.ProgressBar1.Min := 0;
      BillingStatusUpdateForm.ProgressBar1.Max := ChangeMeter.RecordCount;

      LineCount := 0;
      HeadSw := 0;

      ChangeMeter.First;

      while not ChangeMeter.Eof do
        begin
          BillingStatusUpdateForm.ProgressBar1.StepBy(1);
          Application.ProcessMessages;

          if HeadSW = 0 then
            begin
              HeadSW := 1;
              Heading;
            end;

          Writeln(Lst, JustStr(ChangeMeterArea.Text, ' ', 3, 0), ' ',
            JustStr(ChangeMeterBook.Text, ' ', 3, 0), ' ',
            JustStr(ChangeMeterSequence.Text, ' ', 4, 0), ' ',
            JustStr(ChangeMeterAccountNumber.Text, ' ', 8, 0), ' ',
            JustStr(ChangeMeterName.Text, ' ', 30, 0), ' ',
            ChangeMeterLastReading.AsInteger: 9, ' ',
            JustStr(ChangeMeterOldMeterBrand.Text, ' ', 5, 0), ' ',
            JustStr(ChangeMeterOldSerialNumber.Text, ' ', 10, 0), ' ',
            ChangeMeterInitialReading.AsInteger: 9, ' ',
            JustStr(ChangeMeterNewMeterBrand.Text, ' ', 5, 0), ' ',
            JustStr(ChangeMeterNewMeterSerial.Text, ' ', 10, 0), ' ');

          Inc(LineCount);
          if LineCount = 50 then
            begin
              HeadSW := 0;
              LineCount := 0;
              Inc(PageCount);
              Writeln(lst, '-------------------------------------------------------------------------------');
              Write(Lst, #12);
            end;
          ChangeMeter.Next;
        end;
    end;

  if LineCount > 0 then
    Writeln(lst, '-------------------------------------------------------------------------------');

  ChangeMeter.Active := False;
  BillingStatusUpdateForm.Close;
  CloseFile(Lst);
  ShowMessage('Done.');
end;

//Change Name

procedure TReferenceListForm.BitBtn6Click(Sender: TObject);
var
  PageCount, LineCount, HeadSW: Word;

  procedure Heading;
  begin
    Write(Lst, #18, #27 + 'P');
    writeln(lst, 'Page #            : ', PageCount);
    writeln(lst, 'Report Name       :  CHANGE NAME REFERENCE');
    If RadioGroup1.ItemIndex = 0 then
    writeln(lst, 'Roverbook         : ',Edit1.Text);
    writeln(lst, 'Period Covered    : ',DateToStr(DateFrom.Date), ' - ',DatetoStr(DateTo.Date));
    Writeln(lst, '-----------------------------------------------------------------------------------');
    Writeln(lst, 'Ar. Bk. Seq.  ACCT #  Old Name                       New Name                      ');
    Writeln(lst, '-----------------------------------------------------------------------------------');
  end;

begin

  ChangeName.Active := False;
  ChangeName.ParamByName('Datefrom').AsDate := datefrom.Date;
  ChangeName.ParamByName('Dateto').AsDate   := dateto.Date;
  if RadioGroup1.ItemIndex = 0 then
  begin
  ChangeName.ParamByName('area').Text  := edit1.Text;
  ChangeName.ParamByName('book').Text  := edit2.Text;
  end
  else
  begin
  ChangeName.ParamByName('area').Text  := '%';
  ChangeName.ParamByName('book').Text  := '%';
  end;
  ChangeName.open;

  If ChangeName.IsEmpty then
   begin
    MessageDlg('There are no records to print for that selection.', mtInformation, [mbOK], 0);
    ChangeName.close;
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

  if not assigned(BillingStatusUpdateForm) then
    BillingStatusUpdateForm := TBillingStatusUpdateForm.Create(Application);
  BillingStatusUpdateForm.Label1.Caption := 'Change Name List.....';
  BillingStatusUpdateForm.Show;

  with BillingData do
    begin

      ChangeName.First;
      BillingStatusUpdateForm.ProgressBar1.Position := 0;
      BillingStatusUpdateForm.ProgressBar1.Min := 0;
      BillingStatusUpdateForm.ProgressBar1.Max := ChangeName.RecordCount;

      LineCount := 0;
      HeadSw := 0;

      ChangeName.First;

      while not ChangeName.Eof do
        begin
          BillingStatusUpdateForm.ProgressBar1.StepBy(1);
          Application.ProcessMessages;

          if HeadSW = 0 then
            begin
              HeadSW := 1;
              Heading;
            end;

          Writeln(Lst, JustStr(ChangeNameArea.Text, ' ', 3, 0), ' ',
            JustStr(ChangeNameBook.Text, ' ', 3, 0), ' ',
            JustStr(ChangeNameSequence.Text, ' ', 4, 0), ' ',
            JustStr(ChangeNameAccountNumber.Text, ' ', 8, 0), ' ',
            Juststr(ChangeNameOldName.Text, ' ', 30, 0), ' ',
            Juststr(ChangeNameNewName.Text, ' ', 30, 0), ' ');

          Inc(LineCount);
          if LineCount = 50 then
            begin
              HeadSW := 0;
              LineCount := 0;
              Inc(PageCount);
              Writeln(lst, '-------------------------------------------------------------------------------');
              Write(Lst, #12);
            end;
          ChangeName.Next;
        end;
    end;

  if LineCount > 0 then
    Writeln(lst, '-------------------------------------------------------------------------------');

  ChangeName.Active := False;
  BillingStatusUpdateForm.Close;
  CloseFile(Lst);
  ShowMessage('Done.');
end;


// Transfer Area Reference

procedure TReferenceListForm.BitBtn7Click(Sender: TObject);
var
  PageCount, LineCount, HeadSW: Word;

  procedure Heading;
  begin
    Write(Lst, #18, #27 + 'P');
    writeln(lst, 'Page #            : ', PageCount);
    writeln(lst, 'Report Name       :  TRANSFER AREA REFERENCE');
    If RadioGroup1.ItemIndex = 0 then
    writeln(lst, 'Roverbook         : ',Edit1.Text);
    writeln(lst, 'Period Covered    : ',DateToStr(DateFrom.Date), ' - ',DatetoStr(DateTo.Date));
    Write(Lst,#15);
    Writeln(lst, '--------------------------------------------------------------------------------------------------------------------');
    Writeln(lst, '_______________Old Location_______________ _______________New Location_______________                               ');
    Writeln(lst, 'Ar. Bk. Seq. ACCT #   Address              Ar. Bk. Seq. ACCT #   Address              ------- Consumer Name --------');
    Writeln(lst, '--------------------------------------------------------------------------------------------------------------------');
  end;

begin

  TransferArea.Active := False;
  TransferArea.ParamByName('Datefrom').AsDate := datefrom.Date;
  TransferArea.ParamByName('Dateto').AsDate   := dateto.Date;
  if RadioGroup1.ItemIndex = 0 then
  begin
  TransferArea.ParamByName('area').Text  := edit1.Text;
  TransferArea.ParamByName('book').Text  := edit2.Text;
  end
  else
  begin
  TransferArea.ParamByName('area').Text  := '%';
  TransferArea.ParamByName('book').Text  := '%';
  end;
  TransferArea.open;

  If TransferArea.IsEmpty then
   begin
    MessageDlg('There are no records to print for that selection.', mtInformation, [mbOK], 0);
    TransferArea.close;
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

  if not assigned(BillingStatusUpdateForm) then
    BillingStatusUpdateForm := TBillingStatusUpdateForm.Create(Application);
  BillingStatusUpdateForm.Label1.Caption := 'Change Name List.....';
  BillingStatusUpdateForm.Show;

  with BillingData do
    begin

      TransferArea.First;
      BillingStatusUpdateForm.ProgressBar1.Position := 0;
      BillingStatusUpdateForm.ProgressBar1.Min := 0;
      BillingStatusUpdateForm.ProgressBar1.Max := TransferArea.RecordCount;

      LineCount := 0;
      HeadSw := 0;

      TransferArea.First;

      while not TransferArea.Eof do
        begin
          BillingStatusUpdateForm.ProgressBar1.StepBy(1);
          Application.ProcessMessages;

          if HeadSW = 0 then
            begin
              HeadSW := 1;
              Heading;
            end;

          Writeln(Lst,JustStr(TransferAreaOldArea.Text, ' ', 3, 0),            ' ',
                      JustStr(TransferAreaOldBook.Text, ' ', 3, 0),            ' ',
                      JustStr(TransferAreaOldSequence.Text, ' ', 4, 0),        ' ',
                      JustStr(TransferAreaOldAccountNumber.Text, ' ', 8, 0),   ' ',
                      JustStr(TransferAreaOldAddress.Text, ' ', 20, 0),        ' ',
                      JustStr(TransferAreaNewArea.Text, ' ', 3, 0),            ' ',
                      JustStr(TransferAreaNewBook.Text, ' ', 3, 0),            ' ',
                      JustStr(TransferAreaNewSequence.Text, ' ', 4, 0),        ' ',
                      JustStr(TransferAreaNewAccountNumber.Text, ' ', 8, 0),   ' ',
                      JustStr(TransferAreaNewAddress.Text, ' ', 20, 0),        ' ',
                      Juststr(TransferAreaName.Text, ' ', 30, 0),              ' ');

          Inc(LineCount);
          if LineCount = 50 then
            begin
              HeadSW := 0;
              LineCount := 0;
              Inc(PageCount);
              Writeln(lst, '--------------------------------------------------------------------------------------------------------------------');
              Write(Lst, #12);
            end;
          TransferArea.Next;
        end;
    end;

  if LineCount > 0 then
  Writeln(lst, '-------------------------------------------------------------------------------');

  TransferArea.Active := False;
  BillingStatusUpdateForm.Close;
  CloseFile(Lst);
  ShowMessage('Done.');
end;

procedure TReferenceListForm.FormShow(Sender: TObject);
begin
 DateFrom.DateTime := Now;
 DateTo.Date       := Now;
end;

procedure TReferenceListForm.BitBtn4Click(Sender: TObject);
begin
  Close;
end;

end.
