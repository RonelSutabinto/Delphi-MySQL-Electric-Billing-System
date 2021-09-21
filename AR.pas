unit AR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, MemDS, DBAccess, MyAccess, QRCtrls, QuickRpt, ExtCtrls,
  NxCollection, ComCtrls, StdCtrls, Dateutils, NxEdit, strutils, NxPageControl,
  Grids, DBGrids, CRGrid, CRDBGrid1;

type
  TAccountsReceivable = class(TForm)
    quAccountsReceivable: TMyQuery;
    Panel2: TPanel;
    quAccountsReceivableidarub: TStringField;
    quAccountsReceivabledesc: TStringField;
    quAccountsReceivableresBills: TStringField;
    quAccountsReceivableresLLBills: TStringField;
    quAccountsReceivableresLLKwhr: TStringField;
    quAccountsReceivableresKwhr: TStringField;
    quAccountsReceivableRES: TFloatField;
    quAccountsReceivableLVBills: TStringField;
    quAccountsReceivableLVKwhr: TStringField;
    quAccountsReceivableLV: TFloatField;
    quAccountsReceivableHVBills: TStringField;
    quAccountsReceivableHVKwhr: TStringField;
    quAccountsReceivableHVKwhrD: TStringField;
    quAccountsReceivableHV: TFloatField;
    quAccountsReceivablenumBills: TStringField;
    quAccountsReceivableTotalKwhr: TStringField;
    quAccountsReceivableTotalKwhrD: TStringField;
    quAccountsReceivableTotalAmount: TFloatField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    QUnpaidUnbundled: TQuickRep;
    QRBand4: TQRBand;
    QRLabel33: TQRLabel;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRLabel34: TQRLabel;
    QRShape22: TQRShape;
    QRLabel35: TQRLabel;
    QRShape23: TQRShape;
    QRLabel36: TQRLabel;
    QRShape24: TQRShape;
    QRLabel37: TQRLabel;
    QRShape25: TQRShape;
    QRLabel38: TQRLabel;
    QRShape26: TQRShape;
    QRLabel39: TQRLabel;
    QRShape27: TQRShape;
    QRLabel40: TQRLabel;
    QRShape28: TQRShape;
    QRLabel41: TQRLabel;
    QRShape29: TQRShape;
    QRLabel42: TQRLabel;
    QRShape30: TQRShape;
    QRLabel43: TQRLabel;
    QRShape31: TQRShape;
    QRLabel44: TQRLabel;
    QRShape32: TQRShape;
    QRLabel45: TQRLabel;
    QRShape33: TQRShape;
    QRLabel46: TQRLabel;
    QRShape34: TQRShape;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRShape35: TQRShape;
    QRLabel49: TQRLabel;
    QRShape36: TQRShape;
    QRLabel50: TQRLabel;
    QRShape37: TQRShape;
    QRLabel51: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRShape159: TQRShape;
    QRBand5: TQRBand;
    QRShape38: TQRShape;
    QRShape39: TQRShape;
    QRShape79: TQRShape;
    QRShape80: TQRShape;
    QRShape81: TQRShape;
    QRShape82: TQRShape;
    QRShape83: TQRShape;
    QRShape84: TQRShape;
    QRShape85: TQRShape;
    QRShape86: TQRShape;
    QRShape87: TQRShape;
    QRShape88: TQRShape;
    QRShape89: TQRShape;
    QRShape90: TQRShape;
    QRShape91: TQRShape;
    QRShape92: TQRShape;
    QRShape93: TQRShape;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    QRDBText31: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText63: TQRDBText;
    QRDBText64: TQRDBText;
    QRShape160: TQRShape;
    QRBand6: TQRBand;
    QRShape94: TQRShape;
    QRShape95: TQRShape;
    QRShape96: TQRShape;
    QRShape97: TQRShape;
    QRShape98: TQRShape;
    QRShape99: TQRShape;
    QRShape100: TQRShape;
    QRShape101: TQRShape;
    QRShape102: TQRShape;
    QRShape103: TQRShape;
    QRShape104: TQRShape;
    QRShape105: TQRShape;
    QRShape106: TQRShape;
    QRShape107: TQRShape;
    QRShape108: TQRShape;
    QRShape109: TQRShape;
    QRShape110: TQRShape;
    QRExpr12: TQRExpr;
    QRExpr32: TQRExpr;
    QRExpr33: TQRExpr;
    QRExpr13: TQRExpr;
    QRLabel31: TQRLabel;
    QRShape161: TQRShape;
    QRBand13: TQRBand;
    QRLabel32: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel99: TQRLabel;
    QRLabel100: TQRLabel;
    DateTimePicker1: TDateTimePicker;
    RadioGroup1: TRadioGroup;
    NxButton1: TNxButton;
    QArea: TMyQuery;
    QAreaarea: TStringField;
    RadioGroup2: TRadioGroup;
    QAreaaddress: TStringField;
    CRDBGrid11: TCRDBGrid1;
    dsQArea: TMyDataSource;
    procedure FormShow(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RadioGroup1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    increment : integer;
  end;



var
  AccountsReceivable: TAccountsReceivable;



implementation

uses Data;

{$R *.dfm}

procedure TAccountsReceivable.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  AccountsReceivable := Nil;
end;

procedure TAccountsReceivable.FormShow(Sender: TObject);
begin
   DateTimePicker1.Date := Now;
   RadioGroup1.SetFocus;
end;

procedure TAccountsReceivable.NxButton1Click(Sender: TObject);
begin

   if RadioGroup2.ItemIndex = 0 then
      begin
        quAccountsReceivable.ParamByName('conncode').Text := '1';
        QRLabel1.Caption := 'ACTIVE CONSUMERS ENDING '+DateToStr(DateTimePicker1.Date);
      end
      else
      begin
        quAccountsReceivable.ParamByName('conncode').Text := '4' ;
        QRLabel1.Caption := 'DISCO CONSUMERS ENDING '+DateToStr(DateTimePicker1.Date);
      end;

   if RadioGroup1.ItemIndex = 0 then
    begin
      qrlabel99.Caption := 'UNBUNDLED UNPAID BILLS FOR ALL AREAS';
      quAccountsReceivable.ParamByName('parea').Text := '%';
      quAccountsReceivable.Open;
      QUnpaidUnbundled.Preview;
    end;

   if RadioGroup1.ItemIndex = 1 then
    begin
     QArea.Open;
     QArea.First;
     while not QArea.Eof do
       begin
          quAccountsReceivable.Close;
          qrlabel99.Caption := 'UNBUNDLED UNPAID BILLS FOR '+QAreaarea.Text+' '+QAreaaddress.Text;
          quAccountsReceivable.ParamByName('parea').Text := QAreaarea.Text;
          quAccountsReceivable.Open;
          QUnpaidUnbundled.Print;
          QArea.Next;
       end;
    end;

   if RadioGroup1.ItemIndex = 2 then
    begin
          quAccountsReceivable.Close;
          qrlabel99.Caption := 'UNBUNDLED UNPAID BILLS FOR '+QAreaarea.Text+' '+QAreaaddress.Text;
          quAccountsReceivable.ParamByName('parea').Text := QAreaarea.Text;
          quAccountsReceivable.Open;
          QUnpaidUnbundled.Preview;
    end;

quAccountsReceivable.Close;
QArea.Close;
end;

procedure TAccountsReceivable.RadioGroup1Click(Sender: TObject);
begin
  if RadioGroup1.ItemIndex = 2 then
    begin
      CRDBGrid11.Enabled := True;
      QArea.Open;
      CRDBGrid11.SetFocus;
    end;
end;

end.
