unit Collection;

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
  Menus,
  ExtCtrls,
  DBCtrls,
  StdCtrls,
  Grids,
  DBGrids,
  Buttons,
  BarMenus,
  PDJSillyLabel,
  Mask,
  PDJSillyTools,
  ComCtrls,
  DB,
  MemDS,
  DBAccess,
  MyAccess,
  Gauges,
  DsFancyButton,
  CRGrid,
  NxEdit,
  NxCollection, CRDBGrid1, Printers,AppEvnts, frxClass, frxDBSet;

type
  TCollectionForm = class(TForm)
    Panel2: TPanel;
    BcBarMainMenu1: TBcBarMainMenu;
    Transactions1: TMenuItem;
    Search1: TMenuItem;
    Exit1: TMenuItem;
    Panel4: TNxHeaderPanel;
    PDJSillyLabel3: TNxButton;
    GroupCollection: TMyQuery;
    DSGroupCollection: TDataSource;
    GroupCollectioncollectorcode: TStringField;
    GroupCollectiondatepaid: TDateField;
    GroupCollectionencodercode: TStringField;
    GroupCollectiontotalbill: TFloatField;
    GroupCollectiontotalaccount: TLargeintField;
    Panel1: TPanel;
    CollectorCode: TDBText;
    LblBills: TDBText;
    LblDatePaid: TDBText;
    LblAmount: TDBText;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    
    Label17: TLabel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    Bevel6: TBevel;
    Bevel7: TBevel;
    GroupBox1: TGroupBox;
    Label18: TLabel;
    SearchStr: TLabeledEdit;
    ApplyDate: TCheckBox;
    PDJSillyLabel9: TNxButton;
    PDJSillyLabel4: TNxButton;
    GroupCollectionOption1: TMyQuery;
    StringField1: TStringField;
    DateField1: TDateField;
    StringField2: TStringField;
    FloatField1: TFloatField;
    LargeintField1: TLargeintField;
    GroupCollectionOption2: TMyQuery;
    StringField3: TStringField;
    DateField2: TDateField;
    StringField4: TStringField;
    FloatField2: TFloatField;
    LargeintField2: TLargeintField;
    Option: TRadioGroup;
    PDJSillyLabel5: TNxButton;
    CollSearch: TLabeledEdit;
    SearchCollection: TMyQuery;
    SearchCollectionAccountNumber: TStringField;
    SearchCollectionName: TStringField;
    SearchCollectionBillMonth: TStringField;
    SearchCollectionDatePaid: TDateField;
    SearchCollectionReceiptNumber: TStringField;
    SearchCollectionTotalBill: TFloatField;
    DSSearchCollection: TDataSource;
    SearchCollectionCollectorCode: TStringField;
    SearchCollectionEncoderCode: TStringField;
    GroupCollectionsundries: TStringField;
    Panel9: TNxHeaderPanel;
    Label68: TLabel;
    Label65: TLabel;
    Label67: TLabel;
    Bevel10: TBevel;
    CollwithAgingButton: TNxButton;
    CollByConsumerTypeButton: TNxButton;
    CollClose: TNxButton;
    NotedBy: TEdit;
    CheckedBy: TEdit;
    PreparedBy: TEdit;
    FromDate: TDateTimePicker;
    ToDate: TDateTimePicker;
    Label25: TLabel;
    Label26: TLabel;
    StaticText1: TStaticText;
    Gauge1: TGauge;
    N3: TMenuItem;
    CollectionSummary1: TMenuItem;
    Label27: TLabel;
    BillMonth: TEdit;
    GroupCollectionposted: TStringField;
    GroupCollectionOption2posted: TStringField;
    GroupCollectionOption1posted: TStringField;
    EVATSummary1: TMenuItem;
    GroupCollectionOption1sundries: TStringField;
    GroupCollectionOption2sundries: TStringField;
    deleteAR: TMyQuery;
    FindCollection: TMyTable;
    FindCollectionEntry: TIntegerField;
    FindCollectionReceiptNumber: TStringField;
    FindCollectionAccountCode: TFloatField;
    FindCollectionArea: TStringField;
    FindCollectionBook: TStringField;
    FindCollectionSequence: TStringField;
    FindCollectionAccountNumber: TStringField;
    FindCollectionName: TStringField;
    FindCollectionBillMonth: TStringField;
    FindCollectionTotalBill: TFloatField;
    FindCollectionMembership: TFloatField;
    FindCollectionPenalty: TFloatField;
    FindCollectionSecurity: TFloatField;
    FindCollectionMeterDeposit: TFloatField;
    FindCollectionTransformerRental: TFloatField;
    FindCollectionSundries: TStringField;
    FindCollectionSundriesAmount: TFloatField;
    FindCollectionUCNPCSD: TFloatField;
    FindCollectionUCNPCSCC: TFloatField;
    FindCollectionUCDUSCC: TFloatField;
    FindCollectionUCME: TFloatField;
    FindCollectionUCETR: TFloatField;
    FindCollectionUCEC: TFloatField;
    FindCollectionUCCSR: TFloatField;
    FindCollectionLoanCondo: TFloatField;
    FindCollectionTotal: TFloatField;
    FindCollectionCollectorCode: TStringField;
    FindCollectionDatePaid: TDateField;
    FindCollectionDateRemitted: TDateField;
    FindCollectionEncoderCode: TStringField;
    FindCollectionPosted: TStringField;
    FindCollectionKilowattHour: TFloatField;
    FindCollectionVATDist: TFloatField;
    FindCollectionVATGenCO: TFloatField;
    FindCollectionVATTransCO: TFloatField;
    FindCollectionVATSystemLossGenCO: TFloatField;
    FindCollectionVATSystemLossTransCO: TFloatField;
    FindCollectionVAT: TFloatField;
    N4: TMenuItem;
    CCollection: TMyQuery;
    Panel8: TNxHeaderPanel;
    Label47: TLabel;
    Label48: TLabel;
    Label57: TLabel;
    Gauge4: TGauge;
    Area: TEdit;
    Edit4: TEdit;
    CurrentCollectionPrint: TNxButton;
    CloseB: TNxButton;
    DateCutOff: TDateTimePicker;
    CCollectionEntry: TIntegerField;
    CCollectionReceiptNumber: TStringField;
    CCollectionAccountCode: TFloatField;
    CCollectionArea: TStringField;
    CCollectionBook: TStringField;
    CCollectionSequence: TStringField;
    CCollectionAccountNumber: TStringField;
    CCollectionName: TStringField;
    CCollectionBillMonth: TStringField;
    CCollectionTotalBill: TFloatField;
    CCollectionMembership: TFloatField;
    CCollectionPenalty: TFloatField;
    CCollectionSecurity: TFloatField;
    CCollectionMeterDeposit: TFloatField;
    CCollectionTransformerRental: TFloatField;
    CCollectionSundries: TStringField;
    CCollectionSundriesAmount: TFloatField;
    CCollectionUCNPCSD: TFloatField;
    CCollectionUCNPCSCC: TFloatField;
    CCollectionUCDUSCC: TFloatField;
    CCollectionUCME: TFloatField;
    CCollectionUCETR: TFloatField;
    CCollectionUCEC: TFloatField;
    CCollectionUCCSR: TFloatField;
    CCollectionLoanCondo: TFloatField;
    CCollectionTotal: TFloatField;
    CCollectionCollectorCode: TStringField;
    CCollectionDatePaid: TDateField;
    CCollectionDateRemitted: TDateField;
    CCollectionEncoderCode: TStringField;
    CCollectionPosted: TStringField;
    CCollectionKilowattHour: TFloatField;
    CCollectionAddress: TStringField;
    CCollectionOPDescription: TStringField;
    CCollectionOPAmount: TFloatField;
    CCollectionTellerORNumber: TStringField;
    CCollectionVATDist: TFloatField;
    CCollectionVATGenCO: TFloatField;
    CCollectionVATTransCO: TFloatField;
    CCollectionVATSystemLossGenCO: TFloatField;
    CCollectionVATSystemLossTransCO: TFloatField;
    CCollectionVAT: TFloatField;
    AdvanceCollectionReport1: TMenuItem;
    Position1: TEdit;
    Position2: TEdit;
    Position3: TEdit;
    Bevel13: TBevel;
    Bevel14: TBevel;
    Bevel15: TBevel;
    RadioGroup2: TRadioGroup;
    GroupCollectionname: TStringField;
    GroupCollectionOption1name: TStringField;
    GroupCollectionOption2name: TStringField;
    FindCollectionAddress: TStringField;
    FindCollectionOPDescription: TStringField;
    FindCollectionOPAmount: TFloatField;
    FindCollectionTellerORNumber: TStringField;
    FindCollectionVATDiscAmt: TFloatField;
    FindCollectionVATDistDiscAmt: TFloatField;
    FindCollectionVATGenCoDiscAmt: TFloatField;
    FindCollectionVATTransCoDiscAmt: TFloatField;
    FindCollectionVATSystemLossDiscAmt: TFloatField;
    Panel7: TPanel;
    Label33: TLabel;
    TotalCollection: TMyQuery;
    TotalCollectionORNumber: TStringField;
    TotalCollectioncode: TStringField;
    TotalCollectionname: TStringField;
    TotalCollectiontotalbill: TFloatField;
    TotalCollectionucec: TFloatField;
    TotalCollectionucme: TFloatField;
    TotalCollectionGenCo: TFloatField;
    TotalCollectionTransCo: TFloatField;
    TotalCollectionDist: TFloatField;
    TotalCollectionSystemLoss: TFloatField;
    TotalCollectionnet: TFloatField;
    DSTotalCollection: TDataSource;
    ViewDate: TDateTimePicker;
    DsFancyButton1: TNxButton;
    Label34: TLabel;
    DsFancyButton2: TNxButton;
    ViewCollectionbyCollectorORNumberDate1: TMenuItem;
    ARUpdateQuery: TMyQuery;
    VQ: TMyQuery;
    VQAREA: TStringField;
    VQBOOK: TStringField;
    Memo3: TMemo;
    DateFrom: TNxDatePicker;
    DateTo: TNxDatePicker;
    NxLabel1: TNxLabel;
    NxLabel2: TNxLabel;
    TotalCollectionpkvramount: TFloatField;
    FindCollectionSystemLossCharge: TFloatField;
    FindCollectionPKVRAmount: TFloatField;
    CCollectionVATDiscAmt: TFloatField;
    CCollectionVATDistDiscAmt: TFloatField;
    CCollectionVATGenCoDiscAmt: TFloatField;
    CCollectionVATTransCoDiscAmt: TFloatField;
    CCollectionVATSystemLossDiscAmt: TFloatField;
    CCollectionSystemLossCharge: TFloatField;
    CCollectionPKVRAmount: TFloatField;
    UnbundledCollectionSummaries1: TMenuItem;
    N1: TMenuItem;
    CashReceiptDownloader1: TMenuItem;
    Edit1: TEdit;
    Label1: TLabel;
    CheckBox1: TCheckBox;
    MFSRSheetD1: TMenuItem;
    DBGrid1: TCRDBGrid1;
    CRDBGrid1: TCRDBGrid1;
    DBGrid2: TCRDBGrid1;
    NetCollectionAdv: TMyQuery;
    NetCollectionAdvarea: TStringField;
    NetCollectionAdvTotal: TFloatField;
    NetCollectionAdvEVAT: TFloatField;
    NetCollectionAdvEVATDist: TFloatField;
    NetCollectionAdvEVATGenCO: TFloatField;
    NetCollectionAdvEVATTransCO: TFloatField;
    NetCollectionAdvEVATSystemLoss: TFloatField;
    NetCollectionAdvUCEC: TFloatField;
    NetCollectionAdvUCME: TFloatField;
    NetCollectionAdvtotalNet: TFloatField;
    NetCollectionAdvTR: TFloatField;
    NetCollectionAdvSystemLossCharge: TFloatField;
    NetCollectionAdvnetcollection: TCurrencyField;
    NetCollectionAdvPKVRAmount: TFloatField;
    NetCollectionAdvMCC: TFloatField;
    NetCollectionAdvUCNPCSCC: TFloatField;
    NetCollectionAdvFitall: TFloatField;
    NetCollectionAdvRPT: TFloatField;
    NetCollectionAdvUCNPCSCD: TFloatField;
    NetCollectionAdvICCS: TFloatField;
    NetCollectionAdvPARec: TFloatField;
    NetCollectionAdvVATmcc: TFloatField;
    NetCollectionAdvbreakDownOC: TStringField;
    NetColl_tfrx: TfrxDBDataset;
    netCollSum_tfrx: TfrxDBDataset;
    netCollSum: TMyQuery;
    netCollSumFitall: TFloatField;
    netCollSumRPT: TFloatField;
    netCollSumUCNPCSCD: TFloatField;
    netCollSumICCS: TFloatField;
    netCollSumPARec: TFloatField;
    netCollSumVATmcc: TFloatField;
    netCollSumbreakDownOC: TStringField;
    NetColl_Rep: TfrxReport;
    netCollSumPC: TStringField;
    NetCollectionAdvgroupC: TLargeintField;
    NetCollectionAdvkilowattHour: TFloatField;
    CQtmp: TMyQuery;
    CQ_report: TfrxReport;
    CQ_tfrx: TfrxDBDataset;
    CQtmp2: TMyQuery;
    CQ_tfrx2: TfrxDBDataset;
    CQtmptotal: TFloatField;
    CQtmpcntr: TFloatField;
    CQtmptotal_P: TFloatField;
    CQtmpcntr_P: TFloatField;
    CQtmpdescription: TStringField;
    CQtmpPF: TFloatField;
    CQtmpPR: TFloatField;
    CQtmpXR: TFloatField;
    CQtmpOC: TFloatField;
    CQtmpPN: TFloatField;
    CQtmpocDesc: TStringField;
    CQtmpocAmount: TStringField;
    CQtmpVAT: TFloatField;
    CQtmpUCNPCSD: TFloatField;
    CQtmpUCEC: TFloatField;
    CQtmpUCME: TFloatField;
    CQtmpUCNPCSCC: TFloatField;
    CQtmpRPTa: TFloatField;
    CQtmpPARec: TFloatField;
    CQtmpFitall: TFloatField;
    CQtmpICCS: TFloatField;
    CQtmpMCC: TFloatField;
    CQtmpVATDist: TFloatField;
    CQtmpVATGenCO: TFloatField;
    CQtmpVATTransCO: TFloatField;
    CQtmpEVATSystemLoss: TFloatField;
    CQtmpPF_P: TFloatField;
    CQtmpPR_P: TFloatField;
    CQtmpXR_P: TFloatField;
    CQtmpOC_P: TFloatField;
    CQtmpPN_P: TFloatField;
    CQtmpocAmount_P: TStringField;
    CQtmpVAT_P: TFloatField;
    CQtmpUCNPCSD_P: TFloatField;
    CQtmpUCEC_P: TFloatField;
    CQtmpUCME_P: TFloatField;
    CQtmpUCNPCSCC_P: TFloatField;
    CQtmpRPTax_P: TFloatField;
    CQtmpPARec_P: TFloatField;
    CQtmpFitall_P: TFloatField;
    CQtmpICCS_P: TFloatField;
    CQtmpMCC_P: TFloatField;
    CQtmpVATDist_P: TFloatField;
    CQtmpVATGenCO_P: TFloatField;
    CQtmpVATTransCO_P: TFloatField;
    CQtmpEVATSystemLoss_P: TFloatField;
    CQtmpbMonth: TStringField;
    CQtmpcntrG: TIntegerField;
    CQtmp2total: TFloatField;
    CQtmp2cntr: TFloatField;
    CQtmp2total_P: TFloatField;
    CQtmp2cntr_P: TFloatField;
    CQtmp2description: TStringField;
    CQtmp2PF: TFloatField;
    CQtmp2PR: TFloatField;
    CQtmp2XR: TFloatField;
    CQtmp2OC: TFloatField;
    CQtmp2PN: TFloatField;
    CQtmp2ocDesc: TStringField;
    CQtmp2ocAmount: TStringField;
    CQtmp2VAT: TFloatField;
    CQtmp2UCNPCSD: TFloatField;
    CQtmp2UCEC: TFloatField;
    CQtmp2UCME: TFloatField;
    CQtmp2UCNPCSCC: TFloatField;
    CQtmp2RPTa: TFloatField;
    CQtmp2PARec: TFloatField;
    CQtmp2Fitall: TFloatField;
    CQtmp2ICCS: TFloatField;
    CQtmp2MCC: TFloatField;
    CQtmp2VATDist: TFloatField;
    CQtmp2VATGenCO: TFloatField;
    CQtmp2VATTransCO: TFloatField;
    CQtmp2EVATSystemLoss: TFloatField;
    CQtmp2PF_P: TFloatField;
    CQtmp2PR_P: TFloatField;
    CQtmp2XR_P: TFloatField;
    CQtmp2OC_P: TFloatField;
    CQtmp2PN_P: TFloatField;
    CQtmp2ocAmount_P: TStringField;
    CQtmp2VAT_P: TFloatField;
    CQtmp2UCNPCSD_P: TFloatField;
    CQtmp2UCEC_P: TFloatField;
    CQtmp2UCME_P: TFloatField;
    CQtmp2UCNPCSCC_P: TFloatField;
    CQtmp2RPTax_P: TFloatField;
    CQtmp2PARec_P: TFloatField;
    CQtmp2Fitall_P: TFloatField;
    CQtmp2ICCS_P: TFloatField;
    CQtmp2MCC_P: TFloatField;
    CQtmp2VATDist_P: TFloatField;
    CQtmp2VATGenCO_P: TFloatField;
    CQtmp2VATTransCO_P: TFloatField;
    CQtmp2EVATSystemLoss_P: TFloatField;
    CQtmp2bMonth: TStringField;
    CQtmp2cntrG: TIntegerField;
    CQtmp2dateFrom: TStringField;
    CQtmp2dateTo: TStringField;
    CQtmpgram: TFloatField;
    CQtmpgram_P: TFloatField;
    CQtmp2gram: TFloatField;
    CQtmp2gram_P: TFloatField;
    NetCollectionAdvgram: TFloatField;
    netCollSumgram: TFloatField;
    CQtmp2PreparedBy: TStringField;
    CQtmp2CheckedBy: TStringField;
    CQtmp2NotedBy: TStringField;
    CQtmp2Position1: TStringField;
    CQtmp2Position2: TStringField;
    CQtmp2Position3: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Exit1Click(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure PDJSillyLabel3Click(Sender: TObject);
    procedure Search1Click(Sender: TObject);
    procedure PDJSillyLabel9Click(Sender: TObject);
    procedure PDJSillyLabel5Click(Sender: TObject);
    procedure CollwithAgingButtonClick(Sender: TObject);
    procedure CollByConsumerTypeButtonClick(Sender: TObject);
    procedure CollectionSummary1Click(Sender: TObject);
    procedure EVATSummary1Click(Sender: TObject);
    procedure CurrentCollectionPrintClick(Sender: TObject);
    procedure CloseBClick(Sender: TObject);
    procedure AdvanceCollectionReport1Click(Sender: TObject);
    procedure CollCloseClick(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ViewCollectionbyCollectorORNumberDate1Click(Sender: TObject);
    procedure DsFancyButton1Click(Sender: TObject);
    procedure DsFancyButton2Click(Sender: TObject);
    procedure PDJSillyLabel4Click(Sender: TObject);
    procedure CashReceiptDownloader1Click(Sender: TObject);
    procedure MFSRSheetD1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CollectionForm: TCollectionForm;

implementation

uses Data,
     CollectionRecord,
     StatusUpdate,
     ModTools,
     EVATSumm,
     DateUtils,
     collectionschedule,
     CashReceiptDownload,
     frmFSRMain;

Var
Lst : Text ;

{$R *.dfm}

procedure TCollectionForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  with billingdata do
  begin
    Collection.close;
    UnPB.Close;
    Collector.Close;
  end;
  Action := caFree;
  CollectionForm := Nil;
end;

procedure TCollectionForm.Exit1Click(Sender: TObject);
begin
  Close;
end;

procedure TCollectionForm.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  If Key=#13 then
    begin
     With BillingData do
      begin
       Collection.Close;
       Collection.ParamByName('datepaid').AsDate    := DSGroupCollection.DataSet.FieldValues['datepaid'];
       Collection.ParamByName('collectorcode').Text := DSGroupCollection.DataSet.FieldValues['collectorcode'];
       Collection.ParamByName('encodercode').Text   := DSGroupCollection.DataSet.FieldValues['encodercode'];
       Collection.Open;

       If not assigned(CollectionRecordForm) then
       CollectionRecordForm := TCollectionRecordForm.Create(Application);
       CollectionRecordForm.Show;
      end;
    end;
end;

procedure TCollectionForm.PDJSillyLabel3Click(Sender: TObject);
begin
  If SearchCollection.Active then SearchCollection.Close;
  Panel4.Visible := False;
end;

procedure TCollectionForm.Search1Click(Sender: TObject);
begin
  Panel4.Left    := 42;
  Panel4.Top     := 30;
  Panel4.Visible := True;
  Panel4.BringToFront;
  CollSearch.SetFocus;
end;

procedure TCollectionForm.PDJSillyLabel9Click(Sender: TObject);
begin
  GroupCollectionOption1.Close;
  GroupCollectionOption2.Close;
  GroupCollection.Open;
  DSGroupCollection.DataSet := GroupCollection;
end;

procedure TCollectionForm.PDJSillyLabel5Click(Sender: TObject);
begin
SearchCollection.Close;
SearchCollection.SQL.Clear;
SearchCollection.SQL.Add('select AccountNumber,');
SearchCollection.SQL.Add('       Name,');
SearchCollection.SQL.Add('       BillMonth,');
SearchCollection.SQL.Add('       DatePaid,');
SearchCollection.SQL.Add('       CollectorCode,');
SearchCollection.SQL.Add('       EncoderCode,');
SearchCollection.SQL.Add('       ReceiptNumber,');
SearchCollection.SQL.Add('       TotalBill');
SearchCollection.SQL.Add('from collection');

Case Option.ItemIndex of
 0 : SearchCollection.SQL.Add('where accountnumber = '+QuotedStr(CollSearch.Text));
 1 : SearchCollection.SQL.Add('where name like '+QuotedStr('%'+CollSearch.Text+'%'));
 2 : SearchCollection.SQL.Add('where receiptnumber like '+QuotedStr('%'+CollSearch.Text+'%'));
end;

SearchCollection.Open;

If SearchCollection.IsEmpty then MessageDlg('No records match.....', mtWarning, [mbOK], 0);
end;

procedure TCollectionForm.CollwithAgingButtonClick(Sender: TObject);
type
TPtr = ^TAging;
TAging = Record
TArea                                           : Array[1..400] of String[3];
TBook                                           : Array[1..400] of String[3];
TCurrentBills                                   : Array[1..400] of Integer;
TCurrentAmount                                  : Array[1..400] of Currency;
T30DaysBills                                    : Array[1..400] of Integer;
T30DaysAmount                                   : Array[1..400] of Currency;
T60DaysBills                                    : Array[1..400] of Integer;
T60DaysAmount                                   : Array[1..400] of Currency;
TOver60DaysBills                                : Array[1..400] of Integer;
TOver60DaysAmount                               : Array[1..400] of Currency;
TBills                                          : Array[1..400] of Integer;
TAmount                                         : Array[1..400] of Currency;
end;

Var
TAgingRecord                                    : TPtr;
PCurrentBills                                   : Integer;
PCurrentAmount                                  : Currency;
P30DaysBills                                    : Integer;
P30DaysAmount                                   : Currency;
P60DaysBills                                    : Integer;
P60DaysAmount                                   : Currency;
POver60DaysBills                                : Integer;
POver60DaysAmount                               : Currency;
PBills                                          : Integer;
PAmount                                         : Currency;

GCurrentBills                                   : Integer;
GCurrentAmount                                  : Currency;
G30DaysBills                                    : Integer;
G30DaysAmount                                   : Currency;
G60DaysBills                                    : Integer;
G60DaysAmount                                   : Currency;
GOver60DaysBills                                : Integer;
GOver60DaysAmount                               : Currency;
GBills                                          : Integer;
GAmount                                         : Currency;

I,R                                             : Integer ;
BMArray                                         : Array[1..3] of String[04];
BillMonthArray                                  : Array[1..3] of String[4];
Mon,Yr                                          : Word;
MonStr,YrStr                                    : String[2];
AreaSW                                          : String[3];
PageCount                                       : Integer;
LineCount                                       : Integer;
Check                                           : Integer;
Day                                             : Real;
DayStr                                          : String[3];
DI                                              : Word;

Function IMon(A : String) : String;
Var M : String;
begin
 M := '';
 try
 M := FormatDateTime('YYYYmm',StrToDate(copy(a,1,2)+'/01/'+ Copy(A,3,2)));
 except
 end;
 IMon := M;
end;

begin
  If BillMonth.Text = '' then
    begin
      ShowMessage('Please enter Current Bill Month');
      Exit;
    end;

  New(TAgingRecord);
  FillChar(TAgingRecord^,SizeOf(TAgingRecord^),#0);

  {Try
  AssignFile(Lst,'LPT1');
  Rewrite(Lst);
  except
   ShowMessage('Printer not Ready');
   Exit;
  end;}

  AssignFile(Lst,'LPT1');
  Rewrite(Lst);
  If IOResult <> 0 then
  begin
   ShowMessage('Printer not Ready');
   Exit;
  end;

  With BillingData do
   begin
    VQ.Open;

    VQ.First;
    R := 0;

    While not VQ.Eof do
     begin
      With TAgingRecord^ do
       begin
        Inc(R);
        TArea[R] := VQAREA.Text;
        TBook[R] := VQBOOK.Text;
       end;
     VQ.Next;
     end;
   end;
  VQ.Close;

  Val(Copy(BillMonth.Text,1,2),Mon,Check);
  Val(Copy(BillMonth.Text,3,2),Yr,Check);
  FillChar(BillMonthArray,SizeOf(BillMonthArray),#0);

  For I := 1 to 3 do
   begin

    Dec(Mon);
    If Mon < 1 then
      begin
        Mon := 12;
        Dec(yr);
      end;

   Str(Mon,MonStr);
   Str(Yr,YrStr);

   MonStr := JustStr(MonStr,'0',2,1);
   YrStr  := JustStr(YrStr,'0',2,1);

   BillMonthArray[I] := MonStr + YrStr;
   end;

  With BillingData,TAgingRecord^ do
   begin
    CQ.Close;
    CQ.ParamByName('DateFrom').AsDate := FromDate.Date;
    CQ.ParamByName('DateTo').AsDate   := ToDate.Date;
    CQ.Open;

    Gauge1.Progress := 0;
    Gauge1.MinValue := 0;
    Gauge1.MaxValue := CQ.RecordCount;

    CQ.First;
    While not CQ.Eof do
     begin
     Gauge1.AddProgress(1);
     Application.ProcessMessages;

     If IMon(CQ.FieldByName('billmonth').Text) > IMon(BillMonth.Text) then
      begin
       CQ.Next;
       Continue;
      end;

      DI := 0;

      Day := 61;
      If CQ.FieldByName('billmonth').Text = BillMonth.Text    then Day := 0;
      If CQ.FieldByName('billmonth').Text = BillMonthArray[1] then Day := 30;
      If CQ.FieldByName('billmonth').Text = BillMonthArray[2] then Day := 60;
      If CQ.FieldByName('billmonth').Text = BillMonthArray[3] then Day := 61;

      If Day = 30 then
        begin
         DayStr := '30';
         DI     := 1;
        end;

      If Day = 60 then
        begin
         DayStr := '60';
         DI     := 2;
        end;

      If (Day > 60) then
        begin
         DayStr := '>60';
         DI     := 3;
        end;

      For I := 1 to R do
        begin
         If ((CQ.FieldByName('Area').Text = TArea[I]) and (CQ.FieldByName('Book').Text = TBook[I])) or
            (('0'+CQ.FieldByName('Area').Text = TArea[I]) and ('0'+CQ.FieldByName('Book').Text = TBook[I])) then
            begin
              TBills[I]  := TBills[I] + CQ.FieldByName('TotalAccount').AsInteger;
              TAmount[I] := TAmount[I] + CQ.FieldByName('TotalAmount').AsCurrency;

                If DI = 0 then
                  begin
                    TCurrentBills[I]     := TCurrentBills[I] + CQ.FieldByName('TotalAccount').AsInteger;
                    TCurrentAmount[I]    := TCurrentAmount[I] + CQ.FieldByName('TotalAmount').AsCurrency;
                  end;

                If DI = 1 then
                  begin
                    T30DaysBills[I]      := T30DaysBills[I] + CQ.FieldByName('TotalAccount').AsInteger;
                    T30DaysAmount[I]     := T30DaysAmount[I] + CQ.FieldByName('TotalAmount').AsCurrency;
                  end;

                If DI = 2 then
                  begin
                    T60DaysBills[I]      := T60DaysBills[I] + CQ.FieldByName('TotalAccount').AsInteger;
                    T60DaysAmount[I]     := T60DaysAmount[I] + CQ.FieldByName('TotalAmount').AsCurrency;
                  end;

                If DI = 3 then
                  begin
                    TOver60DaysBills[I]  := TOver60DaysBills[I] + CQ.FieldByName('TotalAccount').AsInteger;
                    TOver60DaysAmount[I] := TOver60DaysAmount[I] + CQ.FieldByName('TotalAmount').AsCurrency;
                  end;
            end;
        end;

     CQ.Next;
     end;

  if (MessageDlg('Set printer on.... Click OK to print', mtWarning, [mbOK, mbCancel], 0) = mrCancel) then
    begin
     CQ.Close;
     CloseFile(Lst);
     exit;
    end;

  PCurrentBills     := 0;
  PCurrentAmount    := 0;
  P30DaysBills      := 0;
  P30DaysAmount     := 0;
  P60DaysBills      := 0;
  P60DaysAmount     := 0;
  POver60DaysBills  := 0;
  POver60DaysAmount := 0;
  PBills            := 0;
  PAmount           := 0;

  GCurrentBills     := 0;
  GCurrentAmount    := 0;
  G30DaysBills      := 0;
  G30DaysAmount     := 0;
  G60DaysAmount     := 0;
  GOver60DaysBills  := 0;
  GOver60DaysAmount := 0;
  GBills            := 0;
  GAmount           := 0;

  PageCount         := 0;
  LineCount         := 0;

  Write(Lst,#18,#27+'P');
  Writeln(Lst,'Page ',PageCount);
  Writeln(lst,#27+'E','SUMMARY OF COLLECTION WITH AGING',#27+'F');
  Writeln(lst,'Current Bill Month :',MonString(BillMonth.Text));
  Writeln(Lst,'Print Date         :',DateToStr(Date));
  Write(Lst,#15);
  Writeln(Lst,'------------------------------------------------------------------------------------------------------------------');
  Writeln(Lst,'|AR.|Bk.|___CURRENT BILLS____|______30 DAYS_______|______60 DAYS_______|____OVER 60 DAYS____|_______TOTAL________|');
  Writeln(Lst,'|   |   |Bills        Amount |Bills        Amount |Bills        Amount |Bills        Amount |Bills        Amount |');
  Writeln(Lst,'------------------------------------------------------------------------------------------------------------------');
  AreaSW := '';

  For I := 1 to R do
   begin

    If TAmount[I] = 0 then Continue;

    If AreaSW = '' then AreaSW := TArea[I];

    If TArea[I] <> AreaSW then
     begin
      AreaSW := TArea[I];
      Write(Lst,#27+'E');
      Writeln(Lst,'|Area T |',
                      PCurrentBills:5,
                      Format(PCurrentAmount,'##,###,###,##'),'|',
                      P30DaysBills:5,
                      Format(P30DaysAmount,'##,###,###,##'),'|',
                      P60DaysBills:5,
                      Format(P60DaysAmount,'##,###,###,##'),'|',
                      POver60DaysBills:5,
                      Format(POver60DaysAmount,'##,###,###,##'),'|',
                      PBills:5,
                      Format(PAmount,'##,###,###,##'),'|');
      Writeln(Lst,'------------------------------------------------------------------------------------------------------------------');
      Write(Lst,#27+'F');
      Inc(LineCount,2);

      PCurrentBills     := 0;
      PCurrentAmount    := 0;
      P30DaysBills      := 0;
      P30DaysAmount     := 0;
      P60DaysBills      := 0;
      P60DaysAmount     := 0;
      POver60DaysBills  := 0;
      POver60DaysAmount := 0;
      PBills            := 0;
      PAmount           := 0;
     end;

      Writeln(Lst,'|',TArea[I],'|',
                      TBook[I],'|',
                      TCurrentBills[I]:5,
                      Format(TCurrentAmount[I],'##,###,###,##'),'|',
                      T30DaysBills[I]:5,
                      Format(T30DaysAmount[I],'##,###,###,##'),'|',
                      T60DaysBills[I]:5,
                      Format(T60DaysAmount[I],'##,###,###,##'),'|',
                      TOver60DaysBills[I]:5,
                      Format(TOver60DaysAmount[I],'##,###,###,##'),'|',
                      TBills[I]:5,
                      Format(TAmount[I],'##,###,###,##'),'|');

      PCurrentBills     := PCurrentBills     + TCurrentBills[I];
      PCurrentAmount    := PCurrentAmount    + TCurrentAmount[I];
      P30DaysBills      := P30DaysBills      + T30DaysBills[I];
      P30DaysAmount     := P30DaysAmount     + T30DaysAmount[I];
      P60DaysBills      := P60DaysBills      + T60DaysBills[I];
      P60DaysAmount     := P60DaysAmount     + T60DaysAmount[I];
      POver60DaysBills  := POver60DaysBills  + TOver60DaysBills[I];
      POver60DaysAmount := POver60DaysAmount + TOver60DaysAmount[I];
      PBills            := PBills            + TBills[I];
      PAmount           := PAmount           + TAmount[I];

      GCurrentBills     := GCurrentBills     + TCurrentBills[I];
      GCurrentAmount    := GCurrentAmount    + TCurrentAmount[I];
      G30DaysBills      := G30DaysBills      + T30DaysBills[I];
      G30DaysAmount     := G30DaysAmount     + T30DaysAmount[I];
      G60DaysBills      := G60DaysBills      + T60DaysBills[I];
      G60DaysAmount     := G60DaysAmount     + T60DaysAmount[I];
      GOver60DaysBills  := GOver60DaysBills  + TOver60DaysBills[I];
      GOver60DaysAmount := GOver60DaysAmount + TOver60DaysAmount[I];
      GBills            := GBills            + TBills[I];
      GAmount           := GAmount           + TAmount[I];

   Inc(LineCount);
   If LineCount >= 50 then
    begin
      LineCount := 0;
      Inc(PageCount);
      Writeln(Lst,'------------------------------------------------------------------------------------------------------------------');
      Write(Lst,#12);
      Write(Lst,#18,#27+'P');
      Writeln(Lst,'Page ',PageCount);
      Writeln(lst,'SUMMARY OF COLLECTION WITH AGING');
      Writeln(lst,'Current Bill Month :',MonString(BillMonth.Text));
      Writeln(Lst,'Print Date         :',DateToStr(Date));
      Write(Lst,#15);
      Writeln(Lst,'------------------------------------------------------------------------------------------------------------------');
      Writeln(Lst,'|AR.|Bk.|___CURRENT BILLS____|______30 DAYS_______|______60 DAYS_______|____OVER 60 DAYS____|_______TOTAL________|');
      Writeln(Lst,'|   |   |Bills        Amount |Bills        Amount |Bills        Amount |Bills        Amount |Bills        Amount |');
      Writeln(Lst,'------------------------------------------------------------------------------------------------------------------');
    end;

   end;
  Writeln(Lst,'------------------------------------------------------------------------------------------------------------------');
  Writeln(Lst,'|Grand  |',
                  GCurrentBills:5,
                  Format(GCurrentAmount,'##,###,###,##'),'|',
                  G30DaysBills:5,
                  Format(G30DaysAmount,'##,###,###,##'),'|',
                  G60DaysBills:5,
                  Format(G60DaysAmount,'##,###,###,##'),'|',
                  GOver60DaysBills:5,
                  Format(GOver60DaysAmount,'##,###,###,##'),'|',
                  GBills:5,
                  Format(GAmount,'##,###,###,##'),'|');
  Write(Lst,#27+'F');
  Writeln(Lst,'------------------------------------------------------------------------------------------------------------------');
  Writeln(lst,#18);
  Writeln(lst,'Prepared by:               Chccked by:                Noted by:                ');
  Writeln(lst);
  Writeln(lst,JustStr(PreparedBy.Text,' ',25,0),'  ',
              JustStr(CheckedBy.Text,' ',25,0),'  ',
              JustStr(NotedBy.Text,' ',25,0));

  Writeln(lst,JustStr(Position1.Text,' ',25,0),'  ',
              JustStr(Position2.Text,' ',25,0),'  ',
              JustStr(Position3.Text,' ',25,0));
  Write(Lst,#12);
  CloseFile(Lst);
  CQ.Close;
  MessageDlg('Done......', mtInformation, [mbOK], 0);
  Gauge1.Progress := 0;
 end;
 Dispose(TAgingRecord);
end;


procedure TCollectionForm.CollByConsumerTypeButtonClick(Sender: TObject);
Var
RRateCode                                       : Array[1..6] of String[1];
RRateStr                                        : Array[1..6] of String[15];
RBillsCurrent                                   : Array[1..6] of Word;
RAmountCurrent                                  : Array[1..6] of Currency;
RTransformerRentalCurrent                       : Currency;
RUCNPCSDCurrent                                 : Currency;
RUCNPCSCCCurrent                                : Currency;
RUCDUSCCCurrent                                 : Currency;
RUCMECurrent                                    : Currency;
RUCETRCurrent                                   : Currency;
RUCECCurrent                                    : Currency;
RUCCSRCurrent                                   : Currency;
RTotalCurrent                                   : Currency;
RNetCurrent                                     : Currency;


RBillsArrears                                   : Array[1..6] of Word;
RAmountArrears                                  : Array[1..6] of Currency;
RTransformerRentalArrears                       : Currency;
RUCNPCSDArrears                                 : Currency;
RUCNPCSCCArrears                                : Currency;
RUCDUSCCArrears                                 : Currency;
RUCMEArrears                                    : Currency;
RUCETRArrears                                   : Currency;
RUCECArrears                                    : Currency;
RUCCSRArrears                                   : Currency;
RTotalArrears                                   : Currency;
RNetArrears                                     : Currency;
R                                               : Integer;

Function IMon(A : String) : String;
Var M : String;
begin
 M := '';
 try
 M := FormatDateTime('YYYYmm',StrToDate(copy(a,1,2)+'/01/'+ Copy(A,3,2)));
 except
 end;
 IMon := M;
end;

begin
  If BillMonth.Text = '' then
    begin
      ShowMessage('Please enter Current Bill Month');
      Exit;
    end;

  {Try
  AssignFile(Lst,'LPT1');
  Rewrite(Lst);
  except
   ShowMessage('Printer not Ready');
   Exit;
  end; }

  CQtmp.Close;
  CQtmp.ParamByName('billmonth').Text   := BillMonth.Text;
  CQtmp.ParamByName('year').Text        := Copy(BillMonth.Text,3,2);
  CQtmp.ParamByName('month').Text       := Copy(BillMonth.Text,1,2);
  CQtmp.ParamByName('DateFrom').AsDate  := FromDate.Date;
  CQtmp.ParamByName('DateTo').AsDate    := ToDate.Date;
  CQtmp.Open;

  CQtmp2.Close;
  CQtmp2.ParamByName('billmonth').Text    := BillMonth.Text;
  CQtmp2.ParamByName('year').Text         := Copy(BillMonth.Text,3,2);
  CQtmp2.ParamByName('month').Text        := Copy(BillMonth.Text,1,2);
  CQtmp2.ParamByName('DateFrom').AsDate   := FromDate.Date;
  CQtmp2.ParamByName('DateTo').AsDate     := ToDate.Date;
  CQtmp2.ParamByName('PreparedBy').Text   := PreparedBy.Text;
  CQtmp2.ParamByName('CheckedBy').Text    := CheckedBy.Text;
  CQtmp2.ParamByName('NotedBy').Text      := NotedBy.Text;
  CQtmp2.ParamByName('Position1').Text    := Position1.Text;
  CQtmp2.ParamByName('Position2').Text    := Position2.Text;
  CQtmp2.ParamByName('Position3').Text    := Position3.Text;

  CQtmp2.Open;

  CQ_report.ShowReport;
  exit;

  {
    Writeln(lst,JustStr(.Text,' ',25,0),'  ',
              JustStr(.Text,' ',25,0),'  ',
              JustStr(.Text,' ',25,0));

  Writeln(lst,JustStr(.Text,' ',25,0),'  ',
              JustStr(.Text,' ',25,0),'  ',
              JustStr(.Text,' ',25,0));
  }
  AssignFile(Lst,'LPT1');
  Rewrite(Lst);
  If IOResult <> 0 then
  begin
   ShowMessage('Printer not Ready');
   Exit;
  end;

  With BillingData do
   begin
    CQ.Close;
    CQ.ParamByName('DateFrom').AsDate := FromDate.Date;
    CQ.ParamByName('DateTo').AsDate   := ToDate.Date;
    CQ.Open;

    For R := 1 to 3 do
     begin
      RRateStr[R] := '';
      RBillsCurrent[R]   := 0;
      RAmountCurrent[R]  := 0;
      RBillsArrears[R]   := 0;
      RAmountArrears[R]  := 0;
     end;

     RRateStr[1]  := 'Residential    ';
     RRateStr[2]  := 'Low Voltage    ';
     RRateStr[3]  := 'High Voltage   ';

     RRateCode[1] := 'R';
     RRateCode[2] := 'L';
     RRateCode[3] := 'H';

    RTransformerRentalCurrent   := 0;
    RUCNPCSDCurrent             := 0;
    RUCNPCSCCCurrent            := 0;
    RUCDUSCCCurrent             := 0;
    RUCMECurrent                := 0;
    RUCETRCurrent               := 0;
    RUCECCurrent                := 0;
    RUCCSRCurrent               := 0;
    RTotalCurrent               := 0;

    RTransformerRentalArrears   := 0;
    RUCNPCSDArrears             := 0;
    RUCNPCSCCArrears            := 0;
    RUCDUSCCArrears             := 0;
    RUCMEArrears                := 0;
    RUCETRArrears               := 0;
    RUCECArrears                := 0;
    RUCCSRArrears               := 0;
    RTotalArrears               := 0;

    Gauge1.Progress := 0;
    Gauge1.MinValue := 0;
    Gauge1.MaxValue := CQ.RecordCount;

    CQ.First;
    While not CQ.Eof do
    begin
    Gauge1.AddProgress(1);
    Application.ProcessMessages;

    For R := 1 to 3 do
     begin
      If RRateCode[R] = CQ.FieldByName('WRatecode').Text then
        begin
        If imon(CQ.FieldByName('billmonth').Text) <= IMon(BillMonth.Text) then
          begin

           If Copy(CQ.FieldByName('billmonth').Text,3,2) = Copy(BillMonth.Text,3,2) then
            begin
              RBillsCurrent[R]            := RBillsCurrent[R]            + CQ.FieldByName('TotalAccount').AsInteger;
              RAmountCurrent[R]           := RAmountCurrent[R]           + CQ.FieldByName('TotalAmount').AsCurrency;
              RTotalCurrent               := RTotalCurrent               + CQ.FieldByName('TotalAmount').AsCurrency;
              RTransformerRentalCurrent   := RTransformerRentalCurrent   + CQ.FieldByName('TTransformerRental').AsCurrency;
              RUCNPCSDCurrent             := RUCNPCSDCurrent             + CQ.FieldByName('TUCNPCSD').AsCurrency;
              RUCNPCSCCCurrent            := RUCNPCSDCurrent             + CQ.FieldByName('TUCNPCSD').AsCurrency;
              RUCDUSCCCurrent             := RUCDUSCCCurrent             + CQ.FieldByName('TUCDUSCC').AsCurrency;
              RUCMECurrent                := RUCMECurrent                + CQ.FieldByName('TUCME').AsCurrency;
              RUCETRCurrent               := RUCETRCurrent               + CQ.FieldByName('TUCETR').AsCurrency;
              RUCECCurrent                := RUCECCurrent                + CQ.FieldByName('TUCEC').AsCurrency;
              RUCCSRCurrent               := RUCCSRCurrent               + CQ.FieldByName('TVAT').AsCurrency;
            end
            //RUCETRCurrent
            else
            begin
              RBillsArrears[R]            := RBillsArrears[R]            + CQ.FieldByName('TotalAccount').AsInteger;
              RAmountArrears[R]           := RAmountArrears[R]           + CQ.FieldByName('TotalAmount').AsCurrency;
              RTotalArrears               := RTotalArrears               + CQ.FieldByName('TotalAmount').AsCurrency;
              RTransformerRentalArrears   := RTransformerRentalArrears   + CQ.FieldByName('TTransformerRental').AsCurrency;
              RUCNPCSDArrears             := RUCNPCSDArrears             + CQ.FieldByName('TUCNPCSD').AsCurrency;
              RUCNPCSCCArrears            := RUCNPCSDArrears             + CQ.FieldByName('TUCNPCSD').AsCurrency;
              RUCDUSCCArrears             := RUCDUSCCArrears             + CQ.FieldByName('TUCDUSCC').AsCurrency;
              RUCMEArrears                := RUCMEArrears                + CQ.FieldByName('TUCME').AsCurrency;
              RUCETRArrears               := RUCETRArrears               + CQ.FieldByName('TUCETR').AsCurrency;
              RUCECArrears                := RUCECArrears                + CQ.FieldByName('TUCEC').AsCurrency;
              RUCCSRArrears               := RUCCSRArrears               + CQ.FieldByName('TVAT').AsCurrency;
            end;
          end;
        end;
     end;
    CQ.Next;
    end;

    RNetCurrent  := RTotalCurrent - (RTransformerRentalCurrent   +
                                     RUCNPCSDCurrent             +
                                     RUCNPCSCCCurrent            +
                                     RUCDUSCCCurrent             +
                                     RUCMECurrent                +
                                     RUCETRCurrent               +
                                     RUCECCurrent                +
                                     RUCCSRCurrent);

    RNetArrears  := RTotalArrears - (RTransformerRentalArrears   +
                                     RUCNPCSDArrears             +
                                     RUCNPCSCCArrears            +
                                     RUCDUSCCArrears             +
                                     RUCMEArrears                +
                                     RUCETRArrears               +
                                     RUCECArrears                +
                                     RUCCSRArrears);

  if (MessageDlg('Set printer on.... Click OK to print', mtWarning, [mbOK, mbCancel], 0) = mrCancel) then
    begin
     CQ.Close;
     CloseFile(Lst);
     exit;
    end;

  Write(Lst,#18,#27+'P');
  Writeln(Lst);
  Writeln(Lst);
  Writeln(Lst);
  Writeln(Lst);
  Writeln(lst,'SUMMARY OF COLLECTION BY CONSUMER TYPE ');
  Writeln(lst,'Current Bill Month :',MonString(BillMonth.Text));
  Writeln(Lst,'Print Date         :',DateToStr(Date));
  Writeln(Lst);
  Writeln(Lst,'-------------------------------------------------------------------------------');
  Writeln(Lst,'|               |________CURRENT YEAR__________|________PREVIOUS YEAR_________|');
  Writeln(Lst,'| Consumer Type |    Total Bills        Amount |    Total Bills        Amount |');
  Writeln(Lst,'-------------------------------------------------------------------------------');
  For R := 1 to 3 do
   begin
    Writeln(Lst,'|',RRateStr[R],'|',RBillsCurrent[R]:15,Format(RAmountCurrent[R],'##,###,###.##'),
                                '|',RBillsArrears[R]:15,Format(RAmountArrears[R],'##,###,###.##'),'|');
   end;
  Writeln(Lst,'-------------------------------------------------------------------------------');
  Writeln(Lst,'|Gross Total     ',RBillsCurrent[1]+
                                  RBillsCurrent[2]+
                                  RBillsCurrent[3]+
                                  RBillsCurrent[4]+
                                  RBillsCurrent[5]+
                                  RBillsCurrent[6]:15,
                                  Format(RTotalCurrent,'##,###,###.##'),'|',
                                  RBillsArrears[1]+
                                  RBillsArrears[2]+
                                  RBillsArrears[3]+
                                  RBillsArrears[4]+
                                  RBillsArrears[5]+
                                  RBillsArrears[6]:15,
                                  Format(RTotalArrears,'##,###,###.##'),'|');
  Writeln(Lst,'-------------------------------------------------------------------------------');
  Writeln(Lst,'LESS');
  Writeln(Lst,'|Transformer Rental            |',Format(RTransformerRentalCurrent,'##,###,###.##'),'|               ',
                                                 Format(RTransformerRentalArrears,'##,###,###.##'),'|');
  Writeln(Lst,'|NPC Stranded Debts            |',Format(RUCNPCSDCurrent,'##,###,###.##'),'|               ',
                                                 Format(RUCNPCSDArrears,'##,###,###.##'),'|');
  Writeln(Lst,'|NPC Stranded Contract Cost    |',Format(RUCNPCSCCCurrent,'##,###,###.##'),'|               ',
                                                 Format(RUCNPCSCCArrears,'##,###,###.##'),'|');
  Writeln(Lst,'|DU Stranded Contract Cost     |',Format(RUCDUSCCCurrent,'##,###,###.##'),'|               ',
                                                 Format(RUCDUSCCArrears,'##,###,###.##'),'|');
  Writeln(Lst,'|Missionary Electrification    |',Format(RUCMECurrent,'##,###,###.##'),'|               ',
                                                 Format(RUCMEArrears,'##,###,###.##'),'|');
  Writeln(Lst,'|Equal of Taxes and Royalties  |',Format(RUCETRCurrent,'##,###,###.##'),'|               ',
                                                 Format(RUCETRArrears,'##,###,###.##'),'|');
  Writeln(Lst,'|Environment                   |',Format(RUCECCurrent,'##,###,###.##'),'|               ',
                                                 Format(RUCECArrears,'##,###,###.##'),'|');
  Writeln(Lst,'|Expanded Value Added Tax      |',Format(RUCCSRCurrent,'##,###,###.##'),'|               ',
                                                 Format(RUCCSRArrears,'##,###,###.##'),'|');
  Writeln(Lst,'-------------------------------------------------------------------------------');
  Writeln(Lst,'|Grand Total                   |',Format(RNetCurrent,'##,###,###.##'),'|               ',
                                                Format(RNetArrears,'##,###,###.##'),'|');

  Writeln(Lst,'-------------------------------------------------------------------------------');
  Writeln(Lst);
  Writeln(lst);
  Writeln(lst,'Prepared by:               Chccked by:                Noted by:                ');
  Writeln(lst);
  Writeln(lst,JustStr(PreparedBy.Text,' ',25,0),'  ',
              JustStr(CheckedBy.Text,' ',25,0),'  ',
              JustStr(NotedBy.Text,' ',25,0));

  Writeln(lst,JustStr(Position1.Text,' ',25,0),'  ',
              JustStr(Position2.Text,' ',25,0),'  ',
              JustStr(Position3.Text,' ',25,0));

  Write(Lst,#12);

CQ.Close;
ShowMessage('Done.');
Gauge1.Progress := 0;
CloseFile(Lst);
end;
end;

procedure TCollectionForm.CollectionSummary1Click(Sender: TObject);
begin
  FromDate.DateTime  := StartOfTheMonth(Now);
  ToDate.DateTime    := EndOfTheMonth(Now);
  Panel9.Left        := 60;
  Panel9.Top         := 39;
  Panel9.Visible     := True;
  Panel9.BringToFront;
end;

procedure TCollectionForm.EVATSummary1Click(Sender: TObject);
begin
    If not assigned(EVATSummaryForm) then
    EVATSummaryForm := TEVATSummaryForm.Create(Application);
    EVATSummaryForm.Show;
    EVATSummaryForm.DateFrom.SetFocus;
end;

procedure TCollectionForm.CurrentCollectionPrintClick(Sender: TObject);
Var
PageCount,LineCount,DetailCount,HeadSW : Word;
TArea                        : Array[1..30] of String[3];
TCollectionAmount            : Array[1..30] of Currency;
TCollectionTransformerRental : Array[1..30] of Currency;
TCollectionLLP               : Array[1..30] of Currency;
TCollectionUCNPCSD           : Array[1..30] of Currency;
TCollectionUCNPCSCC          : Array[1..30] of Currency;
TCollectionUCDUSCC           : Array[1..30] of Currency;
TCollectionUCME              : Array[1..30] of Currency;
TCollectionUCETR             : Array[1..30] of Currency;
TCollectionUCEC              : Array[1..30] of Currency;
TCollectionUCCSR             : Array[1..30] of Currency;
TCollectionKWHR              : Array[1..30] of Currency;
TCollectionVAT               : Array[1..30] of Currency;
TCollectionVATDist           : Array[1..30] of Currency;
TCollectionVATGenCO          : Array[1..30] of Currency;
TCollectionVATTransCO        : Array[1..30] of Currency;
TCollectionVATSystemLoss     : Array[1..30] of Currency;

TAmount                      : Currency ;
TTransformerRental           : Currency ;
TLLP                         : Currency ;
TUCNPCSD                     : Currency ;
TUCNPCSCC                    : Currency ;
TUCDUSCC                     : Currency ;
TUCME                        : Currency ;
TUCETR                       : Currency ;
TUCEC                        : Currency ;
TUCCSR                       : Currency ;
TKwhr                        : Currency ;

TVAT                         : Currency ;
TVATDist                     : Currency ;
TVATGenCO                    : Currency ;
TVATTransCO                  : Currency ;
TVATSystemLoss               : Currency ;

XRent,LLP                    : Currency;
PageXRent,PageLLP            : Currency;
GrandXRent,GrandLLP          : Currency;

PageTotal                    : Currency;
GrandTotal                   : Currency;
AmountRemitted               : Real;
Check                        : Integer;
Difference                   : Currency;
I                            : Integer;
StartPage                    : Integer;


Procedure Heading;
begin
Write(Lst,#18,#27+'P');
writeln(lst,'Page #          : ',PageCount);
writeln(lst,'Report Name     : CURRENT COLLECTION REPORT');
writeln(lst,'Cutoff Date     : ',DateToStr(DateCutOff.Date));
Write(Lst,#15);
Writeln(lst,'---------------------------------------------------------------------------------------------------------');
Writeln(lst,'| No.  ACCT #       Consumer Name                  Bill Num        X-Rent         LLP        Amount BMon|');
Writeln(lst,'---------------------------------------------------------------------------------------------------------');
end;

begin
if CheckBox1.Checked = false then
begin

    StartPage := StrToInt(Edit1.Text);

    ShowMessage('Set Printer on.....');

    if ioresult <> 0 then
    begin
    end;

    Try
    AssignFile(Lst,'LPT1');
    Rewrite(Lst);
    except
     ShowMessage('Printer not Ready');
     Exit;
    end;

      CCollection.Close;
      CCollection.ParamByName('area').text        := area.Text;
      CCollection.ParamByName('billmonth').text   := Edit4.Text;
      CCollection.ParamByName('datepaid').AsDate  := DateCutOff.Date;
      CCollection.Open;

      If CCollection.IsEmpty then
        begin
         MessageDlg('No records to print', mtInformation, [mbOK], 0);
         exit;
        end;

      CCollection.First;

      Gauge1.Progress := 0;
      Gauge1.MinValue := 0;
      Gauge1.MaxValue := CCollection.RecordCount;

      LineCount                    := 0;
      HeadSw                       := 0;
      DetailCount                  := 0;
      PageCount                    := 1;

      For I := 1 to 30 do
      begin
        TArea[I]                        := '';
        TCollectionAmount[I]            := 0;
        TCollectionTransformerRental[I] := 0;
        TCollectionLLP[I]               := 0;
        TCollectionUCNPCSD[I]           := 0;
        TCollectionUCNPCSCC[I]          := 0;
        TCollectionUCDUSCC[I]           := 0;
        TCollectionUCME[I]              := 0;
        TCollectionUCETR[I]             := 0;
        TCollectionUCEC[I]              := 0;
        TCollectionUCCSR[I]             := 0;
        TCollectionKwhr[I]              := 0;
        TCollectionVAT[I]               := 0;
        TCollectionVATDist[I]           := 0;
        TCollectionVATGenCO[I]          := 0;
        TCollectionVATTransCO[I]        := 0;
        TCollectionVATSystemLoss[I]     := 0;
      end;

      TAmount             := 0;
      TTransformerRental  := 0;
      TLLP                := 0;
      TUCNPCSD            := 0;
      TUCNPCSCC           := 0;
      TUCDUSCC            := 0;
      TUCME               := 0;
      TUCETR              := 0;
      TUCEC               := 0;
      TUCCSR              := 0;
      TKwhr               := 0;
      TVAT                := 0;
      TVATDist            := 0;
      TVATGenCO           := 0;
      TVATTransCO         := 0;
      TVATSystemLoss      := 0;

      TArea[01]  := '001';
      TArea[02]  := '002';
      TArea[03]  := '003';
      TArea[04]  := '004';
      TArea[05]  := '005';
      TArea[06]  := '006';
      TArea[07]  := '007';
      TArea[08]  := '008';
      TArea[09]  := '009';
      TArea[10]  := '010';
      TArea[11]  := '011';
      TArea[12]  := '012';
      TArea[13]  := '013';
      TArea[14]  := '014';
      TArea[15]  := '015';
      TArea[16]  := '016';
      TArea[17]  := '017';
      TArea[18]  := '018';
      TArea[19]  := '019';
      TArea[20]  := '020';
      TArea[21]  := '021';
      TArea[22]  := '022';
      TArea[23]  := '023';
      TArea[24]  := '024';
      TArea[25]  := '025';
      TArea[26]  := '026';
      TArea[27]  := '027';
      TArea[28]  := '028';
      TArea[29]  := '029';
      TArea[30]  := '030';

      PageTotal  := 0;
      GrandTotal := 0;
      PageXRent  := 0;
      PageLLP    := 0;
      GrandXRent := 0;
      GrandLLP   := 0;

      CCollection.First;

      while not CCollection.Eof do
       begin
       Gauge1.AddProgress(1);
       Application.ProcessMessages;

        //===========================================
        //===========================================
         if CheckBox1.Checked = false then
         If HeadSW = 0 then
           begin
             HeadSW := 1;
             Heading;
           end;

          Inc(DetailCount);

          LLP   := 0;
          XRent := 0;

          If CCollectionSequence.Text = 'R' then
          LLP   := CCollectionTransformerRental.AsCurrency else
          XRent := CCollectionTransformerRental.AsCurrency;


         if CheckBox1.Checked = false then
         if PageCount >= StartPage then
          Writeln(Lst,'| ',DetailCount:3,'. ',
                      JustStr(CCollectionAccountNumber.Text,' ',10,0),   '-',
                      JustStr(CCollectionSequence.Text,' ',1,0),         ' ',
                      Juststr(CCollectionName.Text,' ',30,0),            ' ',
                      Juststr(CCollectionReceiptNumber.Text,' ',10,0),   ' ',
                      Format(XRent,'###,###.##'),
                      Format(LLP,'###,###.##'),
                      Format(CCollectionTotal.AsCurrency,'#,###,###.##'),
                      Juststr(CCollectionBillMonth.Text,' ',04,0),       '|');

          For I := 1 to 30 do
          begin
          If ((TArea[I] = CCollectionArea.Text)) or
             ((TArea[I] = '0'+CCollectionArea.Text)) then
              begin
                TCollectionAmount[I]             := TCollectionAmount[I] + CCollectionTotal.AsCurrency;

                If CCollectionSequence.Text <> 'R' then
                TCollectionTransformerRental[I]  := TCollectionTransformerRental[I] + CCollectionTransformerRental.AsCurrency else
                TCollectionLLP[I]                := TCollectionLLP[I] + CCollectionTransformerRental.AsCurrency;

                TCollectionUCNPCSD[I]            := TCollectionUCNPCSD[I] + CCollectionUCNPCSD.AsCurrency;
                TCollectionUCNPCSCC[I]           := TCollectionUCNPCSCC[I] + CCollectionUCNPCSCC.AsCurrency;
                TCollectionUCDUSCC[I]            := TCollectionUCDUSCC[I] + CCollectionUCDUSCC.AsCurrency;
                TCollectionUCME[I]               := TCollectionUCME[I] + CCollectionUCME.AsCurrency;
                TCollectionUCETR[I]              := TCollectionUCETR[I] + CCollectionSecurity.AsCurrency;
                TCollectionUCEC[I]               := TCollectionUCEC[I] + CCollectionUCEC.AsCurrency;
                TCollectionKWHR[I]               := TCollectionKWHR[I] + CCollectionKilowattHour.AsCurrency;
                TCollectionVAT[I]                := TCollectionVAT[I] + CCollectionVAT.AsCurrency;
                TCollectionVATDist[I]            := TCollectionVATDist[I] + CCollectionVATDist.AsCurrency;
                TCollectionVATGenCO[I]           := TCollectionVATGenCO[I] + CCollectionVATGenCO.AsCurrency;
                TCollectionVATTransCO[I]         := TCollectionVATTransCO[I] + CCollectionVATTransCO.AsCurrency;
                TCollectionVATSystemLoss[I]      := TCollectionVATSystemLoss[I] + CCollectionVATSystemLossGenCO.AsCurrency;

                TAmount             := TAmount + CCollectionTotal.AsCurrency;

                If CCollectionSequence.Text <> 'R' then
                TTransformerRental  := TTransformerRental + CCollectionTransformerRental.AsCurrency else
                TLLP                := TLLP + CCollectionTransformerRental.AsCurrency;

                TUCNPCSD            := TUCNPCSD + CCollectionUCNPCSD.AsCurrency;
                TUCNPCSCC           := TUCNPCSCC + CCollectionUCNPCSCC.AsCurrency;
                TUCDUSCC            := TUCDUSCC + CCollectionUCDUSCC.AsCurrency;
                TUCME               := TUCME + CCollectionUCME.AsCurrency;
                TUCETR              := TUCETR + CCollectionSecurity.AsCurrency;
                TUCEC               := TUCEC + CCollectionUCEC.AsCurrency;
                TKWHR               := TKWHR + CCollectionKilowattHour.AsCurrency;
                TVAT                := TVAT + CCollectionVAT.AsCurrency;
                TVATDist            := TVATDist + CCollectionVATDist.AsCurrency;
                TVATGenCO           := TVATGenCO + CCollectionVATGenCO.AsCurrency;
                TVATTransCO         := TVATTransCO + CCollectionVATTransCO.AsCurrency;
                TVATSystemLoss      := TVATSystemLoss + CCollectionVATSystemLossGenCO.AsCurrency;

              end;
          end;

          PageTotal                    := PageTotal + CCollectionTotal.AsCurrency;
          GrandTotal                   := GrandTotal + CCollectionTotal.AsCurrency;

          PageXRent                    := PageXRent + XRent;
          PageLLP                      := PageLLP + LLP;
          GrandXRent                   := GrandXRent + XRent;
          GrandLLP                     := GrandLLP + LLP;

         Inc(LineCount);
         If LineCount = 50 then
           begin
            HeadSW    := 0;
            LineCount := 0;
            Inc(PageCount);
            if CheckBox1.Checked = false then
              if PageCount > StartPage then
                begin
                  Writeln(lst,'---------------------------------------------------------------------------------------------------------');
                  Writeln(lst,'|                                                  Page Total ',Format(PageXRent,'###,###.##'),
                                                                                               Format(PageLLP,'###,###.##'),
                                                                                               Format(PageTotal,'#,###,###.##'),'    |');
                  Writeln(lst,'---------------------------------------------------------------------------------------------------------');
                  Write(Lst,#12);
                end;

            PageTotal := 0;
            PageXRent := 0;
            PageLLP   := 0;

           end;
       CCollection.Next;
       end;
    //=========================================
    //=========================================

  if CheckBox1.Checked = False then
  If LineCount > 0 then
   begin
   Writeln(lst,'---------------------------------------------------------------------------------------------------------');
   Writeln(lst,'|                                                  Page Total ',Format(PageXRent,'###,###.##'),
                                                                                Format(PageLLP,'###,###.##'),
                                                                                Format(PageTotal,'#,###,###.##'),'    |');
   end;

  Difference := AmountRemitted - GrandTotal;

  if CheckBox1.Checked = False then
  begin
    Writeln(lst,'---------------------------------------------------------------------------------------------------------');
    Writeln(lst,'|                                                 Grand Total ',Format(GrandXRent,'###,###.##'),
                                                                                 Format(GrandLLP,'###,###.##'),
                                                                                 Format(GrandTotal,'#,###,###.##'),'    |');
    Writeln(lst,'---------------------------------------------------------------------------------------------------------');
    Writeln(lst);
  end;

  if CheckBox1.Checked = False then Write(Lst,#12);

  Write(lst,#27+'M');
  writeln(lst,'Report Name     : ADVANCE COLLECTION REPORT SUMMARY- '+Area.Text);
  writeln(lst,'Cutoff Date     : ',DateToStr(DateCutOff.Date));
  Writeln(Lst,'Other Charges Breakdown',#15);
  Writeln(lst,'------------------------------------------------------------------------------------------------------------------------------');
  Writeln(lst,'|AR.|        Total | Missionary |       RFSC | Environment| Transformer|        LLP |       EVAT |          Net | Kilowatt Hr|');
  Writeln(lst,'|   |       Amount |      Elec. |            |            |      Rental|            |            |              |            |');
  Writeln(lst,'------------------------------------------------------------------------------------------------------------------------------');
  For I := 1 to 30 do
  If TCollectionAmount[I] > 0 then
  Writeln(lst,'|',TArea[I],' ',
              Format(TCollectionAmount[I],'@,###,###.##'),'|',
  //            Format(TCollectionUCNPCSD[I] ,'###,###.##'),'|',
  //            Format(TCollectionUCNPCSCC[I] ,'###,###.##'),'|',
  //            Format(TCollectionUCDUSCC[I] ,'###,###.##'),'|',
              Format(TCollectionUCME[I] ,'###,###.##'),'|',
              Format(TCollectionUCETR[I] ,'###,###.##'),'|',
              Format(TCollectionUCEC[I] ,'###,###.##'),'|',
              Format(TCollectionTransformerRental[I] ,'###,###.##'),'|',
              Format(TCollectionLLP[I] ,'###,###.##'),'|',
              Format(TCollectionVATGenCO[I] +
                     TCollectionVATTransCO[I] +
                     TCollectionVATSystemLoss[I] +
                     TCollectionVATDist[I],'###,###.##'),'|',
              Format(TCollectionAmount[I]-
                    (TCollectionUCNPCSD[I] +
                     TCollectionUCNPCSCC[I] +
                     TCollectionUCDUSCC[I] +
                     TCollectionUCME[I] +
                     TCollectionUCETR[I] +
                     TCollectionUCEC[I] +
                     TCollectionTransformerRental[I] +
                     TCollectionLLP[I]+
                     TCollectionVATGenCO[I] +
                     TCollectionVATTransCO[I] +
                     TCollectionVATSystemLoss[I] +
                     TCollectionVATDist[I]),'#,###,###.##'),'|',
              Format(TCollectionKWHR[I] ,'###,###.##'),'|');
  Writeln(lst,'------------------------------------------------------------------------------------------------------------------------------');
  Writeln(lst,'Total',
              Format(TAmount,'#,###,###.##'),'|',
  //            Format(TUCNPCSD ,'###,###.##'),'|',
  //            Format(TUCNPCSCC ,'###,###.##'),'|',
  //            Format(TUCDUSCC ,'###,###.##'),'|',
              Format(TUCME ,'###,###.##'),'|',
              Format(TUCETR ,'###,###.##'),'|',
              Format(TUCEC ,'###,###.##'),'|',
              Format(TTransformerRental ,'###,###.##'),'|',
              Format(TLLP ,'###,###.##'),'|',
              Format(TVATGenCO +
                     TVATTransCO +
                     TVATSystemLoss +
                     TVATDist,'###,###.##'),'|',
              Format(TAmount-
                    (TUCNPCSD +
                     TUCNPCSCC +
                     TUCDUSCC +
                     TUCME +
                     TUCETR +
                     TUCEC +
                     TUCCSR +
                     TTransformerRental +
                     TLLP+
                     TVATGenCO +
                     TVATTransCO +
                     TVATSystemLoss +
                     TVATDist),'#,###,###.##'),'|',
              Format(TKWHR ,'###,###.##'),'|');
  Writeln(lst,'------------------------------------------------------------------------------------------------------------------------------');
  Writeln(Lst);
  Writeln(Lst,#27+'P',#18);
  Writeln(Lst,'VAT Breakdown');
  Writeln(lst,'---------------------------------------------------------------------');
  Writeln(lst,'|AR.|        VAT |        VAT |        VAT |        VAT |        VAT |');
  Writeln(lst,'|   |      GenCO |    TransCO |System Loss |       Dist |      Total |');
  Writeln(lst,'----------------------------------------------------------------------');
  For I := 1 to 30 do
  If TCollectionAmount[I] > 0 then
  Writeln(lst,'|',TArea[I],' ',
              Format(TCollectionVATGenco[I],'###,###.##'),'|',
              Format(TCollectionVATTransCO[I] ,'###,###.##'),'|',
              Format(TCollectionVATSystemLoss[I] ,'###,###.##'),'|',
              Format(TCollectionVATDist[I] ,'###,###.##'),'|',
              Format(TCollectionVATGenCO[I] +
                     TCollectionVATTransCO[I] +
                     TCollectionVATSystemLoss[I] +
                     TCollectionVATDist[I],'###,###.##'),'|');
  Writeln(lst,'----------------------------------------------------------------------');
  Writeln(lst,'Total',
              Format(TVATGenCO,'###,###.##'),'|',
              Format(TVATTransCO,'###,###.##'),'|',
              Format(TVATSystemLoss ,'###,###.##'),'|',
              Format(TVATDist ,'###,###.##'),'|',
              Format(TVATGenCO +
                     TVATTransCO +
                     TVATSystemLoss +
                     TVATDist,'###,###.##'),'|');
  Writeln(lst,'----------------------------------------------------------------------');
  Write(lst,#12);
  CloseFile(Lst);
  ShowMessage('Done.');
end
else
begin
   //===============================
   //===============================
   //Advance Summary Report=========
   NetCollectionAdv.MacroByName('All').Active  := false;
   NetCollectionAdv.MacroByName('area').Active := false;
   netCollSum.MacroByName('All').Active        := false;
   netCollSum.MacroByName('area').Active       := false;

   if  Area.Text='A' then
   begin
    NetCollectionAdv.MacroByName('All').Active  := true;
    netCollSum.MacroByName('All').Active        := true;
   end
   else
   begin
    NetCollectionAdv.MacroByName('area').Active := true;
    netCollSum.MacroByName('area').Active       := true;
   end;

   NetCollectionAdv.Close;
   NetCollectionAdv.ParamByName('datepaid').AsDate := DateCutOff.Date;
   NetCollectionAdv.ParamByName('billmonth').Text  := Edit4.Text;
   if  Area.Text<>'A' then
   NetCollectionAdv.ParamByName('area').Text       := Area.Text;
   NetCollectionAdv.Open;

   netCollSum.Close;
   netCollSum.ParamByName('datepaid').AsDate := DateCutOff.Date;
   netCollSum.ParamByName('billmonth').Text  := Edit4.Text;
   if  Area.Text<>'A' then
   netCollSum.ParamByName('area').Text       := Area.Text;
   netCollSum.Open;

   NetColl_Rep.ShowReport;
   //================================
   //================================
end;
end;

procedure TCollectionForm.CashReceiptDownloader1Click(Sender: TObject);
begin
  If not assigned(CashReceiptDownloadForm) then
  CashReceiptDownloadForm := TCashReceiptDownloadForm.Create(Application);
  CashReceiptDownloadForm.Show;
end;

procedure TCollectionForm.CloseBClick(Sender: TObject);
begin
   Panel8.Visible := False;
end;

procedure TCollectionForm.AdvanceCollectionReport1Click(Sender: TObject);
begin
  Panel8.Left    := 179;
  Panel8.Top     := 137;
  Panel8.Visible := True;
  Panel8.BringToFront;
  DateCutOff.Date := now;
  area.SetFocus;
end;

procedure TCollectionForm.CollCloseClick(Sender: TObject);
begin
  Panel9.Visible := False;
end;

procedure TCollectionForm.RadioGroup2Click(Sender: TObject);
begin
  Case RadioGroup2.ItemIndex of
   0 : begin
        PreparedBy.Text := 'ALMA O. CONTRIVIDA';
        Position1.Text  := 'Billing Section Head';

        CheckedBy.Text  := 'ISIDRA E. PAGENTE';
        Position2.Text  := 'Chief Billing / LAN Division';

        NotedBy.Text    := 'LEONORA I. TIMTIM';
        Position3.Text  := 'Consumer''s Account Mgr.';
       end;

   1 : begin
        PreparedBy.Text := 'CITA T. NATAA';
        Position1.Text  := 'Billing & Collection Head';

        CheckedBy.Text  := '';
        Position2.Text  := '';

        NotedBy.Text    := 'ENGR. ALEC A. CANTILA';
        Position3.Text  := 'Area Office Mgr.';
       end;

   2 : begin
        PreparedBy.Text := 'NOEL BATSKI';
        Position1.Text  := 'Encoder';

        CheckedBy.Text  := 'CARMELITA D. BAUGBOG';
        Position2.Text  := 'Billing & Collection Head';

        NotedBy.Text    := 'ROMEO T. CULANCULAN';
        Position3.Text  := 'Area Office Mgr.';
       end;

   3 : begin
        PreparedBy.Text := 'MARITH N. LIM';
        Position1.Text  := 'Encoder';

        CheckedBy.Text  := 'BEATRIZ A. CABICAL';
        Position2.Text  := 'Billing & Collection Head';

        NotedBy.Text    := 'ENGR. ELMER B. DIGAMON';
        Position3.Text  := 'Area Office Mgr.';
       end;
  end;
end;

procedure TCollectionForm.FormShow(Sender: TObject);
begin
  DateFrom.Date := StartOfTheMonth(now);
  DateTo.Date   := EndOfTheMonth(now);
end;

procedure TCollectionForm.MFSRSheetD1Click(Sender: TObject);
begin
  If not assigned(FSRMain) then
  FSRMain := TFSRMain.Create(Application);
  FSRMain.Show;
end;

procedure TCollectionForm.ViewCollectionbyCollectorORNumberDate1Click(
  Sender: TObject);
begin
  Panel7.Left    := 0;
  Panel7.Top     := 8;
  Panel7.Visible := True;
  Panel7.BringToFront;
  ViewDate.Date  := Now;
end;

procedure TCollectionForm.DsFancyButton1Click(Sender: TObject);
begin
  TotalCollection.Close;
  TotalCollection.ParamByName('datepaid').AsDate := ViewDate.Date;
  TotalCollection.Open;
end;

procedure TCollectionForm.DsFancyButton2Click(Sender: TObject);
begin
  Panel7.Visible := False;
  TotalCollection.Close;
end;

procedure TCollectionForm.PDJSillyLabel4Click(Sender: TObject);
begin
  If ApplyDate.Checked then
    begin
     GroupCollectionOption1.Close;
     GroupCollectionOption1.ParamByName('collectorcode').Text  := SearchStr.Text+'%';
     GroupCollectionOption1.ParamByName('datefrom').AsDate     := DateFrom.Date;
     GroupCollectionOption1.ParamByName('dateto').AsDate       := DateTo.Date;
     GroupCollectionOption1.Open;
     DSGroupCollection.DataSet := GroupCollectionOption1;
    end else
    begin
     GroupCollectionOption2.Close;
     GroupCollectionOption2.ParamByName('collectorcode').Text := SearchStr.Text+'%';
     GroupCollectionOption2.Open;
     DSGroupCollection.DataSet := GroupCollectionOption2;
    end;
end;

end.
