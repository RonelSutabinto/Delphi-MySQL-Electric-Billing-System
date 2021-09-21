unit SalesByArea;

interface

uses
  Windows,
  Messages,
  Classes,
  SysUtils,
  Graphics,
  Controls,
  StdCtrls,
  Forms,
  Dialogs,
  DBCtrls,
  DB,
  Mask,
  ExtCtrls,
  Buttons,
  Grids,
  DBGrids,
  PDJSillyLabel,
  ComCtrls,
  MemDS,
  DBAccess,
  MyAccess,
  CRGrid,
  DsFancyButton,
  NxCollection, CRDBGrid1;

type
  TSalesByAreaForm = class(TForm)
    Panel2: TPanel;
    Label12: TLabel;
    Edit1: TEdit;
    Label1: TLabel;
    Generate: TNxButton;
    Hardcopy: TNxButton;
    PDJSillyLabel1: TNxButton;
    ResetFilter: TNxButton;
    PDJSillyLabel2: TNxButton;
    PName: TEdit;
    PPosition: TEdit;
    Label2: TLabel;
    DateFrom: TDateTimePicker;
    Label3: TLabel;
    DateTo: TDateTimePicker;
    Label6: TLabel;
    PDJSillyLabel3: TNxButton;
    PDJSillyLabel4: TNxButton;
    PDJSillyLabel5: TNxButton;
    Panel1: TNxHeaderPanel;
    ViewLateBill: TMyQuery;
    ViewLateBillAccountNumber: TStringField;
    ViewLateBillName: TStringField;
    ViewLateBillTotalBill: TFloatField;
    ViewLateBillBillMonth: TStringField;
    ViewLateBillBillDate: TDateField;
    DSViewLateBill: TDataSource;
    LBSumm: TMyQuery;
    DSLBSumm: TDataSource;
    LBSummRATECODE: TStringField;
    LBSummRATESTR: TStringField;
    LBSummBILLS: TLargeintField;
    LBSummAMOUNT: TFloatField;
    TOTAL: TMyQuery;
    TOTALBILLS: TLargeintField;
    TOTALAMOUNT: TFloatField;
    Panel3: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    Bevel3: TBevel;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    ViewOption: TRadioGroup;
    PDJSillyLabel6: TNxButton;
    PDJSillyLabel7: TNxButton;
    ViewLateBillRateCode: TStringField;
    LBAreaSumm: TMyQuery;
    DSLBAreaSumm: TDataSource;
    LBAreaSummAREA: TStringField;
    LBAreaSummBILLS: TLargeintField;
    LBAreaSummAMOUNT: TFloatField;
    PDJSillyLabel8: TNxButton;
    Area: TLabeledEdit;
    Label14: TLabel;
    CName: TEdit;
    CPosition: TEdit;
    Label15: TLabel;
    NName: TEdit;
    NPosition: TEdit;
    DsFancyButton1: TNxButton;
    DsFancyButton2: TNxButton;
    Bevel2: TBevel;
    DBGrid3: TCRDBGrid1;
    DBGrid4: TCRDBGrid1;
    DBGrid5: TCRDBGrid1;
    DBGrid1: TCRDBGrid1;
    DBGrid2: TCRDBGrid1;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PDJSillyLabel2Click(Sender: TObject);
    procedure PDJSillyLabel1Click(Sender: TObject);
    procedure GenerateClick(Sender: TObject);
    procedure HardcopyClick(Sender: TObject);
    procedure ResetFilterClick(Sender: TObject);
    procedure PDJSillyLabel3Click(Sender: TObject);
    procedure PDJSillyLabel4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PDJSillyLabel5Click(Sender: TObject);
    procedure PDJSillyLabel7Click(Sender: TObject);
    procedure ViewOptionClick(Sender: TObject);
    procedure PDJSillyLabel6Click(Sender: TObject);
    procedure PDJSillyLabel8Click(Sender: TObject);
    procedure DsFancyButton1Click(Sender: TObject);
    procedure DsFancyButton2Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  SalesByAreaForm: TSalesByAreaForm;

