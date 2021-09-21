unit EncoderCollectionRecord;

interface

uses
  Windows, Messages, Classes, SysUtils, Graphics, Controls, StdCtrls, Forms,
  Dialogs, DBCtrls, DB, ExtCtrls, Mask, Buttons, Grids, DBGrids, Gradient,
  PDJSillyLabel, VolDBEdit, VolDBGrid, PDJRotoLabel, Menus, BarMenus,
  DBTables, ComCtrls, Gauges;

type
  TEncoderCollectionRecordForm = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    EditAccountNumber: TDBEdit;
    EditName: TDBEdit;
    EditBillMonth: TDBEdit;
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
    EditTotalBill: TDBEdit;
    EditTransformerRental: TDBEdit;
    EditCollectorCode: TDBEdit;
    EditDatePaid: TDBEdit;
    EditDateRemitted: TDBEdit;
    EditEncoderCode: TDBEdit;
    EditUCNPCSD: TDBEdit;
    EditUCNPCSCC: TDBEdit;
    EditUCDUSCC: TDBEdit;
    EditUCME: TDBEdit;
    EditUCETR: TDBEdit;
    EditUCEC: TDBEdit;
    EditUCCSR: TDBEdit;
    Add: TPDJSillyLabel;
    Label3: TLabel;
    DBGrid3: TDBGrid;
    CloseLabel: TPDJSillyLabel;
    PDJSillyLabel2: TPDJSillyLabel;
    EditReceiptNumber: TEdit;
    PDJSillyLabel13: TPDJSillyLabel;
    Edit4: TEdit;
    TotalBillLabel: TLabel;
    TotalAmountLabel: TLabel;
    BcBarPopupMenu1: TBcBarPopupMenu;
    ArrangebyOEBR1: TMenuItem;
    ArrangebyAccountNumber1: TMenuItem;
    RemoveAutoArrance1: TMenuItem;
    Panel3: TPanel;
    Label9: TLabel;
    Label10: TLabel;
    PDJSillyLabel3: TPDJSillyLabel;
    PDJSillyLabel6: TPDJSillyLabel;
    PDJSillyLabel7: TPDJSillyLabel;
    Panel4: TPanel;
    Label11: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Area: TEdit;
    BillMonth: TEdit;
    PDJSillyLabel8: TPDJSillyLabel;
    PDJSillyLabel9: TPDJSillyLabel;
    Label16: TLabel;
    CutOffDate: TDateTimePicker;
    DateCutOff: TDateTimePicker;
    Bevel1: TBevel;
    Gauge1: TGauge;
    Gauge2: TGauge;
    Bevel2: TBevel;
    CollectionP: TQuery;
    CollectionPEntry: TIntegerField;
    CollectionPReceiptNumber: TStringField;
    CollectionPAccountCode: TFloatField;
    CollectionPArea: TStringField;
    CollectionPBook: TStringField;
    CollectionPSequence: TStringField;
    CollectionPAccountNumber: TStringField;
    CollectionPName: TStringField;
    CollectionPBillMonth: TStringField;
    CollectionPTotalBill: TCurrencyField;
    CollectionPMembership: TCurrencyField;
    CollectionPPenalty: TCurrencyField;
    CollectionPSecurity: TCurrencyField;
    CollectionPMeterDeposit: TCurrencyField;
    CollectionPTransformerRental: TCurrencyField;
    CollectionPSundries: TStringField;
    CollectionPSundriesAmount: TCurrencyField;
    CollectionPUCNPCSD: TCurrencyField;
    CollectionPUCNPCSCC: TCurrencyField;
    CollectionPUCDUSCC: TCurrencyField;
    CollectionPUCME: TCurrencyField;
    CollectionPUCETR: TCurrencyField;
    CollectionPUCEC: TCurrencyField;
    CollectionPUCCSR: TCurrencyField;
    CollectionPLoanCondo: TCurrencyField;
    CollectionPTotal: TCurrencyField;
    CollectionPCollectorCode: TStringField;
    CollectionPDatePaid: TDateField;
    CollectionPDateRemitted: TDateField;
    CollectionPEncoderCode: TStringField;
    CollectionPPosted: TStringField;
    CollectionPKilowattHour: TCurrencyField;
    CollectionPVAT: TCurrencyField;
    UpdateStatus: TQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    FloatField1: TFloatField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    CurrencyField1: TCurrencyField;
    CurrencyField2: TCurrencyField;
    CurrencyField3: TCurrencyField;
    CurrencyField4: TCurrencyField;
    CurrencyField5: TCurrencyField;
    CurrencyField6: TCurrencyField;
    StringField8: TStringField;
    CurrencyField7: TCurrencyField;
    CurrencyField8: TCurrencyField;
    CurrencyField9: TCurrencyField;
    CurrencyField10: TCurrencyField;
    CurrencyField11: TCurrencyField;
    CurrencyField12: TCurrencyField;
    CurrencyField13: TCurrencyField;
    CurrencyField14: TCurrencyField;
    CurrencyField15: TCurrencyField;
    CurrencyField16: TCurrencyField;
    StringField9: TStringField;
    DateField1: TDateField;
    DateField2: TDateField;
    StringField10: TStringField;
    StringField11: TStringField;
    CurrencyField17: TCurrencyField;
    CurrencyField18: TCurrencyField;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    Bevel6: TBevel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AddClick(Sender: TObject);
    procedure CloseLabelClick(Sender: TObject);
    procedure EditReceiptNumberChange(Sender: TObject);
    procedure EditReceiptNumberKeyPress(Sender: TObject; var Key: Char);
    procedure PDJSillyLabel2Click(Sender: TObject);
    procedure PDJSillyLabel13Click(Sender: TObject);
    procedure ArrangebyOEBR1Click(Sender: TObject);
    procedure ArrangebyAccountNumber1Click(Sender: TObject);
    procedure RemoveAutoArrance1Click(Sender: TObject);
    procedure PDJSillyLabel3Click(Sender: TObject);
    procedure PDJSillyLabel6Click(Sender: TObject);
    procedure PDJSillyLabel7Click(Sender: TObject);
    procedure PDJSillyLabel8Click(Sender: TObject);
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
    CollectionPosted.Text             := '1';
    CollectionDatePaid.AsDateTime     := DatePaid.Date;
    CollectionDateRemitted.AsDateTime := DateRemitted.Date;
    CollectionEncoderCode.Text        := Edit3.text;
    CollectionCollectorCode.Text      := Edit1.Text;
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
        CollectionVAT.AsCurrency         := UnPBVAT.AsCurrency;
        Collection.Post;

        Collection.Append;
        CollectionPosted.Text             := '1';
        CollectionDatePaid.AsDateTime     := EncoderCollectionForm.DatePaid.Date;
        CollectionDateRemitted.AsDateTime := EncoderCollectionForm.DateRemitted.Date;
        CollectionEncoderCode.Text        := EncoderCollectionForm.Edit3.Text;
        CollectionCollectorCode.Text      := EncoderCollectionForm.Edit1.Text;
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


