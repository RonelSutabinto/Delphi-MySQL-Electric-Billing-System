unit ChangeMeterTransaction;

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
  DsFancyButton, MemDS, DBAccess, MyAccess, NxCollection, CRGrid, CRDBGrid1;

type
  TChangeMeterTransactionForm = class(TForm)
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
    Label12: TLabel;
    EditBook: TEdit;
    EditSequence: TEdit;
    EditAccountNumber: TEdit;
    EditName: TEdit;
    EditLastReading: TEdit;
    EditOldMeterBrand: TEdit;
    EditOldSerialNumber: TEdit;
    EditInitialReading: TEdit;
    EditNewMeterBrand: TEdit;
    EditNewMeterSerial: TEdit;
    PDJSillyLabel1: TButton;
    PDJSillyLabel2: TButton;
    EditArea: TEdit;
    Label14: TLabel;
    EditFeedBack: TEdit;
    Label15: TLabel;
    EditAveCons: TEdit;
    EditOldMultiplier: TEdit;
    Label16: TLabel;
    EditNewMultiplier: TEdit;
    Label17: TLabel;
    EditDate: TDateTimePicker;
    NxLinkLabel1: TNxLinkLabel;
    MeterInv: TMyQuery;
    MyConnection1: TMyConnection;
    MeterInvSerialNumber: TStringField;
    MeterInvBrand: TStringField;
    MeterInvType: TStringField;
    MeterInvAmphere: TStringField;
    MeterInvAccuracy: TFloatField;
    MeterInvStatus: TStringField;
    dsMeterInv: TMyDataSource;
    MeterPanel: TNxHeaderPanel;
    EditSealNumber: TEdit;
    Label11: TLabel;
    NxLinkLabel2: TNxLinkLabel;
    NxLinkLabel3: TNxLinkLabel;
    MeterInvidMeterInv: TLongWordField;
    MeterInvIdAcq: TLongWordField;
    CRDBGrid1: TCRDBGrid1;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PDJSillyLabel1Click(Sender: TObject);
    procedure PDJSillyLabel2Click(Sender: TObject);
    procedure NxLinkLabel1Click(Sender: TObject);
    procedure NxLinkLabel3Click(Sender: TObject);
    procedure NxLinkLabel2Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  ChangeMeterTransactionForm: TChangeMeterTransactionForm;

implementation

uses Data;
{$R *.DFM}

procedure TChangeMeterTransactionForm.FormCreate(Sender: TObject);
begin
  With BillingData do
  begin
    EditDate.DateTime := Now;
    EditArea.Text := MasterArea.Text;
    EditBook.Text := MasterBook.Text;
    EditSequence.Text := MasterSequence.Text;
    EditAccountNumber.Text := MasterAccountNumber.Text;
    EditName.Text := MasterName.Text;
    EditNewMultiplier.Text := '1';
    EditLastReading.Text := MasterPresentReadingKWH.Text;
    EditOldMeterBrand.Text := MasterMeterBrand.Text;
    EditOldSerialNumber.Text := MasterSerial.Text;
    EditOldMultiplier.Text := MasterMultiplier.Text;
  end;
end;

procedure TChangeMeterTransactionForm.NxLinkLabel1Click(Sender: TObject);
begin
  MeterInv.Open;

  if MeterInv.IsEmpty then
  begin
    MessageDlg('There are no available meters in inventory', mtError, [mbOK], 0);
    MeterInv.Close;
    Exit;
  end;

  MeterPanel.Left := 11;
  MeterPanel.Top  := 12;
  MeterPanel.BringToFront;
  MeterPanel.Visible := True;
  CRDBGrid1.SetFocus;
end;

procedure TChangeMeterTransactionForm.NxLinkLabel2Click(Sender: TObject);
begin
   if BillingData.ChangeMeterPosted.Text = '1' then
     begin
      MessageDlg('That change meter has already been posted..', mtError, [mbOK], 0);
      exit;
     end;

   EditNewMeterBrand.Text  := MeterInvBrand.Text;
   EditNewMeterSerial.Text := MeterInvSerialNumber.Text;

   MeterInv.Close;
   MeterPanel.Visible := False;

end;

procedure TChangeMeterTransactionForm.NxLinkLabel3Click(Sender: TObject);
begin
  MeterInv.Close;
  MeterPanel.Visible := False;
