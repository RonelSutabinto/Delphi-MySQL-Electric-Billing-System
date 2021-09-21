
unit OtherCharges;

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
  Mask,
  DBCtrls,
  ExtCtrls,
  Buttons,
  PDJSillyLabel,
  DsFancyButton,
  db;

type
  TOtherChargeForm = class(TForm)
    Panel1: TPanel;
    PDJSillyLabel1: TButton;
    PDJSillyLabel2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    EditOCCode: TDBEdit;
    EditOCAmount: TDBEdit;
    EditOCMo: TDBEdit;
    EditOCTotal: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    ConsumerName: TDBText;
    Address: TDBText;
    AccountNumber: TDBText;
    Balance: TDBText;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    Bevel6: TBevel;
    Bevel7: TBevel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PDJSillyLabel1Click(Sender: TObject);
    procedure PDJSillyLabel2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OtherChargeForm: TOtherChargeForm;

implementation

uses Data, BillMaster, BillMasterMainRecord;

{$R *.dfm}

procedure TOtherChargeForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := CAFree;
   OtherChargeForm := Nil;
end;

procedure TOtherChargeForm.PDJSillyLabel1Click(Sender: TObject);
begin
    If BillingData.Master.State = dsedit then billingdata.Master.Post;
    Close;
end;

procedure TOtherChargeForm.PDJSillyLabel2Click(Sender: TObject);
begin
    BillingData.Master.Cancel;
    Close;
end;

end.