procedure TEncoderCollectionRecordForm.PDJSillyLabel2Click(Sender: TObject);
begin
  Panel3.Left    := 212;
  Panel3.Top     := 139;
  Panel3.Visible := True;
  CutoffDate.DateTime := Now;
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

          UnPB.MasterSource          := Nil;
          UnPB.MasterFields          := '';
          UnPB.IndexName             := 'BillNumber';

          CollectionP.Close;
          CollectionP.Prepare;
          CollectionP.ParamByName('datepaid').AsDate := CutOffDate.Date;
          CollectionP.Open;

          CollectionP.First;

          Gauge2.Progress := 0;
          Gauge2.MinValue := 0;
          Gauge2.MaxValue := CollectionP.RecordCount;

          while not CollectionP.Eof do
           begin
           Gauge2.AddProgress(1);
           Application.ProcessMessages;

           If UnPB.FindKey([CollectionPReceiptNumber.Text]) then UnPB.Delete;

           BillingData.AR.AppendRecord([CollectionPAccountCode.Text,
                                        CollectionPDatePaid.Text,
                                        CollectionPReceiptNumber.Text,
                                        CollectionPBillMonth.Text,
                                        Nil,
                                        Nil,
                                        Nil,
                                        CollectionPTotalBill.AsCurrency,
                                        Nil,
                                        CollectionPSundries.Text+'-'+
                                        CollectionPCollectorCode.Text,
                                        CollectionPVAT.Text]);

           CollectionP.Next;
          end;

      UpdateStatus.Close;
      UpdateStatus.ParamByName('datepaid').AsDate := CutOffDate.Date;
      UpdateStatus.ExecSQL;

      UnPB.MasterSource          := MasterSource;
      UnPB.MasterFields          := 'Code';
      UnPB.IndexName             := 'UnPBCode';

      CollectionP.Close;
      CollectionP.Unprepare;

      ShowMessage('Collection Posting Done.');

      end;
    end;
