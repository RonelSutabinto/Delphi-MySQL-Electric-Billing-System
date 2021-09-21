
unit acctgpower;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, NxCollection, NxEdit, DB, MemDS, DBAccess, MyAccess,
  Mask, DBCtrls, Grids, DBGrids, CRGrid, ExtCtrls, math;

type
  TSalesForm = class(TForm)
    GroupBox1: TGroupBox;
    LateBillsFrom: TNxDatePicker;
    NxLabel2: TNxLabel;
    NxLabel3: TNxLabel;
    LateBillsTo: TNxDatePicker;
    GroupBox2: TGroupBox;
    NxLabel4: TNxLabel;
    NxLabel5: TNxLabel;
    AdjFrom: TNxDatePicker;
    AdjTo: TNxDatePicker;
    Sales: TMyQuery;
    BillMonth: TNxEdit;
    NxLabel6: TNxLabel;
    NxMemo1: TNxMemo;
    GroupBox3: TGroupBox;
    NxLabel7: TNxLabel;
    NxLabel8: TNxLabel;
    PilferFrom: TNxDatePicker;
    Pilferto: TNxDatePicker;
    SalesChartPanel: TNxHeaderPanel;
    CreateSales: TMyQuery;
    SC: TMyQuery;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    Label14: TLabel;
    DBEdit14: TDBEdit;
    Label18: TLabel;
    DBEdit18: TDBEdit;
    Label19: TLabel;
    DBEdit19: TDBEdit;
    Label20: TLabel;
    DBEdit20: TDBEdit;
    Label21: TLabel;
    DBEdit21: TDBEdit;
    Label22: TLabel;
    DBEdit22: TDBEdit;
    Label23: TLabel;
    DBEdit23: TDBEdit;
    Label24: TLabel;
    DBEdit24: TDBEdit;
    Label25: TLabel;
    DBEdit25: TDBEdit;
    NxButton4: TNxButton;
    NxButton5: TNxButton;
    OpenDialog1: TOpenDialog;
    Salesaccountcode: TStringField;
    Salesdebit: TFloatField;
    Salescredit: TFloatField;
    NxLabel1: TNxLabel;
    AreaOffice: TNxComboBox;
    Adj: TMyQuery;
    Adjaccountcode: TStringField;
    Adjdebit: TFloatField;
    Adjcredit: TFloatField;
    InsertAccountCode: TMyQuery;
    RadioGroup1: TRadioGroup;
    GetAccount: TMyQuery;
    GetAccountidchart: TLargeintField;
    GetAccountaccountcode: TStringField;
    GetAccountaccountname: TStringField;
    GetAccountaccounttype: TStringField;
    GetAccountaccountledgertype: TStringField;
    GetAccountBalAsOf: TFloatField;
    GetAccountBalPeriodCovered: TFloatField;
    GetAccountIndent: TLargeintField;
    GetAccountcategory: TStringField;
    GetAccountidGL: TLargeintField;
    GetAccountcstatus: TBooleanField;
    GetAccountacctRepTitle: TStringField;
    GetAccountidCashDepType: TLargeintField;
    MyQuery1: TMyQuery;
    JVCheck: TMyQuery;
    JVUpdate: TMyQuery;
    SalesCheck: TMyQuery;
    JournalUpdate: TMyQuery;
    SalesUpdate: TMyQuery;
    SalesUpdateidsales: TLargeintField;
    SalesUpdatesalesdate: TDateField;
    SalesUpdatesalesdescription: TStringField;
    SalesUpdatesalesamount: TFloatField;
    SalesUpdatesalesnumber: TStringField;
    MyConnection1: TMyConnection;
    JVUpdateidJournalVoucher: TLargeintField;
    JVUpdatejvDate: TDateField;
    JVUpdatejvDescription: TMemoField;
    JVUpdatejvNumber: TStringField;
    JVUpdatepassword: TStringField;
    JVUpdateiddoctype: TLargeintField;
    JVUpdatejvrecon: TBooleanField;
    JVUpdateflag: TStringField;
    JVUpdateisbalanced: TBooleanField;
    JVUpdateJVAmount: TFloatField;
    JVUpdateRemarks: TStringField;
    NxLinkLabel1: TNxLinkLabel;
    NxLinkLabel2: TNxLinkLabel;
    NxLinkLabel3: TNxLinkLabel;
    RadioGroup2: TRadioGroup;
    SCidsaleschart: TLongWordField;
    SCConsAR: TStringField;
    SCConsARPilfer: TStringField;
    SCConsARMCC: TStringField;
    SCConsARPilferPen: TStringField;
    SCARVatDist: TStringField;
    SCARVatTransCo: TStringField;
    SCARVatGenCo: TStringField;
    SCARVatSystemLoss: TStringField;
    SCARUCEC: TStringField;
    SCARUCME: TStringField;
    SCFinaVat: TStringField;
    SCSalesRes: TStringField;
    SCSalesComm: TStringField;
    SCSalesInd: TStringField;
    SCSalesSL: TStringField;
    SCSalesPub: TStringField;
    SCSalesPilfer: TStringField;
    SCSalesPen: TStringField;
    SCSalesMCC: TStringField;
    SCSalesVatDist: TStringField;
    SCSalesVatTransco: TStringField;
    SCSalesVatGenco: TStringField;
    SCSalesVatSystemLoss: TStringField;
    SCSalesUCEC: TStringField;
    SCSalesUCME: TStringField;
    SCTransformerAR: TStringField;
    SCARUCSCC: TStringField;
    SCSalesUCSCC: TStringField;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    procedure FormShow(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure NxButton4Click(Sender: TObject);
    procedure NxButton5Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure NxLinkLabel3Click(Sender: TObject);
    procedure NxLinkLabel1Click(Sender: TObject);
    procedure NxLinkLabel2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SalesForm: TSalesForm;

implementation

uses Data, DateUtils, modtools;

{$R *.dfm}

procedure TSalesForm.FormShow(Sender: TObject);
begin
  Try
   CreateSales.Execute;
  except
  end;

  Try
   InsertAccountCode.Execute;
  except
  end;

  LateBillsFrom.Date := StartOfTheMonth(now);
  LateBillsTo.Date   := EndOfTheMonth(now);

  PilferFrom.Date := StartOfTheMonth(now);
  Pilferto.Date   := EndOfTheMonth(now);

  AdjFrom.Date := StartOfTheMonth(now);
  AdjTo.Date   := EndOfTheMonth(now);

  SC.Open;

  If SC.IsEmpty then
    begin
      SC.Append;
      SCConsAR.Text                := '140-142-10';
      SCConsARPilfer.Text          := '140-142-14';
      SCConsARMCC.Text             := '140-142-15';
      SCConsARPilferPen.Text       := '140-142-16';
      SCARVatDist.Text             := '140-143-46';
      SCARVatTransCo.Text          := '140-143-55';
      SCARVatGenCo.Text            := '140-143-51';
      SCARVatSystemLoss.Text       := '140-143-59';
      SCARUCME.Text                := '140-143-42';
      SCARUCEC.Text                := '140-143-43';
      SCFinaVat.Text               := '160-165-24';

      SCSalesRes.Text              := '311-440-00';
      SCSalesComm.Text             := '311-449-00';
      SCSalesInd.Text              := '311-450-00';
      SCSalesPilfer.Text           := '311-446-00';
      SCSalesPen.Text              := '321-422-00';
      SCSalesMCC.Text              := '211-211-11';
      SCSalesVatDist.Text          := '230-232-39';
      SCSalesVatTransco.Text       := '230-232-40';
      SCSalesVatGenco.Text         := '230-232-41';
      SCSalesVatSystemLoss.Text    := '230-232-43';
      SCSalesUCME.Text             := '230-232-34';
      SCSalesUCEC.Text             := '230-232-35';
      SC.Post;
    end;

end;

procedure TSalesForm.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
    begin
     Perform(CM_DIALOGKEY,VK_TAB,0);
     Key := #0;
    end;
end;

procedure TSalesForm.NxButton4Click(Sender: TObject);
begin
  SC.Post;
  SalesChartPanel.Visible := False;
end;

procedure TSalesForm.NxButton5Click(Sender: TObject);
begin
  SC.Cancel;
  SalesChartPanel.Visible := False;
end;

procedure TSalesForm.NxLinkLabel1Click(Sender: TObject);
begin
  SalesChartPanel.Left     := 16;
  SalesChartPanel.Top      := 36;
  SalesChartPanel.BringToFront;
  SalesChartPanel.Visible  := True;
  SC.Edit;
  DBEdit1.SetFocus;
end;

procedure TSalesForm.NxLinkLabel2Click(Sender: TObject);
type
SalesRec = record
sldate          : TDate                       ;
sldescription   : String[50]                  ;
sldoctype       : String[10]                  ;
slaccountcode   : Array[1..100] of string[20] ;
sldebit         : Array[1..100] of Currency   ;
slcredit        : Array[1..100] of Currency   ;
end;

Var
    SalesRecord : SalesRec ;
    SalesFile   : File     ;
    I           : Integer  ;
    DebitOC     : TMyQuery ;
    CreditOCWR  : TMyQuery ;
    CreditOCBD  : TMyQuery ;
    OCTeller    : Currency ;
    Online      : TMyQuery ;

begin

 if RadioGroup1.ItemIndex < 0 then
   begin
     MessageDlg('Please select transfer mode...', mtInformation, [mbOK], 0);
     RadioGroup1.SetFocus;
   end;

 If AreaOffice.ItemIndex < 0 then
   begin
     MessageDlg('Please select an Area Office...', mtError, [mbOK], 0);
     AreaOffice.SetFocus;
     exit;
   end;

 If BillMonth.Text = '' then
   begin
     MessageDlg('No Billing Month supplied ....', mtError, [mbOK], 0);
     BillMonth.SetFocus;
     exit;
   end;

 if RadioGroup1.ItemIndex = 0 then
   begin
     if not(OpenDialog1.Execute) then Exit;

     AssignFile(SalesFile,OpenDialog1.FileName);
     If RadioGroup2.ItemIndex = 0 then
        Rewrite(SalesFile,SizeOf(SalesRecord))
        else
        Reset(SalesFile,SizeOf(SalesRecord));

   end else
   NxMemo1.Add('Online update requested.. preparing data, please standy by...');


 if ((RadioGroup2.ItemIndex = 1) and (RadioGroup1.ItemIndex = 1)) or
    ((RadioGroup2.ItemIndex = 0) and (RadioGroup1.ItemIndex = 0)) then
 begin

     FillChar(SalesRecord,SizeOf(SalesRecord),#0);

     DebitOC            := TMyQuery.Create(Self);
     DebitOC.Connection := BillingData.MyConnection1;
     DebitOC.SQL.Clear;
     DebitOC.SQL.Add('SELECT ocm.debitaccountcode, ocm.description as description,');
     DebitOC.SQL.Add('       sum(ocl.amount) toc');
     DebitOC.SQL.Add('FROM zaneco.ocledger ocl');
     DebitOC.SQL.Add('left join zaneco.ocdetail ocd on (ocl.idocdetail = ocd.idocdetail)');
     DebitOC.SQL.Add('left join zaneco.ocmaster ocm on (ocd.idocmaster = ocm.idocmaster)');
     DebitOC.SQL.Add('  where ocl.billmonth = :BillMonth');
     DebitOC.SQL.Add('group by ocm.debitaccountcode');
     DebitOC.ParamByName('BillMonth').Text  := BillMonth.Text;
     DebitOC.Open;

     OCTeller := 0;

     if not DebitOC.IsEmpty then
     while not DebitOC.eof do
       begin
         OCTeller := OCTeller + DebitOC.FieldByName('TOC').AsCurrency;
         DebitOC.Next;
       end;

     CreditOCWR            := TMyQuery.Create(Self);
     CreditOCWR.Connection := BillingData.MyConnection1;
     CreditOCWR.SQL.Clear;
     CreditOCWR.SQL.Add('SELECT m.wratecode, ocm.Debitaccountcode, ocm.description as description,');
     CreditOCWR.SQL.Add('       sum(ocl.amount) toc');
     CreditOCWR.SQL.Add('FROM zaneco.ocledger ocl');
     CreditOCWR.SQL.Add('left join zaneco.ocdetail ocd on (ocl.idocdetail = ocd.idocdetail)');
     CreditOCWR.SQL.Add('left join zaneco.ocmaster ocm on (ocd.idocmaster = ocm.idocmaster)');
     CreditOCWR.SQL.Add('left join zaneco.master m on (ocl.code = m.code)');
     CreditOCWR.SQL.Add('  where ocl.billmonth = :BillMonth');
     CreditOCWR.SQL.Add('group by m.wratecode');
     CreditOCWR.ParamByName('BillMonth').Text  := BillMonth.Text;
     CreditOCWR.Open;

     CreditOCBD            := TMyQuery.Create(Self);
     CreditOCBD.Connection := BillingData.MyConnection1;
     CreditOCBD.SQL.Clear;
     CreditOCBD.SQL.Add('SELECT ocm.accountcode, ocm.description as description,');
     CreditOCBD.SQL.Add('       sum(ocl.amount) toc');
     CreditOCBD.SQL.Add('FROM zaneco.ocledger ocl');
     CreditOCBD.SQL.Add('left join zaneco.ocdetail ocd on (ocl.idocdetail = ocd.idocdetail)');
     CreditOCBD.SQL.Add('left join zaneco.ocmaster ocm on (ocd.idocmaster = ocm.idocmaster)');
     CreditOCBD.SQL.Add('  where ocl.billmonth = :BillMonth');
     CreditOCBD.SQL.Add('group by ocm.AccountCode');
     CreditOCBD.ParamByName('BillMonth').Text  := BillMonth.Text;
     CreditOCBD.Open;

     With Sales, SalesRecord do
       begin
         ParamByName('araccount').Text                  := SCConsAR.Text;
         ParamByName('billmonth').Text                  := BillMonth.Text;
         ParamByName('LateBillDatefrom').AsDate         := LateBillsFrom.Date;
         ParamByName('LateBillDateTo').AsDate           := LateBillsTo.Date;
         ParamByName('pfdatefrom').AsDate               := PilferFrom.Date;
         ParamByName('pfdateto').AsDate                 := Pilferto.Date;
         ParamByName('ARMCC').Text                      := SCConsARMCC.Text;
         ParamByName('ARVATGenco').Text                 := SCARVatGenCo.Text;
         ParamByName('ARVATTransco').Text               := SCARVatTransCo.Text;
         ParamByName('ARVATDist').Text                  := SCARVatDist.Text;
         ParamByName('ARVATSystemLoss').Text            := SCARVatSystemLoss.Text;
         ParamByName('ARUCEC').Text                     := SCARUCEC.Text;
         ParamByName('ARUCME').Text                     := SCARUCME.Text;
         ParamByName('ARUCSCC').Text                    := SCARUCSCC.Text;
         ParamByName('ARVATDisc').Text                  := SCFinaVat.Text;
         ParamByName('SalesAccountRes').Text            := SCSalesRes.Text;
         ParamByName('SalesLowVoltage').Text            := SCSalesComm.Text;
         ParamByName('SalesHighVoltage').Text           := SCSalesInd.Text;
         ParamByName('SalesMCC').Text                   := SCSalesMCC.Text;
         ParamByName('SalesAPVATDist').Text             := SCSalesVatDist.Text;
         ParamByName('SalesAPVATTransco').Text          := SCSalesVatTransco.Text;
         ParamByName('SalesAPVATGenCo').Text            := SCSalesVatGenco.Text;
         ParamByName('SalesAPVATSystemLossGenCo').Text  := SCSalesVatSystemLoss.Text;
         ParamByName('SalesAPUCEC').Text                := SCSalesUCEC.Text;
         ParamByName('SalesAPUCME').Text                := SCSalesUCME.Text;
         ParamByName('SalesAPUCSCC').Text               := SCSalesUCSCC.Text;
         ParamByName('OCBilling').AsCurrency            := OCTeller;

         if not CreditOCWR.IsEmpty then
          while not CreditOCWR.eof do
            begin
              if CreditOCWR.FieldByName('wratecode').Text = 'R' then ParamByName('OCBillingR').AsCurrency := CreditOCWR.FieldByName('toc').AsCurrency;
              if CreditOCWR.FieldByName('wratecode').Text = 'L' then ParamByName('OCBillingL').AsCurrency := CreditOCWR.FieldByName('toc').AsCurrency;
              if CreditOCWR.FieldByName('wratecode').Text = 'H' then ParamByName('OCBillingH').AsCurrency := CreditOCWR.FieldByName('toc').AsCurrency;
              CreditOCWR.Next;
            end;

         sales.Open;

         if IsEmpty then
           begin
             MessageDlg('No sales to take up', mtError, [mbOK], 0);
             close;
             exit;
           end;

         sldate                                         := StrToDate(Copy(BillMonth.Text,1,2)+'/01/'+Copy(BillMonth.Text,3,2));
         sldate                                         := EndOfTheMonth(sldate);
         sldescription                                  := AreaOffice.Text + ' SALES ' + DateToStr(sldate);
         sldoctype                                      := 'SALES';
         I                                              := 0;

         while not Eof do
           begin
            Inc(I);
            slaccountcode[I]                            := JustStr(Salesaccountcode.Text,' ',10,0);
            sldebit[I]                                  := Salesdebit.AsCurrency;
            slcredit[I]                                 := Salescredit.AsCurrency;
            next;
           end;

        if RadioGroup1.ItemIndex = 0 then
          begin
            BlockWrite(SalesFile,SalesRecord,1);
            NxMemo1.Lines.Clear;
            NxMemo1.Add(sldescription+' Sales Created');
            NxMemo1.Add('Sales Record saved to filename '+OpenDialog1.FileName);
            NxMemo1.Add('');
          end
        else
           begin // Online Update

             SalesUpdate.Open;
             NxMemo1.Add(SalesRecord.sldescription + ' ' + SalesRecord.sldoctype);

             If SalesRecord.sldoctype = 'SALES' then
             With SalesRecord do
               begin
                 SalesCheck.Close;
                 SalesCheck.ParamByName('salesdescription').Text := salesrecord.sldescription;
                 SalesCheck.Open;

                 If not SalesCheck.IsEmpty then
                   begin
                     case MessageDlg(AreaOffice.Text+' SALES '+DateToStr(SalesRecord.sldate)+
                                     'is already on file.. Continue anyway?',
                                     mtConfirmation, [mbYes, mbNo, mbCancel], 0) of
                       mrNo      : exit;
                       mrCancel  : begin
                                     SalesCheck.Close;
                                     SalesUpdate.Close;
                                     exit;
                                   end;
                     end;
                    SalesCheck.Close;

                   end;

                 SalesUpdate.AppendRecord([]);
                 SalesUpdate.Edit;
                 SalesUpdatesalesdate.AsDateTime        := SalesRecord.sldate;
                 SalesUpdatesalesdescription.Text       := SalesRecord.sldescription;
                 SalesUpdatesalesnumber.Text            := 'SL-'+JustStr(SalesUpdateidsales.Text,'0',5,1);

                 NxMemo1.Add(SalesRecord.sldescription);
                 NxMemo1.Add('SL-'+JustStr(SalesUpdateidsales.Text,'0',5,1));

                 SalesUpdate.Post;

                 For I  := 1 to 100 do
                   begin
                     If roundTo(SalesRecord.sldebit[i]+SalesRecord.slcredit[i],-2) <> 0 then
                       begin
                         GetAccount.ParamByName('accountcode').Text := SalesRecord.slaccountcode[i];
                         GetAccount.Open;

                         If not GetAccount.IsEmpty then
                         begin
                         JournalUpdate.ParamByName('accountcode').Text    := GetAccountaccountcode.Text;
                         JournalUpdate.ParamByName('accountname').Text    := GetAccountaccountname.Text;
                         JournalUpdate.ParamByName('documentdate').AsDate := SalesRecord.sldate;
                         JournalUpdate.ParamByName('documenttype').Text   := 'SALES';
                         JournalUpdate.ParamByName('documentnumber').Text := SalesUpdatesalesnumber.Text;
                         JournalUpdate.ParamByName('debit').AsCurrency    := SalesRecord.sldebit[i];
                         JournalUpdate.ParamByName('credit').AsCurrency   := SalesRecord.slcredit[i];
                         JournalUpdate.Execute;
                         end else
                         NxMemo1.Add('This account code does not exist '+SalesRecord.slaccountcode[i]);

                         GetAccount.Close;
                       end;
                   end;
               end; // end with
            SalesUpdate.Close;
           end;
       end;


     FillChar(SalesRecord,SizeOf(SalesRecord),#0);

     With Adj, SalesRecord do
       begin
         ParamByName('araccount').Text                  := SCConsAR.Text;
         ParamByName('AdjDatefrom').AsDate              := AdjFrom.Date;
         ParamByName('AdjDateTo').AsDate                := AdjTo.Date;
         ParamByName('ARMCC').Text                      := SCConsARMCC.Text;
         ParamByName('ARVATGenco').Text                 := SCARVatGenCo.Text;
         ParamByName('ARVATTransco').Text               := SCARVatTransCo.Text;
         ParamByName('ARVATDist').Text                  := SCARVatDist.Text;
         ParamByName('ARVATSystemLoss').Text            := SCARVatSystemLoss.Text;
         ParamByName('ARUCEC').Text                     := SCARUCEC.Text;
         ParamByName('ARUCME').Text                     := SCARUCME.Text;
         ParamByName('ARUCSCC').Text                    := SCARUCSCC.Text;
         ParamByName('ARVATDisc').Text                  := SCFinaVat.Text;
         ParamByName('SalesAccountRes').Text            := SCSalesRes.Text;
         ParamByName('SalesLowVoltage').Text            := SCSalesComm.Text;
         ParamByName('SalesHighVoltage').Text           := SCSalesInd.Text;
         ParamByName('SalesMCC').Text                   := SCSalesMCC.Text;
         ParamByName('SalesAPVATDist').Text             := SCSalesVatDist.Text;
         ParamByName('SalesAPVATTransco').Text          := SCSalesVatTransco.Text;
         ParamByName('SalesAPVATGenCo').Text            := SCSalesVatGenco.Text;
         ParamByName('SalesAPVATSystemLossGenCo').Text  := SCSalesVatSystemLoss.Text;
         ParamByName('SalesAPUCEC').Text                := SCSalesUCEC.Text;
         ParamByName('SalesAPUCME').Text                := SCSalesUCME.Text;
         ParamByName('SalesAPUCSCC').Text               := SCSalesUCSCC.Text;
         adj.Open;

         if IsEmpty then
           begin
             MessageDlg('No Adjustment to take up', mtError, [mbOK], 0);
             close;
             exit;
           end;

         sldate         := StrToDate(Copy(BillMonth.Text,1,2)+'/01/'+Copy(BillMonth.Text,3,2));
         sldate         := EndOfTheMonth(sldate);
         sldescription  := AreaOffice.Text + ' SALES ADJUSTMENT ' + DateToStr(sldate);
         sldoctype      := 'ADJ';
         I              := 0;


         while not Eof do
           begin
            Inc(I);
            slaccountcode[I] := JustStr(Adjaccountcode.Text,' ',10,0);
            sldebit[I]       := Adjdebit.AsCurrency;
            slcredit[I]      := Adjcredit.AsCurrency;
            next;
           end;

        if RadioGroup1.ItemIndex = 0 then
          begin
            BlockWrite(SalesFile,SalesRecord,1);
            CloseFile(SalesFile);
            NxMemo1.Add(sldescription+' Sales Adjustment Created');
            NxMemo1.Add('Adjustment record saved to filename '+OpenDialog1.FileName);
            //adj.Close;
          end
        else
           begin // Online Update

              JVUpdate.Open;

              If SalesRecord.sldoctype = 'ADJ' then
              With SalesRecord do
                begin
                  JVCheck.Close;
                  JVCheck.ParamByName('jvdescription').Text := salesrecord.sldescription;
                  JVCheck.Open;

                  If not JVCheck.IsEmpty then
                    begin
                      case MessageDlg('Adjustment '+AreaOffice.Text+' '+DateToStr(SalesRecord.sldate)+
                                      'is already on file.. Continue anyway?',
                                      mtConfirmation, [mbYes, mbNo, mbCancel], 0) of
                        mrNo     : exit;
                        mrCancel : begin
                                     JVCheck.Close;
                                     JVUpdate.Close;
                                     exit;
                                   end;

                      end;
                     JVCheck.Close;

                    end;

                  JVUpdate.AppendRecord([]);
                  JVUpdate.Edit;
                  JVUpdatejvDate.AsDateTime         := SalesRecord.sldate;
                  JVUpdatejvDescription.AsString    := SalesRecord.sldescription;
                  JVUpdatejvNumber.Text             := 'SADJ-'+JustStr(JVUpdateidJournalVoucher.Text,'0',5,1);

                  NxMemo1.Lines.Add(SalesRecord.sldescription+' added');

                  JVUpdate.Post;

                  For I := 1 to 100 do
                    begin
                      If RoundTo(SalesRecord.sldebit[i]+SalesRecord.slcredit[i],-2) <> 0 then
                        begin
                          GetAccount.ParamByName('accountcode').Text        := SalesRecord.slaccountcode[i];
                          GetAccount.Open;

                          If not GetAccount.IsEmpty then
                          begin
                          JournalUpdate.ParamByName('accountcode').Text     := GetAccountaccountcode.Text;
                          JournalUpdate.ParamByName('accountname').Text     := GetAccountaccountname.Text;
                          JournalUpdate.ParamByName('documentdate').AsDate  := SalesRecord.sldate;
                          JournalUpdate.ParamByName('documenttype').Text    := 'JV';
                          JournalUpdate.ParamByName('documentnumber').Text  := JVUpdatejvNumber.Text;
                          JournalUpdate.ParamByName('debit').AsCurrency     := SalesRecord.sldebit[i];
                          JournalUpdate.ParamByName('credit').AsCurrency    := SalesRecord.slcredit[i];
                          JournalUpdate.Execute;
                          end else
                          NxMemo1.Add('This account code does not exist '+SalesRecord.slaccountcode[i]);

                          GetAccount.Close;
                        end;
                    end;

                end; // end with
             MyQuery1.SQL.Clear;
             MyQuery1.sql.Add('Update journal j inner join chart c on c.accountcode = j.accountcode set j.idchart = c.idchart');
             MyQuery1.Execute;
             end; // end while

             JVUpdate.Close;
             Sales.Close;
             Adj.Close;
             GetAccount.Close;

             NxMemo1.Lines.Add('Update Complete');
           end;
 end;

 if ((RadioGroup2.ItemIndex = 1) and (RadioGroup1.ItemIndex = 0)) then
 begin
     SalesUpdate.Open;
     JVUpdate.Open;

     While not eof(SalesFile) do
       begin
        BlockRead(SalesFile,SalesRecord,1);

        If SalesRecord.sldoctype = 'SALES' then
        With SalesRecord do
          begin
            SalesCheck.Close;
            SalesCheck.ParamByName('salesdescription').Text := salesrecord.sldescription;
            SalesCheck.Open;

            If not SalesCheck.IsEmpty then
              begin
                case MessageDlg(AreaOffice.Text+' SALES '+DateToStr(SalesRecord.sldate)+
                                'is already on file.. Continue anyway?',
                                mtConfirmation, [mbYes, mbNo, mbCancel], 0) of
                  mrNo     : Continue;
                  mrCancel : begin
                               CloseFile(SalesFile);
                               SalesCheck.Close;
                               SalesUpdate.Close;
                               exit;
                             end;

                end;
               SalesCheck.Close;

              end;

            SalesUpdate.AppendRecord([]);
            SalesUpdate.Edit;
            SalesUpdatesalesdate.AsDateTime   := SalesRecord.sldate;
            SalesUpdatesalesdescription.Text  := SalesRecord.sldescription;
            SalesUpdatesalesnumber.Text       := 'SL-'+JustStr(SalesUpdateidsales.Text,'0',5,1);

            NxMemo1.Lines.Add(SalesUpdatesalesdescription.Text+' downloaded ');

            SalesUpdate.Post;

            For I := 1 to 100 do
              begin
                If RoundTo(SalesRecord.sldebit[i]+SalesRecord.slcredit[i],-2) <> 0 then
                  begin
                    GetAccount.ParamByName('accountcode').Text        := SalesRecord.slaccountcode[i];
                    GetAccount.Open;

                    If not GetAccount.IsEmpty then
                    begin
                    JournalUpdate.ParamByName('accountcode').Text     := GetAccountaccountcode.Text;
                    JournalUpdate.ParamByName('accountname').Text     := GetAccountaccountname.Text;
                    JournalUpdate.ParamByName('documentdate').AsDate  := SalesRecord.sldate;
                    JournalUpdate.ParamByName('documenttype').Text    := 'SALES';
                    JournalUpdate.ParamByName('documentnumber').Text  := SalesUpdatesalesnumber.Text;
                    JournalUpdate.ParamByName('debit').AsCurrency     := SalesRecord.sldebit[i];
                    JournalUpdate.ParamByName('credit').AsCurrency    := SalesRecord.slcredit[i];
                    JournalUpdate.Execute;
                    end else
                    NxMemo1.Add('This account code does not exist '+SalesRecord.slaccountcode[i]);

                    GetAccount.Close;
                  end;
              end;

          end; // end with
       end; // end while

    SalesUpdate.Close;

     Seek(SalesFile,0);

     While not eof(SalesFile) do
       begin
        BlockRead(SalesFile,SalesRecord,1);

        If SalesRecord.sldoctype = 'ADJ' then
        With SalesRecord do
          begin
            JVCheck.Close;
            JVCheck.ParamByName('jvdescription').Text := salesrecord.sldescription;
            JVCheck.Open;

            If not JVCheck.IsEmpty then
              begin
                case MessageDlg('Adjustment '+AreaOffice.Text+' '+DateToStr(SalesRecord.sldate)+
                                'is already on file.. Continue anyway?',
                                mtConfirmation, [mbYes, mbNo, mbCancel], 0) of
                  mrNo     : Continue;
                  mrCancel : begin
                               CloseFile(SalesFile);
                               JVCheck.Close;
                               JVUpdate.Close;
                               exit;
                             end;

                end;
               JVCheck.Close;

              end;

            JVUpdate.AppendRecord([]);
            JVUpdate.Edit;
            JVUpdatejvDate.AsDateTime         := SalesRecord.sldate;
            JVUpdatejvDescription.Text        := SalesRecord.sldescription;
            JVUpdatejvNumber.Text             := 'SADJ-'+JustStr(JVUpdateidJournalVoucher.Text,'0',5,1);

            NxMemo1.Lines.Add(JVUpdatejvDescription.Text+' downloaded ');

            JVUpdate.Post;

            For I := 1 to 100 do
              begin
                If RoundTo(SalesRecord.sldebit[i]+SalesRecord.slcredit[i],-2) <> 0 then
                  begin
                    GetAccount.ParamByName('accountcode').Text        := SalesRecord.slaccountcode[i];
                    GetAccount.Open;

                    If not GetAccount.IsEmpty then
                    begin
                    JournalUpdate.ParamByName('accountcode').Text     := GetAccountaccountcode.Text;
                    JournalUpdate.ParamByName('accountname').Text     := GetAccountaccountname.Text;
                    JournalUpdate.ParamByName('documentdate').AsDate  := SalesRecord.sldate;
                    JournalUpdate.ParamByName('documenttype').Text    := 'JV';
                    JournalUpdate.ParamByName('documentnumber').Text  := JVUpdatejvNumber.Text;
                    JournalUpdate.ParamByName('debit').AsCurrency     := SalesRecord.sldebit[i];
                    JournalUpdate.ParamByName('credit').AsCurrency    := SalesRecord.slcredit[i];
                    JournalUpdate.Execute;
                    end else
                    NxMemo1.Add('This account code does not exist '+SalesRecord.slaccountcode[i]);

                    GetAccount.Close;
                  end;
              end;

          end; // end with
       end; // end while

    JVUpdate.Close;

    CloseFile(SalesFile);
    MyQuery1.SQL.Clear;
    MyQuery1.sql.Add('Update journal j inner join chart c on c.accountcode = j.accountcode set j.idchart = c.idchart');
    MyQuery1.Execute;

    NxMemo1.Lines.Add('Download done... Updating Journal Entries..');

 end;
end;

procedure TSalesForm.NxLinkLabel3Click(Sender: TObject);
begin
  Close;
end;

procedure TSalesForm.RadioGroup1Click(Sender: TObject);
begin
  if RadioGroup1.ItemIndex = 1 then
    begin
      try
       MyConnection1.Connected := True;
      except
      on E: Exception do
        begin
          NxMemo1.Lines.Add(E.Message);
          RadioGroup1.ItemIndex := 0;
          exit;
        end;
      end;
    end;
end;

end.


