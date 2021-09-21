unit ReadingFilterlatebill;

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
  Variants,
  MemDS,
  DBAccess,
  MyAccess,
  CRGrid,
  DsFancyButton, NxCollection, CRDBGrid1;

type
  TReadingDataFilterLateBillForm = class(TForm)
    Panel1: TPanel;
    PDJSillyLabel1: TNxButton;
    PDJSillyLabel2: TNxButton;
    Area: TEdit;
    Label4: TLabel;
    LateBillSumm: TMyQuery;
    Book: TEdit;
    Label1: TLabel;
    Bevel1: TBevel;
    DSLateBillSumm: TDataSource;
    LateBillSummarea: TStringField;
    LateBillSummbook: TStringField;
    LateBillSummtotalaccounts: TLargeintField;
    CRDBGrid1: TCRDBGrid1;
    procedure PDJSillyLabel1Click(Sender: TObject);
    procedure PDJSillyLabel2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AreaKeyPress(Sender: TObject; var Key: Char);
    procedure AreaExit(Sender: TObject);
    procedure DSLateBillSummDataChange(Sender: TObject; Field: TField);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  ReadingDataFilterLateBillForm: TReadingDataFilterLateBillForm;

implementation

uses Data, ReadingCompute, ReadingComputeLateBill;

{$R *.DFM}

procedure TReadingDataFilterLateBillForm.PDJSillyLabel1Click(Sender: TObject);
begin

  With ReadingComputeLateBillsForm,BillingData do
    begin

      Vicinity.Close;
      Vicinity.SQL.Clear;
      Vicinity.SQL.Add('select * from vicinity where area = :area and book = :book');
      Vicinity.ParamByName('area').Text := area.Text;
      Vicinity.ParamByName('book').Text := Book.Text;
      Vicinity.Open;

      If Vicinity.IsEmpty then
        begin
          MessageDlg('That Area / Book is not is the Vicinity Table...', mtError, [mbOK], 0);
          Vicinity.Close;
          Area.SetFocus;
          exit;
        end;

      Bill.Close;
      Bill.TableName   := 'Latebill';
      Bill.FilterSQL   := 'area = '+QuotedStr(Area.Text)+' and book = '+QuotedStr(Book.Text);
      Bill.OrderFields := 'entry';
      Bill.Open;

      PRate.Active                      := True;

    end;

  ModalResult := mrOk;
end;

procedure TReadingDataFilterLateBillForm.PDJSillyLabel2Click(Sender: TObject);
begin
   ModalResult := mrCancel;
end;

procedure TReadingDataFilterLateBillForm.FormShow(Sender: TObject);
begin
  try
  LateBillSumm.Open;
  except
  end;
  Area.SetFocus;
end;

procedure TReadingDataFilterLateBillForm.AreaKeyPress(Sender: TObject;
  var Key: Char);
begin
  If key = #13 then PDJSillyLabel1Click(self);
end;

procedure TReadingDataFilterLateBillForm.AreaExit(Sender: TObject);
begin
  If Area.Text <> '' then Book.SetFocus;
end;

procedure TReadingDataFilterLateBillForm.DSLateBillSummDataChange(
  Sender: TObject; Field: TField);
begin
  Area.Text := LateBillSummarea.Text;
  Book.Text := LateBillSummbook.Text;
end;

end.



