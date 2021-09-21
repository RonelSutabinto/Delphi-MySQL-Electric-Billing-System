unit BillMasterCurrentBill;

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
  Mask,
  DBCtrls,
  ExtCtrls,
  Grids,
  DBGrids,
  Buttons,
  PDJSillyLabel,
  PDJRotoLabel,
  DB,
  MemDS,
  DBAccess,
  MyAccess,
  CRGrid,
  DsFancyButton, CRDBGrid1, DBGrid1;

type
  TCurrentBillingForm = class(TForm)
    Panel3: TPanel;
    Label22: TLabel;
    Label26: TLabel;
    Panel4: TPanel;
    Label23: TLabel;
    BillNumber: TDBEdit;
    BillMonth: TDBEdit;
    Label12: TLabel;
    Label13: TLabel;
    Panel2: TPanel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    ConsumerName: TDBText;
    Address: TDBText;
    MeterBrand: TDBText;
    Serial: TDBText;
    ReconDate: TDBEdit;
    DiscoDate: TDBEdit;
    PreviousDate: TDBEdit;
    PresentDate: TDBEdit;
    Rate: TDBText;
    Mult: TDBText;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    PDJSillyLabel1: TButton;
    PDJSillyLabel2: TButton;
    TotalBill: TDBEdit;
    Label1: TLabel;
    GroupBox2: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Bevel14: TBevel;
    Bevel15: TBevel;
    Bevel25: TBevel;
    Bevel26: TBevel;
    Bevel27: TBevel;
    Bevel28: TBevel;
    CMPres: TDBEdit;
    CMPrev: TDBEdit;
    CMKWH: TDBEdit;
    CMDemand: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    GroupBox1: TGroupBox;
    Label24: TLabel;
    Label25: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DemandLabel: TLabel;
    PresRead: TDBEdit;
    PrevRead: TDBEdit;
    Diff: TDBEdit;
    KWH: TDBEdit;
    Demand: TDBEdit;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Label8: TLabel;
    AccountNumber: TDBText;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    Label21: TLabel;
    Label27: TLabel;
    Bevel16: TBevel;
    Panel1: TPanel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    EditMCRetailCustCharge: TDBEdit;
    EditMCSystemCharge: TDBEdit;
    EditUCNPCStrandedDebts: TDBEdit;
    EditUCNPCStrandedContCost: TDBEdit;
    EditUCDUStrandedContCost: TDBEdit;
    EditUCME: TDBEdit;
    EditLoanCondonation: TDBEdit;
    EditUCEC: TDBEdit;
    EditUCCrossSubRemoval: TDBEdit;
    EditICCrossSubsidyCharge: TDBEdit;
    EditPowerActRateRed: TDBEdit;
    EditLifelineDiscSubs: TDBEdit;
    EditTransformerRental: TDBEdit;
    EditOCAmount: TDBEdit;
    EditOCAmount2: TDBEdit;
    EditOCAmount3: TDBEdit;
    EditGenSysCharge: TDBEdit;
    EditHostCommCharge: TDBEdit;
    EditForexCharge: TDBEdit;
    EditTCDemandCharge: TDBEdit;
    EditTCTransSystemCharge: TDBEdit;
    EditSystemLossCharge: TDBEdit;
    EditDCDemandCharge: TDBEdit;
    EditDCDistributionCharge: TDBEdit;
    EditSCRetCustCharge: TDBEdit;
    EditSCSupplySysCharge: TDBEdit;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    EditLCCustMo: TDBEdit;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    EditSysLossUnderRecov: TDBEdit;
    EditPrevYearAdjPowerCost: TDBEdit;
    EditVAT: TDBEdit;
    EditVATDist: TDBEdit;
    EditVATGenCO: TDBEdit;
    EditVATTransco: TDBEdit;
    EditVATSystemLossGenCO: TDBEdit;
    EditOCCode1: TDBEdit;
    EditOCCode2: TDBEdit;
    EditOCCode3: TDBEdit;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    PDJSillyLabel3: TButton;
    PDJSillyLabel4: TButton;
    BillHist: TMyQuery;
    BillHistBillMonth: TStringField;
    BillHistOEBRNumber: TStringField;
    DSBillHist: TDataSource;
    BillHistentry: TIntegerField;
    BillHistCode: TFloatField;
    BillHistArea: TStringField;
    BillHistBook: TStringField;
    BillHistSequence: TStringField;
    BillHistAccountNumber: TStringField;
    BillHistName: TStringField;
    BillHistAddress: TStringField;
    BillHistRateCode: TStringField;
    BillHistSerial: TStringField;
    BillHistMultiplier: TFloatField;
    BillHistPreviousReadingDate: TDateField;
    BillHistPresentReadingDate: TDateField;
    BillHistPreviousReadingKWH: TFloatField;
    BillHistPresentReadingKWH: TFloatField;
    BillHistDiff: TFloatField;
    BillHistDemand: TFloatField;
    BillHistFlatRateWattage: TFloatField;
    BillHistFeedBackCode: TStringField;
    BillHistCM: TStringField;
    BillHistCMMultiplier: TFloatField;
    BillHistCMPreviousReadingKWH: TFloatField;
    BillHistCMPresentReadingKWH: TFloatField;
    BillHistCMKilowattHour: TFloatField;
    BillHistCMDemand: TFloatField;
    BillHistKilowattHour: TFloatField;
    BillHistKilowattUsed: TFloatField;
    BillHistGenSysCharge: TFloatField;
    BillHistHostCommCharge: TFloatField;
    BillHistForexCharge: TFloatField;
    BillHistTCDemandCharge: TFloatField;
    BillHistTCTransSystemCharge: TFloatField;
    BillHistSystemLossCharge: TFloatField;
    BillHistDCDemandCharge: TFloatField;
    BillHistDCDistributionCharge: TFloatField;
    BillHistSCRetCustCharge: TFloatField;
    BillHistSCSupplySysCharge: TFloatField;
    BillHistMCRetailCustCharge: TFloatField;
    BillHistMCSystemCharge: TFloatField;
    BillHistUCNPCStrandedDebts: TFloatField;
    BillHistUCNPCStrandedContCost: TFloatField;
    BillHistUCDUStrandedContCost: TFloatField;
    BillHistUCME: TFloatField;
    BillHistUCEqTaxesAndRoyalties: TFloatField;
    BillHistUCEC: TFloatField;
    BillHistUCCrossSubRemoval: TFloatField;
    BillHistICCrossSubsidyCharge: TFloatField;
    BillHistPowerActRateRed: TFloatField;
    BillHistLifelineDiscSubs: TFloatField;
    BillHistLoanCondo: TFloatField;
    BillHistTransformerRental: TFloatField;
    BillHistOCCode1: TStringField;
    BillHistOCAmount1: TFloatField;
    BillHistOCMo1: TFloatField;
    BillHistOCTotal1: TFloatField;
    BillHistOCCode2: TStringField;
    BillHistOCAmount2: TFloatField;
    BillHistOCMo2: TFloatField;
    BillHistOCTotal2: TFloatField;
    BillHistOCCode3: TStringField;
    BillHistOCAmount3: TFloatField;
    BillHistOCMo3: TFloatField;
    BillHistOCTotal3: TFloatField;
    BillHistTotalBill: TFloatField;
    BillHistBillNumber: TStringField;
    BillHistBillDate: TDateField;
    BillHiststatuscode: TStringField;
    BillHistLCCustMo: TFloatField;
    BillHistPrevYearAdjPowerCost: TFloatField;
    BillHistSysLossUnderRecov: TFloatField;
    BillHistVATDist: TFloatField;
    BillHistVATGenCO: TFloatField;
    BillHistVATTransCO: TFloatField;
    BillHistVATSystemLossGenCO: TFloatField;
    BillHistVATSystemLossTransCO: TFloatField;
    BillHistVAT: TFloatField;
    Bevel9: TBevel;
    Bevel8: TBevel;
    Bevel7: TBevel;
    Bevel6: TBevel;
    Bevel5: TBevel;
    Bevel4: TBevel;
    Bevel3: TBevel;
    DBGrid1: TCRDBGrid1;
    DBGrid2: TDBGrid1;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure PDJSillyLabel1Click(Sender: TObject);
    procedure PDJSillyLabel2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PDJSillyLabel3Click(Sender: TObject);
    procedure PDJSillyLabel4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CurrentBillingForm: TCurrentBillingForm;

