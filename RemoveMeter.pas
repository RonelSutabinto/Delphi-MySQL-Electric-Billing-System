unit RemoveMeter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NxCollection, ComCtrls, Grids, DBGrids, CRGrid, StdCtrls,
  ExtCtrls, NxEdit, DBCtrls, Mask, DB, MemDS, DBAccess, MyAccess, QuickRpt,
  QRCtrls, CRDBGrid1;

type
  TRemoveMeterForm = class(TForm)
    DateFrom: TDateTimePicker;
    DateTo: TDateTimePicker;
    NxLinkLabel1: TNxLinkLabel;
    RadioGroup1: TRadioGroup;
    Label1: TLabel;
    Label2: TLabel;
    NxButton1: TNxButton;
    NxButton2: TNxButton;
    NxButton3: TNxButton;
    NxLinkLabel2: TNxLinkLabel;
    NxEdit1: TNxEdit;
    NxMemo1: TNxMemo;
    NxLinkLabel3: TNxLinkLabel;
    NxLinkLabel4: TNxLinkLabel;
    NxCheckBox1: TNxCheckBox;
    NxLinkLabel5: TNxLinkLabel;
    RemoveMeterPanel: TNxHeaderPanel;
    Label14: TLabel;
    DBEdit12: TDBEdit;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    Label9: TLabel;
    DBEdit7: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    NxLinkLabel6: TNxLinkLabel;
    NxLinkLabel7: TNxLinkLabel;
    AccountNumberSearch: TNxLinkLabel;
    RMaster: TMyQuery;
    RMasterCode: TIntegerField;
    RMasterArea: TStringField;
    RMasterBook: TStringField;
    RMasterSequence: TStringField;
    RMasterAccountNumber: TStringField;
    RMasterName: TStringField;
    RMasterAddress: TStringField;
    RMasterRateCode: TStringField;
    RMasterConsCode: TStringField;
    RMasterConnCode: TStringField;
    RMasterTransformer: TStringField;
    RMasterMeterBrand: TStringField;
    RMasterSerial: TStringField;
    RMasterMultiplier: TFloatField;
    RMasterNewConnectionDate: TDateField;
    RMasterReconnectionDate: TDateField;
    RMasterDisconnectionDate: TDateField;
    RMasterPreviousReadingDate: TDateField;
    RMasterPresentReadingDate: TDateField;
    RMasterPreviousReadingKWH: TFloatField;
    RMasterPresentReadingKWH: TFloatField;
    RMasterDiff: TFloatField;
    RMasterDemand: TFloatField;
    RMasterFlatRateWattage: TFloatField;
    RMasterFeedBackCode: TStringField;
    RMasterCM: TStringField;
    RMasterCMMultiplier: TFloatField;
    RMasterCMPreviousReadingKWH: TFloatField;
    RMasterCMPresentReadingKWH: TFloatField;
    RMasterCMKilowattHour: TFloatField;
    RMasterCMDemand: TFloatField;
    RMasterKilowattHour: TFloatField;
    RMasterKilowattUsed: TFloatField;
    RMasterGenSysCharge: TFloatField;
    RMasterHostCommCharge: TFloatField;
    RMasterForexCharge: TFloatField;
    RMasterTCDemandCharge: TFloatField;
    RMasterTCTransSystemCharge: TFloatField;
    RMasterSystemLossCharge: TFloatField;
    RMasterDCDemandCharge: TFloatField;
    RMasterDCDistributionCharge: TFloatField;
    RMasterSCRetCustCharge: TFloatField;
    RMasterSCSupplySysCharge: TFloatField;
    RMasterMCRetailCustCharge: TFloatField;
    RMasterMCSystemCharge: TFloatField;
    RMasterUCNPCStrandedDebts: TFloatField;
    RMasterUCNPCStrandedContCost: TFloatField;
    RMasterUCDUStrandedContCost: TFloatField;
    RMasterUCME: TFloatField;
    RMasterUCEqTaxesAndRoyalties: TFloatField;
    RMasterUCEC: TFloatField;
    RMasterUCCrossSubRemoval: TFloatField;
    RMasterICCrossSubsidyCharge: TFloatField;
    RMasterPowerActRateRed: TFloatField;
    RMasterLifelineDiscSubs: TFloatField;
    RMasterLoanCondo: TFloatField;
    RMasterTransformerRental: TFloatField;
    RMasterOCCode1: TStringField;
    RMasterOCAmount1: TFloatField;
    RMasterOCMo1: TFloatField;
    RMasterOCTotal1: TFloatField;
    RMasterOCCode2: TStringField;
    RMasterOCAmount2: TFloatField;
    RMasterOCMo2: TFloatField;
    RMasterOCTotal2: TFloatField;
    RMasterOCCode3: TStringField;
    RMasterOCAmount3: TFloatField;
    RMasterOCMo3: TFloatField;
    RMasterOCTotal3: TFloatField;
    RMasterTotalBill: TFloatField;
    RMasterBillNumber: TStringField;
    RMasterOEBRNumber: TStringField;
    RMasterBillMonth: TStringField;
    RMasterDeleteRemarks: TStringField;
    RMasterPoleNumber: TStringField;
    RMasterFeederNumber: TStringField;
    RMasterXFormerQty: TIntegerField;
    RMasterXFormerKVA: TStringField;
    RMasterAge30: TFloatField;
    RMasterAge60: TFloatField;
    RMasterAge90: TFloatField;
    RMasterAge120: TFloatField;
    RMasterAgeOver120: TFloatField;
    RMasterAgeTotal: TFloatField;
    RMasterTotalPayments: TFloatField;
    RMasterARBalance: TFloatField;
    RMasterLCCustMo: TFloatField;
    RMasterPrevYearAdjPowerCost: TFloatField;
    RMasterSysLossUnderRecov: TFloatField;
    RMasterVATDisc: TFloatField;
    RMasterVATDiscAmt: TFloatField;
    RMasterVATDistDiscAmt: TFloatField;
    RMasterVATGenCoDiscAmt: TFloatField;
    RMasterVATTransCoDiscAmt: TFloatField;
    RMasterVATSystemLossDiscAmt: TFloatField;
    RMasterVATDist: TFloatField;
    RMasterVATGenCO: TFloatField;
    RMasterVATTransCO: TFloatField;
    RMasterVATSystemLossGenCO: TFloatField;
    RMasterVATSystemLossTransCO: TFloatField;
    RMasterVAT: TFloatField;
    RMasterDiffBillPerKwhr: TFloatField;
    RMasterDiffBillPerKW: TFloatField;
    RMasterDiffBillPerCust: TFloatField;
    RMasterMCC: TFloatField;
    RMasterPKVROebrNumber: TStringField;
    RMasterPKVRBillMonth: TStringField;
    RMasterPKVRAmount: TFloatField;
    RMasterSCDisc: TFloatField;
    RMasterWRateCode: TStringField;
    RMasterSCAmt4Disc: TFloatField;
    RMasterDWLEN1: TFloatField;
    RMasterDWLEN2: TFloatField;
    RMList: TMyQuery;
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    RMListidremovemeter: TIntegerField;
    RMListCode: TFloatField;
    RMListDate: TDateField;
    RMListArea: TStringField;
    RMListBook: TStringField;
    RMListSequence: TStringField;
    RMListAccountNumber: TStringField;
    RMListName: TStringField;
    RMListLastReading: TFloatField;
    RMListMeterBrand: TStringField;
    RMListSerialNumber: TStringField;
    RMListDateRemoved: TDateTimeField;
    RMListAccomplished: TStringField;
    RMListPosted: TStringField;
    QuickRep1: TQuickRep;
    TitleBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel26: TQRLabel;
    DBEdit8: TDBEdit;
    Label4: TLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    RMListDiscoDate: TDateField;
    RMListaddress: TStringField;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRSysData3: TQRSysData;
    UpdateMaster: TMyQuery;
    UpdateRemoveMeter: TMyQuery;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    QRLabel8: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText6: TQRDBText;
    RMListLocation: TStringField;
    UpdateMeterInv: TMyQuery;
    UpdateMeterTrans: TMyQuery;
    MyQuery1: TMyQuery;
    CRDBGrid1: TCRDBGrid1;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure NxButton3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure NxLinkLabel1Click(Sender: TObject);
    procedure DateFromChange(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure NxLinkLabel2Click(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure NxLinkLabel3Click(Sender: TObject);
    procedure DBRadioGroup1Click(Sender: TObject);
    procedure NxLinkLabel5Click(Sender: TObject);
    procedure AccountNumberSearchClick(Sender: TObject);
    procedure NxLinkLabel4Click(Sender: TObject);
    procedure NxLinkLabel6Click(Sender: TObject);
    procedure NxLinkLabel7Click(Sender: TObject);
    procedure NxButton2Click(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RemoveMeterForm: TRemoveMeterForm;

implementation

uses Data, DateUtils;

{$R *.dfm}

procedure TRemoveMeterForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  BillingData.RemoveMeter.Close;
  Action := caFree;
  RemoveMeterForm := Nil;
end;

procedure TRemoveMeterForm.NxButton3Click(Sender: TObject);
begin
  Close;
end;

procedure TRemoveMeterForm.FormShow(Sender: TObject);
begin
   With BillingData do
     begin
       RemoveMeter.Close;
       DateFrom.Date := StartOfTheMonth(Now);
       DateTo.Date   := EndOfTheMonth(Now);

       RemoveMeter.MacroByName('code').Active          := False;
       RemoveMeter.MacroByName('name').Active          := False;
       RemoveMeter.MacroByName('accountnumber').Active := False;
       RemoveMeter.MacroByName('date').Active          := True;

       RemoveMeter.ParamByName('DateFrom').AsDate := StartOfTheMonth(Now);
       RemoveMeter.ParamByName('DateTo').AsDate   := EndOfTheMonth(Now);

       RemoveMeter.Open;
     end;
end;

procedure TRemoveMeterForm.NxLinkLabel1Click(Sender: TObject);
begin
  With BillingData do
   begin
     RemoveMeter.Close;
     RemoveMeter.MacroByName('code').Active          := False;
     RemoveMeter.MacroByName('name').Active          := False;
     RemoveMeter.MacroByName('accountnumber').Active := False;
     RemoveMeter.MacroByName('date').Active          := True;

     RemoveMeter.ParamByName('DateFrom').AsDate := DateFrom.Date;
     RemoveMeter.ParamByName('DateTo').AsDate   := DateTo.Date;

     RemoveMeter.Open;
   end;
end;

procedure TRemoveMeterForm.DateFromChange(Sender: TObject);
begin
  DateTo.Date := EndOfTheMonth(DateFrom.Date);
end;

procedure TRemoveMeterForm.RadioGroup1Click(Sender: TObject);
begin
 Case RadioGroup1.ItemIndex of
 0 : BillingData.RemoveMeter.FilterSQL := '';
 1 : BillingData.RemoveMeter.FilterSQL := 'ifnull(accomplished,0) =  0';
 2 : BillingData.RemoveMeter.FilterSQL := 'ifnull(accomplished,0) =  1';
 3 : BillingData.RemoveMeter.FilterSQL := 'ifnull(posted,0) = 1';
 4 : BillingData.RemoveMeter.FilterSQL := 'ifnull(posted,0) = 0';
 end;

end;

procedure TRemoveMeterForm.NxLinkLabel2Click(Sender: TObject);
begin
  With BillingData do
   begin
     RemoveMeter.MacroByName('code').Active          := False;
     RemoveMeter.MacroByName('date').Active          := False;

     If NxCheckBox1.Checked = True then
      begin
       RemoveMeter.MacroByName('accountnumber').Active := False;
       RemoveMeter.MacroByName('name').Active          := True;
       RemoveMeter.ParamByName('name').Text            := '%'+NxEdit1.Text+'%';
      end
      else
      begin
       RemoveMeter.MacroByName('accountnumber').Active := True;
       RemoveMeter.MacroByName('name').Active          := False;
       RemoveMeter.ParamByName('accountnumber').Text   := NxEdit1.Text;
      end;
     RemoveMeter.Open;
   end;

end;

procedure TRemoveMeterForm.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
   If Key = #13 then
     begin
       Perform(CM_DIALOGKEY,VK_TAB,0);
       Key := #0;
     end;
end;

procedure TRemoveMeterForm.NxLinkLabel3Click(Sender: TObject);
begin
  RemoveMeterPanel.Left := 146;
  RemoveMeterPanel.Top  := 40;
  RemoveMeterPanel.BringToFront;
  RemoveMeterPanel.Visible := True;

  AccountNumberSearch.Enabled := True;
  DBEdit1.SetFocus;
  BillingData.RemoveMeterDate.EditMask := '!99/99/00;1;_';
  BillingData.RemoveMeterDateRemoved.EditMask := '!99/99/00;1;_';
  BillingData.RemoveMeter.Append;
  BillingData.RemoveMeterDate.AsDateTime := Now;

end;

procedure TRemoveMeterForm.DBRadioGroup1Click(Sender: TObject);
begin
  If DBRadioGroup1.ItemIndex = 0 then
    DBEdit7.Enabled := False else
    begin
      DBEdit7.Enabled := True;
      DBEdit7.SetFocus;
    end;
end;

procedure TRemoveMeterForm.NxLinkLabel5Click(Sender: TObject);
begin
  If BillingData.RemoveMeter.IsEmpty then
    begin
      MessageDlg('No Record to delete', mtError, [mbOK], 0);
      exit;
    end;

  if (MessageDlg('Confirm delete', mtConfirmation, [mbYes, mbCancel], 0) = mrCancel) then exit;
  BillingData.RemoveMeter.Delete;

end;

procedure TRemoveMeterForm.AccountNumberSearchClick(Sender: TObject);
begin
  RMaster.Close;
  RMaster.ParamByName('AccountNumber').Text := DBEdit2.Text;
  RMaster.Open;

  If RMaster.IsEmpty then
    begin
      MessageDlg('Account Number does not exist', mtInformation, [mbOK], 0);
      RMaster.Close;
      Exit;
    end;

  With BillingData do
    begin
     RemoveMeterCode.Text            := RMasterCode.Text;
     RemoveMeterArea.Text            := RMasterArea.Text;
     RemoveMeterBook.Text            := RMasterBook.Text;
     RemoveMeterName.Text            := RMasterName.Text;
     RemoveMeterMeterBrand.Text      := RMasterMeterBrand.Text;
     RemoveMeterSerialNumber.Text    := RMasterSerial.Text;
     RemoveMeterDiscoDate.AsDateTime := RMasterDisconnectionDate.AsDateTime;
    end;
  RMaster.Close;
  DBEdit4.SetFocus;
end;

procedure TRemoveMeterForm.NxLinkLabel4Click(Sender: TObject);
begin
  RemoveMeterPanel.Left := 146;
  RemoveMeterPanel.Top  := 40;
  RemoveMeterPanel.BringToFront;
  RemoveMeterPanel.Visible := True;

  AccountNumberSearch.Enabled := False;
  BillingData.RemoveMeterDate.EditMask := '!99/99/00;1;_';
  BillingData.RemoveMeterDateRemoved.EditMask := '!99/99/00;1;_';
  BillingData.RemoveMeter.Edit;
  DBEdit4.SetFocus;
end;

procedure TRemoveMeterForm.NxLinkLabel6Click(Sender: TObject);
begin
  BillingData.RemoveMeter.Post;
  RemoveMeterPanel.Visible := False;
end;

procedure TRemoveMeterForm.NxLinkLabel7Click(Sender: TObject);
begin
  BillingData.RemoveMeter.Cancel;
  RemoveMeterPanel.Visible := False;
end;

procedure TRemoveMeterForm.NxButton2Click(Sender: TObject);
begin
  if (MessageDlg('Update Remove Meter...'+#13+#10+
                 'This will Update Connection Code 4 to 5 for the Master File'+#13+#10+
                 'and update remove meter status to posted =1.. Proceed?', mtConfirmation, [mbYes, mbCancel], 0) = mrCancel) then exit;

  MyQuery1.Open;
  NxMemo1.Lines.Add('Records to Update '+IntToStr(MyQuery1.RecordCount));
  MyQuery1.Close;

  Try
  UpdateMaster.Execute;
  NxMemo1.Lines.Add('Master Records Updated '+IntToStr(UpdateMaster.RowsAffected));
  except
  end;

  Try
  UpdateMeterInv.Execute;
  NxMemo1.Lines.Add('Meter Inventory Status Updated '+IntToStr(UpdateMeterInv.RowsAffected));
  except
  end;

  Try
  UpdateMeterTrans.Execute;
  NxMemo1.Lines.Add('Meter History Updated '+IntToStr(UpdateMeterTrans.RowsAffected));
  except
  end;

  Try
  UpdateRemoveMeter.Execute;
  NxMemo1.Lines.Add('Removed Meters Updated '+IntToStr(UpdateRemoveMeter.RowsAffected));
  except
  end;

  NxMemo1.Lines.Add('Done....');
end;

procedure TRemoveMeterForm.NxButton1Click(Sender: TObject);
begin
  RMList.Open;
  QuickRep1.Preview;
  RMList.Close;
end;

end.
