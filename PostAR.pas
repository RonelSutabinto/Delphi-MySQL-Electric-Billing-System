unit PostAR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, Mask, PDJSillyLabel, StdCtrls, DB,
   Grids, DBGrids, Gauges, MemDS, DBAccess, MyAccess,
  DsFancyButton, NxCollection, DBGrid1, CRGrid, CRDBGrid1;

type
  TARPostingForm = class(TForm)
    Q: TMyQuery;
    DataSource1: TDataSource;
    MasterUpdateQuery: TMyQuery;
    ARUpdateQuery: TMyQuery;
    UnPBUpdateQuery: TMyQuery;
    BillHistoryUpdateQuery: TMyQuery;
    Panel1: TPanel;
    PDJSillyLabel11: TNxButton;
    PDJSillyLabel12: TNxButton;
    PDJSillyLabel1: TNxButton;
    Animate1: TAnimate;
    Memo1: TMemo;
    DeleteTempBillQuery: TMyQuery;
    RadioGroup1: TRadioGroup;
    PostBook: TLabeledEdit;
    Label1: TLabel;
    PostingDate: TDateTimePicker;
    InsertColl: TMyQuery;
    PostARLedger: TMyQuery;
    InsertAdjLedger: TMyQuery;
    VatLedgerUpdate: TMyQuery;
    InsertPKVRLedger: TMyQuery;
    InsertOCLedger: TMyQuery;
    UpdateOCLedger: TMyQuery;
    DBGrid1: TCRDBGrid1;
    procedure PDJSillyLabel12Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PDJSillyLabel11Click(Sender: TObject);
    procedure PDJSillyLabel1Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure RadioGroup1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ARPostingForm: TARPostingForm;

implementation

uses Data;

{$R *.dfm}

procedure TARPostingForm.PDJSillyLabel12Click(Sender: TObject);

var
  bHasException : Boolean;

procedure HandleException(E : Exception);
begin
  MessageDlg(E.Message, mtError, [mbOk], 0);
  bHasException := True;
end;

