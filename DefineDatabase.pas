unit DefineDatabase;

interface

uses
  Windows, Messages, Classes, SysUtils, Graphics, Controls, StdCtrls, Forms,
  Dialogs, DBCtrls, DB, ExtCtrls, Mask, Buttons, Grids, DBGrids, Gradient,
  PDJSillyLabel, VolDBEdit, VolDBGrid, PDJRotoLabel, DCChoice;

type
  TSelectDatabaseForm = class(TForm)
    Panel1: TPanel;
    gradient1: TGradient;
    DBGrid1: TDBGrid;
    DBEdit1: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PDJSillyLabel2Click(Sender: TObject);
    procedure PDJSillyLabel1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  SelectDatabaseForm: TSelectDatabaseForm;

implementation

uses BillMenu, Data;

{$R *.DFM}

procedure TSelectDatabaseForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  SelectDatabaseForm := Nil;
end;

end.
