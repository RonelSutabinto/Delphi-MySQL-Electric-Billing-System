unit pantawidrecovery;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, MemDS, DBAccess, MyAccess, StdCtrls, NxEdit, ExtCtrls,
  NxCollection, Grids, DBGrids, CRGrid, Gauges, Menus, printers, QRCtrls,
  QuickRpt, ComCtrls, CRDBGrid1;

type
  TPantawidRecoveryForm = class(TForm)
    PKVRIndex: TMyQuery;
    PKVLedger: TMyQuery;
    PKVRLedger: TMyQuery;
    PKVRLedgeridpkvr: TLargeintField;
    PKVRLedgercode: TFloatField;
    PKVRLedgerArea: TStringField;
    PKVRLedgerBook: TStringField;
    PKVRLedgerSequence: TStringField;
    PKVRLedgerAccountNumber: TStringField;
    PKVRLedgerName: TStringField;
    PKVRLedgerBillMonth: TStringField;
    PKVRLedgeramount: TFloatField;
    PKVRLedgerbillnumber: TStringField;
    PKVRLedgerkilowatthour: TLargeintField;
    PKVRLedgerpostingdate: TDateField;
    dsPKVRIndex: TMyDataSource;
    dsPKVLedger: TMyDataSource;
    dsPKVRLedger: TMyDataSource;
    Search: TNxEdit;
    NxButton1: TNxButton;
    RadioGroup1: TRadioGroup;
    NxButton2: TNxButton;
    NxButton3: TNxButton;
    NxButton4: TNxButton;
    NxButton6: TNxButton;
    insertPKVRIndex: TMyQuery;
    PopulatePanel: TNxHeaderPanel;
    PopulateAcct: TNxEdit;
    NxLabel1: TNxLabel;
    NxButton7: TNxButton;
    PrintRecoveryPanel: TNxHeaderPanel;
    StartAccount: TNxEdit;
    NxLabel2: TNxLabel;
    EndAccount: TNxEdit;
    NxLabel3: TNxLabel;
    Gauge1: TGauge;
    NxButton8: TNxButton;
    NxButton9: TNxButton;
    printletter: TMyQuery;
    printletteridpkvridx: TLargeintField;
    printlettercode: TFloatField;
    printletterArea: TStringField;
    printletterBook: TStringField;
    printletterSequence: TStringField;
    printletterAccountNumber: TStringField;
    printletterName: TStringField;
    printletteramount: TFloatField;
    PopupMenu1: TPopupMenu;
    StartAccountNumber1: TMenuItem;
    EndAccountNumber1: TMenuItem;
    PrinterSetupDialog1: TPrinterSetupDialog;
    printletteraddress: TStringField;
    PKVRSummary: TMyQuery;
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    QuickRep1: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel13: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    SummaryBand1: TQRBand;
    QRLabel2: TQRLabel;
    QuickRep2: TQuickRep;
    QRBand1: TQRBand;
    QRLabel14: TQRLabel;
    QRSysData3: TQRSysData;
    QRSysData4: TQRSysData;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRBand2: TQRBand;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText19: TQRDBText;
    QRBand3: TQRBand;
    QRLabel25: TQRLabel;
    QRLabel9: TQRLabel;
    QRExpr1: TQRExpr;
    QRSysData5: TQRSysData;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    PKVRSummaryArea: TStringField;
    PKVRSummaryaddress: TStringField;
    PKVRSummaryamount: TFloatField;
    PKVRSummaryrecovered: TFloatField;
    PKVRSummarybalance: TCurrencyField;
    PKVRSummaryaccount: TLargeintField;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    RecoveryReportPanel: TNxHeaderPanel;
    PrnArea: TNxEdit;
    PrnBillMonth: TNxEdit;
    NxLabel4: TNxLabel;
    NxLabel5: TNxLabel;
    NxButton5: TNxButton;
    NxButton10: TNxButton;
    NxButton11: TNxButton;
    PKVRIndexidpkvridx: TLargeintField;
    PKVRIndexcode: TFloatField;
    PKVRIndexArea: TStringField;
    PKVRIndexBook: TStringField;
    PKVRIndexSequence: TStringField;
    PKVRIndexAccountNumber: TStringField;
    PKVRIndexName: TStringField;
    PKVRIndexamount: TFloatField;
    PKVRIndexrecovered: TFloatField;
    PKVRIndexbalance: TCurrencyField;
    CRDBGrid1: TCRDBGrid1;
    procedure NxButton1Click(Sender: TObject);
    procedure NxButton2Click(Sender: TObject);
    procedure PopulateAcctKeyPress(Sender: TObject; var Key: Char);
    procedure NxButton7Click(Sender: TObject);
    procedure StartAccountNumber1Click(Sender: TObject);
    procedure EndAccountNumber1Click(Sender: TObject);
    procedure NxButton8Click(Sender: TObject);
    procedure NxButton9Click(Sender: TObject);
    procedure NxButton3Click(Sender: TObject);
    procedure PKVRIndexCalcFields(DataSet: TDataSet);
    procedure PKVRSummaryCalcFields(DataSet: TDataSet);
    procedure NxButton4Click(Sender: TObject);
    procedure NxButton5Click(Sender: TObject);
    procedure NxButton10Click(Sender: TObject);
    procedure NxButton6Click(Sender: TObject);
    procedure NxButton11Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PantawidRecoveryForm: TPantawidRecoveryForm;

