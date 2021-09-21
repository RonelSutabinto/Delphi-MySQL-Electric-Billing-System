unit MeterRateRecord;

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
  ExtCtrls,
  StdCtrls,
  Mask,
  DBCtrls,
  Buttons,
  PDJSillyLabel,
  PDJRotoLabel,
  DsFancyButton,
  NxCollection,
  NxPageControl,
  ComCtrls;

type
  TMeterRateRecordForm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    BillMonth: TDBEdit;
    Remarks: TDBEdit;
    PDJSillyLabel1: TNxButton;
    PDJSillyLabel2: TNxButton;
    RateCode: TDBEdit;
    Label3: TLabel;
    NxLinkLabel1: TNxLinkLabel;
    NxLinkLabel2: TNxLinkLabel;
    NxLinkLabel3: TNxLinkLabel;
    NxLinkLabel4: TNxLinkLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel3: TNxHeaderPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label27: TLabel;
    Label9: TLabel;
    Label33: TLabel;
    Label35: TLabel;
    EditGenSysRate: TDBEdit;
    EditHostCommRate: TDBEdit;
    EditFOREXRate: TDBEdit;
    EditTCDemandRate: TDBEdit;
    EditTCSystemRate: TDBEdit;
    EditGram: TDBEdit;
    EditSystemLossRate: TDBEdit;
    EditPrevYearAdjPowerCost: TDBEdit;
    EditSysLossUnderRecov: TDBEdit;
    TabSheet2: TTabSheet;
    Panel4: TNxHeaderPanel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label30: TLabel;
    Label34: TLabel;
    EditDCDemandRate: TDBEdit;
    EditDCSystemRate: TDBEdit;
    EditSCRetailCustRate: TDBEdit;
    EditSCSupplySysRate: TDBEdit;
    EditMCRetailCustRate: TDBEdit;
    EditMCSysRate: TDBEdit;
    EditICCrossSubsidyRate: TDBEdit;
    EditPARARate: TDBEdit;
    EditLifelineSubsidyRate: TDBEdit;
    EditLoanCondo: TDBEdit;
    EditLCCustMo: TDBEdit;
    EditMCC: TDBEdit;
    TabSheet3: TTabSheet;
    Panel2: TNxHeaderPanel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label29: TLabel;
    Label28: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    EditUCNPCStrandedDebtsRate: TDBEdit;
    EditUCNPCStrandedContCostRate: TDBEdit;
    EditUCDUStrandedContCostRate: TDBEdit;
    EditUCMERate: TDBEdit;
    EditUCEqTaxesAndRoyaltiesRate: TDBEdit;
    EditUCECRate: TDBEdit;
    EditUCCrossSubsidyRemovalRate: TDBEdit;
    EditVAT: TDBEdit;
    EditVATGenco: TDBEdit;
    EditVATTransCo: TDBEdit;
    EditVATSystemLoss: TDBEdit;
    TabSheet4: TTabSheet;
    NxHeaderPanel1: TNxHeaderPanel;
    Label49: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    EditDiffBillMonth: TDBEdit;
    EditDiffBillRatePerKWHR: TDBEdit;
    EditDiffBillRatePerKW: TDBEdit;
    EditDiffBillPerCustomer: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PDJSillyLabel1Click(Sender: TObject);
    procedure PDJSillyLabel2Click(Sender: TObject);
    procedure EditGenSysRateKeyPress(Sender: TObject; var Key: Char);
    procedure NxLinkLabel1Click(Sender: TObject);
    procedure NxLinkLabel2Click(Sender: TObject);
    procedure NxLinkLabel3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure NxLinkLabel4Click(Sender: TObject);
    procedure DBCheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MeterRateRecordForm: TMeterRateRecordForm;

implementation

uses Data;

{$R *.dfm}

procedure TMeterRateRecordForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  MeterRateRecordForm := nil;
end;

procedure TMeterRateRecordForm.PDJSillyLabel1Click(Sender: TObject);
begin
  BillingData.MRate.Post;
  Close;
end;

procedure TMeterRateRecordForm.PDJSillyLabel2Click(Sender: TObject);
begin
  BillingData.MRate.Cancel;
  close;
end;

procedure TMeterRateRecordForm.EditGenSysRateKeyPress(Sender: TObject;
  var Key: Char);
begin
  If key = #13 then
    begin
     Perform(CM_DIALOGKEY,VK_TAB,0);
     key := #0;
    end;
end;

procedure TMeterRateRecordForm.NxLinkLabel1Click(Sender: TObject);
begin
  PageControl1.ActivePage := TabSheet1;
  EditGenSysRate.SetFocus;
end;

procedure TMeterRateRecordForm.NxLinkLabel2Click(Sender: TObject);
begin
  PageControl1.ActivePage := TabSheet2;
  EditDCDemandRate.SetFocus;
end;

procedure TMeterRateRecordForm.NxLinkLabel3Click(Sender: TObject);
begin
  PageControl1.ActivePage := TabSheet3;
  EditUCNPCStrandedDebtsRate.SetFocus;
end;

procedure TMeterRateRecordForm.FormShow(Sender: TObject);
begin
  PageControl1.ActivePage := TabSheet1;
  EditGenSysRate.SetFocus;
end;

procedure TMeterRateRecordForm.NxLinkLabel4Click(Sender: TObject);
begin
  PageControl1.ActivePage := TabSheet4;
  EditDiffBillMonth.Enabled       := False;
  EditDiffBillRatePerKWHR.Enabled := False;
  EditDiffBillRatePerKW.Enabled   := False;
  EditDiffBillPerCustomer.Enabled := False;
  If BillingData.MRateDiffBillApply.AsInteger = 1 then
    begin
      EditDiffBillMonth.Enabled       := True;
      EditDiffBillRatePerKWHR.Enabled := True;
      EditDiffBillRatePerKW.Enabled   := True;
      EditDiffBillPerCustomer.Enabled := True;
      EditDiffBillMonth.SetFocus;
      exit;
    end;
  DBCheckBox1.SetFocus;
end;

procedure TMeterRateRecordForm.DBCheckBox1Click(Sender: TObject);
begin
  If DBCheckBox1.Checked = True then
    begin
      EditDiffBillMonth.Enabled       := True;
      EditDiffBillRatePerKWHR.Enabled := True;
      EditDiffBillRatePerKW.Enabled   := True;
      EditDiffBillPerCustomer.Enabled := True;
      EditDiffBillMonth.SetFocus;
    end else
    begin
      EditDiffBillMonth.Enabled       := False;
      EditDiffBillRatePerKWHR.Enabled := False;
      EditDiffBillRatePerKW.Enabled   := False;
      EditDiffBillPerCustomer.Enabled := False;
    end;
end;

end.
