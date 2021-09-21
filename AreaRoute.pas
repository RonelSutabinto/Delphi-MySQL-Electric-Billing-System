unit AreaRoute;

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
  Buttons,
  DBCtrls,
  Grids,
  DBGrids,
  ExtCtrls,
  NxCollection, DBGrid1;

type
  TAreaRouteForm = class(TForm)
    Panel1: TPanel;
    PDJSillyLabel1: TNxButton;
    Area: TLabeledEdit;
    Book: TLabeledEdit;
    Bevel1: TBevel;
    PDJSillyLabel2: TNxButton;
    PDJSillyLabel3: TNxButton;
    DBGrid1: TDBGrid1;
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PDJSillyLabel1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PDJSillyLabel2Click(Sender: TObject);
    procedure PDJSillyLabel3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AreaRouteForm: TAreaRouteForm;

implementation

uses Data, AreaRouteRecord;

{$R *.dfm}

procedure TAreaRouteForm.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  If Key in ['+',#13] then
   begin
     Case Key of
     '+' : BillingData.Vicinity.Append;
     #13 : BillingData.Vicinity.Edit;
     end;
    If not assigned(AreaRouteRecordForm) then
    AreaRouteRecordForm := TAreaRouteRecordForm.Create(Application);
    AreaRouteRecordForm.Show;
   end;
end;

procedure TAreaRouteForm.DBGrid1DblClick(Sender: TObject);
begin
   BillingData.Vicinity.Edit;
    If not assigned(AreaRouteRecordForm) then
    AreaRouteRecordForm := TAreaRouteRecordForm.Create(Application);
    AreaRouteRecordForm.Show;
end;

procedure TAreaRouteForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  BillingData.Vicinity.Active := False;
  Action := caFree;
  AreaRouteForm := Nil;
end;

procedure TAreaRouteForm.PDJSillyLabel1Click(Sender: TObject);
begin
  Close;
end;

procedure TAreaRouteForm.FormShow(Sender: TObject);
begin
   With BillingData do
    begin
      Vicinity.Open;
    end;
end;

procedure TAreaRouteForm.PDJSillyLabel2Click(Sender: TObject);
begin
   With BillingData do
    begin
     Vicinity.Close;
     Vicinity.SQL.Clear;
     Vicinity.SQL.Add('select * from vicinity where area like :area and book like :book');
     Vicinity.ParamByName('area').Text := '%'+Area.Text;
     Vicinity.ParamByName('book').Text := '%'+Book.Text;
     Vicinity.Open;
    end;
end;

procedure TAreaRouteForm.PDJSillyLabel3Click(Sender: TObject);
begin
   With BillingData do
    begin
     Vicinity.Close;
     Vicinity.SQL.Clear;
     Vicinity.SQL.Add('select * from vicinity');
     Vicinity.Open;
    end;
end;

end.
