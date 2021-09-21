unit writeoff;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NxCellSource, NxScrollControl, NxCustomGridControl,
  NxCustomGrid, NxGrid, StdCtrls, NxEdit, NxCollection, DB, DBAccess,
  MyAccess, MemDS, NxDBColumns, NxColumns, NxDBGrid, ExtCtrls, Grids,
  DBGrids, CRGrid, QuickRpt, QRCtrls, Gauges, CRDBGrid1;

type
  TWriteoffForm = class(TForm)
    NxFlipContainer1: TNxFlipContainer;
    UnpaidBills: TMyQuery;
    dsUnpaidBills: TMyDataSource;
    UnpaidBillsDocument: TStringField;
    UnpaidBillsCode: TFloatField;
    UnpaidBillsArea: TStringField;
    UnpaidBillsBook: TStringField;
    UnpaidBillsAccountNumber: TStringField;
    UnpaidBillsDate: TDateField;
    UnpaidBillsName: TStringField;
    UnpaidBillsBillMonth: TStringField;
    UnpaidBillsDeleteRemarks: TStringField;
    UnpaidBillsRateCode: TStringField;
    UnpaidBillsReading: TFloatField;
    UnpaidBillsKilowattHour: TFloatField;
    UnpaidBillsAmount: TFloatField;
    UnpaidBillsUCNPCSD: TFloatField;
    UnpaidBillsUCNPCSCC: TFloatField;
    UnpaidBillsUCDUSCC: TFloatField;
    UnpaidBillsUCME: TFloatField;
    UnpaidBillsUCETR: TFloatField;
    UnpaidBillsUCEC: TFloatField;
    UnpaidBillsUCCSR: TFloatField;
    UnpaidBillsTransformerRental: TFloatField;
    UnpaidBillsVATDiscAmt: TFloatField;
    UnpaidBillsVATDistDiscAmt: TFloatField;
    UnpaidBillsVATGenCoDiscAmt: TFloatField;
    UnpaidBillsVATTransCoDiscAmt: TFloatField;
    UnpaidBillsVATSystemLossDiscAmt: TFloatField;
    UnpaidBillsVATDist: TFloatField;
    UnpaidBillsVATGenCO: TFloatField;
    UnpaidBillsVATTransCO: TFloatField;
    UnpaidBillsVATSystemLossGenCO: TFloatField;
    UnpaidBillsVATSystemLossTransCO: TFloatField;
    UnpaidBillsVAT: TFloatField;
    Master: TMyQuery;
    Mastername: TStringField;
    Masteraddress: TStringField;
    WriteOffBills: TMyQuery;
    dsWriteOffBills: TMyDataSource;
    NxHeaderPanel1: TNxHeaderPanel;
    NextDBGrid2: TNextDBGrid;
    TNxDBTextColumn2: TNxDBTextColumn;
    TNxDBTextColumn5: TNxDBTextColumn;
    TNxDBTextColumn7: TNxDBTextColumn;
    TNxDBTextColumn8: TNxDBTextColumn;
    TNxDBNumberColumn7: TNxDBNumberColumn;
    NxMemo1: TNxMemo;
    CreateWriteOff: TMyQuery;
    NxButton2: TNxButton;
    InsertWriteOff: TMyQuery;
    InsertARLedger: TMyQuery;
    DeleteUnpaidBills: TMyQuery;
    WriteOffBillsDocument: TStringField;
    WriteOffBillsCode: TFloatField;
    WriteOffBillsArea: TStringField;
    WriteOffBillsBook: TStringField;
    WriteOffBillsAccountNumber: TStringField;
    WriteOffBillsDate: TDateField;
    WriteOffBillsName: TStringField;
    WriteOffBillsBillMonth: TStringField;
    WriteOffBillsDeleteRemarks: TStringField;
    WriteOffBillsRateCode: TStringField;
    WriteOffBillsReading: TFloatField;
    WriteOffBillsKilowattHour: TFloatField;
    WriteOffBillsAmount: TFloatField;
    WriteOffBillsUCNPCSD: TFloatField;
    WriteOffBillsUCNPCSCC: TFloatField;
    WriteOffBillsUCDUSCC: TFloatField;
    WriteOffBillsUCME: TFloatField;
    WriteOffBillsUCETR: TFloatField;
    WriteOffBillsUCEC: TFloatField;
    WriteOffBillsUCCSR: TFloatField;
    WriteOffBillsTransformerRental: TFloatField;
    WriteOffBillsVATDiscAmt: TFloatField;
    WriteOffBillsVATDistDiscAmt: TFloatField;
    WriteOffBillsVATGenCoDiscAmt: TFloatField;
    WriteOffBillsVATTransCoDiscAmt: TFloatField;
    WriteOffBillsVATSystemLossDiscAmt: TFloatField;
    WriteOffBillsVATDist: TFloatField;
    WriteOffBillsVATGenCO: TFloatField;
    WriteOffBillsVATTransCO: TFloatField;
    WriteOffBillsVATSystemLossGenCO: TFloatField;
    WriteOffBillsVATSystemLossTransCO: TFloatField;
    WriteOffBillsVAT: TFloatField;
    WriteOffBillsWriteoffRef: TStringField;
    NxFlipPanel2: TNxFlipPanel;
    NxFlipPanel1: TNxFlipPanel;
    NxLabel1: TNxLabel;
    NxLabel2: TNxLabel;
    NxLabel3: TNxLabel;
    NxLabel4: TNxLabel;
    AddAccountNumber: TNxButtonEdit;
    NextDBGrid1: TNextDBGrid;
    NxDBTextColumn3: TNxDBTextColumn;
    NxDBTextColumn4: TNxDBTextColumn;
    NxDBNumberColumn3: TNxDBNumberColumn;
    NxDBNumberColumn4: TNxDBNumberColumn;
    NxButton1: TNxButton;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    NxEdit1: TNxEdit;
    NxLabel5: TNxLabel;
    SearchBills: TNxButtonEdit;
    SearchOption: TRadioGroup;
    NxButton3: TNxButton;
    NxButton4: TNxButton;
    SelectYear: TNxButton;
    FindOldBillsPanel: TNxHeaderPanel;
    MyYear: TNxComboBox;
    NxLabel6: TNxLabel;
    NxButton6: TNxButton;
    NxButton7: TNxButton;
    NxButton8: TNxButton;
    FindOld: TMyQuery;
    dsFindOld: TMyDataSource;
    FindOldEntry: TIntegerField;
    FindOldDocument: TStringField;
    FindOldCode: TFloatField;
    FindOldArea: TStringField;
    FindOldBook: TStringField;
    FindOldAccountNumber: TStringField;
    FindOldDate: TDateField;
    FindOldName: TStringField;
    FindOldBillMonth: TStringField;
    FindOldDeleteRemarks: TStringField;
    FindOldRateCode: TStringField;
    FindOldReading: TFloatField;
    FindOldKilowattHour: TFloatField;
    FindOldAmount: TFloatField;
    FindOldUCNPCSD: TFloatField;
    FindOldUCNPCSCC: TFloatField;
    FindOldUCDUSCC: TFloatField;
    FindOldUCME: TFloatField;
    FindOldUCETR: TFloatField;
    FindOldUCEC: TFloatField;
    FindOldUCCSR: TFloatField;
    FindOldTransformerRental: TFloatField;
    FindOldVATDiscAmt: TFloatField;
    FindOldVATDistDiscAmt: TFloatField;
    FindOldVATGenCoDiscAmt: TFloatField;
    FindOldVATTransCoDiscAmt: TFloatField;
    FindOldVATSystemLossDiscAmt: TFloatField;
    FindOldVATDist: TFloatField;
    FindOldVATGenCO: TFloatField;
    FindOldVATTransCO: TFloatField;
    FindOldVATSystemLossGenCO: TFloatField;
    FindOldVATSystemLossTransCO: TFloatField;
    FindOldVAT: TFloatField;
    NxButton5: TNxButton;
    Panel1: TPanel;
    QuickRep1: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    SummaryBand1: TQRBand;
    TitleBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRBand2: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRSysData1: TQRSysData;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel8: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel9: TQRLabel;
    QRExpr1: TQRExpr;
    QRSysData2: TQRSysData;
    InsertUnpaidBills: TMyQuery;
    DeleteARLedger: TMyQuery;
    deletewriteoff: TMyQuery;
    CRDBGrid1: TCRDBGrid1;
    procedure AddAccountNumberButtonClick(Sender: TObject);
    procedure NxEdit1Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure NxButton2Click(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AddAccountNumberKeyPress(Sender: TObject; var Key: Char);
    procedure SelectYearClick(Sender: TObject);
    procedure NxButton6Click(Sender: TObject);
    procedure NxButton8Click(Sender: TObject);
    procedure CRDBGrid1DblClick(Sender: TObject);
    procedure NxButton7Click(Sender: TObject);
    procedure NxButton5Click(Sender: TObject);
    procedure SearchOptionClick(Sender: TObject);
    procedure SearchBillsButtonClick(Sender: TObject);
    procedure NxButton3Click(Sender: TObject);
    procedure SearchBillsKeyPress(Sender: TObject; var Key: Char);
    procedure NxButton4Click(Sender: TObject);
    procedure NextDBGrid2DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  WriteoffForm: TWriteoffForm;

implementation

uses Data, DateUtils;

{$R *.dfm}

procedure TWriteoffForm.AddAccountNumberButtonClick(Sender: TObject);
begin
  Master.Close;
  Master.ParamByName('accountnumber').Text := AddAccountNumber.Text;
  Master.Open;

  If Master.IsEmpty then
    begin
      MessageDlg('Account Number not found....', mtError, [mbOK], 0);
      AddAccountNumber.SetFocus;
      exit;
    end;

  StaticText1.Caption := Mastername.Text;
  StaticText2.Caption := Masteraddress.Text;

  UnpaidBills.close;
  UnpaidBills.ParamByName('accountnumber').Text := AddAccountNumber.Text;
  UnpaidBills.Open;

  If UnpaidBills.IsEmpty then
    begin
      MessageDlg('There are no receivables for this account....', mtInformation, [mbOK], 0);
      NxEdit1.Enabled   := False;
      AddAccountNumber.SetFocus;
    end
    else
    begin
      NxEdit1.Enabled   := True;
      NxEdit1.SetFocus;
    end;

end;

procedure TWriteoffForm.NxEdit1Change(Sender: TObject);
begin
  If NxEdit1.Text <> '' then NxButton1.Enabled := True else NxButton1.Enabled := False;
end;

procedure TWriteoffForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action       := caFree;
  WriteOffBills.Close;
  UnpaidBills.Close;
  Master.Close;
  WriteoffForm := Nil;
end;

procedure TWriteoffForm.NxButton2Click(Sender: TObject);
begin
  Close;
end;

procedure TWriteoffForm.NxButton1Click(Sender: TObject);
begin
  NxMemo1.Lines.Clear;
  NxMemo1.Lines.Add('This will transfer the selected bills to the writeoff table at the same time post as credit in to the A/R Ledger.');
  NxMemo1.Lines.Add('The procedure can be reversed by Activating the bills also found in this application.');

  if (MessageDlg('Do you wish to proceed?', mtConfirmation, [mbYes, mbNo], 0) = mrNo) then
    begin
     NxMemo1.Lines.Clear;
     exit;
    end;

 Try
 NxMemo1.Lines.Add('');
 InsertWriteOff.ParamByName('WriteoffRef').Text   := NxEdit1.Text;
 InsertWriteOff.ParamByName('AccountNumber').Text := UnpaidBillsAccountNumber.Text;
 InsertWriteOff.Execute;
 NxMemo1.Lines.Add('Records added to Writeoff '+IntToStr(InsertWriteOff.RowsAffected));
 except
    on E: Exception do
      begin
        MessageDlg(E.Message, mtError, [mbOK], 0);
      end;
 end;

 try
 NxMemo1.Lines.Add('');
 InsertARLedger.ParamByName('WriteoffRef').Text   := NxEdit1.Text;
 InsertARLedger.ParamByName('AccountNumber').Text := UnpaidBillsAccountNumber.Text;
 InsertARLedger.Execute;
 NxMemo1.Lines.Add('Records added to A/R Ledger Credit '+IntToStr(InsertARLedger.RowsAffected));
 except
    on E: Exception do
      begin
        MessageDlg(E.Message, mtError, [mbOK], 0);
      end;
 end;

 try
 NxMemo1.Lines.Add('');
 DeleteUnpaidBills.ParamByName('AccountNumber').Text := UnpaidBillsAccountNumber.Text;
 DeleteUnpaidBills.Execute;
 NxMemo1.Lines.Add('Deleted Unpaid Bills '+IntToStr(DeleteUnpaidBills.RowsAffected));
 except
    on E: Exception do
      begin
        MessageDlg(E.Message, mtError, [mbOK], 0);
      end;
 end;

 UnpaidBills.close;
 UnpaidBills.ParamByName('accountnumber').Text := AddAccountNumber.Text;
 UnpaidBills.Open;

 WriteOffBills.Close;
 WriteOffBills.ParamByName('accountnumber').Text := AddAccountNumber.Text;
 WriteoffBills.Open;

 NxMemo1.Lines.Add('');
 NxMemo1.Lines.Add('Writeoff process done.');

 NxButton1.Enabled := False;

end;

procedure TWriteoffForm.FormShow(Sender: TObject);
begin
  Try
    CreateWriteOff.Execute;
  except
    // Writeoff Table already exists
  end;

  NxFlipPanel1.Expanded := False;
  NxFlipPanel2.Expanded := False;

  WriteoffBills.ParamByName('AccountNumber').Text := '%';
  WriteOffBills.Open;
end;

procedure TWriteoffForm.AddAccountNumberKeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 then
    begin
       If AddAccountNumber.Text <> '' then
       AddAccountNumberButtonClick(self) else
       MessageDlg('No account to search....', mtInformation, [mbOK], 0);
    end;
end;

procedure TWriteoffForm.SelectYearClick(Sender: TObject);
Var I : Integer;
begin
  NxFlipContainer1.Enabled := False;
  NxHeaderPanel1.Enabled   := False;
  MyYear.Items.Clear;

  For I := YearOf(now) downto YearOf(now)-20 do MyYear.Items.Add(IntToStr(I));
  MyYear.ItemIndex := 0;

  FindOldBillsPanel.Left := 156;
  FindOldBillsPanel.Top  := 27;
  FindOldBillsPanel.Visible := True;
  FindOldBillsPanel.BringToFront;
  MyYear.SetFocus;


end;

procedure TWriteoffForm.NxButton6Click(Sender: TObject);
begin
  FindOld.Close;
  FindOld.ParamByName('myyear').Text := MyYear.Text;
  FindOld.Open;

  CRDBGrid1.SetFocus;
end;

procedure TWriteoffForm.NxButton8Click(Sender: TObject);
begin
  AddAccountNumber.Text     := FindOldAccountNumber.Text;
  NxFlipContainer1.Enabled  := True;
  NxHeaderPanel1.Enabled    := True;
  FindOldBillsPanel.Visible := False;
  AddAccountNumberButtonClick(self);
end;

procedure TWriteoffForm.CRDBGrid1DblClick(Sender: TObject);
begin
  NxButton8Click(self);
end;

procedure TWriteoffForm.NxButton7Click(Sender: TObject);
begin
  NxFlipContainer1.Enabled  := True;
  NxHeaderPanel1.Enabled    := True;
  FindOldBillsPanel.Visible := False;
  AddAccountNumber.SetFocus;
end;

procedure TWriteoffForm.NxButton5Click(Sender: TObject);
begin
  WriteoffBills.Close;
  WriteOffBills.SQL.Clear;
  WriteOffBills.SQL.Add('select * from writeoff');
  WriteOffBills.SQL.Add('where accountnumber like :accountnumber');
  WriteOffBills.SQL.Add('order by name, billmonth');
  WriteoffBills.ParamByName('AccountNumber').Text := '%';
  WriteOffBills.Open;
end;

procedure TWriteoffForm.SearchOptionClick(Sender: TObject);
begin
  If SearchOption.ItemIndex = 0 then
    NxLabel5.Caption := 'Enter Account Number' else
    NxLabel5.Caption := 'Enter Reference Number';

end;

procedure TWriteoffForm.SearchBillsButtonClick(Sender: TObject);
begin
  WriteoffBills.Close;
  WriteOffBills.SQL.Clear;

  case SearchOption.ItemIndex of
  0 : begin
        WriteOffBills.SQL.Add('select * from writeoff');
        WriteOffBills.SQL.Add('where accountnumber like :accountnumber');
        WriteOffBills.SQL.Add('order by name, billmonth');
        WriteoffBills.ParamByName('AccountNumber').Text := '%'+SearchBills.Text+'%';
      end;

  1 : begin
        WriteOffBills.SQL.Add('select * from writeoff');
        WriteOffBills.SQL.Add('where writeoffref like :writeoffref');
        WriteOffBills.SQL.Add('order by name, billmonth');
        WriteoffBills.ParamByName('writeoffref').Text := '%'+SearchBills.Text+'%';
      end;
  end;

  WriteOffBills.Open;

  If WriteOffBills.IsEmpty then
    begin
     NxButton3.Enabled := False;
     NxButton4.Enabled := False;
    end
  else
    begin
     NxButton3.Enabled := True;
     NxButton4.Enabled := True;
    end;

end;

procedure TWriteoffForm.NxButton3Click(Sender: TObject);
begin
  QuickRep1.Preview;
end;

procedure TWriteoffForm.SearchBillsKeyPress(Sender: TObject;
  var Key: Char);
begin
  SearchBillsButtonClick(self);
end;



procedure TWriteoffForm.NxButton4Click(Sender: TObject);
begin
  NxMemo1.Lines.Clear;
  NxMemo1.Lines.Add('This will activate the selected bills from the writeoff table.');
  NxMemo1.Lines.Add('The unpaid bills will be populated and payment in the A/R');
  NxMemo1.Lines.Add('deleted so actual payment can be posted.');

  if (MessageDlg('Do you wish to proceed?', mtConfirmation, [mbYes, mbNo], 0) = mrNo) then
    begin
     NxMemo1.Lines.Clear;
     exit;
    end;

 Try
 NxMemo1.Lines.Add('');
 InsertUnpaidBills.ParamByName('WriteoffRef').Text   := SearchBills.Text;
 InsertUnpaidBills.ParamByName('AccountNumber').Text := SearchBills.Text;
 InsertUnpaidBills.Execute;
 NxMemo1.Lines.Add('Records added to Unpaid Bills '+IntToStr(InsertUnpaidBills.RowsAffected));
 except
    on E: Exception do
      begin
        MessageDlg(E.Message, mtError, [mbOK], 0);
      end;
 end;

 try
 NxMemo1.Lines.Add('');
 DeleteARLedger.ParamByName('WriteoffRef').Text   := SearchBills.Text;
 DeleteARLedger.ParamByName('AccountNumber').Text := SearchBills.Text;
 DeleteARLedger.Execute;
 NxMemo1.Lines.Add('Records Deleted from A/R Ledger '+IntToStr(DeleteARLedger.RowsAffected));
 except
    on E: Exception do
      begin
        MessageDlg(E.Message, mtError, [mbOK], 0);
      end;
 end;

 try
 NxMemo1.Lines.Add('');
 deletewriteoff.ParamByName('WriteoffRef').Text   := SearchBills.Text;
 deletewriteoff.ParamByName('AccountNumber').Text := SearchBills.Text;
 deletewriteoff.Execute;
 NxMemo1.Lines.Add('Deleted Writeoff Bills '+IntToStr(deletewriteoff.RowsAffected));
 except
    on E: Exception do
      begin
        MessageDlg(E.Message, mtError, [mbOK], 0);
      end;
 end;

 WriteOffBills.Close;
 WriteOffBills.ParamByName('accountnumber').Text := '%';
 WriteoffBills.Open;

 NxMemo1.Lines.Add('');
 NxMemo1.Lines.Add('Activate Writeoff process done.');

 NxButton3.Enabled := False;
 NxButton4.Enabled := False;

end;

procedure TWriteoffForm.NextDBGrid2DblClick(Sender: TObject);
begin
  If not writeOffBills.IsEmpty then
    begin
      If NxFlipPanel2.Expanded = True then
      begin
        If SearchOption.ItemIndex = 0 then
         SearchBills.Text := WriteOffBillsAccountNumber.Text else
         SearchBills.Text := WriteOffBillsWriteoffRef.Text;
       SearchBillsButtonClick(self);  
      end;
    end;
end;

end.



