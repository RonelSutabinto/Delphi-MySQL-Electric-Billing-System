unit DisconnectionOrderFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, PDJSillyLabel, StdCtrls, PDJRotoLabel, Gradient, ExtCtrls;

type
  TDisconnectionOrderFilterForm = class(TForm)
    Panel1: TPanel;
    PDJRotoLabel1: TPDJRotoLabel;
    Label3: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Area: TEdit;
    Book: TEdit;
    BMonth: TEdit;
    Cancel: TPDJSillyLabel;
    SetFilter: TPDJSillyLabel;
    procedure CancelClick(Sender: TObject);
    procedure SetFilterClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DisconnectionOrderFilterForm: TDisconnectionOrderFilterForm;

implementation

{$R *.dfm}

procedure TDisconnectionOrderFilterForm.CancelClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TDisconnectionOrderFilterForm.SetFilterClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

end.
