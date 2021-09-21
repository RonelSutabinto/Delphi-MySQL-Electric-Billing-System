unit spotbill;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Mask, StdCtrls, ExtCtrls, Gauges, DB, MemDS,
  DBAccess, MyAccess, DsFancyButton, NxCollection;

type
  TSpotBillingForm = class(TForm)
    Panel2: TPanel;
    Gauge1: TGauge;
    Button1: TNxButton;
    Button2: TNxButton;
    master: TMyQuery;
    PrevDate: TMyQuery;
    PrevDatePresentReadingDate: TDateField;
    PrevDateTAccount: TLargeintField;
    PrintOption: TRadioGroup;
    GetPKV: TMyQuery;
    GetPKVdebit: TFloatField;
    GetPKVcredit: TFloatField;
    MyConnection1: TMyConnection;
    masterEntry: TIntegerField;
    masterCode: TFloatField;
    masterArea: TStringField;
    masterBook: TStringField;
    masterSequence: TStringField;
    masterAccountNumber: TStringField;
    masterName: TStringField;
    masterAddress: TStringField;
    masterRateCode: TStringField;
    masterSerial: TStringField;
    masterMultiplier: TFloatField;
    masterPreviousReadingDate: TDateField;
    masterPresentReadingDate: TDateField;
    masterPresentReadingKWH: TFloatField;
    masterPreviousReadingKWH: TFloatField;
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
    masterOCAmount1: TFloatField;
    masterOCCode1: TStringField;
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
    masterBillDate: TDateField;
    masterStatusCode: TStringField;
    masterLCCustMo: TFloatField;
    masterPrevYearAdjPowerCost: TFloatField;
    masterSysLossUnderRecov: TFloatField;
    masterVATDisc: TFloatField;
    masterVATDiscAmt: TFloatField;
    masterVATDistDiscAmt: TFloatField;
    masterVATGenCoDiscAmt: TFloatField;
    masterVATTransCoDiscAmt: TFloatField;
    masterVATSystemLossDiscAmt: TFloatField;
    masterVATDist: TFloatField;
    masterVATGenCO: TFloatField;
    masterVATTransCO: TFloatField;
    masterVATSystemLossGenCO: TFloatField;
    masterVATSystemLossTransCO: TFloatField;
    masterVAT: TFloatField;
    masterAdjAmountBalance: TFloatField;
    masterAdjAmountApplied: TFloatField;
    Arrears: TMyQuery;
    Arrearsamount: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  var
  SpotBillingForm: TSpotBillingForm;

implementation

uses Data, StatusUpdate, ModTools, MasterList, DateUtils, ReadingCompute;

{$R *.dfm}

Var
Lst            : Text ;
BillMonthArray : Array[1..3] of String[5];
BillMonthCons  : Array[1..3] of Real;
Mon,Yr         : Word;
Check          : Integer;
BillMonthStr   : String[20];
MonStr,YrStr   : String[2];
BMonStr        : String[4];

procedure TSpotBillingForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
   SpotBillingForm := Nil;
end;

procedure TSpotBillingForm.Button1Click(Sender: TObject);
Var PageCount,LineCount : Word   ;
    HeadSW              : Word   ;
    Count               : Word   ;
    I                   : Integer;
    ConnStr             : String ;
    PrevDateStr         : String ;

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
    TransformerRental  : Array[1..2] of Currency   ;
    PKKVAmt            : Array[1..2] of Currency   ;
    ArrearsAmt         : Array[1..2] of Currency   ;
end;

Var
    PrintRecord        : PrintR                    ;
    ConsCount          : Integer                   ;

Label Jump;

begin
  Master.Close;
  Master.ParamByName('area').Text      := BillingData.VicinityArea.Text;
  Master.ParamByName('book').Text      := BillingData.VicinityBook.Text;
  Master.ParamByName('billmonth').Text := ReadingComputeForm.BillMonth;
  master.Open;

  If Master.IsEmpty then
    begin
      MessageDlg('There are no records to print for that area/route.....', mtError, [mbOK], 0);
      Master.Close;
      exit;
    end;

  BMonStr := ReadingComputeForm.BillMonth;

  Mon := StrToInt(Copy(BMonStr,1,2));
  Yr  := StrToInt(Copy(BMonStr,3,2));

  Inc(Mon);

  If Mon > 12 then
    begin
      Mon := 1;
      Inc(Yr);
    end;

  BMonStr := JustStr(IntToStr(Mon),'0',2,1) + JustStr(IntToStr(Yr),'0',2,1);

  Val(Copy(BMonStr,1,2),Mon,Check);
  Val(Copy(BMonStr,3,2),Yr,Check);

  Case Mon of
    01 : BillMonthStr := 'JANUARY '+Copy(BMonStr,3,2);
    02 : BillMonthStr := 'FEBRUARY '+Copy(BMonStr,3,2);
    03 : BillMonthStr := 'MARCH '+Copy(BMonStr,3,2);
    04 : BillMonthStr := 'APRIL '+Copy(BMonStr,3,2);
    05 : BillMonthStr := 'MAY '+Copy(BMonStr,3,2);
    06 : BillMonthStr := 'JUNE '+Copy(BMonStr,3,2);
    07 : BillMonthStr := 'JULY '+Copy(BMonStr,3,2);
    08 : BillMonthStr := 'AUGUST '+Copy(BMonStr,3,2);
    09 : BillMonthStr := 'SEPTEMBER '+Copy(BMonStr,3,2);
    10 : BillMonthStr := 'OCTOBER '+Copy(BMonStr,3,2);
    11 : BillMonthStr := 'NOVEMBER '+Copy(BMonStr,3,2);
    12 : BillMonthStr := 'DECEMBER '+Copy(BMonStr,3,2);
  end;

  BillMonthStr := JustStr(BillMonthStr,' ',20,0);

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

  Gauge1.Progress    := 0;
  Gauge1.MinValue    := 0;
  Gauge1.MaxValue    := Master.RecordCount;

  LineCount := 0;
  HeadSw    := 0;

