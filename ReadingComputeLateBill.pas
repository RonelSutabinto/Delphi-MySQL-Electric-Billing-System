unit ReadingComputeLateBill;

interface

uses
  Windows, Messages, Classes, SysUtils, Graphics, Controls, StdCtrls, Forms,
  Dialogs, DBCtrls, DB, ExtCtrls, Mask, Buttons, Grids, DBGrids, PDJSillyLabel,
  PDJRotoLabel, Menus, BarMenus,  Variants, AppEvnts, MemDS,
  DBAccess, MyAccess, Gauges, DateUtils, CRGrid, DsFancyButton, math,
  NxColumns, NxDBColumns, NxScrollControl, NxCustomGridControl, NxCustomGrid,
  NxDBGrid, NxCollection, StrUtils, CRDBGrid1;

type
  TReadingComputeLateBillsForm = class(TForm)
    Panel1: TPanel;
    Edit2: TEdit;
    Panel3: TPanel;
    Label14: TLabel;
    PDJSillyLabel8: TNxButton;
    PDJSillyLabel9: TNxButton;
    SAccountNumber: TLabeledEdit;
    SBillMonth: TLabeledEdit;
    StartReadingDate: TMaskEdit;
    Label15: TLabel;
    SEndReading: TLabeledEdit;
    NumberOfMonths: TLabeledEdit;
    DBName: TDBText;
    DBAddress: TDBText;
    ApplicationEvents1: TApplicationEvents;
    Label16: TLabel;
    AveConsumption: TLabeledEdit;
    TC: TMyTable;
    TCCode: TFloatField;
    TCArea: TStringField;
    TCBook: TStringField;
    TCSequence: TStringField;
    TCAccountNumber: TStringField;
    TCName: TStringField;
    TCAddress: TStringField;
    TCRateCode: TStringField;
    TCSerial: TStringField;
    TCMultiplier: TFloatField;
    TCPreviousReadingDate: TDateField;
    TCPresentReadingDate: TDateField;
    TCPresentReadingKWH: TFloatField;
    TCPreviousReadingKWH: TFloatField;
    TCDiff: TFloatField;
    TCDemand: TFloatField;
    TCFlatRateWattage: TCurrencyField;
    TCFeedBackCode: TStringField;
    TCCM: TStringField;
    TCCMMultiplier: TFloatField;
    TCCMPreviousReadingKWH: TFloatField;
    TCCMPresentReadingKWH: TFloatField;
    TCCMKilowattHour: TFloatField;
    TCCMDemand: TFloatField;
    TCKilowattHour: TFloatField;
    TCKilowattUsed: TFloatField;
    TCGenSysCharge: TCurrencyField;
    TCHostCommCharge: TCurrencyField;
    TCForexCharge: TCurrencyField;
    TCFPCA: TCurrencyField;
    TCTCDemandCharge: TCurrencyField;
    TCTCTransSystemCharge: TCurrencyField;
    TCSystemLossCharge: TCurrencyField;
    TCDCDemandCharge: TCurrencyField;
    TCDCDistributionCharge: TCurrencyField;
    TCSCRetCustCharge: TCurrencyField;
    TCSCSupplySysCharge: TCurrencyField;
    TCMCRetailCustCharge: TCurrencyField;
    TCMCSystemCharge: TCurrencyField;
    TCUCNPCStrandedDebts: TCurrencyField;
    TCUCNPCStrandedContCost: TCurrencyField;
    TCUCDUStrandedContCost: TCurrencyField;
    TCUCME: TCurrencyField;
    TCUCEqTaxesAndRoyalties: TCurrencyField;
    TCUCEC: TCurrencyField;
    TCUCCrossSubRemoval: TCurrencyField;
    TCICCrossSubsidyCharge: TCurrencyField;
    TCPowerActRateRed: TCurrencyField;
    TCLifelineDiscSubs: TCurrencyField;
    TCLoanCondo: TCurrencyField;
    TCTransformerRental: TCurrencyField;
    TCOCCode1: TStringField;
    TCOCAmount1: TCurrencyField;
    TCOCMo1: TFloatField;
    TCOCTotal1: TCurrencyField;
    TCOCCode2: TStringField;
    TCOCAmount2: TCurrencyField;
    TCOCMo2: TFloatField;
    TCOCTotal2: TCurrencyField;
    TCOCCode3: TStringField;
    TCOCAmount3: TCurrencyField;
    TCOCMo3: TFloatField;
    TCOCTotal3: TCurrencyField;
    TCTotalBill: TCurrencyField;
    TCBillNumber: TStringField;
    TCOEBRNumber: TStringField;
    TCBillMonth: TStringField;
    TCStatusCode: TStringField;
    TCGrid: TStringField;
    TCGrossKilowattHour: TFloatField;
    TCLessKilowattHour: TFloatField;
    TCSumBillMonth: TStringField;
    TCCoreloss: TCurrencyField;
    TCBillDate: TDateField;
    TCRoverBook: TStringField;
    SStartReading: TLabeledEdit;
    GroupBox2: TGroupBox;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label27: TLabel;
    Bevel28: TBevel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    Panel4: TPanel;
    sl5: TNxButton;
    sl2: TNxButton;
    sl3: TNxButton;
    sl6: TNxButton;
    StaticText1: TStaticText;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Panel5: TPanel;
    DBText3: TDBText;
    DBText4: TDBText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    DBText5: TDBText;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    DBText6: TDBText;
    StaticText6: TStaticText;
    DBText7: TDBText;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    Bevel6: TBevel;
    Bevel7: TBevel;
    Bevel8: TBevel;
    Panel6: TPanel;
    Label24: TLabel;
    Label25: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DemandLabel: TLabel;
    Label22: TLabel;
    Label13: TLabel;
    PresRead: TDBEdit;
    PrevRead: TDBEdit;
    Diff: TDBEdit;
    Demand: TDBEdit;
    FeedBack: TDBEdit;
    Edit1: TEdit;
    KWH: TDBEdit;
    Bevel13: TBevel;
    Bevel14: TBevel;
    DemandCons: TLabeledEdit;
    CheckDuplicate: TMyTable;
    CB: TMyTable;
    TCEVAT: TFloatField;
    TCEVATDist: TFloatField;
    TCEVATGenCO: TFloatField;
    TCEVATTransCO: TFloatField;
    TCEVATSystemLossGenCO: TFloatField;
    TCEVATSystemLossTransCO: TFloatField;
    ARQ: TMyQuery;
    PDJSillyLabel2: TNxButton;
    ARQEntry: TIntegerField;
    ARQCode: TFloatField;
    ARQDate: TDateField;
    ARQDocument: TStringField;
    ARQBillMonth: TStringField;
    ARQReading: TFloatField;
    ARQKilowattHour: TFloatField;
    ARQDebit: TFloatField;
    ARQCredit: TFloatField;
    ARQBalance: TFloatField;
    ARQUCNPCSD: TFloatField;
    ARQUCNPCSCC: TFloatField;
    ARQUCDUSCC: TFloatField;
    ARQUCME: TFloatField;
    ARQUCETR: TFloatField;
    ARQUCEC: TFloatField;
    ARQUCCSR: TFloatField;
    ARQCollectorCode: TStringField;
    ARQVATDist: TFloatField;
    ARQVATGenCO: TFloatField;
    ARQVATTransCO: TFloatField;
    ARQVATSystemLossGenCO: TFloatField;
    ARQVATSystemLossTransCO: TFloatField;
    ARQVAT: TFloatField;
    Label1: TLabel;
    Label5: TLabel;
    DBArea: TDBText;
    DBBook: TDBText;
    DBMeterSerial: TDBText;
    Label6: TLabel;
    Label7: TLabel;
    Label20: TLabel;
    Bevel15: TBevel;
    Bevel16: TBevel;
    Bevel17: TBevel;
    Bevel18: TBevel;
    Bevel19: TBevel;
    DsFancyButton1: TNxButton;
    Panel2: TPanel;
    Label4: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DBText8: TDBText;
    DBText9: TDBText;
    Bevel9: TBevel;
    Bevel10: TBevel;
    Bevel11: TBevel;
    Bevel12: TBevel;
    PDJSillyLabel1: TNxButton;
    PDJSillyLabel6: TNxButton;
    Edit3: TEdit;
    PresentDate: TMaskEdit;
    PreviousDate: TMaskEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    EditBillDate: TMaskEdit;
    StaticText7: TStaticText;
    StaticText8: TStaticText;
    AssignBillNumberPanel: TNxHeaderPanel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Bevel20: TBevel;
    Bevel30: TBevel;
    Bevel31: TBevel;
    Bevel33: TBevel;
    Gauge2: TGauge;
    Bevel21: TBevel;
    PDJSillyLabel14: TNxButton;
    PDJSillyLabel15: TNxButton;
    St1: TStaticText;
    St2: TStaticText;
    St3: TStaticText;
    St4: TStaticText;
    RadioGroup1: TRadioGroup;
    NextDBGrid1: TNextDBGrid;
    TNxDBTextColumn4: TNxDBTextColumn;
    TNxDBTextColumn15: TNxDBTextColumn;
    DiffCons: TMyQuery;
    DiffConskilowatthour: TFloatField;
    DiffConskilowattused: TFloatField;
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
    DBGrid3: TCRDBGrid1;
    RpTaxQuery: TMyQuery;
    RpTaxQueryarea: TStringField;
    RpTaxQuerybillmonth: TStringField;
    RpTaxQueryrateamnt: TFloatField;
    RpTaxQueryrateorder: TStringField;
    SCReadidSCDisc: TLongWordField;
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
    PKVRpostingdate: TDateField;
    PKVRidBillAdjLedger: TLongWordField;
    PKVRkilowatthour: TLongWordField;
    PKVRIndex: TMyQuery;
    GetPKV: TMyQuery;
    GetPKVdebit: TFloatField;
    GetPKVcredit: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PresReadKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure PrevReadKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure DBGrid3KeyPress(Sender: TObject; var Key: Char);
    procedure sl2Click(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure sl3Click(Sender: TObject);
    procedure DBGrid3Exit(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure PresentDateKeyPress(Sender: TObject; var Key: Char);
    procedure PreviousDateKeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure PDJSillyLabel6Click(Sender: TObject);
    procedure PDJSillyLabel1Click(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure HandleUniqueAccountException(Table: TMyTable; E: Exception);
    procedure EditBillDateKeyPress(Sender: TObject; var Key: Char);
    procedure SAccountNumberKeyPress(Sender: TObject; var Key: Char);
    procedure SBillMonthKeyPress(Sender: TObject; var Key: Char);
    procedure SStartReadingKeyPress(Sender: TObject; var Key: Char);
    procedure SEndReadingKeyPress(Sender: TObject; var Key: Char);
    procedure sl5Click(Sender: TObject);
    procedure PDJSillyLabel9Click(Sender: TObject);
    procedure PDJSillyLabel8Click(Sender: TObject);
    procedure StartReadingDateKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure NumberOfMonthsKeyPress(Sender: TObject; var Key: Char);
    procedure AveConsumptionKeyPress(Sender: TObject; var Key: Char);
    procedure PDJSillyLabel2Click(Sender: TObject);
    procedure sl6Click(Sender: TObject);
    procedure PDJSillyLabel14Click(Sender: TObject);
    procedure DsFancyButton1Click(Sender: TObject);
    procedure PDJSillyLabel15Click(Sender: TObject);
  private
    procedure ComputeBill;

  public
    BillMonthStr       : String     ;
    BillMonth          : String[4]  ;
    StartPrintOEBR     : String[15] ;
    EndPrintOEBR       : String[15] ;
  end;

var
  ReadingComputeLateBillsForm: TReadingComputeLateBillsForm;

implementation

uses Data,
     ModTools,
     StatusUpdate,
     BillingPrintBills,
     Intro, BillMaster;

Var
Lst                : Text     ;
HeadingSW          : Boolean  ;
TotalConsumer      : Word     ;
LineCount          : Word     ;
KWHr               : Currency ;
TotalPower         : Currency ;
TotalAdjustment    : Currency ;
TransRental        : Currency ;
TransRefund        : Currency ;

PTotalPower        : Currency ;
PTotalAdjustment   : Currency ;
PTransRental       : Currency ;
PTransRefund       : Currency ;
PTotalBill         : Currency ;
PTotalKWHr         : Real     ;
PTotalKWUsed       : Real     ;

GTotalPower        : Currency ;
GTotalAdjustment   : Currency ;
GTransRental       : Currency ;
GTransRefund       : Currency ;
GTotalBill         : Currency ;
GTotalKWHr         : Real     ;
GTotalKWUsed       : Real     ;

VATGenCo           : Real     ;
VATTransCo         : Real     ;
VATSystemLoss      : Real     ;

AreaRPTaxTmp       : String   ;
ZeroVAT            : TMyQuery ;


{$R *.DFM}

Function RoundOff(Data : Currency) : Currency;
Var DSt  : String;
    Dat  : Currency;
    Chk  : Integer;
    Val2 : Currency;
begin
RoundOff := Data;
Str(Data:0:4,Dst);

 If Copy(Dst,Length(Dst)-1,1) >= '5' then
        if data >= 0 then Val2 := StrToCurr(Copy(Dst,1,length(dst)-2))+0.01 else
                          Val2 := StrToCurr(Copy(Dst,1,length(dst)-2))-0.01 else
      Val2 := StrToCurr(Copy(Dst,1,length(dst)-2));

RoundOff := Val2;
If (Dst = '0.00') or (Dst = '-0.00') then RoundOff := 0.00;
end;


procedure TReadingComputeLateBillsForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 With BillingData do
 begin
  Master.Close;
  Vicinity.Close;
  MRate.Close;
  Bill.Close;
  Bill.TableName := 'TempBill';
 end;
  Action                           := caFree;
  ReadingComputeLateBillsForm      := Nil;

  With BillMasterForm do
   begin
    DBGrid8.DataSource  := BillingData.MasterSource;
    DataSource1.DataSet := BillingData.Master;
   end;
   
end;


Procedure TReadingComputeLateBillsForm.ComputeBill;
Var
CMKW          : Currency ;
DaysFactor    : Real     ;
Days          : Integer  ;
LLine         : Currency ;
VatableAmount : Currency ;
VAT12, VAT10  : Currency ;
VATparecComp  : Currency ;

DBKwhr        : Real     ;
DBKW          : Real     ;
WithDB        : Boolean  ;
DiffBillVAT   : Currency ;
SCLD          : Currency ;
PKKVAmt       : Currency ;

mccComp       : Currency ;
begin
  With BillingData do
    begin

      MRate.Close;
      MRate.FilterSQL := '';
      MRate.SQL.Clear;
      MRate.SQL.Add('select * from meterrate');
      MRate.SQL.Add('    where mbillmonth = :billmonth');
      MRate.ParamByName('billmonth').Text := BillBillMonth.Text;
      MRate.Open;

      if MRateWRSw.Text = '0' then
      MRate.FilterSQL := 'Ratecode = '+QuotedStr(BillRateCode.Text) else
      MRate.FilterSQL := 'WRatecode = '+QuotedStr(BillWRateCode.Text);

      If MRate.IsEmpty then
      begin
        MessageDlg('Rate Record not found ....'+#13+#10+
                   'Bill Month '+BillMonth+#13+#10+
                   'Consumer Type '+BillRateCode.Text, mtError, [mbOK], 0);
        exit;
      end;

      If (Bill.State = dsEdit) or (Bill.State = dsInsert) then Bill.Post;
      Bill.Edit;

      If BillMultiplier.AsCurrency = 0 then BillMultiplier.AsCurrency := 1;
      If BillCMMultiplier.AsCurrency = 0 then BillCMMultiplier.AsCurrency := 1;
      If BillFeedBackCode.Text <> 'A' then
      begin

        If BillPresentReadingKWH.AsCurrency < BillPreviousReadingKWH.AsCurrency then
           begin
             ShowMessage('Error Present Reading ..... please re-enter');
             PresRead.SetFocus;
             exit;
           end;

        BillCMKilowatthour.AsCurrency := 0;

        If BillCM.Text = '1' then
          begin
            BillCMKilowattHour.AsCurrency := (BillCMPresentReadingKWH.AsFloat -
                                              BillCMPreviousReadingKWH.AsFloat);

            If BillCMKilowatthour.AsCurrency < 0 then BillCMKilowatthour.AsCurrency := 0;
          end
          else
            BillCMKilowatthour.AsCurrency := 0;

        BillDiff.AsCurrency := (BillPresentReadingKWH.AsCurrency - BillPreviousReadingKWH.AsCurrency) +
                                BillCMKilowatthour.AsCurrency;

        BillKilowattHour.AsCurrency := BillDiff.AsCurrency * BillMultiplier.AsCurrency;
      end;

        CMKW := 0;
        If BillCM.Text = '1' then
           If BillCMDemand.AsCurrency > 0 then
             CMKW := BillCMDemand.AsCurrency;

      KWHR := BillKilowattHour.AsCurrency;

      //Remove averaging of 15 KWHr reading============
      //===============================================
      {If BillRateCode.Text = 'R' then
        begin
          If (BillKilowattHour.AsCurrency >= 0) and (BillKilowattHour.AsCurrency <= 15) then
          KWHR := 15;
        end; }

        If (BillRateCode.Text = 'R') OR (BillRateCode.Text = 'L')  Then
        begin
          If (BillKilowattHour.AsCurrency < 0) then
          KWHR := 0;
        end;
      //===============================================

      WithDB := False;
      DBKwhr := 0;
      DBKW   := 0;
      If MRateDiffBillApply.AsInteger = 1 then
         begin
           DiffCons.ParamByName('Code').Text      := BillCode.Text;
           DiffCons.ParamByName('BillMonth').Text := MRateDiffBillMonth.Text;
           DiffCons.Open;

           If not DiffCons.IsEmpty then
             begin
                WithDB := True;
                DBKwhr := DiffConskilowatthour.AsFloat;
                DBKW   := DiffConskilowattused.AsFloat;
             end;
           DiffCons.Close;
         end;

      BillGenSysCharge.AsCurrency               := RoundOff(KWHR * MRateGenSysRate.AsCurrency);
      BillOtherGenRateAdj.AsCurrency            := RoundOff(KWHR * MRateOtherGenRateAdj.AsCurrency);
      BillHostCommCharge.AsCurrency             := RoundOff(KWHR * MRateHostCommRate.AsCurrency);
      BillForexCharge.AsCurrency                := RoundOff(KWHR * MRateForexRate.AsCurrency);
      BillTCDemandCharge.AsCurrency             := RoundOff((BillKilowattUsed.AsCurrency) * MRateTCDemandRate.AsCurrency);
      BillOtherTransDemandCostAdj.AsCurrency    := RoundOff((BillKilowattUsed.AsCurrency) * MRateOtherTransDemandCostAdj.AsCurrency );

      BillTCTransSystemCharge.AsCurrency        := RoundOff(KWHR * MRateTCSystemRate.AsCurrency);
      BillOtherTransCostAdj.AsCurrency          := RoundOff(KWHR * MRateOtherTransCostAdj.AsCurrency);
      BillSystemLossCharge.AsCurrency           := RoundOff(KWHR * MRateSystemLossRate.AsCurrency);
      BillOtherSystemLossCostAdj.AsCurrency     := RoundOff(KWHR * MRateOtherSystemLossCostAdj.AsCurrency);
      BillDCDemandCharge.AsCurrency             := RoundOff((BillKilowattUsed.AsCurrency) *
                                                         MRateDCDemandRate.AsCurrency);

      BillDCDistributionCharge.AsCurrency       := RoundOff(KWHR * MRateDCSystemRate.AsCurrency);
      BillSCRetCustCharge.AsCurrency            := RoundOff(MRateSCRetailCustRate.AsCurrency);
      BillSCSupplySysCharge.AsCurrency          := RoundOff(KWHR * MRateSCSupplySysRate.AsCurrency);
      BillMCRetailCustCharge.AsCurrency         := RoundOff(MRateMCRetailCustRate.AsCurrency);
      BillMCSystemCharge.AsCurrency             := RoundOff(KWHR * MRateMCSysRate.AsCurrency);
      mccComp                                   := RoundOff(KWHR * MRateMCC.AsCurrency);
      BillMCC.AsCurrency                        := mccComp;

      if BillisGram.AsBoolean  then
        Billgram.AsCurrency                   := RoundOff(KWHR * MRateGram.AsCurrency)
      else
        Billgram.AsCurrency                   := 0;

      RpTaxQuery.Close;
      RpTaxQuery.ParamByName('BillMonth').Text  :=  MRateMBillMonth.Text;
      RpTaxQuery.ParamByName('area').Text       :=  BillArea.Text;
      RpTaxQuery.Open;

      BillRPTax.AsCurrency                      := 0;
      BillRateOrder.text                        := RpTaxQueryRateOrder.Text;

      if not RpTaxQuery.IsEmpty then
      begin
        BillRPTax.AsCurrency                    := RoundOff(KWHR * RpTaxQueryRateAmnt.AsCurrency);
      end;

      RpTaxQuery.Close;

      If WithDB then
        begin
          BillDiffBillPerKwhr.AsCurrency        := RoundOff(DBKwhr * MRateDiffBillPerKwhr.AsCurrency) / 10;
          BillDiffBillPerKW.AsCurrency          := RoundOff(DBKW * MRateDIffBillPerKW.AsCurrency) / 10;
          BillDiffBillPerCust.AsCurrency        := RoundOff(MRateDiffBillPerCust.AsCurrency) / 10;
        end;

      BillUCNPCStrandedDebts.AsCurrency         := RoundOff(KWHR * MRateUCNPCStrandedDebtsRate.AsCurrency);
      BillUCNPCStrandedContCost.AsCurrency      := RoundOff(KWHR * MRateUCNPCStrandedContCostRate.AsCurrency);
      BillUCDUStrandedContCost.AsCurrency       := RoundOff(KWHR * MRateUCDUStrandedContCostRate.AsCurrency);
      BillUCME.AsCurrency                       := RoundOff(KWHR * MRateUCMERate.AsCurrency);
      BillUCEqTaxesAndRoyalties.AsCurrency      := RoundOff(KWHR * MRateUCEqTaxesAndRoyaltiesRate.AsCurrency);
      BillUCEC.AsCurrency                       := RoundOff(KWHR * MRateUCECRate.AsCurrency);
      BillUCCrossSubRemoval.AsCurrency          := RoundOff(KWHR * MRateUCCrossSubsidyRemovalRate.AsCurrency);
      BillICCrossSubsidyCharge.AsCurrency       := RoundOff(KWHR * MRateICCrossSubsidyRate.AsCurrency);
      BillPowerActRateRed.AsCurrency            := RoundOff(KWHR * MRatePARARate.AsCurrency);
      BillLifelineDiscSubs.AsCurrency           := RoundOff(KWHR * MRateLifelineSubsidyRate.AsCurrency);
      BillOtherLifelineRateCostAdj.AsCurrency   := RoundOff(KWHR * MRateOtherLifelineRateCostAdj.AsCurrency);
      BillSCDisc.AsCurrency                     := RoundOff(KWHR * MRateSCDiscSubs.AsCurrency);
      BillOtherSeniorCitizenRateAdj.AsCurrency  := RoundOff(KWHR * MRateOtherSeniorCitizenRateAdj.AsCurrency);
      BillLoanCondo.AsCurrency                  := RoundOff(KWHR * MRateLoanCondo.AsCurrency);
      //=============================================================================
      //BillFlatRateWattage.AsCurrency            := RoundOff(KWHR * MRateGram.AsCurrency);
      //============================================================================
      BillLCCustMo.AsFloat                      := RoundOff(MRateLCCustMo.AsFloat);
      BillPrevYearAdjPowerCost.AsCurrency       := RoundOff(KWHR * MRatePrevYearAdjPowerCost.AsCurrency);
      BillSysLossUnderRecov.AsCurrency          := RoundOff(KWHR * MRateSysLossUnderRecov.AsCurrency);

      BillTransSysAncRefund.AsCurrency          := RoundOff(KWHR * MRateTransSysAncRefund.AsCurrency);
      BillTransDemAncRefund.AsCurrency          := RoundOff((BillKilowattUsed.AsCurrency) * MRateTransDemAncRefund.AsCurrency);
      BillVATTransAncRefund.AsCurrency          := RoundOff(KWHR * MRateVATTransAncRefund.AsCurrency);
      BillFitAll.AsCurrency                     := RoundOff(KWHR * MRateFitAllrate.AsCurrency);
      BillPARec.AsCurrency                      := RoundOff(KWHR * MRatePARec.AsCurrency);

      VATGenCo                                  := RoundOff(KWHR * MRateVATGenco.AsCurrency);
      VATTransCo                                := RoundOff(KWHR * MRateVATTransco.AsCurrency);
      VATSystemLoss                             := RoundOff(KWHR * MRateVATSystemLoss.AsCurrency);

      TotalPower := BillGenSysCharge.AsCurrency +
                    BillHostCommCharge.AsCurrency +
                    BillForexCharge.AsCurrency +
                    BillTCDemandCharge.AsCurrency +
                    BillTCTransSystemCharge.AsCurrency +
                    BillSystemLossCharge.AsCurrency +
                    BillDCDemandCharge.AsCurrency +
                    BillDCDistributionCharge.AsCurrency +
                    BillSCSupplySysCharge.AsCurrency +
                    BillMCSystemCharge.AsCurrency +
                    BillMCRetailCustCharge.AsCurrency +
                    BillTransSysAncRefund.AsCurrency+
                    BillTransDemAncRefund.AsCurrency;


          SCLD := 1;
          If (BillRateCode.Text = 'R') or
             (BillRateCode.Text = 'X') then
           begin
             If KWHR <= 15                    then
               begin
                 BillLifelineDiscSubs.AsCurrency := roundoff(TotalPower * -0.50);
                 BillOtherLifelineRateCostAdj.AsCurrency  := 0.0;
                 SCLD := 0.50;
               end;

             If (KWHR >  15) and (KWHR <= 16) then
               begin
                 BillLifelineDiscSubs.AsCurrency := roundoff(TotalPower * -0.40);
                 BillOtherLifelineRateCostAdj.AsCurrency  := 0.0;
                 SCLD := 0.60;
               end;

             If (KWHR >  16) and (KWHR <= 17) then
               begin
                 BillLifelineDiscSubs.AsCurrency := roundoff(TotalPower * -0.30);
                 BillOtherLifelineRateCostAdj.AsCurrency  := 0.0;
                 SCLD := 0.70;
               end;

             If (KWHR >  17) and (KWHR <= 18) then
               begin
                 BillLifelineDiscSubs.AsCurrency := roundoff(TotalPower * -0.20);
                 BillOtherLifelineRateCostAdj.AsCurrency  := 0.0;
                 SCLD := 0.80;
               end;

             If (KWHR >  18) and (KWHR <= 19) then
               begin
                 BillLifelineDiscSubs.AsCurrency := roundoff(TotalPower * -0.10);
                 BillOtherLifelineRateCostAdj.AsCurrency  := 0.0;
                 SCLD := 0.90;
               end;

             If (KWHR >  19) and (KWHR <= 20) then
               begin
                 BillLifelineDiscSubs.AsCurrency := roundoff(TotalPower * -0.05);
                 BillOtherLifelineRateCostAdj.AsCurrency  := 0.0;
                 SCLD := 0.95
               end;
           end;
          If BillLifelineDiscSubs.AsCurrency < 0 then
          begin
              BillSCDisc.AsCurrency := 0;
              BillOtherSeniorCitizenRateAdj.AsCurrency := 0.0;
          end;
         If (MRateSCDiscApply.Text = '1') and (BillKilowattHour.AsFloat <= MRateSCDiscKWHR.AsFloat) then
          begin

            SCRead.Open;
            SCRead.ParamByName('scode').Text := BillCode.Text;
            SCRead.ParamByName('presentreadingdate').Text := FormatDateTime('YYYY-MM-DD', BillPresentReadingDate.AsDateTime);
            SCRead.Open;

            If not SCRead.IsEmpty then
              begin
                BillSCAmt4Disc.AsCurrency := (BillGenSysCharge.AsCurrency +
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
                                              BillMCSystemCharge.AsCurrency +
                                              BillLoanCondo.AsCurrency) * SCLD;

                BillSCDisc.AsCurrency     := (BillSCAmt4Disc.AsCurrency * (MRateSCDiscPercent.AsCurrency/100)) * -1;
                BillOtherSeniorCitizenRateAdj.AsCurrency := 0.0;
              end;

           SCRead.Close;
          end;


      Days := DaysBetween(StrToDate('11/01/2005'),BillPresentReadingDate.AsDateTime) + 1;

      DaysFactor := 0;
      if Days > 0 then
      DaysFactor := Days / 30;

      LLine := BillLifelineDiscSubs.AsCurrency;
      If LLine < 0 then LLine := 0;

      If BillBillMonth.Text = '1105' then
      begin
      BillVAT.AsCurrency :=  roundoff(((BillForexCharge.AsCurrency +
                                BillSystemLossCharge.AsCurrency +
                                BillTCDemandCharge.AsCurrency +
                                BillTCTransSystemCharge.AsCurrency+
                                BillDCDemandCharge.AsCurrency +
                                BillDCDistributionCharge.AsCurrency +
                                BillSCRetCustCharge.AsCurrency +
                                BillSCSupplySysCharge.AsCurrency +
                                BillMCRetailCustCharge.AsCurrency +
                                BillMCSystemCharge.AsCurrency +
                                BillICCrossSubsidyCharge.AsCurrency +
                                BillPowerActRateRed.AsCurrency +
                                LLine+
                                BillLoanCondo.AsCurrency +
                                BillLCCustMo.AsCurrency) *
                                (MRateVAT.AsCurrency / 100)) * DaysFactor);
      end else
      If BillBillMonth.Text <> '0206' then
      begin
        DiffBillVAT :=  ( BillDiffBillPerKwhr.AsCurrency +
                          BillDiffBillPerKW.AsCurrency +
                          BillDiffBillPerCust.AsCurrency ) * ( MRateVAT.AsCurrency / 100 );

        VATparecComp            := 0;
        VATparecComp            := BillPARec.AsCurrency *( MRateVAT.AsCurrency / 100 );
        BillVATparec.AsCurrency := VATparecComp;

        BillVATmcc.AsCurrency   := RoundOff(mccComp * (MRateVAT.AsCurrency / 100));

        if ((RightStr(BillBillMonth.Text,2) + LeftStr(BillBillMonth.Text,2)) >= '1201') then
         begin
           BillVAT.AsCurrency :=  RoundOff((( BillForexCharge.AsCurrency+
                                              BillDCDemandCharge.AsCurrency+
                                              BillDCDistributionCharge.AsCurrency+
                                              BillSCRetCustCharge.AsCurrency+
                                              BillSCSupplySysCharge.AsCurrency+
                                              BillMCRetailCustCharge.AsCurrency+
                                              BillMCSystemCharge.AsCurrency+
                                              BillICCrossSubsidyCharge.AsCurrency+
                                              BillLifelineDiscSubs.AsCurrency+
                                              BillSCDisc.AsCurrency+
                                              BillOtherLifelineRateCostAdj.AsCurrency+
                                              BillOtherSeniorCitizenRateAdj.AsCurrency+
                                              BillLoanCondo.AsCurrency +
                                              BillLCCustMo.AsCurrency+
                                              mccComp)*
                                              (MRateVAT.AsCurrency / 100)) ) +
                                               VATGenCO +
                                               VATTransCO +
                                               VATSystemLoss +
                                               DiffBillVAT +
                                               VATparecComp;




           BillVATDist.AsCurrency            := BillVAT.AsCurrency - (VATGenCO+
                                                                      VATTransCo+
                                                                      VATSystemLoss);
         end
        else
         begin
           If BillLifelineDiscSubs.AsCurrency > 0 then
            BillVAT.AsCurrency :=  Roundoff((( BillForexCharge.AsCurrency+
                                               BillDCDemandCharge.AsCurrency+
                                               BillDCDistributionCharge.AsCurrency+
                                               BillSCRetCustCharge.AsCurrency+
                                               BillSCSupplySysCharge.AsCurrency+
                                               BillMCRetailCustCharge.AsCurrency+
                                               BillMCSystemCharge.AsCurrency+
                                               BillICCrossSubsidyCharge.AsCurrency+
                                               BillPowerActRateRed.AsCurrency+
                                               BillLifelineDiscSubs.AsCurrency+
                                               BillOtherLifelineRateCostAdj.AsCurrency+
                                               BillLoanCondo.AsCurrency+
                                               BillLCCustMo.AsCurrency+
                                               BillMCC.AsCurrency+
                                               mccComp) *
                                               MRateVAT.AsCurrency / 100)) +
                                               VATGenCO +
                                               VATTransCO +
                                               VATSystemLoss +
                                               DiffBillVAT+
                                               VATparecComp

           else
            BillVAT.AsCurrency :=              VATGenCO +
                                               VATTransCO +
                                               VATSystemLoss +
                                               DiffBillVAT;

           If BillLifelineDiscSubs.AsCurrency > 0 then
            BillVATDist.AsCurrency            := BillVAT.AsCurrency - (VATGenCO+
                                                                       VATTransCo+
                                                                       VATSystemLoss)
           else
            BillVATDist.AsCurrency            := DiffBillVAT;
         end;
        BillVATGenCO.AsCurrency           := VATGenCO;
        BillVATTransCO.AsCurrency         := VATTransCo;
        BillVATSystemLossGenCO.AsCurrency := VATSystemLoss;
      end else
      begin

          VAT12 := 0;
          VAT10 := 0;
          If BillLifelineDiscSubs.AsCurrency > 0 then
          begin
          VatableAmount :=  ( BillForexCharge.AsCurrency+
                              BillDCDemandCharge.AsCurrency+
                              BillDCDistributionCharge.AsCurrency+
                              BillSCRetCustCharge.AsCurrency+
                              BillSCSupplySysCharge.AsCurrency+
                              BillMCRetailCustCharge.AsCurrency+
                              BillMCSystemCharge.AsCurrency+
                              BillICCrossSubsidyCharge.AsCurrency+
                              BillPowerActRateRed.AsCurrency+
                              BillLifelineDiscSubs.AsCurrency+
                              BillOtherLifelineRateCostAdj.AsCurrency+
                              BillLoanCondo.AsCurrency +
                              BillLCCustMo.AsCurrency );

          VAT12         := ((VatableAmount / 30) * 18) * 0.12;
          VAT10         := ((VatableAmount / 30) * 12) * 0.10;
          end;

          BillVATGenCO.AsCurrency           := VATGenCO;
          BillVATTransCO.AsCurrency         := VATTransCo;
          BillVATSystemLossGenCO.AsCurrency := VATSystemLoss;
          BillVATDist.AsCurrency            := VAT10 + VAT12;
          BillVAT.AsCurrency                := VATGenCO +
                                               VATTransCO +
                                               VATSystemLoss +
                                               VAT10 +
                                               VAT12;

      end;

      //Temporarily remove the vat discount===============
      //==================================================
      {If BillVATDisc.AsFloat > 0 then
      begin
        BillVATDistDiscAmt.AsFloat          := RoundOff(BillVATDist.AsFloat * (BillVATDisc.AsFloat / 100) * -1);
        BillVATGenCoDiscAmt.AsFloat         := 0;
        BillVATTransCoDiscAmt.AsFloat       := 0;
        BillVATSystemLossDiscAmt.AsFloat    := 0;
        BillVATDiscAmt.AsFloat              := roundoff(BillVATDistDiscAmt.AsFloat+
                                               BillVATGenCoDiscAmt.AsFloat+
                                               BillVATTransCoDiscAmt.AsFloat+
                                               BillVATSystemLossDiscAmt.AsFloat);
      end;  }
      //=================================================


      BillVATDiscAmt.AsFloat   := 0;

      ZeroVAT            := TMyQuery.Create(ZeroVAT);
      ZeroVAT.Connection := BillingData.MyConnection1;
      ZeroVAT.SQL.Clear;

      ZeroVAT.SQL.Add('Select accountnumber from ZeroVat where code = :code and dateentered <= :dateentered');
      ZeroVAT.ParamByName('Code').Text        := BillCode.Text;
      ZeroVAT.ParamByName('DateEntered').AsDate := BillPresentReadingDate.AsDateTime;
      ZeroVAT.Open;

          if not ZeroVAT.IsEmpty then
          begin
            BillVATDistDiscAmt.AsFloat          := BillVATDist.AsFloat * -1;
            BillVATGenCoDiscAmt.AsFloat         := BillVATGenCO.AsFloat * -1;
            BillVATTransCoDiscAmt.AsFloat       := BillVATTransCO.AsFloat * -1;
            BillVATSystemLossDiscAmt.AsFloat    := BillVATSystemLossGenCO.AsFloat * -1;

            BillVATDiscAmt.AsFloat              := BillVATDistDiscAmt.AsFloat+
                                                   BillVATGenCoDiscAmt.AsFloat+
                                                   BillVATTransCoDiscAmt.AsFloat+
                                                   BillVATSystemLossDiscAmt.AsFloat;


          end;

      PKKVAmt                  := 0;

      If MRatePantawidApply.AsInteger = 1 then
      begin
        PKVRIndex.ParamByName('code').Text   := BillCode.Text;
        PKVRIndex.ParamByName('AN').Text     := BillAccountNumber.Text;
        PKVRIndex.Open;

        If PKVRIndex.IsEmpty then
        begin
          GetPKV.ParamByName('code').Text      := BillCode.Text;
          GetPKV.ParamByName('area').Text      := BillArea.Text;
          GetPKV.ParamByName('book').Text      := BillBook.Text;
          GetPKV.Open;

          If GetPKV.IsEmpty then
            PKKVAmt := 0 else
            PKKVAmt := GetPKVdebit.AsCurrency - GetPKVcredit.AsCurrency;
            GetPKV.Close;
          end;
        end;

      If MRatePantawidRecovApply.AsInteger = 1 then
      begin
        PKVRIndex.ParamByName('code').Text   := BillCode.Text;
        PKVRIndex.ParamByName('AN').Text     := BillAccountNumber.Text;
        PKVRIndex.Open;

        If not PKVRIndex.IsEmpty then
        begin
          PKVR.ParamByName('code').Text      := BillCode.Text;
          PKVR.ParamByName('area').Text      := BillArea.Text;
          PKVR.ParamByName('book').Text      := BillBook.Text;
          PKVR.Open;

          If not PKVR.IsEmpty then
          begin
            BillPKVROebrNumber.Text := PKVRbillnumber.Text;
            BillPKVRBillMonth.Text  := PKVRBillMonth.Text;
            BillPKVRAmount.Text     := PKVRcredit.Text;
          end;
          PKVR.Close;
        end;
        PKVRIndex.Close;
      end;

      BillTotalBill.AsCurrency := roundoff    (BillGenSysCharge.AsCurrency +
                                               BillHostCommCharge.AsCurrency +
                                               BillForexCharge.AsCurrency +
                                               BillTCDemandCharge.AsCurrency + //----
                                               BillTCTransSystemCharge.AsCurrency +
                                               BillSystemLossCharge.AsCurrency +
                                               BillDCDemandCharge.AsCurrency + //----
                                               BillDCDistributionCharge.AsCurrency +
                                               BillSCRetCustCharge.AsCurrency +
                                               BillSCSupplySysCharge.AsCurrency +
                                               BillMCRetailCustCharge.AsCurrency +
                                               BillMCSystemCharge.AsCurrency +
                                               BillMCC.AsCurrency +
                                               BillUCNPCStrandedDebts.AsCurrency +
                                               BillUCNPCStrandedContCost.AsCurrency +
                                               BillUCDUStrandedContCost.AsCurrency +
                                               BillUCME.AsCurrency +
                                               BillUCEqTaxesAndRoyalties.AsCurrency +
                                               BillUCEC.AsCurrency +
                                               BillUCCrossSubRemoval.AsCurrency +
                                               BillICCrossSubsidyCharge.AsCurrency +
                                               BillPowerActRateRed.AsCurrency +
                                               BillLifelineDiscSubs.AsCurrency +
                                               BillLoanCondo.AsCurrency +
                                               BillLCCustMo.AsCurrency +
                                               BillVAT.AsCurrency +
                                               //===============================
                                               BillVATDiscAmt.AsCurrency +
                                               //===============================
                                               BillOCAmount1.AsCurrency +   //-----
                                               BillOCAmount2.AsCurrency +   //-----
                                               BillOCAmount3.AsCurrency +   //-----
                                               BillFlatRateWattage.AsCurrency + //----
                                               BillPrevYearAdjPowerCost.AsCurrency +  //30
                                               BillSysLossUnderRecov.AsCurrency+
                                               BillRPTax.AsCurrency +
                                               BillDiffBillPerKwhr.AsCurrency + //-----
                                               BillDiffBillPerKW.AsCurrency +   //-----
                                               BillPKVRAmount.AsCurrency +      //-----
                                               BillDiffBillPerCust.AsCurrency + //-----
                                               BillTransSysAncRefund.AsCurrency+
                                               BillTransDemAncRefund.AsCurrency+//-----
                                               BillVATTransAncRefund.AsCurrency+
                                               BillSCDisc.AsCurrency+
                                               BillOtherGenRateAdj.AsCurrency+
                                               BillOtherTransCostAdj.AsCurrency+
                                               BillOtherTransDemandCostAdj.AsCurrency+ //-------
                                               BillOtherSystemLossCostAdj.AsCurrency+
                                               BillOtherLifelineRateCostAdj.AsCurrency+
                                               BillOtherSeniorCitizenRateAdj.AsCurrency+
                                               BillFitAll.AsCurrency+
                                               BillPARec.AsCurrency+
                                               Billgram.AsCurrency);  //50

      BillreferenceAtmNo.Text := referenceNo(BillCode.Text,FormatDateTime('YYMMDD',BillPresentReadingDate.AsDateTime),BillTotalBill.AsFloat);

    end;
end;

procedure TReadingComputeLateBillsForm.PrevReadKeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 then
  begin
    if (Trim(PrevRead.Text) = '') then
    begin
      MessageDlg('Please input a valid number.',mtError,[mbOk],0);
      Exit;
    end;

    if (BillingData.Bill.State <> dsBrowse) then
      BillingData.Bill.Post;

    BillingData.Bill.Edit;
    ComputeBill;
    BillingData.Bill.Post;
    Edit1.SetFocus;
  end;
end;

procedure TReadingComputeLateBillsForm.PresReadKeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 then
  begin

    try
      try
        if (Trim(PresRead.Text) = '') then
        begin
          MessageDlg('Please input a valid reading in KWH.',mtError,[mbOk],0);
          Exit;
        end;

        BillingData.Bill.Edit;
        ComputeBill;
        PrevRead.SetFocus;
        If BillingData.Bill.State = dsedit then BillingData.Bill.Post;
      except
        on E: Exception do
          MessageDlg(E.Message,mtError,[mbOk],0);
        else
          BillingData.Bill.Cancel;
      end
    finally
    end;
  end;
end;

procedure TReadingComputeLateBillsForm.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 then
   begin
      if (Trim(Edit1.Text) = '') then
      begin
        MessageDlg('Please input a valid account number.',mtError, [mbOk],0);
        Edit1.SetFocus;
        Exit;
      end;

      With BillingData do
       begin
        Master.Close;
        Master.SQL.Clear;
        Master.SQL.Add('select * from master where accountnumber = :accountnumber');
        Master.ParamByName('accountnumber').Text  := Copy(VicinityArea.Text,2,2)+
                                                     Copy(VicinityBook.Text,2,2)+
                                                     Edit1.Text;
        Master.Open;

        AreaRPTaxTmp := MasterArea.Text;
       If Master.IsEmpty then
         begin
          MessageDlg('Account Number not found.', mtError, [mbOK], 0);
          Edit1.SetFocus;
          Edit1.SelectAll;
          exit;
         end;
       end;

      With BillingData do
        begin
           Bill.Append;
           BillCode.Text                        := MasterCode.Text;
           BillArea.Text                        := MasterArea.Text;
           BillBook.Text                        := MasterBook.Text;
           BillSequence.Text                    := MasterSequence.Text;
           BillAccountNumber.Text               := MasterAccountNumber.Text;
           BillName.Text                        := MasterName.Text;
           BillAddress.Text                     := MasterAddress.Text;
           BillRateCode.Text                    := MasterRateCode.Text;
           BillWRateCode.Text                   := MasterWRateCode.Text;
           BillVATDisc.AsFloat                  := MasterVATDisc.AsFloat;
           BillMultiplier.Text                  := MasterMultiplier.Text;
           BillSerial.Text                      := MasterSerial.Text;
           BillPresentReadingKWH.Text           := '0.00';
           BillPreviousReadingKWH.Text          := MasterPresentReadingKWH.Text;
           BillDiff.Text                        := '0.00';
           BillDemand.Text                      := MasterDemand.Text;
           BillFeedBackCode.Text                := MasterFeedBackCode.Text;
           BillCM.Text                          := MasterCM.Text;
           BillCMMultiplier.Text                := MasterCMMultiplier.Text;
           BillCMPreviousReadingKWH.Text        := MasterCMPreviousReadingKWH.Text;
           BillCMPresentReadingKWH.Text         := MasterCMPresentReadingKWH.Text;
           BillCMKilowattHour.Text              := MasterCMKilowattHour.Text;
           BillCMDemand.Text                    := MasterCMDemand.Text;
           BillTransformerRental.Text           := MasterTransformerRental.Text;
           BillStatusCode.Text                  := '2';
           BillSCDisc.AsCurrency                := MasterSCDisc.AsCurrency;
           BillWRateCode.Text                   := MasterWRateCode.Text;
           BillisGram.AsBoolean                 := MasterisGram.AsBoolean;

           if (MasterRateCode.Text = 'S') then BillKilowattHour.AsCurrency := MasterKilowattHour.AsCurrency;

           If (MasterOCMo1.AsInteger*MasterOCAmount1.AsCurrency) <> MasterOCTotal1.AsCurrency then
           begin
            BillOCCode1.Text                    := MasterOCCode1.Text;
            BillOCAmount1.AsCurrency            := MasterOCAmount1.AsCurrency;
            BillOCMo1.AsCurrency                := MasterOCMo1.AsCurrency;
            BillOCTotal1.AsCurrency             := MasterOCTotal1.AsCurrency;
           end;

           If (MasterOCMo2.AsInteger*MasterOCAmount2.AsCurrency) <> MasterOCTotal2.AsCurrency then
           begin
            BillOCCode2.Text                    := MasterOCCode2.Text;
            BillOCAmount2.AsCurrency            := MasterOCAmount2.AsCurrency;
            BillOCMo2.AsCurrency                := MasterOCMo2.AsCurrency;
            BillOCTotal2.AsCurrency             := MasterOCTotal2.AsCurrency;
           end;

           If (MasterOCMo3.AsInteger*MasterOCAmount3.AsCurrency) <> MasterOCTotal3.AsCurrency then
           begin
            BillOCCode3.Text                    := MasterOCCode3.Text;
            BillOCAmount3.AsCurrency            := MasterOCAmount3.AsCurrency;
            BillOCMo3.AsCurrency                := MasterOCMo3.AsCurrency;
            BillOCTotal3.AsCurrency             := MasterOCTotal3.AsCurrency;
           end;

           try
             try
               Panel2.Left    := 184;
               Panel2.Top     := 91;
               Panel2.Visible := True;
               Panel2.BringToFront;
               EditBillDate.Text := FormatDateTime('MM/DD/YY',Now);
               Edit3.SetFocus;
             except
               on E: Exception do HandleUniqueAccountException(Bill, E)
               else
             end;
           finally
           end;
        end;

end;
Label16.Caption := 'Records = '+IntToStr(BillingData.Bill.RecordCount);
end;

procedure TReadingComputeLateBillsForm.DBGrid2DblClick(Sender: TObject);
begin
  Edit1.SetFocus;
end;

procedure TReadingComputeLateBillsForm.DBGrid3KeyPress(Sender: TObject;
  var Key: Char);
begin
   If Key = #13 then
     begin
       BillingData.Bill.Edit;
       BillingData.Master.Locate('AccountNumber',BillingData.BillAccountNumber.Text,[]);
       PresRead.SetFocus;
     end;  

end;

procedure TReadingComputeLateBillsForm.sl2Click(Sender: TObject);
begin
 With BillingData do Bill.Refresh;

 If not assigned(BillingPrintBillForm) then
 BillingPrintBillForm  := TBillingPrintBillForm.Create(Application);

 BillingPrintBillForm.StartOEBR.Text         := StartPrintOEBR;
 BillingPrintBillForm.EndOEBR.Text           := EndPrintOEBR;
 BillingPrintBillForm.Show;
 BillingPrintBillForm.StartOEBR.SetFocus;
end;

procedure TReadingComputeLateBillsForm.Edit2Change(Sender: TObject);
Var SearchAccount : String;
begin
 With BillingData do
   begin
    If Length(Edit2.Text) >= 4 then
     begin
       SearchAccount  := Copy(VicinityArea.Text,2,2)+
                         Copy(VicinityBook.Text,2,2)+
                         Edit2.Text;
       Bill.Locate('AccountNumber',SearchAccount,[LoCaseInsensitive]);
     end;
   end;
end;


procedure TReadingComputeLateBillsForm.sl3Click(Sender: TObject);
Procedure PrintHeading;
begin
 With BillingData do
 begin
  Write(Lst,#18);
  Writeln(lst,#27 + 'P'+'PAGE # '+IntToStr(PageCount));
  Writeln(lst,#27 + '4'+'BILLING REGISTER - LATE BILLS'+#27+'5');
  Writeln(lst,'AREA/BOOK/ADDRESS : '+VicinityArea.Text+'/'+ VicinityBook.Text+'-'+VicinityAddress.Text);
  Write(Lst,#15);
  Writeln(lst,'----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------');
  Writeln(lst,'|  Acct #  |        Consumer Name         |PreaRead|PrevRead|    KWHR|  DEMAND| Basic Charge |Uni-Charge Adj| XFRent/LLP |  XF Refund |   Total Bill |  OEBR #  |R|    Reading Dates    | BM |');
  Writeln(lst,'----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------');
 end;
end;

begin
  TotalConsumer         := 0;
  LineCount             := 0;

  AssignFile(Lst,'LPT1');
  AssignFile(Lst,'C:\latebillreg.txt');
  Rewrite(Lst);
  If IOResult <> 0 then
    begin
     ShowMessage('Printer not Ready');
     Exit;
    end;

  HeadingSW := True;
  PTotalPower        := 0 ;
  PTotalAdjustment   := 0 ;
  PTotalBill         := 0 ;
  PTotalKWHr         := 0 ;
  PTotalKWUsed       := 0 ;
  PTransRental       := 0 ;
  PTransRefund       := 0 ;

  GTotalPower        := 0 ;
  GTotalAdjustment   := 0 ;
  GTotalBill         := 0 ;
  GTotalKWHr         := 0 ;
  GTotalKWUsed       := 0 ;
  GTransRental       := 0 ;
  GTransRefund       := 0 ;

  If not assigned(BillingStatusUpdateForm) then
  BillingStatusUpdateForm := TBillingStatusUpdateForm.Create(Application);
  BillingStatusUpdateForm.Caption := 'BILLING REGISTER';
  BillingStatusUpdateForm.Label1.Caption := 'Printing Billing Register.....';
  BillingStatusUpdateForm.Show;

  BillingStatusUpdateForm.ProgressBar1.Min := 0;
  BillingStatusUpdateForm.ProgressBar1.Max := BillingData.Bill.RecordCount;

  BillingStatusUpdateForm.ProgressBar1.Position := 0;

  BillingData.Bill.First;

  With BillingData do
  Repeat

  BillingStatusUpdateForm.ProgressBar1.StepBy(1);
  Application.ProcessMessages;

  If HeadingSW then
    begin
     PrintHeading;
     HeadingSW := False;
    end;

    TotalPower      := BillGenSysCharge.AsCurrency +
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

    TotalAdjustment := BillUCNPCStrandedDebts.AsCurrency +
                       BillUCNPCStrandedContCost.AsCurrency +
                       BillUCDUStrandedContCost.AsCurrency +
                       BillUCME.AsCurrency +
                       BillUCEqTaxesAndRoyalties.AsCurrency +
                       BillUCEC.AsCurrency +
                       BillUCCrossSubRemoval.AsCurrency +
                       BillICCrossSubsidyCharge.AsCurrency +
                       BillPowerActRateRed.AsCurrency +
                       BillLifelineDiscSubs.AsCurrency +
                       BillLoanCondo.AsCurrency +
                       BillLCCustMo.AsCurrency +
                       BillVAT.AsCurrency +
                       BillPrevYearAdjPowerCost.AsCurrency +
                       BillSysLossUnderRecov.AsCurrency +
                       BillFlatRateWattage.AsCurrency;

    TransRental     := BillTransformerRental.AsCurrency;
    TransRefund     := BillOCAmount1.AsCurrency +
                       BillOCAmount2.AsCurrency +
                       BillOCAmount3.AsCurrency;

    PTotalPower        := PTotalPower + TotalPower;
    PTotalAdjustment   := PTotalAdjustment + TotalAdjustment;
    PTransRental       := PTransRental  + TransRental;
    PTransRefund       := PTransRefund + TransRefund;
    PTotalBill         := PTotalBill + BillTotalBill.AsCurrency;
    PTotalKWHr         := PTotalKWHr + BillKilowattHour.AsCurrency;
    PTotalKWUsed       := PTotalKWUsed + BillKilowattUsed.AsCurrency;

    GTotalPower        := GTotalPower + TotalPower;
    GTotalAdjustment   := GTotalAdjustment + TotalAdjustment;
    GTransRental       := GTransRental  + TransRental;
    GTransRefund       := GTransRefund + TransRefund;
    GTotalBill         := GTotalBill + BillTotalBill.AsCurrency;
    GTotalKWHr         := GTotalKWHr + BillKilowattHour.AsCurrency;
    GTotalKWUsed       := GTotalKWUsed + BillKilowattUsed.AsCurrency;

    Writeln(lst,'|',JustStr(BillAccountNumber.Text,' ',10,0)        ,'|',
                    JustStr(BillName.Text,' ',30,0)                 ,'|',
                    BillPresentReadingKWH.AsCurrency:8:1            ,'|',
                    BillPreviousReadingKWH.AsCurrency:8:1           ,'|',
                    BillKilowattHour.AsCurrency:8:1                 ,'|',
                    BillKilowattUsed.AsCurrency:8:1                 ,'|',
                    Format(TotalPower,'#,###,###.##')               ,'|',
                    Format(TotalAdjustment,'#,###,###.##')          ,'|',
                    Format(TransRental,'###,###.##')                ,'|',
                    Format(TransRefund,'###,###.##')                ,'|',
                    Format(BillTotalBill.AsCurrency,'#,###,###.##') ,'|',
                    JustStr(BillOebrNumber.Text,' ',10,0)           ,'|',
                    JustStr(BillRateCode.Text,' ',1,0)              ,'|',
                    JustStr(BillPreviousReadingDate.Text,' ',10,0),' ',
                    JustStr(BillPresentReadingDate.Text,' ',10,0)   ,'|',
                    JustStr(BillBillMonth.Text,' ',4,0)             ,'|');

    Inc(TotalConsumer);

  Inc(LineCount);
  If (LineCount = 50) and not Bill.eof then
   begin
    LineCount := 0;
    Inc(PageCount);

    Writeln(lst,'----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------');
    Writeln(lst,'| Page Total --------------------------------------------->>|',
                  PTotalKWHr:8:1                          ,'|',
                  PTotalKWUsed:8:1                        ,'|',
                  Format(PTotalPower,'#,###,###.##')      ,'|',
                  Format(PTotalAdjustment,'#,###,###.##') ,'|',
                  Format(PTransRental,'###,###.##')       ,'|',
                  Format(PTransRefund,'###,###.##')       ,'|',
                  Format(PTotalBill,'#,###,###.##')       ,
                  '|          | |                          |');
    Writeln(lst,'----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------');
    PTotalPower        := 0 ;
    PTotalAdjustment   := 0 ;
    PTotalBill         := 0 ;
    PTotalKWHr         := 0 ;
    PTotalKWUsed       := 0 ;
    PTransRental       := 0 ;
    PTransRefund       := 0 ;
    Write(Lst,#12);
    HeadingSW := True;
   end; { end if Line Count }
   Bill.Next;
  Until (Bill.Eof);

  If LineCount > 0 then
  begin
  Writeln(lst,'----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------');
  Writeln(lst,'| Page Total --------------------------------------------->>|',
                PTotalKWHr:8:1                          ,'|',
                PTotalKWUsed:8:1                        ,'|',
                Format(PTotalPower,'#,###,###.##')      ,'|',
                Format(PTotalAdjustment,'#,###,###.##') ,'|',
                Format(PTransRental,'###,###.##')       ,'|',
                Format(PTransRefund,'###,###.##')       ,'|',
                Format(PTotalBill,'#,###,###.##')       ,
                  '|          | |                          |');
  end;
  Writeln(lst,'----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------');
  Writeln(lst,'| Grand Total -------------------------------------------->>|',
                GTotalKWHr:8:1                          ,'|',
                GTotalKWUsed:8:1                        ,'|',
                Format(GTotalPower,'#,###,###.##')      ,'|',
                Format(GTotalAdjustment,'#,###,###.##') ,'|',
                Format(GTransRental,'###,###.##')       ,'|',
                Format(GTransRefund,'###,###.##')       ,'|',
                Format(GTotalBill,'#,###,###.##')       ,
              '|          | |                          |');
  Writeln(lst,'----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------');
  Writeln(Lst,'TOTAL CONSUMERS : '+IntToStr(TotalConsumer));
  Write(lst,#18,#12);
  BillingStatusUpdateForm.Close;
  CloseFile(Lst);
  MessageDlg('Printing done....', mtInformation, [mbOK], 0);
end;
procedure TReadingComputeLateBillsForm.DBGrid3Exit(Sender: TObject);
begin
  Label16.Caption := 'Records = '+IntToStr(BillingData.Bill.RecordCount);
end;

procedure TReadingComputeLateBillsForm.Edit3KeyPress(Sender: TObject;
  var Key: Char);
begin
  If key = #13 then
   begin

      With BillingData do
      begin
      ARQ.Close;
      ARQ.ParamByName('Code').Text := MasterCode.Text;
      ARQ.ParamByName('BillMonth').Text := Edit3.Text;
      ARQ.Open;

      If not ARQ.IsEmpty then
        begin
          if (MessageDlg('Account '+MasterAccountNumber.Text+' has already been billed for'+#13+#10+
                         'the bill month '+Edit3.Text+' Proceed anyway?', mtConfirmation, [mbYes, mbNo], 0) = mrNo) then
          begin
           ARQ.Close;
           Edit3.SetFocus;
           exit;
          end;
        end;
      ARQ.Close;

      CheckDuplicate.FilterSQL := 'Code = '+QuotedStr(MasterCode.Text)+
                                  ' and BillMonth = '+QuotedStr(Edit3.Text);
      CheckDuplicate.Open;

      If not CheckDuplicate.isEmpty then
        begin
          MessageDlg('Account '+MasterAccountNumber.Text+' has already been entered for'+
                     #13+#10+'the bill month '+BillMonth+'.  Please check.', mtError, [mbOK], 0);
          Edit3.SetFocus;
          CheckDuplicate.Close;
          exit;
        end;

      CheckDuplicate.Close;
      end;
    PresentDate.SetFocus;
   end;
end;

procedure TReadingComputeLateBillsForm.PresentDateKeyPress(Sender: TObject;
  var Key: Char);
begin
  If key = #13 then PreviousDate.SetFocus;
end;

procedure TReadingComputeLateBillsForm.PreviousDateKeyPress(
  Sender: TObject; var Key: Char);
begin
  If key = #13 then Edit4.SetFocus;
end;

procedure TReadingComputeLateBillsForm.Edit4KeyPress(Sender: TObject;
  var Key: Char);
begin
  If key = #13 then Edit5.SetFocus;
end;

procedure TReadingComputeLateBillsForm.Edit5KeyPress(Sender: TObject;
  var Key: Char);
begin

  If key = #13 then PDJSillyLabel1Click(self);
end;

procedure TReadingComputeLateBillsForm.PDJSillyLabel6Click(
  Sender: TObject);
begin
  Panel2.Visible := False;
end;

procedure TReadingComputeLateBillsForm.PDJSillyLabel1Click(
  Sender: TObject);
begin
  With BillingData do
   begin
     Bill.Edit;
     BillPreviousReadingDate.Text         := PreviousDate.Text;
     BillPresentReadingDate.Text          := PresentDate.Text;
     BillPresentReadingKWH.Text           := Edit4.Text;
     BillPreviousReadingKWH.Text          := Edit5.Text;
     BillBillMonth.Text                   := Edit3.Text;
     BillBillDate.Text                    := EditBillDate.Text;
     Bill.Post;
     ComputeBill;
     Panel2.Visible := False;
     PrevRead.SetFocus;
   end;
end;

procedure TReadingComputeLateBillsForm.Edit3Change(Sender: TObject);
begin
  If (Length(Edit3.Text) = 4) then
     With BillingData do
      begin
       MRate.SQL.Clear;
       MRate.FilterSQL := '';
       MRate.SQL.Add('select * from meterrate');
       MRate.SQL.Add('    where mbillmonth = :billmonth');
       MRate.ParamByName('billmonth').Text := Edit3.Text;
       MRate.Open;

      if MRateWRSw.Text = '0' then
      MRate.FilterSQL := 'Ratecode = '+QuotedStr(BillRateCode.Text) else
      MRate.FilterSQL := 'WRatecode = '+QuotedStr(BillWRateCode.Text);

       If MRate.IsEmpty then
       begin
         MessageDlg('Rate Record not found ....'+#13+#10+
                    'Bill Month '+BillMonth+#13+#10+
                    'Consumer Type '+BillRateCode.Text, mtError, [mbOK], 0);
         edit3.SetFocus;
         edit3.SelectAll;
         exit;
       end;
      end;
end;

procedure TReadingComputeLateBillsForm.HandleUniqueAccountException(
  Table: TMyTable; E: Exception);
begin
  MessageDlg(E.Message,mtError, [mbOk], 0);
  Table.Cancel;
  Edit1.Text := '';
  Edit1.SetFocus;
  Edit1.SelectAll;
end;

procedure TReadingComputeLateBillsForm.EditBillDateKeyPress(
  Sender: TObject; var Key: Char);
begin
  If key = #13 then PresentDate.SetFocus;
end;

procedure TReadingComputeLateBillsForm.SAccountNumberKeyPress(
  Sender: TObject; var Key: Char);
begin
   If key = #13 then
     begin
     With BillingData do
     begin
      Master.Close;
      Master.SQL.Clear;
      Master.SQL.Add('select * from master where accountnumber = :accountnumber');
      Master.ParamByName('accountnumber').Text  := Copy(VicinityArea.Text,2,2)+
                                                   Copy(VicinityBook.Text,2,2)+
                                                    SAccountNumber.Text;
      Master.Open;

       If Master.IsEmpty then
         begin
          MessageDlg('Account Number not found.', mtError, [mbOK], 0);
          SAccountNumber.SetFocus;
          SAccountNumber.SelectAll;
          exit;
         end;

       SStartReading.Text := MasterPresentReadingKWH.Text;
       SBillMonth.SetFocus;
      end;
     end;
end;

procedure TReadingComputeLateBillsForm.SBillMonthKeyPress(Sender: TObject;
  var Key: Char);
begin
   If key = #13 then SStartReading.SetFocus;
end;

procedure TReadingComputeLateBillsForm.SStartReadingKeyPress(
  Sender: TObject; var Key: Char);
begin
   If key = #13 then SEndReading.SetFocus;
end;

procedure TReadingComputeLateBillsForm.SEndReadingKeyPress(Sender: TObject;
  var Key: Char);
begin
    If key = #13 then
    begin
    // investigate start reading if greater than end reading --- >>> added by ronald... nov 11, 2004 @ pelco iii
      if StrToInt(SStartReading.Text) > StrToInt(SEndReading.Text) then
      begin
        MessageDlg('Start Meter Reading is GREATER than End Meter Reading' +#13+#10+
                   'Re-Enter value of End Meter Reading.',mtInformation,[mbOK],0);
        SEndReading.Text := '';
        SEndReading.SetFocus;
      end
      else
        StartReadingDate.SetFocus;
    end;
end;

procedure TReadingComputeLateBillsForm.sl5Click(
  Sender: TObject);
begin
  Panel3.Left    := 171;
  Panel3.Top     := 27;
  Panel3.Visible := True;
  SAccountNumber.SetFocus;
end;

procedure TReadingComputeLateBillsForm.PDJSillyLabel9Click(
  Sender: TObject);
begin
  Panel3.Visible := False;
end;
procedure TReadingComputeLateBillsForm.PDJSillyLabel8Click(Sender: TObject);
Var

 TotalConsumption     : Integer    ;
 AveCons              : Integer    ;
 LastCons             : Integer    ;

 MonthCount,YearCount : Word       ;
 MonthStr             : String[2]  ;
 YearStr              : String[4]  ;
 BillMonth            : String[4]  ;

 BMMonth              : String[2]  ;
 BMYear               : String[4]  ;
 BMMonVal,BMYearVal   : Word       ;

 NumOfMon             : Word       ;

 Check                : Integer    ;
 I                    : Integer    ;

 PreviousDate         : String[10] ;
 PresentDate          : String[10] ;
 PresRead             : Integer    ;
 PrevRead             : Integer    ;
 IBillMonth           : Integer    ;
 DaysFactor           : Real       ;
 Days                 : Integer    ;
 LLine                : Currency   ;
 VatableAmount        : Currency   ;
 VAT12, VAT10         : Currency   ;
 DBKwhr               : Real       ;
 DBKW                 : Real       ;
 WithDB               : Boolean    ;
 DiffBillVAT          : Currency   ;
 SCLD                 : Currency   ;

Label Compute;

begin

  With BillingData do
  begin
  PresentDate       := '';
  PreviousDate      := '';
  MonthStr          := '';
  YearStr           := '';

  BMMonth           := '';
  BMYear            := '';

  Val(NumberOfMonths.Text,NumOfMon,Check);                 // number of split months

  Val(Copy(SBillMonth.text,1,2),MonthCount,Check);         // get month counter for bill month
  Val(Copy(SBillMonth.text,3,2),YearCount,Check);          // get year counter for bill month

  PreviousDate  := StartReadingDate.Text;

  BillMonth := SBillMonth.Text;
  Val(SStartReading.Text,PrevRead,Check);

  Try
   TotalConsumption := StrToInt(SEndReading.Text) - StrToInt(SStartReading.Text);
  except
   Raise;
   SStartReading.SetFocus;
  end;

  AveCons  := TotalConsumption div NumOfMon;

  LastCons := TotalConsumption - (AveCons * (NumOfMon-1));

  For I := 1 to NumOfMon do
   begin

      With BillingData do
        begin

          Val(Copy(PreviousDate,1,2),BMMonVal,Check);     // Reading Date Month
          Val(Copy(PreviousDate,7,4),BMYearVal,Check);    // Reading Date Year

          Inc(BMMonVal);

          If BMMonVal > 12 then
          begin
          BMMonVal := 1;
          Inc(BMYearVal);
          end;

          Str(BMMonVal,BMMonth);
          Str(BMYearVal,BMYear);

          PresentDate := JustStr(BMMonth,'0',2,1)+'/'+Copy(PreviousDate,4,2)+'/'+JustStr(BMYear,'0',4,1);

          If AveConsumption.Text = '' then
          begin
            PresRead   := PrevRead + AveCons;
            If I = NumOfMon then PresRead := PrevRead + LastCons;
          end
          else
          begin
            PresRead := PrevRead;
            Val(AveConsumption.Text,AveCons,Check);
            LastCons := AveCons;
          end;

          Bill.Append;

          BillCode.Text                        := MasterCode.Text;
          BillArea.Text                        := MasterArea.Text;
          BillBook.Text                        := MasterBook.Text;
          BillSequence.Text                    := MasterSequence.Text;
          BillAccountNumber.Text               := MasterAccountNumber.Text;
          BillName.Text                        := MasterName.Text;
          BillAddress.Text                     := MasterAddress.Text;
          BillRateCode.Text                    := MasterRateCode.Text;
          BillVATDisc.AsFloat                  := MasterVATDisc.AsFloat;
          BillMultiplier.Text                  := MasterMultiplier.Text;
          BillSerial.Text                      := MasterSerial.Text;

          BillPreviousReadingDate.Text         := PreviousDate;
          BillPresentReadingDate.Text          := PresentDate;

          BillPresentReadingKWH.AsInteger      := PresRead;
          BillPreviousReadingKWH.AsInteger     := PrevRead;

          BillDiff.AsInteger                   := AveCons;

          If I = NumOfMon then
          BillDiff.AsInteger                   := LastCons;

          BillDemand.Text                      := DemandCons.Text;
          BillKilowattUsed.Text                := DemandCons.Text;
          BillFlatRateWattage.Text             := MasterFlatRateWattage.Text;

          If AveConsumption.Text <> '' then
          BillFeedBackCode.Text                := 'A' else
          BillFeedBackCode.Text                := '';

          BillTransformerRental.Text           := MasterTransformerRental.Text;
          BillStatusCode.Text                  := '2';
          BillBillMonth.Text                   := BillMonth;

          if (MasterRateCode.Text = 'S') then
          begin
          BillKilowattHour.AsCurrency := MasterKilowattHour.AsCurrency;
          end;

          MRate.Close;
          MRate.SQL.Clear;
          MRate.SQL.Add('select * from meterrate');
          MRate.SQL.Add('    where mbillmonth = :billmonth');
          MRate.ParamByName('billmonth').Text := BillMonth;
          MRate.Open;

          if MRateWRSw.Text = '0' then
          MRate.FilterSQL := 'Ratecode = '+QuotedStr(BillRateCode.Text) else
          MRate.FilterSQL := 'WRatecode = '+QuotedStr(BillWRateCode.Text);

          If MRate.IsEmpty then
          begin
            MessageDlg('Rate Record not found ....'+#13+#10+
                       'Bill Month '+BillMonth+#13+#10+
                       'Consumer Type '+BillRateCode.Text, mtError, [mbOK], 0);
            exit;
          end;

          If (Bill.State = dsEdit) or (Bill.State = dsInsert) then Bill.Post;
          Bill.Edit;

          If BillMultiplier.AsCurrency = 0 then BillMultiplier.AsCurrency := 1;
          If BillCMMultiplier.AsCurrency = 0 then BillCMMultiplier.AsCurrency := 1;

          BillKilowattHour.AsCurrency := (BillDiff.AsCurrency * BillMultiplier.AsCurrency);

          KWHR := BillKilowattHour.AsCurrency;

          //Remove averaging of 15 KWHr reading============
          //===============================================
          {If BillRateCode.Text = 'R' then
            begin
              If (BillKilowattHour.AsCurrency >= 0) and (BillKilowattHour.AsCurrency <= 15) then
              KWHR := 15;
            end;}

            If (BillRateCode.Text = 'R') OR (BillRateCode.Text = 'L') then
            begin
              If (BillKilowattHour.AsCurrency < 0)  then
              KWHR := 0;
            end;
          //===============================================

          WithDB := False;
          DBKwhr := 0;
          DBKW   := 0;
          If MRateDiffBillApply.AsInteger = 1 then
             begin
               DiffCons.ParamByName('Code').Text      := BillCode.Text;
               DiffCons.ParamByName('BillMonth').Text := MRateDiffBillMonth.Text;
               DiffCons.Open;

               If not DiffCons.IsEmpty then
                 begin
                    WithDB := True;
                    DBKwhr := DiffConskilowatthour.AsFloat;
                    DBKW   := DiffConskilowattused.AsFloat;
                 end;
               DiffCons.Close;
             end;

          BillGenSysCharge.AsCurrency           := (KWHR * MRateGenSysRate.AsCurrency);
          BillHostCommCharge.AsCurrency         := (KWHR * MRateHostCommRate.AsCurrency);
          BillForexCharge.AsCurrency            := (KWHR * MRateForexRate.AsCurrency);
          BillTCDemandCharge.AsCurrency         := (BillKilowattUsed.AsCurrency * MRateTCDemandRate.AsCurrency);
          BillTCTransSystemCharge.AsCurrency    := (KWHR * MRateTCSystemRate.AsCurrency);
          BillSystemLossCharge.AsCurrency       := (KWHR * MRateSystemLossRate.AsCurrency);
          BillDCDemandCharge.AsCurrency         := (BillKilowattUsed.AsCurrency * MRateDCDemandRate.AsCurrency);
          BillDCDistributionCharge.AsCurrency   := (KWHR * MRateDCSystemRate.AsCurrency);
          BillSCRetCustCharge.AsCurrency        := (MRateSCRetailCustRate.AsCurrency);
          BillSCSupplySysCharge.AsCurrency      := (KWHR * MRateSCSupplySysRate.AsCurrency);
          BillMCRetailCustCharge.AsCurrency     := (MRateMCRetailCustRate.AsCurrency);
          BillMCSystemCharge.AsCurrency         := (KWHR * MRateMCSysRate.AsCurrency);
          BillMCC.AsCurrency                    := (KWHR * MRateMCC.AsCurrency);

          {RpTaxQuery.Close;
          RpTaxQuery.ParamByName('BillMonth').Text :=  Edit3.Text;
          RpTaxQuery.ParamByName('area').Text      :=  BillingData.BillArea.Text;
          RpTaxQuery.Open;

          BillRPTax.AsCurrency                  := 0;
          BillRateOrder.text                    := RpTaxQueryRateOrder.Text;

          if not RpTaxQuery.IsEmpty then
          begin
            BillRPTax.AsCurrency                := RoundOff(KWHR * RpTaxQueryRateAmnt.AsCurrency);
          end;

          RpTaxQuery.Close;   }


          If WithDB then
            begin
              BillDiffBillPerKwhr.AsCurrency    := (DBKwhr * MRateDiffBillPerKwhr.AsCurrency) / 10;
              BillDiffBillPerKW.AsCurrency      := (DBKW * MRateDIffBillPerKW.AsCurrency) / 10;
              BillDiffBillPerCust.AsCurrency    := (MRateDiffBillPerCust.AsCurrency) / 10;
            end;

          BillUCNPCStrandedDebts.AsCurrency     := (KWHR * MRateUCNPCStrandedDebtsRate.AsCurrency);
          BillUCNPCStrandedContCost.AsCurrency  := (KWHR * MRateUCNPCStrandedContCostRate.AsCurrency);
          BillUCDUStrandedContCost.AsCurrency   := (KWHR * MRateUCDUStrandedContCostRate.AsCurrency);
          BillUCME.AsCurrency                   := (KWHR * MRateUCMERate.AsCurrency);
          BillUCEqTaxesAndRoyalties.AsCurrency  := (KWHR * MRateUCEqTaxesAndRoyaltiesRate.AsCurrency);
          BillUCEC.AsCurrency                   := (KWHR * MRateUCECRate.AsCurrency);
          BillUCCrossSubRemoval.AsCurrency      := (KWHR * MRateUCCrossSubsidyRemovalRate.AsCurrency);
          BillICCrossSubsidyCharge.AsCurrency   := (KWHR * MRateICCrossSubsidyRate.AsCurrency);
          BillPowerActRateRed.AsCurrency        := (KWHR * MRatePARARate.AsCurrency);
          BillLifelineDiscSubs.AsCurrency       := (KWHR * MRateLifelineSubsidyRate.AsCurrency);
          BillLoanCondo.AsCurrency              := (KWHR * MRateLoanCondo.AsCurrency);
          BillFlatRateWattage.AsCurrency        := (KWHR * MRateGram.AsCurrency);
          BillLCCustMo.AsFloat                  := (MRateLCCustMo.AsFloat);
          BillPrevYearAdjPowerCost.AsCurrency   := (KWHR * MRatePrevYearAdjPowerCost.AsCurrency);
          BillSysLossUnderRecov.AsCurrency      := (KWHR * MRateSysLossUnderRecov.AsCurrency);

          BillTransSysAncRefund.AsCurrency      := RoundOff(KWHR * MRateTransSysAncRefund.AsCurrency);
          BillTransDemAncRefund.AsCurrency      := RoundOff(BillKilowattUsed.AsCurrency * MRateTransDemAncRefund.AsCurrency);
          BillVATTransAncRefund.AsCurrency      := RoundOff(KWHR * MRateVATTransAncRefund.AsCurrency);

          VATGenCo                              := (KWHR * MRateVATGenco.AsCurrency);
          VATTransCo                            := (KWHR * MRateVATTransco.AsCurrency);
          VATSystemLoss                         := (KWHR * MRateVATSystemLoss.AsCurrency);

          TotalPower := BillGenSysCharge.AsCurrency +
                        BillHostCommCharge.AsCurrency +
                        BillForexCharge.AsCurrency +
                        BillTCDemandCharge.AsCurrency +
                        BillTCTransSystemCharge.AsCurrency +
                        BillSystemLossCharge.AsCurrency +
                        BillDCDemandCharge.AsCurrency +
                        BillDCDistributionCharge.AsCurrency +
                        BillSCSupplySysCharge.AsCurrency +
                        BillMCSystemCharge.AsCurrency +
                        BillMCRetailCustCharge.AsCurrency +
                        BillTransSysAncRefund.AsCurrency+
                        BillTransDemAncRefund.AsCurrency;

          SCLD := 1;
          If (BillRateCode.Text = 'R') or
             (BillRateCode.Text = 'X') then
           begin
             If KWHR <= 15                    then
               begin
                 BillLifelineDiscSubs.AsCurrency := roundoff(TotalPower * -0.50);
                 SCLD := 0.50;
               end;

             If (KWHR >  15) and (KWHR <= 16) then
               begin
                 BillLifelineDiscSubs.AsCurrency := roundoff(TotalPower * -0.40);
                 SCLD := 0.60;
               end;

             If (KWHR >  16) and (KWHR <= 17) then
               begin
                 BillLifelineDiscSubs.AsCurrency := roundoff(TotalPower * -0.30);
                 SCLD := 0.70;
               end;

             If (KWHR >  17) and (KWHR <= 18) then
               begin
                 BillLifelineDiscSubs.AsCurrency := roundoff(TotalPower * -0.20);
                 SCLD := 0.80;
               end;

             If (KWHR >  18) and (KWHR <= 19) then
               begin
                 BillLifelineDiscSubs.AsCurrency := roundoff(TotalPower * -0.10);
                 SCLD := 0.90;
               end;

             If (KWHR >  19) and (KWHR <= 20) then
               begin
                 BillLifelineDiscSubs.AsCurrency := roundoff(TotalPower * -0.05);
                 SCLD := 0.95
               end;
           end;

         If (MRateSCDiscApply.Text = '1') and (BillKilowattHour.AsFloat <= MRateSCDiscKWHR.AsFloat) then
          begin

            SCRead.ParamByName('scode').Text := BillCode.Text;
            SCRead.ParamByName('presentreadingdate').AsDate := BillPresentReadingDate.AsDateTime;
            SCRead.Open;

            If not SCRead.IsEmpty then
              begin
                BillSCAmt4Disc.AsCurrency := (BillGenSysCharge.AsCurrency +
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
                                              BillMCSystemCharge.AsCurrency +
                                              BillLoanCondo.AsCurrency) * SCLD;

                BillSCDisc.AsCurrency     := (BillSCAmt4Disc.AsCurrency * (MRateSCDiscPercent.AsCurrency/100)) * -1;
              end;
           SCRead.Close;
          end;

          Days := DaysBetween(StrToDate('11/01/2005'),BillPresentReadingDate.AsDateTime) + 1;

          DaysFactor := 0;
          if Days > 0 then
          DaysFactor := Days / 30;

          LLine := BillLifelineDiscSubs.AsCurrency;
          If LLine < 0 then LLine := 0;

          If BillBillMonth.Text = '1105' then
          begin
          BillVAT.AsCurrency :=  (((BillForexCharge.AsCurrency +
                                    BillSystemLossCharge.AsCurrency +
                                    BillTCDemandCharge.AsCurrency +
                                    BillTCTransSystemCharge.AsCurrency+
                                    BillDCDemandCharge.AsCurrency +
                                    BillDCDistributionCharge.AsCurrency +
                                    BillSCRetCustCharge.AsCurrency +
                                    BillSCSupplySysCharge.AsCurrency +
                                    BillMCRetailCustCharge.AsCurrency +
                                    BillMCSystemCharge.AsCurrency +
                                    BillICCrossSubsidyCharge.AsCurrency +
                                    BillPowerActRateRed.AsCurrency +
                                    LLine+
                                    BillLoanCondo.AsCurrency +
                                    BillLCCustMo.AsCurrency) *
                                    (MRateVAT.AsCurrency / 100)) * DaysFactor);
          end
          else
          If BillBillMonth.Text <> '0206' then
          begin
              DiffBillVAT :=  ( BillDiffBillPerKwhr.AsCurrency +
                                BillDiffBillPerKW.AsCurrency +
                                BillDiffBillPerCust.AsCurrency ) * ( MRateVAT.AsCurrency / 100 );

              BillVAT.AsCurrency :=  ((( BillForexCharge.AsCurrency+
                                         BillDCDemandCharge.AsCurrency+
                                         BillDCDistributionCharge.AsCurrency+
                                         BillSCRetCustCharge.AsCurrency+
                                         BillSCSupplySysCharge.AsCurrency+
                                         BillMCRetailCustCharge.AsCurrency+
                                         BillMCSystemCharge.AsCurrency+
                                         BillICCrossSubsidyCharge.AsCurrency+
                                         BillLifelineDiscSubs.AsCurrency+
                                         BillSCDisc.AsCurrency+
                                         BillLoanCondo.AsCurrency +
                                         BillLCCustMo.AsCurrency) *
                                        (MRateVAT.AsCurrency / 100))) +
                                         VATGenCO +
                                         VATTransCO +
                                         VATSystemLoss +
                                         DiffBillVAT;

              BillVATGenCO.AsCurrency           := VATGenCO;
              BillVATTransCO.AsCurrency         := VATTransCo;
              BillVATSystemLossGenCO.AsCurrency := VATSystemLoss;

              BillVATDist.AsCurrency            := BillVAT.AsCurrency - (VATGenCO+
                                                                         VATTransCo+
                                                                         VATSystemLoss);

          end
          else
          begin

              VAT12 := 0;
              VAT10 := 0;
              If BillLifelineDiscSubs.AsCurrency > 0 then
              begin
              VatableAmount :=  ( BillForexCharge.AsCurrency+
                                  BillDCDemandCharge.AsCurrency+
                                  BillDCDistributionCharge.AsCurrency+
                                  BillSCRetCustCharge.AsCurrency+
                                  BillSCSupplySysCharge.AsCurrency+
                                  BillMCRetailCustCharge.AsCurrency+
                                  BillMCSystemCharge.AsCurrency+
                                  BillICCrossSubsidyCharge.AsCurrency+
                                  BillPowerActRateRed.AsCurrency+
                                  BillLifelineDiscSubs.AsCurrency+
                                  BillLoanCondo.AsCurrency +
                                  BillLCCustMo.AsCurrency );

              VAT12         := ((VatableAmount / 30) * 18) * 0.12;
              VAT10         := ((VatableAmount / 30) * 12) * 0.10;
              end;

              BillVATGenCO.AsCurrency           := VATGenCO;
              BillVATTransCO.AsCurrency         := VATTransCo;
              BillVATSystemLossGenCO.AsCurrency := VATSystemLoss;
              BillVATDist.AsCurrency            := VAT10 + VAT12;
              BillVAT.AsCurrency                := VATGenCO +
                                                   VATTransCO +
                                                   VATSystemLoss +
                                                   VAT10 +
                                                   VAT12;

          end;

          If BillVATDisc.AsFloat > 0 then
          begin
            BillVATDistDiscAmt.AsFloat          := (BillVATDist.AsFloat * (BillVATDisc.AsFloat / 100) * -1);
            BillVATGenCoDiscAmt.AsFloat         := 0;
            BillVATTransCoDiscAmt.AsFloat       := 0;
            BillVATSystemLossDiscAmt.AsFloat    := 0;
            BillVATDiscAmt.AsFloat              := BillVATDistDiscAmt.AsFloat+
                                                   BillVATGenCoDiscAmt.AsFloat+
                                                   BillVATTransCoDiscAmt.AsFloat+
                                                   BillVATSystemLossDiscAmt.AsFloat;

          end;

          //======================
          //======================
          BillVATDiscAmt.AsFloat   := 0;

          ZeroVAT            := TMyQuery.Create(ZeroVAT);
          ZeroVAT.Connection := BillingData.MyConnection1;
          ZeroVAT.SQL.Clear;

          ZeroVAT.SQL.Add('Select accountnumber from ZeroVat where code = :code and dateentered <= :dateentered');
          ZeroVAT.ParamByName('Code').Text        := BillCode.Text;
          ZeroVAT.ParamByName('DateEntered').AsDate := BillPresentReadingDate.AsDateTime;
          ZeroVAT.Open;

              if not ZeroVAT.IsEmpty then
              begin
                BillVATDistDiscAmt.AsFloat          := BillVATDist.AsFloat * -1;
                BillVATGenCoDiscAmt.AsFloat         := BillVATGenCO.AsFloat * -1;
                BillVATTransCoDiscAmt.AsFloat       := BillVATTransCO.AsFloat * -1;
                BillVATSystemLossDiscAmt.AsFloat    := BillVATSystemLossGenCO.AsFloat * -1;

                BillVATDiscAmt.AsFloat              := BillVATDistDiscAmt.AsFloat+
                                                       BillVATGenCoDiscAmt.AsFloat+
                                                       BillVATTransCoDiscAmt.AsFloat+
                                                       BillVATSystemLossDiscAmt.AsFloat;


              end;
             //=================================
             //=================================

          BillTotalBill.AsCurrency              :=  (BillGenSysCharge.AsCurrency +
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
                                                     BillMCSystemCharge.AsCurrency +
                                                     BillUCNPCStrandedDebts.AsCurrency +
                                                     BillUCNPCStrandedContCost.AsCurrency +
                                                     BillUCDUStrandedContCost.AsCurrency +
                                                     BillUCME.AsCurrency +
                                                     BillUCEqTaxesAndRoyalties.AsCurrency +
                                                     BillUCEC.AsCurrency +
                                                     BillUCCrossSubRemoval.AsCurrency +
                                                     BillICCrossSubsidyCharge.AsCurrency +
                                                     BillPowerActRateRed.AsCurrency +
                                                     BillLifelineDiscSubs.AsCurrency +
                                                     BillLoanCondo.AsCurrency +
                                                     BillLCCustMo.AsCurrency +
                                                     BillVAT.AsCurrency +
                                                     //==========================
                                                     //BillVATDiscAmt.AsCurrency +
                                                     //==========================
                                                     BillOCAmount1.AsCurrency +
                                                     BillOCAmount2.AsCurrency +
                                                     BillOCAmount3.AsCurrency +
                                                     BillTransformerRental.AsCurrency +
                                                     BillPrevYearAdjPowerCost.AsCurrency +
                                                     BillSysLossUnderRecov.AsCurrency +
                                                     BillFlatRateWattage.AsCurrency +
                                                     BillMCC.AsCurrency +
                                                     BillRPTax.AsCurrency +
                                                     BillDiffBillPerKwhr.AsCurrency +
                                                     BillDiffBillPerKW.AsCurrency +
                                                     BillDiffBillPerCust.AsCurrency +
                                                     BillTransSysAncRefund.AsCurrency+
                                                     BillTransDemAncRefund.AsCurrency+
                                                     BillVATTransAncRefund.AsCurrency);

         

          BillreferenceAtmNo.Text := referenceNo(BillCode.Text,FormatDateTime('YYMMDD',BillPresentReadingDate.AsDateTime),BillTotalBill.AsFloat);

          Bill.Post;

          PreviousDate := PresentDate;
          PrevRead     := PresRead;

          Inc(MonthCount);

          If MonthCount > 12 then
           begin
            MonthCount := 1;
            Inc(YearCount);
           end;

          Str(MonthCount,MonthStr);
          Str(YearCount,YearStr);

          BillMonth := JustStr(MonthStr,'0',2,1) + JustStr(YearStr,'0',2,1)

        end;
   end;
  end;
MessageDlg('Batch Split Billing process done.', mtInformation, [mbOK], 0);
Label16.Caption := 'Records = '+IntToStr(BillingData.Bill.RecordCount);
BillingData.Master.Close;
end;



procedure TReadingComputeLateBillsForm.StartReadingDateKeyPress(
  Sender: TObject; var Key: Char);
begin
 If key = #13 then NumberOfMonths.SetFocus;
end;

procedure TReadingComputeLateBillsForm.FormShow(Sender: TObject);
begin
  With BillMasterForm do
   begin
    DBGrid8.DataSource  := nil;
    DataSource1.DataSet := nil;
   end;
  Label16.Caption := 'Records = '+IntToStr(BillingData.Bill.RecordCount);
end;

procedure TReadingComputeLateBillsForm.NumberOfMonthsKeyPress(
  Sender: TObject; var Key: Char);
begin
  If Key = #13 then AveConsumption.SetFocus;
end;

procedure TReadingComputeLateBillsForm.AveConsumptionKeyPress(
  Sender: TObject; var Key: Char);
begin
  If Key = #13 then PDJSillyLabel8Click(self);
end;

procedure TReadingComputeLateBillsForm.PDJSillyLabel2Click(
  Sender: TObject);

Procedure PrintHeading;
begin
 With BillingData do
 begin
  Write(Lst,#18);
  Writeln(lst,#27 + 'P'+'PAGE # '+IntToStr(PageCount));
  Writeln(lst,#27 + '4'+'BILLING CHECK LIST - LATE BILLS'+#27+'5');
  Writeln(lst,'AREA/BOOK/ADDRESS : '+VicinityArea.Text+'/'+ VicinityBook.Text+'-'+VicinityAddress.Text);
  Writeln(lst,'--------------------------------------------------------------------------------');
  Writeln(lst,'|  Acct #  |   Consumer Name    |T|PresRead|PrevRead|    KWHR|     Amount | BM |');
  Writeln(lst,'--------------------------------------------------------------------------------');
 end;
end;

begin
  BillingData.Bill.Refresh;
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

  BillingStatusUpdateForm.Caption := 'BILLING CHECK LIST';
  BillingStatusUpdateForm.Label1.Caption := 'Printing Check List .....';
  BillingStatusUpdateForm.Show;

  BillingStatusUpdateForm.ProgressBar1.Min := 0;
  BillingStatusUpdateForm.ProgressBar1.Max := BillingData.Bill.RecordCount;

  BillingStatusUpdateForm.ProgressBar1.Position := 0;

  BillingData.Bill.First;

  With BillingData do
  Repeat

    BillingStatusUpdateForm.ProgressBar1.StepBy(1);
    Application.ProcessMessages;

    If HeadingSW then
      begin
       PrintHeading;
       HeadingSW := False;
      end;

    If BillKilowattUsed.AsCurrency = 0 then
    Writeln(lst,'|',JustStr(BillAccountNumber.Text,' ',10,0)     ,'|',
                    JustStr(BillName.Text,' ',20,0)              ,'|',
                    JustStr(BillRateCode.Text,' ',1,0)           ,'|',
                    BillPresentReadingKWH.AsCurrency:8:1         ,'|',
                    BillPreviousReadingKWH.AsCurrency:8:1        ,'|',
                    BillKilowattHour.AsCurrency:8:1              ,'|',
                    Format(BillTotalBill.AsCurrency,'###,###.##'),'|',
                    JustStr(BillBillMonth.Text,' ',4,0)          ,'|');
    Inc(TotalConsumer);

    Inc(LineCount);
    If (LineCount = 50) and not Bill.eof then
     begin
       LineCount := 0;
       Inc(PageCount);
       Writeln(lst,'--------------------------------------------------------------------------------');
       Write(Lst,#12);
       HeadingSW := True;
     end; { end if Line Count }

   Bill.Next;

  Until (Bill.Eof);

  Writeln(lst,'--------------------------------------------------------------------------------');
  Writeln(Lst,'TOTAL CONSUMERS : '+IntToStr(TotalConsumer));
  Write(lst,#18,#12);

  BillingStatusUpdateForm.Close;
  CloseFile(Lst);

  ShowMessage('Done.');
end;

procedure TReadingComputeLateBillsForm.sl6Click(Sender: TObject);
begin
  Close;
end;

procedure TReadingComputeLateBillsForm.PDJSillyLabel14Click(
  Sender: TObject);
Var
BNStr : String[10];
BNVal : Integer;

begin
BNVal := StrToInt(IntroForm.UsersBillNumber.Text);
Gauge2.Progress := 0;
Gauge2.MaxValue := BillingData.Bill.RecordCount;

With BillingData do
 begin
  StartPrintOEBR := '';
  EndPrintOEBR   := '';
  Bill.First;
  While not Bill.Eof do
   begin
   Gauge2.AddProgress(1);
   Application.ProcessMessages;
    If BillOEBRNumber.Text = '' then
     begin
      Inc(BNVal);
      BNStr := JustStr(IntToStr(BNVal),'0',8,1);
      Bill.Edit;
      BillOEBRNumber.Text := IntroForm.UsersBillCode.Text + BNStr;
      If StartPrintOEBR = '' then StartPrintOEBR := BillOEBRNumber.Text;
      IntroForm.Users.Edit;
      IntroForm.UsersBillNumber.Text := IntToStr(BNVal);
      IntroForm.Users.Post;
      Bill.Post;
     end;
    Bill.Next;
   end;
 EndPrintOEBR := BillOEBRNumber.Text;
end;
BillingData.Bill.First;
MessageDlg('Assign Bill Number done....', mtInformation, [mbOK], 0);
end;

procedure TReadingComputeLateBillsForm.DsFancyButton1Click(
  Sender: TObject);
begin
  If (IntroForm.UsersBillCode.Text = '') or
     (IntroForm.Users.Active = False) then
    begin
      MessageDlg('You are not authorized to bill....', mtError, [mbOK], 0);
      exit;
    end;

  AssignBillNumberPanel.Left    := 74;
  AssignBillNumberPanel.Top     := 75;
  IntroForm.Users.Refresh; //RefreshRecord;
  St1.Caption                   := IntroForm.UsersBillCode.Text;
  St2.Caption                   := IntroForm.UsersUserName.Text;
  St3.Caption                   := IntroForm.UsersBillNumber.Text;
  St4.Caption                   := BillingData.BillArea.text + ' / ' + BillingData.BillBook.text;
  AssignBillNumberPanel.Visible := True;
  AssignBillNumberPanel.BringToFront;
end;

procedure TReadingComputeLateBillsForm.PDJSillyLabel15Click(
  Sender: TObject);
begin
  AssignBillNumberPanel.Visible := False;
end;

end.
