unit BillDes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
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

{$R *.dfm}

Var
Lst : Text ;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Try
  AssignFile(Lst,'LPT1');
  Rewrite(Lst);
  except
   ShowMessage('Printer not Ready');
   Exit;
  end;

 Writeln(Lst);
 Writeln(Lst);
 Writeln(Lst);
 Write(Lst,#15);
 Writeln(Lst,'| XXXXXxxxxxXXXXXxxxxxXXXXXxxxxxXXXXXxxxxx | tttttTTTTTtttttTTTTT|(XX.XXXX)|(X,XXX,XXX.XX)|tttttTTTTTtttttTTTTT|(XX.XXXX)|(X,XXX,XXX.XX) | tttttTTTTTtttttTTTTT|(XX.XXXX)|(X,XXX,XXX.XX)|tttttTTTTTtttttTTTTT|(XX.XXXX)|(X,XXX,XXX.XX) |');
 Writeln(Lst,'| XXXXXxxxxxXXXXXxxxxxXXXXXxxxxxXXXXXxxxxx | tttttTTTTTtttttTTTTT|(XX.XXXX)|(X,XXX,XXX.XX)|tttttTTTTTtttttTTTTT|(XX.XXXX)|(X,XXX,XXX.XX) | tttttTTTTTtttttTTTTT|(XX.XXXX)|(X,XXX,XXX.XX)|tttttTTTTTtttttTTTTT|(XX.XXXX)|(X,XXX,XXX.XX) |');
 Writeln(Lst,'| XXXXXxxxxxXXXXXxxxxxXXXXXxxxxxXXXXXxxxxx | tttttTTTTTtttttTTTTT|(XX.XXXX)|(X,XXX,XXX.XX)|tttttTTTTTtttttTTTTT|(XX.XXXX)|(X,XXX,XXX.XX) | tttttTTTTTtttttTTTTT|(XX.XXXX)|(X,XXX,XXX.XX)|tttttTTTTTtttttTTTTT|(XX.XXXX)|(X,XXX,XXX.XX) |');
 Writeln(Lst,'| XXXXXxxxxxXXXXXxxxxxXXXXXxxxxxXXXXXxxxxx | tttttTTTTTtttttTTTTT|(XX.XXXX)|(X,XXX,XXX.XX)|tttttTTTTTtttttTTTTT|(XX.XXXX)|(X,XXX,XXX.XX) | tttttTTTTTtttttTTTTT|(XX.XXXX)|(X,XXX,XXX.XX)|tttttTTTTTtttttTTTTT|(XX.XXXX)|(X,XXX,XXX.XX) |');
 Writeln(Lst,'| XXXXXxxxxxXXXXXxxxxxXXXXXxxxxxXXXXXxxxxx | tttttTTTTTtttttTTTTT|(XX.XXXX)|(X,XXX,XXX.XX)|tttttTTTTTtttttTTTTT|(XX.XXXX)|(X,XXX,XXX.XX) | tttttTTTTTtttttTTTTT|(XX.XXXX)|(X,XXX,XXX.XX)|tttttTTTTTtttttTTTTT|(XX.XXXX)|(X,XXX,XXX.XX) |');
 Writeln(Lst,'| XXXXXxxxxxXXXXXxxxxxXXXXXxxxxxXXXXXxxxxx | tttttTTTTTtttttTTTTT|(XX.XXXX)|(X,XXX,XXX.XX)|tttttTTTTTtttttTTTTT|(XX.XXXX)|(X,XXX,XXX.XX) | tttttTTTTTtttttTTTTT|(XX.XXXX)|(X,XXX,XXX.XX)|tttttTTTTTtttttTTTTT|(XX.XXXX)|(X,XXX,XXX.XX) |');
 Writeln(Lst,'| XXXXXxxxxxXXXXXxxxxxXXXXXxxxxxXXXXXxxxxx | tttttTTTTTtttttTTTTT|(XX.XXXX)|(X,XXX,XXX.XX)|tttttTTTTTtttttTTTTT|(XX.XXXX)|(X,XXX,XXX.XX) | tttttTTTTTtttttTTTTT|(XX.XXXX)|(X,XXX,XXX.XX)|tttttTTTTTtttttTTTTT|(XX.XXXX)|(X,XXX,XXX.XX) |');
 CloseFile(Lst);
end;

end.