end;

procedure TChangeMeterTransactionForm.FormClose
  (Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  ChangeMeterTransactionForm := Nil;
end;

procedure TChangeMeterTransactionForm.PDJSillyLabel1Click(Sender: TObject);
Var UpdateCM : TMyQuery;

begin
  With BillingData do
  begin
    ChangeMeter.Close;
    ChangeMeter.Open;
    ChangeMeter.Append;
    ChangeMeterDate.AsDateTime        := EditDate.DateTime;
    ChangeMeterCode.Text              := MasterCode.Text;
    ChangeMeterArea.Text              := EditArea.Text;
    ChangeMeterBook.Text              := EditBook.Text;
    ChangeMeterSequence.Text          := EditSequence.Text;
    ChangeMeterAccountNumber.Text     := EditAccountNumber.Text;
    ChangeMeterName.Text              := EditName.Text;
    ChangeMeterNewMeterBrand.Text     := EditNewMeterBrand.Text;
    ChangeMeterNewMeterSerial.Text    := EditNewMeterSerial.Text;
    ChangeMeterNewMeterMult.Text      := EditNewMultiplier.Text;
    ChangeMeterLastReading.Text       := EditLastReading.Text;
    ChangeMeterOldMeterBrand.Text     := EditOldMeterBrand.Text;
    ChangeMeterOldSerialNumber.Text   := EditOldSerialNumber.Text;
    ChangeMeterOldMeterMult.Text      := EditOldMultiplier.Text;
    ChangeMeterInitialReading.Text    := EditInitialReading.Text;
    ChangeMeterSealNumber.Text        := EditSealNumber.Text;
    ChangeMeterPosted.Text := '1';
    ChangeMeter.Post;

    Master.Edit;
    MasterCM.Text := '1';
    MasterCMMultiplier.AsCurrency := MasterMultiplier.AsCurrency;
    MasterCMPreviousReadingKWH.Text := MasterPresentReadingKWH.Text;
    MasterCMPresentReadingKWH.Text := EditLastReading.Text;
    MasterCMDemand.AsCurrency := MasterDemand.AsCurrency;
    MasterCMMultiplier.Text := EditOldMultiplier.Text;

    MasterMeterBrand.Text := EditNewMeterBrand.Text;
    MasterSerial.Text := EditNewMeterSerial.Text;
    MasterPresentReadingKWH.Text := EditInitialReading.Text;
    MasterMultiplier.Text := EditNewMultiplier.Text;
    Master.Post;

    UpdateCM := TMyQuery.Create(Self);
    UpdateCM.Connection := MyConnection1;
    UpdateCM.SQL.Clear;

    UpdateCM.SQL.Add('Update zanecometer.meterinv set status = ''6''');
    UpdateCM.SQL.Add('       where trim(serialnumber) = trim(:serialnumber) and trim(brand) = trim(:meterbrand);');

    UpdateCM.SQL.Add('Insert into zanecometer.metertransaction');
    UpdateCM.SQL.Add('(DateTrans,');
    UpdateCM.SQL.Add(' TransDesc,');
    UpdateCM.SQL.Add(' Name,');
    UpdateCM.SQL.Add(' AccountNumber,');
    UpdateCM.SQL.Add(' Reading,');
    UpdateCM.SQL.Add(' Remarks,');
    UpdateCM.SQL.Add(' idMeterInv)');
    UpdateCM.SQL.Add('values');
    UpdateCM.SQL.Add('(:DateTrans,');
    UpdateCM.SQL.Add(' :TransDesc,');
    UpdateCM.SQL.Add(' :Name,');
    UpdateCM.SQL.Add(' :AccountNumber,');
    UpdateCM.SQL.Add(' :Reading,');
    UpdateCM.SQL.Add(' :Remarks,');
    UpdateCM.SQL.Add(' ifnull((select idMeterInv from zanecometer.meterinv                ');
    UpdateCM.SQL.Add('                    where trim(brand) = trim(:meterbrand) and          ');
    UpdateCM.SQL.Add('                          trim(serialnumber) = trim(:serialnumber)),0));  ');

    UpdateCM.ParamByName('DateTrans').AsDate   := ChangeMeterDate.AsDateTime;
    UpdateCM.ParamByName('TransDesc').Text     := 'REMOVE CM';
    UpdateCM.ParamByName('Name').Text          := ChangeMeterName.Text;
    UpdateCM.ParamByName('AccountNumber').Text := ChangeMeterAccountNumber.Text;
    UpdateCM.ParamByName('Reading').AsFloat    := ChangeMeterLastReading.AsFloat;
    UpdateCM.ParamByName('Remarks').Text       := 'CHANGE METER OUT';
    UpdateCM.ParamByName('SerialNumber').Text  := ChangeMeterOldSerialNumber.Text;
    UpdateCM.ParamByName('MeterBrand').Text    := ChangeMeterOldMeterBrand.Text;
    UpdateCM.Execute;

    UpdateCM.SQL.Clear;

    UpdateCM.SQL.Add('Update zanecometer.meterinv set status = ''3''');
    UpdateCM.SQL.Add('       where trim(serialnumber) = trim(:serialnumber) and trim(brand) = trim(:meterbrand);');

    UpdateCM.SQL.Add('Insert into zanecometer.metertransaction');
    UpdateCM.SQL.Add('(DateTrans,');
    UpdateCM.SQL.Add(' TransDesc,');
    UpdateCM.SQL.Add(' Name,');
    UpdateCM.SQL.Add(' AccountNumber,');
    UpdateCM.SQL.Add(' Reading,');
    UpdateCM.SQL.Add(' Remarks,');
    UpdateCM.SQL.Add(' idMeterInv)');
    UpdateCM.SQL.Add('values');
    UpdateCM.SQL.Add('(:DateTrans,');
    UpdateCM.SQL.Add(' :TransDesc,');
    UpdateCM.SQL.Add(' :Name,');
    UpdateCM.SQL.Add(' :AccountNumber,');
    UpdateCM.SQL.Add(' :Reading,');
    UpdateCM.SQL.Add(' :Remarks,');
    UpdateCM.SQL.Add(' ifnull((select idMeterInv from zanecometer.meterinv                ');
    UpdateCM.SQL.Add('                    where trim(brand) = trim(:meterbrand) and          ');
    UpdateCM.SQL.Add('                          trim(serialnumber) = trim(:serialnumber)),0));  ');

    UpdateCM.ParamByName('DateTrans').AsDate   := ChangeMeterDate.AsDateTime;
    UpdateCM.ParamByName('TransDesc').Text     := 'CM';
    UpdateCM.ParamByName('Name').Text          := ChangeMeterName.Text;
    UpdateCM.ParamByName('AccountNumber').Text := ChangeMeterAccountNumber.Text;
    UpdateCM.ParamByName('Reading').AsFloat    := ChangeMeterInitialReading.AsFloat;
    UpdateCM.ParamByName('Remarks').Text       := 'CHANGE METER IN';
    UpdateCM.ParamByName('SerialNumber').Text  := ChangeMeterNewMeterSerial.Text;
    UpdateCM.ParamByName('MeterBrand').Text    := ChangeMeterNewMeterBrand.Text;
    UpdateCM.Execute;

    UpdateCM.SQL.Clear;

    UpdateCM.SQL.Add('Update zanecometer.sealinv set meterbrand = :meterbrand,');
    UpdateCM.SQL.Add('                               serialnumber = :serialnumber,');
    UpdateCM.SQL.Add('                               code  = :code,');
    UpdateCM.SQL.Add('                               DateInst = :DateInst');
    UpdateCM.SQL.Add('       where trim(sealnumber) = trim(:sealnumber)');
    UpdateCM.ParamByName('DateInst').AsDate   := ChangeMeterDate.AsDateTime;
    UpdateCM.ParamByName('MeterBrand').Text   := ChangeMeterNewMeterBrand.Text;
    UpdateCM.ParamByName('SerialNumber').Text := ChangeMeterNewMeterSerial.Text;
    UpdateCM.ParamByName('Code').Text         := ChangeMeterCode.Text;
    UpdateCM.Execute;

    MessageDlg('Update done..', mtInformation, [mbOK], 0);

  end;
  Close;
end;

procedure TChangeMeterTransactionForm.PDJSillyLabel2Click(Sender: TObject);
begin
  BillingData.ChangeMeter.Cancel;
  Close;
end;

end.
