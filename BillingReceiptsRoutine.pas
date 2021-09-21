Procedure JustifyReceipt;
Var BillMonth         : String[4];

begin
with BillingData do
begin
PresDate        := JustStr(BillPresentReadingDate.Text,' ',8,0);
PrevDate        := JustStr(BillPreviousReadingDate.Text,' ',8,0);

BillMonth       := JustStr(BillBillMonth.Text,'0',4,0);

If Copy(BillMonth,1,2) = '01' then MonStr := 'January,'+Copy(BillMonth,3,2);
If Copy(BillMonth,1,2) = '02' then MonStr := 'February,'+Copy(BillMonth,3,2);
If Copy(BillMonth,1,2) = '03' then MonStr := 'March,'+Copy(BillMonth,3,2);
If Copy(BillMonth,1,2) = '04' then MonStr := 'April,'+Copy(BillMonth,3,2);
If Copy(BillMonth,1,2) = '05' then MonStr := 'May,'+Copy(BillMonth,3,2);
If Copy(BillMonth,1,2) = '06' then MonStr := 'June,'+Copy(BillMonth,3,2);
If Copy(BillMonth,1,2) = '07' then MonStr := 'July,'+Copy(BillMonth,3,2);
If Copy(BillMonth,1,2) = '08' then MonStr := 'August,'+Copy(BillMonth,3,2);
If Copy(BillMonth,1,2) = '09' then MonStr := 'September,'+Copy(BillMonth,3,2);
If Copy(BillMonth,1,2) = '10' then MonStr := 'October,'+Copy(BillMonth,3,2);
If Copy(BillMonth,1,2) = '11' then MonStr := 'November,'+Copy(BillMonth,3,2);
If Copy(BillMonth,1,2) = '12' then MonStr := 'December,'+Copy(BillMonth,3,2);
MonStr := JustStr(MonStr,' ',15,0);
TotalPower := BillGenSysCharge.AsCurrency +
              BillHostCommCharge.AsCurrency +
              BillForexCharge.AsCurrency +
              BillTCDemandCharge.AsCurrency +
              BillTCTransSystemCharge.AsCurrency +
              BillSystemLossCharge.AsCurrency +
              BillDCDemandCharge.AsCurrency +
              BillDCDistributionCharge.AsCurrency +
              BillSCRetCustCharge.AsCurrency +
              BillSCSupplySysCharge.AsCurrency +
              BillMCRetailCustCharge.AsCurrency +
              BillMCSystemCharge.AsCurrency;

end;
end;

Function CutExcess(Data : Real) : Real;
Var
DataStr  : String  ;
Check    : Integer ;
DataR    : Real    ;
begin
Str(Data:0:5,DataStr);
DataStr := Copy(DataStr,1,Length(DataStr)-3);
Val(DataStr,DataR,Check);
Str(DataR:0:2,DataStr);
Val(DataStr,DataR,Check);
Str(DataR:0:2,DataStr);
CutExcess := DataR;
end;


Procedure PrintPowerBill;
var
PrintString                            : String[80]                           ;
RateStr                                : String[15]                           ;

begin
{ PrintString,PrintString1,PrintString2 is to be used to line content generating }

With BillingData do
begin

