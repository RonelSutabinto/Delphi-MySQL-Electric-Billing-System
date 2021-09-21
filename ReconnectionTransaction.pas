unit ReconnectionTransaction;

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
  Buttons,
  Mask,
  ExtCtrls,
  PDJSillyLabel,
  Grids,
  DBGrids,
  ComCtrls,
  DsFancyButton, NxCollection;

type
  TReconnectionTransactionForm = class(TForm)
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
    EditArea: TEdit;
    EditBook: TEdit;
    EditSequence: TEdit;
    EditAccountNumber: TEdit;
    EditName: TEdit;
    EditInitialReading: TEdit;
    EditMeterBrand: TEdit;
    EditSerialNumber: TEdit;
    PDJSillyLabel1: TNxButton;
    PDJSillyLabel2: TNxButton;
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
  ReconnectionTransactionForm: TReconnectionTransactionForm;

implementation

uses Data;

{$R *.DFM}

procedure TReconnectionTransactionForm.FormCreate(Sender: TObject);
begin
  With BillingData do
   begin
     EditDate.DateTime       := Now;
     EditArea.Text           := MasterArea.Text;
     EditBook.Text           := MasterBook.Text;
     EditSequence.Text       := MasterSequence.Text;
     EditAccountNumber.Text  := MasterAccountNumber.Text;
     EditName.Text           := MasterName.Text;
     EditInitialReading.Text := MasterPresentReadingKWH.Text;
     EditMeterBrand.Text     := MasterMeterBrand.Text;
     EditSerialNumber.Text   := MasterSerial.Text;
   end;
end;


procedure TReconnectionTransactionForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  billingdata.Recon.Close;

  Action := caFree;
  ReconnectionTransactionForm := Nil;
end;

procedure TReconnectionTransactionForm.PDJSillyLabel1Click(
  Sender: TObject);
begin
  With BillingData do
   begin
    Recon.Close;
    Recon.Open;
    Recon.Append;
    ReconDate.AsDateTime           := EditDate.DateTime;
    ReconCode.Text                 := MasterCode.Text;
    ReconArea.Text                 := EditArea.Text;
    ReconBook.Text                 := EditBook.Text;
    ReconSequence.Text             := EditSequence.Text;
    ReconAccountNumber.Text        := EditAccountNumber.Text;
    ReconName.Text                 := EditName.Text;
    ReconInitialReading.Text       := EditInitialReading.Text;
    ReconMeterBrand.Text           := EditMeterBrand.Text;
    ReconSerialNumber.Text         := EditSerialNumber.Text;
    Recon.Post;

    Master.Edit;
    MasterReconnectionDate.Text    := ReconDate.Text;
    MasterConnCode.Text            := '1';
    Master.Post;
   end;
close;
end;

procedure TReconnectionTransactionForm.PDJSillyLabel2Click(
  Sender: TObject);
begin
  with BIllingData do Recon.Cancel;
  Close;
end;

end.