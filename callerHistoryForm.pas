unit callerHistoryForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, DBAccess, MyAccess, MemDS,
  AdvPanel, Vcl.Grids, AdvObj, BaseGrid, AdvGrid, DBAdvGrid, AdvSmoothButton,
  AdvSmoothLabel, Vcl.ExtCtrls;

type
  TcallerHistoryFrm = class(TForm)
    AdvPanel1: TAdvPanel;
    number_lb2: TAdvSmoothLabel;
    AdvSmoothButton1: TAdvSmoothButton;
    DBAdvGrid1: TDBAdvGrid;
    AdvPanelStyler1: TAdvPanelStyler;
    manageOutQ: TMyQuery;
    manageOutQentry: TIntegerField;
    manageOutQtype: TStringField;
    manageOutQnumber: TIntegerField;
    manageOutQdate: TDateField;
    manageOutQtime: TTimeField;
    manageOutQcode: TStringField;
    manageOutQqueid: TIntegerField;
    manageOutQgroupno: TIntegerField;
    manageOutQexecutedby: TStringField;
    manageOutQDepartment: TStringField;
    manageOutQuserid: TStringField;
    manageOutQcounter: TStringField;
    manageOutQqNumber: TStringField;
    manageOutQisbeep: TBooleanField;
    manageoutDS: TMyDataSource;
    procedure FormShow(Sender: TObject);
    procedure AdvSmoothButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  callerHistoryFrm: TcallerHistoryFrm;

implementation

{$R *.dfm}

uses Data;

procedure TcallerHistoryFrm.AdvSmoothButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TcallerHistoryFrm.FormShow(Sender: TObject);
begin
  manageOutQ.Close;
  manageOutQ.Open;
end;

end.
