unit PrintAccountGroup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, PDJSillyLabel, DBTables;

type
  TPrintAccountGroupForm = class(TForm)
    Label1: TLabel;
    BillMonth: TEdit;
    Print: TPDJSillyLabel;
    Cancel: TPDJSillyLabel;
    procedure CancelClick(Sender: TObject);
    procedure PrintClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PrintAccountGroupForm: TPrintAccountGroupForm;

implementation

uses AccountGroups;

{$R *.dfm}

procedure TPrintAccountGroupForm.CancelClick(Sender: TObject);
begin
  Close;
end;

procedure TPrintAccountGroupForm.PrintClick(Sender: TObject);
begin
  AccountGroupsForm.AccountGroups.Filter := 'BillMonth = ' + QuotedStr(BillMonth.Text);
  AccountGroupsForm.AccountGroups.Filtered := True;
  AccountGroupsForm.PrintReport;
end;

end.
