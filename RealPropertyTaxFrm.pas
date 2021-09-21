unit RealPropertyTaxFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, CRGrid, CRDBGrid1, StdCtrls, ExtCtrls, NxCollection,
  NxEdit, AdvGroupBox, ComCtrls, Mask, DBCtrls, Menus, DB, MemDS, DBAccess,
  MyAccess;

type
  TRPTaxFrm = class(TForm)
    CRDBGrid11: TCRDBGrid1;
    Panel1: TPanel;
    Image1: TImage;
    Label1: TLabel;
    NxButton1: TNxButton;
    NxButton2: TNxButton;
    NxEdit1: TNxEdit;
    RadioGroup1: TRadioGroup;
    AdvGroupBox1: TAdvGroupBox;
    AdvGroupBox2: TAdvGroupBox;
    NxHeaderPanel23: TNxHeaderPanel;
    NxLinkLabel31: TNxLinkLabel;
    NxHeaderPanel1: TNxHeaderPanel;
    NxLinkLabel1: TNxLinkLabel;
    NxEdit2: TNxEdit;
    NxEdit3: TNxEdit;
    Label3: TLabel;
    Label4: TLabel;
    NxButton11: TNxButton;
    NxButton9: TNxButton;
    CRDBGrid12: TCRDBGrid1;
    Label2: TLabel;
    Label5: TLabel;
    NxButton3: TNxButton;
    NxButton4: TNxButton;
    Label6: TLabel;
    NxHeaderPanel2: TNxHeaderPanel;
    NxLinkLabel2: TNxLinkLabel;
    NxButton5: TNxButton;
    CanvassSaveBtn: TNxButton;
    DBEdit1: TDBEdit;
    Label7: TLabel;
    PopupMenu1: TPopupMenu;
    ReprintPowerBillfromBillingArchive1: TMenuItem;
    SelectAffectedArea1: TMenuItem;
    RpTaxQuery: TMyQuery;
    RpTaxSource: TMyDataSource;
    AreaQuery: TMyQuery;
    ArAffctQuery: TMyQuery;
    ArAffctQueryIdRPTArea: TIntegerField;
    ArAffctQueryIdRPTax: TIntegerField;
    ArAffctQueryBillMonth: TStringField;
    ArAffctQueryArea: TStringField;
    NxButton6: TNxButton;
    CountRQuery: TMyQuery;
    RpTaxQueryTmp: TMyQuery;
    RpTaxQueryRateAmnt: TFloatField;
    RpTaxQueryRateOrder: TStringField;
    RpTaxQueryBillMonth: TStringField;
    MyQueryTmp: TMyQuery;
    Label9: TLabel;
    Label10: TLabel;
    Label8: TLabel;
    DBEdit2: TDBEdit;
    Label11: TLabel;
    DBEdit3: TDBEdit;
    ComboBox2: TComboBox;
    ArAffctSource: TMyDataSource;
    PopupMenu2: TPopupMenu;
    RemoveArea1: TMenuItem;
    ArAffctQueryRateOrder: TStringField;
    RpTaxQueryIdRPTax: TLongWordField;
    CRDBGrid13: TCRDBGrid1;
    SubDetailQuery: TMyQuery;
    SubDetailSource: TMyDataSource;
    procedure NxButton2Click(Sender: TObject);
    procedure NxLinkLabel1Click(Sender: TObject);
    procedure NxButton9Click(Sender: TObject);
    procedure ReprintPowerBillfromBillingArchive1Click(Sender: TObject);
    procedure NxLinkLabel31Click(Sender: TObject);
    procedure NxButton4Click(Sender: TObject);
    procedure SelectAffectedArea1Click(Sender: TObject);
    procedure NxButton5Click(Sender: TObject);
    procedure NxLinkLabel2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CanvassSaveBtnClick(Sender: TObject);
    procedure NxButton11Click(Sender: TObject);
    procedure NxButton6Click(Sender: TObject);
    procedure NxButton3Click(Sender: TObject);
    procedure RemoveArea1Click(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure CRDBGrid11CellClick(Column: TColumn);
    procedure NxEdit1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RPTaxFrm            : TRPTaxFrm;
  BillMonthTmp        : String;
  RPTrateTmp          : double;
  IdRPTaxTmp          : Integer;

implementation

uses Data;

{$R *.dfm}

procedure TRPTaxFrm.CanvassSaveBtnClick(Sender: TObject);
begin
  if (MessageDlg('BillMonth: '+ RpTaxQueryBillMonth.Text +
  '...Change this RPTax Rate?',mtConfirmation,[mbYes,mbCancel],0) = mrCancel) then
  begin
    RpTaxQuery.Cancel;
    NxHeaderPanel2.Visible := false;
    exit;
  end;

  RpTaxQuery.Post;
  NxHeaderPanel2.Visible := false;
end;

procedure TRPTaxFrm.CRDBGrid11CellClick(Column: TColumn);
begin
  SubDetailQuery.Close;
  SubDetailQuery.ParamByName('BillMonth').Text := RpTaxQueryBillMonth.Text;
  SubDetailQuery.ParamByName('RateOrder').Text := RpTaxQueryRateOrder.Text;
  SubDetailQuery.Open;
end;

procedure TRPTaxFrm.FormShow(Sender: TObject);
begin
//  RpTaxQuery.Close;
  RpTaxQuery.Open;
end;

procedure TRPTaxFrm.NxButton11Click(Sender: TObject);
var
  RateOrTmp      : String;
  RPTrateTmp2    : Double;
begin
  RpTaxQueryTmp.Close;
  RpTaxQueryTmp.FilterSQL := 'BillMonth like ' + quotedstr(NxEdit2.Text);
  RpTaxQueryTmp.Open;

  if not RpTaxQueryTmp.IsEmpty then
  begin
    RPTrateTmp   := RpTaxQueryTmp.FieldByName('RateAmnt').AsCurrency;
    end else begin
    MessageDlg('source Month not found...',mtWarning,[mbOK],0);
    exit;
  end;

  CountRQuery.Close;
  CountRQuery.ParamByName('BillMonth').Text := NxEdit3.Text;
  CountRQuery.Open;

  RateOrTmp := 'Rate' + IntTostr(CountRQuery.FieldByName('OrderR').AsInteger + 1);
  RpTaxQueryTmp.Close;
  RpTaxQueryTmp.FilterSQL := 'BillMonth like ' + quotedstr(NxEdit2.Text) +
  ' And RateOrder like '  + quotedstr(RateOrTmp);
  RpTaxQueryTmp.Open;

  if not RpTaxQueryTmp.IsEmpty  then RPTrateTmp :=  RpTaxQueryTmp.FieldByName('RateAmnt').AsCurrency;

  MyQueryTmp.Close;
  MyQueryTmp.SQL.Clear;
  MyQueryTmp.SQL.Add('Insert into rateRPTax (BillMonth,RateAmnt,RateOrder)');
  MyQueryTmp.SQL.Add(' values (:BillMonth,:RateAmnt,:RateOrder)');
  MyQueryTmp.ParamByName('BillMonth').Text  := NxEdit3.Text;
  MyQueryTmp.ParamByName('RateAmnt').Text   := FloatToStr(RPTrateTmp);
  MyQueryTmp.ParamByName('RateOrder').Text  := 'Rate' + IntTostr(CountRQuery.FieldByName('OrderR').AsInteger + 1);
  MyQueryTmp.Execute;

  RpTaxQuery.Close;
  RpTaxQuery.Open;
  MessageDlg('Copying rate done...',mtInformation,[mbOK],0);

end;

procedure TRPTaxFrm.NxButton1Click(Sender: TObject);
begin
  RpTaxQuery.Close;
  RpTaxQuery.FilterSQL := 'BillMonth like ' + quotedstr('%'+NxEdit1.Text+'%');
  RpTaxQuery.Open;
end;

procedure TRPTaxFrm.NxButton2Click(Sender: TObject);
begin
  NxHeaderPanel1.Left := 213;
  NxHeaderPanel1.top  := 122;
  NxHeaderPanel1.BringToFront;
  NxHeaderPanel1.Visible := true;
end;

procedure TRPTaxFrm.NxButton3Click(Sender: TObject);
var
  AreaT : String;
begin
  MyQueryTmp.Close;
  MyQueryTmp.SQL.Clear;
  MyQueryTmp.SQL.Add('Select * from vicinity where area like :area');
  MyQueryTmp.ParamByName('area').Text := ComboBox2.Text;
  MyQueryTmp.Open;

  if MyQueryTmp.IsEmpty then
  begin
    MessageDlg('Please use valid area code!..',mtWarning,[mbOK],0);
    exit;
  end;

  MyQueryTmp.Close;
  MyQueryTmp.SQL.Clear;
  MyQueryTmp.SQL.Add('Select * from areatax ');
  MyQueryTmp.SQL.Add('where BillMonth like :BillMonth And ');
  MyQueryTmp.SQL.Add('Area like :Area');
  MyQueryTmp.ParamByName('BillMonth').Text := Label5.Caption;
  MyQueryTmp.ParamByName('Area').Text      := ComboBox2.Text;
  MyQueryTmp.Open;

  if not MyQueryTmp.IsEmpty then
  begin
    MessageDlg('Area submitted was already in ' +
    MyQueryTmp.FieldByName('RateOrder').Text,mtWarning,[mbOK],0);
    exit;
  end;

  MyQueryTmp.Close;
  MyQueryTmp.SQL.Clear;
  MyQueryTmp.SQL.Add('insert into areatax (IdRPTax,BillMonth,Area,RateOrder)');
  MyQueryTmp.SQL.Add('values (:IdRPTax,:BillMonth,:Area,:RateOrder)');
  MyQueryTmp.ParamByName('IdRPTax').AsInteger    := IdRPTaxTmp;
  MyQueryTmp.ParamByName('BillMonth').Text       := Label5.Caption;
  MyQueryTmp.ParamByName('Area').Text            := ComboBox2.Text;
  MyQueryTmp.ParamByName('RateOrder').Text       := Label9.Caption;
  MyQueryTmp.Execute;

  MessageDlg('Area successfully submitted...',mtInformation,[mbOK],0);

  ComboBox2.Clear;
  AreaQuery.Close;
  AreaQuery.Open;

  AreaQuery.First;
  while not AreaQuery.Eof do
  begin
    AreaT := AreaQuery.FieldByName('Area').Text;

    ArAffctQuery.Close;
    ArAffctQuery.FilterSQL := 'BillMonth like ' + quotedstr(Label5.Caption) + ' And Area like ' + quotedstr(AreaT);
    ArAffctQuery.Open;

    if ArAffctQuery.IsEmpty then ComboBox2.AddItem(AreaT,Nil);
    AreaQuery.Next;
  end;

  ArAffctQuery.Close;
  ArAffctQuery.FilterSQL := 'BillMonth like ' + quotedstr(Label5.Caption) +
  ' And RateOrder like ' + quotedstr(Label9.Caption);
  ArAffctQuery.Open;

end;

procedure TRPTaxFrm.NxButton4Click(Sender: TObject);
begin
  NxHeaderPanel23.Visible := false;
end;

procedure TRPTaxFrm.NxButton5Click(Sender: TObject);
begin
  RpTaxQuery.Cancel;
  NxHeaderPanel2.Visible := false;
end;

procedure TRPTaxFrm.NxButton6Click(Sender: TObject);
begin
  close;
end;

procedure TRPTaxFrm.NxButton9Click(Sender: TObject);
begin
    NxHeaderPanel1.Visible := false;
end;

procedure TRPTaxFrm.NxEdit1Click(Sender: TObject);
begin
  NxEdit1.SelectAll;
end;

procedure TRPTaxFrm.NxLinkLabel1Click(Sender: TObject);
begin
    NxHeaderPanel1.Visible := false;
end;

procedure TRPTaxFrm.NxLinkLabel2Click(Sender: TObject);
begin
  NxHeaderPanel2.Visible := false;
end;

procedure TRPTaxFrm.NxLinkLabel31Click(Sender: TObject);
begin
  NxHeaderPanel23.Visible := false;
end;

procedure TRPTaxFrm.RemoveArea1Click(Sender: TObject);
Var
  AreaT : String;
begin
  if (MessageDlg('Remove Area: '+ ArAffctQueryArea.Text +
  '...Proceed this process?',mtConfirmation,[mbYes,mbCancel],0) = mrCancel) then  Exit;

  MyQueryTmp.Close;
  MyQueryTmp.SQL.Clear;
  MyQueryTmp.SQL.Add('Delete from AreaTax where BillMonth like :BillMonth');
  MyQueryTmp.SQL.Add(' And Area like :Area');
  MyQueryTmp.SQL.Add(' And RateOrder like :RateOrder');
  MyQueryTmp.ParamByName('BillMonth').Text := Label5.Caption;
  MyQueryTmp.ParamByName('Area').Text      := ArAffctQueryArea.Text;
  MyQueryTmp.ParamByName('RateOrder').Text := ArAffctQueryRateOrder.Text;
  MyQueryTmp.Execute;

  MessageDlg('Selected area removed..',mtWarning,[mbOK],0);

  ComboBox2.Clear;
  AreaQuery.Close;
  AreaQuery.Open;

  AreaQuery.First;
  while not AreaQuery.Eof do
  begin
    AreaT := AreaQuery.FieldByName('Area').Text;

    ArAffctQuery.Close;
    ArAffctQuery.FilterSQL := 'BillMonth like ' + quotedstr(Label5.Caption) + ' And Area like ' + quotedstr(AreaT);
    ArAffctQuery.Open;

    if ArAffctQuery.IsEmpty then ComboBox2.AddItem(AreaT,Nil);
    AreaQuery.Next;
  end;

  ArAffctQuery.Close;
  ArAffctQuery.FilterSQL := 'BillMonth like ' + quotedstr(Label5.Caption) +
  ' And RateOrder like ' + quotedstr(Label9.Caption);
  ArAffctQuery.Open;

end;

procedure TRPTaxFrm.ReprintPowerBillfromBillingArchive1Click(Sender: TObject);
var
  BMonth : String;
  AreaT  : String;
label
  Next1;
begin
  Label5.Caption := RpTaxQueryBillMonth.Text;
  Label9.Caption := RpTaxQueryRateOrder.Text;
  IdRPTaxTmp     := RpTaxQueryIdRPTax.AsInteger;

  ComboBox2.Clear;
  BMonth := RpTaxQueryBillMonth.Text;
  AreaQuery.Close;
  AreaQuery.Open;

  AreaQuery.First;
  while not AreaQuery.Eof do
  begin
    AreaT := AreaQuery.FieldByName('Area').Text;

    ArAffctQuery.Close;
    ArAffctQuery.FilterSQL := 'BillMonth like ' + quotedstr(BMonth) + ' And Area like ' + quotedstr(AreaT);
    ArAffctQuery.Open;

    if ArAffctQuery.IsEmpty then ComboBox2.AddItem(AreaT,Nil);
    AreaQuery.Next;
  end;

  //AreaTaxQuery.Close;
  //AreaTaxQuery.Open;
  ArAffctQuery.Close;
  ArAffctQuery.FilterSQL := 'BillMonth like ' + quotedstr(BMonth) +
  ' And RateOrder like ' + quotedstr(Label9.Caption);
  ArAffctQuery.Open;

  NxHeaderPanel23.Left := 170;
  NxHeaderPanel23.top  := 84;
  NxHeaderPanel23.BringToFront;
  NxHeaderPanel23.Visible := true;
end;

procedure TRPTaxFrm.SelectAffectedArea1Click(Sender: TObject);
begin
  RpTaxQuery.Open;
  RpTaxQuery.Edit;

  NxHeaderPanel2.Left := 242;
  NxHeaderPanel2.top  := 123;
  NxHeaderPanel2.BringToFront;
  NxHeaderPanel2.Visible := true;
end;

end.