implementation

uses Data, SBAReport, StatusUpdate, ModTools, DateUtils;

{$R *.DFM}

procedure TSalesByAreaForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  SalesByAreaForm := Nil;
end;

procedure TSalesByAreaForm.PDJSillyLabel2Click(Sender: TObject);
Var
BillMonthStr : String;
begin

  If Edit1.Text = '' then
    begin
      ShowMessage('Define a bill month first');
      exit;
    end;

  If Copy(Edit1.Text,1,2) = '01' then BillMonthStr := 'JANUARY '   + Copy(Edit1.Text,3,2);
  If Copy(Edit1.Text,1,2) = '02' then BillMonthStr := 'FEBRUARY '  + Copy(Edit1.Text,3,2);
  If Copy(Edit1.Text,1,2) = '03' then BillMonthStr := 'MARCH '     + Copy(Edit1.Text,3,2);
  If Copy(Edit1.Text,1,2) = '04' then BillMonthStr := 'APRIL '     + Copy(Edit1.Text,3,2);
  If Copy(Edit1.Text,1,2) = '05' then BillMonthStr := 'MAY '       + Copy(Edit1.Text,3,2);
  If Copy(Edit1.Text,1,2) = '06' then BillMonthStr := 'JUNE '      + Copy(Edit1.Text,3,2);
  If Copy(Edit1.Text,1,2) = '07' then BillMonthStr := 'JULY '      + Copy(Edit1.Text,3,2);
  If Copy(Edit1.Text,1,2) = '08' then BillMonthStr := 'AUGUST '    + Copy(Edit1.Text,3,2);
  If Copy(Edit1.Text,1,2) = '09' then BillMonthStr := 'SEPTEMBER ' + Copy(Edit1.Text,3,2);
  If Copy(Edit1.Text,1,2) = '10' then BillMonthStr := 'OCTOBER '   + Copy(Edit1.Text,3,2);
  If Copy(Edit1.Text,1,2) = '11' then BillMonthStr := 'NOVEMBER '  + Copy(Edit1.Text,3,2);
  If Copy(Edit1.Text,1,2) = '12' then BillMonthStr := 'DECEMBER '  + Copy(Edit1.Text,3,2);

  With BillingData do
  begin
    TSales.Close;
    TSales.ParamByName('billmonth').Text := Edit1.Text;;
    TSales.Open;

    TSalesTotal.Close;
    TSalesTotal.ParamByName('billmonth').Text := Edit1.Text;;
    TSalesTotal.Open;

    If not assigned(SBAReportForm) then
    SBAReportForm := TSBAReportForm.Create(Application);
    SBAReportForm.BillMonth2.Text := BillMonthStr;

    SBAReportForm.PrepareName.Caption       := PName.text;
    SBAReportForm.PreparePosition.Caption   := PPosition.text;
    SBAReportForm.CheckedBy.Caption         := CName.text;
    SBAReportForm.CheckedByPosition.Caption := CPosition.text;
    SBAReportForm.NotedBy.Caption           := NName.text;
    SBAReportForm.NotedByPosition.Caption   := NPosition.text;

    SBAReportForm.SalesReport.Preview;
  end;


end;

procedure TSalesByAreaForm.PDJSillyLabel1Click(Sender: TObject);
begin
   Close;
end;

procedure TSalesByAreaForm.GenerateClick(Sender: TObject);
begin
  If Trim(Edit1.Text) = '' then
    begin
      ShowMessage('Define a bill month first');
      exit;
    end;

  With BillingData do
  begin
    SBAQuery.Close;
    SBAQuery.ParamByName('billmonth').Text := Edit1.Text;;
    SBAQuery.Open;

    SBADetailQuery.Close;
    SBADetailQuery.ParamByName('billmonth').Text := Edit1.Text;;
    SBADetailQuery.Open;

    SalesTotal.Close;
    SalesTotal.ParamByName('billmonth').Text := Edit1.Text;;
    SalesTotal.Open;
  end;

  MessageDlg('SQL Statements execution complete.....', mtInformation, [mbOK], 0);

