unit FFInterface;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, NxCollection, NxEdit, ExtCtrls;

type
  TFFForm = class(TForm)
    Panel1: TPanel;
    NxEdit1: TNxEdit;
    NxLabel1: TNxLabel;
    NxLabel2: TNxLabel;
    NxComboBox1: TNxComboBox;
    RadioGroup1: TRadioGroup;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FFForm: TFFForm;

implementation

{$R *.dfm}

end.
