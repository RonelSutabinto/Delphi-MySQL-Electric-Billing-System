unit DisconnectionTransaction;

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
  PDJSillyLabel,
  Grids,
  DBGrids,
  ComCtrls,
  DsFancyButton, NxCollection;

type
  TDisconnectionTransactionForm = class(TForm)
    Panel1: TPanel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    EditArea: TEdit;
    EditBook: TEdit;
    EditSequence: TEdit;
    EditAccountNumber: TEdit;
    EditName: TEdit;
    EditLastReading: TEdit;
    EditSerialNumber: TEdit;
    EditMeterBrand: TEdit;
    PDJSillyLabel5: TNxButton;
    PDJSillyLabel6: TNxButton;
    EditDate: TDateTimePicker;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure PDJSillyLabel1Click(Sender: TObject);
    procedure PDJSillyLabel2Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  DisconnectionTransactionForm: TDisconnectionTransactionForm;

implementation

uses Data;

{$R *.DFM}

procedure TDisconnectionTransactionForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  billingdata.Disco.Close;
  Action := caFree;
  DisconnectionTransactionForm := nil;
end;

procedure TDisconnectionTransactionForm.FormCreate(Sender: TObject);
begin
  with BillingData do
    begin
      EditDate.DateTime         := Now;
      EditArea.Text             := MasterArea.Text;
      EditBook.Text             := MasterBook.Text;
      EditSequence.Text         := MasterSequence.Text;
      EditAccountNumber.Text    := MasterAccountNumber.Text;
      EditName.Text             := MasterName.Text;
      EditLastReading.Text      := MasterPresentReadingKWH.Text;
      EditMeterBrand.Text       := MasterMeterBrand.Text;
      EditSerialNumber.Text     := MasterSerial.Text;
    end;
end;

procedure TDisconnectionTransactionForm.PDJSillyLabel1Click(
  Sender: TObject);
begin
  with BillingData do
    begin
      Disco.Close;
      Disco.Open;
      Disco.Append;
      DiscoDate.AsDateTime       := EditDate.DateTime;
      DiscoCode.Text             := MasterCode.Text;
      DiscoArea.Text             := EditArea.Text;
      DiscoBook.Text             := EditBook.Text;
      DiscoSequence.Text         := EditSequence.Text;
      DiscoAccountNumber.Text    := EditAccountNumber.Text;
      DiscoName.Text             := EditName.Text;
      DiscoLastReading.Text      := EditLastReading.Text;
      DiscoMeterBrand.Text       := EditMeterBrand.Text;
      DiscoSerialNumber.Text     := EditSerialNumber.Text;
      Disco.Post;

      Master.Edit;
      MasterDisconnectionDate.Text := DiscoDate.Text;
      MasterConnCode.Text := '4';
      Master.Post;
    end;
  close;
end;

procedure TDisconnectionTransactionForm.PDJSillyLabel2Click(
  Sender: TObject);
begin
  with BIllingData do
    Disco.Cancel;
  Close;
end;

end.
