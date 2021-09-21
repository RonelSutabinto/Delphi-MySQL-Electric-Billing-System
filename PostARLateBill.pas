unit PostARLateBill;

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
  ComCtrls,
  Mask,
  StdCtrls,
  DB,
  Grids,
  DBGrids,
  MemDS,
  DBAccess,
  MyAccess,
  NxCollection, DBGrid1, CRGrid, CRDBGrid1;

type
  TARPostingLateBillForm = class(TForm)
    Panel1: TPanel;
    Bevel1: TBevel;
    Animate1: TAnimate;
    Memo1: TMemo;
    Q: TMyQuery;
    DataSource1: TDataSource;
    ARUpdateQuery: TMyQuery;
    UnPBUpdateQuery: TMyQuery;
    BillHistoryUpdateQuery: TMyQuery;
    DeleteTempBillQuery: TMyQuery;
    PutCutOffDate: TMyQuery;
    MasterUpdateQuery: TMyQuery;
    Label1: TLabel;
    PDJSillyLabel11: TNxButton;
    PDJSillyLabel12: TNxButton;
    PDJSillyLabel1: TNxButton;
    CutoffDate: TDateTimePicker;
    PostOption: TRadioGroup;
    PostArea: TLabeledEdit;
    PostBook: TLabeledEdit;
    VatLedgerUpdate: TMyQuery;
    DBGrid1: TCRDBGrid1;
    procedure PDJSillyLabel12Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PDJSillyLabel11Click(Sender: TObject);
    procedure PDJSillyLabel1Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure PostOptionClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ARPostingLateBillForm: TARPostingLateBillForm;

implementation

uses Data, StatusUpdate;

{$R *.dfm}

procedure TARPostingLateBillForm.PDJSillyLabel12Click(Sender: TObject);

var
  bHasException : boolean;

procedure HandleException(E : Exception);
begin
  MessageDlg(E.Message, mtError, [mbOk], 0);
  bHasException := True;
end;

begin

  If (PostOption.ItemIndex = 0) and
     ((PostArea.Text = '') or (PostBook.Text = '')) then
       begin
       MessageDlg('Please input an area/book for posting', mtError, [mbOK], 0);
       exit;
       end;

  if MessageDlg('UPDATE FROM LATE BILLS FILE'+#13+
                'This will delete all current billing and'+#13+
                'transferred to the Subsidiary Ledger'+#13+
                'Unpaid Bills and Late Bills History.  Proceed?',mtConfirmation, [mbYes, mbNo], 0) = mrNo then exit;

  PDJSillyLabel12.Enabled := false;
  Animate1.Active := True;
  Memo1.Clear;

  Try
   Memo1.Lines.Add('Putting Cutoff Date in Temporary Billing');
   PutCutoffDate.ParamByName('Area').Text := PostArea.Text+'%';
   PutCutoffDate.ParamByName('Book').Text := PostBook.Text+'%';
   PutCutoffDate.ParamByName('BillingDate').AsDate := CutoffDate.Date;
   PutCutoffDate.Execute;
   Memo1.Lines.Add(IntToStr(PutCutoffDate.RowsAffected)+' Rows affected');

   Memo1.Lines.Add('Updating Master File with latest billing');
   MasterUpdateQuery.ParamByName('Area').Text := PostArea.Text+'%';
   MasterUpdateQuery.ParamByName('Book').Text := PostBook.Text+'%';
   MasterUpdateQuery.Execute;
   Memo1.Lines.Add(IntToStr(MasterUpdateQuery.RowsAffected)+' Rows affected');

   Memo1.Lines.Add('Updating A/R Ledger File');
   ARUpdateQuery.ParamByName('Area').Text := PostArea.Text+'%';
   ARUpdateQuery.ParamByName('Book').Text := PostBook.Text+'%';
   ARUpdateQuery.Execute;
   Memo1.Lines.Add(IntToStr(ARUpdateQuery.RowsAffected)+' Rows affected');

   Memo1.Lines.Add('Updating VAT Ledger File');
   VatLedgerUpdate.ParamByName('Area').Text := PostArea.Text+'%';
   VatLedgerUpdate.ParamByName('Book').Text := PostBook.Text+'%';
   VatLedgerUpdate.Execute;
   Memo1.Lines.Add(IntToStr(VatLedgerUpdate.RowsAffected)+' Rows affected');

   Memo1.Lines.Add('Updating Unpaid Bills File');
   UnPBUpdateQuery.ParamByName('Area').Text := PostArea.Text+'%';
   UnPBUpdateQuery.ParamByName('Book').Text := PostBook.Text+'%';
   UnPBUpdateQuery.Execute;
   Memo1.Lines.Add(IntToStr(UnPBUpdateQuery.RowsAffected)+' Rows affected');

   Memo1.Lines.Add('Updating Late Bills History File');
   BillHistoryUpdateQuery.ParamByName('Area').Text := PostArea.Text+'%';
   BillHistoryUpdateQuery.ParamByName('Book').Text := PostBook.Text+'%';
   BillHistoryUpdateQuery.Execute;
   Memo1.Lines.Add(IntToStr(BillHistoryUpdateQuery.RowsAffected)+' Rows affected');

   Memo1.Lines.Add('Deleting Temporary Billing Records');
   DeleteTempBillQuery.ParamByName('Area').Text := PostArea.Text+'%';
   DeleteTempBillQuery.ParamByName('Book').Text := PostBook.Text+'%';
   DeleteTempBillQuery.Execute;
   Memo1.Lines.Add(IntToStr(DeleteTempBillQuery.RowsAffected)+' Rows affected');
   except
   on E: Exception do
   begin
    Memo1.Lines.Add('Error '+E.Message);
    Animate1.Active := False;
    Exit;
   end;
   end;

  Memo1.Lines.Add('Update Complete....');
  Animate1.Active := False;

  Q.Close;
  Q.Open;
  PDJSillyLabel12.Enabled := True;

end;

procedure TARPostingLateBillForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
   ARPostingLateBillForm := Nil;
end;

procedure TARPostingLateBillForm.PDJSillyLabel11Click(Sender: TObject);
begin
  Q.Close;
  
  Close;
end;

procedure TARPostingLateBillForm.PDJSillyLabel1Click(Sender: TObject);
begin
  Q.Close;
  Q.Open;
end;

procedure TARPostingLateBillForm.DBGrid1CellClick(Column: TColumn);
begin
  PostArea.Text := Q.FieldValues['Area'];
  PostBook.Text := Q.FieldValues['Book'];
  PostArea.SetFocus;
end;

procedure TARPostingLateBillForm.PostOptionClick(Sender: TObject);
begin
  If PostOption.ItemIndex = 1 then
    begin
     PostArea.Text := '';
     PostBook.Text := '';
    end;
end;

procedure TARPostingLateBillForm.FormShow(Sender: TObject);
begin
  Cutoffdate.Date := Now;
end;

end.
