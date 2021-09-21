unit EncoderCollectionRecord2;

interface

uses
  Windows, Messages, Classes, SysUtils, Graphics, Controls, StdCtrls, Forms,
  Dialogs, DBCtrls, DB, ExtCtrls, Mask, Buttons, Grids, DBGrids, Gradient,
  PDJSillyLabel, VolDBEdit, VolDBGrid, PDJRotoLabel, Menus, BarMenus,
  DBTables, DCChoice;

type
  TEncoderCollectionRecordForm = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    EditAccountNumber: TVolgaDBEdit;
    EditName: TVolgaDBEdit;
    EditBillMonth: TVolgaDBEdit;
    Label1: TLabel;
    Label12: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label15: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    EditTotalBill: TVolgaDBEdit;
    EditTransformerRental: TVolgaDBEdit;
    EditCollectorCode: TVolgaDBEdit;
    EditDatePaid: TVolgaDBEdit;
    EditDateRemitted: TVolgaDBEdit;
    EditEncoderCode: TVolgaDBEdit;
    EditUCNPCSD: TVolgaDBEdit;
    EditUCNPCSCC: TVolgaDBEdit;
    EditUCDUSCC: TVolgaDBEdit;
    EditUCME: TVolgaDBEdit;
    EditUCETR: TVolgaDBEdit;
    EditUCEC: TVolgaDBEdit;
    EditUCCSR: TVolgaDBEdit;
    Add: TPDJSillyLabel;
    Label3: TLabel;
    CloseLabel: TPDJSillyLabel;
    Gradient2: TGradient;
    PDJSillyLabel2: TPDJSillyLabel;
    PDJSillyLabel1: TPDJSillyLabel;
    EditReceiptNumber: TEdit;
    PDJSillyLabel13: TPDJSillyLabel;
    Edit4: TEdit;
    TotalBillLabel: TLabel;
    TotalAmountLabel: TLabel;
    Panel2: TPanel;
    Label4: TLabel;
    Gradient1: TGradient;
    Label5: TLabel;
    Label8: TLabel;
    Label30: TLabel;
    Label33: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    PDJSillyLabel4: TPDJSillyLabel;
    PDJSillyLabel5: TPDJSillyLabel;
    Edit5: TEdit;
    Edit3: TEdit;
    BcBarPopupMenu1: TBcBarPopupMenu;
    ArrangebyOEBR1: TMenuItem;
    ArrangebyAccountNumber1: TMenuItem;
    RemoveAutoArrance1: TMenuItem;
    Panel3: TPanel;
    Label9: TLabel;
    Gradient3: TGradient;
    Label10: TLabel;
    PDJSillyLabel3: TPDJSillyLabel;
    PDJSillyLabel6: TPDJSillyLabel;
    CutOffDate: TDCDateEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AddClick(Sender: TObject);
    procedure CloseLabelClick(Sender: TObject);
    procedure EditReceiptNumberChange(Sender: TObject);
    procedure EditReceiptNumberKeyPress(Sender: TObject; var Key: Char);
    procedure PDJSillyLabel1Click(Sender: TObject);
    procedure PDJSillyLabel4Click(Sender: TObject);
    procedure PDJSillyLabel5Click(Sender: TObject);
    procedure PDJSillyLabel2Click(Sender: TObject);
    procedure PDJSillyLabel13Click(Sender: TObject);
    procedure ArrangebyOEBR1Click(Sender: TObject);
    procedure ArrangebyAccountNumber1Click(Sender: TObject);
    procedure RemoveAutoArrance1Click(Sender: TObject);
    procedure PDJSillyLabel3Click(Sender: TObject);
    procedure PDJSillyLabel6Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  EncoderCollectionRecordForm: TEncoderCollectionRecordForm;

implementation

uses Data, Collection, ModTools, StatusUpdate, EncoderCollection;

Var
Lst : Text ;
TotalBill : Word;
TotalAmount : Currency;

{$R *.DFM}

procedure TEncoderCollectionRecordForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  EncoderCollectionRecordForm := Nil;
end;

procedure TEncoderCollectionRecordForm.AddClick(Sender: TObject);
begin
  BillingData.Collection.Append;
  With  BillingData, EncoderCollectionForm do
   begin
    CollectionPosted.Text            := '1';
    CollectionDatePaid.Text          := DatePaid.Text;
    CollectionDateRemitted.Text      := DateRemitted.Text;
    CollectionEncoderCode.Text       := Edit3.text;
    CollectionCollectorCode.Text     := Edit1.Text;
    TotalBill   := 0;
    TotalAmount := 0;
   end;
  EditReceiptNumber.SetFocus;
  end;


