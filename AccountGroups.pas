unit AccountGroups;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, DBCtrls, Menus, BarMenus, Grids, DBGrids,
  VolFndEd, ExtCtrls;

type
  TAccountGroupsForm = class(TForm)
    AccountGroups: TTable;
    AcctGrpDetail: TTable;
    dsAcctGrp: TDataSource;
    dsAcctGrpDetail: TDataSource;
    AcctGrpMainMenu: TBcBarMainMenu;
    File1: TMenuItem;
    N1: TMenuItem;
    Exit1: TMenuItem;
    NewGroup1: TMenuItem;
    UnPB: TTable;
    dsUnPB: TDataSource;
    GroupBox1: TGroupBox;
    AcctDetailGrid: TDBGrid;
    Label2: TLabel;
    Label3: TLabel;
    GroupGrid: TDBGrid;
    AcctGrpDetailAccountGroupID: TIntegerField;
    AcctGrpDetailCharge1: TCurrencyField;
    AcctGrpDetailAversionFee: TCurrencyField;
    AcctGrpDetailName: TStringField;
    AccountGroupsObjectID: TAutoIncField;
    AccountGroupsName: TStringField;
    AccountGroupsBillMonth: TStringField;
    AccountGroupsTotalAversionFee: TCurrencyField;
    AccountGroupsTotalCharges: TCurrencyField;
    UnPBDocument: TStringField;
    UnPBName: TStringField;
    UnPBBillMonth: TStringField;
    UnPBRateCode: TStringField;
    UnPBAmount: TCurrencyField;
    GroupBox2: TGroupBox;
    OEBRFinder: TVolgaFindEdit;
    UnPBGrid: TDBGrid;
    Label1: TLabel;
    GroupFinder: TVolgaFindEdit;
    GroupPopUpMenu: TBcBarPopupMenu;
    PrintthisGroup1: TMenuItem;
    GroupFinderPopupMenu: TPopupMenu;
    Filter1: TMenuItem;
    Search1: TMenuItem;
    Fields1: TMenuItem;
    Name1: TMenuItem;
    Billmonth1: TMenuItem;
    AcctGrpDetailBillNumber: TStringField;
    AccountGroupsAddress: TStringField;
    Recompute: TButton;
    BillsSummary: TQuery;
    BillsSummaryTotalAversionFee: TCurrencyField;
    BillsSummaryTotalCharges: TCurrencyField;
    AcctGrpDetailBillDate: TDateField;
    AcctGrpDetailBillMonth: TStringField;
    AcctGrpDetailRateCode: TStringField;
    UnPBDate: TDateField;
    UnPBArea: TStringField;
    UnPBBook: TStringField;
    UnPBAccountNumber: TStringField;
    UnPBKilowattHour: TCurrencyField;
    BillsSummaryTotalBills: TIntegerField;
    AccountGroupsTotalBills: TFloatField;
    procedure Exit1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GroupGridKeyPress(Sender: TObject; var Key: Char);
    procedure UnPBGridKeyPress(Sender: TObject; var Key: Char);
    procedure Filter1Click(Sender: TObject);
    procedure Search1Click(Sender: TObject);
    procedure Name1Click(Sender: TObject);
    procedure Billmonth1Click(Sender: TObject);
    procedure NewGroup1Click(Sender: TObject);
    procedure RecomputeClick(Sender: TObject);
    procedure AcctGrpDetailAfterPost(DataSet: TDataSet);
    procedure PrintthisGroup1Click(Sender: TObject);
    procedure PrintReport;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure OEBRFinderKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    Group: TTable;
    Bills: TTable;
    bPrinting : Boolean;
    bCancelPrint : Boolean;
    procedure PrintHeading;
    procedure PrintFooter;
  public
    { Public declarations }
  end;

var
  AccountGroupsForm: TAccountGroupsForm;
  Lst              : Text;
  HeadingSW        : Boolean;
  PageCount        : Word;
  LineCount        : Word;
  TotalConsumer    : Word;

implementation

uses StatusUpdate, ModTools, PrintAccountGroup;

{$R *.dfm}

procedure TAccountGroupsForm.Exit1Click(Sender: TObject);
begin
  Close;
end;