implementation

uses Data, ModTools;

Var
Lst                  : Text     ;
Device, Driver, Port : array[0..1023] of char;
varhandle            : THandle;
printername          : String;

{$R *.dfm}

procedure TPantawidRecoveryForm.NxButton1Click(Sender: TObject);
begin
  PKVRIndex.Close;
  Case RadioGroup1.ItemIndex of
   0 : begin
        PKVRIndex.ParamByName('accountnumber').Text := '%';
        PKVRIndex.ParamByName('area').Text          := '%';
       end;

   1 : begin
        PKVRIndex.ParamByName('accountnumber').Text := '%'+Search.Text+'%';
        PKVRIndex.ParamByName('area').Text          := '%';
       end;

   2 : begin
        PKVRIndex.ParamByName('accountnumber').Text := '%';
        PKVRIndex.ParamByName('area').Text          := '%'+Search.Text+'%';
       end;
  end;
  PKVRIndex.Open;
end;

procedure TPantawidRecoveryForm.NxButton2Click(Sender: TObject);
begin
  PKVRIndex.Close;
  PKVRIndex.ParamByName('accountnumber').Text := '%';
  PKVRIndex.ParamByName('area').Text          := '%';
  PKVRIndex.Open;
  PKVRIndex.Last;

  PopulatePanel.Left     := 392;
  PopulatePanel.Top      := 48;
  PopulatePanel.Visible  := True;
  PopulatePanel.BringToFront;
  PopulateAcct.SetFocus;
end;

procedure TPantawidRecoveryForm.PopulateAcctKeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 then
    begin
      Key := #0;
      insertPKVRIndex.ParamByName('accountnumber').Text := PopulateAcct.Text;
      insertPKVRIndex.Execute;

      If insertPKVRIndex.RowsAffected = 0 then
        begin
          MessageDlg('Account does not exist in Pantawid...', mtInformation, [mbOK], 0);
          PopulateAcct.SetFocus;
          PopulateAcct.SelectAll;
        end else
        begin
          PKVRIndex.Refresh;
          PKVRIndex.Last;
          PopulateAcct.SetFocus;
          PopulateAcct.SelectAll;
        end;
    end;
end;

procedure TPantawidRecoveryForm.NxButton7Click(Sender: TObject);
begin
  PopulatePanel.Visible := False;
end;

procedure TPantawidRecoveryForm.StartAccountNumber1Click(Sender: TObject);
begin
   StartAccount.Text := PKVRIndexAccountNumber.Text;
   StartAccount.SetFocus;
end;

procedure TPantawidRecoveryForm.EndAccountNumber1Click(Sender: TObject);
begin
   EndAccount.Text := PKVRIndexAccountNumber.Text;
   EndAccount.SetFocus;
end;

