unit PriorityNumberFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvSmoothButton, AdvSmoothLabel,
  Vcl.ExtCtrls, AdvPanel, Vcl.StdCtrls;

type
  TpriorityNoFrm = class(TForm)
    AdvPanel1: TAdvPanel;
    AdvPanel2: TAdvPanel;
    number_lb2: TAdvSmoothLabel;
    AdvSmoothButton4: TAdvSmoothButton;
    AdvSmoothButton5: TAdvSmoothButton;
    AdvSmoothButton6: TAdvSmoothButton;
    AdvSmoothButton7: TAdvSmoothButton;
    ComboBox1: TComboBox;
    Label1: TLabel;
    AdvSmoothButton1: TAdvSmoothButton;
    procedure AdvSmoothButton5Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AdvSmoothButton4Click(Sender: TObject);
    procedure AdvSmoothButton7Click(Sender: TObject);
    procedure AdvSmoothButton6Click(Sender: TObject);
    procedure AdvSmoothButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  priorityNoFrm: TpriorityNoFrm;

implementation

{$R *.dfm}

uses proceedPriorityNoForm, callerNoForm, callerHistoryForm, Data;

procedure TpriorityNoFrm.AdvSmoothButton1Click(Sender: TObject);
begin

   With BillingData do
    begin
      case ComboBox1.ItemIndex of
        0:begin
          try
            callerServer.Connected    := false;
            callerServer.Server       := 'server';
            callerServer.Connected    := true;

            number_lb2.Caption.Text := 'Consumer Priority Number (Dipolog Main Office).';
            showmessage('Queuing Dipolog area successfully connected..')
          except
                MessageDlg('DIPOLOG MAIN OFFICE OFFLINE..', mtWarning, [mbOK], 0);
          end;
          end;
         1:begin
          try
            callerServer.Connected    := false;
            callerServer.Server       := 'serverpao';
            callerServer.Connected    := true;

            number_lb2.Caption.Text  := 'Consumer Priority Number (Pi�an Area).';
            showmessage('Queuing Pi�an area successfully connected..')
          except
                MessageDlg('PI�AN AREA OFFLINE..', mtWarning, [mbOK], 0);
          end;
          end;
         2:begin
          try
            callerServer.Connected    := false;
            callerServer.Server       := 'serversao';
            callerServer.Connected    := true;

            number_lb2.Caption.Text  := 'Consumer Priority Number (Sindangan Area).';
            showmessage('Queuing Sindangan area successfully connected..')
          except
                MessageDlg('SINDANGAN AREA OFFLINE..', mtWarning, [mbOK], 0);
          end;
          end;
         3:begin
          try
            callerServer.Connected    := false;
            callerServer.Server       := 'serverlao';
            callerServer.Connected    := true;

            number_lb2.Caption.Text  := 'Consumer Priority Number (Liloy Area).';
            showmessage('Queuing Liloy area successfully connected..')
          except
                MessageDlg('LILOY AREA OFFLINE..', mtWarning, [mbOK], 0);
          end;
          end;

       end;
    end;

end;

procedure TpriorityNoFrm.AdvSmoothButton4Click(Sender: TObject);
begin
  if not assigned(proceedPriorityFrm) then
  proceedPriorityFrm := TproceedPriorityFrm.Create(Application);
  proceedPriorityFrm.ShowModal;
end;

procedure TpriorityNoFrm.AdvSmoothButton5Click(Sender: TObject);
begin
  close;
end;

procedure TpriorityNoFrm.AdvSmoothButton6Click(Sender: TObject);
begin
  if not assigned(callerHistoryFrm) then
  callerHistoryFrm := TcallerHistoryFrm.Create(Application);
  callerHistoryFrm.ShowModal;

end;

procedure TpriorityNoFrm.AdvSmoothButton7Click(Sender: TObject);
begin
  if not assigned(callernoFrm) then
  callernoFrm := TcallernoFrm.Create(Application);
  callernoFrm.ShowModal;

end;

procedure TpriorityNoFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  priorityNoFrm := Nil;
end;

procedure TpriorityNoFrm.FormShow(Sender: TObject);
begin
  //==================================
     //==================================
     With BillingData do
      begin
        if (callerServer.Server = 'server') then
        begin
          ComboBox1.ItemIndex     := 0;
          number_lb2.Caption.Text := 'Consumer Priority Number (Dipolog Main Office).';

        end else if  (callerServer.Server = 'serverpao') then
        begin
          ComboBox1.ItemIndex     := 1;
          number_lb2.Caption.Text := 'Consumer Priority Number (Pi�an Area).';

        end else if  (callerServer.Server = 'serversao') then
        begin
          ComboBox1.ItemIndex     := 2;
          number_lb2.Caption.Text := 'Consumer Priority Number (Sindangan Area).';

        end else if  (callerServer.Server = 'serverlao') then
        begin
          ComboBox1.ItemIndex     := 3;
          number_lb2.Caption.Text := 'Consumer Priority Number (Liloy Area).';
        end;
      end;
      //==================================
      //==================================
end;

end.
