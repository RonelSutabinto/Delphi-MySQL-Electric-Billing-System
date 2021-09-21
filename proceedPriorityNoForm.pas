unit proceedPriorityNoForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, DBAccess, MyAccess, MemDS,
  Vcl.Grids, AdvObj, BaseGrid, AdvGrid, DBAdvGrid, Vcl.StdCtrls, AdvGroupBox,
  AdvOfficeButtons, AdvSmoothButton, Vcl.ExtCtrls, AdvPanel, AdvSmoothLabel;

type
  TproceedPriorityFrm = class(TForm)
    AdvSmoothLabel2: TAdvSmoothLabel;
    AdvPanel1: TAdvPanel;
    AdvSmoothLabel1: TAdvSmoothLabel;
    AdvPanel2: TAdvPanel;
    number_lb2: TAdvSmoothLabel;
    AdvSmoothButton1: TAdvSmoothButton;
    AdvSmoothButton2: TAdvSmoothButton;
    AdvOfficeRadioGroup1: TAdvOfficeRadioGroup;
    DBAdvGrid2: TDBAdvGrid;
    DBAdvGrid1: TDBAdvGrid;
    manageoutQ: TMyQuery;
    manageoutQentry: TIntegerField;
    manageoutQtype: TStringField;
    manageoutQnumber: TIntegerField;
    manageoutQdate: TDateField;
    manageoutQtime: TTimeField;
    manageoutQcode: TStringField;
    manageoutQqueid: TIntegerField;
    manageoutQgroupno: TIntegerField;
    manageoutQexecutedby: TStringField;
    manageoutQDepartment: TStringField;
    manageoutQuserid: TStringField;
    manageoutQcounter: TStringField;
    manageoutQisbeep: TBooleanField;
    manageoutQnumberC: TStringField;
    manageoutDS: TMyDataSource;
    insertQueQ: TMyQuery;
    queQ: TMyQuery;
    queQqueID: TIntegerField;
    queQtype: TStringField;
    queQnumber: TIntegerField;
    queQdate: TDateField;
    queQtime: TTimeField;
    queQcode: TStringField;
    queQgroupno: TIntegerField;
    queQuser: TStringField;
    queQnumberC: TStringField;
    queDS: TMyDataSource;
    proccedHistoryQ: TMyQuery;
    updateManageoutQ: TMyQuery;
    manageoutQidIn: TIntegerField;
    procedure AdvOfficeRadioGroup1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure proceedto(grpNo : Integer;optn,typePri :String);
    procedure AdvSmoothButton2Click(Sender: TObject);
    procedure AdvSmoothButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  proceedPriorityFrm: TproceedPriorityFrm;

implementation

{$R *.dfm}

uses Data, intro;

procedure TproceedPriorityFrm.AdvOfficeRadioGroup1Click(Sender: TObject);
var
 grpNo :integer;
 typeStr :String;
begin
  case AdvOfficeRadioGroup1.ItemIndex of
    0:begin
      grpNo   := 2;
      typeStr := 'CAS'
    end;
    1:begin
      grpNo   := 3;
      typeStr := 'RP'
    end;
    2:Begin
      grpNo   := 4;
      typeStr := 'SP'
    End;
    3:Begin
      grpNo   := 1;
      typeStr := 'NA'
    End;
    4:Begin
      grpNo   := 1;
      typeStr := 'CC'
    End;
    5:Begin
      grpNo   := 1;
      typeStr := 'RD'
    End;
  end;

  queQ.Close;
  queQ.ParamByName('user').Text         := 'Billing'+IntroForm.Userscounter.Text+' '+IntroForm.UsersUserName.Text;
  queQ.ParamByName('typePrimary').Text  := typeStr;
  queQ.Open;

end;

procedure TproceedPriorityFrm.AdvSmoothButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TproceedPriorityFrm.AdvSmoothButton2Click(Sender: TObject);
var
 grpNo :integer;
 optn  : String;
 typeP : String;
begin

   case AdvOfficeRadioGroup1.ItemIndex of
    0:begin
      grpNo   := 2;
       optn   := 'Cashier';
      typeP   := 'CAS'
    end;
    1:begin
      grpNo   := 3;
       optn   := 'Teller';
      typeP   := 'RP'
    end;
    2:Begin
      grpNo   := 4;
      optn    := 'Senior Citizen Teller';
      typeP   := 'SP'
    End;
    3:Begin
      grpNo   := 1;
      optn    := 'ISD New Applicant';
      typeP   := 'NA'
    End;
    4:Begin
      grpNo   := 1;
      optn    := 'ISD Con. Complaint';
      typeP   := 'CC'
    End;
    5:Begin
      grpNo   := 1;
      optn    := 'ISD Reco/Disco';
      typeP   := 'RD'
    End;
  end;
  proceedto(grpNo,optn,typeP);
