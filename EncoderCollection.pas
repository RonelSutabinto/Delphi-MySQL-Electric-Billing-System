unit EncoderCollection;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtCtrls, DBCtrls, StdCtrls, Grids, DBGrids, Buttons,
  Gradient, BarMenus, PDJSillyLabel, Mask, VolDBEdit, VolDBGrid,
  PDJSillyTools, ComCtrls;

type
  TEncoderCollectionForm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    ORNumber: TDBText;
    AccountNumber: TDBText;
    Name: TDBText;
    Area: TDBText;
    Book: TDBText;
    Sequence: TDBText;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    BcBarMainMenu1: TBcBarMainMenu;
    Transactions1: TMenuItem;
    Search1: TMenuItem;
    Exit1: TMenuItem;
    Panel4: TPanel;
    Gradient3: TGradient;
    Label6: TLabel;
    Edit2: TEdit;
    PDJSillyLabel3: TPDJSillyLabel;
    Option: TPDJSillyRadioGroup;
    SetCollectorDatePaid1: TMenuItem;
    Panel3: TPanel;
    Gradient2: TGradient;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    PDJSillyLabel1: TPDJSillyLabel;
    PDJSillyLabel2: TPDJSillyLabel;
    N1: TMenuItem;
    Label5: TLabel;
    Edit3: TEdit;
    Panel5: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Edit4: TEdit;
    PDJSillyLabel4: TPDJSillyLabel;
    PDJSillyLabel5: TPDJSillyLabel;
    Edit5: TEdit;
    PutCashiersOR1: TMenuItem;
    CashierOR: TEdit;
    Label12: TLabel;
    N2: TMenuItem;
    GroupCollectionInterface1: TMenuItem;
    DatePaid: TDateTimePicker;
    DateRemitted: TDateTimePicker;
    PutDatePaid: TDateTimePicker;
    PutDateRemitted: TDateTimePicker;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Exit1Click(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure OptionClick(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure PDJSillyLabel1Click(Sender: TObject);
    procedure PDJSillyLabel2Click(Sender: TObject);
    procedure SetCollectorDatePaid1Click(Sender: TObject);
    procedure Search1Click(Sender: TObject);
    procedure PDJSillyLabel3Click(Sender: TObject);
    procedure PDJSillyLabel5Click(Sender: TObject);
    procedure PutCashiersOR1Click(Sender: TObject);
    procedure PDJSillyLabel4Click(Sender: TObject);
    procedure GroupCollectionInterface1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EncoderCollectionForm: TEncoderCollectionForm;

implementation

uses Data, CollectionRecord, Collection, EncoderCollectionRecord,
  groupcollection;

{$R *.dfm}

procedure TEncoderCollectionForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  EncoderCollectionForm := Nil;
  BillingData.Master.Active          := False;
  BillingData.AR.Active              := False;
  BillingData.Collection.Active      := False;
  BillingData.Collector.Active       := False;
end;

procedure TEncoderCollectionForm.Exit1Click(Sender: TObject);
begin
  Close;
end;

procedure TEncoderCollectionForm.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  If Key='+' then
    begin
     If not assigned(EncoderCollectionRecordForm) then
     EncoderCollectionRecordForm := TEncoderCollectionRecordForm.Create(Application);
     EncoderCollectionRecordForm.Show;
    end;
end;

procedure TEncoderCollectionForm.OptionClick(Sender: TObject);
begin
  Case Option.ItemIndex of
  0 : BillingData.Collection.IndexName := 'CollAccountNumber';
  1 : BillingData.Collection.IndexName := 'CollAccountName';
  2 : BillingData.Collection.IndexName := 'CollOEBR';
  end;
  Edit2.SetFocus;

end;

procedure TEncoderCollectionForm.Edit2Change(Sender: TObject);
begin
  BillingData.Collection.FindNearest([Edit2.Text]);
end;

procedure TEncoderCollectionForm.PDJSillyLabel1Click(Sender: TObject);
begin
  With BillingData do
  begin
    Collection.Filter    := 'DatePaid = '+QuotedStr(DateToStr(DatePaid.Date))+
                            ' AND CollectorCode = '+QuotedStr(Edit1.Text)+
                            ' AND EncoderCode = '+QuotedStr(Edit3.Text);
    Collection.Filtered  := True;
  end;
  Panel3.Visible := False;
end;

procedure TEncoderCollectionForm.PDJSillyLabel2Click(Sender: TObject);
begin
 With BillingData do
 begin
   Collection.Filter    := '';
   Collection.Filtered  := False;
   Panel3.Visible := False;
 end;
end;

procedure TEncoderCollectionForm.SetCollectorDatePaid1Click(
  Sender: TObject);
begin
  Panel3.Visible := True;
end;

procedure TEncoderCollectionForm.Search1Click(Sender: TObject);
begin
   Panel4.Visible := True;
end;

procedure TEncoderCollectionForm.PDJSillyLabel3Click(Sender: TObject);
begin
  Panel4.Visible := False;
end;

procedure TEncoderCollectionForm.PDJSillyLabel5Click(Sender: TObject);
begin
  Panel5.Visible := False;
end;

procedure TEncoderCollectionForm.PutCashiersOR1Click(Sender: TObject);
begin
 Panel5.Visible := True;
end;

procedure TEncoderCollectionForm.PDJSillyLabel4Click(Sender: TObject);
begin
  With BillingData do
   begin
     Collection.Filter    := 'DatePaid = '+QuotedStr(DateToStr(PutDatePaid.Date))+
                             ' AND CollectorCode = '+QuotedStr(Edit4.Text)+
                             ' AND EncoderCode = '+QuotedStr(Edit5.Text);
     Collection.Filtered  := True;

     Collection.First;

     While not Collection.Eof do
      begin
       Collection.Edit;
       CollectionSundries.Text := CashierOR.Text + '-' + Edit4.Text;
       Collection.Post;
       Collection.Next;
      end;

     Collection.Filter    := '';
     Collection.Filtered  := False;

   end;

end;

procedure TEncoderCollectionForm.GroupCollectionInterface1Click(
  Sender: TObject);
begin
  If not assigned(GroupCollectionForm) then
  GroupCollectionForm := TGroupCollectionForm.Create(Application);
  GroupCollectionForm.FromDate.Date := Date;
  GroupCollectionForm.ToDate.Date   := Date;
  GroupCollectionForm.Show;
end;

end.