end;

procedure TSalesByAreaForm.HardcopyClick(Sender: TObject);
Var
BillMonthStr : String;
begin
  If Edit1.Text = '' then
    begin
      ShowMessage('Define a bill month first');
      exit;
    end;
  If Copy(Edit1.Text,1,2) = '01' then BillMonthStr := 'JANUARY '   + Copy(Edit1.Text,3,2);
  If Copy(Edit1.Text,1,2) = '02' then BillMonthStr := 'FEBRUARY '  + Copy(Edit1.Text,3,2);
  If Copy(Edit1.Text,1,2) = '03' then BillMonthStr := 'MARCH '     + Copy(Edit1.Text,3,2);
  If Copy(Edit1.Text,1,2) = '04' then BillMonthStr := 'APRIL '     + Copy(Edit1.Text,3,2);
  If Copy(Edit1.Text,1,2) = '05' then BillMonthStr := 'MAY '       + Copy(Edit1.Text,3,2);
  If Copy(Edit1.Text,1,2) = '06' then BillMonthStr := 'JUNE '      + Copy(Edit1.Text,3,2);
  If Copy(Edit1.Text,1,2) = '07' then BillMonthStr := 'JULY '      + Copy(Edit1.Text,3,2);
  If Copy(Edit1.Text,1,2) = '08' then BillMonthStr := 'AUGUST '    + Copy(Edit1.Text,3,2);
  If Copy(Edit1.Text,1,2) = '09' then BillMonthStr := 'SEPTEMBER ' + Copy(Edit1.Text,3,2);
  If Copy(Edit1.Text,1,2) = '10' then BillMonthStr := 'OCTOBER '   + Copy(Edit1.Text,3,2);
  If Copy(Edit1.Text,1,2) = '11' then BillMonthStr := 'NOVEMBER '  + Copy(Edit1.Text,3,2);
  If Copy(Edit1.Text,1,2) = '12' then BillMonthStr := 'DECEMBER '  + Copy(Edit1.Text,3,2);

  If not assigned(SBAReportForm) then
  SBAReportForm := TSBAReportForm.Create(Application);

  SBAReportForm.Title2.Text := BillMonthStr;
  SBAReportForm.SBAReport.Preview;

end;

procedure TSalesByAreaForm.ResetFilterClick(Sender: TObject);
Var
BillMonthStr : String;
begin

  If Edit1.Text = '' then
    begin
      ShowMessage('Define a bill month first');
      exit;
    end;

  If Copy(Edit1.Text,1,2) = '01' then BillMonthStr := 'JANUARY '   + Copy(Edit1.Text,3,2);
  If Copy(Edit1.Text,1,2) = '02' then BillMonthStr := 'FEBRUARY '  + Copy(Edit1.Text,3,2);
  If Copy(Edit1.Text,1,2) = '03' then BillMonthStr := 'MARCH '     + Copy(Edit1.Text,3,2);
  If Copy(Edit1.Text,1,2) = '04' then BillMonthStr := 'APRIL '     + Copy(Edit1.Text,3,2);
  If Copy(Edit1.Text,1,2) = '05' then BillMonthStr := 'MAY '       + Copy(Edit1.Text,3,2);
  If Copy(Edit1.Text,1,2) = '06' then BillMonthStr := 'JUNE '      + Copy(Edit1.Text,3,2);
  If Copy(Edit1.Text,1,2) = '07' then BillMonthStr := 'JULY '      + Copy(Edit1.Text,3,2);
  If Copy(Edit1.Text,1,2) = '08' then BillMonthStr := 'AUGUST '    + Copy(Edit1.Text,3,2);
  If Copy(Edit1.Text,1,2) = '09' then BillMonthStr := 'SEPTEMBER ' + Copy(Edit1.Text,3,2);
  If Copy(Edit1.Text,1,2) = '10' then BillMonthStr := 'OCTOBER '   + Copy(Edit1.Text,3,2);
  If Copy(Edit1.Text,1,2) = '11' then BillMonthStr := 'NOVEMBER '  + Copy(Edit1.Text,3,2);
  If Copy(Edit1.Text,1,2) = '12' then BillMonthStr := 'DECEMBER '  + Copy(Edit1.Text,3,2);

  With BillingData do
  begin
    TSales.Close;
    TSales.ParamByName('billmonth').Text := Edit1.Text;;
    TSales.Open;

    TSalesTotal.Close;
    TSalesTotal.ParamByName('billmonth').Text := Edit1.Text;;
    TSalesTotal.Open;

    If not assigned(SBAReportForm) then
    SBAReportForm := TSBAReportForm.Create(Application);

    SBAReportForm.BillMonth2.Text           := BillMonthStr;
    SBAReportForm.PrepareName.Caption       := PName.text;
    SBAReportForm.PreparePosition.Caption   := PPosition.text;
    SBAReportForm.CheckedBy.Caption         := CName.text;
    SBAReportForm.CheckedByPosition.Caption := CPosition.text;
    SBAReportForm.NotedBy.Caption           := NName.text;
    SBAReportForm.NotedByPosition.Caption   := NPosition.text;
    SBAReportForm.SalesReport1.Preview;
  end;


