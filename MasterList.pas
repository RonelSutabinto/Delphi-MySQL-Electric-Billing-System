unit MasterList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Mask, StdCtrls, ExtCtrls, Gauges, DB, MemDS,
  DBAccess, MyAccess, DsFancyButton, NxEdit, NxCollection;

type
  TMasterListForm = class(TForm)
    Panel2: TPanel;
    Label4: TLabel;
    Button1: TNxButton;
    Button2: TNxButton;
    Label1: TLabel;
    Label5: TLabel;
    StartAccount: TEdit;
    StartPage: TEdit;
    RateOption: TRadioGroup;
    ConnectionOption: TRadioGroup;
    Bevel1: TBevel;
    SortOption: TRadioGroup;
    Master: TMyQuery;
    Gauge1: TGauge;
    CutOffDate: TNxDatePicker;
    PrintOption: TRadioGroup;
    SaveDialog1: TSaveDialog;
    MasterCode: TIntegerField;
    MasterArea: TStringField;
    MasterBook: TStringField;
    MasterSequence: TStringField;
    MasterAccountNumber: TStringField;
    MasterName: TStringField;
    MasterAddress: TStringField;
    MasterRateCode: TStringField;
    MasterConsCode: TStringField;
    MasterConnCode: TStringField;
    MasterTransformer: TStringField;
    MasterMeterBrand: TStringField;
    MasterSerial: TStringField;
    MasterMultiplier: TFloatField;
    MasterNewConnectionDate: TDateField;
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
    MasterDeleteRemarks: TStringField;
    MasterPoleNumber: TStringField;
    MasterFeederNumber: TStringField;
    MasterXFormerQty: TIntegerField;
    MasterXFormerKVA: TStringField;
    MasterAge30: TFloatField;
    MasterAge60: TFloatField;
    MasterAge90: TFloatField;
    MasterAge120: TFloatField;
    MasterAgeOver120: TFloatField;
    MasterAgeTotal: TFloatField;
    MasterTotalPayments: TFloatField;
    MasterARBalance: TFloatField;
    MasterLCCustMo: TFloatField;
    MasterPrevYearAdjPowerCost: TFloatField;
    MasterSysLossUnderRecov: TFloatField;
    MasterVATDisc: TFloatField;
    MasterVATDiscAmt: TFloatField;
    MasterVATDistDiscAmt: TFloatField;
    MasterVATGenCoDiscAmt: TFloatField;
    MasterVATTransCoDiscAmt: TFloatField;
    MasterVATSystemLossDiscAmt: TFloatField;
    MasterVATDist: TFloatField;
    MasterVATGenCO: TFloatField;
    MasterVATTransCO: TFloatField;
    MasterVATSystemLossGenCO: TFloatField;
    MasterVATSystemLossTransCO: TFloatField;
    MasterVAT: TFloatField;
    MasterDiffBillPerKwhr: TFloatField;
    MasterDiffBillPerKW: TFloatField;
    MasterDiffBillPerCust: TFloatField;
    MasterMCC: TFloatField;
    MasterPKVROebrNumber: TStringField;
    MasterPKVRBillMonth: TStringField;
    MasterPKVRAmount: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MasterListForm: TMasterListForm;

implementation

uses Data, StatusUpdate, ModTools;

{$R *.dfm}

Var
Lst           : Text   ;
RateStr       : String ;
ConnectionStr : String ;
SortStr       : String ;

procedure TMasterListForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
   MasterListForm := Nil;
end;

procedure TMasterListForm.Button1Click(Sender: TObject);
Var PageCount,LineCount : Word   ;
    HeadSW              : Word   ;

