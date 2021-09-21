unit summkwhr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin, ExtCtrls, DsFancyButton, Gauges, DB, MemDS,
  DBAccess, MyAccess;

type
  TSummKwhrForm = class(TForm)
    Area: TEdit;
    Label1: TLabel;
    ConsType: TRadioGroup;
    RangeFrom: TSpinEdit;
    Label2: TLabel;
    RangeTo: TSpinEdit;
    Label3: TLabel;
    Label4: TLabel;
    Bevel1: TBevel;
    RadioGroup1: TRadioGroup;
    DsFancyButton1: TDsFancyButton;
    DsFancyButton2: TDsFancyButton;
    DsFancyButton3: TDsFancyButton;
    Gauge1: TGauge;
    skmaster: TMyQuery;
    BillMonth: TEdit;
    Label5: TLabel;
    sksummary: TMyQuery;
    skmasterentry: TIntegerField;
    skmasterCode: TFloatField;
    skmasterArea: TStringField;
    skmasterBook: TStringField;
    skmasterSequence: TStringField;
    skmasterAccountNumber: TStringField;
    skmasterName: TStringField;
    skmasterAddress: TStringField;
    skmasterRateCode: TStringField;
    skmasterSerial: TStringField;
    skmasterMultiplier: TFloatField;
    skmasterPreviousReadingDate: TDateField;
    skmasterPresentReadingDate: TDateField;
    skmasterPreviousReadingKWH: TFloatField;
    skmasterPresentReadingKWH: TFloatField;
    skmasterDiff: TFloatField;
    skmasterDemand: TFloatField;
    skmasterFlatRateWattage: TFloatField;
    skmasterFeedBackCode: TStringField;
    skmasterCM: TStringField;
    skmasterCMMultiplier: TFloatField;
    skmasterCMPreviousReadingKWH: TFloatField;
    skmasterCMPresentReadingKWH: TFloatField;
    skmasterCMKilowattHour: TFloatField;
    skmasterCMDemand: TFloatField;
    skmasterKilowattHour: TFloatField;
    skmasterKilowattUsed: TFloatField;
    skmasterGenSysCharge: TFloatField;
    skmasterHostCommCharge: TFloatField;
    skmasterForexCharge: TFloatField;
    skmasterTCDemandCharge: TFloatField;
    skmasterTCTransSystemCharge: TFloatField;
    skmasterSystemLossCharge: TFloatField;
    skmasterDCDemandCharge: TFloatField;
    skmasterDCDistributionCharge: TFloatField;
    skmasterSCRetCustCharge: TFloatField;
    skmasterSCSupplySysCharge: TFloatField;
    skmasterMCRetailCustCharge: TFloatField;
    skmasterMCSystemCharge: TFloatField;
    skmasterUCNPCStrandedDebts: TFloatField;
    skmasterUCNPCStrandedContCost: TFloatField;
    skmasterUCDUStrandedContCost: TFloatField;
    skmasterUCME: TFloatField;
    skmasterUCEqTaxesAndRoyalties: TFloatField;
    skmasterUCEC: TFloatField;
    skmasterUCCrossSubRemoval: TFloatField;
    skmasterICCrossSubsidyCharge: TFloatField;
    skmasterPowerActRateRed: TFloatField;
    skmasterLifelineDiscSubs: TFloatField;
    skmasterLoanCondo: TFloatField;
    skmasterTransformerRental: TFloatField;
    skmasterOCCode1: TStringField;
    skmasterOCAmount1: TFloatField;
    skmasterOCMo1: TFloatField;
    skmasterOCTotal1: TFloatField;
    skmasterOCCode2: TStringField;
    skmasterOCAmount2: TFloatField;
    skmasterOCMo2: TFloatField;
    skmasterOCTotal2: TFloatField;
    skmasterOCCode3: TStringField;
    skmasterOCAmount3: TFloatField;
    skmasterOCMo3: TFloatField;
    skmasterOCTotal3: TFloatField;
    skmasterTotalBill: TFloatField;
    skmasterBillNumber: TStringField;
    skmasterOEBRNumber: TStringField;
    skmasterBillMonth: TStringField;
    skmasterBillDate: TDateField;
    skmasterstatuscode: TStringField;
    skmasterLCCustMo: TFloatField;
    skmasterPrevYearAdjPowerCost: TFloatField;
    skmasterSysLossUnderRecov: TFloatField;
    skmasterVATDisc: TFloatField;
    skmasterVATDiscAmt: TFloatField;
    skmasterVATDistDiscAmt: TFloatField;
    skmasterVATGenCoDiscAmt: TFloatField;
    skmasterVATTransCoDiscAmt: TFloatField;
    skmasterVATSystemLossDiscAmt: TFloatField;
    skmasterVATDist: TFloatField;
    skmasterVATGenCO: TFloatField;
    skmasterVATTransCO: TFloatField;
    skmasterVATSystemLossGenCO: TFloatField;
    skmasterVATSystemLossTransCO: TFloatField;
    skmasterVAT: TFloatField;
    sktmaster: TMyQuery;
    sktsummary: TMyQuery;
    sktmastertaccount: TLargeintField;
    sktmastertamount: TFloatField;
    sktsummarytaccount: TLargeintField;
    sktsummarytamount: TFloatField;
    OpenDialog1: TOpenDialog;
    sksummaryarea: TStringField;
    sksummaryaddress: TStringField;
    sksummarytaccount: TLargeintField;
    sksummarytamount: TFloatField;
    sktmastertkwhr: TFloatField;
    sktsummarytkwhr: TFloatField;
    sksummarytkwhr: TFloatField;
    Timer1: TTimer;
    procedure DsFancyButton1Click(Sender: TObject);
    procedure DsFancyButton3Click(Sender: TObject);
    procedure DsFancyButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SummKwhrForm           : TSummKwhrForm ;
  Lst                    : Text          ;
  HeadSw                 : Boolean       ;
  LineCount              : Word          ;
  PageCount              : Word          ;

