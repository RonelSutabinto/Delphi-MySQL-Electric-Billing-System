unit fixunpb;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids;

type
  TForm1 = class(TForm)
    DBGrid1: TDBGrid;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
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
     UnPB.Active := True;
     UnPB.First;

     While not UnPB.Eof do
       begin

        If Length(UnPBDocument.Text) > 10 then
            begin
              UnPB.Edit;
              UnPBDocument.Text := Copy(UnPBDocument.Text,1,10);
              UnPB.Post;
            end;

        (*
        If (Copy(UnPBBillMonth.Text,3,2) = '96') or
           (Copy(UnPBBillMonth.Text,3,2) = '97') then
            begin
              UnPB.Edit;
              UnPBDocument.Text := UnPBDocument.Text + '-' + Copy(UnPBBillMonth.Text,3,2);
              UnPB.Post;
            end;

        If UnPBBillMonth.Text = '' then
            begin
             UnPB.Edit;
             UnPBBillMonth.Text := Copy(UnPBDate.Text,1,2) +
                                   Copy(UnPBDate.Text,9,2);
             UnPB.Post;
            end;
        *)
       UnPB.Next;
       end;
     UnPB.Active := False;
    end;
end;

end.