end;

procedure TSalesByAreaForm.PDJSillyLabel3Click(Sender: TObject);
Var
BillMonthStr : String;
begin

  If Edit1.Text = '' then
    begin
      ShowMessage('Define a bill month first');
      exit;
    end;

  If Copy(Edit1.Text,1,2) = '01' then BillMonthStr := 'JANUARY '   + Copy(Edit1.Text,3,2);
  If Copy(Edit1.Text,1,2) = '02' then BillMonthStr := 'FEBRUARY '  + Copy(Edit1.Text,3,2);
  If Copy(Edit1.Text,1,2) = '03' then BillMonthStr := 'MARCH '     + Copy(Edit1.Text,3,2);
  If Copy(Edit1.Text,1,2) = '04' then BillMonthStr := 'APRIL '     + Copy(Edit1.Text,3,2);
  If Copy(Edit1.Text,1,2) = '05' then BillMonthStr := 'MAY '       + Copy(Edit1.Text,3,2);
  If Copy(Edit1.Text,1,2) = '06' then BillMonthStr := 'JUNE '      + Copy(Edit1.Text,3,2);
  If Copy(Edit1.Text,1,2) = '07' then BillMonthStr := 'JULY '      + Copy(Edit1.Text,3,2);
  If Copy(Edit1.Text,1,2) = '08' then BillMonthStr := 'AUGUST '    + Copy(Edit1.Text,3,2);
  If Copy(Edit1.Text,1,2) = '09' then BillMonthStr := 'SEPTEMBER ' + Copy(Edit1.Text,3,2);
  If Copy(Edit1.Text,1,2) = '10' then BillMonthStr := 'OCTOBER '   + Copy(Edit1.Text,3,2);
  If Copy(Edit1.Text,1,2) = '11' then BillMonthStr := 'NOVEMBER '  + Copy(Edit1.Text,3,2);
  If Copy(Edit1.Text,1,2) = '12' then BillMonthStr := 'DECEMBER '  + Copy(Edit1.Text,3,2);

  With BillingData do
  begin
    TSalesLateBills.Close;
    TSalesLateBills.ParamByName('datefrom').AsDate := DateFrom.Date;
    TSalesLateBills.ParamByName('dateto').AsDate   := DateTo.Date;
    TSalesLateBills.Open;

    TSalesTotalLateBills.Close;
    TSalesTotalLateBills.ParamByName('datefrom').AsDate := DateFrom.Date;
    TSalesTotalLateBills.ParamByName('dateto').AsDate   := DateTo.Date;
    TSalesTotalLateBills.Open;

    If not assigned(SBAReportForm) then
    SBAReportForm := TSBAReportForm.Create(Application);

    SBAReportForm.LateBillsBillMonth.Text            := BillMonthStr + ' Period Covered '+
                                                        DateToStr(DateFrom.DateTime)+' - '+
                                                        DateToStr(DateTo.DateTime);

    SBAReportForm.PrepareLateBills.Caption           := PName.text;
    SBAReportForm.PreparePositionLateBills.Caption   := PPosition.text;
    SBAReportForm.CheckedByLateBills.Caption         := CName.text;
    SBAReportForm.CheckedByPositionLateBills.Caption := CPosition.text;
    SBAReportForm.NotedByLateBills.Caption           := NName.text;
    SBAReportForm.NotedByPositionLateBills.Caption   := NPosition.text;

    SBAReportForm.SalesReportLateBills1.Preview;
  end;

