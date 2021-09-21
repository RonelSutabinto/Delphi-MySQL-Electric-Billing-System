unit Readingback;

interface

uses
  Windows, Messages, Classes, SysUtils, Graphics, Controls, StdCtrls, Forms,
  Dialogs, DBCtrls, DB, ExtCtrls, Mask, Buttons, Grids, DBGrids, Gradient,
  PDJSillyLabel, VolDBEdit, VolDBGrid, PDJRotoLabel;

type
  TReadingComputeForm = class(TForm)
    Panel1: TPanel;
    Gradient2: TGradient;
    Label24: TLabel;
    Label25: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DemandLabel: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label27: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    Label8: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label14: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label21: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    PresRead: TVolgaDBEdit;
    PrevRead: TVolgaDBEdit;
    Diff: TVolgaDBEdit;
    KWH: TVolgaDBEdit;
    Demand: TVolgaDBEdit;
    CMSwitch: TVolgaDBEdit;
    CMPres: TVolgaDBEdit;
    CMPrev: TVolgaDBEdit;
    CMKWH: TVolgaDBEdit;
    CMDemand: TVolgaDBEdit;
    EditMCRetailCustCharge: TVolgaDBEdit;
    EditMCSystemCharge: TVolgaDBEdit;
    EditUCNPCStrandedDebts: TVolgaDBEdit;
    EditUCNPCStrandedContCost: TVolgaDBEdit;
    EditUCDUStrandedContCost: TVolgaDBEdit;
    EditUCME: TVolgaDBEdit;
    EditUCEqTaxesAndRoyalties: TVolgaDBEdit;
    EditUCEC: TVolgaDBEdit;
    EditUCCrossSubRemoval: TVolgaDBEdit;
    EditICCrossSubsidyCharge: TVolgaDBEdit;
    EditPowerActRateRed: TVolgaDBEdit;
    EditLifelineDiscSubs: TVolgaDBEdit;
    EditTransformerRental: TVolgaDBEdit;
    EditOCAmount: TVolgaDBEdit;
    EditOCAmount2: TVolgaDBEdit;
    EditOCAmount3: TVolgaDBEdit;
    EditGenSysCharge: TVolgaDBEdit;
    EditHostCommCharge: TVolgaDBEdit;
    EditForexCharge: TVolgaDBEdit;
    EditTCDemandCharge: TVolgaDBEdit;
    EditTCTransSystemCharge: TVolgaDBEdit;
    EditSystemLossCharge: TVolgaDBEdit;
    EditDCDemandCharge: TVolgaDBEdit;
    EditDCDistributionCharge: TVolgaDBEdit;
    EditSCRetCustCharge: TVolgaDBEdit;
    EditSCSupplySysCharge: TVolgaDBEdit;
    Label22: TLabel;
    FeedBack: TVolgaDBEdit;
    VolgaDBGrid1: TVolgaDBGrid;
    Label12: TLabel;
    ConsumerName: TDBText;
    Address: TDBText;
    AccountNumber: TDBText;
    Mult: TDBText;
    PDJRotoLabel1: TPDJRotoLabel;
    TotalBill: TVolgaDBEdit;
    Label13: TLabel;
    Edit1: TEdit;
    BillMonthLabel: TPDJRotoLabel;
    ReadingDateLabel: TPDJRotoLabel;
    Label15: TLabel;
    Label16: TLabel;
    DBGrid1: TDBGrid;
    DBGrid3: TDBGrid;
    PDJSillyLabel1: TPDJSillyLabel;
    PDJSillyLabel2: TPDJSillyLabel;
    PDJSillyLabel3: TPDJSillyLabel;
    PDJSillyLabel4: TPDJSillyLabel;
    PDJSillyLabel5: TPDJSillyLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PresReadKeyPress(Sender: TObject; var Key: Char);
    procedure PDJSillyLabel1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure PrevReadKeyPress(Sender: TObject; var Key: Char);
  private

  public
    BillMonthStr       : String    ;
    BillMonth          : String[4] ;
    PresentReadingDate : String    ;
  end;

var
  ReadingComputeForm: TReadingComputeForm;

implementation

uses Data,
     ModTools,
     StatusUpdate;

