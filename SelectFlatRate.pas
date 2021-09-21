unit SelectFlatRate;

interface

uses
  Windows, Messages, Classes, SysUtils, Graphics, Controls, StdCtrls, Forms,
  Dialogs, DBCtrls, DB, DBGrids, Buttons, Grids, ExtCtrls, PDJSillyLabel,
  DsFancyButton, CRGrid;

type
  TSelectFlatRateUnitForm = class(TForm)
    DBGrid1: TCRDBGrid;
    Panel2: TPanel;
    PDJSillyLabel1: TDsFancyButton;
    PDJSillyLabel2: TDsFancyButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PDJSillyLabel1Click(Sender: TObject);
    procedure PDJSillyLabel2Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  SelectFlatRateUnitForm: TSelectFlatRateUnitForm;

implementation

uses Data;

{$R *.DFM}

procedure TSelectFlatRateUnitForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;


procedure TSelectFlatRateUnitForm.PDJSillyLabel1Click(Sender: TObject);
begin
  With BillingData do
   begin
    FlatRateUnitCode.Text                  := FlatRateIndexCode.Text;
    FlatRateDescription.Text               := FlatRateIndexDescription.Text;
    FlatRateKilowattHourPerUnit.AsCurrency := FlatRateIndexKilowattHour.AsCurrency;
   end;
  Close;
end;

procedure TSelectFlatRateUnitForm.PDJSillyLabel2Click(Sender: TObject);
begin
  Close;
end;

end.
