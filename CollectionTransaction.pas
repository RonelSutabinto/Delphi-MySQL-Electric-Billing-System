unit CollectionTransaction;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtCtrls, AppEvnts, PDJSillyLabel, PDJRotoLabel, BarMenus,
  Gradient, DBTables;

type
  TBillMenuForm = class(TForm)
    PrinterSetupDialog1: TPrinterSetupDialog;
    Panel1: TPanel;
    ApplicationEvents1: TApplicationEvents;
    Gradient1: TGradient;
    BcBarMainMenu1: TBcBarMainMenu;
    Transaction1: TMenuItem;
    Collection1: TMenuItem;
    Adjustment1: TMenuItem;
    N5: TMenuItem;
    Reconnection1: TMenuItem;
    Disconnection1: TMenuItem;
    ChangeMeter1: TMenuItem;
    ChangeName1: TMenuItem;
    TransferArea1: TMenuItem;
    PostedCollection1: TMenuItem;
    N6: TMenuItem;
    ReferenceList1: TMenuItem;
    N1: TMenuItem;
    Exit1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Exit1Click(Sender: TObject);
    procedure BillingMaster1Click(Sender: TObject);
    procedure Collection1Click(Sender: TObject);
    procedure AreaRoute1Click(Sender: TObject);
    procedure Collector1Click(Sender: TObject);
    procedure MeterRate1Click(Sender: TObject);
    procedure FlatRate1Click(Sender: TObject);
    procedure PrinterSetup1Click(Sender: TObject);
    procedure Users1Click(Sender: TObject);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
    procedure Disconnection1Click(Sender: TObject);
    procedure Reconnection1Click(Sender: TObject);
    procedure ChangeMeter1Click(Sender: TObject);
    procedure ChangeName1Click(Sender: TObject);
    procedure TransferArea1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SelectDatabase1Click(Sender: TObject);
    procedure PostedCollection1Click(Sender: TObject);
    procedure SalesReport1Click(Sender: TObject);
    procedure OverallSalesReport1Click(Sender: TObject);
    procedure Adjustment1Click(Sender: TObject);
    procedure ReferenceList1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Database : String;
  end;

var
  BillMenuForm: TBillMenuForm;
  Animate : Boolean;

implementation

uses intro,
     BillMaster,
     Data,
     Collection,
     AreaRoute,
     Collector,
     MeterRate,
     FlatRateIndex,
     User,
     Disconnection,
     Reconnection,
     ChangeMeter,
     ChangeName,
     TransferArea,
     DefineDatabase,
     SalesByBook,
     SalesByArea,
     Adjustment,
     ReferenceList, EncoderCollection;

{$R *.dfm}

procedure TBillMenuForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  IntroForm.Close;
  BillingData.Destroy;
  BillingData  := Nil;
  BillMenuForm := Nil;
end;

procedure TBillMenuForm.Exit1Click(Sender: TObject);
begin
  Close;
end;

procedure TBillMenuForm.BillingMaster1Click(Sender: TObject);
begin
If Database = '' then
  begin
    ShowMessage('Please select database name');
    exit;
  end;

   With BillingData do
    begin
     Master.Active              := False;
     AR.Active                  := False;
     FlatRate.Active            := False;
     Bill.Active                := False;
     BillNumber.Active          := False;

     Master.DatabaseName        := Database;
     AR.DatabaseName            := Database;
     FlatRate.DatabaseName      := Database;
     Bill.DatabaseName          := Database;
     PBill.DatabaseName         := Database;
     BillNumber.DatabaseName    := Database;

     Master.Active              := True;
     AR.Active                  := True;
     FlatRate.Active            := True;
     Bill.Active                := True;
     BillNumber.Active          := True;

     FlatRateIndex.Active       := True;
     Vicinity.Active            := True;
     Recon.Active               := True;
     Disco.Active               := True;
     ChangeMeter.Active         := True;
     ChangeName.Active          := True;
     TransferArea.Active        := True;
     MRate.Active               := True;
    end;
   If not assigned(BillMasterForm) then
   BillMasterForm := TBillMasterForm.Create(Application);
   BillMasterForm.Caption := 'BILLING MASTER DATABASE - '+Database;
   BillMasterForm.Show;
