unit frmFSR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ComCtrls, ExtCtrls, DB, DBAccess, MyAccess, MemDS,
  StdCtrls, NxCollection, DBCtrls, Mask, Menus, DBGrid1;

type
  TFinancialStatisticalReportConfig = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    part1: TMyTable;
    part2: TMyTable;
    part3: TMyTable;
    part4: TMyTable;
    dsPart1: TMyDataSource;
    dsPart2: TMyDataSource;
    dsPart3: TMyDataSource;
    dsPart4: TMyDataSource;
    part1idmfsrsheetdpart1: TIntegerField;
    part1ItemName: TStringField;
    part2idmfsrsheetdpart2: TIntegerField;
    part2forMo: TFloatField;
    part2prvyrDate: TFloatField;
    part3idmfsrsheetdpart3: TIntegerField;
    part3ItemName: TStringField;
    part3pvtdCurrent: TFloatField;
    part3pvtdArrear: TFloatField;
    part4idmfsrsheetdpart4: TIntegerField;
    part4current: TStringField;
    part4todate: TStringField;
    Panel2: TPanel;
    Button1: TButton;
    NxLabel1: TNxLabel;
    NxLabel2: TNxLabel;
    DBEdit1: TDBEdit;
    DBComboBox1: TDBComboBox;
    p1SaveBtn: TNxLinkLabel;
    p1CancelBtn: TNxLinkLabel;
    pEntry: TPanel;
    pPart1Entry: TPanel;
    pPart2Entry: TPanel;
    NxLabel3: TNxLabel;
    NxLabel4: TNxLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    NxLabel5: TNxLabel;
    DBEdit4: TDBEdit;
    pPart3Entry: TPanel;
    NxLabel6: TNxLabel;
    NxLabel7: TNxLabel;
    DBComboBox2: TDBComboBox;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    prevCurrent: TNxLabel;
    NxLabel9: TNxLabel;
    pPart4Entry: TPanel;
    NxLabel8: TNxLabel;
    NxLabel10: TNxLabel;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    NxLabel11: TNxLabel;
    part1Ratecode: TStringField;
    part3ratecode: TStringField;
    pmDataEditor: TPopupMenu;
    Add1: TMenuItem;
    Edit1: TMenuItem;
    Delete1: TMenuItem;
    part2ItemName: TStringField;
    part4ItemName: TStringField;
    dbgPart1: TDBGrid1;
    dbgPart2: TDBGrid1;
    dbgPart3: TDBGrid1;
    dbgPart4: TDBGrid1;
    procedure Button1Click(Sender: TObject);
    procedure p1SaveBtnClick(Sender: TObject);
    procedure p1CancelBtnClick(Sender: TObject);
    procedure Add1Click(Sender: TObject);
    procedure Delete1Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure part1AfterInsert(DataSet: TDataSet);
    procedure dsPart3StateChange(Sender: TObject);
    procedure dsPart1StateChange(Sender: TObject);
    procedure dsPart4StateChange(Sender: TObject);
    procedure dsPart2StateChange(Sender: TObject);
    procedure part1AfterEdit(DataSet: TDataSet);
  private
    { Private declarations }
    procedure detailpanelVisible(visibility : Boolean);
  public
    { Public declarations }
  end;

var
  FinancialStatisticalReportConfig: TFinancialStatisticalReportConfig;

implementation

uses Data;

{$R *.dfm}

procedure TFinancialStatisticalReportConfig.Add1Click(Sender: TObject);
begin
  Button1.Visible     := False;
  detailpanelVisible(True);
  p1SaveBtn.Visible   := True;
  p1CancelBtn.Visible := True;
  case PageControl1.ActivePageIndex of
   0: if Sender = Add1 then part1.Append else part1.Edit;
   1: if Sender = Add1 then part2.Append else part2.Edit;
   2: if Sender = Add1 then part3.Append else part3.Edit;
   3: if Sender = Add1 then part4.Append else part4.Edit;
  end;
  Panel2.Top := Button1.Top;
end;

procedure TFinancialStatisticalReportConfig.Button1Click(Sender: TObject);
begin
  p1SaveBtn.Visible := False;
  p1CancelBtn.Visible := False;
  detailpanelVisible(not Panel2.Visible);
  Panel2.Top := 424

end;

procedure TFinancialStatisticalReportConfig.Delete1Click(Sender: TObject);
begin
  case PageControl1.ActivePageIndex of
   0: part1.Delete;
   1: part2.Delete;
   2: part3.Delete;
   3: part4.Delete;
  end;
end;

