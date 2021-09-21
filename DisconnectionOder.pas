unit DisconnectionOder;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Gradient, ExtCtrls, Grids, DBGrids, StdCtrls, DB, PDJSillyLabel,
  Mask, DBCtrls;

type
  TDisconnectionOrderForm = class(TForm)
    Panel1: TPanel;
    Gradient1: TGradient;
    DiscoBillsGrid: TDBGrid;
    Label1: TLabel;
    EditReceiptNumber: TEdit;
    Area: TLabel;
    Book: TLabel;
    Address: TLabel;
    BillMonth: TLabel;
    Print: TPDJSillyLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    procedure EditReceiptNumberKeyPress(Sender: TObject; var Key: Char);
    procedure PrintClick(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
  private
    procedure PrintHeading;
    procedure PrintFooter;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DisconnectionOrderForm: TDisconnectionOrderForm;
  Lst              : Text;
  HeadingSW        : Boolean;
  PageCount        : Word;
  LineCount        : Word;
  TotalConsumer    : Word;

implementation

uses Data, StatusUpdate, ModTools;

{$R *.dfm}

procedure TDisconnectionOrderForm.EditReceiptNumberKeyPress(
  Sender: TObject; var Key: Char);
begin
  if (key = #13) then
  begin
    with BillingData do
    begin
      try
        try
          if not (UnPB.Locate('Document', EditReceiptNumber.Text, [loCaseInsensitive])) then
          begin
            MessageDlg('Bill Number not found.', mtError, [mbOk], 0);
            EditReceiptNumber.SelectAll;
            Exit;
          end;

          Master.Locate('Code', UnPBCode.Text, [loCaseInsensitive]);

          DiscoOrder.Append;
          DiscoOrderArea.Text       := UnPBArea.Text;
          DiscoOrderBook.Text       := UnPBBook.Text;
          DiscoOrderAccountNumber.Text := UnPBAccountNumber.Text;
          DiscoOrderBillNumber.Text := UnPBDocument.Text;
          DiscoOrderBillMonth.Text  := UnPBBillMonth.Text;
          DiscoOrderName.Text       := UnPBName.Text;
          DiscoOrderAddress.Text     := MasterAddress.Text;
          DiscoOrderMeterSerial.Text := MasterSerial.Text;
          DiscoOrderReading.Text     := UnPBReading.Text;
          DiscoOrderAmount.Text      := UnPBAmount.Text;
          DiscoOrderRateCode.Text    := UnPBRateCode.Text;
          discoorder.Post;
          DBEdit1.SetFocus;

        except
          on E: Exception do
            MessageDlg(E.Message, mtError, [mbOk], 0);
          else
            raise;
        end;
      finally
        DiscoOrder.Cancel;
        EditReceiptNumber.SelectAll;
      end;

    end;
  end;

end;

procedure TDisconnectionOrderForm.PrintClick(Sender: TObject);
var
  i : Integer;
begin
  TotalConsumer  := 0;
  LineCount      := 1;
  PageCount      := 1;

  // Prompt for confirmation
  if (MessageDlg('Please turn the printer on.',
    mtConfirmation, mbOkCancel, 0) = mrCancel) then
      Exit;

  // DONE -oLeslee : AssignFile to LPT1
  AssignFile(Lst,'LPT1');
  Rewrite(Lst);
  If IOResult <> 0 then
  begin
    MessageDlg('Printer not ready', mtError, [mbOk], 0);
    Exit;
  end;

  HeadingSW := True;

  with BillingData do
  begin
    try
      try
        If not assigned(BillingStatusUpdateForm) then
        BillingStatusUpdateForm := TBillingStatusUpdateForm.Create(Application);
        BillingStatusUpdateForm.Caption := 'DISCONNECTION ORDER';
        BillingStatusUpdateForm.Label1.Caption := 'Printing Disconnection Order.....';
        BillingStatusUpdateForm.Show;

        BillingStatusUpdateForm.ProgressBar1.Min := 0;
        BillingStatusUpdateForm.ProgressBar1.Max := DiscoOrder.RecordCount;

        BillingStatusUpdateForm.ProgressBar1.Position := 0;

        DiscoOrder.First;
        while not DiscoOrder.Eof do
        begin
          Application.ProcessMessages;

          If HeadingSW then
          begin
           PrintHeading;
           HeadingSW := False;
          end;

          Writeln(Lst, '|',JustStr(IntToStr(LineCount),' ',4,0),'|',
                           JustStr(DiscoOrderName.Text,' ',30,0),'|',
                           JustStr(DiscoOrderAddress.Text,' ',30,0),'|',
                           JustStr(MonthStr(Copy(DiscoOrderBillMonth.Text,1,2), fmShort),' ',3,0) +
                           ' ''' + Copy(DiscoOrderBillMonth.Text,3,2),'|',
                           JustStr(DiscoOrderBillNumber.Text,' ',15,1),'|',
                           JustStr(DiscoOrderMeterSerial.Text,' ',20,1),'|',
                           '_______','|',
                           Format(DiscoOrderAmount.AsCurrency,'###,###.##'),'|',
                           JustStr(DiscoOrderRateCode.Text,' ',3,2),'|',
                           JustStr(IntToStr(LineCount),' ',4,0),'|',
                           JustStr(DiscoOrderRemarks.Text,' ',18,0),'|'
                           );

          Inc(TotalConsumer);
          Inc(LineCount);
          If (LineCount > 35) and not Master.eof then
          begin
            Writeln(lst,'|----------------------------------------------------------------------------------------------------------------------------------------------------------------|');
            LineCount := 1;
            Inc(PageCount);
            Write(Lst,#12);
            HeadingSW := True;
          end;

          BillingStatusUpdateForm.ProgressBar1.StepBy(1);
          DiscoOrder.Next;
        end;

        for i := 0 to (35 - LineCount) do
        begin
          Writeln(Lst,'|    |                              |                              |       |               |                    |       |            |   |    |                  |');
        end;

        PrintFooter;

        BillingStatusUpdateForm.FormStyle := fsNormal;
        MessageDlg('Printing done.', mtInformation, [mbOk], 0);
      except
        on E: Exception do
          MessageDlg(E.Message, mtError, [mbOk], 0);
      end;
    finally
      Write(lst,#18,#12);
      CloseFile(Lst);
      
      BillingStatusUpdateForm.Close;
    end; // End of nested try
  end; // End of with BillingData

end;

Procedure TDisconnectionOrderForm.PrintHeading;
begin
  Write(Lst,#18);
  Writeln(lst,#27 + 'P'+'PAGE # '+IntToStr(PageCount));
  Writeln(lst,JustStr('SURIGAO DEL SUR II ELECTRIC COOPERATIVE, INC.',' ',130,2));
  Writeln(lst,JustStr('(SURSECO II)',' ',130,2));
  Writeln(lst,JustStr(FormatDateTime('mmmm dd, yyyy', Date),' ',130,1));
  Writeln(lst,#27 + '4',JustStr('DISCONNECTION ORDER',' ',130,2),#27+'5');
  Writeln(lst,JustStr('For the Month of ' + MonthStr(Copy(BillMonth.Caption,1,2), fmLong) + ', ''' + Copy(BillMonth.Caption,3,2),' ',130,2));
  Writeln(Lst);
  Writeln(lst,'AREA : ' + Area.Caption);
  Writeln(Lst,'BOOK : '+ Book.Caption);
  Writeln(Lst,'ADDRESS : '+ BillingData.VicinityAddress.Text);
  Write(Lst,#27+'M');
  Writeln(lst,'|----------------------------------------------------------------------------------------------------------------------------------------------------------------|');
  Writeln(lst,'|NO. | CONSUMER NAME                | ADDRESS                      | MONTH | BILL NUMBER   | SERIAL NUMBER      |READING|     AMOUNT | T |NO. | REMARKS          |');
  Writeln(lst,'|----------------------------------------------------------------------------------------------------------------------------------------------------------------|');
end;

Procedure TDisconnectionOrderForm.PrintFooter;
begin
  Write(Lst,#18);
  Write(Lst,#27+'M');
  Writeln(lst,'|----------------------------------------------------------------------------------------------------------------------------------------------------------------|');
  Writeln(Lst);
  Writeln(lst,JustStr('Prepared by:',' ',50,2),
              JustStr('Recommending Approval:',' ',50,2),
              JustStr('Approved by:',' ',50,2));
  Writeln(Lst);
  Writeln(Lst);
  Writeln(lst,JustStr('LUZVIMINDA D. CASIO',' ',50,2),
              JustStr('ARLINDA C. YPARRAGUIRRE',' ',50,2),
              JustStr('ENGR. IGLORIO R. HINAYON',' ',50,2));
  Writeln(lst,JustStr('Head, Meter Reading/Collection Section',' ',50,2),
              JustStr('Chief, Consumer Accounts Division',' ',50,2),
              JustStr('General Manager',' ',50,2));

end;

procedure TDisconnectionOrderForm.DBEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 then
    begin
      If DBEdit1.Text <> '' then BillingData.DiscoOrder.Post;
      EditReceiptNumber.SetFocus;
    end;
end;

end.
