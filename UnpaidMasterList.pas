unit UnpaidMasterList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Mask, StdCtrls, ExtCtrls, Grids, DBGrids,
  Gauges, PDJSillyLabel, DB, MemDS, DBAccess, MyAccess, CRGrid,
  DsFancyButton, NxCollection, NxEdit, DateUtils, CRDBGrid1, AdvGlassButton,
  Vcl.Buttons, AdvPanel, AdvEdit, frxClass, frxDBSet;

type
  TUnpaidBillsListForm = class(TForm)
    Panel2: TPanel;
    Option: TRadioGroup;
    PrintOption: TRadioGroup;
    RC: TMyQuery;
    DSRC: TDataSource;
    RCEntry: TIntegerField;
    RCDocument: TStringField;
    RCCode: TFloatField;
    RCArea: TStringField;
    RCBook: TStringField;
    RCAccountNumber: TStringField;
    RCDate: TDateField;
    RCName: TStringField;
    RCBillMonth: TStringField;
    RCRateCode: TStringField;
    RCReading: TFloatField;
    RCKilowattHour: TFloatField;
    RCAmount: TFloatField;
    RCUCNPCSD: TFloatField;
    RCUCNPCSCC: TFloatField;
    RCUCDUSCC: TFloatField;
    RCUCME: TFloatField;
    RCUCETR: TFloatField;
    RCUCEC: TFloatField;
    RCUCCSR: TFloatField;
    RCTransformerRental: TFloatField;
    RCVATDist: TFloatField;
    RCVATGenCO: TFloatField;
    RCVATTransCO: TFloatField;
    RCVATSystemLossGenCO: TFloatField;
    RCVATSystemLossTransCO: TFloatField;
    RCVAT: TFloatField;
    VQ: TMyQuery;
    VQAREA: TStringField;
    VQBOOK: TStringField;
    Panel9: TNxHeaderPanel;
    Gauge1: TGauge;
    Label68: TLabel;
    Label65: TLabel;
    Label67: TLabel;
    DiscoByConsumerType: TNxButton;
    UnpaidBillsAging: TNxButton;
    UnpaidBillsByConsumerType: TNxButton;
    NotedBy: TNxEdit;
    CheckedBy: TNxEdit;
    PreparedBy: TNxEdit;
    RCconncode: TStringField;
    RCserial: TStringField;
    SelectOption: TRadioGroup;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label6: TLabel;
    AreaName: TNxEdit;
    Area: TComboBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label3: TLabel;
    StartAccount: TNxEdit;
    EndAccount: TNxEdit;
    RCWRateCode: TStringField;
    RCsortdate: TStringField;
    NxButton1: TNxButton;
    NxLinkLabel1: TNxLinkLabel;
    RCDeleteRemarks: TStringField;
    RCVATDiscAmt: TFloatField;
    RCVATDistDiscAmt: TFloatField;
    RCVATGenCoDiscAmt: TFloatField;
    RCVATTransCoDiscAmt: TFloatField;
    RCVATSystemLossDiscAmt: TFloatField;
    RCSystemLossCharge: TFloatField;
    RCPKVRAmount: TFloatField;
    RCOEBRNumber: TStringField;
    RCSCDisc: TFloatField;
    RCmcc: TFloatField;
    RCocamount: TFloatField;
    OC: TMyQuery;
    OCdescription: TStringField;
    OCcurrent: TFloatField;
    OCarrears: TFloatField;
    DBGrid1: TCRDBGrid1;
    AdvPanel1: TAdvPanel;
    AdvPanelStyler1: TAdvPanelStyler;
    AdvPanel2: TAdvPanel;
    Label7: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    StartPage: TNxEdit;
    CutOffDate: TNxDatePicker;
    BillMonth: TNxEdit;
    AdvGlassButton2: TAdvGlassButton;
    AdvGlassButton1: TAdvGlassButton;
    AdvGlassButton3: TAdvGlassButton;
    AdvGlassButton4: TAdvGlassButton;
    CheckBox1: TCheckBox;
    AdvPanel3: TAdvPanel;
    RCtmp: TMyQuery;
    unpaid_Rep: TfrxReport;
    RCtmp_tfrx: TfrxDBDataset;
    RCtmpageBill: TStringField;
    RCtmpTotal: TFloatField;
    RCtmpEVAT: TFloatField;
    RCtmpEVATDist: TFloatField;
    RCtmpEVATGenCO: TFloatField;
    RCtmpEVATTransCO: TFloatField;
    RCtmpEVATSystemLoss: TFloatField;
    RCtmpUCEC: TFloatField;
    RCtmpUCME: TFloatField;
    RCtmpUCNPCSCC: TFloatField;
    RCtmpSystemLossCharge: TFloatField;
    RCtmpmcc: TFloatField;
    RCtmpFitall: TFloatField;
    RCtmpRPT: TFloatField;
    RCtmpUCNPCSCD: TFloatField;
    RCtmpICCS: TFloatField;
    RCtmpPARec: TFloatField;
    RCtmpVATmcc: TFloatField;
    RCtmpocamount: TFloatField;
    RCtmpbreakDownOC: TStringField;
    RCtmpKilowattHour: TFloatField;
    RCtmpheader: TStringField;
    RCtmpheaderB: TStringField;
    RCtmptotalNet: TFloatField;
    RCtmpgroupC: TLargeintField;
    RCtmpBM: TStringField;
    RCtmpOC: TMemoField;
    RCtmpgram: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DiscoByConsumerTypeClick(Sender: TObject);
    procedure UnpaidBillsAgingClick(Sender: TObject);
    procedure UnpaidBillsByConsumerTypeClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AreaKeyPress(Sender: TObject; var Key: Char);
    procedure AreaCloseUp(Sender: TObject);
    procedure SelectOptionClick(Sender: TObject);
    procedure NxLinkLabel1Click(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure AdvGlassButton2Click(Sender: TObject);
    procedure AdvGlassButton1Click(Sender: TObject);
    procedure AdvGlassButton3Click(Sender: TObject);
    procedure AdvGlassButton4Click(Sender: TObject);
    procedure yearEndReport();
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UnpaidBillsListForm: TUnpaidBillsListForm;

implementation

uses Data, StatusUpdate, ModTools, MasterList, AR;

{$R *.dfm}

Var
Lst : Text ;

procedure TUnpaidBillsListForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
   UnpaidBillsListForm := Nil;
end;

procedure TUnpaidBillsListForm.DiscoByConsumerTypeClick(Sender: TObject);
Var
RRateCode                                       : Array[1..6] of String[1];
RRateStr                                        : Array[1..6] of String[15];
RBillsCurrent                                   : Array[1..6] of Word;
RAmountCurrent                                  : Array[1..6] of Currency;
RBillsArrears                                   : Array[1..6] of Word;
RAmountArrears                                  : Array[1..6] of Currency;

RTransformerRentalCurrent                       : Currency;
RUCNPCSDCurrent                                 : Currency;
RUCNPCSCCCurrent                                : Currency;
RUCDUSCCCurrent                                 : Currency;
RUCMECurrent                                    : Currency;
RUCETRCurrent                                   : Currency;
RUCECCurrent                                    : Currency;
RUCCSRCurrent                                   : Currency;
RSystemLossChargeCurrent                        : Currency;
RVATGenCOCurrent                                : Currency;
RVATTransCOCurrent                              : Currency;
RVATSystemLossCurrent                           : Currency;
RVATDistCurrent                                 : Currency;
RTotalCurrent                                   : Currency;
RNetCurrent                                     : Currency;

RTransformerRentalArrears                       : Currency;
RUCNPCSDArrears                                 : Currency;
RUCNPCSCCArrears                                : Currency;
RUCDUSCCArrears                                 : Currency;
RUCMEArrears                                    : Currency;
RUCETRArrears                                   : Currency;
RUCECArrears                                    : Currency;
RUCCSRArrears                                   : Currency;
RSystemLossChargeArrears                        : Currency;
RVATGenCOArrears                                : Currency;
RVATTransCOArrears                              : Currency;
RVATSystemLossArrears                           : Currency;
RVATDistArrears                                 : Currency;
RTotalArrears                                   : Currency;
RNetArrears                                     : Currency;
R                                               : Integer;

mcc                                             : Currency;
Fitall                                          : Currency;
rpt                                             : Currency;
iccs                                            : Currency;
par                                             : Currency;

mccArears                                       : Currency;
FitallArears                                    : Currency;
rptArears                                       : Currency;
iccsArears                                      : Currency;
parArears                                       : Currency;
Function IMon(A : String) : String;
Var M : String;
begin
 M := '';
 try
 M := FormatDateTime('YYYYmm',StrToDate(copy(a,1,2)+'/01/'+ Copy(A,3,2)));
 except
 end;
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
    UQ.Close;
    OC.Close;

    If SelectOption.ItemIndex = 0 then
      begin
        UQ.ParamByName('Area').Text := Area.Text+'%';
        OC.ParamByName('Area').Text := Area.Text+'%';
      end;

    If SelectOption.ItemIndex = 2 then
      begin
        UQ.ParamByName('Area').Text := '%';
        OC.ParamByName('Area').Text := '%';
      end;

    If Option.ItemIndex = 0 then
      begin
        UQ.ParamByName('ConnCode').Text := '1';
        OC.ParamByName('ConnCode').Text := '1';
      end
    else
      begin
       UQ.ParamByName('ConnCode').Text := '4';
       OC.ParamByName('ConnCode').Text := '4';
      end;

    OC.ParamByName('MyBillMonth').Text := BillMonth.Text;
    UQ.Open;
    OC.Open;

    For R := 1 to 3 do
     begin
      RRateStr[R] := '';
      RBillsCurrent[R]   := 0;
      RAmountCurrent[R]  := 0;
      RBillsArrears[R]   := 0;
      RAmountArrears[R]  := 0;
     end;

     RRateStr[1]  := 'Residential    ';
     RRateStr[2]  := 'Low Voltage    ';
     RRateStr[3]  := 'High Voltage   ';

     RRateCode[1] := 'R';
     RRateCode[2] := 'L';
     RRateCode[3] := 'H';

     RTransformerRentalCurrent   := 0;
     RUCNPCSDCurrent             := 0;
     RUCNPCSCCCurrent            := 0;
     RUCDUSCCCurrent             := 0;
     RUCMECurrent                := 0;
     RUCETRCurrent               := 0;
     RUCECCurrent                := 0;
     RUCCSRCurrent               := 0;
     RSystemLossChargeCurrent    := 0;
     RVATGenCOCurrent            := 0;
     RVATTransCOCurrent          := 0;
     RVATSystemLossCurrent       := 0;
     RVATDistCurrent             := 0;
     RTotalCurrent               := 0;
     RNetCurrent                 := 0;

     RTransformerRentalArrears   := 0;
     RUCNPCSDArrears             := 0;
     RUCNPCSCCArrears            := 0;
     RUCDUSCCArrears             := 0;
     RUCMEArrears                := 0;
     RUCETRArrears               := 0;
     RUCECArrears                := 0;
     RUCCSRArrears               := 0;
     RSystemLossChargeArrears    := 0;
     RVATGenCOArrears            := 0;
     RVATTransCOArrears          := 0;
     RVATSystemLossArrears       := 0;
     RVATDistArrears             := 0;
     RTotalArrears               := 0;
     RNetArrears                 := 0;


    Gauge1.MinValue := 0;
    Gauge1.MaxValue := 0;
    Gauge1.Progress := 0;

    UQ.First;
    While not UQ.Eof do
    begin
    Gauge1.AddProgress(1);
    Application.ProcessMessages;

    For R := 1 to 3 do
     begin
      If RRateCode[R] = UQ.FieldByName('Wratecode').Text then
        begin
        If IMon(UQ.FieldByName('BillMonth').Text) <= IMon(BillMonth.Text) then
          begin
           If UQ.FieldByName('BillMonth').Text = BillMonth.Text then
            begin
              RBillsCurrent[R]            := RBillsCurrent[R] + UQ.FieldByName('TotalAccount').AsInteger;
              RAmountCurrent[R]           := RAmountCurrent[R] + UQ.FieldByName('TotalAmount').AsCurrency;
              RTotalCurrent               := RTotalCurrent               + UQ.FieldByName('TotalAmount').AsCurrency;
              RTransformerRentalCurrent   := RTransformerRentalCurrent   + UQ.FieldByName('OCAmount').AsCurrency;
              RUCNPCSDCurrent             := RUCNPCSDCurrent             + UQ.FieldByName('TUCNPCSD').AsCurrency;
              RUCNPCSCCCurrent            := RUCNPCSDCurrent             + UQ.FieldByName('TUCNPCSD').AsCurrency;
              RUCDUSCCCurrent             := RUCDUSCCCurrent             + UQ.FieldByName('TUCDUSCC').AsCurrency;
              RUCMECurrent                := RUCMECurrent                + UQ.FieldByName('TUCME').AsCurrency;
              RUCETRCurrent               := RUCETRCurrent               + UQ.FieldByName('TUCETR').AsCurrency;
              RUCECCurrent                := RUCECCurrent                + UQ.FieldByName('TUCEC').AsCurrency;
              RUCCSRCurrent               := RUCCSRCurrent               + UQ.FieldByName('TUCCSR').AsCurrency;
              RSystemLossChargeCurrent    := RSystemLossChargeCurrent    + UQ.FieldByName('TSystemLossCharge').AsCurrency;
              RVATGenCOCurrent            := RVATGenCOCurrent            + UQ.FieldByName('VATGenco').AsCurrency;
              RVATTransCOCurrent          := RVATTransCOCurrent          + UQ.FieldByName('VATTransco').AsCurrency;
              RVATSystemLossCurrent       := RVATSystemLossCurrent       + UQ.FieldByName('VATSystemLoss').AsCurrency;
              RVATDistCurrent             := RVATDistCurrent             + UQ.FieldByName('VATDist').AsCurrency;

              mcc                         := mcc    +UQ.FieldByName('mcc').AsCurrency;
              Fitall                      := fitall +UQ.FieldByName('fitall').AsCurrency;
              rpt                         := rpt    +UQ.FieldByName('rptax').AsCurrency;
              iccs                        := iccs   +UQ.FieldByName('iccs').AsCurrency;
              par                         := par    +UQ.FieldByName('par').AsCurrency;
            end
            else
            begin
              RBillsArrears[R]            := RBillsArrears[R] + UQ.FieldByName('TotalAccount').AsInteger;
              RAmountArrears[R]           := RAmountArrears[R] + UQ.FieldByName('TotalAmount').AsCurrency;
              RTotalArrears               := RTotalArrears               + UQ.FieldByName('TotalAmount').AsCurrency;
              RTransformerRentalArrears   := RTransformerRentalArrears   + UQ.FieldByName('OCAmount').AsCurrency;
              RUCNPCSDArrears             := RUCNPCSDArrears             + UQ.FieldByName('TUCNPCSD').AsCurrency;
              RUCNPCSCCArrears            := RUCNPCSDArrears             + UQ.FieldByName('TUCNPCSD').AsCurrency;
              RUCDUSCCArrears             := RUCDUSCCArrears             + UQ.FieldByName('TUCDUSCC').AsCurrency;
              RUCMEArrears                := RUCMEArrears                + UQ.FieldByName('TUCME').AsCurrency;
              RUCETRArrears               := RUCETRArrears               + UQ.FieldByName('TUCETR').AsCurrency;
              RUCECArrears                := RUCECArrears                + UQ.FieldByName('TUCEC').AsCurrency;
              RUCCSRArrears               := RUCCSRArrears               + UQ.FieldByName('TUCCSR').AsCurrency;
              RSystemLossChargeArrears    := RSystemLossChargeArrears    + UQ.FieldByName('TSystemLossCharge').AsCurrency;
              RVATGenCOArrears            := RVATGenCOArrears            + UQ.FieldByName('VATGenco').AsCurrency;
              RVATTransCOArrears          := RVATTransCOArrears          + UQ.FieldByName('VATTransco').AsCurrency;
              RVATSystemLossArrears       := RVATSystemLossArrears       + UQ.FieldByName('VATSystemLoss').AsCurrency;
              RVATDistArrears             := RVATDistArrears             + UQ.FieldByName('VATDist').AsCurrency;

              mccArears                         := mccArears    +UQ.FieldByName('mcc').AsCurrency;
              FitallArears                      := fitallArears +UQ.FieldByName('fitall').AsCurrency;
              rptarears                         := rptArears    +UQ.FieldByName('rptax').AsCurrency;
              iccsArears                        := iccsArears   +UQ.FieldByName('iccs').AsCurrency;
              parArears                         := parArears    +UQ.FieldByName('par').AsCurrency;
            end;
          end;
        end;
     end;
    UQ.Next;
    end;

    ShowMessage('Set Printer ...');

    RNetCurrent  := RTotalCurrent - (RTransformerRentalCurrent   +
                                     RUCNPCSDCurrent             +
                                     RUCNPCSCCCurrent            +
                                     RUCDUSCCCurrent             +
                                     RUCMECurrent                +
                                     RUCETRCurrent               +
                                     RUCECCurrent                +
                                     RUCCSRCurrent               +
                                     RVATGenCOCurrent            +
                                     RVATTransCOCurrent          +
                                     RVATSystemLossCurrent       +
                                     RVATDistCurrent             +
                                     mcc                         +
                                     Fitall                      +
                                     rpt                         +
                                     iccs                        +
                                     par);

    RNetArrears  := RTotalArrears - (RTransformerRentalArrears   +
                                     RUCNPCSDArrears             +
                                     RUCNPCSCCArrears            +
                                     RUCDUSCCArrears             +
                                     RUCMEArrears                +
                                     RUCETRArrears               +
                                     RUCECArrears                +
                                     RUCCSRArrears               +
                                     RVATGenCOArrears            +
                                     RVATTransCOArrears          +
                                     RVATSystemLossArrears       +
                                     RVATDistArrears             +
                                     mccArears                   +
                                     FitallArears                +
                                     rptArears                   +
                                     iccsArears                  +
                                     parArears);


  Write(Lst,#18,#27+'P');
  Writeln(lst,'SUMMARY OF DISCONNECTED POWER BILLS BY CONSUMER TYPE ');
  Writeln(lst,'Current Bill Month :',MonString(BillMonth.Text));
  Writeln(Lst,'Print Date         :',DateToStr(Date));

  Writeln(Lst,'-------------------------------------------------------------------------------');
  Writeln(Lst,'|               |________CURRENT BILLS_________|________OVER 30 DAYS__________|');
  Writeln(Lst,'| Consumer Type |    Total Bills        Amount |    Total Bills        Amount |');
  Writeln(Lst,'-------------------------------------------------------------------------------');
  For R := 1 to 3 do
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
                                 Format(RAmountCurrent[1]+
                                        RAmountCurrent[2]+
                                        RAmountCurrent[3]+
                                        RAmountCurrent[4]+
                                        RAmountCurrent[5]+
                                        RAmountCurrent[6],'##,###,###.##'),'|',
                                 RBillsArrears[1]+
                                 RBillsArrears[2]+
                                 RBillsArrears[3]+
                                 RBillsArrears[4]+
                                 RBillsArrears[5]+
                                 RBillsArrears[6]:15,
                                 Format(RAmountArrears[1]+
                                        RAmountArrears[2]+
                                        RAmountArrears[3]+
                                        RAmountArrears[4]+
                                        RAmountArrears[5]+
                                        RAmountArrears[6],'##,###,###.##'),'|');
  Writeln(Lst,'-------------------------------------------------------------------------------');
  Writeln(Lst,'|LESS : ');
  OC.First;
  while not OC.Eof do
  begin
  Writeln(Lst,'|',JustStr(OCdescription.Text,' ',30,0),'|',Format(OCcurrent.AsCurrency,'##,###,###.##'),'|               ',
                                                Format(OCarrears.AsCurrency,'##,###,###.##'),'|');
  oc.Next;
  end;
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


  Writeln(Lst,'|RFSC                          |',Format(mcc,'##,###,###.##'),'|               ',
                                                Format(mccArears,'##,###,###.##'),'|');
  Writeln(Lst,'|FIT-ALL                       |',Format(Fitall,'##,###,###.##'),'|               ',
                                                Format(FitallArears,'##,###,###.##'),'|');
  Writeln(Lst,'|RPT                           |',Format(rpt,'##,###,###.##'),'|               ',
                                                Format(rptArears,'##,###,###.##'),'|');
  Writeln(Lst,'|ICCS                          |',Format(iccs,'##,###,###.##'),'|               ',
                                                Format(iccsArears,'##,###,###.##'),'|');
  Writeln(Lst,'|PAR                           |',Format(par,'##,###,###.##'),'|               ',
                                                Format(parArears,'##,###,###.##'),'|');


  Writeln(Lst,'|VAT GenCO                     |',Format(RVATGenCOCurrent,'##,###,###.##'),'|               ',
                                                Format(RVATGenCOArrears,'##,###,###.##'),'|');
  Writeln(Lst,'|VAT TransCO                   |',Format(RVATTransCOCurrent,'##,###,###.##'),'|               ',
                                                Format(RVATTransCOArrears,'##,###,###.##'),'|');
  Writeln(Lst,'|VAT System Loss               |',Format(RVATSystemLossCurrent,'##,###,###.##'),'|               ',
                                                Format(RVATSystemLossArrears,'##,###,###.##'),'|');
  Writeln(Lst,'|VAT Distribution              |',Format(RVATDistCurrent,'##,###,###.##'),'|               ',
                                                Format(RVATDistArrears,'##,###,###.##'),'|');
  Writeln(Lst,'-------------------------------------------------------------------------------');
  Writeln(Lst,'|Grand Total                   |',Format(RNetCurrent,'##,###,###.##'),'|               ',
                                                Format(RNetArrears,'##,###,###.##'),'|');

  Writeln(Lst,'-------------------------------------------------------------------------------');
  Writeln(lst);
  Writeln(lst);
  Writeln(lst,'Prepared by:               Chccked by:                Noted by:                ');
  Writeln(lst);
  Writeln(lst,JustStr(PreparedBy.Text,' ',25,0),'  ',
              JustStr(CheckedBy.Text,' ',25,0),'  ',
              JustStr(NotedBy.Text,' ',25,0));
  Writeln(lst,'Billing Section Head       Chief, Billing/LAN Div.    Consumers'' Account Mgr.');


  Write(Lst,#12);

UQ.Close;
OC.Close;
ShowMessage('Done.');
Gauge1.Progress := 0;
CloseFile(Lst);
end;
end;


procedure TUnpaidBillsListForm.UnpaidBillsAgingClick(Sender: TObject);
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
 M := '';
 try
 M := FormatDateTime('YYYYmm',StrToDate(copy(a,1,2)+'/01/'+ Copy(A,3,2)));
 except
 end;
 IMon := M;
end;

begin
  With BillingData do begin
    isonumberQ.Close;
    isonumberQ.ParamByName('reporttype').Text := 'Aging of Account Receivable';
    isonumberQ.Open;
  end;

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
    VQ.Open;
    R := 0;

    While not VQ.Eof do
     begin
      With TAgingRecord^ do
       begin
        Inc(R);
        TArea[R] := VQAREA.Text;
        TBook[R] := VQBOOK.Text;
       end;
     VQ.Next;
     end;
   end;

  VQ.Close;

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

    UQ.Close;
    If SelectOption.ItemIndex = 0 then UQ.ParamByName('Area').Text := Area.Text;
    If SelectOption.ItemIndex = 2 then UQ.ParamByName('Area').Text := '%';

    If Option.ItemIndex = 0 then
    UQ.ParamByName('ConnCode').Text := '1' else
    UQ.ParamByName('ConnCode').Text := '4';
    UQ.Open;

    UQ.First;
    While not UQ.Eof do
     begin

     If IMon(UQ.FieldByName('BillMonth').Text) > IMon(BillMonth.Text) then
      begin
       UQ.Next;
       Continue;
      end;

      DI := 0;

      Day := 61;
      If UQ.FieldByName('BillMonth').Text = BillMonth.Text    then Day := 0;
      If UQ.FieldByName('BillMonth').Text = BillMonthArray[1] then Day := 30;
      If UQ.FieldByName('BillMonth').Text = BillMonthArray[2] then Day := 60;
      If UQ.FieldByName('BillMonth').Text = BillMonthArray[3] then Day := 61;

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
         If (UQ.FieldByName('Area').Text = TArea[I]) and (UQ.FieldByName('Book').Text = TBook[I]) then
            begin
              TBills[I]  := TBills[I] + UQ.FieldByName('TotalAccount').AsInteger;
              TAmount[I] := TAmount[I] + UQ.FieldByName('TotalAmount').AsCurrency;

                If DI = 0 then
                  begin
                    TCurrentBills[I]     := TCurrentBills[I] + UQ.FieldByName('TotalAccount').AsInteger;
                    TCurrentAmount[I]    := TCurrentAmount[I] + UQ.FieldByName('TotalAmount').AsCurrency;
                  end;

                If DI = 1 then
                  begin
                    T30DaysBills[I]      := T30DaysBills[I] + UQ.FieldByName('TotalAccount').AsInteger;
                    T30DaysAmount[I]     := T30DaysAmount[I] + UQ.FieldByName('TotalAmount').AsCurrency;
                  end;

                If DI = 2 then
                  begin
                    T60DaysBills[I]      := T60DaysBills[I] + UQ.FieldByName('TotalAccount').AsInteger;
                    T60DaysAmount[I]     := T60DaysAmount[I] + UQ.FieldByName('TotalAmount').AsCurrency;
                  end;

                If DI = 3 then
                  begin
                    TOver60DaysBills[I]  := TOver60DaysBills[I] + UQ.FieldByName('TotalAccount').AsInteger;
                    TOver60DaysAmount[I] := TOver60DaysAmount[I] + UQ.FieldByName('TotalAmount').AsCurrency;
                  end;
            end;
        end;

     UQ.Next;
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
  Writeln(lst,#27+'E',#14,'AGING OF ACCOUNTS RECEIVABLE',#27+'F',#18);
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
   If LineCount >= 48 then
    begin
      LineCount := 0;
      Inc(PageCount);
      Writeln(Lst,'------------------------------------------------------------------------------------------------------------------');

      Writeln(lst,'');
      Writeln(lst,BillingData.isonumberQisoNumber.Text +
               '                                                 '+
               //'                                                           '+
               BillingData.isonumberQrevision.Text+
               '                                                 '+
               //'                                                           '+
               BillingData.isonumberQdateF.Text);

      Write(Lst,#12);
      Write(Lst,#18,#27+'P');
      Writeln(Lst,'Page ',PageCount);
      Writeln(lst,'AGING OF ACCOUNTS RECEIVABLE');
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
  Write(lst,#27+'E');
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
  Writeln(lst,'Billing Section Head       Chief, Billing/LAN Div.    Consumers'' Account Mgr.');

  Inc(LineCount,7);
  while LineCount < 49 do begin
    Writeln(lst,'');
    Inc(LineCount);
  end;

  Writeln(lst,BillingData.isonumberQisoNumber.Text +
               '                                                 '+
               //'                                                           '+
               BillingData.isonumberQrevision.Text+
               //'                                                           '+
               '                                                 '+
               BillingData.isonumberQdateF.Text);

  Write(Lst,#12);
  CloseFile(Lst);
  ShowMessage('Done');
 end;
 Dispose(TAgingRecord);
end;

procedure TUnpaidBillsListForm.UnpaidBillsByConsumerTypeClick(Sender: TObject);
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
RSystemLossChargeCurrent                        : Currency;
RVATGenCOCurrent                                : Currency;
RVATTransCOCurrent                              : Currency;
RVATSystemLossCurrent                           : Currency;
RVATDistCurrent                                 : Currency;
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
RSystemLossChargeArrears                        : Currency;
RVATGenCOArrears                                : Currency;
RVATTransCOArrears                              : Currency;
RVATSystemLossArrears                           : Currency;
RVATDistArrears                                 : Currency;
RTotalArrears                                   : Currency;
RNetArrears                                     : Currency;
R                                               : Integer;

gram                                            : Currency;
mcc                                             : Currency;
Fitall                                          : Currency;
rpt                                             : Currency;
iccs                                            : Currency;
par                                             : Currency;

gramArrears                                     : Currency;
mccArears                                       : Currency;
FitallArears                                    : Currency;
rptArears                                       : Currency;
iccsArears                                      : Currency;
parArears                                       : Currency;

Function IMon(A : String) : String;
Var M : String;
begin
 M := '';
 try
 M := FormatDateTime('YYYYmm',StrToDate(copy(a,1,2)+'/01/'+ Copy(A,3,2)));
 except
 end;
 IMon := M;
end;

begin
  If BillMonth.Text = '' then
    begin
      ShowMessage('Please enter Current Bill Month');
      Exit;
    end;

  If Option.ItemIndex <> 0 then
    begin
      ShowMessage('Get Inventory option Invalid');
      exit;
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
    UQ.Close;
    OC.Close;

    If SelectOption.ItemIndex = 0 then
      begin
        UQ.ParamByName('Area').Text := Area.Text+'%';
        OC.ParamByName('Area').Text := Area.Text+'%';
      end;

    If SelectOption.ItemIndex = 2 then
      begin
        UQ.ParamByName('Area').Text := '%';
        OC.ParamByName('Area').Text := '%';
      end;

    If Option.ItemIndex = 0 then
      begin
        UQ.ParamByName('ConnCode').Text := '1';
        OC.ParamByName('ConnCode').Text := '1';
      end
    else
      begin
       UQ.ParamByName('ConnCode').Text := '4';
       OC.ParamByName('ConnCode').Text := '4';
      end;

    OC.ParamByName('MyBillMonth').Text := BillMonth.Text;
    UQ.Open;
    OC.Open;

    For R := 1 to 3 do
     begin
      RRateStr[R] := '';
      RBillsCurrent[R]   := 0;
      RAmountCurrent[R]  := 0;
      RBillsArrears[R]   := 0;
      RAmountArrears[R]  := 0;
     end;

    RRateStr[1]  := 'Residential    ';
    RRateStr[2]  := 'Low Voltage    ';
    RRateStr[3]  := 'High Voltage   ';

    RRateCode[1] := 'R';
    RRateCode[2] := 'L';
    RRateCode[3] := 'H';

    RTransformerRentalCurrent   := 0;
    RUCNPCSDCurrent             := 0;
    RUCNPCSCCCurrent            := 0;
    RUCDUSCCCurrent             := 0;
    RUCMECurrent                := 0;
    RUCETRCurrent               := 0;
    RUCECCurrent                := 0;
    RUCCSRCurrent               := 0;
    RSystemLossChargeCurrent    := 0;
    RVATGenCOCurrent            := 0;
    RVATTransCOCurrent          := 0;
    RVATSystemLossCurrent       := 0;
    RVATDistCurrent             := 0;
    RTotalCurrent               := 0;

    RTransformerRentalArrears   := 0;
    RUCNPCSDArrears             := 0;
    RUCNPCSCCArrears            := 0;
    RUCDUSCCArrears             := 0;
    RUCMEArrears                := 0;
    RUCETRArrears               := 0;
    RUCECArrears                := 0;
    RUCCSRArrears               := 0;
    RSystemLossChargeArrears    := 0;
    RVATGenCOArrears            := 0;
    RVATTransCOArrears          := 0;
    RVATSystemLossArrears       := 0;
    RVATDistArrears             := 0;
    RTotalArrears               := 0;

    Gauge1.MinValue := 0;
    Gauge1.MaxValue := 0;
    Gauge1.Progress := 0;

    UQ.First;
    While not UQ.Eof do
    begin
    Gauge1.AddProgress(1);
    Application.ProcessMessages;

    For R := 1 to 3 do
     begin
      If RRateCode[R] = UQ.FieldByName('WRateCode').text then
        begin
        If IMon(UQ.FieldByName('BillMonth').Text) <= IMon(BillMonth.Text) then
          begin

           If UQ.FieldByName('BillMonth').Text = BillMonth.Text then
            begin
              RBillsCurrent[R]            := RBillsCurrent[R]            + UQ.FieldByName('TotalAccount').AsInteger;
              RAmountCurrent[R]           := RAmountCurrent[R]           + UQ.FieldByName('TotalAmount').AsCurrency;
              RTotalCurrent               := RTotalCurrent               + UQ.FieldByName('TotalAmount').AsCurrency;
              RTransformerRentalCurrent   := RTransformerRentalCurrent   + UQ.FieldByName('ocamount').AsCurrency;
              RUCNPCSDCurrent             := RUCNPCSDCurrent             + UQ.FieldByName('TUCNPCSD').AsCurrency;
              RUCNPCSCCCurrent            := RUCNPCSDCurrent             + UQ.FieldByName('TUCNPCSD').AsCurrency;
              RUCDUSCCCurrent             := RUCDUSCCCurrent             + UQ.FieldByName('TUCDUSCC').AsCurrency;
              RUCMECurrent                := RUCMECurrent                + UQ.FieldByName('TUCME').AsCurrency;
              RUCETRCurrent               := RUCETRCurrent               + UQ.FieldByName('TUCETR').AsCurrency;
              RUCECCurrent                := RUCECCurrent                + UQ.FieldByName('TUCEC').AsCurrency;
              RUCCSRCurrent               := RUCCSRCurrent               + UQ.FieldByName('TUCCSR').AsCurrency;
              RSystemLossChargeCurrent    := RSystemLossChargeCurrent    + UQ.FieldByName('TSystemLossCharge').AsCurrency;
              RVATGenCOCurrent            := RVATGenCOCurrent            + UQ.FieldByName('VATGenco').AsCurrency;
              RVATTransCOCurrent          := RVATTransCOCurrent          + UQ.FieldByName('VATTransco').AsCurrency;
              RVATSystemLossCurrent       := RVATSystemLossCurrent       + UQ.FieldByName('VATSystemLoss').AsCurrency;
              RVATDistCurrent             := RVATDistCurrent             + UQ.FieldByName('VATDist').AsCurrency;

              mcc                         := mcc    +UQ.FieldByName('mcc').AsCurrency;
              Fitall                      := fitall +UQ.FieldByName('fitall').AsCurrency;
              rpt                         := rpt    +UQ.FieldByName('rptax').AsCurrency;
              iccs                        := iccs   +UQ.FieldByName('iccs').AsCurrency;
              par                         := par    +UQ.FieldByName('par').AsCurrency;
              gram                        := gram   +UQ.FieldByName('gram').AsCurrency;

            end
            else
            begin
              RBillsArrears[R]            := RBillsArrears[R]            + UQ.FieldByName('TotalAccount').AsInteger;
              RAmountArrears[R]           := RAmountArrears[R]           + UQ.FieldByName('TotalAmount').AsCurrency;
              RTotalArrears               := RTotalArrears               + UQ.FieldByName('TotalAmount').AsCurrency;
              RTransformerRentalArrears   := RTransformerRentalArrears   + UQ.FieldByName('ocamount').AsCurrency;
              RUCNPCSDArrears             := RUCNPCSDArrears             + UQ.FieldByName('TUCNPCSD').AsCurrency;
              RUCNPCSCCArrears            := RUCNPCSDArrears             + UQ.FieldByName('TUCNPCSD').AsCurrency;
              RUCDUSCCArrears             := RUCDUSCCArrears             + UQ.FieldByName('TUCDUSCC').AsCurrency;
              RUCMEArrears                := RUCMEArrears                + UQ.FieldByName('TUCME').AsCurrency;
              RUCETRArrears               := RUCETRArrears               + UQ.FieldByName('TUCETR').AsCurrency;
              RUCECArrears                := RUCECArrears                + UQ.FieldByName('TUCEC').AsCurrency;
              RUCCSRArrears               := RUCCSRArrears               + UQ.FieldByName('TUCCSR').AsCurrency;
              RSystemLossChargeArrears    := RSystemLossChargeArrears    + UQ.FieldByName('TSystemLossCharge').AsCurrency;
              RVATGenCOArrears            := RVATGenCOArrears            + UQ.FieldByName('VATGenco').AsCurrency;
              RVATTransCOArrears          := RVATTransCOArrears          + UQ.FieldByName('VATTransco').AsCurrency;
              RVATSystemLossArrears       := RVATSystemLossArrears       + UQ.FieldByName('VATSystemLoss').AsCurrency;
              RVATDistArrears             := RVATDistArrears             + UQ.FieldByName('VATDist').AsCurrency;

              mccArears                         := mccArears    +UQ.FieldByName('mcc').AsCurrency;
              FitallArears                      := fitallArears +UQ.FieldByName('fitall').AsCurrency;
              rptarears                         := rptArears    +UQ.FieldByName('rptax').AsCurrency;
              iccsArears                        := iccsArears   +UQ.FieldByName('iccs').AsCurrency;
              parArears                         := parArears    +UQ.FieldByName('par').AsCurrency;
              gramArrears                       := gramArrears  +UQ.FieldByName('gram').AsCurrency;
            end;
          end;
        end;
     end;
    UQ.Next;
    end;

    RNetCurrent  := RTotalCurrent - (RTransformerRentalCurrent   +
                                     RUCNPCSDCurrent             +
                                     RUCNPCSCCCurrent            +
                                     RUCDUSCCCurrent             +
                                     RUCMECurrent                +
                                     //RUCETRCurrent               +
                                     RUCECCurrent                +
                                     RUCCSRCurrent               +
                                     RVATGenCOCurrent            +
                                     RVATTransCOCurrent          +
                                     RVATSystemLossCurrent       +
                                     RVATDistCurrent             +
                                     mcc                         +
                                     Fitall                      +
                                     rpt                         +
                                     iccs                        +
                                     par                         +
                                     gram);

    RNetArrears  := RTotalArrears - (RTransformerRentalArrears   +
                                     RUCNPCSDArrears             +
                                     RUCNPCSCCArrears            +
                                     RUCDUSCCArrears             +
                                     RUCMEArrears                +
                                     // RUCETRArrears               +
                                     RUCECArrears                +
                                     RUCCSRArrears               +
                                     RVATGenCOArrears            +
                                     RVATTransCOArrears          +
                                     RVATSystemLossArrears       +
                                     RVATDistArrears             +
                                     mccArears                   +
                                     FitallArears                +
                                     rptArears                   +
                                     iccsArears                  +
                                     parArears                   +
                                     gramArrears);

  ShowMessage('Set Printer ...');

  Write(Lst,#18,#27+'P');
  Writeln(Lst);
  Writeln(Lst);
  Writeln(Lst);
  Writeln(Lst);
  Writeln(lst,'SUMMARY OF UNPAID POWER BILLS BY CONSUMER TYPE ');
  Writeln(lst,'Current Bill Month :',MonString(BillMonth.Text));
  Writeln(Lst,'Print Date         :',DateToStr(Date));

  Writeln(Lst,'-------------------------------------------------------------------------------');
  Writeln(Lst,'|               |________CURRENT BILLS_________|________OVER 30 DAYS__________|');
  Writeln(Lst,'| Consumer Type |    Total Bills        Amount |    Total Bills        Amount |');
  Writeln(Lst,'-------------------------------------------------------------------------------');
  For R := 1 to 3 do
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
  Writeln(Lst,'|LESS : ');

  OC.First;
  while not OC.Eof do
  begin
  Writeln(Lst,'|',JustStr(OCdescription.Text,' ',30,0),'|',Format(OCcurrent.AsCurrency,'##,###,###.##'),'|               ',
                                                Format(OCarrears.AsCurrency,'##,###,###.##'),'|');
  oc.Next;
  end;

  Writeln(Lst,'|NPC Stranded Debts            |',Format(RUCNPCSDCurrent,'##,###,###.##'),'|               ',
                                                Format(RUCNPCSDArrears,'##,###,###.##'),'|');
  Writeln(Lst,'|NPC Stranded Contract Cost    |',Format(RUCNPCSCCCurrent,'##,###,###.##'),'|               ',
                                                Format(RUCNPCSCCArrears,'##,###,###.##'),'|');
  Writeln(Lst,'|DU Stranded Contract Cost     |',Format(RUCDUSCCCurrent,'##,###,###.##'),'|               ',
                                                Format(RUCDUSCCArrears,'##,###,###.##'),'|');
  Writeln(Lst,'|Missionary Electrification    |',Format(RUCMECurrent,'##,###,###.##'),'|               ',
                                                Format(RUCMEArrears,'##,###,###.##'),'|');
  // Writeln(Lst,'|Equal of Taxes and Royalties  |',Format(RUCETRCurrent,'##,###,###.##'),'|               ',
                                                //Format(RUCETRArrears,'##,###,###.##'),'|');
  Writeln(Lst,'|Environment                   |',Format(RUCECCurrent,'##,###,###.##'),'|               ',
                                                Format(RUCECArrears,'##,###,###.##'),'|');


  Writeln(Lst,'|RFSC                          |',Format(mcc,'##,###,###.##'),'|               ',
                                                Format(mccArears,'##,###,###.##'),'|');
  Writeln(Lst,'|FIT-ALL                       |',Format(Fitall,'##,###,###.##'),'|               ',
                                                Format(FitallArears,'##,###,###.##'),'|');
  Writeln(Lst,'|RPT                           |',Format(rpt,'##,###,###.##'),'|               ',
                                                Format(rptArears,'##,###,###.##'),'|');
  Writeln(Lst,'|ICCS                          |',Format(iccs,'##,###,###.##'),'|               ',
                                                Format(iccsArears,'##,###,###.##'),'|');
  Writeln(Lst,'|PAR                           |',Format(par,'##,###,###.##'),'|               ',
                                                Format(parArears,'##,###,###.##'),'|');
  Writeln(Lst,'|GRAM & ICERA DAA              |',Format(gram,'##,###,###.##'),'|               ',
                                                Format(gramArrears,'##,###,###.##'),'|');


  Writeln(Lst,'|VAT GenCO                     |',Format(RVATGenCOCurrent,'##,###,###.##'),'|               ',
                                                Format(RVATGenCOArrears,'##,###,###.##'),'|');
  Writeln(Lst,'|VAT TransCO                   |',Format(RVATTransCOCurrent,'##,###,###.##'),'|               ',
                                                Format(RVATTransCOArrears,'##,###,###.##'),'|');
  Writeln(Lst,'|VAT System Loss               |',Format(RVATSystemLossCurrent,'##,###,###.##'),'|               ',
                                                Format(RVATSystemLossArrears,'##,###,###.##'),'|');
  Writeln(Lst,'|VAT Distribution              |',Format(RVATDistCurrent,'##,###,###.##'),'|               ',
                                                Format(RVATDistArrears,'##,###,###.##'),'|');
  Writeln(Lst,'-------------------------------------------------------------------------------');
  Writeln(Lst,'|Grand Total                   |',Format(RNetCurrent,'##,###,###.##'),'|               ',
                                                Format(RNetArrears,'##,###,###.##'),'|');

  Writeln(Lst,'-------------------------------------------------------------------------------');
  Writeln(lst);
  Writeln(lst);
  Writeln(lst,'Prepared by:               Chccked by:                Noted by:                ');
  Writeln(lst);
  Writeln(lst,JustStr(PreparedBy.Text,' ',25,0),'  ',
              JustStr(CheckedBy.Text,' ',25,0),'  ',
              JustStr(NotedBy.Text,' ',25,0));
  Writeln(lst,'Billing Section Head       Chief, Billing/LAN Div.    Consumers'' Account Mgr.');


  Write(Lst,#12);

UQ.Close;
OC.Close;
ShowMessage('Done.');
Gauge1.Progress := 0;
CloseFile(Lst);
end;
end;

procedure TUnpaidBillsListForm.FormShow(Sender: TObject);
begin
  CutOffDate.Date := Now;
end;

procedure TUnpaidBillsListForm.NxButton1Click(Sender: TObject);
begin
  if not Assigned(AccountsReceivable) then AccountsReceivable := TAccountsReceivable.Create(Self);

  AccountsReceivable.Show;

end;

procedure TUnpaidBillsListForm.NxLinkLabel1Click(Sender: TObject);
begin
  Panel9.Visible := False;
end;

procedure TUnpaidBillsListForm.AreaKeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 then
    begin
      Perform(CM_DIALOGKEY,VK_TAB,0);
      Key := #0;
    end;
end;

procedure TUnpaidBillsListForm.AdvGlassButton1Click(Sender: TObject);
Var
PageCount,LineCount,DetailCount,HeadSW          : Word;
PageTotal,GrandTotal                            : Currency;
PageOC,GrandOC                                  : Currency;
Day                                             : Real;
DayStr                                          : String[3];
DI                                              : Word;
Check                                           : Integer;

TArea                                           : Array[0..3] of String[10];
TCollectionAmount                               : Array[0..3] of Currency;
TCollectionOC                                   : Array[0..3] of Currency;
TCollectionUCNPCSD                              : Array[0..3] of Currency;
TCollectionUCNPCSCC                             : Array[0..3] of Currency;
TCollectionUCDUSCC                              : Array[0..3] of Currency;
TCollectionUCME                                 : Array[0..3] of Currency;
TCollectionUCETR                                : Array[0..3] of Currency;
TCollectionUCEC                                 : Array[0..3] of Currency;
TCollectionUCCSR                                : Array[0..3] of Currency;
TCollectionRFSC                                 : Array[0..3] of Currency;
TCollectionNet                                  : Array[0..3] of Currency;
TCollectionKWHR                                 : Array[0..3] of Currency;
TCollectionVAT                                  : Array[0..3] of Currency;
TCollectionVATDist                              : Array[0..3] of Currency;
TCollectionVATGenCO                             : Array[0..3] of Currency;
TCollectionVATTransCO                           : Array[0..3] of Currency;
TCollectionVATSystemLoss                        : Array[0..3] of Currency;

RRateCode                                       : Array[1..6] of String[1];
RRateStr                                        : Array[1..6] of String[15];
RBills                                          : Array[1..6] of Word;
RAmount                                         : Array[1..6] of Currency;

TAmount                                         : Currency ;
TOC                                             : Currency ;
TUCNPCSD                                        : Currency ;
TUCNPCSCC                                       : Currency ;
TUCDUSCC                                        : Currency ;
TUCME                                           : Currency ;
TUCETR                                          : Currency ;
TUCEC                                           : Currency ;
TUCCSR                                          : Currency ;
TRFSC                                           : Currency ;
TNet                                            : Currency ;
TKwhr                                           : Currency ;


TVAT                         : Currency ;
TVATDist                     : Currency ;
TVATGenCO                    : Currency ;
TVATTransCO                  : Currency ;
TVATSystemLoss               : Currency ;

I,R                           : Integer ;
BMArray                       : Array[1..3] of String[04];
BillMonthArray                : Array[1..3] of String[4];
Mon,Yr                        : Word;
MonStr,YrStr                  : String[2];
PrintAccountNumber,
PrintConnCode,
PrintSerial,
PrintRateCode,
PrintName                     : String;
connCode                      : String;
BM30,BM60                     : String;

Procedure Heading;
begin
Write(Lst,#18,#27+'P');
Write(Lst,#27+'E');
writeln(lst,'Page # ',PageCount);
writeln(lst,'DATE : ',DateToStr(CutOffDate.Date));
Case SelectOption.ItemIndex of
0 : writeln(lst,'AREA ',Area.Text + ' ' + AreaName.Text);
1 : writeln(lst,'Account Range : ',StartAccount.text + ' - ' + EndAccount.Text);
2 : writeln(lst,'ALL AREAS');
end;
Case PrintOption.ItemIndex of
0 : writeln(lst,'Report Name     : ACTIVE BILLS LIST');
1 : writeln(lst,'Report Name     : DISCONNECTED BILLS LIST');
2 : writeln(lst,'Report Name     : SCHEDULE OF DELINQUENT CONSUMERS / OVER 90 DAYS BILL');
end;

Write(Lst,#27+'F',#27+'M');
Writeln(lst,'------------------------------------------------------------------------------------------------');
Writeln(lst,'No. ACCT #       Consumer Name                  Bill #            Amount BMon Age Serial        ');
Writeln(lst,'------------------------------------------------------------------------------------------------');
end;
begin

//===============================
//===============================
//===============================

  if (((PrintOption.ItemIndex=0) AND
        (Option.ItemIndex= 0))  OR
     ((PrintOption.ItemIndex=1) AND
     (Option.ItemIndex= 1)) ) AND (CheckBox1.Checked)  then
     begin

      TArea[00]  := 'Cur';
      TArea[01]  := '30 ';
      TArea[02]  := '60 ';
      TArea[03]  := '>60';

      Val(Copy(BillMonth.Text,1,2),Mon,Check);
      Val(Copy(BillMonth.Text,3,2),Yr,Check);

      //===============================
      //30 days========================
      Dec(Mon);
      if Mon=0 then
      begin
       Dec(Yr);
       Mon:=12;
      end;

      Str(Mon,MonStr);
      Str(Yr,YrStr);

      if Mon<10 then MonStr := '0'+MonStr;

      BillMonthArray[1] := MonStr+YrStr;
      //===============================

      //===============================
      //60 days========================
      Dec(Mon);
      if Mon=0 then
      begin
       Dec(Yr);
       Mon:=12;
      end;

      Str(Mon,MonStr);
      Str(Yr,YrStr);

      if Mon<10 then MonStr := '0'+MonStr;

      BillMonthArray[2] := MonStr+YrStr;
      //===============================

      RCtmp.Close;
      RCtmp.MacroByName('activeall').Active  := false;
      RCtmp.MacroByName('discoall').Active   := false;
      RCtmp.MacroByName('activearea').Active := false;
      RCtmp.MacroByName('discoarea').Active  := false;

      if (SelectOption.ItemIndex=2) AND
         (PrintOption.ItemIndex=0) AND
         (Option.ItemIndex= 0)  then
      begin

        RCtmp.MacroByName('activeall').Active := true;
        RCtmp.ParamByName('BMcurr').Text      := BillMonth.Text;
        RCtmp.ParamByName('BM30').Text        := BillMonthArray[1];
        RCtmp.ParamByName('BM60').Text        := BillMonthArray[2];
        RCtmp.ParamByName('header').Text      := 'INVENTORY OF ACTIVE BILLS - SUMMARY';
        RCtmp.ParamByName('headerB').Text     := 'ALL AREAS';
        RCtmp.Open;

        unpaid_Rep.ShowReport;
      end
      else if  (SelectOption.ItemIndex=2) AND
               (PrintOption.ItemIndex=1) AND
               (Option.ItemIndex= 1)  then
      begin
        RCtmp.MacroByName('discoall').Active := true;
        RCtmp.ParamByName('BMcurr').Text     := BillMonth.Text;
        RCtmp.ParamByName('BM30').Text       := BillMonthArray[1];
        RCtmp.ParamByName('BM60').Text       := BillMonthArray[2];
        RCtmp.ParamByName('header').Text     := 'INVENTORY OF DISCO BILLS - SUMMARY';
        RCtmp.ParamByName('headerB').Text    := 'ALL AREAS';
        RCtmp.Open;

        unpaid_Rep.ShowReport;
      end
      else if (SelectOption.ItemIndex=0) AND
               (PrintOption.ItemIndex=0) AND
               (Option.ItemIndex=0)  then
      begin
        RCtmp.MacroByName('activearea').Active := true;
        RCtmp.ParamByName('BMcurr').Text       := BillMonth.Text;
        RCtmp.ParamByName('BM30').Text         := BillMonthArray[1];
        RCtmp.ParamByName('BM60').Text         := BillMonthArray[2];
        RCtmp.ParamByName('header').Text       := 'INVENTORY OF ACTIVE BILLS - SUMMARY';
        RCtmp.ParamByName('headerB').Text      := 'AREA '+Area.Text +' '+ AreaName.Text;
        RCtmp.ParamByName('area').Text         := Area.Text;
        RCtmp.Open;

        unpaid_Rep.ShowReport;
      end
      else if (SelectOption.ItemIndex=0) AND
               (PrintOption.ItemIndex=1) AND
               (Option.ItemIndex= 1)  then
      begin
        RCtmp.MacroByName('discoarea').Active  := true;
        RCtmp.ParamByName('BMcurr').Text       := BillMonth.Text;
        RCtmp.ParamByName('BM30').Text         := BillMonthArray[1];
        RCtmp.ParamByName('BM60').Text         := BillMonthArray[2];
        RCtmp.ParamByName('header').Text       := 'INVENTORY OF DISCO BILLS - SUMMARY';
        RCtmp.ParamByName('headerB').Text      := 'AREA '+Area.Text +' '+ AreaName.Text;
        RCtmp.ParamByName('area').Text         := Area.Text;
        RCtmp.Open;

        unpaid_Rep.ShowReport;
      end;


      exit;
     end;

//===============================
//===============================

if PrintOption.ItemIndex = 3 then
 begin
  yearEndReport;
 end
 else
 begin
  ShowMessage('Set Printer on.....');
  Try
  AssignFile(Lst,'LPT1');
  Rewrite(Lst);
  except
   ShowMessage('Printer not Ready');
   Exit;
  end;

  RC.First;

  LineCount                    := 0;
  If StartPage.Text = '' then
  PageCount                    := 1
  else
  Val(StartPage.Text,PageCount,Check);

  HeadSw                       := 0;
  DetailCount                  := 0;
  PageTotal                    := 0;
  GrandTotal                   := 0;
  PageOC                       := 0;
  GrandOC                      := 0;

  For I := 1 to 3 do
  begin
    TArea[I]                        := '';
    TCollectionAmount[I]            := 0;
    TCollectionOC[I]                := 0;
    TCollectionUCNPCSD[I]           := 0;
    TCollectionUCNPCSCC[I]          := 0;
    TCollectionUCDUSCC[I]           := 0;
    TCollectionUCME[I]              := 0;
    TCollectionUCETR[I]             := 0;
    TCollectionUCEC[I]              := 0;
    TCollectionUCCSR[I]             := 0;
    TCollectionRFSC[I]              := 0;
    TCollectionNet[I]               := 0;
    TCollectionKwhr[I]              := 0;
  end;

  For I := 1 to 6 do
   begin
    RRateStr[I] := '';
    RBills[I]   := 0;
    RAmount[I]  := 0;
   end;

   RRateStr[1]  := 'Residential    ';
   RRateStr[2]  := 'Low Voltage    ';
   RRateStr[3]  := 'High Voltage   ';

   RRateCode[1] := 'R';
   RRateCode[2] := 'L';
   RRateCode[3] := 'H';

  TAmount             := 0;
  TOC                 := 0;
  TUCNPCSD            := 0;
  TUCNPCSCC           := 0;
  TUCDUSCC            := 0;
  TUCME               := 0;
  TUCETR              := 0;
  TUCEC               := 0;
  TUCCSR              := 0;
  TRFSC               := 0;
  TNet                := 0;
  TKwhr               := 0;

  TArea[00]  := 'Cur';
  TArea[01]  := '30 ';
  TArea[02]  := '60 ';
  TArea[03]  := '>60';

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
   
    PrintAccountNumber := '';
    PrintName          := '';
    PrintConnCode      := '';
    PrintRateCode      := '';

    RC.First;

    while not RC.Eof do
     begin

     Application.ProcessMessages;

      DI := 1;

      Day := 90;
      If RCBillMonth.Text = BillMonth.Text    then Day := 0;
      If RCBillMonth.Text = BillMonthArray[1] then Day := 30;
      If RCBillMonth.Text = BillMonthArray[2] then Day := 60;
      If RCBillMonth.Text = BillMonthArray[3] then Day := 90;

      If Day = 0 then
        begin
         DayStr := 'Cur';
         DI     := 0;
        end;

      If Day = 30 then
        begin
         DayStr := '30 ';
         DI     := 1;
        end;

      If Day = 60 then
        begin
         DayStr := '60 ';
         DI     := 2;
        end;

      If (Day = 90) then
        begin
         DayStr := '>60';
         DI     := 3;
        end;

      If (Day = 90) and (PrintOption.ItemIndex = 2) then
        begin
         DayStr := '>90';
         DI     := 3;
        end;

      If PrintOption.ItemIndex in [0..1] then
      begin

          Inc(DetailCount);

          GrandOC                           := GrandOC + RCocamount.AsCurrency;
          GrandTotal                        := GrandTotal + RCAmount.AsCurrency;

          TCollectionAmount[DI]             := TCollectionAmount[DI] + RCAmount.AsCurrency;
          TCollectionOC[DI]                 := TCollectionOC[DI] + RCocamount.AsCurrency;
          TCollectionUCNPCSD[DI]            := TCollectionUCNPCSD[DI] + RCUCNPCSD.AsCurrency;
          TCollectionUCNPCSCC[DI]           := TCollectionUCNPCSCC[DI] + RCUCNPCSCC.AsCurrency;
          TCollectionUCDUSCC[DI]            := TCollectionUCDUSCC[DI] + RCUCDUSCC.AsCurrency;
          TCollectionUCME[DI]               := TCollectionUCME[DI] + RCUCME.AsCurrency;
          TCollectionUCETR[DI]              := TCollectionUCETR[DI] + RCUCETR.AsCurrency;
          TCollectionUCEC[DI]               := TCollectionUCEC[DI] + RCUCEC.AsCurrency;
          TCollectionUCCSR[DI]              := TCollectionUCCSR[DI] + RCVAT.AsCurrency;
          TCollectionRFSC[DI]               := TCollectionRFSC[DI] + RCmcc.AsCurrency;
          TCollectionKwhr[DI]               := TCollectionKwhr[DI] + RCKilowattHour.AsCurrency;

          TCollectionVAT[DI]                := TCollectionVAT[DI] + RCVAT.AsCurrency;
          TCollectionVATDist[DI]            := TCollectionVATDist[DI] + RCVATDist.AsCurrency;
          TCollectionVATGenCO[DI]           := TCollectionVATGenCO[DI] + RCVATGenCO.AsCurrency;
          TCollectionVATTransCO[DI]         := TCollectionVATTransCO[DI] + RCVATTransCO.AsCurrency;
          TCollectionVATSystemLoss[DI]      := TCollectionVATSystemLoss[DI] + RCVATSystemLossGenCO.AsCurrency;

          TCollectionNet[DI]                := TCollectionNet[DI] + RCAmount.AsCurrency -
                                               (RCocamount.AsCurrency +
                                                RCUCNPCSD.AsCurrency +
                                                RCUCNPCSCC.AsCurrency +
                                                RCUCDUSCC.AsCurrency +
                                                RCUCME.AsCurrency +
                                                RCUCETR.AsCurrency +
                                                RCUCEC.AsCurrency +
                                                RCUCCSR.AsCurrency +
                                                RCmcc.AsCurrency +
                                                RCVAT.AsCurrency);

          TAmount                          := TAmount + RCAmount.AsCurrency;
          TOC                              := TOC + RCocamount.AsCurrency;
          TUCNPCSD                         := TUCNPCSD + RCUCNPCSD.AsCurrency;
          TUCNPCSCC                        := TUCNPCSCC + RCUCNPCSCC.AsCurrency;
          TUCDUSCC                         := TUCDUSCC + RCUCDUSCC.AsCurrency;
          TUCME                            := TUCME + RCUCME.AsCurrency;
          TUCETR                           := TUCETR + RCUCETR.AsCurrency;
          TUCEC                            := TUCEC + RCUCEC.AsCurrency;
          TUCCSR                           := TUCCSR + RCVAT.AsCurrency;
          TRFSC                            := TRFSC + RCmcc.AsCurrency;
          TKwhr                            := TKwhr + RCKilowattHour.AsCurrency;
          TVAT                             := TVAT + RCVAT.AsCurrency;
          TVATDist                         := TVATDist + RCVATDist.AsCurrency;
          TVATGenCO                        := TVATGenCO + RCVATGenCO.AsCurrency;
          TVATTransCO                      := TVATTransCO + RCVATTransCO.AsCurrency;
          TVATSystemLoss                   := TVATSystemLoss + RCVATSystemLossGenCO.AsCurrency;

          TNet                             := TNet + RCAmount.AsCurrency -
                                             (RCocamount.AsCurrency +
                                              RCUCNPCSD.AsCurrency +
                                              RCUCNPCSCC.AsCurrency +
                                              RCUCDUSCC.AsCurrency +
                                              RCUCME.AsCurrency +
                                              RCUCETR.AsCurrency +
                                              RCUCEC.AsCurrency +
                                              RCVAT.AsCurrency +
                                              RCmcc.AsCurrency +
                                              RCUCCSR.AsCurrency);

      end;

      If (PrintOption.ItemIndex = 2) and (Day >= 90) then
      begin
      For R := 1 to 3 do
       begin
        If RCWRateCode.Text = RRateCode[R] then
          begin


           Inc(RBills[R]);
           RAmount[R] := RAmount[R] + RCAmount.AsCurrency -
                                     (RCocamount.AsCurrency +
                                      RCUCNPCSD.AsCurrency +
                                      RCUCNPCSCC.AsCurrency +
                                      RCUCDUSCC.AsCurrency +
                                      RCUCME.AsCurrency +
                                      RCUCETR.AsCurrency +
                                      RCUCEC.AsCurrency +
                                      RCVAT.AsCurrency +
                                      RCmcc.AsCurrency);

          GrandOC                          := GrandOC + RCocamount.AsCurrency;
          GrandTotal                       := GrandTotal + RCAmount.AsCurrency;

          TAmount                          := TAmount + RCAmount.AsCurrency;
          TUCNPCSD                         := TUCNPCSD + RCUCNPCSD.AsCurrency;
          TUCNPCSCC                        := TUCNPCSCC + RCUCNPCSCC.AsCurrency;
          TUCDUSCC                         := TUCDUSCC + RCUCDUSCC.AsCurrency;
          TUCME                            := TUCME + RCUCME.AsCurrency;
          TUCETR                           := TUCETR + RCUCETR.AsCurrency;
          TUCEC                            := TUCEC + RCUCEC.AsCurrency;
          TUCCSR                           := TUCCSR + RCVAT.AsCurrency;
          TRFSC                            := TRFSC + RCmcc.AsCurrency;
          TKwhr                            := TKwhr + RCKilowattHour.AsCurrency;
          TNet                             := TNet + RCAmount.AsCurrency -
                                             (RCocamount.AsCurrency +
                                              RCUCNPCSD.AsCurrency +
                                              RCUCNPCSCC.AsCurrency +
                                              RCUCDUSCC.AsCurrency +
                                              RCUCME.AsCurrency +
                                              RCUCETR.AsCurrency +
                                              RCUCEC.AsCurrency +
                                              RCUCCSR.AsCurrency +
                                              RCmcc.AsCurrency +
                                              RCVAT.AsCurrency);
          end;
       end;
      end;

      if CheckBox1.Checked = False then
      If HeadSW = 0 then
        begin
          HeadSW := 1;
          Heading;
        end;

       If (PrintOption.ItemIndex in [0..1]) or
          ((PrintOption.ItemIndex = 2) and (Day >= 90)) then
       begin

         If PrintOption.ItemIndex in [0..2] then
           begin

             If PrintAccountNumber <> RCAccountNumber.Text then
               begin
                 PrintAccountNumber := RCAccountNumber.Text;
                 PrintConnCode      := RCconncode.Text;
                 PrintSerial        := RCserial.Text;
                 PrintRateCode      := RCWRateCode.Text;
                 PrintName          := RCName.Text;
               end
               else
               begin
                 PrintConnCode      := '';
                 PrintSerial        := '';
                 PrintRateCode      := '';
                 PrintName          := '';
               end;

           end;


         if CheckBox1.Checked = False then
         Writeln(Lst,DetailCount:3,'.',
                     JustStr(PrintAccountNumber,' ',10,0),
                     JustStr(PrintConnCode,' ',1,0),' ',
                     JustStr(PrintRateCode,' ',1,0),' ',
                     Juststr(PrintName,' ',30,0),' ',
                     Juststr(RCDocument.Text,' ',10,0),' ',
                     Format(RCAmount.AsCurrency,'##,###,###.##'),
                     Juststr(RCBillMonth.Text,' ',04,0),' ',
                     DayStr,' ',
                     PrintSerial);
         PageOC                           := PageOC + RCocamount.AsCurrency;
         PageTotal                        := PageTotal + RCAmount.AsCurrency;

         Inc(LineCount);
       end;

      if CheckBox1.Checked = False then
      If LineCount = 50 then
        begin
         HeadSW    := 0;
         LineCount := 0;
         Inc(PageCount);
         Writeln(lst,'------------------------------------------------------------------------------------------------');
         Writeln(lst,'|                                               Page Total ',Format(PageTotal,'##,###,###.##'));
         Writeln(lst,'------------------------------------------------------------------------------------------------');
         Write(Lst,#12);
         PageTotal := 0;
         PageOC    := 0;
        end;
     RC.Next;
     end;

if CheckBox1.Checked = False then
begin
If LineCount > 0 then
 begin
  Writeln(lst,'------------------------------------------------------------------------------------------------');
  Writeln(lst,'|                                               Page Total ',Format(PageTotal,'##,###,###.##'));
 end;

Writeln(lst,'------------------------------------------------------------------------------------------------');
Writeln(lst,'|                                              Grand Total ',Format(GrandTotal,'##,###,###.##'));
Writeln(lst,'------------------------------------------------------------------------------------------------');

If LineCount > 30 then Write(Lst,#12);
end;

if CheckBox1.Checked = true then
begin
Case SelectOption.ItemIndex of
0 : begin writeln(lst,'AREA ',Area.Text + ' ' + AreaName.Text);
    writeln(lst,'Bill Month '+BillMonth.Text);
    end;
1 : begin writeln(lst,'Account Range : ',StartAccount.text + ' - ' + EndAccount.Text);
    writeln(lst,'Bill Month '+BillMonth.Text);
    end;
2 : writeln(lst,'ALL AREAS');
end;

Write(lst,#18,#27+'P');
  Case PrintOption.ItemIndex of
    0 : writeln(lst,'Report Name     : INVENTORY OF ACTIVE BILLS - SUMMARY');
    1 : writeln(lst,'Report Name     : INVENTORY OF DISCO BILLS - SUMMARY');
    2 : writeln(lst,'Report Name     : OVER 90 DAYS BILL - SUMMARY');
  end;
end;

If (PrintOption.ItemIndex = 0) or
   (PrintOption.ItemIndex = 1) then
begin
  Write(lst,#15);
  Writeln(lst,'-----------------------------------------------------------------------------------------------------------------------------------------');
  Writeln(lst,'|Age|          Total |  Missionary|Environment|          SCC |     Expanded |         RFSC |        Other |            NET |    KW Hour |');
  Writeln(lst,'|   |         Amount |       Elec.|           |              |          VAT |              |      Charges |                |            |');
  Writeln(lst,'-----------------------------------------------------------------------------------------------------------------------------------------');
  For I := 0 to 3 do
  If TCollectionAmount[I] > 0 then
  Writeln(lst,'|',TArea[I],' ',
              Format(TCollectionAmount[I],'###,###,###.##'),'|',
              Format(TCollectionUCME[I] ,'###,###.##'),'|',
              Format(TCollectionUCEC[I] ,'##,###.##'),'|',
              Format(TCollectionUCNPCSCC[I] ,'#,###,###.##'),'|',
              Format(TCollectionUCCSR[I] ,'#,###,###.##'),'|',
              Format(TCollectionRFSC[I] ,'#,###,###.##'),'|',
              Format(TCollectionOC[I] ,'#,###,###.##'),'|',
              Format(TCollectionNet[I] ,'###,###,###.##'),'|',
              Format(TCollectionKwhr[I] ,'###,###.##'),'|');
  Writeln(lst,'-----------------------------------------------------------------------------------------------------------------------------------------');
  Writeln(lst,'|Ttl|',
              Format(TAmount,'###,###,###.##'),'|',
              Format(TUCME ,'###,###.##'),'|',
              Format(TUCEC ,'##,###.##'),'|',
              Format(TUCNPCSCC,'#,###,###.##'),'|',
              Format(TUCCSR ,'#,###,###.##'),'|',
              Format(TRFSC ,'#,###,###.##'),'|',
              Format(TOC,'#,###,###.##'),'|',
              Format(TNet ,'###,###,###.##'),'|',
              Format(TKwhr,'###,###.##'),'|');
  Writeln(lst,'-----------------------------------------------------------------------------------------------------------------------------------------');
end;

If (PrintOption.ItemIndex = 2) then
begin
  Write(lst,#15);
  Writeln(lst,'-----------------------------------------------------------------------------------------------------------------------------------------');
  Writeln(lst,'|Age|          Total |  Missionary|Environment|          SCC |     Expanded |         RFSC |        Other |            NET |    KW Hour |');
  Writeln(lst,'|   |         Amount |       Elec.|           |              |          VAT |              |      Charges |                |            |');
  Writeln(lst,'-----------------------------------------------------------------------------------------------------------------------------------------');
  Writeln(lst,'|Ttl|',
              Format(TAmount,'###,###,###.##'),'|',
              Format(TUCME ,'###,###.##'),'|',
              Format(TUCEC ,'##,###.##'),'|',
              Format(TUCNPCSCC,'#,###,###.##'),'|',
              Format(TUCCSR ,'#,###,###.##'),'|',
              Format(TRFSC ,'#,###,###.##'),'|',
              Format(TOC,'#,###,###.##'),'|',
              Format(TNet ,'###,###,###.##'),'|',
              Format(TKwhr,'###,###.##'),'|');
  Writeln(lst,'---------------------------------------------------------------------------------------------------------------------------------------');
  Write(Lst,#18,#27+'P');
  Writeln(Lst,'Consumer Type       Total Bills          Amount');
  For R := 1 to 3 do
   begin
    Writeln(Lst,RRateStr[R],' ',RBills[R]:15,' ',Format(RAmount[R],'###,###,###.##'));
   end;
  Writeln(Lst,'-----------------------------------------------');
  Writeln(Lst,'Grand Total     ',RBills[1]+
                                 RBills[2]+
                                 RBills[3]+
                                 RBills[4]+
                                 RBills[5]+
                                 RBills[6]:15,' ',
                                 Format(RAmount[1]+
                                        RAmount[2]+
                                        RAmount[3]+
                                        RAmount[4]+
                                        RAmount[5]+
                                        RAmount[6],'###,###,###.##'));
  Writeln(Lst,'-----------------------------------------------');
end;

Writeln(Lst);
Writeln(Lst,#27+'P',#18);
Writeln(Lst,'VAT Breakdown');
Writeln(lst,'---------------------------------------------------------------------------');
Writeln(lst,'|  Age   |        VAT |        VAT |        VAT |        VAT |        VAT |');
Writeln(lst,'|        |      GenCO |    TransCO |System Loss |       Dist |      Total |');
Writeln(lst,'---------------------------------------------------------------------------');
For I := 0 to 3 do
If TCollectionAmount[I] > 0 then
Writeln(lst,'|',JustStr(TArea[I],' ',8,0),' ',
            Format(TCollectionVATGenco[I],'###,###.##'),'|',
            Format(TCollectionVATTransCO[I] ,'###,###.##'),'|',
            Format(TCollectionVATSystemLoss[I] ,'###,###.##'),'|',
            Format(TCollectionVATDist[I] ,'###,###.##'),'|',
            Format(TCollectionVATGenCO[I] +
                   TCollectionVATTransCO[I] +
                   TCollectionVATSystemLoss[I] +
                   TCollectionVATDist[I],'###,###.##'),'|');
Writeln(lst,'---------------------------------------------------------------------------');
Writeln(lst,'|  TOTAL |',
            Format(TVATGenCO,'###,###.##'),'|',
            Format(TVATTransCO,'###,###.##'),'|',
            Format(TVATSystemLoss ,'###,###.##'),'|',
            Format(TVATDist ,'###,###.##'),'|',
            Format(TVATGenCO +
                   TVATTransCO +
                   TVATSystemLoss +
                   TVATDist,'###,###.##'),'|');
Writeln(lst,'---------------------------------------------------------------------------');

Write(Lst,#12);
CloseFile(Lst);
ShowMessage('Done.');
end;
end;

procedure TUnpaidBillsListForm.AdvGlassButton2Click(Sender: TObject);
begin
  If SelectOption.ItemIndex < 0 then
  begin
    MessageDlg('You need to define a Select Option first...', mtError, [mbOK], 0);
    SelectOption.SetFocus;
    exit;
  end;

  If SelectOption.ItemIndex = 1 then
  If (trim(StartAccount.Text) = '') or
     (trim(EndAccount.Text) = '') then
     begin
       MessageDlg('Supply START ACCOUNT and END ACCOUNT Number....', mtError, [mbOK], 0);
       StartAccount.SetFocus;
       exit;
     end;

  RC.Close;

  RC.MacroByName('Area').Active          := False;
  RC.MacroByName('AccountNumber').Active := False;

  If SelectOption.ItemIndex = 0 then
  begin
    RC.MacroByName('Area').Active := True;
    RC.ParamByName('Area').Text   := Area.Text+'%';
  end;

  If SelectOption.ItemIndex = 1 then
  begin
    RC.MacroByName('AccountNumber').Active := True;
    RC.ParamByName('StartAccount').Text    := StartAccount.Text;
    RC.ParamByName('EndAccount').Text      := EndAccount.Text;
  end;

  If SelectOption.ItemIndex = 2 then
  begin
    RC.MacroByName('Area').Active := True;
    RC.ParamByName('Area').Text   := '%';
  end;

  RC.MacroByName('Active').Active := False;
  RC.MacroByName('Disco').Active  := False;

  If Option.ItemIndex = 0 then
  RC.MacroByName('Active').Active := True else
  RC.MacroByName('Disco').Active  := True;

  RC.Open;
  MessageDlg('Done.....', mtInformation, [mbOK], 0);
end;



procedure TUnpaidBillsListForm.AdvGlassButton3Click(Sender: TObject);
begin
  Panel9.left    := 185;
  Panel9.top     := 150;
  Panel9.Visible := True;
  Panel9.BringToFront;

end;

procedure TUnpaidBillsListForm.AdvGlassButton4Click(Sender: TObject);
begin
     UnpaidBillsListForm.CLose;
end;

procedure TUnpaidBillsListForm.AreaCloseUp(Sender: TObject);
begin

  Case Area.ItemIndex of
  00 : AreaName.Text := 'RIZAL';
  01 : AreaName.Text := 'SIBUTAD';
  02 : AreaName.Text := 'MUTIA';
  03 : AreaName.Text := 'LA LIBERTAD';
  04 : AreaName.Text := 'SERGIO OSME�A';
  05 : AreaName.Text := 'DAPITAN';
  06 : AreaName.Text := 'PI�AN';
  07 : AreaName.Text := 'POLANCO';
  08 : AreaName.Text := 'DIPOLOG NORTH';
  09 : AreaName.Text := 'DIPOLOG SOUTH';
  10 : AreaName.Text := 'KATIPUNAN';
  11 : AreaName.Text := 'ROXAS';
  12 : AreaName.Text := 'MANUKAN';
  13 : AreaName.Text := 'JOSE DALMAN';
  14 : AreaName.Text := 'SINDANGAN';
  15 : AreaName.Text := 'LEON B. POSTIGO';
  16 : AreaName.Text := 'SIAYAN';
  17 : AreaName.Text := 'SALUG';
  18 : AreaName.Text := 'LILOY';
  19 : AreaName.Text := 'LABASON';
  20 : AreaName.Text := 'TAMPILISAN';
  21 : AreaName.Text := 'GODOD';
  22 : AreaName.Text := 'GUTALAC';
  23 : AreaName.Text := 'DAPITAN / PI�AN';
  24 : AreaName.Text := 'KALAWIT';
  end;

end;

procedure TUnpaidBillsListForm.SelectOptionClick(Sender: TObject);
begin
  GroupBox1.Enabled := False;
  GroupBox2.Enabled := False;
  Area.Text         := '';
  AreaName.Text     := '';
  StartAccount.Text := '';
  EndAccount.Text   := '';

  Case SelectOption.ItemIndex of
  0 : begin
       GroupBox1.Enabled := True;
       Area.SetFocus;
      end;
  1 : begin
       GroupBox2.Enabled := True;
       StartAccount.SetFocus;
      end;
  end;
end;

procedure TUnpaidBillsListForm.yearEndReport();
var
PageCount,LineCount,DetailCount,HeadSW          : Word;
PageTotal,GrandTotal                            : Currency;
PageOC,GrandOC                                  : Currency;
Day                                             : Real;
DayStr                                          : String[3];
DI                                              : Word;
Check                                           : Integer;

TArea                                           : Array[0..5] of String[10];
TCollectionAmount                               : Array[0..5] of Currency;
TCollectionOC                                   : Array[0..5] of Currency;
TCollectionUCNPCSD                              : Array[0..5] of Currency;
TCollectionUCNPCSCC                             : Array[0..5] of Currency;
TCollectionUCDUSCC                              : Array[0..5] of Currency;
TCollectionUCME                                 : Array[0..5] of Currency;
TCollectionUCETR                                : Array[0..5] of Currency;
TCollectionUCEC                                 : Array[0..5] of Currency;
TCollectionUCCSR                                : Array[0..5] of Currency;
TCollectionRFSC                                 : Array[0..5] of Currency;
TCollectionNet                                  : Array[0..5] of Currency;
TCollectionKWHR                                 : Array[0..5] of Currency;
TCollectionVAT                                  : Array[0..5] of Currency;
TCollectionVATDist                              : Array[0..5] of Currency;
TCollectionVATGenCO                             : Array[0..5] of Currency;
TCollectionVATTransCO                           : Array[0..5] of Currency;
TCollectionVATSystemLoss                        : Array[0..5] of Currency;

RRateCode                                       : Array[1..6] of String[1];
RRateStr                                        : Array[1..6] of String[15];
RBills                                          : Array[1..6] of Word;
RAmount                                         : Array[1..6] of Currency;

TAmount                                         : Currency ;
TOC                                             : Currency ;
TUCNPCSD                                        : Currency ;
TUCNPCSCC                                       : Currency ;
TUCDUSCC                                        : Currency ;
TUCME                                           : Currency ;
TUCETR                                          : Currency ;
TUCEC                                           : Currency ;
TUCCSR                                          : Currency ;
TRFSC                                           : Currency ;
TNet                                            : Currency ;
TKwhr                                           : Currency ;

TVAT                         : Currency ;
TVATDist                     : Currency ;
TVATGenCO                    : Currency ;
TVATTransCO                  : Currency ;
TVATSystemLoss               : Currency ;

I,R                                             : Integer ;
BMArray                                         : Array[1..12] of String[04];
BillMonthArray                                  : Array[1..12] of String[4];
Mon,Yr                                          : Word;
MonStr,YrStr                                    : String[2];
PrintAccountNumber,
PrintConnCode,
PrintSerial,
PrintRateCode,
PrintName                                       : String;

Procedure Heading;
begin
Write(Lst,#18,#27+'P');
Write(Lst,#27+'E');
writeln(lst,'Page # ',PageCount);
writeln(lst,'DATE : ',DateToStr(CutOffDate.Date));
Case SelectOption.ItemIndex of
0 : writeln(lst,'AREA ',Area.Text + ' ' + AreaName.Text);
1 : writeln(lst,'Account Range : ',StartAccount.text + ' - ' + EndAccount.Text);
2 : writeln(lst,'ALL AREAS');
end;
Case PrintOption.ItemIndex of
0 : writeln(lst,'Report Name     : ACTIVE BILLS LIST');
1 : writeln(lst,'Report Name     : DISCONNECTED BILLS LIST');
2 : writeln(lst,'Report Name     : SCHEDULE OF DELINQUENT CONSUMERS / OVER 90 DAYS BILL');
3 : writeln(lst,'Report Name     : ACTIVE BILLS LIST');
end;

Write(Lst,#27+'F',#27+'M');
Writeln(lst,'------------------------------------------------------------------------------------------------');
Writeln(lst,'No. ACCT #       Consumer Name                  Bill #            Amount BMon Age Serial        ');
Writeln(lst,'------------------------------------------------------------------------------------------------');
end;
//========START========================
//=====================================
begin
  ShowMessage('Set Printer on.....');
  Try
  AssignFile(Lst,'LPT1');
  Rewrite(Lst);
  except
   ShowMessage('Printer not Ready');
   Exit;
  end;

  RC.First;

  LineCount                    := 0;
  If StartPage.Text = '' then
  PageCount                    := 1
  else
  Val(StartPage.Text,PageCount,Check);

  HeadSw                       := 0;
  DetailCount                  := 0;
  PageTotal                    := 0;
  GrandTotal                   := 0;
  PageOC                       := 0;
  GrandOC                      := 0;

  For I := 1 to 4 do
  begin
    TArea[I]                        := '';
    TCollectionAmount[I]            := 0;
    TCollectionOC[I]                := 0;
    TCollectionUCNPCSD[I]           := 0;
    TCollectionUCNPCSCC[I]          := 0;
    TCollectionUCDUSCC[I]           := 0;
    TCollectionUCME[I]              := 0;
    TCollectionUCETR[I]             := 0;
    TCollectionUCEC[I]              := 0;
    TCollectionUCCSR[I]             := 0;
    TCollectionRFSC[I]              := 0;
    TCollectionNet[I]               := 0;
    TCollectionKwhr[I]              := 0;
  end;
  {
  For I := 1 to 6 do
   begin
    RRateStr[I] := '';
    RBills[I]   := 0;
    RAmount[I]  := 0;
   end;

   RRateStr[1]  := 'Residential    ';
   RRateStr[2]  := 'Low Voltage    ';
   RRateStr[3]  := 'High Voltage   ';

   RRateCode[1] := 'R';
   RRateCode[2] := 'L';
   RRateCode[3] := 'H';}

  TAmount             := 0;
  TOC                 := 0;
  TUCNPCSD            := 0;
  TUCNPCSCC           := 0;
  TUCDUSCC            := 0;
  TUCME               := 0;
  TUCETR              := 0;
  TUCEC               := 0;
  TUCCSR              := 0;
  TRFSC               := 0;
  TNet                := 0;
  TKwhr               := 0;

  TArea[00]  := 'Cur ';
  TArea[01]  := '90  ';
  TArea[02]  := '180 ';
  TArea[03]  := '240 ';
  TArea[04]  := '360 ';
  TArea[05]  := '>360';

  Val(Copy(BillMonth.Text,1,2),Mon,Check);
  Val(Copy(BillMonth.Text,3,2),Yr,Check);
  FillChar(BillMonthArray,SizeOf(BillMonthArray),#0);

  //=========Capture Historical Month=========
  //==========================================
  For I := 1 to 12 do
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

    
   //=======End of Capturing Historical Month======
   //==============================================

    PrintAccountNumber := '';
    PrintName          := '';
    PrintConnCode      := '';
    PrintRateCode      := '';

    RC.First;

    while not RC.Eof do
     begin

     Application.ProcessMessages;

      DI := 1;

      Day := 361;
       If (RCBillMonth.Text = BillMonth.Text) then Day := 30;

      If ((RCBillMonth.Text = BillMonthArray[1]) OR
         (RCBillMonth.Text = BillMonthArray[2]) OR
         (RCBillMonth.Text = BillMonthArray[3])) then Day := 90;

      If ((RCBillMonth.Text = BillMonthArray[4]) OR
         (RCBillMonth.Text = BillMonthArray[5]) OR
         (RCBillMonth.Text = BillMonthArray[6])) then Day := 180;

      If ((RCBillMonth.Text = BillMonthArray[7]) OR
         (RCBillMonth.Text = BillMonthArray[8])) then Day := 240;

      If ((RCBillMonth.Text = BillMonthArray[9]) OR
         (RCBillMonth.Text = BillMonthArray[10]) OR
         (RCBillMonth.Text = BillMonthArray[11]) OR
         (RCBillMonth.Text = BillMonthArray[12])) then Day := 360;


      If Day = 30 then
        begin
         DayStr := 'Cur';
         DI     := 0;
        end;

      If Day = 90 then
        begin
         DayStr := '90 ';
         DI     := 1;
        end;

      If Day = 180 then
        begin
         DayStr := '180';
         DI     := 2;
        end;

      If Day = 240 then
        begin
         DayStr := '240';
         DI     := 3;
        end;

      If (Day = 360) then
        begin
         DayStr := '360';
         DI     := 4;
        end;

      If (Day > 360) and (PrintOption.ItemIndex = 3) then
        begin
         DayStr := '>1Year';
         DI     := 5;
        end;

      If (PrintOption.ItemIndex = 3) then
      begin

          Inc(DetailCount);

          GrandOC                           := GrandOC + RCocamount.AsCurrency;
          GrandTotal                        := GrandTotal + RCAmount.AsCurrency;

          TCollectionAmount[DI]             := TCollectionAmount[DI] + RCAmount.AsCurrency;
          TCollectionOC[DI]                 := TCollectionOC[DI] + RCocamount.AsCurrency;
          TCollectionUCNPCSD[DI]            := TCollectionUCNPCSD[DI] + RCUCNPCSD.AsCurrency;
          TCollectionUCNPCSCC[DI]           := TCollectionUCNPCSCC[DI] + RCUCNPCSCC.AsCurrency;
          TCollectionUCDUSCC[DI]            := TCollectionUCDUSCC[DI] + RCUCDUSCC.AsCurrency;
          TCollectionUCME[DI]               := TCollectionUCME[DI] + RCUCME.AsCurrency;
          TCollectionUCETR[DI]              := TCollectionUCETR[DI] + RCUCETR.AsCurrency;
          TCollectionUCEC[DI]               := TCollectionUCEC[DI] + RCUCEC.AsCurrency;
          TCollectionUCCSR[DI]              := TCollectionUCCSR[DI] + RCVAT.AsCurrency;
          TCollectionRFSC[DI]               := TCollectionRFSC[DI] + RCmcc.AsCurrency;
          TCollectionKwhr[DI]               := TCollectionKwhr[DI] + RCKilowattHour.AsCurrency;

          TCollectionVAT[DI]                := TCollectionVAT[DI] + RCVAT.AsCurrency;
          TCollectionVATDist[DI]            := TCollectionVATDist[DI] + RCVATDist.AsCurrency;
          TCollectionVATGenCO[DI]           := TCollectionVATGenCO[DI] + RCVATGenCO.AsCurrency;
          TCollectionVATTransCO[DI]         := TCollectionVATTransCO[DI] + RCVATTransCO.AsCurrency;
          TCollectionVATSystemLoss[DI]      := TCollectionVATSystemLoss[DI] + RCVATSystemLossGenCO.AsCurrency;

          TCollectionNet[DI]                := TCollectionNet[DI] + RCAmount.AsCurrency -
                                               (RCocamount.AsCurrency +
                                                RCUCNPCSD.AsCurrency +
                                                RCUCNPCSCC.AsCurrency +
                                                RCUCDUSCC.AsCurrency +
                                                RCUCME.AsCurrency +
                                                RCUCETR.AsCurrency +
                                                RCUCEC.AsCurrency +
                                                RCUCCSR.AsCurrency +
                                                RCmcc.AsCurrency +
                                                RCVAT.AsCurrency);

          TAmount                          := TAmount + RCAmount.AsCurrency;
          TOC                              := TOC + RCocamount.AsCurrency;
          TUCNPCSD                         := TUCNPCSD + RCUCNPCSD.AsCurrency;
          TUCNPCSCC                        := TUCNPCSCC + RCUCNPCSCC.AsCurrency;
          TUCDUSCC                         := TUCDUSCC + RCUCDUSCC.AsCurrency;
          TUCME                            := TUCME + RCUCME.AsCurrency;
          TUCETR                           := TUCETR + RCUCETR.AsCurrency;
          TUCEC                            := TUCEC + RCUCEC.AsCurrency;
          TUCCSR                           := TUCCSR + RCVAT.AsCurrency;
          TRFSC                            := TRFSC + RCmcc.AsCurrency;
          TKwhr                            := TKwhr + RCKilowattHour.AsCurrency;
          TVAT                             := TVAT + RCVAT.AsCurrency;
          TVATDist                         := TVATDist + RCVATDist.AsCurrency;
          TVATGenCO                        := TVATGenCO + RCVATGenCO.AsCurrency;
          TVATTransCO                      := TVATTransCO + RCVATTransCO.AsCurrency;
          TVATSystemLoss                   := TVATSystemLoss + RCVATSystemLossGenCO.AsCurrency;

          TNet                             := TNet + RCAmount.AsCurrency -
                                             (RCocamount.AsCurrency +
                                              RCUCNPCSD.AsCurrency +
                                              RCUCNPCSCC.AsCurrency +
                                              RCUCDUSCC.AsCurrency +
                                              RCUCME.AsCurrency +
                                              RCUCETR.AsCurrency +
                                              RCUCEC.AsCurrency +
                                              RCVAT.AsCurrency +
                                              RCmcc.AsCurrency +
                                              RCUCCSR.AsCurrency);

      end;


      if CheckBox1.Checked = False then
      If HeadSW = 0 then
        begin
          HeadSW := 1;
          Heading;
        end;


       If (PrintOption.ItemIndex =3) then
       begin

             If PrintAccountNumber <> RCAccountNumber.Text then
               begin
                 PrintAccountNumber := RCAccountNumber.Text;
                 PrintConnCode      := RCconncode.Text;
                 PrintSerial        := RCserial.Text;
                 PrintRateCode      := RCWRateCode.Text;
                 PrintName          := RCName.Text;
               end
               else
               begin
                 PrintConnCode      := '';
                 PrintSerial        := '';
                 PrintRateCode      := '';
                 PrintName          := '';
               end;




         if CheckBox1.Checked = False then
         Writeln(Lst,DetailCount:3,'.',
                     JustStr(PrintAccountNumber,' ',10,0),
                     JustStr(PrintConnCode,' ',1,0),' ',
                     JustStr(PrintRateCode,' ',1,0),' ',
                     Juststr(PrintName,' ',30,0),' ',
                     Juststr(RCDocument.Text,' ',10,0),' ',
                     Format(RCAmount.AsCurrency,'##,###,###.##'),
                     Juststr(RCBillMonth.Text,' ',04,0),' ',
                     DayStr,' ',
                     PrintSerial);
         PageOC                           := PageOC + RCocamount.AsCurrency;
         PageTotal                        := PageTotal + RCAmount.AsCurrency;

         Inc(LineCount);
       end;

      if CheckBox1.Checked = False then
      If LineCount = 50 then
        begin
         HeadSW    := 0;
         LineCount := 0;
         Inc(PageCount);
         Writeln(lst,'------------------------------------------------------------------------------------------------');
         Writeln(lst,'|                                               Page Total ',Format(PageTotal,'##,###,###.##'));
         Writeln(lst,'------------------------------------------------------------------------------------------------');
         Write(Lst,#12);
         PageTotal := 0;
         PageOC    := 0;
        end;
     RC.Next;
   end;

  if CheckBox1.Checked = False then
  begin
    If LineCount > 0 then
     begin
      Writeln(lst,'------------------------------------------------------------------------------------------------');
      Writeln(lst,'|                                               Page Total ',Format(PageTotal,'##,###,###.##'));
     end;

    Writeln(lst,'------------------------------------------------------------------------------------------------');
    Writeln(lst,'|                                              Grand Total ',Format(GrandTotal,'##,###,###.##'));
    Writeln(lst,'------------------------------------------------------------------------------------------------');

    If LineCount > 30 then Write(Lst,#12);
  end;

  if CheckBox1.Checked = true then
  begin
  Case SelectOption.ItemIndex of
  0 : begin writeln(lst,'AREA ',Area.Text + ' ' + AreaName.Text);
      writeln(lst,'Bill Month '+BillMonth.Text);
      end;
  1 : begin writeln(lst,'Account Range : ',StartAccount.text + ' - ' + EndAccount.Text);
      writeln(lst,'Bill Month '+BillMonth.Text);
      end;
  2 : writeln(lst,'ALL AREAS');
  end;

  Write(lst,#18,#27+'P');
    Case Option.ItemIndex of
      0 : writeln(lst,'Report Name     : INVENTORY OF ACTIVE BILLS - SUMMARY');
      1 : writeln(lst,'Report Name     : INVENTORY OF DISCONNECTED BILLS - SUMMARY');
    end;
  end;

  If (PrintOption.ItemIndex =3) then
  begin
    Write(lst,#15);
    Writeln(lst,'-----------------------------------------------------------------------------------------------------------------------------------------');
    Writeln(lst,'|Age|          Total |  Missionary|Environment|          SCC |     Expanded |         RFSC |        Other |            NET |    KW Hour |');
    Writeln(lst,'|   |         Amount |       Elec.|           |              |          VAT |              |      Charges |                |            |');
    Writeln(lst,'-----------------------------------------------------------------------------------------------------------------------------------------');
    For I := 0 to 5 do
    If TCollectionAmount[I] > 0 then
    Writeln(lst,'|',TArea[I],' ',
                Format(TCollectionAmount[I],'###,###,###.##'),'|',
                Format(TCollectionUCME[I] ,'###,###.##'),'|',
                Format(TCollectionUCEC[I] ,'##,###.##'),'|',
                Format(TCollectionUCNPCSCC[I] ,'#,###,###.##'),'|',
                Format(TCollectionUCCSR[I] ,'#,###,###.##'),'|',
                Format(TCollectionRFSC[I] ,'#,###,###.##'),'|',
                Format(TCollectionOC[I] ,'#,###,###.##'),'|',
                Format(TCollectionNet[I] ,'###,###,###.##'),'|',
                Format(TCollectionKwhr[I] ,'###,###.##'),'|');
    Writeln(lst,'-----------------------------------------------------------------------------------------------------------------------------------------');
    Writeln(lst,'|Ttl|',
                Format(TAmount,'###,###,###.##'),'|',
                Format(TUCME ,'###,###.##'),'|',
                Format(TUCEC ,'##,###.##'),'|',
                Format(TUCNPCSCC,'#,###,###.##'),'|',
                Format(TUCCSR ,'#,###,###.##'),'|',
                Format(TRFSC ,'#,###,###.##'),'|',
                Format(TOC,'#,###,###.##'),'|',
                Format(TNet ,'###,###,###.##'),'|',
                Format(TKwhr,'###,###.##'),'|');
    Writeln(lst,'-----------------------------------------------------------------------------------------------------------------------------------------');
  end;



  Writeln(Lst);
  Writeln(Lst,#27+'P',#18);
  Writeln(Lst,'VAT Breakdown');
  Writeln(lst,'---------------------------------------------------------------------------');
  Writeln(lst,'|  Age   |        VAT |        VAT |        VAT |        VAT |        VAT |');
  Writeln(lst,'|        |      GenCO |    TransCO |System Loss |       Dist |      Total |');
  Writeln(lst,'---------------------------------------------------------------------------');
  For I := 0 to 5 do
  If TCollectionAmount[I] > 0 then
  Writeln(lst,'|',JustStr(TArea[I],' ',8,0),' ',
              Format(TCollectionVATGenco[I],'###,###.##'),'|',
              Format(TCollectionVATTransCO[I] ,'###,###.##'),'|',
              Format(TCollectionVATSystemLoss[I] ,'###,###.##'),'|',
              Format(TCollectionVATDist[I] ,'###,###.##'),'|',
              Format(TCollectionVATGenCO[I] +
                     TCollectionVATTransCO[I] +
                     TCollectionVATSystemLoss[I] +
                     TCollectionVATDist[I],'###,###.##'),'|');
  Writeln(lst,'---------------------------------------------------------------------------');
  Writeln(lst,'|  TOTAL |',
              Format(TVATGenCO,'###,###.##'),'|',
              Format(TVATTransCO,'###,###.##'),'|',
              Format(TVATSystemLoss ,'###,###.##'),'|',
              Format(TVATDist ,'###,###.##'),'|',
              Format(TVATGenCO +
                     TVATTransCO +
                     TVATSystemLoss +
                     TVATDist,'###,###.##'),'|');
  Writeln(lst,'---------------------------------------------------------------------------');

  Write(Lst,#12);
  CloseFile(Lst);
  ShowMessage('Done.');
  end;
//========END==========================
//=====================================
end.

