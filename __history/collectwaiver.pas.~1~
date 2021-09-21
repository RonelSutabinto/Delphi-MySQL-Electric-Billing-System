unit collectwaiver;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, NxEdit, DB, MemDS, DBAccess, MyAccess,
  NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid,
  NxCollection, NxDBColumns, NxColumns, Grids, DBGrids, CRGrid, CRDBGrid1;

type
  TCollectionWaiverForm = class(TForm)
    SearchData: TNxButtonEdit;
    RouteControl: TMyQuery;
    NxLabel1: TNxLabel;
    RouteControlEntry: TIntegerField;
    RouteControlDocument: TStringField;
    RouteControlCode: TFloatField;
    RouteControlArea: TStringField;
    RouteControlBook: TStringField;
    RouteControlAccountNumber: TStringField;
    RouteControlDate: TDateField;
    RouteControlName: TStringField;
    RouteControlBillMonth: TStringField;
    RouteControlRateCode: TStringField;
    RouteControlReading: TFloatField;
    RouteControlKilowattHour: TFloatField;
    RouteControlAmount: TFloatField;
    RouteControlUCNPCSD: TFloatField;
    RouteControlUCNPCSCC: TFloatField;
    RouteControlUCDUSCC: TFloatField;
    RouteControlUCME: TFloatField;
    RouteControlUCETR: TFloatField;
    RouteControlUCEC: TFloatField;
    RouteControlUCCSR: TFloatField;
    RouteControlCollectorCode: TStringField;
    RouteControlDateIssued: TDateField;
    RouteControlBatch: TStringField;
    RouteControlencodercode: TStringField;
    RouteControlTransformerRental: TFloatField;
    RouteControlIType: TStringField;
    dsroutecontrol: TMyDataSource;
    NxHeaderPanel1: TNxHeaderPanel;
    SAccountNumber: TStaticText;
    NxLabel2: TNxLabel;
    SName: TStaticText;
    NxLabel3: TNxLabel;
    SBillMonth: TStaticText;
    SAmount: TStaticText;
    NxLabel4: TNxLabel;
    NxLabel5: TNxLabel;
    NxLabel6: TNxLabel;
    NxLabel7: TNxLabel;
    SCollectorCode: TStaticText;
    SDateIssued: TStaticText;
    NxButton1: TNxButton;
    NxButton2: TNxButton;
    allowpayment: TMyQuery;
    CRDBGrid1: TCRDBGrid1;
    procedure dsroutecontrolDataChange(Sender: TObject; Field: TField);
    procedure FormShow(Sender: TObject);
    procedure SearchDataButtonClick(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure SearchDataKeyPress(Sender: TObject; var Key: Char);
    procedure NxButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CollectionWaiverForm: TCollectionWaiverForm;

implementation

uses Data;

{$R *.dfm}

procedure TCollectionWaiverForm.dsroutecontrolDataChange(Sender: TObject;
  Field: TField);
begin
  SAccountNumber.Caption   := RouteControlAccountNumber.Text;
  SName.Caption            := RouteControlName.Text;
  SBillMonth.Caption       := RouteControlBillMonth.Text;
  SAmount.Caption          := CurrToStr(RouteControlAmount.AsCurrency);
  SCollectorCode.Caption   := RouteControlCollectorCode.Text;
  SDateIssued.Caption      := DateToStr(RouteControlDateIssued.AsDateTime);
end;

procedure TCollectionWaiverForm.FormShow(Sender: TObject);
begin
  SearchData.SetFocus;
end;

procedure TCollectionWaiverForm.SearchDataButtonClick(Sender: TObject);
begin
  RouteControl.Close;
  RouteControl.ParamByName('accountnumber').Text := '%'+SearchData.Text+'%';
  RouteControl.ParamByName('name').Text          := '%'+SearchData.Text+'%';
  RouteControl.Open;
  If RouteControl.IsEmpty then
    begin
      RouteControl.Close;
      MessageDlg('There are no matching records....', mtError, [mbOK], 0);
      SearchData.SetFocus;
      exit;
    end;

  CRDBGrid1.SetFocus;
  NxButton1.Enabled := True;

end;

procedure TCollectionWaiverForm.NxButton1Click(Sender: TObject);
begin
  allowpayment.ParamByName('accountnumber').Text := RouteControlAccountNumber.Text;
  allowpayment.Execute;
  RouteControl.Close;
  NxButton1.Enabled := False;
  SearchData.SetFocus;
end;

procedure TCollectionWaiverForm.SearchDataKeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 then SearchDataButtonClick(self);
end;

procedure TCollectionWaiverForm.NxButton2Click(Sender: TObject);
begin
  Close;
end;

procedure TCollectionWaiverForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  CollectionWaiverForm := nil;
end;

end.
