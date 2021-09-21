unit peekmas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids;

type
  TForm1 = class(TForm)
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Data;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
 With BillingData do
 begin
      Master.DatabaseName := 'PAGSANJAN';
      AR.DatabaseName     := 'PAGSANJAN';
      Master.Active    := True;
      AR.Active        := True;

      Master.Filter    := 'BILLMONTH = ''0903''';
      Master.Filtered  := True;

      AR.IndexName     := 'DOC';
 end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  With BillingData do
  begin
      Master.Filter    := '';
      Master.Filtered  := False;

      AR.Filter        := '';
      AR.Filtered      := False;
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
   BillingData.AR.FindNearest([BillingData.MasterOEBRNumber.text]);
end;

procedure TForm1.Button4Click(Sender: TObject);
begin

    With BillingData do
     begin

      Master.First;
      While not Master.Eof do
        begin
          Application.ProcessMessages;
          if AR.FindKey([MasterOEBRNumber.Text]) then
            begin
            If ARCode.Text <> MasterCode.Text then
               begin
                AR.Edit;
                ARCode.Text := MasterCode.Text;
                AR.Post;
               end;
            end;
          Master.Next;
        end;
     end;

end;

end.
