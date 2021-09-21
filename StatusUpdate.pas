unit StatusUpdate;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, Buttons, DBCtrls, Mask;

type
  TBillingStatusUpdateForm = class(TForm)
    Panel1: TPanel;
    ProgressBar1: TProgressBar;
    Label1: TLabel;
    Bevel1: TBevel;
    Animate1: TAnimate;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BillingStatusUpdateForm: TBillingStatusUpdateForm;

implementation

{$R *.dfm}

procedure TBillingStatusUpdateForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Animate1.Active := False;
  Action := caFree;
  BillingStatusUpdateForm := Nil;
end;

procedure TBillingStatusUpdateForm.FormShow(Sender: TObject);
begin
  Animate1.Active := True;
end;

end.
