unit ChangeNameTransaction;

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
  TChangeNameTransactionForm = class(TForm)
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    PDJSillyLabel1: TButton;
    PDJSillyLabel2: TButton;
    EditArea: TEdit;
    EditBook: TEdit;
    EditSequence: TEdit;
    EditAccountNumber: TEdit;
    EditOldName: TEdit;
    EditNewName: TEdit;
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
  ChangeNameTransactionForm: TChangeNameTransactionForm;

implementation

uses Data;

{$R *.DFM}

procedure TChangeNameTransactionForm.FormCreate(Sender: TObject);
begin
  With BillingData do
   begin
    EditDate.DateTime       := now;
    EditArea.text           := MasterArea.Text;
    EditBook.text           := MasterBook.Text;
    EditSequence.text       := MasterSequence.Text;
    EditAccountNumber.text  := MasterAccountNumber.Text;
    EditOldName.text        := MasterName.Text;
   end;
end;

procedure TChangeNameTransactionForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  BillingData.ChangeName.Close;
  Action := caFree;
  ChangeNameTransactionForm := Nil;
end;

procedure TChangeNameTransactionForm.PDJSillyLabel1Click(Sender: TObject);
begin
  With BillingData do
  begin
    try
      try
        Master.Edit;
        MasterName.Text := EditNewName.Text;
        Master.Post;

        ChangeName.Close;
        ChangeName.Open;
        ChangeName.Append;
        ChangeNameCode.text          := MasterCode.Text;
        ChangeNameDate.AsDateTime    := EditDate.DateTime;
        ChangeNameArea.Text          := EditArea.Text;
        ChangeNameBook.Text          := EditBook.Text;
        ChangeNameSequence.Text      := EditSequence.Text;
        ChangeNameAccountNumber.Text := EditSequence.Text;
        ChangeNameOldName.Text       := EditOldName.Text;
        ChangeNameNewName.Text       := EditNewName.Text;
        ChangeName.Post;
      except
        on E: Exception do
          MessageDlg(E.Message, mtError, [mbOk], 0);
      end;
    finally
      Close;
    end;
  end;
end;

procedure TChangeNameTransactionForm.PDJSillyLabel2Click(Sender: TObject);
begin
 BillingData.ChangeName.Cancel;
 Close;
end;

end.