end;

procedure TBillMenuForm.Collection1Click(Sender: TObject);
begin
If Database = '' then
  begin
    ShowMessage('Please select database name');
    exit;
  end;

  BillingData.UnPB.IndexName                    := 'BillNumber';
  BillingData.UnPB.Active                       := True;

  BillingData.RC.IndexName                      := 'BillNumber';
  BillingData.RC.Active                         := True;

  BillingData.PostCollection.Active             := True;
  BillingData.Collector.Active                  := True;

  If not assigned(CollectionForm) then
  CollectionForm         := TCollectionForm.Create(Application);
  CollectionForm.Caption := 'COLLECTION FILE DATABASE - '+Database;
  CollectionForm.Show;
end;

procedure TBillMenuForm.AreaRoute1Click(Sender: TObject);
begin
  BillingData.Vicinity.Active := True;
  If not assigned(AreaRouteForm) then AreaRouteForm := TAreaRouteForm.Create(Application);
  AreaRouteForm.show;
end;

procedure TBillMenuForm.Collector1Click(Sender: TObject);
begin
   BillingData.Collector.Active := True;
   If not assigned(CollectorForm) then
   CollectorForm := TCollectorForm.Create(Application);
   CollectorForm.show;
end;

procedure TBillMenuForm.MeterRate1Click(Sender: TObject);
begin
   BillingData.MRate.Active := True;
   If not assigned(MeterRateForm) then
   MeterRateForm := TMeterRateForm.Create(Application);
   MeterRateForm.show;
end;

procedure TBillMenuForm.FlatRate1Click(Sender: TObject);
begin
 BillingData.FlatRateIndex.Active := True;
 If not assigned(FlatRateIndexForm) then
 FlatRateIndexForm := TFlatRateIndexForm.Create(Application);
 FlatRateIndexForm.show;
end;

procedure TBillMenuForm.PrinterSetup1Click(Sender: TObject);
begin
 PrinterSetupDialog1.Execute;
end;

procedure TBillMenuForm.Users1Click(Sender: TObject);
begin
  If not Assigned(UserForm) then UserForm := TUserForm.Create(Application);
  UserForm.Users.Active := True;
  UserForm.Show;
end;

procedure TBillMenuForm.ApplicationEvents1Exception(Sender: TObject;
  E: Exception);
begin
   ShowMessage(E.Message+#13+
               'Pls. contact your programmer.');
end;

procedure TBillMenuForm.Disconnection1Click(Sender: TObject);
begin
  If not assigned(DisconnectionForm) then
    begin
      DisconnectionForm        := TDisconnectionForm.Create(Application);
      BillingData.Disco.Active := True;
      DisconnectionForm.Show;
      DisconnectionForm.Edit1.SetFocus;
    end;
end;

procedure TBillMenuForm.Reconnection1Click(Sender: TObject);
begin
  If not assigned(ReconnectionForm) then
    begin
      ReconnectionForm         := TReconnectionForm.Create(Application);
      BillingData.Recon.Active := True;
      ReconnectionForm.Show;
      ReconnectionForm.Edit1.SetFocus;
    end;
end;

procedure TBillMenuForm.ChangeMeter1Click(Sender: TObject);
begin
  If not assigned(ChangeMeterForm) then
    begin
      ChangeMeterForm                := TChangeMeterForm.Create(Application);
      BillingData.ChangeMeter.Active := True;
      ChangeMeterForm.Show;
      ChangeMeterForm.Edit1.SetFocus;
    end;
end;

