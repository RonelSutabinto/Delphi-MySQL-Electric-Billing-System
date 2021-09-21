unit collectionschedule;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBAccess, MyAccess, MemDS, StdCtrls, Grids, DBGrids, CRGrid,
  ToolWin, ComCtrls, PDJButton, ExtCtrls, DBCtrls, NxEdit, QuickRpt,
  QRCtrls, Menus;

type
  TCollectionScheduleForm = class(TForm)
    NewCollectionDate: TMyQuery;
    CreateCollSked: TMyQuery;
    MyConnection1: TMyConnection;
    CreateMissingBills: TMyQuery;
    DateQ: TMyQuery;
    DateQdatepaid: TDateField;
    IssuedBills: TMyQuery;
    dsDateQ: TDataSource;
    collsked: TMyQuery;
    collskedidcollsked: TLargeintField;
    collskedcollectorcode: TStringField;
    collskeddatepaid: TDateField;
    collskedbatch: TStringField;
    collskedname: TStringField;
    collskedCashierOR: TStringField;
    dscollsked: TDataSource;
    dsIssuedBills: TDataSource;
    MBills: TMyQuery;
    MBillsidmbills: TIntegerField;
    MBillsDocument: TStringField;
    MBillsCode: TFloatField;
    MBillsArea: TStringField;
    MBillsBook: TStringField;
    MBillsAccountNumber: TStringField;
    MBillsName: TStringField;
    MBillsBillMonth: TStringField;
    MBillsKilowattHour: TFloatField;
    MBillsAmount: TFloatField;
    MBillsCollectorCode: TStringField;
    MBillsDateIssued: TDateField;
    MBillsBatch: TStringField;
    dsMBills: TDataSource;
    Panel1: TPanel;
    Bevel1: TBevel;
    Label2: TLabel;
    DBText1: TDBText;
    Label3: TLabel;
    Label4: TLabel;
    DBText2: TDBText;
    Label5: TLabel;
    Label6: TLabel;
    DBText3: TDBText;
    DBText4: TDBText;
    Label7: TLabel;
    Label8: TLabel;
    DBText5: TDBText;
    DBText6: TDBText;
    Label9: TLabel;
    Label10: TLabel;
    DBText7: TDBText;
    DBText8: TDBText;
    DBText9: TDBText;
    Label11: TLabel;
    Label12: TLabel;
    DBText10: TDBText;
    Label13: TLabel;
    DBText11: TDBText;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    CRDBGrid1: TCRDBGrid;
    CRDBGrid2: TCRDBGrid;
    CRDBGrid4: TCRDBGrid;
    PDJButton1: TPDJButton;
    PDJButton2: TPDJButton;
    PDJButton3: TPDJButton;
    PDJButton4: TPDJButton;
    PDJButton5: TPDJButton;
    PDJButton6: TPDJButton;
    PDJButton7: TPDJButton;
    Panel2: TPanel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    PDJButton8: TPDJButton;
    PDJButton9: TPDJButton;
    Bevel6: TBevel;
    Panel3: TPanel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Bevel7: TBevel;
    PDJButton10: TPDJButton;
    PDJButton11: TPDJButton;
    collskedcollectedbills: TIntegerField;
    collskedcollectedamount: TCurrencyField;
    collskedmissingbills: TIntegerField;
    collskedmissingamount: TCurrencyField;
    collskedreturnedbills: TIntegerField;
    collection: TMyQuery;
    collectioncollectedbills: TLargeintField;
    collectioncollectedamount: TFloatField;
    missingbills: TMyQuery;
    missingbillsmissingbills: TLargeintField;
    missingbillsmissingamount: TFloatField;
    collskedreturnedamount: TCurrencyField;
    RouteControl: TMyQuery;
    RouteControlissuedbills: TLargeintField;
    RouteControlissuedamount: TFloatField;
    collskedissuedbills: TIntegerField;
    collskedissuedamount: TCurrencyField;
    InsertMissingBills: TMyQuery;
    DeleteMissingBills: TMyQuery;
    IssuedBillsEntry: TIntegerField;
    IssuedBillsDocument: TStringField;
    IssuedBillsCode: TFloatField;
    IssuedBillsArea: TStringField;
    IssuedBillsBook: TStringField;
    IssuedBillsAccountNumber: TStringField;
    IssuedBillsDate: TDateField;
    IssuedBillsName: TStringField;
    IssuedBillsBillMonth: TStringField;
    IssuedBillsRateCode: TStringField;
    IssuedBillsReading: TFloatField;
    IssuedBillsKilowattHour: TFloatField;
    IssuedBillsAmount: TFloatField;
    IssuedBillsUCNPCSD: TFloatField;
    IssuedBillsUCNPCSCC: TFloatField;
    IssuedBillsUCDUSCC: TFloatField;
    IssuedBillsUCME: TFloatField;
    IssuedBillsUCETR: TFloatField;
    IssuedBillsUCEC: TFloatField;
    IssuedBillsUCCSR: TFloatField;
    IssuedBillsCollectorCode: TStringField;
    IssuedBillsDateIssued: TDateField;
    IssuedBillsBatch: TStringField;
    IssuedBillsencodercode: TStringField;
    IssuedBillsTransformerRental: TFloatField;
    IssuedBillsstatus: TStringField;
    iCollection: TMyQuery;
    iCollectioncollectorcode: TStringField;
    iMissingBills: TMyQuery;
    StringField1: TStringField;
    ReportPanel: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    CollectorScheduleReport: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    QRShape5: TQRShape;
    QRShape4: TQRShape;
    QRShape3: TQRShape;
    QRShape2: TQRShape;
    QRShape1: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    DateLabel: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
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
    SummaryBand1: TQRBand;
    QRLabel20: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRBand1: TQRBand;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    iCollectiondatepaid: TDateField;
    iCollectionencodercode: TStringField;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    PopupMenu1: TPopupMenu;
    ViewCollectedbills1: TMenuItem;
    ViewAllIssued1: TMenuItem;
    PageControl2: TPageControl;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    CRDBGrid3: TCRDBGrid;
    VCollection: TMyQuery;
    VCollectionEntry: TIntegerField;
    VCollectionReceiptNumber: TStringField;
    VCollectionAccountCode: TFloatField;
    VCollectionArea: TStringField;
    VCollectionBook: TStringField;
    VCollectionSequence: TStringField;
    VCollectionAccountNumber: TStringField;
    VCollectionName: TStringField;
    VCollectionBillMonth: TStringField;
    VCollectionTotalBill: TFloatField;
    VCollectionMembership: TFloatField;
    VCollectionPenalty: TFloatField;
    VCollectionSecurity: TFloatField;
    VCollectionMeterDeposit: TFloatField;
    VCollectionTransformerRental: TFloatField;
    VCollectionSundries: TStringField;
    VCollectionSundriesAmount: TFloatField;
    VCollectionUCNPCSD: TFloatField;
    VCollectionUCNPCSCC: TFloatField;
    VCollectionUCDUSCC: TFloatField;
    VCollectionUCME: TFloatField;
    VCollectionUCETR: TFloatField;
    VCollectionUCEC: TFloatField;
    VCollectionUCCSR: TFloatField;
    VCollectionLoanCondo: TFloatField;
    VCollectionTotal: TFloatField;
    VCollectionCollectorCode: TStringField;
    VCollectionDatePaid: TDateField;
    VCollectionDateRemitted: TDateField;
    VCollectionEncoderCode: TStringField;
    VCollectionPosted: TStringField;
    VCollectionKilowattHour: TFloatField;
    VCollectionAddress: TStringField;
    VCollectionOPDescription: TStringField;
    VCollectionOPAmount: TFloatField;
    VCollectionTellerORNumber: TStringField;
    VCollectionVATDiscAmt: TFloatField;
    VCollectionVATDistDiscAmt: TFloatField;
    VCollectionVATGenCoDiscAmt: TFloatField;
    VCollectionVATTransCoDiscAmt: TFloatField;
    VCollectionVATSystemLossDiscAmt: TFloatField;
    VCollectionVATDist: TFloatField;
    VCollectionVATGenCO: TFloatField;
    VCollectionVATTransCO: TFloatField;
    VCollectionVATSystemLossGenCO: TFloatField;
    VCollectionVATSystemLossTransCO: TFloatField;
    VCollectionVAT: TFloatField;
    DSVCollection: TDataSource;
    CRDBGrid5: TCRDBGrid;
    CreateReprint: TMyQuery;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
    QRShape6: TQRShape;
    QRLabel3: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    MissingBillsPanel: TPanel;
    Label1: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    CCode: TNxEdit;
    PDJButton12: TPDJButton;
    Bevel5: TBevel;
    PDJButton13: TPDJButton;
    PDJButton14: TPDJButton;
    PDJButton15: TPDJButton;
    PDJButton16: TPDJButton;
    PDJButton17: TPDJButton;
    InsertReprint: TMyQuery;
    MyMissingBills: TMyQuery;
    PDJButton18: TPDJButton;
    dsMyMissingBills: TDataSource;
    MyMissingBillsidmbills: TIntegerField;
    MyMissingBillsDocument: TStringField;
    MyMissingBillsCode: TFloatField;
    MyMissingBillsArea: TStringField;
    MyMissingBillsBook: TStringField;
    MyMissingBillsAccountNumber: TStringField;
    MyMissingBillsName: TStringField;
    MyMissingBillsBillMonth: TStringField;
    MyMissingBillsKilowattHour: TFloatField;
    MyMissingBillsAmount: TFloatField;
    MyMissingBillsCollectorCode: TStringField;
    MyMissingBillsDateIssued: TDateField;
    MyMissingBillsBatch: TStringField;
    MyMissingBillsStatus: TStringField;
    MyMissingBillsStatusCount: TIntegerField;
    CRDBGrid6: TCRDBGrid;
    MissingBillsList: TQuickRep;
    ColumnHeaderBand2: TQRBand;
    DetailBand1: TQRBand;
    SummaryBand2: TQRBand;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRSysData1: TQRSysData;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    Reprint: TMyQuery;
    Reprintrbill: TLargeintField;
    MyDateFrom: TNxDatePicker;
    MyDateTo: TNxDatePicker;
    SDateFrom: TNxDatePicker;
    SDateTo: TNxDatePicker;
    DateFrom: TNxDatePicker;
    DateTo: TNxDatePicker;
    procedure IssuedBillsCalcFields(DataSet: TDataSet);
    procedure PDJButton7Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dsDateQDataChange(Sender: TObject; Field: TField);
    procedure dscollskedDataChange(Sender: TObject; Field: TField);
    procedure dsIssuedBillsDataChange(Sender: TObject; Field: TField);
    procedure PDJButton3Click(Sender: TObject);
    procedure PDJButton9Click(Sender: TObject);
    procedure PDJButton8Click(Sender: TObject);
    procedure PDJButton10Click(Sender: TObject);
    procedure PDJButton2Click(Sender: TObject);
    procedure PDJButton11Click(Sender: TObject);
    procedure collskedCalcFields(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PDJButton1Click(Sender: TObject);
    procedure PDJButton5Click(Sender: TObject);
    procedure PDJButton4Click(Sender: TObject);
    procedure ViewCollectedbills1Click(Sender: TObject);
    procedure ViewAllIssued1Click(Sender: TObject);
    procedure CRDBGrid5DblClick(Sender: TObject);
    procedure PDJButton6Click(Sender: TObject);
    procedure PDJButton12Click(Sender: TObject);
    procedure PDJButton13Click(Sender: TObject);
    procedure PDJButton14Click(Sender: TObject);
    procedure PDJButton18Click(Sender: TObject);
    procedure PDJButton17Click(Sender: TObject);
    procedure PDJButton16Click(Sender: TObject);
    procedure MyMissingBillsCalcFields(DataSet: TDataSet);
    procedure PDJButton15Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CollectionScheduleForm: TCollectionScheduleForm;

implementation

uses DateUtils, BillingPrintBills;

{$R *.dfm}

procedure TCollectionScheduleForm.IssuedBillsCalcFields(DataSet: TDataSet);
begin

  iCollection.ParamByName('receiptnumber').Text := IssuedBillsDocument.Text;
  ICollection.Open;

  IssuedBillsstatus.Text := '';

  If not iCollection.IsEmpty then
    begin
     If (iCollectioncollectorcode.Text   = IssuedBillsCollectorCode.Text) and
        (iCollectiondatepaid.AsDateTime  = IssuedBillsDateIssued.AsDateTime) and
        (iCollectionencodercode.Text     = IssuedBillsBatch.Text) then
       IssuedBillsstatus.Text := 'Collected' else
     If (iCollectiondatepaid.AsDateTime  = IssuedBillsDateIssued.AsDateTime) then
       IssuedBillsstatus.Text := iCollectioncollectorcode.Text;
    end;
  iCollection.Close;

  iMissingBills.ParamByName('document').Text := IssuedBillsDocument.Text;
  iMissingBills.Open;

  If not iMissingBills.IsEmpty then
       IssuedBillsstatus.Text := 'Missing';
  iMissingBills.Close;

end;

procedure TCollectionScheduleForm.PDJButton7Click(Sender: TObject);
begin
  Close;
end;

procedure TCollectionScheduleForm.FormCreate(Sender: TObject);
begin
  Try
   CreateCollSked.Execute;
   CreateMissingBills.Execute;
  except
  end;

  DateQ.Close;
  DateQ.ParamByName('DateFrom').AsDate := StartOfTheMonth(Now);
  DateQ.ParamByName('DateTo').AsDate   := EndOfTheMonth(Now);
  DateQ.Open;

  PageControl2.ActivePageIndex := 0;

end;

procedure TCollectionScheduleForm.dsDateQDataChange(Sender: TObject;
  Field: TField);
begin
  CollSked.Close;
  CollSked.ParamByName('datepaid').AsDate := DateQdatepaid.AsDateTime;
  collsked.Open;
end;

procedure TCollectionScheduleForm.dscollskedDataChange(Sender: TObject;
  Field: TField);
begin
  IssuedBills.Close;
  IssuedBills.ParamByName('collectorcode').Text := collskedcollectorcode.Text;
  IssuedBills.ParamByName('dateissued').AsDate  := collskeddatepaid.AsDateTime;
  IssuedBills.ParamByName('batch').Text         := collskedbatch.Text;
  IssuedBills.Open;

  VCollection.Close;
  VCollection.ParamByName('collectorcode').Text := collskedcollectorcode.Text;
  VCollection.ParamByName('datepaid').AsDate    := collskeddatepaid.AsDateTime;
  VCollection.ParamByName('encodercode').Text   := collskedbatch.Text;
  VCollection.Open;

end;

procedure TCollectionScheduleForm.dsIssuedBillsDataChange(Sender: TObject;
  Field: TField);
begin
  MBills.Close;
  MBills.ParamByName('collectorcode').Text := IssuedBillsCollectorCode.Text;
  MBills.ParamByName('dateissued').AsDate  := IssuedBillsDateIssued.AsDateTime;
  MBills.ParamByName('batch').Text         := IssuedBillsBatch.Text;
  MBills.Open;
end;

procedure TCollectionScheduleForm.PDJButton3Click(Sender: TObject);
begin
  Panel1.Enabled := False;
  Panel2.Left    := 236;
  Panel2.Top     := 214;
  Panel2.Visible := True;
  Panel2.BringToFront;
  SDateFrom.AsDateTime := StartOfTheMonth(Now);
  SDateTo.AsDateTime   := EndOfTheMonth(Now);
  SDateFrom.SetFocus;
end;

procedure TCollectionScheduleForm.PDJButton9Click(Sender: TObject);
begin
  Panel2.Visible := False;
  Panel1.Enabled := True;
end;

procedure TCollectionScheduleForm.PDJButton8Click(Sender: TObject);
begin
  DateQ.Close;
  DateQ.ParamByName('DateFrom').AsDate := SDateFrom.AsDateTime;
  DateQ.ParamByName('DateTo').AsDate   := SDateTo.AsDateTime;
  DateQ.Open;

  Panel2.Visible := False;
  Panel1.Enabled := True;
end;

procedure TCollectionScheduleForm.PDJButton10Click(Sender: TObject);
begin
  Try
   NewCollectionDate.ParamByName('Datefrom').AsDate := DateFrom.AsDateTime;
   NewCollectionDate.ParamByName('DateTo').AsDate   := DateTo.AsDateTime;
   NewCollectionDate.Execute;
  except
   on E: Exception do
     begin
      MessageDlg(E.Message, mtWarning, [mbOK], 0);
      exit;
     end;
  end;

  DateQ.Close;
  DateQ.ParamByName('DateFrom').AsDate          := DateFrom.AsDateTime;
  DateQ.ParamByName('DateTo').AsDate            := DateTo.AsDateTime;
  DateQ.Open;

  Panel3.Visible := False;
  Panel1.Enabled := True;

end;

procedure TCollectionScheduleForm.PDJButton2Click(Sender: TObject);
begin
  Panel1.Enabled      := False;
  DateFrom.AsDateTime := Now;
  DateTo.AsDateTime   := Now;
  Panel3.Left         := 208;
  Panel3.Top          := 200;
  Panel3.Visible      := True;
  Panel3.BringToFront;
end;

procedure TCollectionScheduleForm.PDJButton11Click(Sender: TObject);
begin
  Panel3.Visible := False;
  Panel1.Enabled := True;
end;

procedure TCollectionScheduleForm.collskedCalcFields(DataSet: TDataSet);
begin

  RouteControl.ParamByName('collectorcode').Text := collskedcollectorcode.Text;
  RouteControl.ParamByName('dateissued').AsDate  := collskeddatepaid.AsDateTime;
  RouteControl.ParamByName('batch').Text         := collskedbatch.Text;
  RouteControl.Open;

  collskedissuedbills.AsInteger   := RouteControlissuedbills.AsInteger;
  collskedissuedamount.AsCurrency := RouteControlissuedamount.AsCurrency;

  RouteControl.Close;

  collection.ParamByName('collectorcode').Text := collskedcollectorcode.Text;
  collection.ParamByName('datepaid').AsDate    := collskeddatepaid.AsDateTime;
  collection.ParamByName('encodercode').Text   := collskedbatch.Text;
  collection.Open;

  collskedcollectedbills.AsInteger   := collectioncollectedbills.AsInteger;
  collskedcollectedamount.AsCurrency := collectioncollectedamount.AsCurrency;

  collection.Close;

  missingbills.ParamByName('collectorcode').Text := collskedcollectorcode.Text;
  missingbills.ParamByName('dateissued').AsDate  := collskeddatepaid.AsDateTime;
  missingbills.ParamByName('batch').Text         := collskedbatch.Text;
  missingbills.Open;

  collskedmissingbills.AsInteger     := missingbillsmissingbills.AsInteger;
  collskedmissingamount.AsCurrency   := missingbillsmissingamount.AsCurrency;

  missingbills.Close;

  collskedreturnedbills.AsInteger    := collskedissuedbills.AsInteger -
                                        (collskedcollectedbills.AsInteger +
                                         collskedmissingbills.AsInteger);

  collskedreturnedamount.AsCurrency  := collskedissuedamount.AsCurrency -
                                        (collskedcollectedamount.AsCurrency +
                                         collskedmissingamount.AsCurrency);
end;

procedure TCollectionScheduleForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  CollectionScheduleForm := Nil;
  Action := caFree;
  DateQ.Close;
  collsked.Close;
  MBills.Close;
  IssuedBills.Close;
  VCollection.Close;
end;

procedure TCollectionScheduleForm.PDJButton1Click(Sender: TObject);
begin
  If IssuedBillsstatus.Text <> '' then
   begin
    MessageDlg('Bill already Collected.... cannot mark that as missing', mtError, [mbOK], 0);
    exit;
   end;

  Try
    InsertMissingBills.ParamByName('Document').Text           := IssuedBillsDocument.Text;
    InsertMissingBills.ParamByName('Code').Text               := IssuedBillsCode.Text;
    InsertMissingBills.ParamByName('Area').Text               := IssuedBillsArea.Text;
    InsertMissingBills.ParamByName('Book').Text               := IssuedBillsBook.Text;
    InsertMissingBills.ParamByName('AccountNumber').Text      := IssuedBillsAccountNumber.Text;
    InsertMissingBills.ParamByName('Name').Text               := IssuedBillsName.Text;
    InsertMissingBills.ParamByName('BillMonth').Text          := IssuedBillsBillMonth.Text;
    InsertMissingBills.ParamByName('KilowattHour').AsInteger  := IssuedBillsKilowattHour.AsInteger;
    InsertMissingBills.ParamByName('Amount').AsCurrency       := IssuedBillsAmount.AsCurrency;
    InsertMissingBills.ParamByName('CollectorCode').Text      := IssuedBillsCollectorCode.Text;
    InsertMissingBills.ParamByName('DateIssued').AsDate       := IssuedBillsDateIssued.AsDateTime;
    InsertMissingBills.ParamByName('Batch').Text              := IssuedBillsBatch.Text;
    InsertMissingBills.Execute;

    MBills.Refresh;

    dscollsked.OnDataChange := nil;
    collsked.RefreshRecord;
    dscollsked.OnDataChange := dscollskedDataChange;

    IssuedBills.RefreshRecord;
    MBills.Locate('document',IssuedBillsDocument.Text,[]);

  except
    on E: Exception do
      begin
        MessageDlg(E.Message, mtError, [mbOK], 0);
      end;
  end;
end;

procedure TCollectionScheduleForm.PDJButton5Click(Sender: TObject);
begin
  Try
   CreateReprint.Execute;
  except
  end;

  Reprint.close;
  Reprint.ParamByName('document').Text := MBillsDocument.Text;
  Reprint.Open;

  If not Reprint.IsEmpty then
   begin
     MessageDlg('Cannot delete missing bill that has already been reprinted.', mtInformation, [mbOK], 0);
     Reprint.Close;
     Exit;
   end;

  Reprint.Close;

  Try
    DeleteMissingBills.ParamByName('Document').Text := MBillsDocument.Text;
    DeleteMissingBills.Execute;
    MBills.Refresh;

    dscollsked.OnDataChange := nil;
    collsked.RefreshRecord;
    dscollsked.OnDataChange := dscollskedDataChange;

    IssuedBills.RefreshRecord;

  except
    on E: Exception do
      begin
        MessageDlg(E.Message, mtError, [mbOK], 0);
      end;
  end;

end;

procedure TCollectionScheduleForm.PDJButton4Click(Sender: TObject);
begin
  If collsked.IsEmpty then
    begin
      MessageDlg('No schedule to print....', mtInformation, [mbOK], 0);
      exit;
    end;
  DateLabel.Caption := 'Date : '+DateToStr(DateQdatepaid.AsDateTime);
  CollectorScheduleReport.Preview;
end;

procedure TCollectionScheduleForm.ViewCollectedbills1Click(
  Sender: TObject);
begin
  IssuedBills.Filter   := 'status = ''Collected''';
  IssuedBills.Filtered := true;
end;

procedure TCollectionScheduleForm.ViewAllIssued1Click(Sender: TObject);
begin
  IssuedBills.Filter   := '';
  IssuedBills.Filtered := false;
end;

procedure TCollectionScheduleForm.CRDBGrid5DblClick(Sender: TObject);
begin
  if IssuedBills.Locate('Document',VCollectionReceiptNumber.text,[]) then
    exit else MessageDlg('Record no found in issuance', mtConfirmation, [mbOK], 0);
end;

procedure TCollectionScheduleForm.PDJButton6Click(Sender: TObject);
begin
  MissingBillsPanel.Left := 8;
  MissingBillsPanel.Top  := 6;
  MissingBillsPanel.BringToFront;
  MissingBillsPanel.Visible := True;
  MyDateFrom.Date := StartOfTheMonth(Now);
  MyDateTo.Date   := EndOfTheMonth(Now);
  Panel1.Enabled := True;
end;

procedure TCollectionScheduleForm.PDJButton12Click(Sender: TObject);
begin
  MyMissingBills.Close;
  MyMissingBills.SQL.Clear;
  MyMissingBills.SQL.Add('select * from mbills where collectorcode = :collectorcode');
  MyMissingBills.SQL.Add('order by dateissued');
  MyMissingBills.ParamByName('collectorcode').Text := CCode.Text;
  MyMissingBills.Open;

  If MyMissingBills.IsEmpty then
    begin
      MessageDlg('There are no missing bills for that collector', mtInformation, [mbOK], 0);
      MyMissingBills.Close;
    end;
end;

procedure TCollectionScheduleForm.PDJButton13Click(Sender: TObject);
begin
  MyMissingBills.Close;
  MyMissingBills.SQL.Clear;
  MyMissingBills.SQL.Add('select * from mbills');
  MyMissingBills.SQL.Add('         where dateissued between :datefrom and :dateto');
  MyMissingBills.SQL.Add('order by collectorcode');
  MyMissingBills.ParamByName('datefrom').AsDate    := MyDateFrom.AsDateTime;
  MyMissingBills.ParamByName('dateTo').AsDate      := MyDateTo.AsDateTime;
  MyMissingBills.Open;

  If MyMissingBills.IsEmpty then
    begin
      MessageDlg('There are no missing bills for that period', mtInformation, [mbOK], 0);
      MyMissingBills.Close;
    end;

end;

procedure TCollectionScheduleForm.PDJButton14Click(Sender: TObject);
begin
  MyMissingBills.Close;
  MyMissingBills.SQL.Clear;
  MyMissingBills.SQL.Add('select * from mbills');
  MyMissingBills.SQL.Add('         where dateissued between :datefrom and :dateto and');
  MyMissingBills.SQL.Add('               collectorcode = :collectorcode');
  MyMissingBills.SQL.Add('order by dateissued');
  MyMissingBills.ParamByName('datefrom').AsDate    := MyDateFrom.AsDateTime;
  MyMissingBills.ParamByName('dateTo').AsDate      := MyDateTo.AsDateTime;
  MyMissingBills.ParamByName('collectorcode').Text := CCode.Text;
  MyMissingBills.Open;

  If MyMissingBills.IsEmpty then
    begin
      MessageDlg('There are no missing bills for that collector and period', mtInformation, [mbOK], 0);
      MyMissingBills.Close;
    end;
end;

procedure TCollectionScheduleForm.PDJButton18Click(Sender: TObject);
begin
  MyMissingBills.Close;
  MyMissingBills.SQL.Clear;
  MyMissingBills.SQL.Add('select * from mbills');
  MyMissingBills.SQL.Add('order by collectorcode, dateissued');
  MyMissingBills.Open;

  If MyMissingBills.IsEmpty then
    begin
      MessageDlg('Missing bills is empty', mtInformation, [mbOK], 0);
      MyMissingBills.Close;
    end;
end;

procedure TCollectionScheduleForm.PDJButton17Click(Sender: TObject);
begin
  MissingBillsPanel.Visible := False;
  Panel1.Enabled := True;
end;

procedure TCollectionScheduleForm.PDJButton16Click(Sender: TObject);
begin
  MissingBillsList.Preview;
end;

procedure TCollectionScheduleForm.MyMissingBillsCalcFields(DataSet: TDataSet);
begin

  Reprint.close;
  Reprint.ParamByName('document').Text := MyMissingBillsDocument.Text;
  Reprint.Open;

  MyMissingBillsStatus.Text           := '';
  MyMissingBillsStatusCount.AsInteger := 0;

  If Reprintrbill.AsInteger > 0 then
   begin
     MyMissingBillsStatus.Text           := 'Reprinted';
     MyMissingBillsStatusCount.AsInteger := Reprintrbill.AsInteger;
   end;

  Reprint.Close;

end;

procedure TCollectionScheduleForm.PDJButton15Click(Sender: TObject);
begin
Try
 CreateReprint.Execute
except
end;

if (MessageDlg('REPRINT OEBR ... Click Ok to confirm', mtConfirmation, [mbOK, mbCancel], 0) = mrCancel) then exit;


InsertReprint.ParamByName('Code').Text             := MyMissingBillsCode.Text;
InsertReprint.ParamByName('Area').Text             := MyMissingBillsArea.Text;
InsertReprint.ParamByName('Book').Text             := MyMissingBillsBook.Text;
InsertReprint.ParamByName('AccountNumber').Text    := MyMissingBillsAccountNumber.Text;
InsertReprint.ParamByName('Name').Text             := MyMissingBillsName.Text;
InsertReprint.ParamByName('TotalBill').AsCurrency  := MyMissingBillsAmount.AsCurrency;
InsertReprint.ParamByName('OEBRNumber').Text       := MyMissingBillsDocument.Text;
InsertReprint.ParamByName('BillMonth').Text        := MyMissingBillsBillMonth.Text;
InsertReprint.execute;

MyMissingBills.RefreshRecord;

 If not assigned(BillingPrintBillForm) then
 BillingPrintBillForm  := TBillingPrintBillForm.Create(Application);

 BillingPrintBillForm.PrintOption.Visible   := False;
 BillingPrintBillForm.ReprintOption.Left    := 303;
 BillingPrintBillForm.ReprintOption.Top     := 88;
 BillingPrintBillForm.ReprintOption.Visible := True;
 BillingPrintBillForm.ReprintOption.BringToFront;
 BillingPrintBillForm.ReprintOption.Checked := True;

 BillingPrintBillForm.StartOEBR.Text         := MyMissingBillsDocument.Text;
 BillingPrintBillForm.EndOEBR.Text           := MyMissingBillsDocument.Text;
 BillingPrintBillForm.Show;
 BillingPrintBillForm.BitBtn1Click(Self);

end;

end.









