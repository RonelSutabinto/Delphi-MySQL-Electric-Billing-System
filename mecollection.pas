unit mecollection;

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
  ComCtrls,
  DateUtils,
  ExtCtrls,
  DB,
  MemDS,
  DBAccess,
  MyAccess,
  DsFancyButton,
  Grids,
  DBGrids,
  CRGrid,
  QuickRpt,
  QRCtrls;

type
  TMonthEndCollectionForm = class(TForm)
    ReportType: TComboBox;
    DateFrom: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    DateTo: TDateTimePicker;
    Label3: TLabel;
    Label4: TLabel;
    MonthYear: TEdit;
    Label5: TLabel;
    Bevel1: TBevel;
    MECollection: TMyQuery;
    CRDBGrid1: TCRDBGrid;
    DSMeCollection: TDataSource;
    DsFancyButton1: TDsFancyButton;
    DsFancyButton2: TDsFancyButton;
    DsFancyButton3: TDsFancyButton;
    DsFancyButton5: TDsFancyButton;
    DsFancyButton7: TDsFancyButton;
    AP: TMyQuery;
    MECollectionID: TIntegerField;
    MECollectionCollectionType: TIntegerField;
    MECollectionCollectionName: TStringField;
    MECollectionArea: TStringField;
    MECollectionDistrict: TStringField;
    MECollectionAddress: TStringField;
    MECollectionMonthYear: TStringField;
    MECollectionBeginArrear: TFloatField;
    MECollectionBeginCurrent: TFloatField;
    MECollectionAdjDebitArrear: TFloatField;
    MECollectionAdjCreditArrear: TFloatField;
    MECollectionAdjDebitCurrent: TFloatField;
    MECollectionAdjCreditCurrent: TFloatField;
    MECollectionNetArrears: TFloatField;
    MECollectionNetCurrent: TFloatField;
    MECollectionCollectionArrear: TFloatField;
    MECollectionCollectionCurrent: TFloatField;
    MECollectionBalanceArrear: TFloatField;
    MECollectionBalanceCurrent: TFloatField;
    MECollectionPercentArea: TFloatField;
    MECollectionPercentDistrict: TFloatField;
    Memo1: TMemo;
    CurrentBill: TMyQuery;
    SummAdjArrears: TMyQuery;
    SummAdjCurrent: TMyQuery;
    SummCollArrears: TMyQuery;
    SummCollCurrent: TMyQuery;
    DTCollection: TMyQuery;
    DSDTCollection: TDataSource;
    MECollectionpercent: TFloatField;
    MECollectionnet: TCurrencyField;
    MECollectioncollection: TCurrencyField;
    DTCollectionDistrict: TStringField;
    DTCollectioncollectiontype: TIntegerField;
    DTCollectionMonthYear: TStringField;
    DTCollectionBeginArrear: TFloatField;
    DTCollectionBeginCurrent: TFloatField;
    DTCollectionAdjDebitArrear: TFloatField;
    DTCollectionAdjCreditArrear: TFloatField;
    DTCollectionAdjDebitCurrent: TFloatField;
    DTCollectionAdjCreditCurrent: TFloatField;
    DTCollectionNetArrears: TFloatField;
    DTCollectionNetCurrent: TFloatField;
    DTCollectionCollectionArrear: TFloatField;
    DTCollectionCollectionCurrent: TFloatField;
    DTCollectionBalanceArrear: TFloatField;
    DTCollectionBalanceCurrent: TFloatField;
    DTCollectionnet: TCurrencyField;
    DTCollectioncollection: TCurrencyField;
    DTCollectionpercent: TFloatField;
    GT: TMyQuery;
    DST: TDataSource;
    DTCollectionadjdebit: TCurrencyField;
    DTCollectionadjcredit: TCurrencyField;
    MECollectionadjdebit: TCurrencyField;
    MECollectionadjcredit: TCurrencyField;
    GTcollectiontype: TIntegerField;
    GTMonthYear: TStringField;
    GTBeginArrear: TFloatField;
    GTBeginCurrent: TFloatField;
    GTAdjDebitArrear: TFloatField;
    GTAdjCreditArrear: TFloatField;
    GTAdjDebitCurrent: TFloatField;
    GTAdjCreditCurrent: TFloatField;
    GTNetArrears: TFloatField;
    GTNetCurrent: TFloatField;
    GTCollectionArrear: TFloatField;
    GTCollectionCurrent: TFloatField;
    GTBalanceArrear: TFloatField;
    GTBalanceCurrent: TFloatField;
    GTnet: TCurrencyField;
    GTcollection: TCurrencyField;
    GTpercent: TCurrencyField;
    GTadjdebit: TCurrencyField;
    GTadjcredit: TCurrencyField;
    Panel1: TPanel;
    CollRep: TQuickRep;
    TitleBand1: TQRBand;
    QRLabel1: TQRLabel;
    ReportName: TQRLabel;
    Month: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRLabel19: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    QRDBText31: TQRDBText;
    QRDBText32: TQRDBText;
    QRDBText33: TQRDBText;
    QRLabel21: TQRLabel;
    QRDBText12: TQRDBText;
    ColumnHeaderBand1: TQRBand;
    QRShape7: TQRShape;
    QRShape6: TQRShape;
    QRShape5: TQRShape;
    QRShape4: TQRShape;
    QRShape3: TQRShape;
    QRShape2: TQRShape;
    QRShape1: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    SummaryBand1: TQRBand;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRLabel20: TQRLabel;
    QRLabel22: TQRLabel;
    DsFancyButton4: TDsFancyButton;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DateFromLB: TDateTimePicker;
    DateToLB: TDateTimePicker;
    LateBill: TMyQuery;
    MECollectionBeginLateBill: TFloatField;
    DTCollectionBeginLateBill: TFloatField;
    DTCollectionTotalCurrent: TCurrencyField;
    MECollectionTotalCurrent: TCurrencyField;
    GTBeginLateBill: TFloatField;
    GTTotalCurrent: TCurrencyField;
    procedure FormCreate(Sender: TObject);
    procedure DsFancyButton3Click(Sender: TObject);
    procedure DsFancyButton1Click(Sender: TObject);
    procedure DsFancyButton7Click(Sender: TObject);
    procedure ReportTypeSelect(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DsFancyButton2Click(Sender: TObject);
    procedure MECollectionCalcFields(DataSet: TDataSet);
    procedure DTCollectionCalcFields(DataSet: TDataSet);
    procedure GTCalcFields(DataSet: TDataSet);
    procedure DsFancyButton5Click(Sender: TObject);
    procedure DsFancyButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MonthEndCollectionForm: TMonthEndCollectionForm;

implementation

uses Data, ModTools;

{$R *.dfm}

procedure TMonthEndCollectionForm.FormCreate(Sender: TObject);
begin
  DoubleBuffered := True;
end;

procedure TMonthEndCollectionForm.DsFancyButton3Click(Sender: TObject);
begin
  MECollection.Close;
  MECollection.SQL.Clear;
  MECollection.SQL.Add('select * from mecollection');
  MECollection.SQL.Add('    where monthyear = :monthyear and');
  MECollection.SQL.Add('          collectiontype = :collectiontype');
  MECollection.SQL.Add('order by area');
  MECollection.ParamByName('MonthYear').Text           := MonthYear.Text;
  MECollection.ParamByName('CollectionType').AsInteger := ReportType.ItemIndex;
  MECollection.Open;

  If MECollection.IsEmpty then
    begin
     MessageDlg('That month year does not ', mtWarning, [mbOK], 0);
     MECollection.Close;
    end;

end;

procedure TMonthEndCollectionForm.DsFancyButton1Click(Sender: TObject);
Var I        : Integer;
    NowMonth : TDate;

Function PrevMonthYear(MonYear : String) : String;
Var Yr,Mo : Integer;
begin
 Yr := StrToInt(Copy(MonYear,3,2));
 Mo := StrToInt(Copy(MonYear,1,2));

 Dec(Mo);
 If Mo < 1 then
  begin
    Mo := 12;
    Dec(Yr);
  end;

PrevMonthYear := JustStr(IntToStr(Mo),'0',2,1)+JustStr(IntToStr(Yr),'0',2,1);
end;

begin
  MECollection.Close;
  MECollection.SQL.Clear;
  MECollection.SQL.Add('select * from mecollection');
  MECollection.SQL.Add('    where monthyear = :monthyear');
  MECollection.ParamByName('monthyear').Text := MonthYear.Text;
  MECollection.Open;

  If not MECollection.IsEmpty then
    begin
      MessageDlg('That Month End Collection Report already exist...', mtError, [mbOK], 0);
      MECollection.Close;
      exit;
    end;

  MECollection.Close;

  Try
  NowMonth := StrToDate(Copy(MonthYear.text,1,2)+'/01/'+Copy(MonthYear.Text,3,2));
  except
  MessageDlg('Input valid billmonth please...', mtWarning, [mbOK], 0);
  exit;
  end;

  Memo1.Clear;

  // process starts here,,,
  // first we clean up the tables

  AP.Close;
  AP.SQL.Clear;
  AP.SQL.Add('truncate summbill');
  AP.Execute;

  AP.SQL.Clear;
  AP.SQL.Add('truncate summlatebill');
  AP.Execute;

  AP.SQL.Clear;
  AP.SQL.Add('truncate summadjarrears');
  AP.Execute;

  AP.SQL.Clear;
  AP.SQL.Add('truncate summadjcurrent');
  AP.Execute;

  AP.SQL.Clear;
  AP.SQL.Add('truncate summcollarrears');
  AP.Execute;

  AP.SQL.Clear;
  AP.SQL.Add('truncate summcollcurrent');
  AP.Execute;


  // next we get the current sales

  CurrentBill.Close;
  CurrentBill.ParamByName('billmonth').Text := MonthYear.Text;
  CurrentBill.Execute;
  Memo1.Lines.Add('Current Bill rows '+IntToStr(CurrentBill.RowsAffected));

  LateBill.Close;
  LateBill.ParamByName('datefrom').AsDate := DateFromLB.Date;
  LateBill.ParamByName('dateto').AsDate   := DateToLB.Date;
  LateBill.Execute;
  Memo1.Lines.Add('Late Bill rows '+IntToStr(LateBill.RowsAffected));

  // then adjustment arrears

  SummAdjArrears.Close;
  SummAdjArrears.ParamByName('datefrom').AsDate  := DateFrom.Date;
  SummAdjArrears.ParamByName('dateto').AsDate    := DateTo.Date;
  SummAdjArrears.ParamByName('billmonth').Text   := MonthYear.Text;
  SummAdjArrears.Execute;
  Memo1.Lines.Add('Adjustment Arrears rows '+IntToStr(SummAdjArrears.RowsAffected));


  // then adjustment for the current billing month

  SummAdjCurrent.Close;
  SummAdjCurrent.ParamByName('datefrom').AsDate  := DateFrom.Date;
  SummAdjCurrent.ParamByName('dateto').AsDate    := DateTo.Date;
  SummAdjCurrent.ParamByName('billmonth').Text   := MonthYear.Text;
  SummAdjCurrent.Execute;
  Memo1.Lines.Add('Adjustment Current rows '+IntToStr(SummAdjCurrent.RowsAffected));


  // then collection of arrearages

  SummCollArrears.Close;
  SummCollArrears.ParamByName('datefrom').AsDate  := StartOfTheMonth(NowMonth);
  SummCollArrears.ParamByName('dateto').AsDate    := EndOfTheMonth(NowMonth);
  SummCollArrears.ParamByName('billmonth').Text   := MonthYear.Text;
  SummCollArrears.Execute;
  Memo1.Lines.Add('Collection Arrears rows '+IntToStr(SummCollArrears.RowsAffected));


  // then collection for the current billing month

  SummCollCurrent.Close;
  SummCollCurrent.ParamByName('datefrom').AsDate  := StartOfTheMonth(NowMonth);
  SummCollCurrent.ParamByName('dateto').AsDate    := EndOfTheMonth(NowMonth);
  SummCollCurrent.ParamByName('billmonth').Text   := MonthYear.Text;
  SummCollCurrent.Execute;
  Memo1.Lines.Add('Collection Arrears rows '+IntToStr(SummCollCurrent.RowsAffected));


  // here is where we start to populate the MECollection table (Month end Collection)

  For I := 0 to ReportType.Items.Count-1 do
   begin

      // first populate it from the vicinity table
      AP.Close;
      AP.SQL.Clear;
      AP.SQL.Add('INSERT INTO MECOLLECTION');
      AP.SQL.Add('  (AREA,DISTRICT,ADDRESS,COLLECTIONTYPE,COLLECTIONNAME,MONTHYEAR)');
      AP.SQL.Add('SELECT DISTINCT AREA,');
      AP.SQL.Add('         case Area');
      AP.SQL.Add('         when ''001'' then ''01''');
      AP.SQL.Add('         when ''002'' then ''01''');
      AP.SQL.Add('         when ''003'' then ''02''');
      AP.SQL.Add('         when ''004'' then ''02''');
      AP.SQL.Add('         when ''005'' then ''02''');
      AP.SQL.Add('         when ''006'' then ''03''');
      AP.SQL.Add('         when ''007'' then ''03''');
      AP.SQL.Add('         when ''008'' then ''04''');
      AP.SQL.Add('         when ''009'' then ''05''');
      AP.SQL.Add('         when ''010'' then ''06''');
      AP.SQL.Add('         when ''011'' then ''07''');
      AP.SQL.Add('         when ''012'' then ''07''');
      AP.SQL.Add('         when ''013'' then ''07''');
      AP.SQL.Add('         when ''014'' then ''07''');
      AP.SQL.Add('         when ''015'' then ''08''');
      AP.SQL.Add('         when ''016'' then ''08''');
      AP.SQL.Add('         when ''017'' then ''08''');
      AP.SQL.Add('         when ''018'' then ''09''');
      AP.SQL.Add('         when ''019'' then ''09''');
      AP.SQL.Add('         when ''020'' then ''09''');
      AP.SQL.Add('         when ''021'' then ''09''');
      AP.SQL.Add('         when ''022'' then ''09''');
      AP.SQL.Add('         when ''023'' then ''09''');
      AP.SQL.Add('         when ''024'' then ''03''');
      AP.SQL.Add('         when ''025'' then ''09''');
      AP.SQL.Add('         else ''''');
      AP.SQL.Add('         end');
      AP.SQL.Add('         as district,');
      AP.SQL.Add('         case Area');
      AP.SQL.Add('         when ''001'' then ''RIZAL''');
      AP.SQL.Add('         when ''002'' then ''SIBUTAD''');
      AP.SQL.Add('         when ''003'' then ''MUTIA''');
      AP.SQL.Add('         when ''004'' then ''LA LIBERTAD''');
      AP.SQL.Add('         when ''005'' then ''SERGIO OSMEÑA''');
      AP.SQL.Add('         when ''006'' then ''DAPITAN''');
      AP.SQL.Add('         when ''007'' then ''PIÑAN''');
      AP.SQL.Add('         when ''008'' then ''POLANCO''');
      AP.SQL.Add('         when ''009'' then ''DIPOLOG NORTH''');
      AP.SQL.Add('         when ''010'' then ''DIPOLOG SOUTH''');
      AP.SQL.Add('         when ''011'' then ''KATIPUNAN''');
      AP.SQL.Add('         when ''012'' then ''ROZAS''');
      AP.SQL.Add('         when ''013'' then ''MANUKAN''');
      AP.SQL.Add('         when ''014'' then ''JOSE DALMAN''');
      AP.SQL.Add('         when ''015'' then ''SINDANGAN''');
      AP.SQL.Add('         when ''016'' then ''LEON B. POSTIGO''');
      AP.SQL.Add('         when ''017'' then ''SIAYAN''');
      AP.SQL.Add('         when ''018'' then ''SALUG''');
      AP.SQL.Add('         when ''019'' then ''LILOY''');
      AP.SQL.Add('         when ''020'' then ''LABASON''');
      AP.SQL.Add('         when ''021'' then ''TAMPILISAN''');
      AP.SQL.Add('         when ''022'' then ''GODOD''');
      AP.SQL.Add('         when ''023'' then ''GUTALAC''');
      AP.SQL.Add('         when ''024'' then ''DAPITAN / PIÑAN''');
      AP.SQL.Add('         when ''025'' then ''KALAWIT''');
      AP.SQL.Add('         else ''''');
      AP.SQL.Add('         end');
      AP.SQL.Add('         as address,');
      AP.SQL.Add(':COLLECTIONTYPE,:COLLECTIONNAME,:MONTHYEAR');
      AP.SQL.Add('   FROM VICINITY');

      ReportType.ItemIndex                       := I;
      AP.ParamByName('COLLECTIONTYPE').AsInteger := I;
      AP.ParamByName('COLLECTIONNAME').Text      := ReportType.Text;
      AP.ParamByName('MONTHYEAR').Text           := MonthYear.Text;
      AP.Execute;
      Memo1.Lines.Add(ReportType.Text+' added to table '+InttoStr(AP.RowsAffected));



      // then transfer previous balance (current and arrears) to beginning
      // balance
      AP.Close;
      AP.SQL.Clear;
      AP.SQL.Add('UPDATE MECOLLECTION A, MECOLLECTION B SET');
      AP.SQL.Add('      A.BEGINARREAR = B.BALANCEARREAR+B.BALANCECURRENT');
      AP.SQL.Add('WHERE A.COLLECTIONTYPE = B.COLLECTIONTYPE AND');
      AP.SQL.Add('      A.AREA = B.AREA AND');
      AP.SQL.Add('      A.MONTHYEAR = :MONTHYEAR AND');
      AP.SQL.Add('      B.MONTHYEAR = :PREVMONTHYEAR AND');
      AP.SQL.Add('      A.COLLECTIONTYPE = :COLLECTIONTYPE');
      AP.ParamByName('MonthYear').Text           := MonthYear.Text;
      AP.ParamByName('PrevMonthYear').Text       := PrevMonthYear(MonthYear.Text);
      AP.ParamByName('CollectionType').AsInteger := I;
      AP.Execute;
      Memo1.Lines.Add(ReportType.Text+' begin arrear '+InttoStr(AP.RowsAffected));



      // then put inplace current billing
      AP.Close;
      AP.SQL.Clear;
      AP.SQL.Add('UPDATE MECOLLECTION A, SUMMBILL B SET');
      Case I of
      00 : AP.SQL.Add('  A.BEGINCURRENT = B.TOTALBILL');
      01 : AP.SQL.Add('  A.BEGINCURRENT = B.UCEC');
      02 : AP.SQL.Add('  A.BEGINCURRENT = B.UCME');
      03 : AP.SQL.Add('  A.BEGINCURRENT = B.VATGENCO');
      04 : AP.SQL.Add('  A.BEGINCURRENT = B.VATTRANSCO');
      05 : AP.SQL.Add('  A.BEGINCURRENT = B.VATDIST');
      06 : AP.SQL.Add('  A.BEGINCURRENT = B.VATSYSTEMLOSSGENCO');
      07 : AP.SQL.Add('  A.BEGINCURRENT = B.VATGENCODISCAMT');
      08 : AP.SQL.Add('  A.BEGINCURRENT = B.VATTRANSCODISCAMT');
      09 : AP.SQL.Add('  A.BEGINCURRENT = B.VATDISTDISCAMT');
      10 : AP.SQL.Add('  A.BEGINCURRENT = B.VATSYSTEMLOSSDISCAMT');
      11 : AP.SQL.Add('  A.BEGINCURRENT = B.VATGENCO + B.VATGENCODISCAMT');
      12 : AP.SQL.Add('  A.BEGINCURRENT = B.VATTRANSCO + B.VATTRANSCODISCAMT');
      13 : AP.SQL.Add('  A.BEGINCURRENT = B.VATDIST + B.VATDISTDISCAMT');
      14 : AP.SQL.Add('  A.BEGINCURRENT = B.VATSYSTEMLOSSGENCO + B.VATSYSTEMLOSSDISCAMT');
      15 : AP.SQL.Add('  A.BEGINCURRENT = B.KWHR');
      end;
      AP.SQL.Add('WHERE A.AREA = B.AREA AND');
      AP.SQL.Add('      A.MONTHYEAR = :MONTHYEAR AND');
      AP.SQL.Add('      A.COLLECTIONTYPE = :COLLECTIONTYPE');
      AP.ParamByName('MonthYear').Text           := MonthYear.Text;
      AP.ParamByName('CollectionType').AsInteger := I;
      AP.Execute;
      Memo1.Lines.Add(ReportType.Text+' begin current '+InttoStr(AP.RowsAffected));



      // and the late bills
      AP.Close;
      AP.SQL.Clear;
      AP.SQL.Add('UPDATE MECOLLECTION A, SUMMLATEBILL B SET');
      Case I of
      00 : AP.SQL.Add('  A.BEGINLATEBILL = B.TOTALBILL');
      01 : AP.SQL.Add('  A.BEGINLATEBILL = B.UCEC');
      02 : AP.SQL.Add('  A.BEGINLATEBILL = B.UCME');
      03 : AP.SQL.Add('  A.BEGINLATEBILL = B.VATGENCO');
      04 : AP.SQL.Add('  A.BEGINLATEBILL = B.VATTRANSCO');
      05 : AP.SQL.Add('  A.BEGINLATEBILL = B.VATDIST');
      06 : AP.SQL.Add('  A.BEGINLATEBILL = B.VATSYSTEMLOSSGENCO');
      07 : AP.SQL.Add('  A.BEGINLATEBILL = B.VATGENCODISCAMT');
      08 : AP.SQL.Add('  A.BEGINLATEBILL = B.VATTRANSCODISCAMT');
      09 : AP.SQL.Add('  A.BEGINLATEBILL = B.VATDISTDISCAMT');
      10 : AP.SQL.Add('  A.BEGINLATEBILL = B.VATSYSTEMLOSSDISCAMT');
      11 : AP.SQL.Add('  A.BEGINLATEBILL = B.VATGENCO + B.VATGENCODISCAMT');
      12 : AP.SQL.Add('  A.BEGINLATEBILL = B.VATTRANSCO + B.VATTRANSCODISCAMT');
      13 : AP.SQL.Add('  A.BEGINLATEBILL = B.VATDIST + B.VATDISTDISCAMT');
      14 : AP.SQL.Add('  A.BEGINLATEBILL = B.VATSYSTEMLOSSGENCO + B.VATSYSTEMLOSSDISCAMT');
      15 : AP.SQL.Add('  A.BEGINLATEBILL = B.KWHR');
      end;
      AP.SQL.Add('WHERE A.AREA = B.AREA AND');
      AP.SQL.Add('      A.MONTHYEAR = :MONTHYEAR AND');
      AP.SQL.Add('      A.COLLECTIONTYPE = :COLLECTIONTYPE');
      AP.ParamByName('MonthYear').Text           := MonthYear.Text;
      AP.ParamByName('CollectionType').AsInteger := I;
      AP.Execute;
      Memo1.Lines.Add(ReportType.Text+' begin late bill '+InttoStr(AP.RowsAffected));


      // then adjustment arrears
      AP.Close;
      AP.SQL.Clear;
      AP.SQL.Add('UPDATE MECOLLECTION A, SUMMADJARREARS B SET');
      Case I of
      00 : AP.SQL.Add('  A.ADJDEBITARREAR = B.TOTALBILLDEBIT, A.ADJCREDITARREAR = B.TOTALBILLCREDIT');
      01 : AP.SQL.Add('  A.ADJDEBITARREAR = B.UCECDEBIT, A.ADJCREDITARREAR = B.UCECCREDIT');
      02 : AP.SQL.Add('  A.ADJDEBITARREAR = B.UCMEDEBIT, A.ADJCREDITARREAR = B.UCMECREDIT');
      03 : AP.SQL.Add('  A.ADJDEBITARREAR = B.VATGENCODEBIT, A.ADJCREDITARREAR = B.VATGENCOCREDIT');
      04 : AP.SQL.Add('  A.ADJDEBITARREAR = B.VATTRANSCODEBIT, A.ADJCREDITARREAR = B.VATTRANSCOCREDIT');
      05 : AP.SQL.Add('  A.ADJDEBITARREAR = B.VATDISTDEBIT, A.ADJCREDITARREAR = B.VATDISTCREDIT');
      06 : AP.SQL.Add('  A.ADJDEBITARREAR = B.VATSYSTEMLOSSGENCODEBIT, A.ADJCREDITARREAR = B.VATSYSTEMLOSSGENCOCREDIT');
      07 : AP.SQL.Add('  A.ADJDEBITARREAR = B.VATGENCODISCAMTDEBIT, A.ADJCREDITARREAR = B.VATGENCODISCAMTCREDIT');
      08 : AP.SQL.Add('  A.ADJDEBITARREAR = B.VATTRANSCODISCAMTDEBIT, A.ADJCREDITARREAR = B.VATTRANSCODISCAMTCREDIT');
      09 : AP.SQL.Add('  A.ADJDEBITARREAR = B.VATDISTDISCAMTDEBIT, A.ADJCREDITARREAR = B.VATDISTDISCAMTCREDIT');
      10 : AP.SQL.Add('  A.ADJDEBITARREAR = B.VATSYSTEMLOSSDISCAMTDEBIT, A.ADJCREDITARREAR = B.VATSYSTEMLOSSDISCAMTCREDIT');
      11 : AP.SQL.Add('  A.ADJDEBITARREAR = B.VATGENCODEBIT + B.VATGENCODISCAMTDEBIT, A.ADJCREDITARREAR = B.VATGENCOCREDIT + B.VATGENCODISCAMTCREDIT');
      12 : AP.SQL.Add('  A.ADJDEBITARREAR = B.VATTRANSCODEBIT + B.VATTRANSCODISCAMTDEBIT, A.ADJCREDITARREAR = B.VATTRANSCOCREDIT + B.VATTRANSCODISCAMTCREDIT');
      13 : AP.SQL.Add('  A.ADJDEBITARREAR = B.VATDISTDEBIT + B.VATDISTDISCAMTDEBIT, A.ADJCREDITARREAR = B.VATDISTCREDIT + B.VATDISTDISCAMTCREDIT');
      14 : AP.SQL.Add('  A.ADJDEBITARREAR = B.VATSYSTEMLOSSGENCODEBIT + B.VATSYSTEMLOSSDISCAMTDEBIT, A.ADJCREDITARREAR = B.VATSYSTEMLOSSGENCOCREDIT + B.VATSYSTEMLOSSDISCAMTCREDIT');
      15 : AP.SQL.Add('  A.ADJDEBITARREAR = B.KWHRDEBIT, A.ADJCREDITARREAR = B.KWHRCREDIT');
      end;
      AP.SQL.Add('WHERE A.AREA = B.AREA AND');
      AP.SQL.Add('      A.MONTHYEAR = :MONTHYEAR AND');
      AP.SQL.Add('      A.COLLECTIONTYPE = :COLLECTIONTYPE');
      AP.ParamByName('MonthYear').Text           := MonthYear.Text;
      AP.ParamByName('CollectionType').AsInteger := I;
      AP.Execute;
      Memo1.Lines.Add(ReportType.Text+' Adjustment arrears '+InttoStr(AP.RowsAffected));



      // then adjustment of current bills
      AP.Close;
      AP.SQL.Clear;
      AP.SQL.Add('UPDATE MECOLLECTION A, SUMMADJCURRENT B SET');
      Case I of
      00 : AP.SQL.Add('  A.ADJDEBITCURRENT = B.TOTALBILLDEBIT, A.ADJCREDITCURRENT = B.TOTALBILLCREDIT');
      01 : AP.SQL.Add('  A.ADJDEBITCURRENT = B.UCECDEBIT, A.ADJCREDITCURRENT = B.UCECCREDIT');
      02 : AP.SQL.Add('  A.ADJDEBITCURRENT = B.UCMEDEBIT, A.ADJCREDITCURRENT = B.UCMECREDIT');
      03 : AP.SQL.Add('  A.ADJDEBITCURRENT = B.VATGENCODEBIT, A.ADJCREDITCURRENT = B.VATGENCOCREDIT');
      04 : AP.SQL.Add('  A.ADJDEBITCURRENT = B.VATTRANSCODEBIT, A.ADJCREDITCURRENT = B.VATTRANSCOCREDIT');
      05 : AP.SQL.Add('  A.ADJDEBITCURRENT = B.VATDISTDEBIT, A.ADJCREDITCURRENT = B.VATDISTCREDIT');
      06 : AP.SQL.Add('  A.ADJDEBITCURRENT = B.VATSYSTEMLOSSGENCODEBIT, A.ADJCREDITCURRENT = B.VATSYSTEMLOSSGENCOCREDIT');
      07 : AP.SQL.Add('  A.ADJDEBITCURRENT = B.VATGENCODISCAMTDEBIT, A.ADJCREDITCURRENT = B.VATGENCODISCAMTCREDIT');
      08 : AP.SQL.Add('  A.ADJDEBITCURRENT = B.VATTRANSCODISCAMTDEBIT, A.ADJCREDITCURRENT = B.VATTRANSCODISCAMTCREDIT');
      09 : AP.SQL.Add('  A.ADJDEBITCURRENT = B.VATDISTDISCAMTDEBIT, A.ADJCREDITCURRENT = B.VATDISTDISCAMTCREDIT');
      10 : AP.SQL.Add('  A.ADJDEBITCURRENT = B.VATSYSTEMLOSSDISCAMTDEBIT, A.ADJCREDITCURRENT = B.VATSYSTEMLOSSDISCAMTCREDIT');
      11 : AP.SQL.Add('  A.ADJDEBITCURRENT = B.VATGENCODEBIT + B.VATGENCODISCAMTDEBIT, A.ADJCREDITCURRENT = B.VATGENCOCREDIT + B.VATGENCODISCAMTCREDIT');
      12 : AP.SQL.Add('  A.ADJDEBITCURRENT = B.VATTRANSCODEBIT + B.VATTRANSCODISCAMTDEBIT, A.ADJCREDITCURRENT = B.VATTRANSCOCREDIT + B.VATTRANSCODISCAMTCREDIT');
      13 : AP.SQL.Add('  A.ADJDEBITCURRENT = B.VATDISTDEBIT + B.VATDISTDISCAMTDEBIT, A.ADJCREDITCURRENT = B.VATDISTCREDIT + B.VATDISTDISCAMTCREDIT');
      14 : AP.SQL.Add('  A.ADJDEBITCURRENT = B.VATSYSTEMLOSSGENCODEBIT + B.VATSYSTEMLOSSDISCAMTDEBIT, A.ADJCREDITCURRENT = B.VATSYSTEMLOSSGENCOCREDIT + B.VATSYSTEMLOSSDISCAMTCREDIT');
      15 : AP.SQL.Add('  A.ADJDEBITCURRENT = B.KWHRDEBIT, A.ADJCREDITCURRENT = B.KWHRCREDIT');
      end;
      AP.SQL.Add('WHERE A.AREA = B.AREA AND');
      AP.SQL.Add('      A.MONTHYEAR = :MONTHYEAR AND');
      AP.SQL.Add('      A.COLLECTIONTYPE = :COLLECTIONTYPE');
      AP.ParamByName('MonthYear').Text           := MonthYear.Text;
      AP.ParamByName('CollectionType').AsInteger := I;
      AP.Execute;
      Memo1.Lines.Add(ReportType.Text+' Adjustment current '+InttoStr(AP.RowsAffected));



      // then collection of arrearages
      AP.Close;
      AP.SQL.Clear;
      AP.SQL.Add('UPDATE MECOLLECTION A, SUMMCOLLARREARS B SET');
      Case I of
      00 : AP.SQL.Add('  A.COLLECTIONARREAR = B.TOTALBILL');
      01 : AP.SQL.Add('  A.COLLECTIONARREAR = B.UCEC');
      02 : AP.SQL.Add('  A.COLLECTIONARREAR = B.UCME');
      03 : AP.SQL.Add('  A.COLLECTIONARREAR = B.VATGENCO');
      04 : AP.SQL.Add('  A.COLLECTIONARREAR = B.VATTRANSCO');
      05 : AP.SQL.Add('  A.COLLECTIONARREAR = B.VATDIST');
      06 : AP.SQL.Add('  A.COLLECTIONARREAR = B.VATSYSTEMLOSS');
      07 : AP.SQL.Add('  A.COLLECTIONARREAR = B.VATGENCODISCAMT');
      08 : AP.SQL.Add('  A.COLLECTIONARREAR = B.VATTRANSCODISCAMT');
      09 : AP.SQL.Add('  A.COLLECTIONARREAR = B.VATDISTDISCAMT');
      10 : AP.SQL.Add('  A.COLLECTIONARREAR = B.VATSYSTEMLOSSDISCAMT');
      11 : AP.SQL.Add('  A.COLLECTIONARREAR = B.VATGENCO + B.VATGENCODISCAMT');
      12 : AP.SQL.Add('  A.COLLECTIONARREAR = B.VATTRANSCO + B.VATTRANSCODISCAMT');
      13 : AP.SQL.Add('  A.COLLECTIONARREAR = B.VATDIST + B.VATDISTDISCAMT');
      14 : AP.SQL.Add('  A.COLLECTIONARREAR = B.VATSYSTEMLOSS + B.VATSYSTEMLOSSDISCAMT');
      15 : AP.SQL.Add('  A.COLLECTIONARREAR = B.KWHR');
      end;
      AP.SQL.Add('WHERE A.AREA = B.AREA AND');
      AP.SQL.Add('      A.MONTHYEAR = :MONTHYEAR AND');
      AP.SQL.Add('      A.COLLECTIONTYPE = :COLLECTIONTYPE');
      AP.ParamByName('MonthYear').Text           := MonthYear.Text;
      AP.ParamByName('CollectionType').AsInteger := I;
      AP.Execute;
      Memo1.Lines.Add(ReportType.Text+' Collection arrears '+InttoStr(AP.RowsAffected));



      // then collection of current bills
      AP.Close;
      AP.SQL.Clear;
      AP.SQL.Add('UPDATE MECOLLECTION A, SUMMCOLLCURRENT B SET');
      Case I of
      00 : AP.SQL.Add('  A.COLLECTIONCURRENT = B.TOTALBILL');
      01 : AP.SQL.Add('  A.COLLECTIONCURRENT = B.UCEC');
      02 : AP.SQL.Add('  A.COLLECTIONCURRENT = B.UCME');
      03 : AP.SQL.Add('  A.COLLECTIONCURRENT = B.VATGENCO');
      04 : AP.SQL.Add('  A.COLLECTIONCURRENT = B.VATTRANSCO');
      05 : AP.SQL.Add('  A.COLLECTIONCURRENT = B.VATDIST');
      06 : AP.SQL.Add('  A.COLLECTIONCURRENT = B.VATSYSTEMLOSS');
      07 : AP.SQL.Add('  A.COLLECTIONCURRENT = B.VATGENCODISCAMT');
      08 : AP.SQL.Add('  A.COLLECTIONCURRENT = B.VATTRANSCODISCAMT');
      09 : AP.SQL.Add('  A.COLLECTIONCURRENT = B.VATDISTDISCAMT');
      10 : AP.SQL.Add('  A.COLLECTIONCURRENT = B.VATSYSTEMLOSSDISCAMT');
      11 : AP.SQL.Add('  A.COLLECTIONCURRENT = B.VATGENCO + B.VATGENCODISCAMT');
      12 : AP.SQL.Add('  A.COLLECTIONCURRENT = B.VATTRANSCO + B.VATTRANSCODISCAMT');
      13 : AP.SQL.Add('  A.COLLECTIONCURRENT = B.VATDIST + B.VATDISTDISCAMT');
      14 : AP.SQL.Add('  A.COLLECTIONCURRENT = B.VATSYSTEMLOSS + B.VATSYSTEMLOSSDISCAMT');
      15 : AP.SQL.Add('  A.COLLECTIONCURRENT = B.KWHR');
      end;
      AP.SQL.Add('WHERE A.AREA = B.AREA AND');
      AP.SQL.Add('      A.MONTHYEAR = :MONTHYEAR AND');
      AP.SQL.Add('      A.COLLECTIONTYPE = :COLLECTIONTYPE');
      AP.ParamByName('MonthYear').Text           := MonthYear.Text;
      AP.ParamByName('CollectionType').AsInteger := I;
      AP.Execute;
      Memo1.Lines.Add(ReportType.Text+' Collection current '+InttoStr(AP.RowsAffected));


      // add back adjustments of current bill
      AP.Close;
      AP.SQL.Clear;
      AP.SQL.Add('UPDATE MECOLLECTION SET');
      AP.SQL.Add('      BEGINCURRENT = BEGINCURRENT + (ADJDEBITCURRENT - ADJCREDITCURRENT)');
      AP.SQL.Add('WHERE MONTHYEAR = :MONTHYEAR AND');
      AP.SQL.Add('      COLLECTIONTYPE = :COLLECTIONTYPE');
      AP.ParamByName('MonthYear').Text           := MonthYear.Text;
      AP.ParamByName('CollectionType').AsInteger := I;
      AP.Execute;
      Memo1.Lines.Add(ReportType.Text+' begin current updated '+InttoStr(AP.RowsAffected));


      // then compute net values
      AP.Close;
      AP.SQL.Clear;
      AP.SQL.Add('UPDATE MECOLLECTION SET');
      AP.SQL.Add('      NETARREARS = BEGINARREAR + (ADJDEBITARREAR - ADJCREDITARREAR),');
      AP.SQL.Add('      NETCURRENT = (BEGINCURRENT+BEGINLATEBILL) + (ADJDEBITCURRENT - ADJCREDITCURRENT)');
      AP.SQL.Add('WHERE MONTHYEAR = :MONTHYEAR AND');
      AP.SQL.Add('      COLLECTIONTYPE = :COLLECTIONTYPE');
      AP.ParamByName('MonthYear').Text           := MonthYear.Text;
      AP.ParamByName('CollectionType').AsInteger := I;
      AP.Execute;
      Memo1.Lines.Add(ReportType.Text+' NET updated '+InttoStr(AP.RowsAffected));


      // then compute balances
      AP.Close;
      AP.SQL.Clear;
      AP.SQL.Add('UPDATE MECOLLECTION SET');
      AP.SQL.Add('      BALANCEARREAR = NETARREARS - COLLECTIONARREAR,');
      AP.SQL.Add('      BALANCECURRENT = NETCURRENT - COLLECTIONCURRENT');
      AP.SQL.Add('WHERE MONTHYEAR = :MONTHYEAR AND');
      AP.SQL.Add('      COLLECTIONTYPE = :COLLECTIONTYPE');
      AP.ParamByName('MonthYear').Text           := MonthYear.Text;
      AP.ParamByName('CollectionType').AsInteger := I;
      AP.Execute;
      Memo1.Lines.Add(ReportType.Text+' NET updated '+InttoStr(AP.RowsAffected));


   end;

  MessageDlg('Create new Report Done...', mtInformation, [mbOK], 0);

  ReportType.ItemIndex := 0;
  MECollection.Close;
  MECollection.SQL.Clear;
  MECollection.SQL.Add('select * from mecollection');
  MECollection.SQL.Add('    where monthyear = :monthyear and');
  MECollection.SQL.Add('          collectiontype = :collectiontype');
  MECollection.ParamByName('MonthYear').Text      := MonthYear.Text;
  MECollection.ParamByName('CollectionType').Text := IntToStr(ReportType.ItemIndex);
  MECollection.SQL.Add('order by area');
  MECollection.Open;

end;

procedure TMonthEndCollectionForm.DsFancyButton7Click(Sender: TObject);
begin
  MECollection.Close;
  Close;
end;

procedure TMonthEndCollectionForm.ReportTypeSelect(Sender: TObject);
begin
  DsFancyButton3Click(Self);
end;

procedure TMonthEndCollectionForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  MonthEndCollectionForm := Nil;
end;

procedure TMonthEndCollectionForm.FormShow(Sender: TObject);
begin
  DateFrom.Date        := Now;
  DateTo.Date          := Now;
  DateFromLB.Date      := Now;
  DateToLB.Date        := Now;
  ReportType.ItemIndex := 0;
end;

procedure TMonthEndCollectionForm.DsFancyButton2Click(Sender: TObject);
Var I        : Integer;
    NowMonth : TDate;

begin
  Try
  NowMonth := StrToDate(Copy(MonthYear.text,1,2)+'/01/'+Copy(MonthYear.Text,3,2));
  except
  MessageDlg('Input valid billmonth please...', mtWarning, [mbOK], 0);
  exit;
  end;

  Memo1.Clear;

  // process starts here,,,
  // first we clean up the tables

  AP.Close;
  AP.SQL.Clear;
  AP.SQL.Add('truncate summbill');
  AP.Execute;

  AP.SQL.Clear;
  AP.SQL.Add('truncate summlatebill');
  AP.Execute;

  AP.SQL.Clear;
  AP.SQL.Add('truncate summadjarrears');
  AP.Execute;

  AP.SQL.Clear;
  AP.SQL.Add('truncate summadjcurrent');
  AP.Execute;

  AP.SQL.Clear;
  AP.SQL.Add('truncate summcollarrears');
  AP.Execute;

  AP.SQL.Clear;
  AP.SQL.Add('truncate summcollcurrent');
  AP.Execute;


  // next we get the current sales

  CurrentBill.Close;
  CurrentBill.ParamByName('billmonth').Text := MonthYear.Text;
  CurrentBill.Execute;
  Memo1.Lines.Add('Current Bill rows '+IntToStr(CurrentBill.RowsAffected));

  LateBill.Close;
  LateBill.ParamByName('datefrom').AsDate := DateFromLB.Date;
  LateBill.ParamByName('dateto').AsDate   := DateToLB.Date;
  LateBill.Execute;
  Memo1.Lines.Add('Late Bill rows '+IntToStr(LateBill.RowsAffected));

  // then adjustment arrears

  SummAdjArrears.Close;
  SummAdjArrears.ParamByName('datefrom').AsDate  := DateFrom.Date;
  SummAdjArrears.ParamByName('dateto').AsDate    := DateTo.Date;
  SummAdjArrears.ParamByName('billmonth').Text   := MonthYear.Text;
  SummAdjArrears.Execute;
  Memo1.Lines.Add('Adjustment Arrears rows '+IntToStr(SummAdjArrears.RowsAffected));


  // then adjustment for the current billing month

  SummAdjCurrent.Close;
  SummAdjCurrent.ParamByName('datefrom').AsDate  := DateFrom.Date;
  SummAdjCurrent.ParamByName('dateto').AsDate    := DateTo.Date;
  SummAdjCurrent.ParamByName('billmonth').Text   := MonthYear.Text;
  SummAdjCurrent.Execute;
  Memo1.Lines.Add('Adjustment Current rows '+IntToStr(SummAdjCurrent.RowsAffected));


  // then collection of arrearages

  SummCollArrears.Close;
  SummCollArrears.ParamByName('datefrom').AsDate  := StartOfTheMonth(NowMonth);
  SummCollArrears.ParamByName('dateto').AsDate    := EndOfTheMonth(NowMonth);
  SummCollArrears.ParamByName('billmonth').Text   := MonthYear.Text;
  SummCollArrears.Execute;
  Memo1.Lines.Add('Collection Arrears rows '+IntToStr(SummCollArrears.RowsAffected));


  // then collection for the current billing month

  SummCollCurrent.Close;
  SummCollCurrent.ParamByName('datefrom').AsDate  := StartOfTheMonth(NowMonth);
  SummCollCurrent.ParamByName('dateto').AsDate    := EndOfTheMonth(NowMonth);
  SummCollCurrent.ParamByName('billmonth').Text   := MonthYear.Text;
  SummCollCurrent.Execute;
  Memo1.Lines.Add('Collection Arrears rows '+IntToStr(SummCollCurrent.RowsAffected));


  // here is where we start to populate the MECollection table (Month end Collection)

  For I := 0 to ReportType.Items.Count-1 do
   begin

      // then put inplace current billing
      AP.Close;
      AP.SQL.Clear;
      AP.SQL.Add('UPDATE MECOLLECTION A, SUMMBILL B SET');
      Case I of
      00 : AP.SQL.Add('  A.BEGINCURRENT = B.TOTALBILL');
      01 : AP.SQL.Add('  A.BEGINCURRENT = B.UCEC');
      02 : AP.SQL.Add('  A.BEGINCURRENT = B.UCME');
      03 : AP.SQL.Add('  A.BEGINCURRENT = B.VATGENCO');
      04 : AP.SQL.Add('  A.BEGINCURRENT = B.VATTRANSCO');
      05 : AP.SQL.Add('  A.BEGINCURRENT = B.VATDIST');
      06 : AP.SQL.Add('  A.BEGINCURRENT = B.VATSYSTEMLOSSGENCO');
      07 : AP.SQL.Add('  A.BEGINCURRENT = B.VATGENCODISCAMT');
      08 : AP.SQL.Add('  A.BEGINCURRENT = B.VATTRANSCODISCAMT');
      09 : AP.SQL.Add('  A.BEGINCURRENT = B.VATDISTDISCAMT');
      10 : AP.SQL.Add('  A.BEGINCURRENT = B.VATSYSTEMLOSSDISCAMT');
      11 : AP.SQL.Add('  A.BEGINCURRENT = B.VATGENCO + B.VATGENCODISCAMT');
      12 : AP.SQL.Add('  A.BEGINCURRENT = B.VATTRANSCO + B.VATTRANSCODISCAMT');
      13 : AP.SQL.Add('  A.BEGINCURRENT = B.VATDIST + B.VATDISTDISCAMT');
      14 : AP.SQL.Add('  A.BEGINCURRENT = B.VATSYSTEMLOSSGENCO + B.VATSYSTEMLOSSDISCAMT');
      15 : AP.SQL.Add('  A.BEGINCURRENT = B.KWHR');
      end;
      AP.SQL.Add('WHERE A.AREA = B.AREA AND');
      AP.SQL.Add('      A.MONTHYEAR = :MONTHYEAR AND');
      AP.SQL.Add('      A.COLLECTIONTYPE = :COLLECTIONTYPE');
      AP.ParamByName('MonthYear').Text           := MonthYear.Text;
      AP.ParamByName('CollectionType').AsInteger := I;
      AP.Execute;
      Memo1.Lines.Add(ReportType.Text+' begin current '+InttoStr(AP.RowsAffected));



      // and the late bills
      AP.Close;
      AP.SQL.Clear;
      AP.SQL.Add('UPDATE MECOLLECTION A, SUMMLATEBILL B SET');
      Case I of
      00 : AP.SQL.Add('  A.BEGINLATEBILL = B.TOTALBILL');
      01 : AP.SQL.Add('  A.BEGINLATEBILL = B.UCEC');
      02 : AP.SQL.Add('  A.BEGINLATEBILL = B.UCME');
      03 : AP.SQL.Add('  A.BEGINLATEBILL = B.VATGENCO');
      04 : AP.SQL.Add('  A.BEGINLATEBILL = B.VATTRANSCO');
      05 : AP.SQL.Add('  A.BEGINLATEBILL = B.VATDIST');
      06 : AP.SQL.Add('  A.BEGINLATEBILL = B.VATSYSTEMLOSSGENCO');
      07 : AP.SQL.Add('  A.BEGINLATEBILL = B.VATGENCODISCAMT');
      08 : AP.SQL.Add('  A.BEGINLATEBILL = B.VATTRANSCODISCAMT');
      09 : AP.SQL.Add('  A.BEGINLATEBILL = B.VATDISTDISCAMT');
      10 : AP.SQL.Add('  A.BEGINLATEBILL = B.VATSYSTEMLOSSDISCAMT');
      11 : AP.SQL.Add('  A.BEGINLATEBILL = B.VATGENCO + B.VATGENCODISCAMT');
      12 : AP.SQL.Add('  A.BEGINLATEBILL = B.VATTRANSCO + B.VATTRANSCODISCAMT');
      13 : AP.SQL.Add('  A.BEGINLATEBILL = B.VATDIST + B.VATDISTDISCAMT');
      14 : AP.SQL.Add('  A.BEGINLATEBILL = B.VATSYSTEMLOSSGENCO + B.VATSYSTEMLOSSDISCAMT');
      15 : AP.SQL.Add('  A.BEGINLATEBILL = B.KWHR');
      end;
      AP.SQL.Add('WHERE A.AREA = B.AREA AND');
      AP.SQL.Add('      A.MONTHYEAR = :MONTHYEAR AND');
      AP.SQL.Add('      A.COLLECTIONTYPE = :COLLECTIONTYPE');
      AP.ParamByName('MonthYear').Text           := MonthYear.Text;
      AP.ParamByName('CollectionType').AsInteger := I;
      AP.Execute;
      Memo1.Lines.Add(ReportType.Text+' begin late bill '+InttoStr(AP.RowsAffected));


      // then adjustment arrears
      AP.Close;
      AP.SQL.Clear;
      AP.SQL.Add('UPDATE MECOLLECTION A, SUMMADJARREARS B SET');
      Case I of
      00 : AP.SQL.Add('  A.ADJDEBITARREAR = B.TOTALBILLDEBIT, A.ADJCREDITARREAR = B.TOTALBILLCREDIT');
      01 : AP.SQL.Add('  A.ADJDEBITARREAR = B.UCECDEBIT, A.ADJCREDITARREAR = B.UCECCREDIT');
      02 : AP.SQL.Add('  A.ADJDEBITARREAR = B.UCMEDEBIT, A.ADJCREDITARREAR = B.UCMECREDIT');
      03 : AP.SQL.Add('  A.ADJDEBITARREAR = B.VATGENCODEBIT, A.ADJCREDITARREAR = B.VATGENCOCREDIT');
      04 : AP.SQL.Add('  A.ADJDEBITARREAR = B.VATTRANSCODEBIT, A.ADJCREDITARREAR = B.VATTRANSCOCREDIT');
      05 : AP.SQL.Add('  A.ADJDEBITARREAR = B.VATDISTDEBIT, A.ADJCREDITARREAR = B.VATDISTCREDIT');
      06 : AP.SQL.Add('  A.ADJDEBITARREAR = B.VATSYSTEMLOSSGENCODEBIT, A.ADJCREDITARREAR = B.VATSYSTEMLOSSGENCOCREDIT');
      07 : AP.SQL.Add('  A.ADJDEBITARREAR = B.VATGENCODISCAMTDEBIT, A.ADJCREDITARREAR = B.VATGENCODISCAMTCREDIT');
      08 : AP.SQL.Add('  A.ADJDEBITARREAR = B.VATTRANSCODISCAMTDEBIT, A.ADJCREDITARREAR = B.VATTRANSCODISCAMTCREDIT');
      09 : AP.SQL.Add('  A.ADJDEBITARREAR = B.VATDISTDISCAMTDEBIT, A.ADJCREDITARREAR = B.VATDISTDISCAMTCREDIT');
      10 : AP.SQL.Add('  A.ADJDEBITARREAR = B.VATSYSTEMLOSSDISCAMTDEBIT, A.ADJCREDITARREAR = B.VATSYSTEMLOSSDISCAMTCREDIT');
      11 : AP.SQL.Add('  A.ADJDEBITARREAR = B.VATGENCODEBIT + B.VATGENCODISCAMTDEBIT, A.ADJCREDITARREAR = B.VATGENCOCREDIT + B.VATGENCODISCAMTCREDIT');
      12 : AP.SQL.Add('  A.ADJDEBITARREAR = B.VATTRANSCODEBIT + B.VATTRANSCODISCAMTDEBIT, A.ADJCREDITARREAR = B.VATTRANSCOCREDIT + B.VATTRANSCODISCAMTCREDIT');
      13 : AP.SQL.Add('  A.ADJDEBITARREAR = B.VATDISTDEBIT + B.VATDISTDISCAMTDEBIT, A.ADJCREDITARREAR = B.VATDISTCREDIT + B.VATDISTDISCAMTCREDIT');
      14 : AP.SQL.Add('  A.ADJDEBITARREAR = B.VATSYSTEMLOSSGENCODEBIT + B.VATSYSTEMLOSSDISCAMTDEBIT, A.ADJCREDITARREAR = B.VATSYSTEMLOSSGENCOCREDIT + B.VATSYSTEMLOSSDISCAMTCREDIT');
      15 : AP.SQL.Add('  A.ADJDEBITARREAR = B.KWHRDEBIT, A.ADJCREDITARREAR = B.KWHRCREDIT');
      end;
      AP.SQL.Add('WHERE A.AREA = B.AREA AND');
      AP.SQL.Add('      A.MONTHYEAR = :MONTHYEAR AND');
      AP.SQL.Add('      A.COLLECTIONTYPE = :COLLECTIONTYPE');
      AP.ParamByName('MonthYear').Text           := MonthYear.Text;
      AP.ParamByName('CollectionType').AsInteger := I;
      AP.Execute;
      Memo1.Lines.Add(ReportType.Text+' Adjustment arrears '+InttoStr(AP.RowsAffected));



      // then adjustment of current bills
      AP.Close;
      AP.SQL.Clear;
      AP.SQL.Add('UPDATE MECOLLECTION A, SUMMADJCURRENT B SET');
      Case I of
      00 : AP.SQL.Add('  A.ADJDEBITCURRENT = B.TOTALBILLDEBIT, A.ADJCREDITCURRENT = B.TOTALBILLCREDIT');
      01 : AP.SQL.Add('  A.ADJDEBITCURRENT = B.UCECDEBIT, A.ADJCREDITCURRENT = B.UCECCREDIT');
      02 : AP.SQL.Add('  A.ADJDEBITCURRENT = B.UCMEDEBIT, A.ADJCREDITCURRENT = B.UCMECREDIT');
      03 : AP.SQL.Add('  A.ADJDEBITCURRENT = B.VATGENCODEBIT, A.ADJCREDITCURRENT = B.VATGENCOCREDIT');
      04 : AP.SQL.Add('  A.ADJDEBITCURRENT = B.VATTRANSCODEBIT, A.ADJCREDITCURRENT = B.VATTRANSCOCREDIT');
      05 : AP.SQL.Add('  A.ADJDEBITCURRENT = B.VATDISTDEBIT, A.ADJCREDITCURRENT = B.VATDISTCREDIT');
      06 : AP.SQL.Add('  A.ADJDEBITCURRENT = B.VATSYSTEMLOSSGENCODEBIT, A.ADJCREDITCURRENT = B.VATSYSTEMLOSSGENCOCREDIT');
      07 : AP.SQL.Add('  A.ADJDEBITCURRENT = B.VATGENCODISCAMTDEBIT, A.ADJCREDITCURRENT = B.VATGENCODISCAMTCREDIT');
      08 : AP.SQL.Add('  A.ADJDEBITCURRENT = B.VATTRANSCODISCAMTDEBIT, A.ADJCREDITCURRENT = B.VATTRANSCODISCAMTCREDIT');
      09 : AP.SQL.Add('  A.ADJDEBITCURRENT = B.VATDISTDISCAMTDEBIT, A.ADJCREDITCURRENT = B.VATDISTDISCAMTCREDIT');
      10 : AP.SQL.Add('  A.ADJDEBITCURRENT = B.VATSYSTEMLOSSDISCAMTDEBIT, A.ADJCREDITCURRENT = B.VATSYSTEMLOSSDISCAMTCREDIT');
      11 : AP.SQL.Add('  A.ADJDEBITCURRENT = B.VATGENCODEBIT + B.VATGENCODISCAMTDEBIT, A.ADJCREDITCURRENT = B.VATGENCOCREDIT + B.VATGENCODISCAMTCREDIT');
      12 : AP.SQL.Add('  A.ADJDEBITCURRENT = B.VATTRANSCODEBIT + B.VATTRANSCODISCAMTDEBIT, A.ADJCREDITCURRENT = B.VATTRANSCOCREDIT + B.VATTRANSCODISCAMTCREDIT');
      13 : AP.SQL.Add('  A.ADJDEBITCURRENT = B.VATDISTDEBIT + B.VATDISTDISCAMTDEBIT, A.ADJCREDITCURRENT = B.VATDISTCREDIT + B.VATDISTDISCAMTCREDIT');
      14 : AP.SQL.Add('  A.ADJDEBITCURRENT = B.VATSYSTEMLOSSGENCODEBIT + B.VATSYSTEMLOSSDISCAMTDEBIT, A.ADJCREDITCURRENT = B.VATSYSTEMLOSSGENCOCREDIT + B.VATSYSTEMLOSSDISCAMTCREDIT');
      15 : AP.SQL.Add('  A.ADJDEBITCURRENT = B.KWHRDEBIT, A.ADJCREDITCURRENT = B.KWHRCREDIT');
      end;
      AP.SQL.Add('WHERE A.AREA = B.AREA AND');
      AP.SQL.Add('      A.MONTHYEAR = :MONTHYEAR AND');
      AP.SQL.Add('      A.COLLECTIONTYPE = :COLLECTIONTYPE');
      AP.ParamByName('MonthYear').Text           := MonthYear.Text;
      AP.ParamByName('CollectionType').AsInteger := I;
      AP.Execute;
      Memo1.Lines.Add(ReportType.Text+' Adjustment current '+InttoStr(AP.RowsAffected));



      // then collection of arrearages
      AP.Close;
      AP.SQL.Clear;
      AP.SQL.Add('UPDATE MECOLLECTION A, SUMMCOLLARREARS B SET');
      Case I of
      00 : AP.SQL.Add('  A.COLLECTIONARREAR = B.TOTALBILL');
      01 : AP.SQL.Add('  A.COLLECTIONARREAR = B.UCEC');
      02 : AP.SQL.Add('  A.COLLECTIONARREAR = B.UCME');
      03 : AP.SQL.Add('  A.COLLECTIONARREAR = B.VATGENCO');
      04 : AP.SQL.Add('  A.COLLECTIONARREAR = B.VATTRANSCO');
      05 : AP.SQL.Add('  A.COLLECTIONARREAR = B.VATDIST');
      06 : AP.SQL.Add('  A.COLLECTIONARREAR = B.VATSYSTEMLOSS');
      07 : AP.SQL.Add('  A.COLLECTIONARREAR = B.VATGENCODISCAMT');
      08 : AP.SQL.Add('  A.COLLECTIONARREAR = B.VATTRANSCODISCAMT');
      09 : AP.SQL.Add('  A.COLLECTIONARREAR = B.VATDISTDISCAMT');
      10 : AP.SQL.Add('  A.COLLECTIONARREAR = B.VATSYSTEMLOSSDISCAMT');
      11 : AP.SQL.Add('  A.COLLECTIONARREAR = B.VATGENCO + B.VATGENCODISCAMT');
      12 : AP.SQL.Add('  A.COLLECTIONARREAR = B.VATTRANSCO + B.VATTRANSCODISCAMT');
      13 : AP.SQL.Add('  A.COLLECTIONARREAR = B.VATDIST + B.VATDISTDISCAMT');
      14 : AP.SQL.Add('  A.COLLECTIONARREAR = B.VATSYSTEMLOSS + B.VATSYSTEMLOSSDISCAMT');
      15 : AP.SQL.Add('  A.COLLECTIONARREAR = B.KWHR');
      end;
      AP.SQL.Add('WHERE A.AREA = B.AREA AND');
      AP.SQL.Add('      A.MONTHYEAR = :MONTHYEAR AND');
      AP.SQL.Add('      A.COLLECTIONTYPE = :COLLECTIONTYPE');
      AP.ParamByName('MonthYear').Text           := MonthYear.Text;
      AP.ParamByName('CollectionType').AsInteger := I;
      AP.Execute;
      Memo1.Lines.Add(ReportType.Text+' Collection arrears '+InttoStr(AP.RowsAffected));



      // then collection of current bills
      AP.Close;
      AP.SQL.Clear;
      AP.SQL.Add('UPDATE MECOLLECTION A, SUMMCOLLCURRENT B SET');
      Case I of
      00 : AP.SQL.Add('  A.COLLECTIONCURRENT = B.TOTALBILL');
      01 : AP.SQL.Add('  A.COLLECTIONCURRENT = B.UCEC');
      02 : AP.SQL.Add('  A.COLLECTIONCURRENT = B.UCME');
      03 : AP.SQL.Add('  A.COLLECTIONCURRENT = B.VATGENCO');
      04 : AP.SQL.Add('  A.COLLECTIONCURRENT = B.VATTRANSCO');
      05 : AP.SQL.Add('  A.COLLECTIONCURRENT = B.VATDIST');
      06 : AP.SQL.Add('  A.COLLECTIONCURRENT = B.VATSYSTEMLOSS');
      07 : AP.SQL.Add('  A.COLLECTIONCURRENT = B.VATGENCODISCAMT');
      08 : AP.SQL.Add('  A.COLLECTIONCURRENT = B.VATTRANSCODISCAMT');
      09 : AP.SQL.Add('  A.COLLECTIONCURRENT = B.VATDISTDISCAMT');
      10 : AP.SQL.Add('  A.COLLECTIONCURRENT = B.VATSYSTEMLOSSDISCAMT');
      11 : AP.SQL.Add('  A.COLLECTIONCURRENT = B.VATGENCO + B.VATGENCODISCAMT');
      12 : AP.SQL.Add('  A.COLLECTIONCURRENT = B.VATTRANSCO + B.VATTRANSCODISCAMT');
      13 : AP.SQL.Add('  A.COLLECTIONCURRENT = B.VATDIST + B.VATDISTDISCAMT');
      14 : AP.SQL.Add('  A.COLLECTIONCURRENT = B.VATSYSTEMLOSS + B.VATSYSTEMLOSSDISCAMT');
      15 : AP.SQL.Add('  A.COLLECTIONCURRENT = B.KWHR');
      end;
      AP.SQL.Add('WHERE A.AREA = B.AREA AND');
      AP.SQL.Add('      A.MONTHYEAR = :MONTHYEAR AND');
      AP.SQL.Add('      A.COLLECTIONTYPE = :COLLECTIONTYPE');
      AP.ParamByName('MonthYear').Text           := MonthYear.Text;
      AP.ParamByName('CollectionType').AsInteger := I;
      AP.Execute;
      Memo1.Lines.Add(ReportType.Text+' Collection current '+InttoStr(AP.RowsAffected));


      // add back adjustments of current bill
      AP.Close;
      AP.SQL.Clear;
      AP.SQL.Add('UPDATE MECOLLECTION SET');
      AP.SQL.Add('      BEGINCURRENT = BEGINCURRENT + (ADJDEBITCURRENT - ADJCREDITCURRENT)');
      AP.SQL.Add('WHERE MONTHYEAR = :MONTHYEAR AND');
      AP.SQL.Add('      COLLECTIONTYPE = :COLLECTIONTYPE');
      AP.ParamByName('MonthYear').Text           := MonthYear.Text;
      AP.ParamByName('CollectionType').AsInteger := I;
      AP.Execute;
      Memo1.Lines.Add(ReportType.Text+' begin current updated '+InttoStr(AP.RowsAffected));


      // then compute net values
      AP.Close;
      AP.SQL.Clear;
      AP.SQL.Add('UPDATE MECOLLECTION SET');
      AP.SQL.Add('      NETARREARS = BEGINARREAR + (ADJDEBITARREAR - ADJCREDITARREAR),');
      AP.SQL.Add('      NETCURRENT = (BEGINCURRENT+BEGINLATEBILL) + (ADJDEBITCURRENT - ADJCREDITCURRENT)');
      AP.SQL.Add('WHERE MONTHYEAR = :MONTHYEAR AND');
      AP.SQL.Add('      COLLECTIONTYPE = :COLLECTIONTYPE');
      AP.ParamByName('MonthYear').Text           := MonthYear.Text;
      AP.ParamByName('CollectionType').AsInteger := I;
      AP.Execute;
      Memo1.Lines.Add(ReportType.Text+' NET updated '+InttoStr(AP.RowsAffected));


      // then compute balances
      AP.Close;
      AP.SQL.Clear;
      AP.SQL.Add('UPDATE MECOLLECTION SET');
      AP.SQL.Add('      BALANCEARREAR = NETARREARS - COLLECTIONARREAR,');
      AP.SQL.Add('      BALANCECURRENT = NETCURRENT - COLLECTIONCURRENT');
      AP.SQL.Add('WHERE MONTHYEAR = :MONTHYEAR AND');
      AP.SQL.Add('      COLLECTIONTYPE = :COLLECTIONTYPE');
      AP.ParamByName('MonthYear').Text           := MonthYear.Text;
      AP.ParamByName('CollectionType').AsInteger := I;
      AP.Execute;
      Memo1.Lines.Add(ReportType.Text+' NET updated '+InttoStr(AP.RowsAffected));


   end;

  MessageDlg('Compute Existing Report Done...', mtInformation, [mbOK], 0);

  ReportType.ItemIndex := 0;
  MECollection.Close;
  MECollection.SQL.Clear;
  MECollection.SQL.Add('select * from mecollection');
  MECollection.SQL.Add('    where monthyear = :monthyear and');
  MECollection.SQL.Add('          collectiontype = :collectiontype');
  MECollection.ParamByName('MonthYear').Text      := MonthYear.Text;
  MECollection.ParamByName('CollectionType').Text := IntToStr(ReportType.ItemIndex);
  MECollection.SQL.Add('order by area');
  MECollection.Open;


end;

procedure TMonthEndCollectionForm.MECollectionCalcFields(
  DataSet: TDataSet);
begin
  MECollectionnet.AsCurrency          := MECollectionNetArrears.AsCurrency + MECollectionNetCurrent.AsCurrency;
  MECollectioncollection.AsCurrency   := MECollectionCollectionArrear.AsCurrency + MECollectionCollectionCurrent.AsCurrency;

  If MECollectionnet.AsCurrency > 0 then
  MECollectionpercent.AsFloat         := (MECollectioncollection.AsCurrency/MECollectionnet.AsCurrency) * 100 else
  MECollectionpercent.AsFloat         := 0;

  MECollectionadjdebit.AsCurrency     := MECollectionAdjDebitArrear.AsCurrency + MECollectionAdjDebitCurrent.AsCurrency;
  MECollectionadjcredit.AsCurrency    := MECollectionAdjCreditArrear.AsCurrency + MECollectionAdjCreditCurrent.AsCurrency;

  MECollectionTotalCurrent.AsCurrency := MECollectionBeginCurrent.AsCurrency + MECollectionBeginLateBill.AsCurrency;
end;

procedure TMonthEndCollectionForm.DTCollectionCalcFields(
  DataSet: TDataSet);
begin
  DTCollectionnet.AsCurrency          := DTCollectionNetArrears.AsCurrency + DTCollectionNetCurrent.AsCurrency;
  DTCollectioncollection.AsCurrency   := DTCollectionCollectionArrear.AsCurrency + DTCollectionCollectionCurrent.AsCurrency;

  If DTCollectionnet.AsCurrency > 0 then
  DTCollectionpercent.AsFloat         := (DTCollectioncollection.AsCurrency/DTCollectionnet.AsCurrency) * 100 else
  DTCollectionpercent.AsFloat         := 0;

  DTCollectionadjdebit.AsCurrency     := DTCollectionAdjDebitArrear.AsCurrency + DTCollectionAdjDebitCurrent.AsCurrency;
  DTCollectionadjcredit.AsCurrency    := DTCollectionAdjCreditArrear.AsCurrency + DTCollectionAdjCreditCurrent.AsCurrency;

  DTCollectionTotalCurrent.AsCurrency := DTCollectionBeginCurrent.AsCurrency + DTCollectionBeginLateBill.AsCurrency;
end;

procedure TMonthEndCollectionForm.GTCalcFields(DataSet: TDataSet);
begin
  GTnet.AsCurrency          := GTNetArrears.AsCurrency + GTNetCurrent.AsCurrency;
  GTcollection.AsCurrency   := GTCollectionArrear.AsCurrency + GTCollectionCurrent.AsCurrency;

  If GTnet.AsCurrency > 0 then
  GTpercent.AsFloat         := (GTcollection.AsCurrency/GTnet.AsCurrency) * 100 else
  GTpercent.AsFloat         := 0;

  GTadjdebit.AsCurrency     := GTAdjDebitArrear.AsCurrency + GTAdjDebitCurrent.AsCurrency;
  GTadjcredit.AsCurrency    := GTAdjCreditArrear.AsCurrency + GTAdjCreditCurrent.AsCurrency;

  GTTotalCurrent.AsCurrency := GTBeginCurrent.AsCurrency + GTBeginLateBill.AsCurrency;
end;

procedure TMonthEndCollectionForm.DsFancyButton5Click(Sender: TObject);
Var NowMonth : TDate;

begin
  Try
  NowMonth := StrToDate(Copy(MonthYear.text,1,2)+'/01/'+Copy(MonthYear.Text,3,2));
  except
  MessageDlg('Input valid billmonth please...', mtWarning, [mbOK], 0);
  exit;
  end;

  DTCollection.Close;
  DTCollection.ParamByName('MonthYear').Text           := MonthYear.Text;
  DTCollection.ParamByName('collectiontype').AsInteger := ReportType.ItemIndex;
  DTCollection.Open;

  GT.Close;
  GT.ParamByName('MonthYear').Text           := MonthYear.Text;
  GT.ParamByName('collectiontype').AsInteger := ReportType.ItemIndex;
  GT.Open;

  MECollection.Close;
  MECollection.SQL.Clear;
  MECollection.SQL.Add('select * from mecollection');
  MECollection.MasterSource := DSDTCollection;
  MECollection.MasterFields := 'District;CollectionType;MonthYear';
  MECollection.DetailFields := 'District;CollectionType;MonthYear';
  MECollection.Open;

  ReportName.Caption := ReportType.Text;
  Month.Caption      := FormatDateTime('MMMM, YYYY',NowMonth);
  CollRep.Preview;

  GT.Close;
  DTCollection.Close;
  MECollection.Close;

  MECollection.MasterSource := Nil;
  MECollection.MasterFields := '';
  MECollection.DetailFields := '';
  MECollection.SQL.Clear;
  MECollection.SQL.Add('select * from mecollection');
  MECollection.SQL.Add('    where monthyear = :monthyear');
  MECollection.ParamByName('monthyear').Text := MonthYear.Text;
  MECollection.Open;

end;

procedure TMonthEndCollectionForm.DsFancyButton4Click(Sender: TObject);
begin
  if (MessageDlg('Deleting should only be done on the current month to start fresh or'+#13+#10+'to months that you no longer need to be on file... Otherwise just click'+#13+#10+'the cancel button to abort this process... Do you wish to continue?', mtConfirmation, [mbYes, mbCancel], 0) = mrCancel) then exit;

  Memo1.Clear;
  AP.Close;
  AP.SQL.Clear;
  AP.SQL.Add('DELETE FROM MECOLLECTION');
  AP.SQL.Add('WHERE MONTHYEAR = :MONTHYEAR');
  AP.ParamByName('MonthYear').Text           := MonthYear.Text;
  AP.Execute;
  Memo1.Lines.Add('Records deleted '+InttoStr(AP.RowsAffected));
  MessageDlg('Done....', mtInformation, [mbOK], 0);
  If MECollection.Active then MECollection.Refresh;

end;

end.


