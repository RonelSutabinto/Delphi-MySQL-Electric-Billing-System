unit ConsumptionMonitor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, DB, MemDS,
  DBAccess, MyAccess, Gauges, DsFancyButton, NxCollection;

type
  TConsumptionMonitorForm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Edit1: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    BitBtn1: TNxButton;
    BitBtn2: TNxButton;
    Edit8: TEdit;
    Bevel1: TBevel;
    Master: TMyQuery;
    Gauge1: TGauge;
    AR: TMyQuery;
    AREntry: TIntegerField;
    ARCode: TFloatField;
    ARDate: TDateField;
    ARDocument: TStringField;
    ARBillMonth: TStringField;
    ARReading: TFloatField;
    ARKilowattHour: TFloatField;
    ARDebit: TFloatField;
    ARCredit: TFloatField;
    ARBalance: TFloatField;
    ARUCNPCSD: TFloatField;
    ARUCNPCSCC: TFloatField;
    ARUCDUSCC: TFloatField;
    ARUCME: TFloatField;
    ARUCETR: TFloatField;
    ARUCEC: TFloatField;
    ARUCCSR: TFloatField;
    ARCollectorCode: TStringField;
    ARVATDist: TFloatField;
    ARVATGenCO: TFloatField;
    ARVATTransCO: TFloatField;
    ARVATSystemLossGenCO: TFloatField;
    ARVATSystemLossTransCO: TFloatField;
    ARVAT: TFloatField;
    Masterentry: TIntegerField;
    MasterCode: TFloatField;
    MasterArea: TStringField;
    MasterBook: TStringField;
    MasterSequence: TStringField;
    MasterAccountNumber: TStringField;
    MasterName: TStringField;
    MasterAddress: TStringField;
    MasterRateCode: TStringField;
    MasterSerial: TStringField;
    MasterMultiplier: TFloatField;
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
    MasterKilowattHour: TFloatField;
    MasterKilowattUsed: TFloatField;
    MasterGenSysCharge: TFloatField;
    MasterHostCommCharge: TFloatField;
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
    Masterstatuscode: TStringField;
    MasterLCCustMo: TFloatField;
    MasterVATDist: TFloatField;
    MasterVATGenCO: TFloatField;
    MasterVATTransCO: TFloatField;
    MasterVATSystemLossGenCO: TFloatField;
    MasterVATSystemLossTransCO: TFloatField;
    MasterVAT: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ConsumptionMonitorForm : TConsumptionMonitorForm ;
  Lst                    : Text                    ;
  HeadSw                 : Boolean                 ;
  LineCount              : Word                    ;
  PageCount              : Word                    ;

implementation

uses Data, ModTools;

{$R *.dfm}

procedure TConsumptionMonitorForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TConsumptionMonitorForm.BitBtn1Click(Sender: TObject);
Var
MonthStr : Array[1..3] of String[4];
Cons1,Cons2,Cons3,Cons4 : Integer;
Percent : Currency;
MonitorConstant : Real;
Check : Integer;
CumLevel : Integer;
Mon,Yr : String[2];
MV,YV : Integer;
Lp : Integer;

Procedure Heading;
begin
Writeln(Lst,#27 + 'P','Page # ',PageCount);
Writeln(Lst,'CONSUMPTION MONITOR');
Writeln(Lst,'Billing Month      : ',Edit8.Text);
Writeln(Lst,'Kilowatthour Level : ',Edit6.Text);
Writeln(Lst,'Monitor Level      : ',Edit7.Text);
Writeln(lst,'Area               : ',Edit1.Text);
Writeln(lst,'Months Monitored   : ',Edit8.Text,' ',
                                    MonthStr[1],' ',
                                    MonthStr[2],' ',
                                    MonthStr[3]);
Writeln(Lst,'------------------------------------------------------------------------------');
Writeln(Lst,'|Account #|         Consumer Name        |   4Th|   3rd|   2nd|   CMC|    ML |');
Writeln(Lst,'------------------------------------------------------------------------------');
end;

begin
  Mon := Copy(Edit8.Text,1,2);
  Yr  := Copy(Edit8.Text,3,2);

  Val(Mon,MV,Check);
  Val(Yr,YV,Check);

  For Lp := 1 to 3 do
   begin
     Dec(MV);
     If MV = 0 then
       begin
        MV := 12;
        Dec(YV);
       end;
      Str(MV,Mon);
      Str(YV,Yr);
      MonthStr[Lp] := JustStr(Mon,'0',2,1) + JustStr(Yr,'0',2,1);
    end;

  Try
   AssignfILE(Lst,'LPT1');
   Rewrite(Lst);
  Except
   ShowMessage('Printer not ready');
   Exit;
  end;

  Master.Close;
  Master.SQL.Clear;

  If Edit1.Text = 'A' then
    Master.SQL.Add('select * from billhistory where billmonth = '+QuotedStr(Edit8.Text))
  else
   begin
    Master.SQL.Add('select * from billhistory where billmonth = '+QuotedStr(Edit8.Text)+' and ');
    Master.SQL.Add('                                area = '+QuotedStr(Edit1.Text));
   end;

  Master.Open;

  Gauge1.Progress := 0;
  Gauge1.MinValue := 0;
  Gauge1.MaxValue := Master.RecordCount;

  HeadSW           := True;
  LineCount        := 0;
  PageCount        := 1;
  Val(Edit7.Text,MonitorConstant,check);
  Val(Edit6.Text,CumLevel,check);

  Master.First;

    While not Master.Eof do
      begin
        Gauge1.AddProgress(1);
        Application.ProcessMessages;

        AR.Close;
        AR.ParamByName('code').Text := MasterCode.Text;
        AR.Open;

        AR.First;
        Cons1 := MasterKilowattHour.AsInteger;
        Cons2 := 0;
        Cons3 := 0;
        Cons4 := 0;

          While not AR.Eof do
           begin
            If ARBillMonth.Text = MonthStr[1] then Cons2 := ARKilowattHour.AsInteger;
            If ARBillMonth.Text = MonthStr[2] then Cons3 := ARKilowattHour.AsInteger;
            If ARBillMonth.Text = MonthStr[3] then Cons4 := ARKilowattHour.AsInteger;
            AR.Next;
           end;

         If HeadSW then
           begin
            Heading;
            HeadSW := False;
           end;

        Percent := (Cons1 - Cons2);

        If (Percent <> 0) and (Cons2 <> 0) then Percent := (Percent / Cons2) * 100;

        If (((MonitorConstant < 0) and (Percent <= MonitorConstant))
             or ((MonitorConstant >= 0) and (Percent >= MonitorConstant)))
           and (Cons2 >= CumLevel) then
        begin
             Writeln(Lst,'|',JustStr(MasterAccountNumber.Text,' ',9,0)       ,'|',
                             JustStr(MasterName.Text,' ',30,0)               ,'|',
                             Cons4:6                                         ,'|',
                             Cons3:6                                         ,'|',
                             Cons2:6                                         ,'|',
                             Cons1:6                                         ,'|',
                             Percent:7:2                                     ,'|');
            Inc(LineCount);

             If LineCount = 50 then
               begin
                 Writeln(Lst,'------------------------------------------------------------------------------');
                 HeadSW       := True;
                 Write(Lst,#12);
                 LineCount := 0;
                 Inc(PageCount);
               end;

           end;

         Master.Next;
      end;

     If LineCount > 0 then
     Writeln(Lst,'------------------------------------------------------------------------------');

     Master.Close;
     AR.Close;
     CloseFile(Lst);
     ShowMessage('Done.');

end;

end.