implementation

uses Data, FlatRate;

{$R *.dfm}

procedure TCurrentBillingForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   BillHist.Close;
   Action := caFree;
   CurrentBillingForm := Nil;
end;

procedure TCurrentBillingForm.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);

Var
TotalKWH : Currency;

begin

  Key := upcase(key);

  Case Key of
  '+' : begin
         BillingData.FlatRate.Append;
         BillingData.FlatRateCode.Text := BillingData.MasterCode.Text;
         With TFlatRateForm.Create(Application) do show;
        end;
  #13 : begin
         BillingData.FlatRate.Edit;
         With TFlatRateForm.Create(Application) do show;
        end;
  'C' : begin
           WIth BillingData do
            begin
             FlatRate.First;
             TotalKwh := 0;
              While not FlatRate.Eof do
               begin
                 TotalKWH := TotalKWH + FlatRateTotalKilowattHour.AsCurrency;
                 FlatRate.Next;
               end;
              MasterKilowattHour.AsCurrency := TotalKWH;
            end;
        end;
  end;
end;

procedure TCurrentBillingForm.PDJSillyLabel1Click(Sender: TObject);
begin
  If (BillHist.State = dsEdit) then BillHist.Post;
  Close;
end;

procedure TCurrentBillingForm.PDJSillyLabel2Click(Sender: TObject);
begin
  BillingData.Master.Cancel;
  Close;
end;

procedure TCurrentBillingForm.FormShow(Sender: TObject);
begin
  With BillingData do
   begin
     FlatRate.FilterSQL := 'Code = '+QuotedStr(MasterCode.Text);
     FlatRate.Open;

     BillHist.Close;
     BillHist.ParamByName('code').Text := MasterCode.Text;
     BillHist.Open;
   end;
end;

procedure TCurrentBillingForm.PDJSillyLabel3Click(Sender: TObject);
begin
  Panel1.Left    := 293;
  Panel1.Top     := 19;
  Panel1.Visible := True;
end;

procedure TCurrentBillingForm.PDJSillyLabel4Click(Sender: TObject);
begin
  Panel1.Visible := False;
end;

end.