procedure TPantawidRecoveryForm.NxButton8Click(Sender: TObject);
Var I : Integer;
begin

 printletter.Close;
 printletter.ParamByName('startaccount').Text := StartAccount.Text;
 printletter.ParamByName('endaccount').Text   := EndAccount.Text;
 printletter.Open;

 If printletter.IsEmpty then
   begin
     MessageDlg('Account range is empty... Try again', mtError, [mbOK], 0);
     printletter.Close;
     exit;
   end;

   if not(PrinterSetupDialog1.Execute) then Exit;

   Try
     Printer.GetPrinter(Device,Driver,Port,varHandle);
     I := 0;
     While Port[I] <> #0 do
       begin
        PrinterName := PrinterName + Port[I];
        Inc(I);
       end;
     AssignFile(Lst,PrinterName);
     Rewrite(Lst);
   except
     ShowMessage('Printer not Ready');
     Exit;
   end;

 Gauge1.MinValue := 0;
 Gauge1.MaxValue := printletter.RecordCount;
 Gauge1.Progress := 0;

 printletter.First;
 while not printletter.Eof do
   begin
   Gauge1.AddProgress(1);
   Application.ProcessMessages;

   If printletteramount.AsCurrency > 0 then
   begin
   Write(Lst,#27+'M');
   Writeln(Lst,'-----------------------------------------------');
   Writeln(Lst,'     ZAMBOANGA DEL NORTE ELEC. COOP., INC      ');
   Writeln(Lst,'                  (ZANECO)                     ');
   Writeln(Lst,'         Gen. Luna St., Dipolog City           ');
   Writeln(Lst,'-----------------------------------------------');
   Writeln(Lst);
   Writeln(Lst,' ',PrintLetterAccountNumber.text);
   Writeln(Lst,' ',PrintLetterName.text);
   Writeln(Lst,' ',PrintLetterAddress.text);
   Writeln(Lst);
   Writeln(Lst,'  Sir/Madam,');
   Writeln(Lst);
   Writeln(Lst,'       Please be informed that the  NEA made a ');
   Writeln(Lst,'  final evaluation on the qualified recipients ');
   Writeln(Lst,'  of PANTAWID KURYENTE Subsidy.  Unfortunately ');
   Writeln(Lst,'  your account  is not  qualified  to  receive ');
   Writeln(Lst,'  such assistance of the government.');
   Writeln(Lst);
   Writeln(Lst,'       We are  therefore recovering/collecting ');
   Writeln(Lst,' the amount of P',Format(printletteramount.ascurrency,'##,###.##'),' in the same manner ');
   Writeln(Lst,' this was disbursed starting July 2010 billing.');
   Writeln(Lst);
   Writeln(Lst,'       Please get in  touch with  this  office ');
   Writeln(Lst,' should you have questions with the foregoing. ');
   Writeln(Lst);
   Writeln(Lst,'       Thank you.');
   Writeln(Lst);
   Writeln(Lst,'                        Very truly yours,');
   Writeln(Lst);
   Writeln(Lst,'                  (SGD) ADELMO P. LAPUT');
   Writeln(Lst,'                        General Manager - CEO');
   Writeln(Lst);
   Writeln(Lst);
   end;
   
   printletter.Next;
   end;

   PrintLetter.Close;
   CloseFile(Lst);
   MessageDlg('Printing Done....', mtInformation, [mbOK], 0);
   StartAccount.SetFocus;
end;

procedure TPantawidRecoveryForm.NxButton9Click(Sender: TObject);
begin
  PrintRecoveryPanel.Visible := False;
end;

procedure TPantawidRecoveryForm.NxButton3Click(Sender: TObject);
begin
  PrintRecoveryPanel.Left    := 189;
  PrintRecoveryPanel.Top     := 123;
  PrintRecoveryPanel.Visible := True;
  PrintRecoveryPanel.BringToFront;
  StartAccount.SetFocus;
end;

procedure TPantawidRecoveryForm.PKVRIndexCalcFields(DataSet: TDataSet);
begin
  PKVRIndexbalance.AsCurrency :=  PKVRIndexamount.AsCurrency - PKVRIndexrecovered.AsCurrency;
end;

procedure TPantawidRecoveryForm.PKVRSummaryCalcFields(DataSet: TDataSet);
begin
  PKVRSummarybalance.AsCurrency := PKVRSummaryamount.AsCurrency - PKVRSummaryrecovered.AsCurrency;
end;

procedure TPantawidRecoveryForm.NxButton4Click(Sender: TObject);
begin
 RecoveryReportPanel.Left    := 212;
 RecoveryReportPanel.Top     := 115;
 RecoveryReportPanel.Visible := True;
 RecoveryReportPanel.BringToFront;
end;

procedure TPantawidRecoveryForm.NxButton5Click(Sender: TObject);
Const
AddrT   : Array[1..25] of String[15] =
       ('RIZAL',
        'SIBUTAD',
        'MUTIA',
        'LA LIBERTAD',
        'SERGIO OSMEÑA',
        'DAPITAN',
        'PIÑAN',
        'POLANCO',
        'DIPOLOG NORTH',
        'DIPOLOG SOUTH',
        'KATIPUNAN',
        'ROXAS',
        'MANUKAN',
        'JOSE DALMAN',
        'SINDANGAN',
        'LEON B. POSTIGO',
        'SIAYAN',
        'SALUG',
        'LILOY',
        'LABASON',
        'TAMPILISAN',
        'GODOD',
        'GUTALAC',
        'DAPITAN / PIÑAN',
        'KALAWIT');

begin
  PKVRIndex.Close;
  PKVRIndex.ParamByName('accountnumber').Text := '';
  PKVRIndex.ParamByName('area').Text          := PrnArea.Text+'%';
  PKVRIndex.Open;

  QRLabel4.Caption := 'FOR THE BILLING MONTH '+FormatDateTime('MMMM, YY',StrToDate(Copy(PrnBillMonth.text,1,2)+'/01/'+Copy(PrnBillMonth.text,3,2)));
  QRLabel6.Caption := 'Municipality of '+Addrt[strtoint(PrnArea.Text)];

  QuickRep1.Preview;

  PKVRIndex.Close;
  PKVRIndex.ParamByName('accountnumber').Text := '%';
  PKVRIndex.ParamByName('area').Text          := '%';
  PKVRIndex.Open;
end;

procedure TPantawidRecoveryForm.NxButton10Click(Sender: TObject);
begin
  PKVRSummary.Open;
  QRLabel16.Caption := 'FOR THE BILLING MONTH '+FormatDateTime('MMMM, YY',StrToDate(Copy(PrnBillMonth.text,1,2)+'/01/'+Copy(PrnBillMonth.text,3,2)));
  QuickRep2.Preview;
  PKVRSummary.Close;
end;

procedure TPantawidRecoveryForm.NxButton6Click(Sender: TObject);
begin
  Close;
end;

procedure TPantawidRecoveryForm.NxButton11Click(Sender: TObject);
begin
  RecoveryReportPanel.Visible := False;
end;

end.