procedure TAccountGroupsForm.FormShow(Sender: TObject);
begin
  AccountGroups.Open;
  AcctGrpDetail.Open;
  UnPB.Open;

  Group := AccountGroups;
  Bills := AcctGrpDetail;
  
  bPrinting := False;
  bCancelPrint := False;

end;

procedure TAccountGroupsForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  AccountGroups.Close;
  AcctGrpDetail.Close;
  UnPB.Close;
end;

procedure TAccountGroupsForm.GroupGridKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key = '+') then
  begin
    AccountGroups.Append;
  end
  else if (Key = #13) then
  begin
    AccountGroups.Post;
  end;
end;

procedure TAccountGroupsForm.UnPBGridKeyPress(Sender: TObject;
  var Key: Char);
var AversionFee: Currency;
begin
  AversionFee := 0;
  if (Key = #13) then
  begin
    try
      try
        if (UnPBRateCode.Text = 'R') or
           (UnPBRateCode.Text = 'S') or
           (UnPBRateCode.Text = 'P') then
        begin
          AversionFee := 25;
        end
        else if (UnPBRateCode.Text = 'C') then
        begin
          AversionFee := 50;
        end
        else if (UnPBRateCode.Text = 'I') then
        begin
          AversionFee := 500;
        end;

        AcctGrpDetail.Append;
        AcctGrpDetailAccountGroupID.AsInteger  := AccountGroupsObjectID.AsInteger;
        AcctGrpDetailBillNumber.Text           := UnPBDocument.Text;
        AcctGrpDetailBillDate.Text             := UnPBDate.Text;
        AcctGrpDetailBillMonth.Text            := UnPBBillMonth.Text;
        AcctGrpDetailName.Text                 := UnPBName.Text;
        AcctGrpDetailRateCode.Text             := UnPBRateCode.Text;
        AcctGrpDetailCharge1.AsCurrency        := UnPBAmount.AsCurrency;
        AcctGrpDetailAversionFee.AsCurrency    := AversionFee;
        AcctGrpDetail.Post;
      except
        on E : Exception do
          MessageDlg(E.Message, mtError, [mbOk], 0);
      end;
    finally
      AcctGrpDetail.Cancel;
    end;
  end; // End of <enter> key
end;

procedure TAccountGroupsForm.Filter1Click(Sender: TObject);
begin
  GroupFinder.FindStyle := vfsFilter;
  Filter1.Checked := True;
end;

procedure TAccountGroupsForm.Search1Click(Sender: TObject);
begin
  GroupFinder.FindStyle := vfsNavigate;
  Search1.Checked := True;
end;

procedure TAccountGroupsForm.Name1Click(Sender: TObject);
begin
  GroupFinder.DataField := 'Name';
  Name1.Checked := True;
end;

procedure TAccountGroupsForm.Billmonth1Click(Sender: TObject);
begin
  GroupFinder.DataField := 'BillMonth';
  Billmonth1.Checked := True;
end;

procedure TAccountGroupsForm.NewGroup1Click(Sender: TObject);
begin
  if not Assigned(PrintAccountGroupForm) then
    PrintAccountGroupForm := TPrintAccountGroupForm.Create(Self);

   PrintAccountGroupForm.ShowModal;
end;

procedure TAccountGroupsForm.RecomputeClick(Sender: TObject);
begin
  with BillsSummary do
  begin
    try
      try
        SQL.Text := 'select sum(AversionFee) TotalAversionFee, sum(Charge1) TotalCharges, count(*) TotalBills ' +
               'from AccountGroupsDetail.db ' +
               'WHERE AccountGroupID = ' + AccountGroupsObjectID.Text;


        ExecSQL;
        Open;
        First;
        if not (Eof) then
        begin
          AccountGroups.Edit;
          AccountGroupsTotalAversionFee.AsCurrency := BillsSummaryTotalAversionFee.AsCurrency;
          AccountGroupsTotalCharges.AsCurrency     := BillsSummaryTotalCharges.AsCurrency;
          AccountGroupsTotalBills.AsInteger        := BillsSummaryTotalBills.AsInteger;
          AccountGroups.Post;
        end
        else
        begin
          AccountGroups.Edit;
          AccountGroupsTotalAversionFee.AsCurrency := 0;
          AccountGroupsTotalCharges.AsCurrency     := 0;
          AccountGroupsTotalBills.AsInteger        := 0;
          AccountGroups.Post;
        end;
      except
        on E: Exception do
          MessageDlg(E.Message, mtError, [mbOk], 0);
      end;
    finally
      Close;
    end;
  end;
end;

procedure TAccountGroupsForm.AcctGrpDetailAfterPost(DataSet: TDataSet);
begin
  RecomputeClick(Self);  
end;

procedure TAccountGroupsForm.PrintthisGroup1Click(Sender: TObject);
begin
 try
   try
     AccountGroups.Filter := 'ObjectID = ' + AccountGroupsObjectID.Text;
     AccountGroups.Filtered := True;
     PrintReport;
   except
     on E: Exception do
       MessageDlg(E.Message, mtError, [mbOk], 0);
   end;
 finally
 end;
end;


Procedure TAccountGroupsForm.PrintHeading;
begin
  with AccountGroupsForm do
  begin
    Write(Lst,#18);
    Writeln(lst,#27 + 'M'+'PAGE # '+IntToStr(PageCount));
    Writeln(lst,JustStr('SURIGAO DEL SUR II ELECTRIC COOPERATIVE, INC.',' ',95,2));
    Writeln(lst,JustStr('(SURSECO II)',' ',95,2));
    Writeln(lst,JustStr(FormatDateTime('mmmm dd, yyyy', Date),' ',95,1));
    Writeln(lst,#27 + '4',JustStr('STATEMENT OF ACCOUNT',' ',95,2),#27+'5');
    Writeln(lst,JustStr('For the Month of ' + MonthStr(Copy(AccountGroupsBillMonth.Text,1,2), fmLong) + ', ''' + Copy(AccountGroupsBillMonth.Text,3,2),' ',95,2));
    Writeln(Lst);
    Writeln(lst,'IN             : ' + AccountGroupsName.Text);
    Writeln(lst,'ACCOUNT        : ' + AccountGroupsAddress.Text);
    Writeln(lst,'WITH           : Surigao del Sur');
    Write(Lst,#27+'M');
    Writeln(lst,'|---------------------------------------------------------------------------------------------|');
    Writeln(lst,'|  DATE         |  PARTICULARS                  |  OEBR #         |  CHARGES   |  TOTAL       |');
    Writeln(lst,'|---------------------------------------------------------------------------------------------|');
  end;
end;

Procedure TAccountGroupsForm.PrintFooter;
begin
  Write(Lst,#18);
  Write(Lst,#27+'M');
  Writeln(lst,'|---------------------------------------------------------------------------------------------|');
  Writeln(Lst);
  Writeln(lst,JustStr('Prepared by:',' ',30,2),
              JustStr('Checked by:',' ',35,2),
              JustStr('Approved by:',' ',35,2));
  Writeln(Lst);
  Writeln(Lst);
  Writeln(lst,JustStr('ZOSIMA S. AZARCON',' ',30,2),
              JustStr('ARLINDA C. YPARRAGUIRRE',' ',35,2),
              JustStr('ENGR. IGLORIO R. HINAYON',' ',35,2));
  Writeln(lst,JustStr('Head, Billing Section',' ',30,2),
              JustStr('Chief, Consumer Accounts Division',' ',35,2),
              JustStr('General Manager',' ',35,2));

end;

procedure TAccountGroupsForm.PrintReport;
var
  i : Integer;
begin
// PrintClick(Sender: TObject); function begins

  TotalConsumer  := 0;
  LineCount      := 0;
  PageCount      := 1;

  // Prompt for confirmation
  if (MessageDlg('Please turn the printer on.' + #13 +
    'Continue printing?', mtConfirmation, mbOkCancel, 0) = mrCancel) then
      Exit;

  // DONE -oLeslee : AssignFile to LPT1
  AssignFile(Lst,'LPT1');
  Rewrite(Lst);
  If IOResult <> 0 then
  begin
   MessageDlg('Printer not Ready', mtError, [mbOk], 0);
   Exit;
  end;

  If not assigned(BillingStatusUpdateForm) then
  BillingStatusUpdateForm := TBillingStatusUpdateForm.Create(Self);
  BillingStatusUpdateForm.Caption := 'STATEMENT OF ACCOUNT';
  BillingStatusUpdateForm.Label1.Caption := 'Printing Statement of Account...';
  BillingStatusUpdateForm.Show;

  BillingStatusUpdateForm.ProgressBar1.Min := 0;
  BillingStatusUpdateForm.ProgressBar1.Max := Group.RecordCount;

  BillingStatusUpdateForm.ProgressBar1.Position := 0;

  try
    try
      TotalConsumer  := 0;
      LineCount      := 0;
      PageCount      := 1;
      HeadingSW := True;

      with AccountGroupsForm do
      begin
        Group.First;
        while not (Group.Eof) and not (bCancelPrint) do
        begin
          Application.ProcessMessages;
          bPrinting := True;

          If HeadingSW then
          begin
            PrintHeading;
            HeadingSW := False;
          end;

          Bills.First;
          while not Bills.Eof do
          begin
            If HeadingSW then
            begin
              PrintHeading;
              HeadingSW := False;
            end;

            Writeln(Lst, '|',
                         JustStr(FormatDateTime('dd mmm, yyyy',
                           AcctGrpDetailBillDate.AsDateTime),' ', 15, 2), '| ',
                         JustStr(AcctGrpDetailName.Text, ' ', 30, 0),'| ',
                         JustStr(AcctGrpDetailBillNumber.Text, ' ', 15, 1),' |',
                         Format(AcctGrpDetailCharge1.AsCurrency, '###,###.##'),'|',
                         ' ':14,'|'
                         );

            Bills.Next;

            Inc(LineCount);
            Inc(TotalConsumer);
            
            If (LineCount = 25) and not Bills.eof then
            begin
              Writeln(lst,'|---------------------------------------------------------------------------------------------|');
              LineCount := 0;
              Inc(PageCount);
              Write(Lst,#12);
              HeadingSW := True;
            end
          end;

          Writeln(Lst,'|',' ':15,'|',' ':31,'|',' ':17,'|',' ':12,'|',' ':14,'|');
          Writeln(Lst, '|',' ':15,
                       '| ',
                       JustStr('ADD: Aversion Fee',' ', 30, 0),'| ',
                       ' ':15,' |',
                       Format(AccountGroupsTotalAversionFee.AsCurrency, '###,###.##'),'|',
                       ' ':14,'|'
                       );

          for i := 0 to 6 do
          begin
            Writeln(Lst,'|',' ':15,'|',' ':31,'|',' ':17,'|',' ':12,'|',' ':14,'|');
          end;

          Writeln(Lst,'|',' ':15,'|',' ':31,'|',' ':17,'|',' ':12,'|','--------------','|');

          Writeln(Lst, '|',' ':15,
                       '| ',
                       ' ':30,'| ',
                       ' ':15,' |',
                       ' ':12,'|',
                       Format(AccountGroupsTotalCharges.AsCurrency, '#,###,###.##'),'|'
                       );

          for i := 0 to (25 - LineCount) do
          begin
            Writeln(Lst,'|',' ':15,'|',' ':31,'|',' ':17,'|',' ':12,'|',' ':14,'|');
          end;

          PrintFooter;
          LineCount := 0;
          PageCount := 1;
          Write(Lst,#12);
          HeadingSW := True;

          BillingStatusUpdateForm.ProgressBar1.StepBy(1);
          Application.ProcessMessages;
          Group.Next;
        end;
        bPrinting := False;
      end;
    except
      on E: Exception do
        MessageDlg(E.Message, mtError, [mbOk], 0);
    end;
  finally
    Write(lst,#18,#12);
    CloseFile(Lst);
    Group.Filter := '';
    Group.Filtered := False;
    BillingStatusUpdateForm.Close;
    MessageDlg('Printing done.', mtInformation, [mbOk], 0);
  end;

end;

procedure TAccountGroupsForm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if (bPrinting) then
  begin
    if (MessageDlg('Cancel Print?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
    begin
      bCancelPrint := True;
      CanClose := True;
    end;

  end;

end;

procedure TAccountGroupsForm.OEBRFinderKeyPress(Sender: TObject;
  var Key: Char);
begin
  UnPBGridKeyPress(Sender, Key);

  if (Key = #13) then
  begin
    OEBRFinder.Text := '';
    OEBRFinder.SetFocus;
  end;
  
end;

end.
