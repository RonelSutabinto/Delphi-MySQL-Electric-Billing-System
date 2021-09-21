unit groupcollection;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Gradient, StdCtrls, Buttons, Grids, DBGrids, ComCtrls,
  PDJSillyLabel, ExtCtrls, DBCtrls, Menus, BarMenus, Gauges;

type
  TGroupCollectionForm = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    DBNavigator1: TDBNavigator;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Gauge1: TGauge;
    Label1: TLabel;
    BillMonth: TEdit;
    BitBtn6: TBitBtn;
    Panel9: TPanel;
    Label17: TLabel;
    Label68: TLabel;
    Label65: TLabel;
    Label67: TLabel;
    PDJSillyLabel8: TPDJSillyLabel;
    PDJSillyLabel1: TPDJSillyLabel;
    PDJSillyLabel2: TPDJSillyLabel;
    NotedBy: TEdit;
    CheckedBy: TEdit;
    PreparedBy: TEdit;
    Bevel1: TBevel;
    Panel2: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label30: TLabel;
    Label33: TLabel;
    Bevel2: TBevel;
    Edit1: TEdit;
    Edit2: TEdit;
    PDJSillyLabel4: TPDJSillyLabel;
    PDJSillyLabel5: TPDJSillyLabel;
    Edit5: TEdit;
    Edit3: TEdit;
    FromDate: TDateTimePicker;
    ToDate: TDateTimePicker;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PDJSillyLabel5Click(Sender: TObject);
    procedure PDJSillyLabel4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure PDJSillyLabel8Click(Sender: TObject);
    procedure PDJSillyLabel1Click(Sender: TObject);
    procedure PDJSillyLabel2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  GroupCollectionForm: TGroupCollectionForm;

implementation

uses Data, StatusUpdate, ModTools;

Var
Lst : Text ;

{$R *.dfm}

procedure TGroupCollectionForm.BitBtn1Click(Sender: TObject);
begin
  WIth BillingData do
   begin
     Collection.Close;
     GroupColl.Close;

     Try
     GroupColl.Exclusive := True;
     GroupColl.EmptyTable;
     except
     ShowMessage('Group Collection File is being used by another terminal');
     exit;
     end;

     GroupColl.Open;

     CollSummQuery.ExecSQL;

     While not CollSummQuery.Eof do
       begin
         GroupColl.AppendRecord( [CollSummQuery.FieldValues['DatePaid'],
                                  CollSummQuery.FieldValues['DateRemitted'],
                                  CollSummQuery.FieldValues['EncoderCode'],
                                  CollSummQuery.FieldValues['CollectorCode'],
                                  CollSummQuery.FieldValues['Sundries'],
                                  CollSummQuery.FieldValues['TotalAmount'],
                                  CollSummQuery.FieldValues['TotalAccounts'],
                                  CollSummQuery.FieldValues['Posted'] ]);
         CollSummQuery.Next
       end;
     Collection.IndexName := 'collectionfilter';
     Collection.Open;
   end;
end;

procedure TGroupCollectionForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   BillingData.GroupColl.Close;
   GroupCollectionForm := Nil;
end;

procedure TGroupCollectionForm.PDJSillyLabel5Click(Sender: TObject);
begin
 Panel2.Visible := False;
end;

