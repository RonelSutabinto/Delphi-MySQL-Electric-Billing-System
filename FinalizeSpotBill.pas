unit FinalizeSpotBill;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, AdvGroupBox, pngimage, NxCollection, Gauges,
  Grids, DBGrids, DBGrid1, AdvEdit, AdvEdBtn, PlannerDatePicker, Mask,
  AdvSmoothEdit, AdvSmoothEditButton, AdvSmoothDatePicker, DB, MemDS, DBAccess,
  MyAccess, NxEdit;

type
  TUnpostedSpotBill = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    Label1: TLabel;
    AdvGroupBox1: TAdvGroupBox;
    AdvGroupBox2: TAdvGroupBox;
    DBGrid1: TDBGrid1;
    Gauge2: TGauge;
    PDJSillyLabel14: TNxButton;
    PDJSillyLabel15: TNxButton;
    Label2: TLabel;
    SpotBillQuery: TMyQuery;
    NxEdit1: TNxEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UnpostedSpotBill: TUnpostedSpotBill;

implementation

uses Data;

{$R *.dfm}

end.
