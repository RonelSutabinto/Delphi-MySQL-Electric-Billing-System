unit frmFSRSignatories;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBAccess, MyAccess, MemDS, NxCollection, StdCtrls, Mask, DBCtrls;

type
  TFSRSignatories = class(TForm)
    NxLabel1: TNxLabel;
    NxLabel2: TNxLabel;
    NxLabel3: TNxLabel;
    NxLabel4: TNxLabel;
    NxLabel5: TNxLabel;
    NxLabel6: TNxLabel;
    NxLabel7: TNxLabel;
    NxLabel8: TNxLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    p1SaveBtn: TNxLinkLabel;
    p1CancelBtn: TNxLinkLabel;
    qFSRSignatories: TMyQuery;
    qFSRSignatoriesCheckBy: TStringField;
    qFSRSignatoriesCheckPos: TStringField;
    qFSRSignatoriesReviewedBy: TStringField;
    qFSRSignatoriesReviewedPos: TStringField;
    qFSRSignatoriesCertTCBy: TStringField;
    qFSRSignatoriesCertTCPos: TStringField;
    qFSRSignatoriesAttestedBy: TStringField;
    qFSRSignatoriesAttestedPos: TStringField;
    dsFSRSignatories: TMyDataSource;
    MyQuery1: TMyQuery;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    NxLabel9: TNxLabel;
    NxLabel10: TNxLabel;
    qFSRSignatoriesidfsrsignatories: TIntegerField;
    qFSRSignatoriesPreparedBy: TStringField;
    qFSRSignatoriesPreparedPos: TStringField;
    procedure FormShow(Sender: TObject);
    procedure p1SaveBtnClick(Sender: TObject);
    procedure p1CancelBtnClick(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSRSignatories: TFSRSignatories;

implementation

uses Data;

{$R *.dfm}

procedure TFSRSignatories.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    begin
      Perform(CM_DIALOGKEY,VK_TAB,0);
      Key := #0;
    end;
end;

procedure TFSRSignatories.FormShow(Sender: TObject);
begin
  if not qFSRSignatories.Active then qFSRSignatories.Open
  else qFSRSignatories.Refresh;
  if qFSRSignatories.IsEmpty then qFSRSignatories.Insert
  else qFSRSignatories.Edit;
end;

procedure TFSRSignatories.p1CancelBtnClick(Sender: TObject);
begin
  qFSRSignatories.Cancel;
  self.Close;
end;

procedure TFSRSignatories.p1SaveBtnClick(Sender: TObject);
begin
  qFSRSignatories.Post;
  Self.Close;
end;

end.