Var
Lst                : Text     ;
HeadingSW          : Boolean  ;
TotalConsumer      : Word     ;
LineCount          : Word     ;
KWHr               : Currency ;
TotalPower         : Currency ;

{$R *.DFM}

procedure TReadingComputeForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  ReadingComputeForm := Nil;
end;

Procedure ComputeBill;
Label Compute;
begin
  With BillingData,ReadingComputeForm do
    begin
      MRate.First;
        While not MRate.Eof do
          begin
           If MRateRateCode.Text = MasterRateCode.Text then Goto Compute;
           MRate.Next;
          end;

          ShowMessage('Rate Record not found ....');
          exit;

          Compute:

          If BillPresentReadingKWH.AsCurrency < BillPresentReadingKWH.AsCurrency then
             begin
               ShowMessage('Error Present Reading ..... please re-enter');
               PresRead.SetFocus;
               exit;
             end;

          BillCMKilowatthour.AsCurrency := 0;

          If BillCM.Text = '1' then
            begin
              BillCMKilowattHour.AsCurrency := (BillCMPresentReadingKWH.AsInteger -
                                                BillCMPresentReadingKWH.AsInteger) *
                                                BillCMMultiplier.AsInteger;
              If BillCMKilowatthour.AsCurrency < 0 then BillCMKilowatthour.AsCurrency := 0;
            end
            else
            begin
              BillCMKilowatthour.AsCurrency := 0;
              BillCMDemand.AsCurrency       := 0;
            end;

          BillDiff.AsCurrency := (BillPresentReadingKWH.AsCurrency - BillPresentReadingKWH.AsCurrency) +
                                 BillCMKilowatthour.AsCurrency;

          BillKilowattHour.AsCurrency := BillDiff.AsCurrency * BillMultiplier.AsCurrency;
          If BillRateCode.Text = 'I' then BillKilowattHour.AsCurrency := BillKilowattHour.AsCurrency * 1.3;

          KWHR := BillKilowattHour.AsCurrency;

          If (BillKilowattHour.AsCurrency >= 1) and (BillKilowattHour.AsCurrency <= 16) then
          KWHR := 16;

          If (BillRateCode.Text = 'R') and
             (BillKilowattHour.AsCurrency >= 21) and
             (BillKilowattHour.AsCurrency <= 25) then
          KWHR := 25;

          BillGenSysCharge.AsCurrency           := KWHR * MRateGenSysRate.AsCurrency;
          BillHostCommCharge.AsCurrency         := KWHR * MRateHostCommRate.AsCurrency;
          BillForexCharge.AsCurrency            := KWHR * MRateForexRate.AsCurrency;
          BillTCDemandCharge.AsCurrency         := BillKilowattUsed.AsCurrency * MRateTCDemandRate.AsCurrency;
          BillTCTransSystemCharge.AsCurrency    := KWHR * MRateTCSystemRate.AsCurrency;
          BillSystemLossCharge.AsCurrency       := KWHR * MRateSystemLossRate.AsCurrency;
          BillDCDemandCharge.AsCurrency         := BillKilowattUsed.AsCurrency * MRateDCDemandRate.AsCurrency;
          BillDCDistributionCharge.AsCurrency   := KWHR * MRateDCSystemRate.AsCurrency;
          BillSCRetCustCharge.AsCurrency        := MRateSCRetailCustRate.AsCurrency;
          BillSCSupplySysCharge.AsCurrency      := KWHR * MRateSCSupplySysRate.AsCurrency;
          BillMCRetailCustCharge.AsCurrency     := MRateMCRetailCustRate.AsCurrency;
          BillMCSystemCharge.AsCurrency         := KWHR * MRateMCSysRate.AsCurrency;

          BillUCNPCStrandedDebts.AsCurrency     := KWHR * MRateUCNPCStrandedDebtsRate.AsCurrency;
          BillUCNPCStrandedContCost.AsCurrency  := KWHR * MRateUCNPCStrandedContCostRate.AsCurrency;
          BillUCDUStrandedContCost.AsCurrency   := KWHR * MRateUCDUStrandedContCostRate.AsCurrency;
          BillUCME.AsCurrency                   := KWHR * MRateUCMERate.AsCurrency;
          BillUCEqTaxesAndRoyalties.AsCurrency  := KWHR * MRateUCEqTaxesAndRoyaltiesRate.AsCurrency;
          BillUCEC.AsCurrency                   := KWHR * MRateUCECRate.AsCurrency;
          BillUCCrossSubRemoval.AsCurrency      := KWHR * MRateUCCrossSubsidyRemovalRate.AsCurrency;
          BillICCrossSubsidyCharge.AsCurrency   := KWHR * MRateICCrossSubsidyRate.AsCurrency;
          BillPowerActRateRed.AsCurrency        := KWHR * MRatePARARate.AsCurrency;
          BillLifelineDiscSubs.AsCurrency       := KWHR * MRateLifelineSubsidyRate.AsCurrency;
          BillLoanCondo.AsCurrency              := BillKilowattHour.AsCurrency * MRateLoanCondo.AsCurrency;

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

          If BillRateCode.Text = 'R' then
           begin
             If KWHR <= 16 then BillLifelineDiscSubs.AsCurrency := TotalPower * -0.50;
             If KWHR =  17 then BillLifelineDiscSubs.AsCurrency := TotalPower * -0.40;
             If KWHR =  18 then BillLifelineDiscSubs.AsCurrency := TotalPower * -0.30;
             If KWHR =  19 then BillLifelineDiscSubs.AsCurrency := TotalPower * -0.20;
             If KWHR =  20 then BillLifelineDiscSubs.AsCurrency := TotalPower * -0.10;
             If KWHR =  25 then BillLifelineDiscSubs.AsCurrency := TotalPower * -0.05;
           end;
    end;
