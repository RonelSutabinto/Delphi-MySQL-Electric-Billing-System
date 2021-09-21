unit SequenceEditor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, Grids, DBGrids, ExtCtrls, StdCtrls, DBGrid1;

type
  TSequenceEditorForm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    DBGrid1: TDBGrid1;
    procedure Exit1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ArrangebySequence1Click(Sender: TObject);
    procedure RemoveAutoArrage1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure DBGrid1Exit(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SequenceEditorForm: TSequenceEditorForm;

implementation

uses Data;

{$R *.dfm}

procedure TSequenceEditorForm.Exit1Click(Sender: TObject);
begin
  Close;
end;

procedure TSequenceEditorForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
   SequenceEditorForm := Nil;
end;

procedure TSequenceEditorForm.ArrangebySequence1Click(Sender: TObject);
begin
//  BillingData.Master.IndexName := 'MasterSequence';
end;

procedure TSequenceEditorForm.RemoveAutoArrage1Click(Sender: TObject);
begin
//  BillingData.Master.IndexName := '';
end;

procedure TSequenceEditorForm.Edit1Change(Sender: TObject);
begin
   If Length(Edit1.Text) >= 7 then
     begin
//      BillingData.Master.IndexName := 'MasterAccountNumber';
//      If BillingData.Master.Findkey([Edit1.Text]) then
        begin
          Edit1.Text := '';
          DBGrid1.SetFocus;
        end;
     end;
end;

procedure TSequenceEditorForm.DBGrid1Exit(Sender: TObject);
begin
  Edit1.Text := '';
  Edit1.SetFocus;
end;

procedure TSequenceEditorForm.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 then
    begin
      Edit1.Text := '';
      Edit1.SetFocus;
    end;
end;

end.
