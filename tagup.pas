unit tagup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, MemDS, DBAccess, MyAccess, StdCtrls, NxEdit, Grids, DBGrids,
  CRGrid, NxCollection, CRDBGrid1;

type
  TTagUnpaidBillsForm = class(TForm)
    CreateTag: TMyQuery;
    Tagged: TMyQuery;
    TaggedDocument: TStringField;
    TaggedCode: TFloatField;
    TaggedArea: TStringField;
    TaggedBook: TStringField;
    TaggedAccountNumber: TStringField;
    TaggedDate: TDateField;
    TaggedName: TStringField;
    TaggedBillMonth: TStringField;
    TaggedRateCode: TStringField;
    TaggedReading: TFloatField;
    TaggedKilowattHour: TFloatField;
    TaggedAmount: TFloatField;
    TaggedRemarks: TStringField;
    dsTaggedf: TMyDataSource;
    Search: TNxButtonEdit;
    NxButton1: TNxButton;
    NxButton2: TNxButton;
    NxButton3: TNxButton;
    NxHeaderPanel1: TNxHeaderPanel;
    NxEdit1: TNxEdit;
    NxLabel1: TNxLabel;
    NxLabel2: TNxLabel;
    NxEdit2: TNxEdit;
    InsertTag: TMyQuery;
    NxComboBox1: TNxComboBox;
    NxLabel3: TNxLabel;
    NxButton4: TNxButton;
    NxButton5: TNxButton;
    CRDBGrid1: TCRDBGrid1;
    procedure FormCreate(Sender: TObject);
    procedure SearchButtonClick(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure NxEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure NxButton4Click(Sender: TObject);
    procedure NxButton5Click(Sender: TObject);
    procedure NxButton2Click(Sender: TObject);
    procedure NxButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TagUnpaidBillsForm: TTagUnpaidBillsForm;

implementation

uses Data;

{$R *.dfm}

procedure TTagUnpaidBillsForm.FormCreate(Sender: TObject);
begin
   try
     CreateTag.Execute;
   except
   end;
   Tagged.ParamByName('name').Text          := '%';
   Tagged.ParamByName('accountnumber').Text := '%';
   Tagged.Open;
   Tagged.Last;
end;

procedure TTagUnpaidBillsForm.SearchButtonClick(Sender: TObject);
begin
   Tagged.Close;
   Tagged.ParamByName('name').Text          := '%'+Search.Text+'%';
   Tagged.ParamByName('accountnumber').Text := '%'+Search.Text+'%';
   Tagged.Open;
end;

procedure TTagUnpaidBillsForm.NxButton1Click(Sender: TObject);
begin
   Tagged.Close;
   Tagged.ParamByName('name').Text          := '%';
   Tagged.ParamByName('accountnumber').Text := '%';
   Tagged.Open;
   Tagged.Last;
   NxHeaderPanel1.Left    := 212;
   NxHeaderPanel1.Top     := 136;
   NxHeaderPanel1.Visible := True;
   NxHeaderPanel1.BringToFront;
   NxEdit1.SetFocus;
   NxButton1.Enabled := False;
   NxButton2.Enabled := False;
   NxButton3.Enabled := False;
end;

procedure TTagUnpaidBillsForm.NxEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 then
    begin
      Perform(CM_DIALOGKEY,VK_TAB,0);
      Key := #0;
    end;
end;

procedure TTagUnpaidBillsForm.NxButton4Click(Sender: TObject);
begin
  InsertTag.ParamByName('accountnumber').Text := NxEdit1.Text;
  InsertTag.ParamByName('billmonth').Text     := NxEdit2.Text;
  InsertTag.ParamByName('remarks').Text       := NxComboBox1.Text;
  InsertTag.Execute;

  If InsertTag.RowsAffected = 0 then MessageDlg('Cannot find that bill...', mtError, [mbOK], 0);

  Tagged.Refresh;
  Tagged.Last;
  NxEdit1.SetFocus;

end;

procedure TTagUnpaidBillsForm.NxButton5Click(Sender: TObject);
begin
  NxHeaderPanel1.Visible := False;
  NxButton1.Enabled := True;
  NxButton2.Enabled := True;
  NxButton3.Enabled := True;
end;

procedure TTagUnpaidBillsForm.NxButton2Click(Sender: TObject);
begin
  if (MessageDlg('Confirm delete', mtConfirmation, [mbOK, mbCancel], 0) = mrCancel) then exit;

  Tagged.Delete;
  
end;

procedure TTagUnpaidBillsForm.NxButton3Click(Sender: TObject);
begin
   Tagged.Close;
   Close;
end;

procedure TTagUnpaidBillsForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
   TagUnpaidBillsForm := Nil;
end;

end.