end;

procedure TproceedPriorityFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  proceedPriorityFrm := Nil;
end;

procedure TproceedPriorityFrm.FormShow(Sender: TObject);
var
 grpNo :integer;
 typeStr :String;
begin
  manageoutQ.Close;
  manageoutQ.ParamByName('depart').Text  := 'Billing';
  //manageoutQ.ParamByName('id').Text      := 'Billing'+IntroForm.Userscounter.Text+' '+IntroForm.UsersUserName.Text;
  manageoutQ.Open;

   case AdvOfficeRadioGroup1.ItemIndex of
    0:begin
      grpNo   := 2;
      typeStr := 'CAS'
    end;
    1:begin
      grpNo   := 3;
      typeStr := 'RP'
    end;
    2:Begin
      grpNo   := 4;
      typeStr := 'SP'
    End;
    3:Begin
      grpNo   := 1;
      typeStr := 'NA'
    End;
    4:Begin
      grpNo   := 1;
      typeStr := 'CC'
    End;
    5:Begin
      grpNo   := 1;
      typeStr := 'RD'
    End;
  end;

  queQ.Close;
  queQ.ParamByName('user').Text             := 'Billing'+IntroForm.Userscounter.Text+' '+IntroForm.UsersUserName.Text;
  queQ.ParamByName('typePrimary').Text      := typeStr;
  queQ.Open;
end;
procedure TproceedPriorityFrm.proceedto(grpNo : Integer;optn,typePri :String);
begin
   if (MessageDlg('Consumer''s number: '+manageoutQtype.Text+ manageoutQnumber.Text+#13
      +'Area you sure, you want to proceed this number to the '+optn+'?', mtConfirmation, [mbYes, mbNo], 0) = mrNo) then exit;

  proccedHistoryQ.ParamByName('type').Text          := manageoutQtype.Text;
  proccedHistoryQ.ParamByName('number').Text        := manageoutQnumber.Text;
  proccedHistoryQ.ParamByName('date').AsDate        := manageoutQdate.AsDateTime;
  proccedHistoryQ.ParamByName('time').AsDateTime    := now; //manageoutQtime.AsDateTime;
  proccedHistoryQ.ParamByName('code').Text          := manageoutQcode.Text;
  proccedHistoryQ.ParamByName('groupno').AsInteger  := grpNo;
  proccedHistoryQ.ParamByName('user').Text          := 'Billing'+IntroForm.Userscounter.Text+' '+IntroForm.UsersUserName.Text;
  proccedHistoryQ.ParamByName('typePrimary').Text   := typePri;
  proccedHistoryQ.Execute;


  insertQueQ.ParamByName('type').Text          := manageoutQtype.Text;
  insertQueQ.ParamByName('number').Text        := manageoutQnumber.Text;
  insertQueQ.ParamByName('date').AsDate        := manageoutQdate.AsDateTime;
  insertQueQ.ParamByName('time').AsDateTime    := now;//manageoutQtime.AsDateTime;
  insertQueQ.ParamByName('code').Text          := manageoutQcode.Text;
  insertQueQ.ParamByName('groupno').AsInteger  := grpNo;
  insertQueQ.ParamByName('user').Text          := 'Billing'+IntroForm.Userscounter.Text+' '+IntroForm.UsersUserName.Text;
  insertQueQ.ParamByName('typePrimary').Text   := typePri;
  insertQueQ.ParamByName('idIn').AsInteger     := manageoutQidIn.AsInteger;
  insertQueQ.Execute;


  updateManageoutQ.ParamByName('Department').Text := typePri;
  updateManageoutQ.ParamByName('entry').Text      := manageoutQentry.Text;
  updateManageoutQ.Execute;
  manageoutQ.Refresh;


  queQ.Close;
  queQ.ParamByName('user').Text         := 'Billing'+IntroForm.Userscounter.Text+' '+IntroForm.UsersUserName.Text;
  queQ.ParamByName('typePrimary').Text  := typePri;
  queQ.Open;

end;
end.
