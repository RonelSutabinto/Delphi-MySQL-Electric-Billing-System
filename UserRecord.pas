unit UserRecord;

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
  Mask,
  ExtCtrls,
  PDJSillyLabel,
  DB,
  DsFancyButton,
  ExtDlgs,
  MemDS,
  DBAccess,
  MyAccess,
  NxCollection;

type
  TUserRecordForm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    PDJSillyLabel1: TNxButton;
    PDJSillyLabel2: TNxButton;
    Edit1: TDBEdit;
    Label4: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Edit4: TDBEdit;
    Edit5: TDBEdit;
    Edit6: TDBEdit;
    Label7: TLabel;
    OpenPictureDialog1: TOpenPictureDialog;
    DBImage1: TDBImage;
    EditUser: TMyQuery;
    DSEditUser: TDataSource;
    EditUserUserName: TStringField;
    EditUserUserID: TStringField;
    EditUserUserPic: TBlobField;
    EditUserBillCode: TStringField;
    EditUserBillNumber: TIntegerField;
    EditUserUserRestriction: TStringField;
    EditUserPosition: TStringField;
    VolgaDBEdit1: TDBEdit;
    Label8: TLabel;
    ComboBox1: TComboBox;
    MD5Update: TMyQuery;
    EditUserpass: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PDJSillyLabel1Click(Sender: TObject);
    procedure PDJSillyLabel2Click(Sender: TObject);
    procedure DBImage1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UserRecordForm: TUserRecordForm;

implementation

uses User, Data;

{$R *.dfm}

procedure TUserRecordForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  UserRecordForm := Nil;
end;

procedure TUserRecordForm.PDJSillyLabel1Click(Sender: TObject);
begin
 If not (edit2.Text = edit3.Text) then
  begin
   MessageDlg('Confirm password invalid....', mtError, [mbOK], 0);
   exit;
  end;

 EditUserpass.Text := Edit2.Text;
 EditUserUserRestriction.Text := ComboBox1.Text;

 EditUser.Post;

 MD5Update.ParamByName('username').Text := EditUserUserName.Text;
 MD5Update.Execute;

 EditUser.Close;
 Close;
end;

procedure TUserRecordForm.PDJSillyLabel2Click(Sender: TObject);
begin
 EditUser.Cancel;
 Close;
end;

procedure TUserRecordForm.DBImage1Click(Sender: TObject);
begin
  If OpenPictureDialog1.Execute then
  begin
    EditUserUserPic.LoadFromFile(OpenPictureDialog1.Filename);
  end;
end;

procedure TUserRecordForm.FormShow(Sender: TObject);
begin
  Edit2.Text     := EditUserpass.Text;
  ComboBox1.Text := EditUserUserRestriction.Text;
end;

end.
