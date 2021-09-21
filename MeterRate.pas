unit MeterRate;

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
  Buttons,
  DBCtrls,
  Grids,
  DBGrids,
  ExtCtrls,
  PDJSillyLabel,
  Menus,
  DB,
  MemDS,
  DBAccess,
  MyAccess,
  QRCtrls,
  QuickRpt,
  DsFancyButton,
  CRGrid,
  NxCollection,
  Mask,
  ComCtrls, CRDBGrid1;

type
  TMeterRateForm = class(TForm)
    Panel1: TPanel;
    Edit1: TEdit;
    PDJSillyLabel1: TNxButton;
    PDJSillyLabel2: TNxButton;
    CopyRates: TNxButton;
    Label1: TLabel;
    PDJSillyLabel3: TNxButton;
    PDJSillyLabel4: TNxButton;
    PDJSillyLabel5: TNxButton;
    UpdatePrintRate: TMyQuery;
    AP: TMyQuery;
    Panel2: TNxHeaderPanel;
    PDJSillyLabel6: TNxButton;
    PDJSillyLabel7: TNxButton;
    SourceMonth: TLabeledEdit;
    TargetMonth: TLabeledEdit;
    Panel3: TPanel;
    RateReport: TQuickRep;
    DetailBand1: TQRBand;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    QRDBText36: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    TitleBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData4: TQRSysData;
    ColumnHeaderBand1: TQRBand;
    QRShape2: TQRShape;
    QRShape1: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel39: TQRLabel;
    Panel4: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    NxHeaderPanel1: TNxHeaderPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label33: TLabel;
    Label35: TLabel;
    EditGenSysRate: TDBEdit;
    EditHostCommRate: TDBEdit;
    EditFOREXRate: TDBEdit;
    EditTCDemandRate: TDBEdit;
    EditTCSystemRate: TDBEdit;
    EditSystemLossRate: TDBEdit;
    EditPrevYearAdjPowerCost: TDBEdit;
    EditSysLossUnderRecov: TDBEdit;
    TabSheet2: TTabSheet;
    NxHeaderPanel2: TNxHeaderPanel;
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
    TabSheet4: TTabSheet;
    NxHeaderPanel4: TNxHeaderPanel;
    Label49: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    EditDiffBillMonth: TDBEdit;
    EditDiffBillRatePerKWHR: TDBEdit;
    EditDiffBillRatePerKW: TDBEdit;
    EditDiffBillPerCustomer: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    Label3: TLabel;
    BillMonth: TDBEdit;
    Remarks: TDBEdit;
    NxButton1: TNxButton;
    NxButton2: TNxButton;
    DBCheckBox2: TDBCheckBox;
    AncillaryRefundPanel: TNxHeaderPanel;
    Label40: TLabel;
    DBEdit1: TDBEdit;
    Label41: TLabel;
    DBEdit2: TDBEdit;
    Label42: TLabel;
    DBEdit3: TDBEdit;
    Label43: TLabel;
    DBEdit4: TDBEdit;
    Label44: TLabel;
    DBEdit5: TDBEdit;
    Label45: TLabel;
    DBEdit6: TDBEdit;
    NxButton3: TNxButton;
    NxButton4: TNxButton;
    TabSheet5: TTabSheet;
    NxHeaderPanel5: TNxHeaderPanel;
    Label47: TLabel;
    DBEdit8: TDBEdit;
    Label48: TLabel;
    DBEdit9: TDBEdit;
    DBCheckBox3: TDBCheckBox;
    DBEdit7: TDBEdit;
    Label46: TLabel;
    DBCheckBox4: TDBCheckBox;
    Bevel1: TBevel;
    Timer1: TTimer;
    Label50: TLabel;
    StaticText1: TStaticText;
    OldCons: TDBRadioGroup;
    NewCons: TDBRadioGroup;
    DBCheckBox5: TDBCheckBox;
    DBGrid1: TCRDBGrid1;
    TabSheet6: TTabSheet;
    Label39: TLabel;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    Label51: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    ScrollBox1: TScrollBox;
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
    Label2: TLabel;
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
    DBEdit16: TDBEdit;
    Label52: TLabel;
    NxHeaderPanel3: TNxHeaderPanel;
    EditPARec: TDBEdit;
    Label53: TLabel;
    TabSheet7: TTabSheet;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    Label54: TLabel;
    Label55: TLabel;
    DBEdit19: TDBEdit;
    Label60: TLabel;
    EditGram: TDBEdit;
    Label27: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PDJSillyLabel1Click(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure PDJSillyLabel2Click(Sender: TObject);
    procedure CopyRatesClick(Sender: TObject);
    procedure ArrageGridbyBillMonth1Click(Sender: TObject);
    procedure PDJSillyLabel3Click(Sender: TObject);
    procedure PDJSillyLabel4Click(Sender: TObject);
    procedure PDJSillyLabel5Click(Sender: TObject);
    procedure PDJSillyLabel6Click(Sender: TObject);
    procedure PDJSillyLabel7Click(Sender: TObject);
    procedure EditGenSysRateKeyPress(Sender: TObject; var Key: Char);
    procedure NxButton1Click(Sender: TObject);
    procedure NxButton2Click(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure NxButton3Click(Sender: TObject);
    procedure NxButton4Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure DBCheckBox5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MeterRateForm: TMeterRateForm;

implementation

uses Data,
     MeterRateRecord;

{$R *.dfm}

procedure TMeterRateForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  BillingData.MRate.Filter   := '';
  BillingData.MRate.Filtered := False;
  BillingData.MRate.Active   := False;
  Action := caFree;
  MeterRateForm := Nil;
end;


procedure TMeterRateForm.PDJSillyLabel1Click(Sender: TObject);
begin
  Close;
end;

procedure TMeterRateForm.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key in ['+',#13] then
   begin
     Case Key of
     '+' : BillingData.MRate.Append;
     #13 : BillingData.MRate.Edit;
     end;
    Panel4.Left := 177;
    Panel4.Top  := 0;
    Panel4.BringToFront;
    Panel4.Visible := True;
    PageControl1.ActivePageIndex := 0;
    EditGenSysRate.SetFocus;
    Timer1.Enabled := True;
   end;
end;

procedure TMeterRateForm.DBGrid1DblClick(Sender: TObject);
begin
  BillingData.MRate.Edit;
  Panel4.Left := 177;
  Panel4.Top  := 0;
  Panel4.BringToFront;
  Panel4.Visible := True;
  PageControl1.ActivePageIndex := 0;
  if BillingData.MRateWRSw.Text = '0' then
    begin
       OldCons.Enabled := True;
       NewCons.Enabled := False;
    end else
    begin
       OldCons.Enabled := False;
       NewCons.Enabled := True;
    end;
  EditGenSysRate.SetFocus;
  Timer1.Enabled := True;
end;

procedure TMeterRateForm.PDJSillyLabel2Click(Sender: TObject);
begin
 AP.SQL.Clear;
 AP.SQL.Add('DROP TABLE IF EXISTS zaneco.printrate;create table zaneco.printrate like zaneco.meterrate');
 AP.Execute;

 UpdatePrintRate.SQL.Clear;
 UpdatePrintRate.SQL.Text := 'Insert into PrintRate Select * from MeterRate';
 UpdatePrintRate.Execute;

 MessageDlg('Update Print Rate done.', mtInformation, [mbOK], 0);
end;

procedure TMeterRateForm.CopyRatesClick(Sender: TObject);
begin
   Panel2.Left := 266;
   Panel2.Top  := 193;
   Panel2.Visible := True;
   Panel2.BringToFront;
   SourceMonth.SetFocus;
end;

procedure TMeterRateForm.ArrageGridbyBillMonth1Click(Sender: TObject);
begin
BillingData.MRate.IndexFieldNames := 'MBillMonth;RateCode';
end;

procedure TMeterRateForm.PDJSillyLabel3Click(Sender: TObject);
begin
  With BillingData do
   begin
    MRate.Close;
    MRate.Filter   := 'MBillMonth = '+QuotedStr(Edit1.Text);
    MRate.Filtered := True;
    MRate.Open;
   end;
end;

procedure TMeterRateForm.PDJSillyLabel4Click(Sender: TObject);
begin
  With BillingData do
   begin
    MRate.Filter      := '';
    MRate.Filtered    := False;
    MRate.FilterSQL   := '';
   end;
end;

procedure TMeterRateForm.PDJSillyLabel5Click(Sender: TObject);
begin
  RateReport.Preview;
end;

procedure TMeterRateForm.PDJSillyLabel6Click(Sender: TObject);
begin
  AP.SQL.Clear;
  AP.SQL.Add('DROP TABLE IF EXISTS zaneco.printrate;create table zaneco.printrate like zaneco.meterrate');
  AP.Execute;

  AP.SQL.Clear;
  AP.SQL.Add('insert into printrate select * from meterrate where mbillmonth = :billmonth');
  AP.ParamByName('billmonth').Text := SourceMonth.Text;
  AP.Execute;

  AP.SQL.Clear;
  AP.SQL.Add('update printrate set mbillmonth = :billmonth');
  AP.ParamByName('billmonth').Text := TargetMonth.Text;
  AP.Execute;

  AP.SQL.Clear;
  AP.SQL.Add('insert into meterrate select * from printrate');
  AP.Execute;

  BillingData.MRate.Refresh;

  MessageDlg('Copy Rates done ......', mtWarning, [mbOK], 0);
  Panel2.Visible := False;
end;

procedure TMeterRateForm.PDJSillyLabel7Click(Sender: TObject);
begin
  Panel2.Visible := False;
end;

procedure TMeterRateForm.Timer1Timer(Sender: TObject);
Var TRate : Double;
begin
 With BillingData do
  TRate := MRateGenSysRate.AsFloat +
				   MRateHostCommRate.AsFloat +
				   MRateFOREXRate.AsFloat +
           MRateTCSystemRate.AsFloat +
           MRateSystemLossRate.AsFloat +
           MRateDCSystemRate.AsFloat +
           MRateSCSupplySysRate.AsFloat +
           MRateMCSysRate.AsFloat +
           MRateUCMERate.AsFloat +
           MRateUCECRate.AsFloat +
           MRateLifelineSubsidyRate.AsFloat +
           MRatePARARate.AsFloat +
           MRateSCDiscSubs.AsFloat +
           MRateMCC.AsFloat+
           MRateVATGenCo.AsFloat+
           MRateVATTransCo.AsFloat+
           MRateVATSystemLossGenCO.AsFloat+

           MRateVATSystemLoss.AsFloat+
           MRateUCNPCStrandedContCostRate.AsFloat+
           MRateICCrossSubsidyRate.AsFloat+
           MRateFitAllrate.AsFloat+
           MRateOtherGenRateAdj.AsFloat+
           MRateOtherTransCostAdj.AsFloat+

           MRateOtherSystemLossCostAdj.AsFloat+
           MRateOtherLifelineRateCostAdj.AsFloat+
           MRateOtherSeniorCitizenRateAdj.AsFloat+
           MRatePARec.AsFloat+
           MRateUCNPCStrandedDebtsRate.AsFloat;

 StaticText1.Caption := CurrToStr(TRate);

end;

procedure TMeterRateForm.EditGenSysRateKeyPress(Sender: TObject;
  var Key: Char);
begin
  If key = #13 then
    begin
     Perform(CM_DIALOGKEY,VK_TAB,0);
     key := #0;
    end;
end;

procedure TMeterRateForm.NxButton1Click(Sender: TObject);
begin
  If DBCheckBox5.Checked then
  BillingData.MRateRateCode.Text := '' else
  BillingData.MRateWRateCode.Text := '';
  BillingData.MRate.Post;
  Panel4.Visible := False;
end;

procedure TMeterRateForm.NxButton2Click(Sender: TObject);
begin
  BillingData.MRate.Cancel;
  Panel4.Visible := False;
  Timer1.Enabled := False;
end;

procedure TMeterRateForm.DBCheckBox5Click(Sender: TObject);
begin
  if DBCheckBox5.Checked then
    begin
       OldCons.Enabled := False;
       NewCons.Enabled := True;
    end else
    begin
       OldCons.Enabled := True;
       NewCons.Enabled := False;
    end;
end;

procedure TMeterRateForm.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
    begin
      Perform(CM_DIALOGKEY,VK_TAB,0);
      Key := #0;
    end;
end;

procedure TMeterRateForm.NxButton3Click(Sender: TObject);
begin
AncillaryRefundPanel.Visible := False;
end;

procedure TMeterRateForm.NxButton4Click(Sender: TObject);
begin
  AncillaryRefundPanel.Left := 17;
  AncillaryRefundPanel.Top  := 43;
  AncillaryRefundPanel.BringToFront;
  AncillaryRefundPanel.Visible := true;
  DBEdit1.SetFocus;
end;

end.
