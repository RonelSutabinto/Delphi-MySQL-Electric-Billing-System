unit TransferAreaTransaction;

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
  Mask,
  ExtCtrls,
  Buttons,
  Grids,
  DBGrids,
  PDJSillyLabel,
  ComCtrls,
  DsFancyButton;

type
  TTransferAreaTransactionForm = class(TForm)
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    EditOldArea: TEdit;
    EditOldBook: TEdit;
    EditOldSequence: TEdit;
    EditOldAccountNumber: TEdit;
    EditNewArea: TEdit;
    EditNewBook: TEdit;
    EditNewSequence: TEdit;
    EditNewAccountNumber: TEdit;
    EditName: TEdit;
    EditOldAddress: TEdit;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    EditNewAddress: TEdit;
    PDJSillyLabel1: TButton;
    PDJSillyLabel2: TButton;
    EditDate: TDateTimePicker;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PDJSillyLabel1Click(Sender: TObject);
    procedure PDJSillyLabel2Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  TransferAreaTransactionForm: TTransferAreaTransactionForm;

implementation

uses Data;

{$R *.DFM}

procedure TTransferAreaTransactionForm.FormCreate(Sender: TObject);
begin
  with BillingData do
    begin
      EditDate.DateTime         := Now;
      EditOldArea.Text          := MasterArea.Text;
      EditOldBook.Text          := MasterBook.Text;
      EditOldSequence.Text      := MasterSequence.Text;
      EditOldAccountNumber.Text := MasterAccountNumber.Text;
      EditOldAddress.Text       := MasterAddress.Text;
      EditName.Text             := MasterName.Text;
    end;
end;

procedure TTransferAreaTransactionForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  BillingData.TransferArea.Close;
  Action := caFree;
  TransferAreaTransactionForm := nil;
end;

procedure TTransferAreaTransactionForm.PDJSillyLabel1Click(Sender: TObject);
begin
  with BillingData do
    begin
      TransferArea.Close;
      TransferArea.Open;

      TransferArea.Append;
      TransferAreaDate.AsDateTime       := EditDate.DateTime;
      TransferAreaCode.text             := MasterCode.Text;
      TransferAreaOldArea.Text          := EditOldArea.Text;
      TransferAreaOldBook.Text          := EditOldBook.Text;
      TransferAreaOldSequence.Text      := EditOldSequence.Text;
      TransferAreaOldAccountNumber.Text := EditOldAccountNumber.Text;
      TransferAreaOldAddress.Text       := EditOldAddress.Text;
      TransferAreaNewArea.Text          := EditNewArea.Text;
      TransferAreaNewBook.Text          := EditNewBook.Text;
      TransferAreaNewSequence.Text      := EditNewSequence.Text;
      TransferAreaNewAccountNumber.Text := EditNewAccountNumber.Text;
      TransferAreaNewAddress.Text       := EditNewAddress.Text;
      TransferAreaName.Text             := MasterName.Text;
      TransferArea.Post;

      Master.Edit;
      MasterArea.Text          := TransferAreaNewArea.Text;
      MasterBook.Text          := TransferAreaNewBook.Text;
      MasterSequence.Text      := TransferAreaNewSequence.Text;
      MasterAccountNumber.Text := TransferAreaNewAccountNumber.Text;
      MasterAddress.Text       := TransferAreaNewAddress.Text;
      Master.Post;
    end;
  close;
end;

procedure TTransferAreaTransactionForm.PDJSillyLabel2Click(Sender: TObject);
begin
  BillingData.TransferArea.Cancel;
  Close;
end;

end.
