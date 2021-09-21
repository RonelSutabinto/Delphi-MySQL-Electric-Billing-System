unit Adjustment;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtCtrls, DBCtrls, StdCtrls, Grids, DBGrids, Buttons,
  Gradient, BarMenus, PDJSillyLabel, Mask, VolDBEdit, VolDBGrid;

type
  TAdjustmentForm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    AccountNumber: TDBText;
    Name: TDBText;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    BMonth: TDBText;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Label1: TLabel;
    Label5: TLabel;
    AsBilled: TDBText;
    ShouldBeBilled: TDBText;
    Label6: TLabel;
    AdjustmentDate: TDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Exit1Click(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AdjustmentForm: TAdjustmentForm;

implementation

uses Data, StatusUpdate, AdjustmentRecord;

{$R *.dfm}

procedure TAdjustmentForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  AdjustmentForm := Nil;

  BillingData.Master.Active      := False;
  BillingData.AR.Active          := False;
  BillingData.Adj.Active         := False;
  BillingData.MRate.Active       := False;
end;

procedure TAdjustmentForm.Exit1Click(Sender: TObject);
begin
  Close;
end;

procedure TAdjustmentForm.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  If Key='+' then
    begin
     With BillingData do
      begin
       Adj.Append;
       If not assigned(AdjustmentRecordForm) then
       AdjustmentRecordForm := TAdjustmentRecordForm.Create(Application);
       AdjustmentRecordForm.Show;
      end;
    end;

  If Key=#13 then
    begin
     With BillingData do
      begin
       Adj.Edit;
       If not assigned(AdjustmentRecordForm) then
       AdjustmentRecordForm := TAdjustmentRecordForm.Create(Application);
       AdjustmentRecordForm.Show;
      end;
    end;
end;

end.
