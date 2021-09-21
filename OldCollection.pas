unit OldCollection;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtCtrls, DBCtrls, StdCtrls, Grids, DBGrids, Buttons,
  Gradient, BarMenus, DCChoice, PDJSillyLabel, Mask, VolDBEdit, VolDBGrid;

type
  TOldCollectionForm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    ORNumber: TDBText;
    AccountNumber: TDBText;
    Name: TDBText;
    Area: TDBText;
    Book: TDBText;
    Sequence: TDBText;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    BcBarMainMenu1: TBcBarMainMenu;
    Transactions1: TMenuItem;
    Search1: TMenuItem;
    Exit1: TMenuItem;
    Gradient1: TGradient;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Exit1Click(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OldCollectionForm: TOldCollectionForm;

implementation

uses Data, CollectionRecord, Collection;

{$R *.dfm}

procedure TOldCollectionForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  CollectionForm := Nil;
  BillingData.Master.Active          := False;
  BillingData.AR.Active              := False;
  BillingData.Collection.Active      := False;
  BillingData.Collector.Active       := False;
end;

procedure TOldCollectionForm.Exit1Click(Sender: TObject);
begin
  Close;
end;

procedure TOldCollectionForm.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  If Key=#13 then
    begin
     With BillingData do
      begin
       Collection.Edit;
       If not assigned(CollectionRecordForm) then
       CollectionRecordForm := TCollectionRecordForm.Create(Application);
       CollectionRecordForm.Show;
      end;
    end;
end;

end.