Write(Lst,#27 + 'M');
Write(Lst);
If BillRateCode.Text = 'R' then RateStr := 'Residential    ';
If BillRateCode.Text = 'C' then RateStr := 'Commercial     ';
If BillRateCode.Text = 'P' then RateStr := 'Public Bldg.   ';
If BillRateCode.Text = 'I' then RateStr := 'Industrial     ';
If BillRateCode.Text = 'F' then RateStr := 'Flat Rate      ';

// Line 1
Writeln(lst,' ':13,MonStr,
            ' ':05,RateStr,
            ' ':18,MonStr,
            ' ':05,RateStr,
            ' ':18,MonStr);
// Line 2

PrintString := JustStr(BillName.Text,' ',30,0) + ' '+
               JustStr(BillAccountNumber.Text,' ',8,0);

Writeln(Lst,JustStr(BillName.Text,' ',30,0),' ':3,
            PrintString,'-',BillSequence.Text,' ':09,
            PrintString,'-',BillSequence.Text);

// Line 3
PrintString := JustStr(BillAddress.Text,' ',30,0)+' '+
               JustStr(BillSerial.Text,' ',13,0)+' '+
               JustStr(IntToStr(BillMultiplier.AsInteger),' ',5,0);

Writeln(Lst,JustStr(BillAddress.Text,' ',30,0),' ':3,
            PrintString,' ':3,
            PrintString);

Writeln(Lst,'Acct # ',BillAccountNumber.Text);

// Line 4
If (BillFeedBackCode.Text <> 'A') then
Writeln(Lst,' ':10,PrevDate,' ',PresDate,' ':6,
                   PrevDate,' ':3,PresDate,' ',
                   BillPresentReadingKWH.AsFloat:8:1,' ',
                   BillPreviousReadingKWH.AsFloat:8:1,' ':2,
                   BillKilowattHour.AsFloat:11:1,' ':3,
                   PrevDate,' ':3,PresDate,' ',
                   BillPresentReadingKWH.AsFloat:8:1,' ',
                   BillPreviousReadingKWH.AsFloat:8:1,' ':2,
                   BillKilowattHour.AsFloat:11:1);
If (BillFeedBackCode.Text = 'A') then
Writeln(Lst,' ':10,PrevDate,' ',PresDate,' ':6,
                   PrevDate,' ':3,PresDate,
                   ' Average ':20,
                   BillKilowattHour.AsFloat:11:1,' ':3,
                   PrevDate,' ':3,PresDate,' ',
                   ' Average ':20,
                   BillKilowattHour.AsFloat:11:1);


// Line 5
If BillCM.Text = '1' then
Writeln(Lst,' ':33,BillCMPresentReadingKWH.AsFloat:8:1,' ':3,
                   BillCMPreviousReadingKWH.AsFloat:8:1,' ',
                   BillCMKilowattHour.AsFloat:8:1,' ',
                   BillCMDemand.AsFloat:8:1,' ':2,
                   BillKilowattUsed.AsFloat:11:1,' ':3,
                   BillCMPresentReadingKWH.AsFloat:8:1,' ':3,
                   BillCMPreviousReadingKWH.AsFloat:8:1,' ',
                   BillCMKilowattHour.AsFloat:8:1,' ',
                   BillCMDemand.AsFloat:8:1,' ':2,
                   BillKilowattUsed.AsFloat:11:1);
If BillCM.Text <> '1' then
Writeln(Lst,' ':72,BillKilowattUsed.AsFloat:11:1,
            ' ':42,BillKilowattUsed.AsFloat:11:1);
Writeln(lst);

// Line 6
Writeln(Lst,' ':07,BillPresentReadingKWH.AsFloat:8:1,' ',
                   BillKilowattHour.AsFloat:13:1,' ':15,
                   Format(BillGenSysCharge.AsCurrency,'#,###,###.##'),' ':11,
                   Format(BillUCNPCStrandedDebts.AsCurrency ,'#,###,###.##'),' ':14,
                   Format(BillGenSysCharge.AsCurrency,'#,###,###.##'),' ':11,
                   Format(BillUCNPCStrandedDebts.AsCurrency ,'#,###,###.##'));
// Line 7
Writeln(Lst,' ':16,BillCMDemand.AsFloat+BillKilowattUsed.AsFloat:13:1,' ':15,
                   Format(BillHostCommCharge.AsCurrency,'#,###,###.##'),' ':11,
                   Format(BillUCNPCStrandedContCost.AsCurrency,'#,###,###.##'),' ':14,
                   Format(BillHostCommCharge.AsCurrency,'#,###,###.##'),' ':11,
                   Format(BillUCNPCStrandedContCost.AsCurrency,'#,###,###.##'));

// Line 8
Writeln(Lst,' ':44,Format(BillForexCharge.AsCurrency,'#,###,###.##'),' ':11,
                   Format(BillUCDUStrandedContCost.AsCurrency,'#,###,###.##'),' ':14,
                   Format(BillForexCharge.AsCurrency,'#,###,###.##'),' ':11,
                   Format(BillUCDUStrandedContCost.AsCurrency,'#,###,###.##'));

// Line 9
Writeln(Lst,' ':44,Format(BillTCDemandCharge.AsCurrency,'#,###,###.##'),' ':11,
                   Format(BillUCME.AsCurrency,'#,###,###.##'),' ':14,
                   Format(BillTCDemandCharge.AsCurrency,'#,###,###.##'),' ':11,
                   Format(BillUCME.AsCurrency,'#,###,###.##'));
// Line 10
Writeln(Lst,' ':16,Format(BillTotalBill.AsCurrency,'#,###,###.##'),' ':14,
                   Format(BillSystemLossCharge.AsCurrency,'#,###,###.##'),' ':11,
                   Format(BillUCEqTaxesAndRoyalties.AsCurrency,'#,###,###.##'),' ':14,
                   Format(BillSystemLossCharge.AsCurrency,'#,###,###.##'),' ':11,
                   Format(BillUCEqTaxesAndRoyalties.AsCurrency,'#,###,###.##'));

// Line 11
Writeln(Lst,' ':44,Format(BillDCDemandCharge.AsCurrency,'#,###,###.##'),' ':11,
                   Format(BillUCEC.AsCurrency,'#,###,###.##'),' ':14,
                   Format(BillDCDemandCharge.AsCurrency,'#,###,###.##'),' ':11,
                   Format(BillUCEC.AsCurrency,'#,###,###.##'));

// Line 12
Writeln(Lst,' ':16,Format(BillTotalBill.AsCurrency,'#,###,###.##'),' ':14,
                   Format(BillDCDistributionCharge.AsCurrency,'#,###,###.##'),' ':11,
                   Format(BillUCCrossSubRemoval.AsCurrency,'#,###,###.##'),' ':14,
                   Format(BillDCDistributionCharge.AsCurrency,'#,###,###.##'),' ':11,
                   Format(BillUCCrossSubRemoval.AsCurrency,'#,###,###.##'));
// Line 13
Writeln(Lst,' ':44,Format(BillSCRetCustCharge.AsCurrency,'#,###,###.##'),' ':11,
                   Format(BillPowerActRateRed.AsCurrency,'#,###,###.##'),' ':14,
                   Format(BillSCRetCustCharge.AsCurrency,'#,###,###.##'),' ':11,
                   Format(BillPowerActRateRed.AsCurrency,'#,###,###.##'));
// Line 14
Writeln(Lst,' ':44,Format(BillSCSupplySysCharge.AsCurrency,'#,###,###.##'),' ':11,
                   Format(BillLifelineDiscSubs.AsCurrency,'#,###,###.##'),' ':14,
                   Format(BillSCSupplySysCharge.AsCurrency,'#,###,###.##'),' ':11,
                   Format(BillLifelineDiscSubs.AsCurrency,'#,###,###.##'));
// Line 15
Writeln(Lst,' ':44,Format(BillMCRetailCustCharge.AsCurrency,'#,###,###.##'),' ':11,
                   Format(BillLoanCondo.AsCurrency,'#,###,###.##'),' ':14,
                   Format(BillMCRetailCustCharge.AsCurrency,'#,###,###.##'),' ':11,
                   Format(BillLoanCondo.AsCurrency,'#,###,###.##'));
// Line 16
Writeln(Lst,' ':44,Format(BillMCSystemCharge.AsCurrency,'#,###,###.##'),' ',
                   'IC-CrosSub',
                   Format(BillICCrossSubsidyCharge.AsCurrency,'#,###,###.##'),' ':14,
                   Format(BillMCSystemCharge.AsCurrency,'#,###,###.##'),' ',
                   'IC-CrosSub',
                   Format(BillICCrossSubsidyCharge.AsCurrency,'#,###,###.##'));

// Line 17
Writeln(Lst,' ':34,'TransSysCh',
                   Format(BillTCTransSystemCharge.AsCurrency,'#,###,###.##'),' ',
                   JustStr(BillOCCode1.Text,' ',10,0),
                   Format(BillOCAmount1.AsCurrency,'#,###,###.##'),' ':4,
                   'TransSysCh',
                   Format(BillTCTransSystemCharge.AsCurrency,'#,###,###.##'),' ',
                   JustStr(BillOCCode1.Text,' ',10,0),
                   Format(BillOCAmount1.AsCurrency,'#,###,###.##'));

// Line 18
Writeln(Lst,' ':34,'          ',
                   Format(TotalPower,'#,###,###.##'),' ',
                   JustStr(BillOCCode2.Text,' ',10,0),
                   Format(BillOCAmount2.AsCurrency,'#,###,###.##'),
                   '    b          ',
                   Format(TotalPower,'#,###,###.##'),' ',
                   JustStr(BillOCCode2.Text,' ',10,0),
                   Format(BillOCAmount2.AsCurrency,'#,###,###.##'));

// Line 19
Writeln(Lst,' ':59,JustStr(BillOCCode3.Text,' ',10,0),
                   Format(BillOCAmount3.AsCurrency,'#,###,###.##'),
            ' ':29,JustStr(BillOCCode3.Text,' ',10,0),
                   Format(BillOCAmount3.AsCurrency,'#,###,###.##'));
Writeln(Lst,' ':41,PrintDueDate,' ':44,PrintDueDate);

// Line 20
Writeln(Lst,' ':35,BillBillNumber.Text,
            ' ':19,Format(BillTotalBill.AsCurrency,'#,###,###.##'),
            ' ':05,BillBillNumber.Text,
            ' ':19,Format(BillTOtalBill.AsCurrency,'#,###,###.##'));

Writeln(Lst);

// Line 21
Writeln(Lst,' ':69,Format(BillTotalBill.AsCurrency,'#,###,###.##'),
            ' ':39,Format(BillTOtalBill.AsCurrency,'#,###,###.##'));

Writeln(lst);
Writeln(lst);
Writeln(lst);
Writeln(lst);
Writeln(lst);
Writeln(lst);
Writeln(lst);
Writeln(lst);
end;
end;

