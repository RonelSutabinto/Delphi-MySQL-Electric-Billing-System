unit SalesByBook;

interface

uses
  Windows,
  Messages,
  Classes,
  SysUtils,
  Graphics,
  Controls,
  StdCtrls,
  Forms,
  Dialogs,
  DBCtrls,
  DB,
  Mask,
  ExtCtrls,
  Buttons,
  Grids,
  DBGrids,
  PDJSillyLabel,
  Gauges,
  MemDS,
  DBAccess,
  MyAccess,
  CRGrid, CRDBGrid1;

type
  TSalesByBookForm = class(TForm)
    Panel2: TPanel;
    Label12: TLabel;
    Edit1: TEdit;
    Label1: TLabel;
    Generate: TButton;
    Hardcopy: TButton;
    PDJSillyLabel1: TButton;
    ResetFilter: TButton;
    PDJSillyLabel2: TButton;
    Gauge1: TGauge;
    UCSumm: TMyQuery;
    SBBQ: TMyQuery;
    SBBQArea: TStringField;
    SBBQBook: TStringField;
    SBBQTotalConsumers: TLargeintField;
    SBBQKilowattHour: TFloatField;
    SBBQUCNPCStrandedDebts: TFloatField;
    SBBQUCNPCStrandedContCost: TFloatField;
    SBBQUCDUStrandedContCost: TFloatField;
    SBBQUCME: TFloatField;
    SBBQUCEqTaxesAndRoyalties: TFloatField;
    SBBQUCEC: TFloatField;
    SBBQUCCrossSubRemoval: TFloatField;
    SBBQOCAmount: TFloatField;
    SBBQTotalBill: TFloatField;
    SBBQVATDist: TFloatField;
    SBBQVATGenCO: TFloatField;
    SBBQVATTransCO: TFloatField;
    SBBQVATSystemLossGenCO: TFloatField;
    SBBQVATSystemLossTransCO: TFloatField;
    SBBQTotalDeduction: TFloatField;
    SBBQNetBill: TFloatField;
    SBBQTransformerRental: TFloatField;
    UCSummArea: TStringField;
    UCSummTotalConsumers: TLargeintField;
    UCSummKilowattHour: TFloatField;
    UCSummUCNPCStrandedDebts: TFloatField;
    UCSummUCNPCStrandedContCost: TFloatField;
    UCSummUCDUStrandedContCost: TFloatField;
    UCSummUCME: TFloatField;
    UCSummUCEqTaxesAndRoyalties: TFloatField;
    UCSummUCEC: TFloatField;
    UCSummUCCrossSubRemoval: TFloatField;
    UCSummOCAmount: TFloatField;
    UCSummTransformerRental: TFloatField;
    UCSummTotalBill: TFloatField;
    UCSummVATDist: TFloatField;
    UCSummVATGenCO: TFloatField;
    UCSummVATTransCO: TFloatField;
    UCSummVATSystemLossGenCO: TFloatField;
    UCSummVATSystemLossTransCO: TFloatField;
    UCSummTotalDeduction: TFloatField;
    UCSummNetBill: TFloatField;
    GTotal: TMyQuery;
    GTotalTotalConsumers: TLargeintField;
    GTotalKilowattHour: TFloatField;
    GTotalUCNPCStrandedDebts: TFloatField;
    GTotalUCNPCStrandedContCost: TFloatField;
    GTotalUCDUStrandedContCost: TFloatField;
    GTotalUCME: TFloatField;
    GTotalUCEqTaxesAndRoyalties: TFloatField;
    GTotalUCEC: TFloatField;
    GTotalUCCrossSubRemoval: TFloatField;
    GTotalOCAmount: TFloatField;
    GTotalTransformerRental: TFloatField;
    GTotalTotalBill: TFloatField;
    GTotalVATDist: TFloatField;
    GTotalVATGenCO: TFloatField;
    GTotalVATTransCO: TFloatField;
    GTotalVATSystemLossGenCO: TFloatField;
    GTotalVATSystemLossTransCO: TFloatField;
    GTotalTotalDeduction: TFloatField;
    GTotalNetBill: TFloatField;
    SBBQaddress: TStringField;
    DBGrid1: TCRDBGrid1;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PDJSillyLabel2Click(Sender: TObject);
    procedure PDJSillyLabel1Click(Sender: TObject);
    procedure GenerateClick(Sender: TObject);
    procedure HardcopyClick(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  SalesByBookForm: TSalesByBookForm;

implementation

uses Data, SBBReport, StatusUpdate, ModTools;

{$R *.DFM}

Var
Lst : Text;

procedure TSalesByBookForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  With BillingData do
  begin
   SBBQuery.Close;
   SalesTotal.Close;
  end;

  Action := caFree;
  SalesByBookForm := Nil;
end;


procedure TSalesByBookForm.PDJSillyLabel2Click(Sender: TObject);
Var
PageCount,LineCount : Word;

Procedure Heading;
begin
Write(Lst,#18,#27+'P');

writeln(lst,'Page #        : ',PageCount);
writeln(lst,'Report Name   : UC / VAT SUMMARY');
Writeln(Lst,'Billing Month : ',Edit1.Text);
Write(Lst,#27 + 'M',#15);
Writeln(lst,'------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------');
Writeln(lst,'|Ar. Bk.  Cons         KWHR      NPCSD     NPCSCC      DUSCC         ME        ETR         EC        CSR     TR-Rent         OCs     VAT Genco   VAT TransCO      VAT SL      VAT Dist     Total Bill  Total UC/VAT       Net Bill |');
Writeln(lst,'------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------');
end;

begin
  UCSumm.Close;
  UCSumm.ParamByName('billmonth').text := Edit1.Text;
  UCSumm.Open;

  SBBQ.Close;
  SBBQ.ParamByName('billmonth').Text := Edit1.Text;
  SBBQ.Open;

  GTotal.Close;
  GTotal.ParamByName('billmonth').Text := Edit1.Text;
  GTotal.Open;

  ShowMessage('Set Printer on...');

  LineCount := 0;
  PageCount := 1;

  Try
  AssignFile(Lst,'LPT1');
  Rewrite(Lst);
  except
   ShowMessage('Printer not Ready');
   UCSumm.Close;
   SBBQ.Close;
   Exit;
  end;

  Gauge1.Progress := 0;
  Gauge1.MinValue := 0;
  Gauge1.MaxValue := UCSumm.RecordCount;
  Heading;

  UCSumm.First;
  While not UCSumm.Eof do
   begin
   Gauge1.AddProgress(1);
   Application.ProcessMessages;

     SBBQ.Filter   := 'Area = '+QuotedStr(UCSummArea.Text);
     SBBQ.Filtered := True;

     SBBQ.First;
     While not SBBQ.Eof do
       begin
       Application.ProcessMessages;

       Writeln(lst,'|',
                   JustStr(SBBQArea.Text,' ',3,0),' ',
                   JustStr(SBBQBook.Text,' ',3,0),' ',
                   SBBQTotalConsumers.AsInteger:5,
                   Format(SBBQKilowattHour.AsCurrency,'#,###,###.##'),
                   Format(SBBQUCNPCStrandedDebts.AsCurrency,'##,###.##'),
                   Format(SBBQUCNPCStrandedContCost.AsCurrency,'##,###.##'),
                   Format(SBBQUCDUStrandedContCost.AsCurrency,'##,###.##'),
                   Format(SBBQUCME.AsCurrency,'##,###.##'),
                   Format(SBBQUCEqTaxesAndRoyalties.AsCurrency,'##,###.##'),
                   Format(SBBQUCEC.AsCurrency,'##,###.##'),
                   Format(SBBQUCCrossSubRemoval.AsCurrency,'##,###.##'),
                   Format(SBBQTransformerRental.AsCurrency,'###,###.##'),
                   Format(SBBQOCAmount.AsCurrency,'###,###.##'),
                   Format(SBBQVATGenCO.AsCurrency,'#,###,###.##'),
                   Format(SBBQVATTransCO.AsCurrency,'#,###,###.##'),
                   Format(SBBQVATSystemLossGenCO.AsCurrency,'###,###.##'),
                   Format(SBBQVATDist.AsCurrency,'#,###,###.##'),
                   Format(SBBQTotalBill.AsCurrency,'##,###,###.##'),
                   Format(SBBQTotalDeduction.AsCurrency,'#,###,###.##'),
                   Format(SBBQNetBill.AsCurrency,'##,###,###.##'),'|');
       Application.ProcessMessages;

       Inc(LineCount);
       If LineCount > 55 then
         begin
           Writeln(lst,'------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------');
           Write(Lst,#12);
           Inc(PageCount);
           LineCount := 0;
           Heading;
         end;
       SBBQ.Next;
       end;

  Writeln(lst,'------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------');
  Writeln(lst,'|Area ',UCSummArea.Text,'>',
               UCSummTotalConsumers.AsInteger:5,
               Format(UCSummKilowattHour.AsCurrency,'#,###,###.##'),
               Format(UCSummUCNPCStrandedDebts.AsCurrency,'##,###.##'),
               Format(UCSummUCNPCStrandedContCost.AsCurrency,'##,###.##'),
               Format(UCSummUCDUStrandedContCost.AsCurrency,'##,###.##'),
               Format(UCSummUCME.AsCurrency,'##,###.##'),
               Format(UCSummUCEqTaxesAndRoyalties.AsCurrency,'##,###.##'),
               Format(UCSummUCEC.AsCurrency,'##,###.##'),
               Format(UCSummUCCrossSubRemoval.AsCurrency,'##,###.##'),
               Format(UCSummTransformerRental.AsCurrency,'###,###.##'),
               Format(UCSummOCAmount.AsCurrency,'###,###.##'),
               Format(UCSummVATGenCO.AsCurrency,'#,###,###.##'),
               Format(UCSummVATTransCO.AsCurrency,'#,###,###.##'),
               Format(UCSummVATSystemLossGenCO.AsCurrency,'###,###.##'),
               Format(UCSummVATDist.AsCurrency,'#,###,###.##'),
               Format(UCSummTotalBill.AsCurrency,'##,###,###.##'),
               Format(UCSummTotalDeduction.AsCurrency,'#,###,###.##'),
               Format(UCSummNetBill.AsCurrency,'##,###,###.##'),'|');
  Writeln(lst,'------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------');
  Inc(LineCount,3);
  UCSumm.Next;
  end;

Write(lst,#12);
Write(Lst,#18,#27+'P');
writeln(lst,'UNIVERSAL CHARGES for Billing Month '+Edit1.Text);
writeln(lst,'OVERALL TOTAL');
Write(Lst,#27+'M',#15);
Writeln(lst,'--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------');
Writeln(lst,'|Ar.  Cons         KWHR      NPCSD     NPCSCC      DUSCC         ME        ETR         EC        CSR     TR-Rent         OCs     VAT Genco   VAT TransCO      VAT SL      VAT Dist     Total Bill  Total UC/VAT       Net Bill |');
Writeln(lst,'--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------');

UCSumm.First;
While not UCSumm.Eof do
 begin
 Writeln(lst,'|',
             UCSummArea.Text,' ',
             UCSummTotalConsumers.AsInteger:5,
             Format(UCSummKilowattHour.AsCurrency,'#,###,###.##'),
             Format(UCSummUCNPCStrandedDebts.AsCurrency,'##,###.##'),
             Format(UCSummUCNPCStrandedContCost.AsCurrency,'##,###.##'),
             Format(UCSummUCDUStrandedContCost.AsCurrency,'##,###.##'),
             Format(UCSummUCME.AsCurrency,'##,###.##'),
             Format(UCSummUCEqTaxesAndRoyalties.AsCurrency,'##,###.##'),
             Format(UCSummUCEC.AsCurrency,'##,###.##'),
             Format(UCSummUCCrossSubRemoval.AsCurrency,'##,###.##'),
             Format(UCSummTransformerRental.AsCurrency,'###,###.##'),
             Format(UCSummOCAmount.AsCurrency,'###,###.##'),
             Format(UCSummVATGenCO.AsCurrency,'#,###,###.##'),
             Format(UCSummVATTransCO.AsCurrency,'#,###,###.##'),
             Format(UCSummVATSystemLossGenCO.AsCurrency,'###,###.##'),
             Format(UCSummVATDist.AsCurrency,'#,###,###.##'),
             Format(UCSummTotalBill.AsCurrency,'##,###,###.##'),
             Format(UCSummTotalDeduction.AsCurrency,'#,###,###.##'),
             Format(UCSummNetBill.AsCurrency,'##,###,###.##'),'|');

UCSumm.Next;
end;

Writeln(lst,'--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------');
Writeln(lst,'|GT> ',
             GTotalTotalConsumers.AsInteger:5,
             Format(GTotalKilowattHour.AsCurrency,'#,###,###.##'),
             Format(GTotalUCNPCStrandedDebts.AsCurrency,'##,###.##'),
             Format(GTotalUCNPCStrandedContCost.AsCurrency,'##,###.##'),
             Format(GTotalUCDUStrandedContCost.AsCurrency,'##,###.##'),
             Format(GTotalUCME.AsCurrency,'##,###.##'),
             Format(GTotalUCEqTaxesAndRoyalties.AsCurrency,'##,###.##'),
             Format(GTotalUCEC.AsCurrency,'##,###.##'),
             Format(GTotalUCCrossSubRemoval.AsCurrency,'##,###.##'),
             Format(GTotalTransformerRental.AsCurrency,'###,###.##'),
             Format(GTotalOCAmount.AsCurrency,'###,###.##'),
             Format(GTotalVATGenCO.AsCurrency,'#,###,###.##'),
             Format(GTotalVATTransCO.AsCurrency,'#,###,###.##'),
             Format(GTotalVATSystemLossGenCO.AsCurrency,'###,###.##'),
             Format(GTotalVATDist.AsCurrency,'#,###,###.##'),
             Format(GTotalTotalBill.AsCurrency,'##,###,###.##'),
             Format(GTotalTotalDeduction.AsCurrency,'#,###,###.##'),
             Format(GTotalNetBill.AsCurrency,'##,###,###.##'),'|');
Writeln(lst,'--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------');
Write(Lst,#12);
CloseFile(Lst);
UCSumm.Close;
SBBQ.Close;
GTotal.Close;
ShowMessage('Done ...');
Gauge1.Progress := 0;
end;

procedure TSalesByBookForm.PDJSillyLabel1Click(Sender: TObject);
begin
   Close;
end;

procedure TSalesByBookForm.GenerateClick(Sender: TObject);

begin
  With BillingData do
  begin
    SBBQuery.Close;
    SBBQuery.ParamByName('billmonth').Text := Edit1.Text;;
    SBBQuery.Open;

    SalesTotal.Close;
    SalesTotal.ParamByName('billmonth').Text := Edit1.Text;;
    SalesTotal.Open;
  end;

  ShowMessage('Generate Sales Total Done....');
end;

procedure TSalesByBookForm.HardcopyClick(Sender: TObject);
Var
BillMonthStr : String;
begin
  If Edit1.Text = '' then
    begin
      ShowMessage('Define a bill month first');
      exit;
    end;

  If Copy(Edit1.Text,1,2) = '01' then BillMonthStr := 'JANUARY '   + Copy(Edit1.Text,3,2);
  If Copy(Edit1.Text,1,2) = '02' then BillMonthStr := 'FEBRUARY '  + Copy(Edit1.Text,3,2);
  If Copy(Edit1.Text,1,2) = '03' then BillMonthStr := 'MARCH '     + Copy(Edit1.Text,3,2);
  If Copy(Edit1.Text,1,2) = '04' then BillMonthStr := 'APRIL '     + Copy(Edit1.Text,3,2);
  If Copy(Edit1.Text,1,2) = '05' then BillMonthStr := 'MAY '       + Copy(Edit1.Text,3,2);
  If Copy(Edit1.Text,1,2) = '06' then BillMonthStr := 'JUNE '      + Copy(Edit1.Text,3,2);
  If Copy(Edit1.Text,1,2) = '07' then BillMonthStr := 'JULY '      + Copy(Edit1.Text,3,2);
  If Copy(Edit1.Text,1,2) = '08' then BillMonthStr := 'AUGUST '    + Copy(Edit1.Text,3,2);
  If Copy(Edit1.Text,1,2) = '09' then BillMonthStr := 'SEPTEMBER ' + Copy(Edit1.Text,3,2);
  If Copy(Edit1.Text,1,2) = '10' then BillMonthStr := 'OCTOBER '   + Copy(Edit1.Text,3,2);
  If Copy(Edit1.Text,1,2) = '11' then BillMonthStr := 'NOVEMBER '  + Copy(Edit1.Text,3,2);
  If Copy(Edit1.Text,1,2) = '12' then BillMonthStr := 'DECEMBER '  + Copy(Edit1.Text,3,2);

  If not assigned(SBBReportForm) then
  SBBReportForm := TSBBReportForm.Create(Application);
  SBBReportForm.Title2.Text := BillMonthStr;
  SBBReportForm.SBBReport.Preview;

end;

end.
