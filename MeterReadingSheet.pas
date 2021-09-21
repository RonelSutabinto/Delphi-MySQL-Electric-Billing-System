unit MeterReadingSheet;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Mask, StdCtrls, ExtCtrls, Gauges, DB, MemDS,
  DBAccess, MyAccess, DsFancyButton, NxCollection;

type
  TMeterReadingSheetForm = class(TForm)
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label1: TLabel;
    Label5: TLabel;
    Gauge1: TGauge;
    Area: TEdit;
    Route: TEdit;
    Button1: TNxButton;
    Button2: TNxButton;
    StartAccount: TEdit;
    StartPage: TEdit;
    Option: TRadioGroup;
    BillMonth: TEdit;
    Bevel1: TBevel;
    Bevel2: TBevel;
    master: TMyQuery;
    masterArea: TStringField;
    masterBook: TStringField;
    masterSequence: TStringField;
    masterAccountNumber: TStringField;
    masterName: TStringField;
    masterAddress: TStringField;
    masterRateCode: TStringField;
    masterConsCode: TStringField;
    masterConnCode: TStringField;
    masterTransformer: TStringField;
    masterMeterBrand: TStringField;
    masterSerial: TStringField;
    masterMultiplier: TFloatField;
    masterNewConnectionDate: TDateField;
    masterReconnectionDate: TDateField;
    masterDisconnectionDate: TDateField;
    masterPreviousReadingDate: TDateField;
    masterPresentReadingDate: TDateField;
    masterPreviousReadingKWH: TFloatField;
    masterPresentReadingKWH: TFloatField;
    masterDiff: TFloatField;
    masterDemand: TFloatField;
    masterFlatRateWattage: TFloatField;
    masterFeedBackCode: TStringField;
    masterCM: TStringField;
    masterCMMultiplier: TFloatField;
    masterCMPreviousReadingKWH: TFloatField;
    masterCMPresentReadingKWH: TFloatField;
    masterCMKilowattHour: TFloatField;
    masterCMDemand: TFloatField;
    masterKilowattHour: TFloatField;
    masterKilowattUsed: TFloatField;
    masterGenSysCharge: TFloatField;
    masterHostCommCharge: TFloatField;
    masterForexCharge: TFloatField;
    masterTCDemandCharge: TFloatField;
    masterTCTransSystemCharge: TFloatField;
    masterSystemLossCharge: TFloatField;
    masterDCDemandCharge: TFloatField;
    masterDCDistributionCharge: TFloatField;
    masterSCRetCustCharge: TFloatField;
    masterSCSupplySysCharge: TFloatField;
    masterMCRetailCustCharge: TFloatField;
    masterMCSystemCharge: TFloatField;
    masterUCNPCStrandedDebts: TFloatField;
    masterUCNPCStrandedContCost: TFloatField;
    masterUCDUStrandedContCost: TFloatField;
    masterUCME: TFloatField;
    masterUCEqTaxesAndRoyalties: TFloatField;
    masterUCEC: TFloatField;
    masterUCCrossSubRemoval: TFloatField;
    masterICCrossSubsidyCharge: TFloatField;
    masterPowerActRateRed: TFloatField;
    masterLifelineDiscSubs: TFloatField;
    masterLoanCondo: TFloatField;
    masterTransformerRental: TFloatField;
    masterOCCode1: TStringField;
    masterOCAmount1: TFloatField;
    masterOCMo1: TFloatField;
    masterOCTotal1: TFloatField;
    masterOCCode2: TStringField;
    masterOCAmount2: TFloatField;
    masterOCMo2: TFloatField;
    masterOCTotal2: TFloatField;
    masterOCCode3: TStringField;
    masterOCAmount3: TFloatField;
    masterOCMo3: TFloatField;
    masterOCTotal3: TFloatField;
    masterTotalBill: TFloatField;
    masterBillNumber: TStringField;
    masterOEBRNumber: TStringField;
    masterBillMonth: TStringField;
    masterPoleNumber: TStringField;
    masterFeederNumber: TStringField;
    masterAge30: TFloatField;
    masterAge60: TFloatField;
    masterAge90: TFloatField;
    masterAge120: TFloatField;
    masterAgeOver120: TFloatField;
    masterAgeTotal: TFloatField;
    masterTotalPayments: TFloatField;
    masterARBalance: TFloatField;
    masterLCCustMo: TFloatField;
    masterVATDist: TFloatField;
    masterVATGenCO: TFloatField;
    masterVATTransCO: TFloatField;
    masterVATSystemLossGenCO: TFloatField;
    masterVATSystemLossTransCO: TFloatField;
    masterVAT: TFloatField;
    vicinity: TMyQuery;
    ar: TMyQuery;
    vicinityArea: TStringField;
    vicinityBook: TStringField;
    vicinityAddress: TStringField;
    arCode: TFloatField;
    arDate: TDateField;
    arDocument: TStringField;
    arBillMonth: TStringField;
    arReading: TFloatField;
    arKilowattHour: TFloatField;
    arDebit: TFloatField;
    arCredit: TFloatField;
    arBalance: TFloatField;
    arUCNPCSD: TFloatField;
    arUCNPCSCC: TFloatField;
    arUCDUSCC: TFloatField;
    arUCME: TFloatField;
    arUCETR: TFloatField;
    arUCEC: TFloatField;
    arUCCSR: TFloatField;
    arCollectorCode: TStringField;
    arVATDist: TFloatField;
    arVATGenCO: TFloatField;
    arVATTransCO: TFloatField;
    arVATSystemLossGenCO: TFloatField;
    arVATSystemLossTransCO: TFloatField;
    arVAT: TFloatField;
    Bevel3: TBevel;
    CheckMSR: TMyQuery;
    CheckMSRCode: TFloatField;
    CheckMSRArea: TStringField;
    CheckMSRBook: TStringField;
    CheckMSRSequence: TStringField;
    CheckMSRAccountNumber: TStringField;
    CheckMSRName: TStringField;
    CheckMSRAddress: TStringField;
    CheckMSRRateCode: TStringField;
    CheckMSRConnCode: TStringField;
    CheckMSRMeterBrand: TStringField;
    CheckMSRSerial: TStringField;
    CheckMSRMultiplier: TIntegerField;
    CheckMSRRequest: TStringField;
    CheckMSRRequestDate: TDateField;
    CheckMSRRequestStatus: TStringField;
    CheckMSRFollowUps: TIntegerField;
    PrevDate: TMyQuery;
    PrevDatePresentReadingDate: TDateField;
    PrevDateTAccount: TLargeintField;
    PrintOption: TRadioGroup;
    GetPKV: TMyQuery;
    GetPKVdebit: TFloatField;
    GetPKVcredit: TFloatField;
    EndAccount: TEdit;
    Label6: TLabel;
    Arrears: TMyQuery;
    Arrearsamount: TFloatField;
    DiffCons: TMyQuery;
    meterrate: TMyQuery;
    meterrateMBillMonth: TStringField;
    meterrateRateCode: TStringField;
    meterrateRemarks: TStringField;
    meterrateGenSysRate: TFloatField;
    meterrateHostCommRate: TFloatField;
    meterrateFOREXRate: TFloatField;
    meterrateTCDemandRate: TFloatField;
    meterrateTCSystemRate: TFloatField;
    meterrateSystemLossRate: TFloatField;
    meterrateDCDemandRate: TFloatField;
    meterrateDCSystemRate: TFloatField;
    meterrateSCRetailCustRate: TFloatField;
    meterrateSCSupplySysRate: TFloatField;
    meterrateMCRetailCustRate: TFloatField;
    meterrateMCSysRate: TFloatField;
    meterrateUCNPCStrandedDebtsRate: TFloatField;
    meterrateUCNPCStrandedContCostRate: TFloatField;
    meterrateUCDUStrandedContCostRate: TFloatField;
    meterrateUCMERate: TFloatField;
    meterrateUCEqTaxesAndRoyaltiesRate: TFloatField;
    meterrateUCECRate: TFloatField;
    meterrateUCCrossSubsidyRemovalRate: TFloatField;
    meterrateICCrossSubsidyRate: TFloatField;
    meterratePARARate: TFloatField;
    meterrateLifelineSubsidyRate: TFloatField;
    meterrateLoanCondo: TFloatField;
    meterrateGram: TFloatField;
    meterrateLCcustmo: TFloatField;
    meterratePrevYearAdjPowerCost: TFloatField;
    meterrateSysLossUnderRecov: TFloatField;
    meterrateVAT: TFloatField;
    meterrateVATGenCo: TFloatField;
    meterrateVATTransCo: TFloatField;
    meterrateVATSystemLossGenCO: TFloatField;
    meterrateVATSystemLossTransCO: TFloatField;
    meterrateVATSystemLoss: TFloatField;
    meterrateDiffBillPerKwhr: TFloatField;
    meterrateDIffBillPerKW: TFloatField;
    meterrateDiffBillPerCust: TFloatField;
    meterrateMCC: TFloatField;
    meterrateDiffBillMonth: TStringField;
    meterrateDiffBillApply: TStringField;
    DiffConskilowatthour: TFloatField;
    DiffConskilowattused: TFloatField;
    PKVR: TMyQuery;
    PKVRcode: TFloatField;
    PKVRArea: TStringField;
    PKVRBook: TStringField;
    PKVRSequence: TStringField;
    PKVRAccountNumber: TStringField;
    PKVRName: TStringField;
    PKVRBillMonth: TStringField;
    PKVRDebit: TFloatField;
    PKVRcredit: TFloatField;
    PKVRbalance: TFloatField;
    PKVRbillnumber: TStringField;
    PKVRkilowatthour: TLargeintField;
    PKVRpostingdate: TDateField;
    meterratePantawidApply: TStringField;
    meterrateTransSysAncRefundTitle: TStringField;
    meterrateTransSysAncRefund: TFloatField;
    meterrateTransDemAncRefundTitle: TStringField;
    meterrateTransDemAncRefund: TFloatField;
    meterrateVATTransAncRefundTitle: TStringField;
    meterrateVATTransAncRefund: TFloatField;
    meterrateSCDiscApply: TStringField;
    meterrateWRateCode: TStringField;
    meterrateSCDiscPercent: TFloatField;
    meterrateSCDiscSubs: TFloatField;
    SCRead: TMyQuery;
    SCReadSCode: TFloatField;
    SCReadArea: TStringField;
    SCReadBook: TStringField;
    SCReadSequence: TStringField;
    SCReadAccountNumber: TStringField;
    SCReadBillingName: TStringField;
    SCReadName: TStringField;
    SCReadBDay: TDateField;
    SCReadCPNo: TStringField;
    SCReadSCIDNo: TStringField;
    SCReadSpouseSCIDNo: TStringField;
    SCReadDateApplied: TDateField;
    SCReadExpirationDate: TDateField;
    SCReadRemarks: TStringField;
    SCReadAddress: TStringField;
    SCReadstillvalid: TLargeintField;
    meterratePantawidRecovApply: TStringField;
    meterrateWRSw: TStringField;
    masterDeleteRemarks: TStringField;
    masterXFormerQty: TIntegerField;
    masterXFormerKVA: TStringField;
    masterPrevYearAdjPowerCost: TFloatField;
    masterSysLossUnderRecov: TFloatField;
    masterVATDisc: TFloatField;
    masterVATDiscAmt: TFloatField;
    masterVATDistDiscAmt: TFloatField;
    masterVATGenCoDiscAmt: TFloatField;
    masterVATTransCoDiscAmt: TFloatField;
    masterVATSystemLossDiscAmt: TFloatField;
    masterDiffBillPerKwhr: TFloatField;
    masterDiffBillPerKW: TFloatField;
    masterDiffBillPerCust: TFloatField;
    masterMCC: TFloatField;
    masterPKVROebrNumber: TStringField;
    masterPKVRBillMonth: TStringField;
    masterPKVRAmount: TFloatField;
    masterSCDisc: TFloatField;
    masterWRateCode: TStringField;
    masterSCAmt4Disc: TFloatField;
    masterDWLEN1: TFloatField;
    masterDWLEN2: TFloatField;
    masterCode: TIntegerField;
    masterCBook: TStringField;
    meterrateEntry: TIntegerField;
    meterrateSCDiscKWHR: TLongWordField;
    PKVRidBillAdjLedger: TLongWordField;
    SCReadidSCDisc: TLongWordField;
    RadioGroup1: TRadioGroup;
    NxPanel1: TNxPanel;
    BillMonth_tf: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    cBook_tf: TEdit;
    TmpQuery: TMyQuery;
    TmpQueryPresentReadingDate: TDateField;
    TmpQueryTAccount: TLargeintField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure AreaKeyPress(Sender: TObject; var Key: Char);
    procedure RadioGroup1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  var
  MeterReadingSheetForm: TMeterReadingSheetForm;