end;

procedure TSalesByAreaForm.PDJSillyLabel4Click(Sender: TObject);
Var
BillMonthStr : String;
begin

  If Edit1.Text = '' then
    begin
      ShowMessage('Define a bill month first');
      exit;
    end;

  If Copy(Edit1.Text,1,2) = '01' then BillMonthStr := 'JANUARY '   + Copy(Edit1.Text,3,2);
  If Copy(Edit1.Text,1,2) = '02' then BillMonthStr := 'FEBRUARY '  + Copy(Edit1.Text,3,2);
  If Copy(Edit1.Text,1,2) = '03' then BillMonthStr := 'MARCH '     + Copy(Edit1.Text,3,2);
  If Copy(Edit1.Text,1,2) = '04' then BillMonthStr := 'APRIL '     + Copy(Edit1.Text,3,2);
  If Copy(Edit1.Text,1,2) = '05' then BillMonthStr := 'MAY '       + Copy(Edit1.Text,3,2);
  If Copy(Edit1.Text,1,2) = '06' then BillMonthStr := 'JUNE '      + Copy(Edit1.Text,3,2);
  If Copy(Edit1.Text,1,2) = '07' then BillMonthStr := 'JULY '      + Copy(Edit1.Text,3,2);
  If Copy(Edit1.Text,1,2) = '08' then BillMonthStr := 'AUGUST '    + Copy(Edit1.Text,3,2);
  If Copy(Edit1.Text,1,2) = '09' then BillMonthStr := 'SEPTEMBER ' + Copy(Edit1.Text,3,2);
  If Copy(Edit1.Text,1,2) = '10' then BillMonthStr := 'OCTOBER '   + Copy(Edit1.Text,3,2);
  If Copy(Edit1.Text,1,2) = '11' then BillMonthStr := 'NOVEMBER '  + Copy(Edit1.Text,3,2);
  If Copy(Edit1.Text,1,2) = '12' then BillMonthStr := 'DECEMBER '  + Copy(Edit1.Text,3,2);

  With BillingData do
  begin
    TSalesLateBills.Close;
    TSalesLateBills.ParamByName('datefrom').AsDate := DateFrom.Date;
    TSalesLateBills.ParamByName('dateto').AsDate   := DateTo.Date;
    TSalesLateBills.Open;

    TSalesTotalLateBills.Close;
    TSalesTotalLateBills.ParamByName('datefrom').AsDate := DateFrom.Date;
    TSalesTotalLateBills.ParamByName('dateto').AsDate   := DateTo.Date;
    TSalesTotalLateBills.Open;

    If not assigned(SBAReportForm) then
    SBAReportForm := TSBAReportForm.Create(Application);

    SBAReportForm.LateBillsBillMonth.Text            := BillMonthStr;

    SBAReportForm.PrepareLateBills.Caption           := PName.text;
    SBAReportForm.PreparePositionLateBills.Caption   := PPosition.text;
    SBAReportForm.CheckedByLateBills.Caption         := CName.text;
    SBAReportForm.CheckedByPositionLateBills.Caption := CPosition.text;
    SBAReportForm.NotedByLateBills.Caption           := NName.text;
    SBAReportForm.NotedByPositionLateBills.Caption   := NPosition.text;

    SBAReportForm.SalesReportLateBills2.Preview;
  end;