end;

procedure TReadingComputeForm.PrevReadKeyPress(Sender: TObject;
  var Key: Char);
begin
   If Key = #13 then
     begin
       BillingData.Master.Next;
       Edit1.SetFocus;
     end;
end;





procedure TReadingComputeForm.PresReadKeyPress(Sender: TObject;
  var Key: Char);
begin
   If Key = #13 then
      begin
        ComputeBill;
        PrevRead.SetFocus;
      end;
end;


procedure TReadingComputeForm.PDJSillyLabel1Click(Sender: TObject);
Procedure PrintHeading;
begin
 With BillingData do
 begin
  Write(Lst,#18);
  Writeln(lst,#27 + 'P'+'PAGE # '+IntToStr(PageCount));
  Writeln(lst,#27 + '4'+'BILLING CHECK LIST'+#27+'5');
  Writeln(lst,'BILLING MONTH     : '+BillMonthStr);
  Writeln(Lst,'READING DATE      : '+PresentReadingDate);
  Writeln(lst,'AREA/BOOK/ADDRESS : '+VicinityArea.Text+'/'+ VicinityBook.Text+'-'+VicinityAddress.Text);
  Write(Lst,#27+'M');
  Writeln(lst,'-----------------------------------------------------------------------------------------------');
  Writeln(lst,'|  Acct #  |        Consumer Name         |PreaRead|PrevRead|    KWHR|     Amount |  Remarks  |');
  Writeln(lst,'-----------------------------------------------------------------------------------------------');
 end;
end;

begin

  TotalConsumer         := 0;
  LineCount             := 0;

  AssignFile(Lst,'LPT1');
  Rewrite(Lst);
  If IOResult <> 0 then
    begin
     ShowMessage('Printer not Ready');
     Exit;
    end;

  HeadingSW := True;

  If not assigned(BillingStatusUpdateForm) then
  BillingStatusUpdateForm := TBillingStatusUpdateForm.Create(Application);
  BillingStatusUpdateForm.Label1.Caption := 'Printing Check List .....';
  BillingStatusUpdateForm.Show;

  BillingStatusUpdateForm.ProgressBar1.Min := 0;
  BillingStatusUpdateForm.ProgressBar1.Max := BillingData.Bill.RecordCount;

  BillingStatusUpdateForm.ProgressBar1.Position := 0;

  BillingData.Bill.First;

  With BillingData do
  While not Bill.Eof do
   begin

    BillingStatusUpdateForm.ProgressBar1.StepBy(1);

    Application.ProcessMessages;

    If HeadingSW then
      begin
       PrintHeading;
       HeadingSW := False;
      end;

    Writeln(lst,'|',JustStr(BillAccountNumber.Text,' ',10,0)     ,'|',
                    JustStr(BillName.Text,' ',30,0)              ,'|',
                    BillPresentReadingKWH.AsCurrency:8:1         ,'|',
                    BillPreviousReadingKWH.AsCurrency:8:1        ,'|',
                    BillKilowattHour.AsCurrency:8:1              ,'|',
                    BillKilowattHour.AsCurrency:8:1              ,'|',
                    Format(BillTotalBill.AsCurrency,'###,###.##'),'|___________|');
    Inc(TotalConsumer);

    Inc(LineCount);
    If (LineCount = 50) and not Bill.eof then
     begin
       LineCount := 0;
       Inc(PageCount);
       Write(Lst,#12);
       HeadingSW := True;
     end; { end if Line Count }

     Bill.Next;
   end; { end while not eof }
  Write(Lst,#15);
  Writeln(Lst,'TOTAL CONSUMERS : '+IntToStr(TotalConsumer));
  Write(lst,#18,#12);

  BillingStatusUpdateForm.Close;
  CloseFile(Lst);

  ShowMessage('Done.');

end;

procedure TReadingComputeForm.Edit1Change(Sender: TObject);
Var SearchAccount : String;
begin
 With BillingData do
   begin
     Master.IndexName := 'MasterAccountNumber';
     SearchAccount    := Copy(VicinityArea.Text,2,2)+
                         Copy(VicinityBook.Text,2,2)+
                         Edit1.Text;

     Master.FindNearest([SearchAccount]);
   end;
end;

procedure TReadingComputeForm.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 then
   begin
      With BillingData do
        begin
           Bill.Append;
           BillCode.Text                        := MasterCode.Text;
           BillArea.Text                        := MasterArea.Text;
           BillBook.Text                        := MasterArea.Text;
           BillSequence.Text                    := MasterSequence.Text;
           BillAccountNumber.Text               := MasterAccountNumber.Text;
           BillName.Text                        := MasterName.Text;
           BillRateCode.Text                    := MasterRateCode.Text;
           BillMultiplier.Text                  := MasterMultiplier.Text;
           BillPreviousReadingDate.Text         := MasterPresentReadingDate.Text;
           BillPresentReadingDate.Text          := PresentReadingDate;
           BillPresentReadingKWH.Text           := '0.00';
           BillPreviousReadingKWH.Text          := MasterPresentReadingKWH.Text;
           BillDiff.Text                        := '0.00';
           BillDemand.Text                      := MasterDemand.Text;
           BillFlatRateWattage.Text             := MasterFlatRateWattage.Text;
           BillFeedBackCode.Text                := MasterFeedBackCode.Text;
           BillCM.Text                          := MasterCM.Text;
           BillCMMultiplier.Text                := MasterCMMultiplier.Text;
           BillCMPreviousReadingKWH.Text        := MasterCMPreviousReadingKWH.Text;
           BillCMPresentReadingKWH.Text         := MasterCMPresentReadingKWH.Text;
           BillCMKilowattHour.Text              := MasterCMKilowattHour.Text;
           BillCMDemand.Text                    := MasterCMDemand.Text;
           BillTransformerRental.Text           := MasterTransformerRental.Text;
           BillStatusCode.Text                  := '2';

           If (MasterOCMo1.AsInteger*MasterOCAmount1.AsCurrency) < MasterOCTotal1.AsCurrency then
           BillOCAmount1.AsCurrency             := MasterOCAmount1.AsCurrency;

           If (MasterOCMo2.AsInteger*MasterOCAmount2.AsCurrency) < MasterOCTotal2.AsCurrency then
           BillOCAmount2.AsCurrency             := MasterOCAmount2.AsCurrency;

           If (MasterOCMo3.AsInteger*MasterOCAmount3.AsCurrency) < MasterOCTotal3.AsCurrency then
           BillOCAmount3.AsCurrency             := MasterOCAmount3.AsCurrency;

           BillBillMonth.Text                   := MasterBillMonth.Text;
           PresRead.SetFocus;
        end;

end;
end;

end.
