unit ContactForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, NxCollection, Vcl.Mask,
  Vcl.DBCtrls, Data.DB, MemDS, DBAccess, MyAccess;

type
  TcontactFrm = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    NxButton19: TNxButton;
    DBEdit1: TDBEdit;
    cotactQ: TMyQuery;
    contactDS: TMyDataSource;
    procedure FormShow(Sender: TObject);
    procedure NxButton19Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  contactFrm: TcontactFrm;

implementation

{$R *.dfm}

uses Data;

procedure TcontactFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  cotactQ.Cancel;
end;

procedure TcontactFrm.FormShow(Sender: TObject);
begin
 cotactQ.Close;
 cotactQ.Open;
 cotactQ.Edit;
end;

procedure TcontactFrm.NxButton19Click(Sender: TObject);
begin
try
  cotactQ.post;
  ShowMessage('ZANECO office contact number successfully saved...');
  close;
except
end;

end;

end.