end;

procedure TSalesByAreaForm.FormShow(Sender: TObject);
begin
  DateFrom.Date := StartOfTheMonth(Now);
  DateTo.Date   := EndOfTheMonth(Now);
end;

procedure TSalesByAreaForm.PDJSillyLabel5Click(Sender: TObject);
begin
  ViewLateBill.Close;
  ViewLateBill.SQL.Clear;
  ViewLateBill.SQL.Add('SELECT * FROM LATEBILLHISTORY');
  ViewLateBill.SQL.Add('         WHERE BILLDATE BETWEEN :DATEFROM AND :DATETO');
  ViewLateBill.ParamByName('DateFrom').AsDate := DateFrom.Date;
  ViewLateBill.ParamByName('DateTo').AsDate   := DateTo.Date;
  ViewLateBill.Filter   := '';
  ViewLateBill.Filtered := False;
  ViewLateBill.Open;

  LBSumm.Close;
  LBSumm.ParamByName('DateFrom').AsDate := DateFrom.Date;
  LBSumm.ParamByName('DateTo').AsDate   := DateTo.Date;
  LBSumm.Open;

  LBAreaSumm.Close;
  LBAreaSumm.ParamByName('DateFrom').AsDate := DateFrom.Date;
  LBAreaSumm.ParamByName('DateTo').AsDate   := DateTo.Date;
  LBAreaSumm.Open;

  TOTAL.Close;
  TOTAL.ParamByName('DateFrom').AsDate := DateFrom.Date;
  TOTAL.ParamByName('DateTo').AsDate   := DateTo.Date;
  TOTAL.Open;

  StaticText1.Caption := DateToStr(DateFrom.Date);
  StaticText2.Caption := DateToStr(DateTo.Date);
  StaticText3.Caption := IntToStr(TOTALBILLS.AsInteger);
  StaticText4.Caption := Format(TOTALAMOUNT.AsCurrency,'##,###,###.##');

  Panel1.Left    := 27;
  Panel1.Top     := 10;
  Panel1.Visible := True;
  Panel1.BringToFront;

end;

procedure TSalesByAreaForm.PDJSillyLabel7Click(Sender: TObject);
begin
  Panel1.Visible := False;
end;

procedure TSalesByAreaForm.ViewOptionClick(Sender: TObject);
begin
  Case ViewOption.ItemIndex of
   00 : begin
         ViewLateBill.Filter   := 'RATECODE = ''R''';
         ViewLateBill.Filtered := True;
        end;
   01 : begin
         ViewLateBill.Filter   := 'RATECODE = ''C''';
         ViewLateBill.Filtered := True;
        end;
   02 : begin
         ViewLateBill.Filter   := 'RATECODE = ''P''';
         ViewLateBill.Filtered := True;
        end;
   03 : begin
         ViewLateBill.Filter   := 'RATECODE = ''I''';
         ViewLateBill.Filtered := True;
        end;
   04 : begin
         ViewLateBill.Filter   := 'RATECODE = ''S''';
         ViewLateBill.Filtered := True;
        end;
   05 : begin
         ViewLateBill.Filter   := '';
         ViewLateBill.Filtered := False;
        end;
   end;
end;

