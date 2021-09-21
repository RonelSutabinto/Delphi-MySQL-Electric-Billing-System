unit TransferArea;

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
  StdCtrls,
  Buttons,
  DBCtrls,
  Grids,
  DBGrids,
  ExtCtrls,
  DB,
  PDJSillyLabel,
  PDJSillyTools,
  DsFancyButton,
  CRGrid, CRDBGrid1;

type
  TTransferAreaForm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    PDJSillyLabel1: TButton;
    Edit1: TEdit;
    Option: TRadioGroup;
    VolgaDBGrid1: TCRDBGrid1;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1Change(Sender: TObject);
    procedure PDJSillyLabel1Click(Sender: TObject);
    procedure OptionClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TransferAreaForm: TTransferAreaForm;

implementation

uses Data;

{$R *.dfm}

procedure TTransferAreaForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  BillingData.TransferArea.Active := False;
  Action := caFree;
  TransferAreaForm := nil;
end;

procedure TTransferAreaForm.Edit1Change(Sender: TObject);
begin
  with BillingData do
    begin
      case Option.ItemIndex of
        1: TransferArea.Locate('Name',Edit1.Text,[LoPartialKey]);
        2: TransferArea.Locate('OldAccountNumber',Edit1.Text,[]);
        3: TransferArea.Locate('NewAccountNumber',Edit1.Text,[]);
      end;
    end;
end;

procedure TTransferAreaForm.PDJSillyLabel1Click(Sender: TObject);
begin
  Close;
end;

procedure TTransferAreaForm.OptionClick(Sender: TObject);
begin
  with BillingData do
    begin
      case Option.ItemIndex of
        1: TransferArea.IndexFieldNames := 'Name';
        2: TransferArea.IndexFieldNames := 'OldAccountNumber';
        3: TransferArea.IndexFieldNames := 'NewAccountNumber';
      end;
    end;
   Edit1.SetFocus;
end;

end.
