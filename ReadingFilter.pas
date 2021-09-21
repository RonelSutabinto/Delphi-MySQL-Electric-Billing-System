unit ReadingFilter;

interface

uses
  Windows,
  Messages,
  Classes,
  SysUtils,
  Graphics,
  Controls,
  StdCtrls,
  Forms,
  Dialogs,
  DBCtrls,
  DB,
  ExtCtrls,
  Mask,
  Buttons,
  Grids,
  DBGrids,
  PDJSillyLabel,
  PDJRotoLabel,
  ComCtrls,
  MemDS,
  DBAccess,
  MyAccess,
  CRGrid,
  DsFancyButton,
  NxEdit,
  NxCollection, CRDBGrid1;
  
type
  TReadingDataFilterForm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    PDJSillyLabel1: TNxButton;
    PDJSillyLabel2: TNxButton;
    Label5: TLabel;
    CBook: TEdit;
    BMonth: TEdit;
    Label2: TLabel;
    TempBillSumm: TMyQuery;
    DataSource1: TDataSource;
    Bevel1: TBevel;
    ReadingDate: TNxDatePicker;
    previousdate: TNxDatePicker;
    AllButton: TNxRadioButton;
    CreateNewConn: TMyQuery;
    AddNewColumn: TMyQuery;
    CBM: TMyQuery;
    CBMmbillmonth: TStringField;
    CBMmbillorder: TDateField;
    DBGrid1: TCRDBGrid1;
    TempBillSummcbook: TStringField;
    TempBillSummbillmonth: TStringField;
    TempBillSummpresentreadingdate: TStringField;
    TempBillSummpreviousreadingdate: TStringField;
    TempBillSummtotalaccounts: TLargeintField;
    procedure PDJSillyLabel1Click(Sender: TObject);
    procedure PDJSillyLabel2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  ReadingDataFilterForm: TReadingDataFilterForm;

implementation

uses Data, ReadingCompute, BillMaster;

{$R *.DFM}

procedure TReadingDataFilterForm.PDJSillyLabel1Click(Sender: TObject);
begin
 If not assigned(ReadingComputeForm) then
 ReadingComputeForm := TReadingComputeForm.Create(Application);

  With ReadingComputeForm,BillingData do
    begin
      If Copy(BMonth.Text,1,2) = '01' then BillMonthStr := 'JANUARY'   + Copy(BMonth.Text,3,2);
      If Copy(BMonth.Text,1,2) = '02' then BillMonthStr := 'FEBRUARY'  + Copy(BMonth.Text,3,2);
      If Copy(BMonth.Text,1,2) = '03' then BillMonthStr := 'MARCH'     + Copy(BMonth.Text,3,2);
      If Copy(BMonth.Text,1,2) = '04' then BillMonthStr := 'APRIL'     + Copy(BMonth.Text,3,2);
      If Copy(BMonth.Text,1,2) = '05' then BillMonthStr := 'MAY'       + Copy(BMonth.Text,3,2);
      If Copy(BMonth.Text,1,2) = '06' then BillMonthStr := 'JUNE'      + Copy(BMonth.Text,3,2);
      If Copy(BMonth.Text,1,2) = '07' then BillMonthStr := 'JULY'      + Copy(BMonth.Text,3,2);
      If Copy(BMonth.Text,1,2) = '08' then BillMonthStr := 'AUGUST'    + Copy(BMonth.Text,3,2);
      If Copy(BMonth.Text,1,2) = '09' then BillMonthStr := 'SEPTEMBER' + Copy(BMonth.Text,3,2);
      If Copy(BMonth.Text,1,2) = '10' then BillMonthStr := 'OCTOBER'   + Copy(BMonth.Text,3,2);
      If Copy(BMonth.Text,1,2) = '11' then BillMonthStr := 'NOVEMBER'  + Copy(BMonth.Text,3,2);
      If Copy(BMonth.Text,1,2) = '12' then BillMonthStr := 'DECEMBER'  + Copy(BMonth.Text,3,2);

      PresentReadingDate                := DateToStr(ReadingDate.Date);
      PreviousReadingDate               := DateToStr(PreviousDate.Date);
      BillMonthLabel.Caption            := BillMonthStr;
      ReadingDateLabel.Caption          := PresentReadingDate;
      BillMonth                         := BMonth.Text;
      All                               := AllButton.Checked;
      Area.Text                         := '';
      Book.Text                         := '';

      If AllButton.Checked = false then
      begin
        StaticText2.Caption := CBook.Text;
        Area.Text           := Copy(CBook.Text,1,2);
        Book.Text           := Copy(CBook.Text,3,2);
      end
      else
      StaticText2.Caption := 'All Books';

      Bill.Close;
      If AllButton.Checked = false then
      Bill.FilterSQL := 'CBook = '+QuotedStr(CBook.Text) else
      Bill.FilterSQL := '';
      Bill.OrderFields := 'accountnumber';
      Bill.Open;

      MRate.Close;
      MRate.SQL.Clear;
      MRate.SQL.Add('select * from meterrate');
      MRate.FilterSQL := 'Mbillmonth = '+QuotedStr(BMonth.Text);
      MRate.Open;

      PRate.Close;
      PRate.SQL.Clear;
      PRate.SQL.Add('select * from meterrate');
      PRate.FilterSQL := 'Mbillmonth = '+QuotedStr(BMonth.Text);
      PRate.Open;

       Try
        CreateNewConn.Execute;
       except
       end;

       Try
        AddNewColumn.Execute;
       except
       end;

       NewConn.Close;
       NewConn.SQl.Clear;
       NewConn.SQl.Add('select * from newconn');
       NewConn.Open;


    end;

  ReadingComputeForm.AreaNxEdit.Text := '0' + Copy(CBook.Text,1,2);
  ReadingComputeForm.BillMonthNxEdit.Text := BMonth.Text;

  ReadingComputeForm.cbookBillmonth[0] := '';
  ReadingComputeForm.cbookBillmonth[1] := '';
  ReadingComputeForm.cbookBillmonth[0] := cbook.Text;
  ReadingComputeForm.cbookBillmonth[1] := BMonth.Text;

  TempBillSumm.Close;
  BillMasterForm.linesonlyClick(self);
  Close;

end;

procedure TReadingDataFilterForm.PDJSillyLabel2Click(Sender: TObject);
begin
  TempBillSumm.Close;
  Close;
end;

procedure TReadingDataFilterForm.FormShow(Sender: TObject);
begin
  ReadingDate.Date  := now;
  PreviousDate.Date := now - 30;
  TempBillSumm.Close;
  try
  TempBillSumm.Open;
  except
  end;
  CBM.Open;
  BMonth.Text := CBMmbillmonth.Text;
  CBM.Close;
end;

procedure TReadingDataFilterForm.DataSource1DataChange(Sender: TObject;
  Field: TField);
begin
  CBook.Text            := TempBillSummcbook.Text;
  BMonth.Text           := TempBillSummbillmonth.Text;
  ReadingDate.Date      := TempBillSummpresentreadingdate.AsDateTime;
  previousdate.Date     := TempBillSummpreviousreadingdate.AsDateTime;
end;

procedure TReadingDataFilterForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  ReadingDataFilterForm := Nil;
end;

end.