begin

  If (RadioGroup1.ItemIndex = 0) and
     (PostBook.Text = '') then
       begin
       MessageDlg('Please select cipher book for posting', mtError, [mbOK], 0);
       exit;
       end;

  if MessageDlg('UPDATE MASTER FROM BILLING FILE'+#13+
                'This will delete all current billing and'+#13+
                'transferred to the Master FIle, Subsidiary Ledger'+#13+
                'Unpaid Bills and Billing History.    Proceed?',mtConfirmation, [mbYes, mbNo], 0) = mrNo then exit;

  PDJSillyLabel12.Enabled := false;
  Animate1.Active := True;
  Memo1.Clear;

   ARUpdateQuery.ParamByName('CBook').Text            := PostBook.Text + '%';
   ARUpdateQuery.ParamByName('postingdate').AsDate    := PostingDate.Date;

   VATLedgerUpdate.ParamByName('CBook').Text          := PostBook.Text + '%';
   VATLedgerUpdate.ParamByName('postingdate').AsDate  := PostingDate.Date;

   UnPBUpdateQuery.ParamByName('CBook').Text          := PostBook.Text + '%';
   UnPBUpdateQuery.ParamByName('postingdate').AsDate  := PostingDate.Date;

   BillHistoryUpdateQuery.ParamByName('CBook').Text   := PostBook.Text + '%';

   MasterUpdateQuery.ParamByName('CBook').Text        := PostBook.Text + '%';

   DeleteTempBillQuery.ParamByName('CBook').Text      := PostBook.Text + '%';

   PostARLedger.ParamByName('CBook').Text             := PostBook.Text + '%';

   InsertOCLedger.ParamByName('CBook').Text           := PostBook.Text + '%';
   InsertOCLedger.ParamByName('PostDate').AsDate      := PostingDate.Date;

   InsertColl.ParamByName('CBook').Text               := PostBook.Text + '%';
   InsertColl.ParamByName('PostingDate1').AsDate      := PostingDate.Date;
   InsertColl.ParamByName('PostingDate2').AsDate      := PostingDate.Date;

   InsertAdjLedger.ParamByName('CBook').Text          := PostBook.Text + '%';

   InsertPKVRLedger.ParamByName('CBook').Text         := PostBook.Text + '%';

   Try

   Memo1.Lines.Add('Updating Master File');
   MasterUpdateQuery.Execute;
   Memo1.Lines.Add(IntToStr(MasterUpdateQuery.RowsAffected)+' Rows affected');
   Application.ProcessMessages;

   Memo1.Lines.Add('Updating A/R Ledger File');
   ARUpdateQuery.Execute;
   Memo1.Lines.Add(IntToStr(ARUpdateQuery.RowsAffected)+' Rows affected');
   Application.ProcessMessages;

   Memo1.Lines.Add('Updating OC Ledger File');
   UpdateOCLedger.Execute;
   Memo1.Lines.Add(IntToStr(UpdateOCLedger.RowsAffected)+' Rows affected');
   Application.ProcessMessages;

   Memo1.Lines.Add('Updating VAT Ledger File');
   VatLedgerUpdate.Execute;
   Memo1.Lines.Add(IntToStr(VatLedgerUpdate.RowsAffected)+' Rows affected');
   Application.ProcessMessages;

   Memo1.Lines.Add('Updating Unpaid Bills File');
   UnPBUpdateQuery.Execute;
   Memo1.Lines.Add(IntToStr(UnPBUpdateQuery.RowsAffected)+' Rows affected');
   Application.ProcessMessages;

   Memo1.Lines.Add('Updating Billing History File');
   BillHistoryUpdateQuery.Execute;
   Memo1.Lines.Add(IntToStr(BillHistoryUpdateQuery.RowsAffected)+' Rows affected');
   Application.ProcessMessages;

   Memo1.Lines.Add('Updating PANTAWID PAYMENTS to A/R Ledger File');
   PostARLedger.Execute;
   Memo1.Lines.Add(IntToStr(PostARLedger.RowsAffected)+' Rows affected');
   Application.ProcessMessages;

   Memo1.Lines.Add('Updating PANTAWID PAYMENTS to Collection File');
   InsertColl.Execute;
   Memo1.Lines.Add(IntToStr(InsertColl.RowsAffected)+' Rows affected');
   Application.ProcessMessages;

   Memo1.Lines.Add('Updating PANTAWID PAYMENTS to PANTAWID Collection File');
   InsertAdjLedger.Execute;
   Memo1.Lines.Add(IntToStr(InsertAdjLedger.RowsAffected)+' Rows affected');
   Application.ProcessMessages;

   Memo1.Lines.Add('Updating PANTAWID RECOVERY PAYMENTS to Recovery File');
   InsertPKVRLedger.Execute;
   Memo1.Lines.Add(IntToStr(InsertPKVRLedger.RowsAffected)+' Rows affected');
   Application.ProcessMessages;

   Memo1.Lines.Add('Updating OC Ledger');
   InsertOCLedger.Execute;
   Memo1.Lines.Add(IntToStr(InsertOCLedger.RowsAffected)+' Rows affected');
   Application.ProcessMessages;

   Memo1.Lines.Add('Deleting Temporary Billing Records');
   DeleteTempBillQuery.Execute;
   Memo1.Lines.Add(IntToStr(DeleteTempBillQuery.RowsAffected)+' Rows affected');
   Application.ProcessMessages;

   except
    on E: Exception do
     begin
      Memo1.Lines.Add(E.Message);
      Memo1.Lines.Add('Error Processing .... Aborting');
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

procedure TARPostingForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
   ARPostingForm := Nil;
end;

procedure TARPostingForm.PDJSillyLabel11Click(Sender: TObject);
begin
  Q.Close;
  Close;
end;

procedure TARPostingForm.PDJSillyLabel1Click(Sender: TObject);
begin
  Q.Close;
  Q.Open;
end;

procedure TARPostingForm.DBGrid1CellClick(Column: TColumn);
begin
  PostBook.Text := Q.FieldValues['CBook'];
end;

procedure TARPostingForm.RadioGroup1Click(Sender: TObject);
begin
  Case RadioGroup1.ItemIndex of
  0 : begin
        PostBook.Enabled := True;
        PostBook.SetFocus;
      end;
  1 : begin
        PostBook.Text    := '';
        PostBook.Enabled := False;
      end;
  end;
end;

end.