procedure TSalesByAreaForm.PDJSillyLabel6Click(Sender: TObject);
begin
  ViewLateBill.Close;
  ViewLateBill.SQL.Clear;
  ViewLateBill.SQL.Add('SELECT * FROM LATEBILLHISTORY');
  ViewLateBill.SQL.Add('         WHERE BILLDATE BETWEEN :DATEFROM AND :DATETO');
  ViewLateBill.ParamByName('DateFrom').AsDate := DateFrom.Date;
  ViewLateBill.ParamByName('DateTo').AsDate   := DateTo.Date;
  ViewLateBill.Filter   := '';
  ViewLateBill.Filtered := False;
  ViewLateBill.Open;

  LBAreaSumm.Close;
  LBAreaSumm.ParamByName('DateFrom').AsDate := DateFrom.Date;
  LBAreaSumm.ParamByName('DateTo').AsDate   := DateTo.Date;
  LBAreaSumm.Open;

  LBSumm.Close;
  LBSumm.ParamByName('DateFrom').AsDate := DateFrom.Date;
  LBSumm.ParamByName('DateTo').AsDate   := DateTo.Date;
  LBSumm.Open;

  TOTAL.Close;
  TOTAL.ParamByName('DateFrom').AsDate := DateFrom.Date;
  TOTAL.ParamByName('DateTo').AsDate   := DateTo.Date;
  TOTAL.Open;

  StaticText1.Caption := DateToStr(DateFrom.Date);
  StaticText2.Caption := DateToStr(DateTo.Date);
  StaticText3.Caption := IntToStr(TOTALBILLS.AsInteger);
  StaticText4.Caption := Format(TOTALAMOUNT.AsCurrency,'##,###,###.##');
end;

procedure TSalesByAreaForm.PDJSillyLabel8Click(Sender: TObject);
begin
  ViewLateBill.Close;
  ViewLateBill.SQL.Clear;
  ViewLateBill.SQL.Add('SELECT * FROM LATEBILLHISTORY');
  ViewLateBill.SQL.Add('         WHERE AREA = :AREA AND');
  ViewLateBill.SQL.Add('               BILLDATE BETWEEN :DATEFROM AND :DATETO');
  ViewLateBill.ParamByName('AREA').Text       := Area.Text;
  ViewLateBill.ParamByName('DATEFROM').AsDate := DATEFROM.Date;
  ViewLateBill.ParamByName('DATETO').AsDate   := DATETO.Date;
  ViewLateBill.Filter   := '';
  ViewLateBill.Filtered := False;
  ViewLateBill.Open;
end;

procedure TSalesByAreaForm.DsFancyButton1Click(Sender: TObject);
Var
BillMonthStr : String;
begin

  If Edit1.Text = '' then
    begin
      ShowMessage('Define a bill month first');
      exit;
    end;

  If Copy(Edit1.Text,1,2) = '01' then BillMonthStr := 'JANUARY '   + Copy(Edit1.Text,3,2);
  If Copy(Edit1.Text,1,2) = '02' then BillMonthStr := 'FEBRUARY '  + Copy(Edit1.Text,3,2);
  If Copy(Edit1.Text,1,2) = '03' then BillMonthStr := 'MARCH '     + Copy(Edit1.Text,3,2);
  If Copy(Edit1.Text,1,2) = '04' then BillMonthStr := 'APRIL '     + Copy(Edit1.Text,3,2);
  If Copy(Edit1.Text,1,2) = '05' then BillMonthStr := 'MAY '       + Copy(Edit1.Text,3,2);
  If Copy(Edit1.Text,1,2) = '06' then BillMonthStr := 'JUNE '      + Copy(Edit1.Text,3,2);
  If Copy(Edit1.Text,1,2) = '07' then BillMonthStr := 'JULY '      + Copy(Edit1.Text,3,2);
  If Copy(Edit1.Text,1,2) = '08' then BillMonthStr := 'AUGUST '    + Copy(Edit1.Text,3,2);
  If Copy(Edit1.Text,1,2) = '09' then BillMonthStr := 'SEPTEMBER ' + Copy(Edit1.Text,3,2);
  If Copy(Edit1.Text,1,2) = '10' then BillMonthStr := 'OCTOBER '   + Copy(Edit1.Text,3,2);
  If Copy(Edit1.Text,1,2) = '11' then BillMonthStr := 'NOVEMBER '  + Copy(Edit1.Text,3,2);
  If Copy(Edit1.Text,1,2) = '12' then BillMonthStr := 'DECEMBER '  + Copy(Edit1.Text,3,2);

  With BillingData do
  begin
    TSales.Close;
    TSales.ParamByName('billmonth').Text := Edit1.Text;;
    TSales.Open;

    TSalesTotal.Close;
    TSalesTotal.ParamByName('billmonth').Text := Edit1.Text;;
    TSalesTotal.Open;

    If not assigned(SBAReportForm) then
    SBAReportForm := TSBAReportForm.Create(Application);
    SBAReportForm.BillMonth2.Text := BillMonthStr;

    SBAReportForm.PrepareName.Caption       := PName.text;
    SBAReportForm.PreparePosition.Caption   := PPosition.text;
    SBAReportForm.CheckedBy.Caption         := CName.text;
    SBAReportForm.CheckedByPosition.Caption := CPosition.text;
    SBAReportForm.NotedBy.Caption           := NName.text;
    SBAReportForm.NotedByPosition.Caption   := NPosition.text;

    SBAReportForm.SalesReport2.Preview;
  end;