Procedure Heading;
begin
Write(Lst,#18,#27+'P');
writeln(lst,'Page #            : ',PageCount);
writeln(lst,'Report Name       : MASTER LIST');
writeln(lst,'As Of             : ',DateToStr(CutOffDate.Date));
writeln(lst,'Rate Code Option  : ',RateStr);
writeln(lst,'Connection Option : ',ConnectionStr);
writeln(lst,'Sort Option       : ',SortStr);

Write(lst,#27+'M');
Writeln(lst,'-------------------------------------------------------------------------------------------------------------------------------------------------');
Writeln(lst,'Ar. Bk. Seq.  ACCT #  Consumer Name                Address              RC CT CN MB/Serial    Mult  Present Previous     KWHR    DEMAND    X-RENT');
Writeln(lst,'-------------------------------------------------------------------------------------------------------------------------------------------------');
end;

begin
  ShowMessage('Set Printer on.....');

  Case PrintOption.ItemIndex of
  0 :   Try
        AssignFile(Lst,'LPT1');
        Rewrite(Lst);
        except
         ShowMessage('Printer not Ready');
         Exit;
        end;
  1 : begin
       If SaveDialog1.Execute then
         begin
          Try
          AssignFile(Lst,SaveDialog1.FileName);
          Rewrite(Lst);
          except
           ShowMessage('Cannot create text file');
           Exit;
          end;
       end;
      end;
  end;

  Master.Close;
  Master.SQL.Clear;
  Master.SQL.Add('select * from master');
  If (RateOption.ItemIndex > 0) or (ConnectionOption.ItemIndex > 0) then
  Master.SQL.Add('where');

  RateStr       := 'All';
  ConnectionStr := 'All';
  SortStr       := 'Account Number';

  Case RateOption.ItemIndex of
  01 : begin Master.SQL.Add('ratecode = ''R'''); RateStr := 'Residential'; end;
  02 : begin Master.SQL.Add('ratecode = ''C'''); RateStr := 'Commercial'; end;
  03 : begin Master.SQL.Add('ratecode = ''I'''); RateStr := 'Industrial'; end;
  04 : begin Master.SQL.Add('ratecode = ''P'''); RateStr := 'Public Bldg.'; end;
  05 : begin Master.SQL.Add('ratecode = ''S'''); RateStr := 'Street Ligths'; end;
  end;

  Case ConnectionOption.ItemIndex of
  01 : begin Master.SQL.Add('and conncode = ''1'''); ConnectionStr := 'Active'; end;
  02 : begin Master.SQL.Add('and ratecode = ''4'''); ConnectionStr := 'Disco'; end;
  end;

  Case SortOption.ItemIndex of
  00 : Master.SQL.Add('order by accountnumber');
  01 : begin Master.SQL.Add('order by name'); SortStr := 'Alphabetic'; end;
  end;

  Master.Open;
  Gauge1.Progress := 0;
  Gauge1.MinValue := 0;
  Gauge1.MaxValue := Master.RecordCount;

    If StartAccount.Text <> '' then
      begin
        Master.Locate('accountnumber',StartAccount.Text,[])
      end
      else
      Master.First;


    If StartPage.Text <> '' then PageCount := StrToInt(StartPage.Text) else PageCount := 1;

    LineCount := 0;
    HeadSw    := 0;

    while not Master.Eof do
     begin
     Gauge1.AddProgress(1);
     Application.ProcessMessages;

     If HeadSW = 0 then
       begin
         HeadSW := 1;
         Heading;
       end;

      Writeln(Lst,JustStr(MasterArea.Text,' ',3,0),              ' ',
                  JustStr(MasterBook.Text,' ',3,0),              ' ',
                  JustStr(MasterSequence.Text,' ',4,0),          ' ',
                  JustStr(MasterAccountNumber.Text,' ',8,0),     ' ',
                  JustStr(MasterName.Text,' ',28,0),             ' ',
                  JustStr(MasterAddress.Text,' ',20,0),          ' ',
                  JustStr(MasterRateCode.Text,' ',1,0),          '  ',
                  JustStr(MasterConsCode.Text,' ',1,0),          '  ',
                  JustStr(MasterConnCode.Text,' ',1,0),          '  ',
                  JustStr(MasterMeterBrand.Text,' ',2,0),
                  JustStr(MasterSerial.Text,' ',10,0),           ' ',
                  MasterMultiplier.AsInteger:4,' ',
                  JustStr(MasterPresentReadingKWH.Text,' ',8,0), ' ',
                  JustStr(MasterPreviousReadingKWH.Text,' ',8,0),' ',
                  JustStr(MasterKilowattHour.Text,' ',8,0),      ' ',
                  JustStr(MasterKilowattUsed.Text,' ',8,0),      ' ',
                  Format(MasterTransformerRental.AsCurrency,'##,###.##'));

     Inc(LineCount);
     If LineCount = 50 then
       begin
        HeadSW    := 0;
        LineCount := 0;
        Inc(PageCount);
        Writeln(lst,'-------------------------------------------------------------------------------------------------------------------------------------------------');
        Write(Lst,#12);
       end;
     Master.Next;
     end;

If LineCount > 0 then
Writeln(lst,'-------------------------------------------------------------------------------------------------------------------------------------------------');
Write(lst,#13);
Master.Close;
MessageDlg('Printing done.....', mtInformation, [mbOK], 0);
end;

procedure TMasterListForm.Button2Click(Sender: TObject);
begin
   MasterListForm.CLose;
end;

procedure TMasterListForm.FormShow(Sender: TObject);
begin
   CutOffDate.Date := now;
end;

end.