while not Master.Eof do
begin
   Gauge1.AddProgress(1);
   Application.ProcessMessages;

   Case PrintOption.ItemIndex of
   0:begin

      If ConsCount = 0 then FillChar(PrintRecord,SizeOf(PrintRecord),#0);

      Inc(ConsCount);

        With PrintRecord do
        begin

            GetPKV.ParamByName('code').Text      := masterCode.Text;
            GetPKV.ParamByName('area').Text      := masterArea.Text;
            GetPKV.ParamByName('book').Text      := masterBook.Text;
            GetPKV.Open;

            If GetPKV.IsEmpty then PKKVAmt[ConsCount] := 0 else PKKVAmt[ConsCount] := GetPKVdebit.AsCurrency - GetPKVcredit.AsCurrency;
            GetPKV.Close;

            CMKwh[ConsCount] := 0;

            If masterCM.Text = '1' then
            CMKwh[ConsCount] := masterCMPresentReadingKWH.AsCurrency - masterCMPreviousReadingKWH.AsCurrency;

            AccountNumber[ConsCount]      := JustStr(MasterAccountNumber.Text,' ',10,0) ;
            Serial[ConsCount]             := JustStr(MasterSerial.Text,' ',15,0) ;
            Name[ConsCount]               := JustStr(masterName.Text,' ',30,0) ;
            RateCode[ConsCount]           := JustStr(masterRateCode.Text,' ',1,0) ;
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
                Writeln(Lst,' Transformer Rental           ',Format(TransformerRental[1],'###,###,###.##'),' | Transformer Rental           ',
                                                             Format(TransformerRental[2],'###,###,###.##'));
                Writeln(Lst,' Other Charges                ',Format(OCAmount[1],'###,###,###.##'),
                          ' | Other Charges                ',Format(OCAmount[2],'###,###,###.##'));
                Writeln(Lst,' Pantawid Balance             ',Format(PKKVAmt[1],'###,###,###.##'),
                          ' | Pantawid Balance             ',Format(PKKVAmt[2],'###,###,###.##'));
                If ArrearsAmt[1] > 0 then
                Write(Lst,#27+'E'+' WITH ARREARS                 ',Format(0,'###,###,###.##'),#27+'F') else
                Write(Lst,  '                              ',Format(0,'###,###,###.##'));

                If ArrearsAmt[2] > 0 then
                Writeln(Lst,#27+'E'+' | WITH ARREARS                 ',Format(0,'###,###,###.##')+#27+'F') else
                Writeln(Lst,' |                              ',Format(0,'###,###,###.##'));
                Writeln(Lst,'                                               |                                               ');
                Writeln(Lst,'                  TOTAL BILL  ________________ |                  TOTAL BILL  ________________ ');
                Writeln(Lst,'                                               |                                               ');
                Writeln(Lst,'                                               |                                               ');
                Writeln(Lst,'Meter Reader _________________________________ | Meter Reader ________________________________ ');
                Writeln(Lst,'                                               |                                               ');
                Writeln(Lst,'                                               |                                               ');

                ConsCount := 0;

            end;

        end; { end with }
     end; { end case printoption = 1 }

   1:begin

      ConsCount := 1;

        With PrintRecord do
        begin

          GetPKV.ParamByName('code').Text      := masterCode.Text;
          GetPKV.ParamByName('area').Text      := masterArea.Text;
          GetPKV.ParamByName('book').Text      := masterBook.Text;
          GetPKV.Open;

          If GetPKV.IsEmpty then PKKVAmt[ConsCount] := 0 else PKKVAmt[ConsCount] := GetPKVdebit.AsCurrency - GetPKVcredit.AsCurrency;
          GetPKV.Close;

          CMKwh[ConsCount] := 0;

          If masterCM.Text = '1' then
          CMKwh[ConsCount] := masterCMPresentReadingKWH.AsCurrency - masterCMPreviousReadingKWH.AsCurrency;

          AccountNumber[ConsCount]      := JustStr(MasterAccountNumber.Text,' ',10,0) ;
          Serial[ConsCount]             := JustStr(MasterSerial.Text,' ',15,0) ;
          Name[ConsCount]               := JustStr(masterName.Text,' ',30,0) ;
          RateCode[ConsCount]           := JustStr(masterRateCode.Text,' ',1,0) ;
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
          Writeln(Lst,' ',Address[1],'                | ');
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
          Writeln(Lst,'                                               |');
          Writeln(Lst,'                  TOTAL BILL  ________________ |');
          Writeln(Lst,'                                               |');
          Writeln(Lst,'                                               |');
          Writeln(Lst,'Meter Reader _________________________________ |');
          Writeln(Lst,'                                               |');
          Writeln(Lst,'                                               |');

        end; { end with }
     end; { end case printoption = 1 }

   end; { end case }

Master.Next;
end;

If ConsCount = 1 then
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
    Writeln(Lst,'                                               |');
    Writeln(Lst,'                  TOTAL BILL  ________________ |');
    Writeln(Lst,'                                               |');
    Writeln(Lst,'                                               |');
    Writeln(Lst,'Meter Reader _________________________________ |');
    Writeln(Lst,'                                               |');
    Writeln(Lst,'                                               |');
   end;
end; { end if }

master.Close;

If LineCount > 0 then
Write(Lst,#12);
CloseFile(Lst);
ShowMessage('Done.');
end;

procedure TSpotBillingForm.Button2Click(Sender: TObject);
begin
   Close;
end;

end.
