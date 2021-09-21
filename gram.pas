unit gram;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvSmoothButton, Vcl.ExtCtrls, AdvPanel,
  Vcl.StdCtrls, Data.DB, MemDS, DBAccess, MyAccess, frxClass, frxDBSet;

type
  TgramFrm = class(TForm)
    AdvPanel1: TAdvPanel;
    AdvSmoothButton1: TAdvSmoothButton;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    AdvSmoothButton2: TAdvSmoothButton;
    gramQ: TMyQuery;
    gramQArea: TStringField;
    gramQMunicipality: TStringField;
    gramQBillMonth: TStringField;
    gramQkwhr_H: TFloatField;
    gramQkwhr_L: TFloatField;
    gramQkwhr_R: TFloatField;
    gramQcntr_H: TFloatField;
    gramQcntr_L: TFloatField;
    gramQcntr_R: TFloatField;
    gramQgram_H: TFloatField;
    gramQgram_L: TFloatField;
    gramQgram_R: TFloatField;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    gramQbmonth: TStringField;
    gramQcntr: TFloatField;
    gramQgram: TFloatField;
    procedure AdvSmoothButton1Click(Sender: TObject);
    procedure AdvSmoothButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  gramFrm: TgramFrm;

implementation

{$R *.dfm}

uses Data;

procedure TgramFrm.AdvSmoothButton1Click(Sender: TObject);
begin
  close;
end;

procedure TgramFrm.AdvSmoothButton2Click(Sender: TObject);
begin
  gramQ.Close;
  gramQ.ParamByName('bmonth').Text := Edit1.Text;
  gramQ.Open;

  frxReport1.ShowReport;
end;

end.