procedure TFinancialStatisticalReportConfig.detailpanelVisible(visibility: Boolean);
begin
  pPart1Entry.Visible := False;
  pPart2Entry.Visible := False;
  pPart3Entry.Visible := False;
  pPart4Entry.Visible := False;
  Panel2.Visible := visibility;
  pPart1Entry.Visible := Panel2.Visible and (PageControl1.TabIndex = 0);
  pPart2Entry.Visible := Panel2.Visible and (PageControl1.TabIndex = 1);
  pPart3Entry.Visible := Panel2.Visible and (PageControl1.TabIndex = 2);
  pPart4Entry.Visible := Panel2.Visible and (PageControl1.TabIndex = 3);
end;

procedure TFinancialStatisticalReportConfig.dsPart1StateChange(Sender: TObject);
begin
  DBEdit1.ReadOnly     := dsPart1.State = dsBrowse;
  DBComboBox1.ReadOnly := dsPart1.State = dsBrowse;
end;

procedure TFinancialStatisticalReportConfig.dsPart2StateChange(Sender: TObject);
begin
  DBEdit2.ReadOnly := dsPart2.State = dsBrowse;
  DBEdit3.ReadOnly := dsPart2.State = dsBrowse;
  DBEdit4.ReadOnly := dsPart2.State = dsBrowse;
end;

procedure TFinancialStatisticalReportConfig.dsPart3StateChange(Sender: TObject);
begin
  DBEdit5.ReadOnly     := dsPart3.State = dsBrowse;
  DBComboBox2.ReadOnly := dsPart3.State = dsBrowse;
  DBEdit6.ReadOnly     := dsPart3.State = dsBrowse;
  DBEdit7.ReadOnly     := dsPart3.State = dsBrowse;
end;

procedure TFinancialStatisticalReportConfig.dsPart4StateChange(Sender: TObject);
begin
  DBEdit8.ReadOnly  := dsPart4.State = dsBrowse;
  DBEdit9.ReadOnly  := dsPart4.State = dsBrowse;
  DBEdit10.ReadOnly := dsPart4.State = dsBrowse;
end;

procedure TFinancialStatisticalReportConfig.FormShow(Sender: TObject);
begin
  PageControl1Change(Self);
end;

procedure TFinancialStatisticalReportConfig.p1CancelBtnClick(Sender: TObject);
begin
  case PageControl1.TabIndex of
   0: part1.Cancel;
   1: part2.Cancel;
   2: part3.Cancel;
   3: part4.Cancel;
  end;
  Button1.Visible      := True;
  Panel2.Visible       := False;
  PageControl1.Enabled := True;
end;

procedure TFinancialStatisticalReportConfig.p1SaveBtnClick(Sender: TObject);
begin
  case PageControl1.TabIndex of
   0: part1.post;
   1: part2.Post;
   2: part3.Post;
   3: part4.Post;
  end;
  Button1.Visible      := True;
  Panel2.Visible       := False;
  PageControl1.Enabled := True;
end;

procedure TFinancialStatisticalReportConfig.PageControl1Change(Sender: TObject);
begin
  part1.Close;
  part2.Close;
  part3.Close;
  part4.Close;
  case PageControl1.ActivePageIndex of
   0: part1.Open;
   1: part2.Open;
   2: part3.Open;
   3: part4.Open;
  end;
end;

procedure TFinancialStatisticalReportConfig.part1AfterEdit(DataSet: TDataSet);
begin
  if DataSet = part1 then DBEdit1.SetFocus;
  if DataSet = part2 then DBEdit2.SetFocus;
  if DataSet = part3 then DBEdit5.SetFocus;
  if DataSet = part4 then DBEdit8.SetFocus;
  PageControl1.Enabled := False;
end;

procedure TFinancialStatisticalReportConfig.part1AfterInsert(DataSet: TDataSet);
begin
  if DataSet = part1 then
   begin
     part1Ratecode.Text := 'R';
     DBEdit1.SetFocus;
   end;
  if DataSet = part2 then
   begin
     part2forMo.AsCurrency := 0;
     part2prvyrDate.AsCurrency := 0;
     DBEdit2.SetFocus;
   end;
  if DataSet = part3 then
   begin
     part3pvtdCurrent.AsCurrency := 0;
     part3pvtdArrear.AsCurrency := 0;
     part3ratecode.Text := 'R';
     DBEdit5.SetFocus;
   end;
  if DataSet = part4 then
   begin
     part4current.Text := '';
     part4todate.Text := '';
     DBEdit8.SetFocus;
   end;
  PageControl1.Enabled := False;
end;

end.