procedure TEncoderCollectionRecordForm.CloseLabelClick(Sender: TObject);
begin
  Close;
end;

procedure TEncoderCollectionRecordForm.EditReceiptNumberChange(Sender: TObject);
begin
  with BillingData do
   begin
   If Length(EditReceiptNumber.Text) = 7 then
    begin
     If UnPB.FindKey([EditReceiptNumber.Text]) then
      begin
        CollectionAccountCode.Text       := UnPBCode.Text;
        CollectionAccountNumber.Text     := UnPBAccountNumber.Text;
        CollectionArea.Text              := UnPBArea.Text;
        CollectionBook.Text              := UnPBBook.Text;
        CollectionSequence.Text          := UnPBRateCode.Text;
        CollectionName.Text              := UnPBName.Text;
        CollectionBillMonth.Text         := UnPBBillMonth.Text;
        CollectionTotalBill.AsCurrency   := UnPBAmount.AsCurrency;
        CollectionTotal.AsCurrency       := UnPBAmount.AsCurrency;
        CollectionUCNPCSD.AsCurrency     := UnPBUCNPCSD.AsCurrency;
        CollectionUCNPCSCC.AsCurrency    := UnPBUCNPCSCC.AsCurrency;
        CollectionUCDUSCC.AsCurrency     := UnPBUCDUSCC.AsCurrency;
        CollectionUCME.AsCurrency        := UnPBUCME.AsCurrency;
        CollectionUCETR.AsCurrency       := UnPBUCETR.AsCurrency;
        CollectionUCEC.AsCurrency        := UnPBUCEC.AsCurrency;
        CollectionUCCSR.AsCurrency       := UnPBUCCSR.AsCurrency;
        Collection.Post;

        Collection.Append;
        CollectionPosted.Text            := '1';
        CollectionDatePaid.Text          := EncoderCollectionForm.DatePaid.Text;
        CollectionDateRemitted.Text      := EncoderCollectionForm.DateRemitted.Text;
        CollectionEncoderCode.Text       := EncoderCollectionForm.Edit3.Text;
        CollectionCollectorCode.Text     := EncoderCollectionForm.Edit1.Text;
        Inc(TotalBill);
        TotalAmount := TotalAmount + UnPBAmount.AsCurrency;

        TotalBillLabel.Caption   := 'TOTAL BILLS - '+IntToStr(TotalBill);
        TotalAmountLabel.Caption := 'TOTAL AMOUNT - '+Format(TotalAmount,'#,###,###.##');

        EditReceiptNumber.SetFocus;
     end else
       begin
        EditReceiptNumber.Text := '';
        EditReceiptNumber.SetFocus;
       end;
    end;
   end;
end;

procedure TEncoderCollectionRecordForm.EditReceiptNumberKeyPress(Sender: TObject;
  var Key: Char);
