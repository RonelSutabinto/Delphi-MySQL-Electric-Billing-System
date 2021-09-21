unit SystemLossAging;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NxCollection, StdCtrls, NxEdit, DB, MemDS, DBAccess, MyAccess;

type
  TSystemLossAgingForm = class(TForm)
    NxLabel1: TNxLabel;
    NxDatePicker1: TNxDatePicker;
    NxMemo1: TNxMemo;
    NxButton1: TNxButton;
    NxButton2: TNxButton;
    SysLossAge: TMyQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SystemLossAgingForm: TSystemLossAgingForm;

implementation

{$R *.dfm}

end.