implementation

uses Data, ModTools;

{$R *.dfm}

procedure TSummKwhrForm.DsFancyButton1Click(Sender: TObject);
Const
RateStr : Array[0..5] of String[15] = ('RESIDENTIAL','COMMERCIAL','PUBLIC BLDG.','INDUSTRIAL','STREET LIGHTS','ALL');
CT      : Array[0..5] of String[1] = ('R','C','P','I','S','%');

Procedure Heading;
begin
Writeln(Lst,#27 + 'P','Page # ',PageCount);
Writeln(Lst,'DETAILED MASTER LIST PER KILOWATTHOUR RANGE');
Writeln(Lst,'Billing Month      : ',BillMonth.Text);
Writeln(Lst,'Kilowatthour Range : ',RangeFrom.text+' - '+RangeTo.Text);
Writeln(Lst,'Consumer Type      : ',RateStr[Constype.itemindex]);
Writeln(lst,'Area               : ',Area.Text);
Writeln(Lst,'--------------------------------------------------------------------');
Writeln(Lst,'|Account #|         Consumer Name        |   KWHR   |       Amount |');
Writeln(Lst,'--------------------------------------------------------------------');
end;

begin
  If RadioGroup1.ItemIndex = 0 then
  begin
    Try
     AssignfILE(Lst,'LPT1');
     Rewrite(Lst);
    Except
     ShowMessage('Printer not ready');
     Exit;
    end;
  end
  else
  begin
    If not OpenDialog1.Execute then exit;
    Try
     AssignfILE(Lst,OpenDialog1.FileName);
     Rewrite(Lst);
    Except
     ShowMessage('Unable to open text file');
     Exit;
    end;
  end;

  Application.ProcessMessages;
  skmaster.ParamByName('area').Text      := Area.Text;
  skmaster.ParamByName('ratecode').Text  := CT[ConsType.ItemIndex];
  skmaster.ParamByName('billmonth').Text := BillMonth.Text;
  skmaster.ParamByName('rangefrom').Text := RangeFrom.Text;
  skmaster.ParamByName('rangeto').Text   := RangeTo.Text;
  skmaster.Open;

  If skmaster.IsEmpty then
   begin
    MessageDlg('given parameters yielded empty...', mtInformation, [mbOK], 0);
    skmaster.Close;
    area.SetFocus;
    CloseFile(Lst);
    exit;
   end;

  sktmaster.ParamByName('area').Text      := Area.Text;
  sktmaster.ParamByName('ratecode').Text  := CT[ConsType.ItemIndex];
  sktmaster.ParamByName('billmonth').Text := BillMonth.Text;
  sktmaster.ParamByName('rangefrom').Text := RangeFrom.Text;
  sktmaster.ParamByName('rangeto').Text   := RangeTo.Text;
  sktmaster.Open;

  Gauge1.Progress := 0;
  Gauge1.MinValue := 0;
  Gauge1.MaxValue := skmaster.RecordCount;

  HeadSW           := True;
  LineCount        := 0;
  PageCount        := 1;

  skmaster.First;

    While not skmaster.Eof do
      begin
        Gauge1.AddProgress(1);
        Application.ProcessMessages;

         If HeadSW then
           begin
            Heading;
            HeadSW := False;
           end;

        Writeln(Lst,'|',JustStr(skmasterAccountNumber.Text,' ',9,0)         ,'|',
                        JustStr(skMasterName.Text,' ',30,0)                 ,'|',
                        skmasterkilowatthour.AsInteger:10                   ,'|',
                        Format(skmasterTotalBill.AsCurrency,'#,###,###.##') ,'|');
        Inc(LineCount);

        If LineCount = 50 then
          begin
            Writeln(Lst,'--------------------------------------------------------------------');
            HeadSW       := True;
            Write(Lst,#12);
            LineCount := 0;
            Inc(PageCount);
          end;

         skmaster.Next;
      end;

     If LineCount > 0 then
     Writeln(Lst,'--------------------------------------------------------------------');
     Writeln(Lst,'|                  Area Total |',sktmastertaccount.asinteger:10             ,'|',
                                                   sktmastertkwhr.asinteger:10                ,'|',
                                                   Format(sktmastertamount.AsCurrency,'#,###,###.##'),'|');
     Writeln(Lst,'--------------------------------------------------------------------');
     Write(Lst,#12);

     skmaster.Close;
     sktmaster.Close;
     CloseFile(Lst);

     MessageDlg('printing done... ', mtInformation, [mbOK], 0);
end;

procedure TSummKwhrForm.DsFancyButton3Click(Sender: TObject);
begin
  Close;
end;

procedure TSummKwhrForm.DsFancyButton2Click(Sender: TObject);
Const
RateStr : Array[0..5] of String = ('RESIDENTIAL','COMMERCIAL','PUBLIC BLDG.','INDUSTRIAL','STREET LIGHTS','ALL');
CT      : Array[0..5] of String = ('R','C','P','I','S','%');

Procedure Heading;
begin
Writeln(Lst,#27 + 'P','Page # ',PageCount);
Writeln(Lst,'SUMMARY PER AREA / KILOWATTHOUR RANGE');
Writeln(Lst,'Billing Month      : ',BillMonth.Text);
Writeln(Lst,'Kilowatthour Range : ',RangeFrom.text+' - '+RangeTo.Text);
Writeln(Lst,'Consumer Type      : ',RateStr[Constype.itemindex]);
Writeln(Lst,'---------------------------------------------------------------------------');
Writeln(Lst,'|Area|          Area Name           | Consumers |   KWHR   |       Amount |');
Writeln(Lst,'---------------------------------------------------------------------------');
end;

begin
  If RadioGroup1.ItemIndex = 0 then
  begin
    Try
     AssignfILE(Lst,'LPT1');
     Rewrite(Lst);
    Except
     ShowMessage('Printer not ready');
     Exit;
    end;
  end
  else
  begin
    If not OpenDialog1.Execute then exit;
    Try
     AssignfILE(Lst,OpenDialog1.FileName);
     Rewrite(Lst);
    Except
     ShowMessage('Unable to open text file');
     Exit;
    end;
  end;

  Application.ProcessMessages;
  sksummary.ParamByName('ratecode').Text  := CT[ConsType.itemindex];
  sksummary.ParamByName('billmonth').Text := BillMonth.Text;
  sksummary.ParamByName('rangefrom').Text := RangeFrom.Text;
  sksummary.ParamByName('rangeto').Text   := RangeTo.Text;
  sksummary.Open;

  If sksummary.IsEmpty then
   begin
    MessageDlg('given parameters yielded empty...', mtInformation, [mbOK], 0);
    sksummary.close;
    area.SetFocus;
    CloseFile(Lst);
    exit;
   end;

  sktsummary.ParamByName('ratecode').Text  := CT[ConsType.itemindex];
  sktsummary.ParamByName('billmonth').Text := BillMonth.Text;
  sktsummary.ParamByName('rangefrom').Text := RangeFrom.Text;
  sktsummary.ParamByName('rangeto').Text   := RangeTo.Text;
  sktsummary.Open;

  Gauge1.Progress := 0;
  Gauge1.MinValue := 0;
  Gauge1.MaxValue := sksummary.RecordCount;

  HeadSW           := True;
  LineCount        := 0;
  PageCount        := 1;

  sksummary.First;

    While not sksummary.Eof do
      begin
        Gauge1.AddProgress(1);
        Application.ProcessMessages;

         If HeadSW then
           begin
            Heading;
            HeadSW := False;
           end;

        Writeln(Lst,'|',JustStr(sksummaryarea.Text,' ',4,0)                ,'|',
                        JustStr(sksummaryaddress.Text,' ',30,0)            ,'|',
                        sksummarytaccount.AsInteger:11                     ,'|',
                        sksummarytkwhr.AsInteger:10                        ,'|',
                        Format(sksummarytamount.AsCurrency,'#,###,###.##') ,'|');
        Inc(LineCount);

        If LineCount = 50 then
          begin
            Writeln(Lst,'---------------------------------------------------------------------------');
            HeadSW       := True;
            Write(Lst,#12);
            LineCount := 0;
            Inc(PageCount);
          end;

         sksummary.Next;
      end;

     If LineCount > 0 then
     Writeln(Lst,'---------------------------------------------------------------------------');
     Writeln(Lst,'|                      Grand Total  |',sktsummarytaccount.asinteger:11                      ,'|',
                                                         sktsummarytkwhr.asinteger:10                         ,'|',
                                                         Format(sktsummarytamount.AsCurrency,'#,###,###.##')  ,'|');
     Writeln(Lst,'---------------------------------------------------------------------------');
     Write(Lst,#12);

     sksummary.Close;
     sktsummary.Close;
     CloseFile(Lst);

     MessageDlg('printing done... ', mtInformation, [mbOK], 0);

end;

procedure TSummKwhrForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action       := caFree;
  SummKwhrForm := nil;
end;

procedure TSummKwhrForm.Timer1Timer(Sender: TObject);
begin
 Application.ProcessMessages;
end;

end.
