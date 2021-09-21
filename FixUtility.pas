unit FixUtility;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables;

type
  TFixUtilityForm = class(TForm)
    Master: TTable;
    AR: TTable;
    MasterSource: TDataSource;
    ARSource: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FixUtilityForm: TFixUtilityForm;

implementation

{$R *.dfm}

procedure TFixUtilityForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
   FixUtilityForm := Nil;
end;

end.
