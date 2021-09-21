unit Restructure;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, NxCollection, NxEdit, DB, MemDS, DBAccess, MyAccess,
  Mask, DBCtrls, Grids, DBGrids, CRGrid, CRDBGrid1;

type
  TRestructureForm = class(TForm)
    Search: TNxEdit;
    NxLabel1: TNxLabel;
    DBEdit1: TDBEdit;
    RMaster: TMyQuery;
    RMastercode: TIntegerField;
    RMasteraccountnumber: TStringField;
    RMastername: TStringField;
    RMasterConsumerType: TStringField;
    RMasterserial: TStringField;
    RMasterStatus: TStringField;
    dsRMaster: TMyDataSource;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Unpaidbills: TMyQuery;
    dsUnpaidBills: TMyDataSource;
    Unpaidbillsbillmonth: TStringField;
    Unpaidbillsbillingmonth: TStringField;
    Unpaidbillsdocument: TStringField;
    Unpaidbillsamount: TFloatField;
    RUnpaidBills: TMyQuery;
    dsRestUnpaid: TMyDataSource;
    RUnpaidBillsbillmonth: TStringField;
    RUnpaidBillsbillingmonth: TStringField;
    RUnpaidBillsdocument: TStringField;
    RUnpaidBillsamount: TFloatField;
    RUnpaidBillsrestOebrnumber: TStringField;
    RUnpaidBillsrestbillmonth: TStringField;
    NxButton1: TNxButton;
    NxButton2: TNxButton;
    NxButton3: TNxButton;
    NxButton4: TNxButton;
    RUnpaidBillscode: TFloatField;
    RUnpaidBillsaccountnumber: TStringField;
    RUnpaidBillsname: TStringField;
    Unpaidbillscode: TFloatField;
    Unpaidbillsaccountnumber: TStringField;
    Unpaidbillsname: TStringField;
    CRDBGrid1: TCRDBGrid1;
    CRDBGrid2: TCRDBGrid1;
    CreatePromMaster: TMyQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure NxButton1Click(Sender: TObject);
    procedure SearchKeyPress(Sender: TObject; var Key: Char);
    procedure NxButton2Click(Sender: TObject);
    procedure NxButton3Click(Sender: TObject);
    procedure NxButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RestructureForm: TRestructureForm;

implementation

uses Data;

{$R *.dfm}

procedure TRestructureForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  RMaster.Close;
  RUnpaidBills.Close;
  Unpaidbills.Close;
  Action := caFree;
  RestructureForm := Nil;
end;

procedure TRestructureForm.NxButton1Click(Sender: TObject);
begin
  If UnpaidBills.IsEmpty then
    begin
      MessageDlg('No records to restructure ...', mtConfirmation, [mbOK], 0);
      exit;
    end;

  RUnpaidBills.Append;

  RUnpaidBillscode.Text          := Unpaidbillscode.Text;
  RUnpaidBillsaccountnumber.Text := Unpaidbillsaccountnumber.Text;
  RUnpaidBillsname.Text          := Unpaidbillsname.Text;
  RUnpaidBillsbillmonth.Text     := Unpaidbillsbillmonth.Text;
  RUnpaidBillsdocument.Text      := Unpaidbillsdocument.Text;
  RUnpaidBillsamount.AsCurrency  := Unpaidbillsamount.AsCurrency;

  try
    RUnpaidBills.Post;
    RUnpaidBills.Refresh;
    UnpaidBills.Next;
  except
    RUnpaidBills.Cancel;
  end;


end;

procedure TRestructureForm.SearchKeyPress(Sender: TObject; var Key: Char);
begin
  If key = #13 then
    begin
      RMaster.Close;
      RMaster.ParamByName('accountnumber').Text := Search.Text;
      RMaster.Open;

      If RMaster.IsEmpty then
        begin
          MessageDlg('That account number is not on file..', mtError, [mbOK], 0);
          RMaster.Close;
          exit;
        end;

      Unpaidbills.Close;
      Unpaidbills.ParamByName('code').Text := RMastercode.Text;
      UnpaidBills.Open;

      RUnpaidBills.Close;
      RUnpaidbills.ParamByName('code').Text := RMastercode.Text;
      RUnpaidBills.Open;

    end;
end;

procedure TRestructureForm.NxButton2Click(Sender: TObject);
begin
  If UnpaidBills.IsEmpty then
    begin
      MessageDlg('No records to restructure ...', mtConfirmation, [mbOK], 0);
      exit;
    end;

  UnpaidBills.First;

  while not Unpaidbills.Eof do
  begin
  RUnpaidBills.Append;

  RUnpaidBillscode.Text          := Unpaidbillscode.Text;
  RUnpaidBillsaccountnumber.Text := Unpaidbillsaccountnumber.Text;
  RUnpaidBillsname.Text          := Unpaidbillsname.Text;
  RUnpaidBillsbillmonth.Text     := Unpaidbillsbillmonth.Text;
  RUnpaidBillsdocument.Text      := Unpaidbillsdocument.Text;
  RUnpaidBillsamount.AsCurrency  := Unpaidbillsamount.AsCurrency;

  try
    RUnpaidBills.Post;
    RUnpaidBills.Refresh;
  except
    RUnpaidBills.Cancel;
  end;

  UnpaidBills.Next;
  end;

end;

procedure TRestructureForm.NxButton3Click(Sender: TObject);
begin
  If RUnpaidBills.IsEmpty then
    begin
      MessageDlg('No restructured bill to delete..', mtError, [mbOK], 0);
      exit;
    end;

  RUnpaidBills.Delete;
end;

procedure TRestructureForm.NxButton4Click(Sender: TObject);
begin
  If RUnpaidBills.IsEmpty then
    begin
      MessageDlg('No restructured bill to delete..', mtError, [mbOK], 0);
      exit;
    end;
  RUnpaidBills.First;

  While not RUnpaidBills.IsEmpty do RUnpaidBills.Delete;
end;

end.
