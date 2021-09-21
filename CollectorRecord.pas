unit CollectorRecord;

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
  ExtCtrls,
  StdCtrls,
  Buttons,
  Mask,
  DBCtrls,
  PDJSillyLabel,
  DsFancyButton,
  ExtDlgs,
  DB,
  MemDS,
  DBAccess,
  MyAccess,
  NxCollection,
  NxEdit,
  Grids,
  DBGrids,
  CRGrid;

type
  TCollectorRecordForm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    UserCode: TNxEdit;
    Label2: TLabel;
    UserName: TNxEdit;
    PDJSillyLabel1: TNxButton;
    PDJSillyLabel2: TNxButton;
    Label3: TLabel;
    ConfitmPassWord: TNxEdit;
    Label4: TLabel;
    Bevel1: TBevel;
    UserRestriction: TNxComboBox;
    Label5: TLabel;
    DBImage1: TDBImage;
    OpenPictureDialog1: TOpenPictureDialog;
    EditCollector: TMyQuery;
    EditCollectorEntry: TIntegerField;
    EditCollectorCollectorCode: TStringField;
    EditCollectorPassword: TStringField;
    EditCollectorUserType: TStringField;
    EditCollectorPicture: TBlobField;
    EditCollectorName: TStringField;
    dseditcollector: TDataSource;
    Password: TNxEdit;
    ORCount: TNxEdit;
    Label6: TLabel;
    EditCollectorORCount: TLargeintField;
    EditCollectorAccountCode: TStringField;
    AccountCode: TNxEdit;
    NxLinkLabel1: TNxLinkLabel;
    Bank: TMyQuery;
    BankCode: TStringField;
    BankDescription: TStringField;
    dsBank: TMyDataSource;
    BankPanel: TNxHeaderPanel;
    NxLinkLabel11: TNxLinkLabel;
    NxLinkLabel12: TNxLinkLabel;
    CRDBGrid3: TCRDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PDJSillyLabel1Click(Sender: TObject);
    procedure PDJSillyLabel2Click(Sender: TObject);
    procedure DBImage1Click(Sender: TObject);
    procedure UserCodeKeyPress(Sender: TObject; var Key: Char);
    procedure NxLinkLabel1Click(Sender: TObject);
    procedure NxLinkLabel11Click(Sender: TObject);
    procedure NxLinkLabel12Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CollectorRecordForm: TCollectorRecordForm;

implementation

uses Data;

{$R *.dfm}

procedure TCollectorRecordForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  CollectorRecordForm := Nil;
end;


procedure TCollectorRecordForm.PDJSillyLabel1Click(Sender: TObject);
begin
  if Password.Text <> ConfitmPassWord.Text then
  begin
    MessageDlg('You typed two different passwords.'+#13+
      'Please input two identical passwords.',mtError,[mbOk],0);
    ConfitmPassWord.Text := '';
    ConfitmPassWord.SetFocus;
    Exit;
  end;

  if Password.Text = '' then
  begin
   MessageDlg('You are required to enter a password..', mtError, [mbOK], 0);
   Password.SetFocus;
   Exit;
  end;

  EditCollectorCollectorCode.Text  := UserCode.Text;
  EditCollectorName.Text           := UserName.Text;
  EditCollectorName.Text           := UserName.Text;
  EditCollectorPassword.Text       := Password.Text;
  EditCollectorUserType.AsInteger  := UserRestriction.ItemIndex+1;
  EditCollectorORCount.Text        := ORCount.Text;
  EditCollectorAccountCode.Text    := AccountCode.Text;
  EditCollector.Post;
  Close;
end;

procedure TCollectorRecordForm.PDJSillyLabel2Click(Sender: TObject);
begin
  EditCollector.Cancel;
  Close;
end;

procedure TCollectorRecordForm.DBImage1Click(Sender: TObject);
begin
  If OpenPictureDialog1.Execute then
  begin
    EditCollectorPicture.LoadFromFile(OpenPictureDialog1.Filename);
  end;
end;

procedure TCollectorRecordForm.UserCodeKeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 then
   begin
     Perform(CM_DIALOGKEY,VK_TAB,0);
     Key := #0;
   end;
end;

procedure TCollectorRecordForm.NxLinkLabel1Click(Sender: TObject);
begin
  bank.Open;
  BankPanel.Left := 86;
  BankPanel.Top  := 27;
  BankPanel.BringToFront;
  BankPanel.Visible := True;
  CRDBGrid3.SetFocus;
end;

procedure TCollectorRecordForm.NxLinkLabel11Click(Sender: TObject);
begin
  AccountCode.Text := BankCode.Text;
  BankPanel.Visible := False;
  Bank.Close;
end;

procedure TCollectorRecordForm.NxLinkLabel12Click(Sender: TObject);
begin
  BankPanel.Visible := False;
  Bank.Close;
end;

end.
