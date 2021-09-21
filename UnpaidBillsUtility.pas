unit UnpaidBillsUtility;

interface

uses
  Windows, Messages, Classes, SysUtils, Graphics, Controls, StdCtrls, Forms,
  Dialogs, DBCtrls, DB, ExtCtrls, Mask, Buttons, Grids, DBGrids, 
  PDJSillyLabel, VolDBEdit, VolDBGrid, PDJRotoLabel, Gauges;

type
  TSelectDatabaseForm = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    BitBtn3: TBitBtn;
    Edit3: TEdit;
    Label3: TLabel;
    BitBtn4: TBitBtn;
    Gauge1: TGauge;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2Change(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  SelectDatabaseForm: TSelectDatabaseForm;

implementation

uses BillMenu, Data;

{$R *.DFM}

Var
OEBRCount : Integer;

procedure TSelectDatabaseForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  SelectDatabaseForm := Nil;
end;

procedure TSelectDatabaseForm.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TSelectDatabaseForm.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key=#13 then
    begin
      //BillingData.UnPB.IndexName := 'BillNumber';
      //BillingData.UnPB.FindKey([Edit1.Text]);
      Edit2.SetFocus;
    end;
end;

procedure TSelectDatabaseForm.Edit2Change(Sender: TObject);
begin
  OEBRCount := 0;
end;

procedure TSelectDatabaseForm.Edit2Exit(Sender: TObject);
Var Check : Integer;
begin
   Val(Edit2.Text,OEBRCount,Check);
end;

procedure TSelectDatabaseForm.BitBtn1Click(Sender: TObject);
begin
  With BillingData do
    begin
    end;
end;

procedure TSelectDatabaseForm.BitBtn3Click(Sender: TObject);
begin
   //BillingData.UnPB.IndexName := 'UnPBCode';
end;

procedure TSelectDatabaseForm.Edit3Change(Sender: TObject);
begin
 If Length(Edit3.Text) = 4 then
   begin
     //BillingData.UnPB.Filter   := 'BILLMONTH = '+QuotedStr(Edit3.Text);
     //BillingData.UnPB.Filtered := True;
   end else
   begin
     //BillingData.UnPB.Filter   := '';
     //BillingData.UnPB.Filtered := False;
   end;
end;

procedure TSelectDatabaseForm.BitBtn4Click(Sender: TObject);
Var
Year : String[4];

begin
  With BillingData do
    begin
     Gauge1.MinValue := 0;
     Gauge1.MaxValue := UnPB.RecordCount;
     Gauge1.Progress := 0;
     UnPB.First;

     While not UnPB.Eof do
      begin

      Gauge1.AddProgress(1);
      Application.ProcessMessages;

      Year := Copy(UnPBDate.Text,7,4);

      UnPB.Edit;

      If (Year = '1998') or
         (Year = '1999') or
         (Year = '2000') or
         (Year = '2001') or
         (Year = '2002') then
           UnPBDocument.Text := UnPBDocument.Text + '-' + Copy(UnPBDate.Text,9,2);

      If Length(UnPBArea.Text) = 2 then UnPBArea.Text := '0' + UnPBArea.Text;
      If Length(UnPBBook.Text) = 2 then UnPBBook.Text := '0' + UnPBBook.Text;

      UnPB.Post;
      UnPB.Next;
      end;
      ShowMessage('Done...');
      Gauge1.Progress := 0;
    end;
end;

end.