begin
  If (key = #13) and (EditReceiptNumber.Text = '') then
    begin
     BillingData.Collection.Cancel;
    end;
end;

procedure TEncoderCollectionRecordForm.PDJSillyLabel1Click(Sender: TObject);
begin
   Panel2.Visible := True;
   Edit1.SetFocus;
end;


procedure TEncoderCollectionRecordForm.PDJSillyLabel4Click(Sender: TObject);
Var
PageCount,LineCount,DetailCount,HeadSW : Word;
TArea                        : Array[1..30] of String[3];
TCollectionAmount            : Array[1..30] of Currency;
TCollectionTransformerRental : Array[1..30] of Currency;
TCollectionLLP               : Array[1..30] of Currency;
TCollectionUCNPCSD           : Array[1..30] of Currency;
TCollectionUCNPCSCC          : Array[1..30] of Currency;
TCollectionUCDUSCC           : Array[1..30] of Currency;
TCollectionUCME              : Array[1..30] of Currency;
TCollectionUCETR             : Array[1..30] of Currency;
TCollectionUCEC              : Array[1..30] of Currency;
TCollectionUCCSR             : Array[1..30] of Currency;

TAmount                      : Currency ;
TTransformerRental           : Currency ;
TLLP                         : Currency ;
TUCNPCSD                     : Currency ;
TUCNPCSCC                    : Currency ;
TUCDUSCC                     : Currency ;
TUCME                        : Currency ;
TUCETR                       : Currency ;
TUCEC                        : Currency ;
TUCCSR                       : Currency ;

XRent,LLP                    : Currency;
PageXRent,PageLLP            : Currency;
GrandXRent,GrandLLP          : Currency;

PageTotal                    : Currency;
GrandTotal                   : Currency;
AmountRemitted               : Real;
Check                        : Integer;
Difference                   : Currency;
I                            : Integer;

Procedure Heading;
begin
Write(Lst,#18,#27+'P');
writeln(lst,'Page #          : ',PageCount);
writeln(lst,'Report Name     : COLLECTION REPORT - '+Edit1.Text);
writeln(lst,'COLLECTION DATE : ',EncoderCollectionForm.DatePaid.Text);
Write(Lst,#15);
Writeln(lst,'---------------------------------------------------------------------------------------------------------');
Writeln(lst,'| No.  ACCT #       Consumer Name                  Bill Num        X-Rent         LLP        Amount BMon|');
Writeln(lst,'---------------------------------------------------------------------------------------------------------');
end;

begin
  Val(Edit3.Text,AmountRemitted,Check);
  ShowMessage('Set Printer on.....');

  if ioresult <> 0 then
  begin
  end;

  Try
  AssignFile(Lst,'LPT1');
  Rewrite(Lst);
  except
   ShowMessage('Printer not Ready');
   Exit;
  end;

  If not assigned(BillingStatusUpdateForm) then
  BillingStatusUpdateForm := TBillingStatusUpdateForm.Create(Application);
  BillingStatusUpdateForm.Label1.Caption := 'Encoders Collection.....';
  BillingStatusUpdateForm.Show;

  With BillingData do
    begin

    Collection.First;

    BillingStatusUpdateForm.ProgressBar1.Position := 0;
    BillingStatusUpdateForm.ProgressBar1.Min      := 1;
    BillingStatusUpdateForm.ProgressBar1.Max      := Collection.RecordCount;

    LineCount                    := 0;
    HeadSw                       := 0;
    DetailCount                  := 0;
    PageCount                    := 1;

    For I := 1 to 30 do
    begin
      TArea[I]                        := '';
      TCollectionAmount[I]            := 0;
      TCollectionTransformerRental[I] := 0;
      TCollectionLLP[I]               := 0;
      TCollectionUCNPCSD[I]           := 0;
      TCollectionUCNPCSCC[I]          := 0;
      TCollectionUCDUSCC[I]           := 0;
      TCollectionUCME[I]              := 0;
      TCollectionUCETR[I]             := 0;
      TCollectionUCEC[I]              := 0;
      TCollectionUCCSR[I]             := 0;
    end;

    TAmount             := 0;
    TTransformerRental  := 0;
    TLLP                := 0;
    TUCNPCSD            := 0;
    TUCNPCSCC           := 0;
    TUCDUSCC            := 0;
    TUCME               := 0;
    TUCETR              := 0;
    TUCEC               := 0;
    TUCCSR              := 0;

    TArea[01]  := '001';
    TArea[02]  := '002';
    TArea[03]  := '003';
    TArea[04]  := '004';
    TArea[05]  := '005';
    TArea[06]  := '006';
    TArea[07]  := '007';
    TArea[08]  := '008';
    TArea[09]  := '009';
    TArea[10]  := '010';
    TArea[11]  := '011';
    TArea[12]  := '012';
    TArea[13]  := '013';
    TArea[14]  := '014';
    TArea[15]  := '015';
    TArea[16]  := '016';
    TArea[17]  := '017';
    TArea[18]  := '018';
    TArea[19]  := '019';
    TArea[20]  := '020';
    TArea[21]  := '021';
    TArea[22]  := '022';
    TArea[23]  := '023';
    TArea[24]  := '024';
    TArea[25]  := '025';
    TArea[26]  := '026';
    TArea[27]  := '027';
    TArea[28]  := '028';
    TArea[29]  := '029';
    TArea[30]  := '030';

    PageTotal  := 0;
    GrandTotal := 0;
    PageXRent  := 0;
    PageLLP    := 0;
    GrandXRent := 0;
    GrandLLP   := 0;

    Collection.First;

    while not Collection.Eof do
     begin
     BillingStatusUpdateForm.ProgressBar1.StepBy(1);

     Application.ProcessMessages;

     If HeadSW = 0 then
       begin
         HeadSW := 1;
         Heading;
       end;

      Inc(DetailCount);

      LLP   := 0;
      XRent := 0;

      If CollectionSequence.Text = 'R' then
      LLP   := CollectionTransformerRental.AsCurrency else
      XRent := CollectionTransformerRental.AsCurrency;

      Writeln(Lst,'| ',DetailCount:3,'. ',
                  JustStr(CollectionAccountNumber.Text,' ',10,0),   '-',
                  JustStr(CollectionSequence.Text,' ',1,0),         ' ',
                  Juststr(CollectionName.Text,' ',30,0),            ' ',
                  Juststr(CollectionReceiptNumber.Text,' ',10,0),   ' ',
                  Format(XRent,'###,###.##'),
                  Format(LLP,'###,###.##'),
                  Format(CollectionTotal.AsCurrency,'#,###,###.##'),
                  Juststr(CollectionBillMonth.Text,' ',04,0),       '|');

      For I := 1 to 30 do
      begin
      If ((TArea[I] = CollectionArea.Text)) or
         ((TArea[I] = '0'+CollectionArea.Text)) then
          begin
            TCollectionAmount[I]             := TCollectionAmount[I] + CollectionTotal.AsCurrency;

            If CollectionSequence.Text <> 'R' then
            TCollectionTransformerRental[I]  := TCollectionTransformerRental[I] + CollectionTransformerRental.AsCurrency else
            TCollectionLLP[I]                := TCollectionLLP[I] + CollectionTransformerRental.AsCurrency;

            TCollectionUCNPCSD[I]            := TCollectionUCNPCSD[I] + CollectionUCNPCSD.AsCurrency;
            TCollectionUCNPCSCC[I]           := TCollectionUCNPCSCC[I] + CollectionUCNPCSCC.AsCurrency;
            TCollectionUCDUSCC[I]            := TCollectionUCDUSCC[I] + CollectionUCDUSCC.AsCurrency;
            TCollectionUCME[I]               := TCollectionUCME[I] + CollectionUCME.AsCurrency;
            TCollectionUCETR[I]              := TCollectionUCETR[I] + CollectionUCETR.AsCurrency;
            TCollectionUCEC[I]               := TCollectionUCEC[I] + CollectionUCEC.AsCurrency;
            TCollectionUCCSR[I]              := TCollectionUCCSR[I] + CollectionUCCSR.AsCurrency;

            TAmount             := TAmount + CollectionTotal.AsCurrency;

            If CollectionSequence.Text <> 'R' then
            TTransformerRental  := TTransformerRental + CollectionTransformerRental.AsCurrency else
            TLLP                := TLLP + CollectionTransformerRental.AsCurrency;

            TUCNPCSD            := TUCNPCSD + CollectionUCNPCSD.AsCurrency;
            TUCNPCSCC           := TUCNPCSCC + CollectionUCNPCSCC.AsCurrency;
            TUCDUSCC            := TUCDUSCC + CollectionUCDUSCC.AsCurrency;
            TUCME               := TUCME + CollectionUCME.AsCurrency;
            TUCETR              := TUCETR + CollectionUCETR.AsCurrency;
            TUCEC               := TUCEC + CollectionUCEC.AsCurrency;
            TUCCSR              := TUCCSR + CollectionUCCSR.AsCurrency;

          end;
      end;

      PageTotal                    := PageTotal + CollectionTotal.AsCurrency;
      GrandTotal                   := GrandTotal + CollectionTotal.AsCurrency;

      PageXRent                    := PageXRent + XRent;
      PageLLP                      := PageLLP + LLP;
      GrandXRent                   := GrandXRent + XRent;
      GrandLLP                     := GrandLLP + LLP;

     Inc(LineCount);
     If LineCount = 50 then
       begin
        HeadSW    := 0;
        LineCount := 0;
        Inc(PageCount);
        Writeln(lst,'---------------------------------------------------------------------------------------------------------');
        Writeln(lst,'|                                                  Page Total ',Format(PageXRent,'###,###.##'),
                                                                                     Format(PageLLP,'###,###.##'),
                                                                                     Format(PageTotal,'#,###,###.##'),'    |');
        Writeln(lst,'---------------------------------------------------------------------------------------------------------');
        PageTotal := 0;
        PageXRent := 0;
        PageLLP   := 0;

        Write(Lst,#12);
       end;

     Collection.Next;
     end;
    end;

If LineCount > 0 then
 begin
  Writeln(lst,'---------------------------------------------------------------------------------------------------------');
  Writeln(lst,'|                                                  Page Total ',Format(PageXRent,'###,###.##'),
                                                                               Format(PageLLP,'###,###.##'),
                                                                               Format(PageTotal,'#,###,###.##'),'    |');
 end;

Difference := AmountRemitted - GrandTotal;

Writeln(lst,'---------------------------------------------------------------------------------------------------------');
Writeln(lst,'|                                                  Page Total ',Format(PageXRent,'###,###.##'),
                                                                             Format(PageLLP,'###,###.##'),
                                                                             Format(PageTotal,'#,###,###.##'),'    |');
Writeln(lst,'---------------------------------------------------------------------------------------------------------');
Writeln(lst,'|                                                 Grand Total ',Format(GrandXRent,'###,###.##'),
                                                                             Format(GrandLLP,'###,###.##'),
                                                                             Format(GrandTotal,'#,###,###.##'),'    |');
Writeln(lst,'|                                                               Less : Amount Remitted ',Format(AmountRemitted,'#,###,###.##'),'    |');
Writeln(lst,'|                                                                           Difference ',Format(Difference,'#,###,###.##'),'    |');
Writeln(lst,'---------------------------------------------------------------------------------------------------------');
Writeln(lst);
Writeln(lst,#27+'M');
Writeln(lst,'Prepared by : __________________________  Received by : ________________  OR #:',Edit5.Text);
Writeln(lst,'             ',JustStr(Edit1.Text,' ',25,0),
            '              ',JustStr(Edit2.Text,' ',16,0));
Write(Lst,#12);
writeln(lst,'Report Name     : COLLECTION REPORT - '+Edit1.Text);
writeln(lst,'COLLECTION DATE : ',CollectionForm.DatePaid.Text);
Writeln(Lst,'Other Charges Breakdown',#15);
Writeln(lst,'----------------------------------------------------------------------------------------------------------------------------------------------------');
Writeln(lst,'|AR.|      Total |NPC Stranded|NPC Stranded| DU Stranded| Missionary |  Taxes and | Environment|      Cross | Transformer|        LLP |        Net |');
Writeln(lst,'|   |     Amount |       Debts|  Cont. Cost|  Cont. Cost|      Elec. |  Royalties |            |    Subsidy |      Rental|            |            |');
Writeln(lst,'----------------------------------------------------------------------------------------------------------------------------------------------------');
For I := 1 to 30 do
If TCollectionAmount[I] > 0 then
Writeln(lst,'|',TArea[I],' ',
            Format(TCollectionAmount[I],'###,###.##'),'|',
            Format(TCollectionUCNPCSD[I] ,'###,###.##'),'|',
            Format(TCollectionUCNPCSCC[I] ,'###,###.##'),'|',
            Format(TCollectionUCDUSCC[I] ,'###,###.##'),'|',
            Format(TCollectionUCME[I] ,'###,###.##'),'|',
            Format(TCollectionUCETR[I] ,'###,###.##'),'|',
            Format(TCollectionUCEC[I] ,'###,###.##'),'|',
            Format(TCollectionUCCSR[I] ,'###,###.##'),'|',
            Format(TCollectionTransformerRental[I] ,'###,###.##'),'|',
            Format(TCollectionLLP[I] ,'###,###.##'),'|',
            Format(TCollectionAmount[I]-
                  (TCollectionUCNPCSD[I] +
                   TCollectionUCNPCSCC[I] +
                   TCollectionUCDUSCC[I] +
                   TCollectionUCME[I] +
                   TCollectionUCETR[I] +
                   TCollectionUCEC[I] +
                   TCollectionUCCSR[I] +
                   TCollectionTransformerRental[I] +
                   TCollectionLLP[I]),'###,###.##'),'|');
Writeln(lst,'----------------------------------------------------------------------------------------------------------------------------------------------------');
Writeln(lst,'Total',
            Format(TAmount,'###,###.##'),'|',
            Format(TUCNPCSD ,'###,###.##'),'|',
            Format(TUCNPCSCC ,'###,###.##'),'|',
            Format(TUCDUSCC ,'###,###.##'),'|',
            Format(TUCME ,'###,###.##'),'|',
            Format(TUCETR ,'###,###.##'),'|',
            Format(TUCEC ,'###,###.##'),'|',
            Format(TUCCSR ,'###,###.##'),'|',
            Format(TTransformerRental ,'###,###.##'),'|',
            Format(TLLP ,'###,###.##'),'|',
            Format(TAmount-
                  (TUCNPCSD +
                   TUCNPCSCC +
                   TUCDUSCC +
                   TUCME +
                   TUCETR +
                   TUCEC +
                   TUCCSR +
                   TTransformerRental +
                   TLLP),'###,###.##'),'|');
Writeln(lst,'----------------------------------------------------------------------------------------------------------------------------------------------------');
Write(lst,#12);
BillingStatusUpdateForm.Close;
CloseFile(Lst);
ShowMessage('Done.');
end;

procedure TEncoderCollectionRecordForm.PDJSillyLabel5Click(Sender: TObject);
begin
  Panel2.Visible := False;
end;

procedure TEncoderCollectionRecordForm.PDJSillyLabel2Click(Sender: TObject);
begin
  Panel3.Visible := True;
  CutOffDate.SetFocus;
end;

procedure TEncoderCollectionRecordForm.PDJSillyLabel13Click(
  Sender: TObject);
begin
  With BillingData do
   begin
      TotalBill   := 0;
      TOtalAmount := 0;

      Collection.First;
      While not Collection.eof do
       begin
        Inc(TotalBill);
        TotalAmount := TotalAmount + CollectionTotalBill.AsCurrency;
        Collection.Next;
       end;
        TotalBillLabel.Caption   := 'BILLS - '+IntToStr(TotalBill);
        TotalAmountLabel.Caption := 'AMOUNT - '+Format(TotalAmount,'#,###,###.##');
  end;
end;

procedure TEncoderCollectionRecordForm.ArrangebyOEBR1Click(
  Sender: TObject);
begin
   BillingData.Collection.IndexName := 'CollOEBR';
end;

procedure TEncoderCollectionRecordForm.ArrangebyAccountNumber1Click(
  Sender: TObject);
begin
  BillingData.Collection.IndexName := 'CollAccountNumber';
end;

procedure TEncoderCollectionRecordForm.RemoveAutoArrance1Click(
  Sender: TObject);
begin
   BillingData.Collection.IndexName := '';
end;

procedure TEncoderCollectionRecordForm.PDJSillyLabel3Click(
  Sender: TObject);
begin
   if MessageDlg('Post Collection will update all Consumer S/L at the same'+#13+
                 'time remove all unpaid bills from the A/R file. Once done,'+#13+
                 'all deleted Unpaid bills can no longer be recovered.'+#13+
                 'Proceed?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      With BillingData do
      begin
          If not assigned(BillingStatusUpdateForm) then
          BillingStatusUpdateForm := TBillingStatusUpdateForm.Create(Application);
          BillingStatusUpdateForm.Label1.Caption := 'Collection Posting .....';
          BillingStatusUpdateForm.Show;

          UnPB.MasterSource          := Nil;
          UnPB.MasterFields          := '';
          UnPB.IndexName             := 'BillNumber';
          Collection.First;

          BillingStatusUpdateForm.ProgressBar1.Position := 0;
          BillingStatusUpdateForm.ProgressBar1.Min      := 0;
          BillingStatusUpdateForm.ProgressBar1.Max      := Collection.RecordCount;

          while not Collection.Eof do
           begin
           BillingStatusUpdateForm.ProgressBar1.StepBy(1);
           Application.ProcessMessages;

             If (BillingData.CollectionPosted.Text <> '2') and
                (BillingData.CollectionDatePaid.AsDateTime <= StrToDate(CutOffDate.Text)) then
               begin
                   BillingData.AR.AppendRecord([BillingData.CollectionAccountCode.Text,
                                                BillingData.CollectionDatePaid.Text,
                                                BillingData.CollectionReceiptNumber.Text,
                                                BillingData.CollectionBillMonth.Text,
                                                Nil,
                                                Nil,
                                                Nil,
                                                BillingData.CollectionTotalBill.AsCurrency]);

                   BillingData.Collection.Edit;
                   BillingData.CollectionPosted.Text := '2';
                   BillingData.Collection.Post;
                   If UnPB.FindKey([CollectionReceiptNumber.Text]) then UnPB.Delete;

                   
               end;
             BillingData.Collection.Next;
          end;

      BillingStatusUpdateForm.Close;
      UnPB.MasterSource          := MasterSource;
      UnPB.MasterFields          := 'Code';
      UnPB.IndexName             := 'UnPBCode';
      ShowMessage('Collection Posting Done.');

      end;
    end;
end;

procedure TEncoderCollectionRecordForm.PDJSillyLabel6Click(
  Sender: TObject);
begin
   Panel3.Visible := False;
end;


end.