procedure TGroupCollectionForm.PDJSillyLabel4Click(Sender: TObject);
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
writeln(lst,'COLLECTION DATE : ',DateToStr(EncoderCollectionForm.DatePaid.Date));
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
     Gauge1.AddProgress(1);

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
          Application.ProcessMessages;

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
If LineCount >= 30 then Write(Lst,#12);
Writeln(lst);
Writeln(lst);
writeln(lst,'Report Name     : COLLECTION REPORT - '+Edit1.Text);
writeln(lst,'COLLECTION DATE : ',DateToStr(EncoderCollectionForm.DatePaid.Date));
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
CloseFile(Lst);
ShowMessage('Done.');
Gauge1.Progress := 0;
Panel2.Visible := False;
end;


procedure TGroupCollectionForm.BitBtn2Click(Sender: TObject);
begin
  Panel2.left := 164;
  Panel2.Top  := 110;

  Panel2.Visible := True;
  Edit1.SetFocus;
end;

procedure TGroupCollectionForm.BitBtn3Click(Sender: TObject);
begin
  With BillingData do
  begin
   GroupColl.Filter := 'DatePaid >= '+QuotedStr(DateToStr(FromDate.Date))+ ' AND '+
                       'DatePaid <= '+QuotedStr(DateToStr(ToDate.Date));
   GroupColl.Filtered := True;
  end;
end;

procedure TGroupCollectionForm.BitBtn4Click(Sender: TObject);
begin
  With BillingData do
  begin
   GroupColl.Filter   := '';
   GroupColl.Filtered := False;
  end;

end;


procedure TGroupCollectionForm.BitBtn6Click(Sender: TObject);
begin
  Panel9.left    := 109;
  Panel9.top     := 66;
  Panel9.Visible := True;
end;

procedure TGroupCollectionForm.PDJSillyLabel8Click(Sender: TObject);
type
TPtr = ^TAging;
TAging = Record
TArea                                           : Array[1..400] of String[3];
TBook                                           : Array[1..400] of String[3];
TCurrentBills                                   : Array[1..400] of Integer;
TCurrentAmount                                  : Array[1..400] of Currency;
T30DaysBills                                    : Array[1..400] of Integer;
T30DaysAmount                                   : Array[1..400] of Currency;
T60DaysBills                                    : Array[1..400] of Integer;
T60DaysAmount                                   : Array[1..400] of Currency;
TOver60DaysBills                                : Array[1..400] of Integer;
TOver60DaysAmount                               : Array[1..400] of Currency;
TBills                                          : Array[1..400] of Integer;
TAmount                                         : Array[1..400] of Currency;
end;

Var
TAgingRecord                                    : TPtr;
PCurrentBills                                   : Integer;
PCurrentAmount                                  : Currency;
P30DaysBills                                    : Integer;
P30DaysAmount                                   : Currency;
P60DaysBills                                    : Integer;
P60DaysAmount                                   : Currency;
POver60DaysBills                                : Integer;
POver60DaysAmount                               : Currency;
PBills                                          : Integer;
PAmount                                         : Currency;

GCurrentBills                                   : Integer;
GCurrentAmount                                  : Currency;
G30DaysBills                                    : Integer;
G30DaysAmount                                   : Currency;
G60DaysBills                                    : Integer;
G60DaysAmount                                   : Currency;
GOver60DaysBills                                : Integer;
GOver60DaysAmount                               : Currency;
GBills                                          : Integer;
GAmount                                         : Currency;

I,R                                             : Integer ;
BMArray                                         : Array[1..3] of String[04];
BillMonthArray                                  : Array[1..3] of String[4];
Mon,Yr                                          : Word;
MonStr,YrStr                                    : String[2];
AreaSW                                          : String[3];
PageCount                                       : Integer;
LineCount                                       : Integer;
Check                                           : Integer;
Day                                             : Real;
DayStr                                          : String[3];
DI                                              : Word;

Function IMon(A : String) : String;
Var M : String;
begin
 If (Copy(A,3,1) = '0') then
 M := '20' + Copy(A,3,4) + Copy(A,1,2) else
 M := '19' + Copy(A,3,4) + Copy(A,1,2);
 IMon := M;
end;

begin
  If BillMonth.Text = '' then
    begin
      ShowMessage('Please enter Current Bill Month');
      Exit;
    end;

  New(TAgingRecord);
  FillChar(TAgingRecord^,SizeOf(TAgingRecord^),#0);

  Try
  AssignFile(Lst,'LPT1');
  Rewrite(Lst);
  except
   ShowMessage('Printer not Ready');
   Exit;
  end;

  With BillingData do
   begin
    Vicinity.Active     := True;
    Vicinity.Filter     := '';
    Vicinity.Filtered   := False;
    Vicinity.IndexName  := 'AreaBook';
    Vicinity.First;
    R := 0;

    While not Vicinity.Eof do
     begin
      With TAgingRecord^ do
       begin
        Inc(R);
        TArea[R] := VicinityArea.Text;
        TBook[R] := VicinityBook.Text;
       end;
     Vicinity.Next;
     end;
   end;

  Val(Copy(BillMonth.Text,1,2),Mon,Check);
  Val(Copy(BillMonth.Text,3,2),Yr,Check);
  FillChar(BillMonthArray,SizeOf(BillMonthArray),#0);

  For I := 1 to 3 do
   begin

    Dec(Mon);
    If Mon < 1 then
      begin
        Mon := 12;
        Dec(yr);
      end;

   Str(Mon,MonStr);
   Str(Yr,YrStr);

   MonStr := JustStr(MonStr,'0',2,1);
   YrStr  := JustStr(YrStr,'0',2,1);

   BillMonthArray[I] := MonStr + YrStr;
   end;

  With BillingData,TAgingRecord^ do

   begin
    D.Open;
    D.Edit;
    DDateFrom.AsDateTime := FromDate.DateTime;
    DDateTo.AsDateTime   := ToDate.DateTime;
    D.Post;
    D.Close;

    CQ.Close;
    CQ.ExecSql;
    CQ.Open;

    CQ.First;
    While not CQ.Eof do
     begin

     If IMon(CQBillMonth.Text) > IMon(BillMonth.Text) then
      begin
       CQ.Next;
       Continue;
      end;

      DI := 0;

      Day := 61;
      If CQBillMonth.Text = BillMonth.Text    then Day := 0;
      If CQBillMonth.Text = BillMonthArray[1] then Day := 30;
      If CQBillMonth.Text = BillMonthArray[2] then Day := 60;
      If CQBillMonth.Text = BillMonthArray[3] then Day := 61;

      If Day = 30 then
        begin
         DayStr := '30';
         DI     := 1;
        end;

      If Day = 60 then
        begin
         DayStr := '60';
         DI     := 2;
        end;

      If (Day > 60) then
        begin
         DayStr := '>60';
         DI     := 3;
        end;

      For I := 1 to R do
        begin
         If ((CQArea.Text = TArea[I]) and (CQBook.Text = TBook[I])) or
            (('0'+CQArea.Text = TArea[I]) and ('0'+CQBook.Text = TBook[I])) then
            begin
              TBills[I]  := TBills[I] + CQTotalAccount.AsInteger;
              TAmount[I] := TAmount[I] + CQTotalAmount.AsCurrency;

                If DI = 0 then
                  begin
                    TCurrentBills[I]     := TCurrentBills[I] + CQTotalAccount.AsInteger;
                    TCurrentAmount[I]    := TCurrentAmount[I] + CQTotalAmount.AsCurrency;
                  end;

                If DI = 1 then
                  begin
                    T30DaysBills[I]      := T30DaysBills[I] + CQTotalAccount.AsInteger;
                    T30DaysAmount[I]     := T30DaysAmount[I] + CQTotalAmount.AsCurrency;
                  end;

                If DI = 2 then
                  begin
                    T60DaysBills[I]      := T60DaysBills[I] + CQTotalAccount.AsInteger;
                    T60DaysAmount[I]     := T60DaysAmount[I] + CQTotalAmount.AsCurrency;
                  end;

                If DI = 3 then
                  begin
                    TOver60DaysBills[I]  := TOver60DaysBills[I] + CQTotalAccount.AsInteger;
                    TOver60DaysAmount[I] := TOver60DaysAmount[I] + CQTotalAmount.AsCurrency;
                  end;
            end;
        end;

     CQ.Next;
     end;

  ShowMessage('Set Printer ...');

  PCurrentBills     := 0;
  PCurrentAmount    := 0;
  P30DaysBills      := 0;
  P30DaysAmount     := 0;
  P60DaysBills      := 0;
  P60DaysAmount     := 0;
  POver60DaysBills  := 0;
  POver60DaysAmount := 0;
  PBills            := 0;
  PAmount           := 0;

  GCurrentBills     := 0;
  GCurrentAmount    := 0;
  G30DaysBills      := 0;
  G30DaysAmount     := 0;
  G60DaysAmount     := 0;
  GOver60DaysBills  := 0;
  GOver60DaysAmount := 0;
  GBills            := 0;
  GAmount           := 0;

  PageCount         := 0;
  LineCount         := 0;

  Write(Lst,#18,#27+'P');
  Writeln(Lst,'Page ',PageCount);
  Writeln(lst,#27+'E','SUMMARY OF COLLECTION WITH AGING',#27+'F');
  Writeln(lst,'Current Bill Month :',MonString(BillMonth.Text));
  Writeln(Lst,'Print Date         :',DateToStr(Date));
  Write(Lst,#15);
  Writeln(Lst,'------------------------------------------------------------------------------------------------------------------');
  Writeln(Lst,'|AR.|Bk.|___CURRENT BILLS____|______30 DAYS_______|______60 DAYS_______|____OVER 60 DAYS____|_______TOTAL________|');
  Writeln(Lst,'|   |   |Bills        Amount |Bills        Amount |Bills        Amount |Bills        Amount |Bills        Amount |');
  Writeln(Lst,'------------------------------------------------------------------------------------------------------------------');
  AreaSW := '';

  For I := 1 to R do
   begin

    If TAmount[I] = 0 then Continue;

    If AreaSW = '' then AreaSW := TArea[I];

    If TArea[I] <> AreaSW then
     begin
      AreaSW := TArea[I];
      Write(Lst,#27+'E');
      Writeln(Lst,'|Area T |',
                      PCurrentBills:5,
                      Format(PCurrentAmount,'##,###,###,##'),'|',
                      P30DaysBills:5,
                      Format(P30DaysAmount,'##,###,###,##'),'|',
                      P60DaysBills:5,
                      Format(P60DaysAmount,'##,###,###,##'),'|',
                      POver60DaysBills:5,
                      Format(POver60DaysAmount,'##,###,###,##'),'|',
                      PBills:5,
                      Format(PAmount,'##,###,###,##'),'|');
      Writeln(Lst,'------------------------------------------------------------------------------------------------------------------');
      Write(Lst,#27+'F');
      Inc(LineCount,2);

      PCurrentBills     := 0;
      PCurrentAmount    := 0;
      P30DaysBills      := 0;
      P30DaysAmount     := 0;
      P60DaysBills      := 0;
      P60DaysAmount     := 0;
      POver60DaysBills  := 0;
      POver60DaysAmount := 0;
      PBills            := 0;
      PAmount           := 0;
     end;

      Writeln(Lst,'|',TArea[I],'|',
                      TBook[I],'|',
                      TCurrentBills[I]:5,
                      Format(TCurrentAmount[I],'##,###,###,##'),'|',
                      T30DaysBills[I]:5,
                      Format(T30DaysAmount[I],'##,###,###,##'),'|',
                      T60DaysBills[I]:5,
                      Format(T60DaysAmount[I],'##,###,###,##'),'|',
                      TOver60DaysBills[I]:5,
                      Format(TOver60DaysAmount[I],'##,###,###,##'),'|',
                      TBills[I]:5,
                      Format(TAmount[I],'##,###,###,##'),'|');

      PCurrentBills     := PCurrentBills     + TCurrentBills[I];
      PCurrentAmount    := PCurrentAmount    + TCurrentAmount[I];
      P30DaysBills      := P30DaysBills      + T30DaysBills[I];
      P30DaysAmount     := P30DaysAmount     + T30DaysAmount[I];
      P60DaysBills      := P60DaysBills      + T60DaysBills[I];
      P60DaysAmount     := P60DaysAmount     + T60DaysAmount[I];
      POver60DaysBills  := POver60DaysBills  + TOver60DaysBills[I];
      POver60DaysAmount := POver60DaysAmount + TOver60DaysAmount[I];
      PBills            := PBills            + TBills[I];
      PAmount           := PAmount           + TAmount[I];

      GCurrentBills     := GCurrentBills     + TCurrentBills[I];
      GCurrentAmount    := GCurrentAmount    + TCurrentAmount[I];
      G30DaysBills      := G30DaysBills      + T30DaysBills[I];
      G30DaysAmount     := G30DaysAmount     + T30DaysAmount[I];
      G60DaysBills      := G60DaysBills      + T60DaysBills[I];
      G60DaysAmount     := G60DaysAmount     + T60DaysAmount[I];
      GOver60DaysBills  := GOver60DaysBills  + TOver60DaysBills[I];
      GOver60DaysAmount := GOver60DaysAmount + TOver60DaysAmount[I];
      GBills            := GBills            + TBills[I];
      GAmount           := GAmount           + TAmount[I];

   Inc(LineCount);
   If LineCount >= 50 then
    begin
      LineCount := 0;
      Inc(PageCount);
      Writeln(Lst,'------------------------------------------------------------------------------------------------------------------');
      Write(Lst,#12);
      Write(Lst,#18,#27+'P');
      Writeln(Lst,'Page ',PageCount);
      Writeln(lst,'SUMMARY OF COLLECTION WITH AGING');
      Writeln(lst,'Current Bill Month :',MonString(BillMonth.Text));
      Writeln(Lst,'Print Date         :',DateToStr(Date));
      Write(Lst,#15);
      Writeln(Lst,'------------------------------------------------------------------------------------------------------------------');
      Writeln(Lst,'|AR.|Bk.|___CURRENT BILLS____|______30 DAYS_______|______60 DAYS_______|____OVER 60 DAYS____|_______TOTAL________|');
      Writeln(Lst,'|   |   |Bills        Amount |Bills        Amount |Bills        Amount |Bills        Amount |Bills        Amount |');
      Writeln(Lst,'------------------------------------------------------------------------------------------------------------------');
    end;

   end;
  Writeln(Lst,'------------------------------------------------------------------------------------------------------------------');
  Writeln(Lst,'|Grand  |',
                  GCurrentBills:5,
                  Format(GCurrentAmount,'##,###,###,##'),'|',
                  G30DaysBills:5,
                  Format(G30DaysAmount,'##,###,###,##'),'|',
                  G60DaysBills:5,
                  Format(G60DaysAmount,'##,###,###,##'),'|',
                  GOver60DaysBills:5,
                  Format(GOver60DaysAmount,'##,###,###,##'),'|',
                  GBills:5,
                  Format(GAmount,'##,###,###,##'),'|');
  Write(Lst,#27+'F');
  Writeln(Lst,'------------------------------------------------------------------------------------------------------------------');
  Writeln(lst,#18);
  Writeln(lst,'Prepared by:               Chccked by:                Noted by:                ');
  Writeln(lst);
  Writeln(lst,JustStr(PreparedBy.Text,' ',25,0),'  ',
              JustStr(CheckedBy.Text,' ',25,0),'  ',
              JustStr(NotedBy.Text,' ',25,0));
  Writeln(lst,'Billing Section Head       Chief, Billing /LAN Div.   Consumers'' Account Mgr.');
  Write(Lst,#12);
  CloseFile(Lst);
  ShowMessage('Done');
 end;
 Dispose(TAgingRecord);
end;

procedure TGroupCollectionForm.PDJSillyLabel1Click(Sender: TObject);
Var
RRateCode                                       : Array[1..6] of String[1];
RRateStr                                        : Array[1..6] of String[15];
RBillsCurrent                                   : Array[1..6] of Word;
RAmountCurrent                                  : Array[1..6] of Currency;
RTransformerRentalCurrent                       : Currency;
RUCNPCSDCurrent                                 : Currency;
RUCNPCSCCCurrent                                : Currency;
RUCDUSCCCurrent                                 : Currency;
RUCMECurrent                                    : Currency;
RUCETRCurrent                                   : Currency;
RUCECCurrent                                    : Currency;
RUCCSRCurrent                                   : Currency;
RTotalCurrent                                   : Currency;
RNetCurrent                                     : Currency;


RBillsArrears                                   : Array[1..6] of Word;
RAmountArrears                                  : Array[1..6] of Currency;
RTransformerRentalArrears                       : Currency;
RUCNPCSDArrears                                 : Currency;
RUCNPCSCCArrears                                : Currency;
RUCDUSCCArrears                                 : Currency;
RUCMEArrears                                    : Currency;
RUCETRArrears                                   : Currency;
RUCECArrears                                    : Currency;
RUCCSRArrears                                   : Currency;
RTotalArrears                                   : Currency;
RNetArrears                                     : Currency;

R                                               : Integer;

Function IMon(A : String) : String;
Var M : String;
begin
 If (Copy(A,3,1) = '0') then
 M := '20' + Copy(A,3,4) + Copy(A,1,2) else
 M := '19' + Copy(A,3,4) + Copy(A,1,2);
 IMon := M;
end;

begin
  If BillMonth.Text = '' then
    begin
      ShowMessage('Please enter Current Bill Month');
      Exit;
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
    D.Open;
    D.Edit;
    DDateFrom.AsDateTime := FromDate.DateTime;
    DDateTo.AsDateTime   := ToDate.DateTime;
    D.Post;
    D.Close;

    CQ.Close;
    CQ.ExecSql;
    CQ.Open;

    For R := 1 to 6 do
     begin
      RRateStr[R] := '';
      RBillsCurrent[R]   := 0;
      RAmountCurrent[R]  := 0;
      RBillsArrears[R]   := 0;
      RAmountArrears[R]  := 0;
     end;

     RRateStr[1]  := 'BAPA           ';
     RRateStr[2]  := 'Residential    ';
     RRateStr[3]  := 'Commercial     ';
     RRateStr[4]  := 'Industrial     ';
     RRateStr[5]  := 'Street Lights  ';
     RRateStr[6]  := 'Public Bldgs   ';

     RRateCode[1] := 'B';
     RRateCode[2] := 'R';
     RRateCode[3] := 'C';
     RRateCode[4] := 'I';
     RRateCode[5] := 'S';
     RRateCode[6] := 'P';

    RTransformerRentalCurrent   := 0;
    RUCNPCSDCurrent             := 0;
    RUCNPCSCCCurrent            := 0;
    RUCDUSCCCurrent             := 0;
    RUCMECurrent                := 0;
    RUCETRCurrent               := 0;
    RUCECCurrent                := 0;
    RUCCSRCurrent               := 0;
    RTotalCurrent               := 0;

    RTransformerRentalArrears   := 0;
    RUCNPCSDArrears             := 0;
    RUCNPCSCCArrears            := 0;
    RUCDUSCCArrears             := 0;
    RUCMEArrears                := 0;
    RUCETRArrears               := 0;
    RUCECArrears                := 0;
    RUCCSRArrears               := 0;
    RTotalArrears               := 0;

    Gauge1.MinValue := 0;
    Gauge1.MaxValue := 0;
    Gauge1.Progress := 0;

    CQ.First;
    While not CQ.Eof do
    begin
    Gauge1.AddProgress(1);
    Application.ProcessMessages;

    For R := 1 to 6 do
     begin
      If RRateCode[R] = CQSequence.Text then
        begin
        If IMon(CQBillMonth.Text) <= IMon(BillMonth.Text) then
          begin

           If Copy(CQBillMonth.Text,3,2) = Copy(BillMonth.Text,3,2) then
            begin
              RBillsCurrent[R]            := RBillsCurrent[R]            + CQTotalAccount.AsInteger;
              RAmountCurrent[R]           := RAmountCurrent[R]           + CQTotalAmount.AsCurrency;
              RTotalCurrent               := RTotalCurrent               + CQTotalAmount.AsCurrency;
              RTransformerRentalCurrent   := RTransformerRentalCurrent   + CQTTransformerRental.AsCurrency;
              RUCNPCSDCurrent             := RUCNPCSDCurrent             + CQTUCNPCSD.AsCurrency;
              RUCNPCSCCCurrent            := RUCNPCSDCurrent             + CQTUCNPCSD.AsCurrency;
              RUCDUSCCCurrent             := RUCDUSCCCurrent             + CQTUCDUSCC.AsCurrency;
              RUCMECurrent                := RUCMECurrent                + CQTUCME.AsCurrency;
              RUCETRCurrent               := RUCETRCurrent               + CQTUCETR.AsCurrency;
              RUCECCurrent                := RUCECCurrent                + CQTUCEC.AsCurrency;
              RUCCSRCurrent               := RUCCSRCurrent               + CQTVAT.AsCurrency;
            end
            else
            begin
              RBillsArrears[R]            := RBillsArrears[R]            + CQTotalAccount.AsInteger;
              RAmountArrears[R]           := RAmountArrears[R]           + CQTotalAmount.AsCurrency;
              RTotalArrears               := RTotalArrears               + CQTotalAmount.AsCurrency;
              RTransformerRentalArrears   := RTransformerRentalArrears   + CQTTransformerRental.AsCurrency;
              RUCNPCSDArrears             := RUCNPCSDArrears             + CQTUCNPCSD.AsCurrency;
              RUCNPCSCCArrears            := RUCNPCSDArrears             + CQTUCNPCSD.AsCurrency;
              RUCDUSCCArrears             := RUCDUSCCArrears             + CQTUCDUSCC.AsCurrency;
              RUCMEArrears                := RUCMEArrears                + CQTUCME.AsCurrency;
              RUCETRArrears               := RUCETRArrears               + CQTUCETR.AsCurrency;
              RUCECArrears                := RUCECArrears                + CQTUCEC.AsCurrency;
              RUCCSRArrears               := RUCCSRArrears               + CQTVAT.AsCurrency;
            end;
          end;
        end;
     end;
    CQ.Next;
    end;

    RNetCurrent  := RTotalCurrent - (RTransformerRentalCurrent   +
                                     RUCNPCSDCurrent             +
                                     RUCNPCSCCCurrent            +
                                     RUCDUSCCCurrent             +
                                     RUCMECurrent                +
                                     RUCETRCurrent               +
                                     RUCECCurrent                +
                                     RUCCSRCurrent);

    RNetArrears  := RTotalArrears - (RTransformerRentalArrears   +
                                     RUCNPCSDArrears             +
                                     RUCNPCSCCArrears            +
                                     RUCDUSCCArrears             +
                                     RUCMEArrears                +
                                     RUCETRArrears               +
                                     RUCECArrears                +
                                     RUCCSRArrears);

  ShowMessage('Set Printer ...');

  Write(Lst,#18,#27+'P');
  Writeln(Lst);
  Writeln(Lst);
  Writeln(Lst);
  Writeln(Lst);
  Writeln(lst,'SUMMARY OF COLLECTION BY CONSUMER TYPE ');
  Writeln(lst,'Current Bill Month :',MonString(BillMonth.Text));
  Writeln(Lst,'Print Date         :',DateToStr(Date));
  Writeln(Lst);
  Writeln(Lst,'-------------------------------------------------------------------------------');
  Writeln(Lst,'|               |________CURRENT YEAR__________|________PREVIOUS YEAR_________|');
  Writeln(Lst,'| Consumer Type |    Total Bills        Amount |    Total Bills        Amount |');
  Writeln(Lst,'-------------------------------------------------------------------------------');
  For R := 1 to 6 do
   begin
    Writeln(Lst,'|',RRateStr[R],'|',RBillsCurrent[R]:15,Format(RAmountCurrent[R],'##,###,###.##'),
                                '|',RBillsArrears[R]:15,Format(RAmountArrears[R],'##,###,###.##'),'|');
   end;
  Writeln(Lst,'-------------------------------------------------------------------------------');
  Writeln(Lst,'|Gross Total     ',RBillsCurrent[1]+
                                  RBillsCurrent[2]+
                                  RBillsCurrent[3]+
                                  RBillsCurrent[4]+
                                  RBillsCurrent[5]+
                                  RBillsCurrent[6]:15,
                                  Format(RTotalCurrent,'##,###,###.##'),'|',
                                  RBillsArrears[1]+
                                  RBillsArrears[2]+
                                  RBillsArrears[3]+
                                  RBillsArrears[4]+
                                  RBillsArrears[5]+
                                  RBillsArrears[6]:15,
                                  Format(RTotalArrears,'##,###,###.##'),'|');
  Writeln(Lst,'-------------------------------------------------------------------------------');
  Writeln(Lst,'LESS');
  Writeln(Lst,'|Transformer Rental            |',Format(RTransformerRentalCurrent,'##,###,###.##'),'|               ',
                                                 Format(RTransformerRentalArrears,'##,###,###.##'),'|');
  Writeln(Lst,'|NPC Stranded Debts            |',Format(RUCNPCSDCurrent,'##,###,###.##'),'|               ',
                                                 Format(RUCNPCSDArrears,'##,###,###.##'),'|');
  Writeln(Lst,'|NPC Stranded Contract Cost    |',Format(RUCNPCSCCCurrent,'##,###,###.##'),'|               ',
                                                 Format(RUCNPCSCCArrears,'##,###,###.##'),'|');
  Writeln(Lst,'|DU Stranded Contract Cost     |',Format(RUCDUSCCCurrent,'##,###,###.##'),'|               ',
                                                 Format(RUCDUSCCArrears,'##,###,###.##'),'|');
  Writeln(Lst,'|Missionary Electrification    |',Format(RUCMECurrent,'##,###,###.##'),'|               ',
                                                 Format(RUCMEArrears,'##,###,###.##'),'|');
  Writeln(Lst,'|Equal of Taxes and Royalties  |',Format(RUCETRCurrent,'##,###,###.##'),'|               ',
                                                 Format(RUCETRArrears,'##,###,###.##'),'|');
  Writeln(Lst,'|Environment                   |',Format(RUCECCurrent,'##,###,###.##'),'|               ',
                                                 Format(RUCECArrears,'##,###,###.##'),'|');
  Writeln(Lst,'|Expanded Value Added Tax      |',Format(RUCCSRCurrent,'##,###,###.##'),'|               ',
                                                 Format(RUCCSRArrears,'##,###,###.##'),'|');
  Writeln(Lst,'-------------------------------------------------------------------------------');
  Writeln(Lst,'|Grand Total                   |',Format(RNetCurrent,'##,###,###.##'),'|               ',
                                                Format(RNetArrears,'##,###,###.##'),'|');

  Writeln(Lst,'-------------------------------------------------------------------------------');
  Writeln(Lst);
  Writeln(lst);
  Writeln(lst,'Prepared by:               Chccked by:                Noted by:                ');
  Writeln(lst);
  Writeln(lst,JustStr(PreparedBy.Text,' ',25,0),'  ',
              JustStr(CheckedBy.Text,' ',25,0),'  ',
              JustStr(NotedBy.Text,' ',25,0));
  Writeln(lst,'Billing Section Head       Chief, Billing /LAN Div.   Consumers'' Account Mgr.');


  Write(Lst,#12);

CQ.Close;
ShowMessage('Done.');
Gauge1.Progress := 0;
CloseFile(Lst);
end;
end;

procedure TGroupCollectionForm.PDJSillyLabel2Click(Sender: TObject);
begin
  Panel9.Visible := False;
end;

end.
