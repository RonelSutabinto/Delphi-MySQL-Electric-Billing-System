unit Collector;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBCtrls, Grids, DBGrids, ExtCtrls, 
  PDJSillyLabel, DsFancyButton, CRGrid, DB, MemDS, DBAccess, MyAccess,
  NxCollection;

type
  TCollectorForm = class(TForm)
    Panel1: TPanel;
    DBGrid1: TCRDBGrid;
    PDJSillyLabel2: TNxButton;
    PDJSillyLabel3: TNxButton;
    PDJSillyLabel1: TNxButton;
    CollectorCode: TLabeledEdit;
    Bevel1: TBevel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure PDJSillyLabel1Click(Sender: TObject);
    procedure PDJSillyLabel2Click(Sender: TObject);
    procedure PDJSillyLabel3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CollectorForm: TCollectorForm;

implementation

uses Data, CollectorRecord;

{$R *.dfm}

procedure TCollectorForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   BillingData.Collector.Active := False;
   Action := caFree;
   CollectorForm := Nil;
end;

procedure TCollectorForm.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
 If Key = '+' then
  begin
    If not assigned(CollectorRecordForm) then
    CollectorRecordForm := TCollectorRecordForm.Create(Application);
    CollectorRecordForm.EditCollector.Close;
    CollectorRecordForm.EditCollector.MacroByName('collectorcode').Active := False;
    CollectorRecordForm.EditCollector.Open;
    CollectorRecordForm.Show;
    CollectorRecordForm.EditCollector.Append;
  end;

 If Key = #13 then
  begin
    If not assigned(CollectorRecordForm) then
    CollectorRecordForm := TCollectorRecordForm.Create(Application);
    CollectorRecordForm.EditCollector.Close;
    CollectorRecordForm.EditCollector.MacroByName('collectorcode').Active := true;
    CollectorRecordForm.EditCollector.ParamByName('CollectorCode').Text := BillingData.CollectorCollectorCode.Text;
    CollectorRecordForm.EditCollector.Open;
    CollectorRecordForm.EditCollector.Edit;
    With CollectorRecordForm do
      begin
        UserCode.Text             := EditCollectorCollectorCode.Text;
        UserName.Text             := EditCollectorName.Text;
        Password.Text             := EditCollectorPassword.Text;
        UserRestriction.ItemIndex := EditCollectorUserType.AsInteger-1;
        ORCount.Text              := EditCollectorORCount.Text;
        AccountCode.Text          := EditCollectorAccountCode.Text; 
      end;
    CollectorRecordForm.Show;
  end;
end;

procedure TCollectorForm.PDJSillyLabel1Click(Sender: TObject);
begin
  Close;
end;

procedure TCollectorForm.PDJSillyLabel2Click(Sender: TObject);
begin
   With BillingData do
    begin
     Collector.Close;
     Collector.SQL.Clear;
     Collector.SQL.Add('select * from collector where collectorcode like :collectorcode');
     Collector.ParamByName('collectorcode').Text := '%'+collectorcode.Text;
     Collector.Open;
    end;
end;

procedure TCollectorForm.PDJSillyLabel3Click(Sender: TObject);
begin
   With BillingData do
    begin
     Collector.Close;
     Collector.SQL.Clear;
     Collector.SQL.Add('select * from collector');
     Collector.Open;
    end;
end;


procedure TCollectorForm.FormShow(Sender: TObject);
Var
AddColumn : TMyQuery;

begin
  AddColumn := TMyQuery.Create(self);
  AddColumn.Connection := BillingData.MyConnection1;
  AddColumn.SQL.Add('ALTER TABLE `zaneco`.`collector` ADD COLUMN `AccountCode` VARCHAR(15) AFTER `ORCount`');

  Try
    AddColumn.Execute;
  Except
  end;
end;

end.