end;

procedure TSalesByAreaForm.DsFancyButton2Click(Sender: TObject);
Var
BillMonthStr : String;
begin

  If Edit1.Text = '' then
    begin
      ShowMessage('Define a bill month first');
      exit;
    end;

  If Copy(Edit1.Text,1,2) = '01' then BillMonthStr := 'JANUARY '   + Copy(Edit1.Text,3,2);
  If Copy(Edit1.Text,1,2) = '02' then BillMonthStr := 'FEBRUARY '  + Copy(Edit1.Text,3,2);
  If Copy(Edit1.Text,1,2) = '03' then BillMonthStr := 'MARCH '     + Copy(Edit1.Text,3,2);
  If Copy(Edit1.Text,1,2) = '04' then BillMonthStr := 'APRIL '     + Copy(Edit1.Text,3,2);
  If Copy(Edit1.Text,1,2) = '05' then BillMonthStr := 'MAY '       + Copy(Edit1.Text,3,2);
  If Copy(Edit1.Text,1,2) = '06' then BillMonthStr := 'JUNE '      + Copy(Edit1.Text,3,2);
  If Copy(Edit1.Text,1,2) = '07' then BillMonthStr := 'JULY '      + Copy(Edit1.Text,3,2);
  If Copy(Edit1.Text,1,2) = '08' then BillMonthStr := 'AUGUST '    + Copy(Edit1.Text,3,2);
  If Copy(Edit1.Text,1,2) = '09' then BillMonthStr := 'SEPTEMBER ' + Copy(Edit1.Text,3,2);
  If Copy(Edit1.Text,1,2) = '10' then BillMonthStr := 'OCTOBER '   + Copy(Edit1.Text,3,2);
  If Copy(Edit1.Text,1,2) = '11' then BillMonthStr := 'NOVEMBER '  + Copy(Edit1.Text,3,2);
  If Copy(Edit1.Text,1,2) = '12' then BillMonthStr := 'DECEMBER '  + Copy(Edit1.Text,3,2);

  With BillingData do
  begin
    TSalesLateBills.Close;
    TSalesLateBills.ParamByName('datefrom').AsDate := DateFrom.Date;
    TSalesLateBills.ParamByName('dateto').AsDate   := DateTo.Date;
    TSalesLateBills.Open;

    TSalesTotalLateBills.Close;
    TSalesTotalLateBills.ParamByName('datefrom').AsDate := DateFrom.Date;
    TSalesTotalLateBills.ParamByName('dateto').AsDate   := DateTo.Date;
    TSalesTotalLateBills.Open;

    If not assigned(SBAReportForm) then
    SBAReportForm := TSBAReportForm.Create(Application);

    SBAReportForm.LateBillsBillMonth.Text            := BillMonthStr;

    SBAReportForm.PrepareLateBills.Caption           := PName.text;
    SBAReportForm.PreparePositionLateBills.Caption   := PPosition.text;
    SBAReportForm.CheckedByLateBills.Caption         := CName.text;
    SBAReportForm.CheckedByPositionLateBills.Caption := CPosition.text;
    SBAReportForm.NotedByLateBills.Caption           := NName.text;
    SBAReportForm.NotedByPositionLateBills.Caption   := NPosition.text;

    SBAReportForm.SalesReportLateBills3.Preview;
  end;

end;

end.