implementation

uses Data, StatusUpdate, ModTools, MasterList, DateUtils;

{$R *.dfm}

Var
Lst            : Text ;
BillMonthArray : Array[1..3] of String[5];
BillMonthCons  : Array[1..3] of Real;
Mon,Yr         : Word;
Check          : Integer;
BillMonthStr   : String[20];
MonStr,YrStr   : String[2];

procedure TMeterReadingSheetForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
   MeterReadingSheetForm := Nil;
end;

procedure TMeterReadingSheetForm.RadioGroup1Click(Sender: TObject);
begin
  case RadioGroup1.ItemIndex of
    0:begin
      NxPanel1.Visible := false;
    end;
    1:begin
      NxPanel1.Top := 83;
      NxPanel1.Left:= 29;
      NxPanel1.BringToFront;
      NxPanel1.Visible := true;
    end;
  end;
end;

procedure TMeterReadingSheetForm.Button1Click(Sender: TObject);
Var PageCount,LineCount : Word   ;
    HeadSW              : Word   ;
    Count               : Word   ;
    I                   : Integer;
    ConnStr             : String ;
    PrevDateStr         : String ;
    Senior              : String ;

Procedure Heading;
begin
Write(Lst,#18,#27+'P');
writeln(lst,'Page #      : ',PageCount);
writeln(lst,'METER READING SHEET     Read by:_______________    Present Date  :_________');
writeln(lst,'Area/Route  : ',Area.Text,'/',Route.Text,' ',VicinityAddress.Text);
writeln(lst,'Bill Month  : ',BillMonthStr,    '                 Previous Date :',PrevDateStr);
Write(lst,#27+'M');
Writeln(lst,'-----------------------------------------------------------------------------------------------------');
Writeln(lst,'No.  Consumer Name                  Serial     Account #        Pres     Prev  KWHr Mult Dmnd  Conn  ');
Writeln(lst,'-----------------------------------------------------------------------------------------------------');
end;
Procedure HeadingNxt;
begin
Write(Lst,#18,#27+'P');
writeln(lst,'Page #      : ',PageCount);
writeln(lst,'METER READING SHEET     Read by:_______________    Present Date  :_________');
writeln(lst,'CBook  : ',cBook_tf.Text,' ',VicinityAddress.Text);
writeln(lst,'Bill Month  : ',BillMonthStr,    '                 Previous Date :',PrevDateStr);
Write(lst,#27+'M');
Writeln(lst,'-----------------------------------------------------------------------------------------------------');
Writeln(lst,'No.  Consumer Name                  Serial     Account #        Pres     Prev  KWHr Mult Dmnd  Conn  ');
Writeln(lst,'-----------------------------------------------------------------------------------------------------');
end;
Type
PrintR = Record
    AccountNumber      : Array[1..2] of String[10] ;
    Serial             : Array[1..2] of String[15] ;
    Name               : Array[1..2] of String[30] ;
    RateCode           : Array[1..2] of String[01] ;
    Mult               : Array[1..2] of String[03] ;
    Address            : Array[1..2] of String[30] ;
    PresentReadingDate : Array[1..2] of String[10] ;
    PresentReading     : Array[1..2] of Currency   ;
    CMKwh              : Array[1..2] of Currency   ;
    OCAmount           : Array[1..2] of Currency   ;
    ArrearsAmt         : Array[1..2] of Currency   ;
    TransformerRental  : Array[1..2] of Currency   ;
    PKKVAmt            : Array[1..2] of Currency   ;
    PKVRBillMonthStr   : Array[1..2] of String[4]  ;
    PKVRAmt            : Array[1..2] of Currency   ;
    DBKWHR             : Array[1..2] of Real       ;
    DBKW               : Array[1..2] of Real       ;
    DBPerKwhr          : Array[1..2] of Currency   ;
    DBPerKW            : Array[1..2] of Currency   ;
    DBPerCust          : Array[1..2] of Currency   ;
    DBEvat             : Array[1..2] of Currency   ;
end;

Var
    WithBill           : Boolean                   ;
    PrintRecord        : PrintR                    ;
    ConsCount          : Integer                   ;
    PKVStr1,PKVStr2    : String                    ;

Label Jump;

begin

case RadioGroup1.ItemIndex of
  0:begin
      PrevDate.Close;
      PrevDate.ParamByName('area').text := Area.Text;
      PrevDate.ParamByName('book').text := Route.Text;
      PrevDate.Open;
      PrevDate.First;

      PrevDateStr := DateToStr(PrevDatePresentReadingDate.AsDateTime);
      PrevDate.Close;

      Master.Close;
      Master.SQL.Clear;
      Master.SQL.Add('select * from master where area = :area and book = :book');
      if (startaccount.Text <> '') and
         (endaccount.Text <> '') then
         begin
           Master.SQL.Add('and accountnumber between :startacct and :endacct');
           Master.ParamByName('startacct').Text := StartAccount.Text;
           Master.ParamByName('endacct').Text   := EndAccount.Text;
         end;
      Master.SQL.Add('order by accountnumber');
      Master.ParamByName('area').Text := area.Text;
      Master.ParamByName('book').Text := route.Text;
      master.Open;
  end;
  1:begin

      TmpQuery.Close;
      TmpQuery.SQL.Clear;
      TmpQuery.SQL.Add('select PresentReadingDate, count(accountnumber) TAccount ');
      TmpQuery.SQL.Add('from master ');
      TmpQuery.SQL.Add('where conncode = ''1'' and');
      TmpQuery.SQL.Add(' cbook =:cbook and');
      TmpQuery.SQL.Add(' previousreadingdate is not null');
      TmpQuery.SQL.Add(' group by previousreadingdate ');
      TmpQuery.SQL.Add(' order by taccount desc');
      TmpQuery.ParamByName('cbook').text := cBook_tf.Text;
      TmpQuery.Open;
      TmpQuery.First;

      PrevDateStr := DateToStr(TmpQueryPresentReadingDate.AsDateTime);
      TmpQuery.Close;

      Master.Close;
      Master.SQL.Clear;
      Master.SQL.Add('select * from master where cbook = :cbook');
      Master.SQL.Add('order by accountnumber');
      Master.ParamByName('cbook').Text := cBook_tf.Text;
      master.Open;

      BillMonth.Text := BillMonth_tf.Text;
  end;
end;



  If Master.IsEmpty then
    begin
      MessageDlg('There are no records to print for that area/route.....', mtError, [mbOK], 0);
      Master.Close;
      exit;
    end;

  Val(Copy(BillMonth.Text,1,2),Mon,Check);
  Val(Copy(BillMonth.Text,3,2),Yr,Check);

  Case Mon of
    01 : BillMonthStr := 'JANUARY '+Copy(BillMonth.Text,3,2);
    02 : BillMonthStr := 'FEBRUARY '+Copy(BillMonth.Text,3,2);
    03 : BillMonthStr := 'MARCH '+Copy(BillMonth.Text,3,2);
    04 : BillMonthStr := 'APRIL '+Copy(BillMonth.Text,3,2);
    05 : BillMonthStr := 'MAY '+Copy(BillMonth.Text,3,2);
    06 : BillMonthStr := 'JUNE '+Copy(BillMonth.Text,3,2);
    07 : BillMonthStr := 'JULY '+Copy(BillMonth.Text,3,2);
    08 : BillMonthStr := 'AUGUST '+Copy(BillMonth.Text,3,2);
    09 : BillMonthStr := 'SEPTEMBER '+Copy(BillMonth.Text,3,2);
    10 : BillMonthStr := 'OCTOBER '+Copy(BillMonth.Text,3,2);
    11 : BillMonthStr := 'NOVEMBER '+Copy(BillMonth.Text,3,2);
    12 : BillMonthStr := 'DECEMBER '+Copy(BillMonth.Text,3,2);
  end;

  BillMonthStr := JustStr(BillMonthStr,' ',20,0);

  FillChar(BillMonthArray,SizeOf(BillMonthArray),#0);

  For I := 3 downto 1 do
   begin

    Dec(Mon);
    If Mon < 1 then
      begin
        Mon := 12;
        Dec(yr);
      end;

   Str(Mon,MonStr);
   Str(Yr,YrStr);

   MonStr := JustStr(MonStr,'0',2,1);
   YrStr  := JustStr(YrStr,'0',2,1);

   BillMonthArray[I] := MonStr + YrStr;
   end;

  ShowMessage('Set Printer on.....');

  Try
  AssignFile(Lst,'LPT1');
  Rewrite(Lst);
  except
   ShowMessage('Printer not Ready');
   Exit;
  end;

  Count      := 0;
  ConsCount  := 0;

  vicinity.Close;
  vicinity.SQL.Clear;
  vicinity.SQL.Add('select * from vicinity where area = :area and book = :book');
  vicinity.ParamByName('area').Text := area.Text;
  vicinity.ParamByName('book').Text := route.Text;
  vicinity.Open;

  If StartAccount.Text <> '' then
    Master.Locate('accountnumber',StartAccount.Text,[])
    else Master.First;

  Gauge1.Progress    := 0;
  Gauge1.MinValue    := 0;
  Gauge1.MaxValue    := Master.RecordCount;

  If StartPage.Text <> '' then PageCount := StrToInt(StartPage.Text) else PageCount := 1;

  LineCount := 0;
  HeadSw    := 0;

while not Master.Eof do
begin
   Gauge1.AddProgress(1);
   Application.ProcessMessages;

    FillChar(BillMonthCons,SizeOf(BillMonthCons),SizeOf(BillMonthCons));

    WithBill := True;

    AR.Close;
    AR.SQL.Clear;
    AR.SQL.Add('select * from arledger where code = :code and ');
    AR.SQL.Add('((billmonth = :billmonth1 or billmonth = :billmonth2 or billmonth = :billmonth3 or billmonth = :billmonth4) and debit is not null)');
    AR.ParamByName('code').Text       := masterCode.Text;
    AR.ParamByName('billmonth1').Text := BillMonthArray[1];
    AR.ParamByName('billmonth2').Text := BillMonthArray[2];
    AR.ParamByName('billmonth3').Text := BillMonthArray[3];
    AR.ParamByName('billmonth4').Text := BillMonth.Text;
    AR.Open;

    If not AR.IsEmpty then WithBill := True;

    AR.First;

    While not AR.Bof do
     begin

     If (ARDebit.AsCurrency > 0) and (ARBillMonth.Text = BillMonthArray[1]) then BillMonthCons[1] := ARKilowattHour.AsCurrency;
     If (ARDebit.AsCurrency > 0) and (ARBillMonth.Text = BillMonthArray[2]) then BillMonthCons[2] := ARKilowattHour.AsCurrency;
     If (ARDebit.AsCurrency > 0) and (ARBillMonth.Text = BillMonthArray[3]) then BillMonthCons[3] := ARKilowattHour.AsCurrency;

     AR.next;
     end;

   If YearOf(masterNewConnectionDate.AsDateTime) >= 2005 then WithBill := True;

   If YearOf(masterReconnectionDate.AsDateTime) >= 2005 then WithBill := True;

   If not WithBill then
      begin
        Master.Next;
        continue;
      end;

 Case PrintOption.ItemIndex of

 0:begin

         Inc(Count);

         If HeadSW = 0 then
           begin
             HeadSW := 1;

             case RadioGroup1.ItemIndex of
                0:Heading;
                1:HeadingNxt;
             end;

           end;

          If Option.ItemIndex = 0 then
          begin
          ConnStr := '';
          If MasterConnCode.Text = '4' then ConnStr := 'DISCO';

          If MasterRateCode.Text <> 'S' then
          Writeln(Lst,Count:3,'. ',
                      JustStr(MasterName.Text,' ',30,0),             ' ',
                      JustStr(MasterSerial.Text,' ',10,0),           ' ',
                      JustStr(MasterAccountNumber.Text,' ',10,0),    '-',
                      JustStr(masterWRateCode.Text,' ',1,0),         ' ',
                      '________ ',
                      MasterPresentReadingKWH.AsCurrency:8:1,' _____ ',
                      MasterMultiplier.AsInteger:4,' ____ ',ConnStr) else
          Writeln(Lst,Count:3,'. ',
                      JustStr(MasterName.Text,' ',30,0),             ' ',
                      JustStr(MasterSerial.Text,' ',10,0),           ' ',
                      JustStr(MasterAccountNumber.Text,' ',10,0),    '-',
                      JustStr(masterWRateCode.Text,' ',1,0),         ' ',
                      MasterKilowattHour.AsCurrency:8:1,' ',
                      MasterPresentReadingKWH.AsCurrency:8:1,' _____ ',
                      MasterMultiplier.AsInteger:4,' ____ ',ConnStr);
          end;

          If Option.ItemIndex = 1 then
          begin
          ConnStr := '';
          If MasterConnCode.Text = '4' then ConnStr := 'DISCO';

          If MasterRateCode.Text <> 'S' then
          Writeln(Lst,Count:3,'. ',
                      JustStr(MasterName.Text,' ',30,0),             ' ',
                      JustStr(MasterSerial.Text,' ',10,0),           ' ',
                      JustStr(MasterAccountNumber.Text,' ',10,0),    '-',
                      JustStr(MasterWRateCode.Text,' ',1,0),          ' ',
                      '________ ________ _____ ',
                      MasterMultiplier.AsInteger:4,' ____ ',ConnStr) else
          Writeln(Lst,Count:3,'. ',
                      JustStr(MasterName.Text,' ',30,0),             ' ',
                      JustStr(MasterSerial.Text,' ',10,0),           ' ',
                      JustStr(MasterAccountNumber.Text,' ',10,0),    '-',
                      JustStr(MasterWRateCode.Text,' ',1,0),          ' ',
                      '________ ',
                      MasterPresentReadingKWH.AsCurrency:8:1,' _____ ',
                      MasterMultiplier.AsInteger:4,' ____ ',ConnStr);
          end;

         CheckMSR.ParamByName('code').Text := masterCode.Text;
         CheckMSR.Open;

         If CheckMSR.IsEmpty then
         Writeln(Lst) else
         Writeln(Lst,' PENDING SERVICE REQUEST :',JustStr(CheckMSRRequest.Text,' ',30,0),' Dated : ',DateToStr(CheckMSRRequestDate.AsDateTime));
         CheckMSR.Close;

         Inc(LineCount);
         If LineCount = 25 then
           begin
            HeadSW    := 0;
            LineCount := 0;
            Inc(PageCount);
            Write(Lst,#12);
           end;
   end; { end case printoption = 0 }


 1:begin

    If ConsCount = 0 then FillChar(PrintRecord,SizeOf(PrintRecord),#0);

    Inc(ConsCount);

      With PrintRecord do
      begin

          meterrate.ParamByName('billmonth').Text := BillMonth.Text;
          meterrate.open;

          if meterrateWRSw.Text = '0' then
            meterrate.FilterSQL := 'ratecode = '+QuotedStr(masterRateCode.Text) else
            meterrate.FilterSQL := 'wratecode = '+QuotedStr(masterWRateCode.Text);

          If meterrateDiffBillApply.AsInteger = 1 then
             begin
               DiffCons.ParamByName('Code').Text      := masterCode.Text;
               DiffCons.ParamByName('BillMonth').Text := meterrateDiffBillMonth.Text;
               DiffCons.Open;

               If not DiffCons.IsEmpty then
                 begin
                    DBKWHR[ConsCount]    := DiffConskilowatthour.AsFloat;
                    DBKW[ConsCount]      := DiffConskilowattused.AsFloat;
                    DBPerKwhr[ConsCount] := DiffConskilowatthour.AsFloat * meterrateDiffBillPerKwhr.AsFloat;
                    DBPerKW[ConsCount]   := DiffConskilowattused.AsFloat * meterrateDIffBillPerKW.AsFloat;
                    DBPerCust[ConsCount] := meterrateDiffBillPerCust.AsFloat;

                    DBEvat[ConsCount]    := (DBPerKwhr[ConsCount]  +
                                             DBPerKW[ConsCount] +
                                             DBPerCust[ConsCount]) * (meterrateVAT.AsCurrency / 100);
                 end;
               DiffCons.Close;

             end;

          If meterratePantawidApply.AsInteger = 1 then
            begin
              PKVR.ParamByName('code').Text      := masterCode.Text;
              PKVR.ParamByName('area').Text      := masterArea.Text;
              PKVR.ParamByName('book').Text      := masterBook.Text;
              PKVR.Open;

              If PKVR.IsEmpty then
                  PKVRAmt[ConsCount] := 0
               else
                begin
                  PKVRAmt[ConsCount]          := PKVRcredit.AsCurrency;
                  PKVRBillMonthStr[ConsCount] := PKVRBillMonth.Text;
                end;

              If PKVR.IsEmpty then
              begin
                GetPKV.ParamByName('code').Text      := masterCode.Text;
                GetPKV.ParamByName('area').Text      := masterArea.Text;
                GetPKV.ParamByName('book').Text      := masterBook.Text;
                GetPKV.Open;

                If GetPKV.IsEmpty then PKKVAmt[ConsCount] := 0 else PKKVAmt[ConsCount] := GetPKVdebit.AsCurrency - GetPKVcredit.AsCurrency;
              end;
              GetPKV.Close;
              PKVR.Close;

            end;

          meterrate.close;

          CMKwh[ConsCount] := 0;

          If masterCM.Text = '1' then
          CMKwh[ConsCount] := masterCMPresentReadingKWH.AsCurrency - masterCMPreviousReadingKWH.AsCurrency;

          AccountNumber[ConsCount]      := JustStr(MasterAccountNumber.Text,' ',10,0) ;
          Serial[ConsCount]             := JustStr(MasterSerial.Text,' ',15,0) ;
          Name[ConsCount]               := JustStr(masterName.Text,' ',30,0) ;
          RateCode[ConsCount]           := JustStr(masterWRateCode.Text,' ',1,0) ;
          Mult[ConsCount]               := JustStr(masterMultiplier.Text,' ',3,0) ;
          Address[ConsCount]            := JustStr(masterAddress.Text,' ',30,0) ;
          PresentReadingDate[ConsCount] := JustStr(masterPresentReadingDate.Text,' ',10,0) ;
          PresentReading[ConsCount]     := MasterPresentReadingKWH.AsCurrency ;
          OCAmount[ConsCount]           := masterOCAmount1.AsCurrency+
                                           masterOCAmount2.AsCurrency+
                                           masterOCAmount2.AsCurrency;

          Arrears.ParamByName('code').Text := masterCode.Text;
          Arrears.Open;

          ArrearsAmt[ConsCount]         := Arrearsamount.AsCurrency;
          Arrears.Close;

          TransformerRental[ConsCount]  := masterTransformerRental.AsCurrency;

         If ConsCount = 2 then
          begin

              Write(Lst,#27+'M');
              Writeln(Lst,'-----------------------------------------------------------------------------------------------');
              Writeln(Lst,'     ZAMBOANGA DEL NORTE ELEC. COOP., INC      |     ZAMBOANGA DEL NORTE ELEC. COOP., INC      ');
              Writeln(Lst,'                  (ZANECO)                     |                  (ZANECO)                     ');
              Writeln(Lst,'         BILLING STATEMENT OF ACCOUNT          |         BILLING STATEMENT OF ACCOUNT          ');
              Writeln(Lst,'-----------------------------------------------|-----------------------------------------------');
              Writeln(Lst,' ',AccountNumber[1],' - ',Serial[1],'         Rate ',RateCode[1],'   | ',
                              AccountNumber[2],' - ',Serial[2],'         Rate ',RateCode[2]);
              Writeln(Lst,' ',Name[1],'       Mult ',Mult[1],' | ',
                              Name[2],'       Mult ',Mult[2]);
              Writeln(Lst,' ',Address[1],'                | ',
                              Address[2]);
              Writeln(Lst,'-----------------------------------------------|-----------------------------------------------');
              Writeln(Lst,'                      From          To         |                      From          To         ');
              Writeln(Lst,'    Period Covered ',PresentReadingDate[1],' - ___________    |    Period Covered ',
                                                PresentReadingDate[2],' - ___________    ');
              Writeln(Lst,' ',BillMonthStr,'  Due Date _____________  | ',BillMonthStr,'  Due Date _____________  ');
              Writeln(Lst,'                                               |                                               ');
              Writeln(Lst,' Present Reading  __________                   | Present Reading  __________                   ');
              Writeln(Lst,' Previous Reading ',PresentReading[1]:10:1,'                   | Previous Reading ',
                                               PresentReading[2]:10:1);
              Writeln(Lst,'                                               |                                               ');
              Writeln(Lst,' Difference       __________                   | Difference       __________                   ');

              Writeln(Lst,'                                               |                                               ');
              Writeln(Lst,' Change Meter Kwh ',cmkwh[1]:10:1,'       Amount      | Change Meter Kwh ',
                                               cmkwh[2]:10:1,'       Amount      ');

              Writeln(Lst,' Kilowatt Hour    __________                   | Kilowatt Hour    __________                   ');
              Writeln(Lst,' Demand           __________  ________________ | Demand           __________  ________________ ');
              Writeln(Lst,'                                               |                                               ');
              Writeln(Lst,' Transformer Rental           ',Format(TransformerRental[1],'###,###,###.##'),' | Transformer Rental           ',Format(TransformerRental[2],'###,###,###.##'));
              Writeln(Lst,' Other Charges                ',Format(OCAmount[1],'###,###,###.##'),
                        ' | Other Charges                ',Format(OCAmount[2],'###,###,###.##'));

              PKVStr1 := '                                               ';
              PKVStr2 := '                                                ';

              If PKKVAmt[1] > 0 then PKVStr1 := ' Pantawid Balance             '+Format(PKKVAmt[1],'###,###,###.##') else
              If PKVRAmt[1] > 0 then PKVStr1 := ' Pantawid Recovery '+PKVRBillMonthStr[1]+'       '+Format(PKVRAmt[1],'###,###,###.##');

              If PKKVAmt[2] > 0 then PKVStr2 := ' Pantawid Balance             '+Format(PKKVAmt[2],'###,###,###.##') else
              If PKVRAmt[2] > 0 then PKVStr2 := ' Pantawid Recovery '+PKVRBillMonthStr[2]+'       '+Format(PKVRAmt[2],'###,###,###.##');

              Writeln(Lst,PKVStr1,PKVStr2);

              If ArrearsAmt[1] > 0 then
              Write(Lst,#27+'E'+' WITH ARREARS                 ',Format(0,'###,###,###.##'),#27+'F') else
              Write(Lst,  '                              ',Format(0,'###,###,###.##'));

              If ArrearsAmt[2] > 0 then
              Writeln(Lst,#27+'E'+' | WITH ARREARS                 ',Format(0,'###,###,###.##')+#27+'F') else
              Writeln(Lst,' |                              ',Format(0,'###,###,###.##'));

              If DBEVAT[1] > 0 then
              Write(Lst,' TOTAL DIFF BILLING / JAN 2010',Format(DBPerKwhr[1]+DBPerKW[1]+DBPerCust[1],'###,###,###.##')) else
              Write(Lst,'                              ',Format(0,'###,###,###.##'));

              If DBEVAT[2] > 0 then
              Writeln(Lst,' | TOTAL DIFF BILLING / JAN 2010',Format(DBPerKwhr[2]+DBPerKW[2]+DBPerCust[2],'###,###,###.##')) else
              Writeln(Lst,' |                              ',Format(0,'###,###,###.##'));

              If DBEVAT[1] > 0 then
              Write(Lst,' EVAT -DIFF BILLING / JAN 2010',Format(DBEVAT[1],'###,###,###.##')) else
              Write(Lst,'                              ',Format(0,'###,###,###.##'));

              If DBEVAT[2] > 0 then
              Writeln(Lst,' | EVAT -DIFF BILLING / JAN 2010',Format(DBEVAT[2],'###,###,###.##')) else
              Writeln(Lst,' |                              ',Format(0,'###,###,###.##'));

              Writeln(Lst,'                                               |                                               ');
              Writeln(Lst,'                  TOTAL BILL  ________________ |                  TOTAL BILL  ________________ ');
              Writeln(Lst,'                                               |                                               ');
              Writeln(Lst,'Meter Reader _________________________________ | Meter Reader ________________________________ ');
              Writeln(Lst,'                                               |                                               ');

              ConsCount := 0;

          end;

      end; { end with }
   end; { end case printoption = 1 }

 2:begin

      FillChar(PrintRecord,SizeOf(PrintRecord),#0);
      ConsCount := 1;

      With PrintRecord do
      begin

        meterrate.ParamByName('billmonth').Text := BillMonth.Text;
        meterrate.open;

        if meterrateWRSw.Text = '0' then
          meterrate.FilterSQL := 'ratecode = '+QuotedStr(masterRateCode.Text) else
          meterrate.FilterSQL := 'wratecode = '+QuotedStr(masterWRateCode.Text);

        If meterrateDiffBillApply.Text = '1' then
           begin
             DiffCons.ParamByName('Code').Text      := masterCode.Text;
             DiffCons.ParamByName('BillMonth').Text := meterrateDiffBillMonth.Text;
             DiffCons.Open;

             If not DiffCons.IsEmpty then
               begin
                  DBKWHR[ConsCount]    := DiffConskilowatthour.AsFloat;
                  DBKW[ConsCount]      := DiffConskilowattused.AsFloat;
                  DBPerKwhr[ConsCount] := DiffConskilowatthour.AsFloat * meterrateDiffBillPerKwhr.AsFloat;
                  DBPerKW[ConsCount]   := DiffConskilowattused.AsFloat * meterrateDIffBillPerKW.AsFloat;
                  DBPerCust[ConsCount] := meterrateDiffBillPerCust.AsFloat;

                  DBEvat[ConsCount]    := (DBPerKwhr[ConsCount]  +
                                           DBPerKW[ConsCount] +
                                           DBPerCust[ConsCount]) * (meterrateVAT.AsCurrency / 100);
               end;
             DiffCons.Close;

           end;

          If meterratePantawidApply.Text = '1' then
            begin
              PKVR.ParamByName('code').Text      := masterCode.Text;
              PKVR.ParamByName('area').Text      := masterArea.Text;
              PKVR.ParamByName('book').Text      := masterBook.Text;
              PKVR.Open;

              If PKVR.IsEmpty then PKVRAmt[ConsCount] := 0
               else
                begin
                  PKVRAmt[ConsCount]          := PKVRcredit.AsCurrency;
                  PKVRBillMonthStr[ConsCount] := PKVRBillMonth.Text;
                end;

              If PKVR.IsEmpty then
              begin
                GetPKV.ParamByName('code').Text      := masterCode.Text;
                GetPKV.ParamByName('area').Text      := masterArea.Text;
                GetPKV.ParamByName('book').Text      := masterBook.Text;
                GetPKV.Open;

                If GetPKV.IsEmpty then PKKVAmt[ConsCount] := 0 else PKKVAmt[ConsCount] := GetPKVdebit.AsCurrency - GetPKVcredit.AsCurrency;
              end;
              GetPKV.Close;
              PKVR.Close;

            end;

        meterrate.close;

        CMKwh[ConsCount] := 0;

        If masterCM.Text = '1' then
        CMKwh[ConsCount] := masterCMPresentReadingKWH.AsCurrency - masterCMPreviousReadingKWH.AsCurrency;

        SCRead.ParamByName('scode').Text                := masterCode.Text;
        SCRead.ParamByName('presentreadingdate').AsDate := IncMonth(masterPresentReadingDate.AsDateTime);
        SCRead.Open;

        If not SCRead.IsEmpty then Senior := 'SC Entitled' else Senior := '           ';

        SCRead.Close;

        AccountNumber[ConsCount]      := JustStr(masterAccountNumber.Text,' ',10,0) ;
        Serial[ConsCount]             := JustStr(MasterSerial.Text,' ',15,0) ;
        Name[ConsCount]               := JustStr(masterName.Text,' ',30,0) ;
        RateCode[ConsCount]           := JustStr(masterWRateCode.Text,' ',1,0) ;
        Mult[ConsCount]               := JustStr(masterMultiplier.Text,' ',3,0) ;
        Address[ConsCount]            := JustStr(masterAddress.Text,' ',30,0) ;
        PresentReadingDate[ConsCount] := JustStr(masterPresentReadingDate.Text,' ',10,0) ;
        PresentReading[ConsCount]     := MasterPresentReadingKWH.AsCurrency ;
        OCAmount[ConsCount]           := masterOCAmount1.AsCurrency+
                                         masterOCAmount2.AsCurrency+
                                         masterOCAmount2.AsCurrency;
        TransformerRental[ConsCount]  := masterTransformerRental.AsCurrency;

        Arrears.ParamByName('code').Text := masterCode.Text;
        Arrears.Open;

        ArrearsAmt[ConsCount]             := Arrearsamount.AsCurrency;
        Arrears.Close;

        Write(Lst,#27+'M');
        Writeln(Lst,'------------------------------------------------');
        Writeln(Lst,'     ZAMBOANGA DEL NORTE ELEC. COOP., INC      |');
        Writeln(Lst,'                  (ZANECO)                     |');
        Writeln(Lst,'         BILLING STATEMENT OF ACCOUNT          |');
        Writeln(Lst,'-----------------------------------------------|');
        Writeln(Lst,' ',AccountNumber[1],' - ',Serial[1],'         Rate ',RateCode[1],'   | ');
        Writeln(Lst,' ',Name[1],'       Mult ',Mult[1],' | ');
        Writeln(Lst,' ',Address[1],'    ',Senior,' | ');
        Writeln(Lst,'-----------------------------------------------|');
        Writeln(Lst,'                      From          To         |');
        Writeln(Lst,'    Period Covered ',PresentReadingDate[1],' - ___________    |');
        Writeln(Lst,' ',BillMonthStr,'  Due Date _____________  |');
        Writeln(Lst,'                                               |');
        Writeln(Lst,' Present Reading  __________                   |');
        Writeln(Lst,' Previous Reading ',PresentReading[1]:10:1,'                   |');
        Writeln(Lst,'                                               |');
        Writeln(Lst,' Difference       __________                   |');
        Writeln(Lst,'                                               |');
        Writeln(Lst,' Change Meter Kwh ',cmkwh[1]:10:1,'       Amount      |');
        Writeln(Lst,' Kilowatt Hour    __________                   |');
        Writeln(Lst,' Demand           __________  ________________ |');
        Writeln(Lst,'                                               |');
        Writeln(Lst,' Transformer Rental           ',Format(TransformerRental[1],'###,###,###.##'),' |');
        Writeln(Lst,' Other Charges                ',Format(OCAmount[1],'###,###,###.##'),' |');

        PKVStr1 := '                                               ';
        PKVStr2 := '                                                ';

        If PKKVAmt[1] > 0 then PKVStr1 := ' Pantawid Balance             '+Format(PKKVAmt[1],'###,###,###.##') else
        If PKVRAmt[1] > 0 then PKVStr1 := ' Pantawid Recovery '+PKVRBillMonthStr[1]+'       '+Format(PKVRAmt[1],'###,###,###.##');
        Writeln(Lst,PKVStr1);

        If ArrearsAmt[1] > 0 then
        Write(Lst,#27+'E'+' WITH ARREARS                 ',Format(0,'###,###,###.##'),#27+'F') else
        Write(Lst,  '                              ',Format(0,'###,###,###.##'));
        Writeln(Lst);

        If DBEvat[1] > 0 then
        Writeln(Lst,' TOTAL DIFF BILLING / JAN 2010',Format((DBPerKwhr[1]+DBPerKW[1]+DBPerCust[1])/10,'###,###,###.##')) else
        Writeln(Lst,'                              ',Format(0,'###,###,###.##'));

        If DBEvat[1] > 0 then
        Writeln(Lst,' EVAT -DIFF BILLING / JAN 2010',Format((DBEVAT[1]/10),'###,###,###.##')) else
        Writeln(Lst,'                              ',Format(0,'###,###,###.##'));

        Writeln(Lst,'                                               |');
        Writeln(Lst,'                  TOTAL BILL  ________________ |');
        Writeln(Lst,'Meter Reader _________________________________ |');
        Writeln(Lst);
        Writeln(Lst);

      end; { end with }
   end; { end case printoption = 1 }

 end; { end case }


Master.Next;
end;

If (ConsCount = 1) and (PrintOption.ItemIndex <> 2) then
begin
   With PrintRecord do
   begin
    Write(Lst,#27+'M');
    Writeln(Lst,'------------------------------------------------');
    Writeln(Lst,'     ZAMBOANGA DEL NORTE ELEC. COOP., INC      |');
    Writeln(Lst,'                  (ZANECO)                     |');
    Writeln(Lst,'         BILLING STATEMENT OF ACCOUNT          |');
    Writeln(Lst,'-----------------------------------------------|');
    Writeln(Lst,' ',AccountNumber[1],' - ',Serial[1],'         Rate ',RateCode[1],'   |');
    Writeln(Lst,' ',Name[1],'       Mult ',Mult[1],' |');
    Writeln(Lst,' ',Address[1],'                |');
    Writeln(Lst,'-----------------------------------------------|');
    Writeln(Lst,'                      From          To         |');
    Writeln(Lst,'    Period Covered ',PresentReadingDate[1],' - ___________    |');
    Writeln(Lst,' ',BillMonthStr,'  Due Date _____________  |');
    Writeln(Lst,'                                               |');
    Writeln(Lst,' Present Reading  __________                   |');
    Writeln(Lst,' Previous Reading ',PresentReading[1]:10:1,'                   |');
    Writeln(Lst,'                                               |');
    Writeln(Lst,' Difference       __________                   |');
    Writeln(Lst,'                                               |');
    Writeln(Lst,' Change Meter Kwh ',cmkwh[1]:10:1,'       Amount      |');
    Writeln(Lst,' Kilowatt Hour    __________                   |');
    Writeln(Lst,' Demand           __________  ________________ |');
    Writeln(Lst,'                                               |');
    Writeln(Lst,' Transformer Rental           ',Format(TransformerRental[1],'###,###,###.##'),' |');
    Writeln(Lst,' Other Charges                ',Format(OCAmount[1],'###,###,###.##'),' |');
    Writeln(Lst,' Pantawid Balance             ',Format(PKKVAmt[1],'###,###,###.##'),' |');
    If ArrearsAmt[1] > 0 then
    Write(Lst,#27+'E'+' WITH ARREARS                 ',Format(0,'###,###,###.##'),#27+'F') else
    Write(Lst,  '                              ',Format(0,'###,###,###.##'));
    Writeln(Lst);
    If DBEvat[1] > 0 then
    Write(Lst,' TOTAL DIFF BILLING / JAN 2010',Format(DBPerKwhr[1]+DBPerKW[1]+DBPerCust[1],'###,###,###.##')) else
    Write(Lst,'                              ',Format(0,'###,###,###.##'));

    If DBEvat[1] > 0 then
    Write(Lst,' EVAT -DIFF BILLING / JAN 2010',Format(DBEVAT[1],'###,###,###.##')) else
    Write(Lst,'                              ',Format(0,'###,###,###.##'));
    Writeln(Lst,'                                               |');
    Writeln(Lst,'                  TOTAL BILL  ________________ |');
    Writeln(Lst,'                                               |');
    Writeln(Lst,'Meter Reader _________________________________ |');
    Writeln(Lst,'                                               |');
   end;
end; { end if }

master.Close;
vicinity.Close;
ar.Close;

If LineCount > 0 then
Write(Lst,#12);
CloseFile(Lst);
ShowMessage('Done.');
end;

procedure TMeterReadingSheetForm.Button2Click(Sender: TObject);
begin
   Close;
end;

procedure TMeterReadingSheetForm.AreaKeyPress(Sender: TObject;
  var Key: Char);
begin
  If key = #13 then
    begin
      Perform(CM_DIALOGKEY,VK_TAB,0);
      key := #0;
    end;
end;

end.