procedure TBillMenuForm.ChangeName1Click(Sender: TObject);
begin
  If not assigned(ChangeNameForm) then
    begin
      ChangeNameForm                := TChangeNameForm.Create(Application);
      BillingData.ChangeName.Active := True;
      ChangeNameForm.Show;
      ChangeNameForm.Edit1.SetFocus;
    end;
end;

procedure TBillMenuForm.TransferArea1Click(Sender: TObject);
begin
  If not assigned(TransferAreaForm) then
    begin
      TransferAreaForm                := TTransferAreaForm.Create(Application);
      BillingData.TransferArea.Active := True;
      TransferAreaForm.Show;
      TransferAreaForm.Edit1.SetFocus;
    end;
end;

procedure TBillMenuForm.FormCreate(Sender: TObject);
begin
  Database := 'COOP';
end;

procedure TBillMenuForm.SelectDatabase1Click(Sender: TObject);
begin
  If not assigned(SelectDatabaseForm) then
  SelectDatabaseForm := TSelectDatabaseForm.Create(Application);
  SelectDatabaseForm.Show;
end;

procedure TBillMenuForm.PostedCollection1Click(Sender: TObject);
begin
If Database = '' then
  begin
    ShowMessage('Please select database name');
    exit;
  end;

  BillingData.Master.Databasename         := Database;
  BillingData.Collection.Databasename     := Database;
  BillingData.AR.Databasename             := Database;

  BillingData.Collection.Active           := True;
  BillingData.Collector.Active            := True;

  BillingData.UnPB.IndexName              := 'BillNumber';
  BillingData.UnPB.Active                 := True;
  BillingData.Master.IndexName            := 'MasterAccountNumber';
  BillingData.Master.Active               := True;
  BillingData.AR.Active                   := True;

  BillingData.Collection.Active           := True;
  BillingData.Collector.Active            := True;

  If not assigned(EncoderCollectionForm) then
  EncoderCollectionForm         := TEncoderCollectionForm.Create(Application);
  EncoderCollectionForm.Caption := 'ENCODER COLLECTION FILE';
  EncoderCollectionForm.Show;

end;

procedure TBillMenuForm.SalesReport1Click(Sender: TObject);
begin
  If not assigned(SalesByBookForm) then
  SalesByBookForm := TSalesByBookForm.Create(Application);
  BillingData.SBB.Active := True;
  SalesByBookForm.Show;
end;

procedure TBillMenuForm.OverallSalesReport1Click(Sender: TObject);
begin
  If not assigned(SalesByAreaForm) then
  SalesByAreaForm := TSalesByAreaForm.Create(Application);
  BillingData.SBA.Active       := True;
  BillingData.SBADetail.Active := True;
  SalesByAreaForm.Show;
end;

procedure TBillMenuForm.Adjustment1Click(Sender: TObject);
begin
If Database = '' then
  begin
    ShowMessage('Please select database name');
    exit;
  end;

  BillingData.Master.Databasename         := Database;
  BillingData.AR.Databasename             := Database;
  BillingData.Adj.Databasename            := Database;

  BillingData.Master.Active               := True;
  BillingData.Master.IndexName            := 'MasterAccountNumber';
  BillingData.AR.Active                   := True;
  BillingData.Adj.Active                  := True;
  BillingData.MRate.Active                := True;
  BillingData.AdjAdjDate.EditMask         := '99/99/0000;1;_';

  If not assigned(AdjustmentForm) then
  AdjustmentForm         := TAdjustmentForm.Create(Application);
  AdjustmentForm.Caption := 'ADJUSTMENT FILE DATABASE - '+Database;
  AdjustmentForm.Show;

end;

procedure TBillMenuForm.ReferenceList1Click(Sender: TObject);
begin
  If not assigned(ReferenceListForm) then
  ReferenceListForm := TReferenceListForm.Create(Application);
  ReferenceListForm.Show;
end;

end.
