unit MonthlyReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DsFancyButton, NxCollection, StdCtrls, ExtCtrls, ComCtrls, Gauges;

type
  TMonthlyRprt = class(TForm)
    NxHeaderPanel1: TNxHeaderPanel;
    DsFancyButton1: TDsFancyButton;
    DsFancyButton2: TDsFancyButton;
    DsFancyButton3: TDsFancyButton;
    DsFancyButton4: TDsFancyButton;
    DsFancyButton5: TDsFancyButton;
    DsFancyButton6: TDsFancyButton;
    NxHeaderPanel2: TNxHeaderPanel;
    DsFancyButton11: TDsFancyButton;
    DsFancyButton12: TDsFancyButton;
    DsFancyButton13: TDsFancyButton;
    DsFancyButton7: TDsFancyButton;
    DsFancyButton8: TDsFancyButton;
    DsFancyButton9: TDsFancyButton;
    DsFancyButton10: TDsFancyButton;
    DsFancyButton14: TDsFancyButton;
    DsFancyButton15: TDsFancyButton;
    procedure DsFancyButton1Click(Sender: TObject);
    procedure DsFancyButton2Click(Sender: TObject);
    procedure DsFancyButton3Click(Sender: TObject);
    procedure DsFancyButton4Click(Sender: TObject);
    procedure DsFancyButton5Click(Sender: TObject);
    procedure DsFancyButton6Click(Sender: TObject);
    procedure DsFancyButton11Click(Sender: TObject);
    procedure DsFancyButton12Click(Sender: TObject);
    procedure DsFancyButton13Click(Sender: TObject);
    procedure DsFancyButton7Click(Sender: TObject);
    procedure DsFancyButton8Click(Sender: TObject);
    procedure DsFancyButton9Click(Sender: TObject);
    procedure DsFancyButton10Click(Sender: TObject);
    procedure DsFancyButton14Click(Sender: TObject);
    procedure DsFancyButton15Click(Sender: TObject);






  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MonthlyRprt: TMonthlyRprt;

implementation

uses PowerSalesNu,
     SCReports,
     MCCSumm,
     EVATSumm,
     DiscoSumm,
     OCIntegration,
     Frequency,
     UnpaidMasterList,
     UnbundledCollectionnu,
     AdjustmentRecord,
     UnbndAdjReport,
     acctgpower,
     AR,
     Collection,
     BillingPrintBills,
     Data, gram, LatebillhistoryReportForm;

{$R *.dfm}


procedure TMonthlyRprt.DsFancyButton10Click(Sender: TObject);
begin
  If not assigned(AdjustmentRecordForm) then
  AdjustmentRecordForm         := TAdjustmentRecordForm.Create(Application);
  AdjustmentRecordForm.Show;
end;

procedure TMonthlyRprt.DsFancyButton11Click(Sender: TObject);
begin
  If not assigned(frmUnbundledCollectionnu) then
  frmUnbundledCollectionnu := TfrmUnbundledCollectionnu.Create(Application);
  frmUnbundledCollectionnu.Show;
end;

procedure TMonthlyRprt.DsFancyButton12Click(Sender: TObject);
begin
  If not assigned(UnBnAdjReport) then
  UnBnAdjReport := TUnBnAdjReport.Create(Application);
  UnBnAdjReport.Show;
end;

procedure TMonthlyRprt.DsFancyButton13Click(Sender: TObject);
begin
  If not assigned(AccountsReceivable) then
  AccountsReceivable := TAccountsReceivable.Create(Application);
  AccountsReceivable.Show;
end;

procedure TMonthlyRprt.DsFancyButton14Click(Sender: TObject);
begin
  If not assigned(gramFrm) then
  gramFrm := TgramFrm.Create(Application);
  gramFrm.ShowModal;
end;

procedure TMonthlyRprt.DsFancyButton15Click(Sender: TObject);
begin
  If not assigned(latebillhistoryFrm) then
  latebillhistoryFrm := TlatebillhistoryFrm.Create(Application);
  latebillhistoryFrm.ShowModal;
end;

procedure TMonthlyRprt.DsFancyButton1Click(Sender: TObject);
begin
  if not Assigned(frmPowerSalesNu) then frmPowerSalesNu := TfrmPowerSalesNu.Create(Self);
  frmPowerSalesNu.Show;
end;

procedure TMonthlyRprt.DsFancyButton2Click(Sender: TObject);
begin
  If not assigned(SCReportForm) then
  SCReportForm := TSCReportForm.Create(Application);
  SCReportForm.Show;
end;

procedure TMonthlyRprt.DsFancyButton3Click(Sender: TObject);
begin
  If not assigned(MCCSummaryForm) then
  MCCSummaryForm := TMCCSummaryForm.Create(Application);
  MCCSummaryForm.Show;
end;

procedure TMonthlyRprt.DsFancyButton4Click(Sender: TObject);
begin
  If not assigned(EVATSummaryForm) then
    EVATSummaryForm := TEVATSummaryForm.Create(Application);
    EVATSummaryForm.Show;
    EVATSummaryForm.DateFrom.SetFocus;
end;

procedure TMonthlyRprt.DsFancyButton5Click(Sender: TObject);
begin
  If not Assigned(DiscoSummForm) then
  DiscoSummForm := TDiscoSummForm.Create(Application);
  DiscoSummForm.DateFrom.Date := Now;
  DiscoSummForm.DateTo.Date   := Now;
  DiscoSummForm.Show;
end;

procedure TMonthlyRprt.DsFancyButton6Click(Sender: TObject);
begin
  If not assigned(OCIntegrationForm) then OCIntegrationForm := TOCIntegrationForm.Create(Application);
  OCIntegrationForm.Show;
end;

procedure TMonthlyRprt.DsFancyButton7Click(Sender: TObject);
begin
  If not assigned(CollectionForm) then
  CollectionForm         := TCollectionForm.Create(Application);
  CollectionForm.Show;
end;

procedure TMonthlyRprt.DsFancyButton8Click(Sender: TObject);
begin
  If not assigned(FrequencyForm) then
   FrequencyForm := TFrequencyForm.Create(Application);
   BillingData.Fr.Active := True;
   FrequencyForm.Show;
end;

procedure TMonthlyRprt.DsFancyButton9Click(Sender: TObject);
begin
  If not Assigned(UnpaidBillsListForm) then
   UnpaidBillsListForm := TUnpaidBillsListForm.Create(Application);
   UnpaidBillsListForm.Show;
end;

end.
