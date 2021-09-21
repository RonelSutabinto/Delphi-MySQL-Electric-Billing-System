unit AreaRouteRecord;

interface

uses
  Windows,
  Messages,
  SysUtils,
  Variants,
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,
  StdCtrls,
  Mask,
  DBCtrls,
  ExtCtrls,
  Buttons,
  PDJSillyLabel,
  DsFancyButton,
  NxCollection;

type
  TAreaRouteRecordForm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Save: TNxButton;
    Cancel: TNxButton;
    VolgaDBEdit1: TDBEdit;
    VolgaDBEdit2: TDBEdit;
    VolgaDBEdit3: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SaveClick(Sender: TObject);
    procedure CancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AreaRouteRecordForm: TAreaRouteRecordForm;

implementation

uses Data;

{$R *.dfm}

procedure TAreaRouteRecordForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  AreaRouteRecordForm := Nil;
end;

procedure TAreaRouteRecordForm.SaveClick(Sender: TObject);
begin
   BillingData.Vicinity.Post;
   Close;
end;

procedure TAreaRouteRecordForm.CancelClick(Sender: TObject);
begin
   BillingData.Vicinity.Cancel;
   Close;
end;


end.
