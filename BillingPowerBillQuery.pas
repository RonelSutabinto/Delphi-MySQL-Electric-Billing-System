unit BillingPowerBillQuery;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBCtrls, ExtCtrls, Mask, Gradient, Grids,
  DBGrids;

type
  TBillingPowerBillQueryForm = class(TForm)
    Panel1: TPanel;
    Label3: TLabel;
    EditBillstoPrint: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    EditBillNumber: TEdit;
    Label1: TLabel;
    EditSequence: TEdit;
    Label2: TLabel;
    Label6: TLabel;
    DueDate: TMaskEdit;
    Label5: TLabel;
    Bevel1: TBevel;
    DBGrid1: TDBGrid;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EditSequenceChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BillingPowerBillQueryForm: TBillingPowerBillQueryForm;

implementation

uses Data,
     BillingPrintBills;

{$R *.dfm}

procedure TBillingPowerBillQueryForm.BitBtn2Click(Sender: TObject);
begin
 Close;
end;

procedure TBillingPowerBillQueryForm.BitBtn1Click(Sender: TObject);
begin
If not assigned(BillingPrintBillForm) then
  BillingPrintBillForm := TBillingPrintBillForm.Create(Application);

 With BillingPrintBillForm do
 begin
  BillNum                    := StrToInt(EditBillNumber.Text);
  BillLimit                  := StrToInt(EditBillsToPrint.Text);
  BillStartSequence          := EditSequence.Text;
  PrintDueDate               := DueDate.Text;
  Pause                      := False;
  Abort                      := False;
  Show;
 end;
end;

procedure TBillingPowerBillQueryForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  With BillingData do
  begin
  Bill.Filter    := '';
  Bill.Filtered  := False;
  end;
  Action := caFree;
  BillingPowerBillQueryForm := Nil;
end;

procedure TBillingPowerBillQueryForm.EditSequenceChange(Sender: TObject);
begin
   If Length(EditSequence.Text) >= 8 then
   With BillingData do
    begin
     //Bill.IndexName := 'Arrange';
     //Bill.FindNearest([VicinityArea.Text,VicinityBook.Text,EditSequence.Text]);
    end;
end;

end.