end;

procedure TEncoderCollectionRecordForm.PDJSillyLabel6Click(
  Sender: TObject);
begin
   Panel3.Visible := False;
end;

procedure TEncoderCollectionRecordForm.PDJSillyLabel7Click(
  Sender: TObject);
begin
   Panel4.Left    := 223;
   Panel4.Left    := 133;
   Panel4.Visible := True;
   Area.SetFocus;
end;

procedure TEncoderCollectionRecordForm.PDJSillyLabel8Click(
  Sender: TObject);
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
TCollectionKWHR              : Array[1..30] of Currency;

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
TKWHR                        : Currency ;

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
writeln(lst,'Report Name     : CURRENT COLLECTION REPORT');
writeln(lst,'Cutoff Date     : ',DateToStr(DateCutOff.Date));
Write(Lst,#15);
Writeln(lst,'---------------------------------------------------------------------------------------------------------');
Writeln(lst,'| No.  ACCT #       Consumer Name                  Bill Num        X-Rent         LLP        Amount BMon|');
Writeln(lst,'---------------------------------------------------------------------------------------------------------');
end;

begin
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

  With BillingData do
    begin

    Collection.First;

    Gauge1.Progress := 0;
    Gauge1.MinValue := 0;
    Gauge1.MaxValue := Collection.RecordCount;

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
      TCollectionKwhr[I]              := 0;
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
    TKwhr               := 0;

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
     Gauge1.AddProgress(1);
     Application.ProcessMessages;

       If (CollectionDatePaid.AsDateTime <= DateCutOff.Date) and
          ( (CollectionArea.Text = Area.Text) or ('0'+CollectionArea.Text = Area.Text) ) and
          (CollectionBillMonth.Text = BillMonth.Text) then
       begin

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
                    TCollectionUCCSR[I]              := TCollectionUCCSR[I] + CollectionVAT.AsCurrency;
                    TCollectionKWHR[I]               := TCollectionKWHR[I] + CollectionKilowattHour.AsCurrency;

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
                    TUCCSR              := TUCCSR + CollectionVAT.AsCurrency;
                    TKWHR               := TKWHR + CollectionKilowattHour.AsCurrency;

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
Writeln(lst,'---------------------------------------------------------------------------------------------------------');
Writeln(lst);
Writeln(lst,#27+'M');
Write(Lst,#12);
writeln(lst,'Report Name     : ADVANCE COLLECTION REPORT - ');
writeln(lst,'Cutoff Date     : ',DateToStr(DateCutOff.Date));
Writeln(Lst,'Other Charges Breakdown',#15);
Writeln(lst,'-----------------------------------------------------------------------------------------------------------------------------------------------------------------');
Writeln(lst,'|AR.|      Total |NPC Stranded|NPC Stranded| DU Stranded| Missionary |  Taxes and | Environment|   Expanded | Transformer|        LLP |        Net | Kilowatt Hr|');
Writeln(lst,'|   |     Amount |       Debts|  Cont. Cost|  Cont. Cost|      Elec. |  Royalties |            |        VAT |      Rental|            |            |            |');
Writeln(lst,'-----------------------------------------------------------------------------------------------------------------------------------------------------------------');
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
                   TCollectionLLP[I]),'###,###.##'),'|',
            Format(TCollectionKWHR[I] ,'###,###.##'),'|');
Writeln(lst,'-----------------------------------------------------------------------------------------------------------------------------------------------------------------');
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
                   TLLP),'###,###.##'),'|',
            Format(TKWHR ,'###,###.##'),'|');
Writeln(lst,'-----------------------------------------------------------------------------------------------------------------------------------------------------------------');
Write(lst,#12);
CloseFile(Lst);
ShowMessage('Done.');
end;

end.
