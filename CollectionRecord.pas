unit CollectionRecord;

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
  ExtCtrls,
  Mask,
  Buttons,
  Grids,
  DBGrids,
  PDJSillyLabel,
  PDJRotoLabel,
  Menus,
  BarMenus,
  ComCtrls,
  Gauges,
  MemDS,
  DBAccess,
  MyAccess,
  CRGrid,
  DsFancyButton, NxCollection, CRDBGrid1;

type
  TCollectionRecordForm = class(TForm)
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
    Label3: TLabel;
    CloseLabel: TNxButton;
    PDJSillyLabel1: TNxButton;
    EditReceiptNumber: TEdit;
    Edit4: TEdit;
    BcBarPopupMenu2: TBcBarPopupMenu;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    TotalBillLabel: TStaticText;
    TotalAmountLabel: TStaticText;
    DSRouteControlBatch: TDataSource;
    GetUnpaid: TMyQuery;
    CheckCollected: TMyQuery;
    SumCollection: TMyQuery;
    Label58: TLabel;
    ARUpdateQuery: TMyQuery;
    DeleteUnpaidBillsQuery: TMyQuery;
    UpdateCollectionQuery: TMyQuery;
    PDJSillyLabel19: TNxButton;
    RouteControlBatch: TMyQuery;
    DeleteRC: TMyQuery;
    ShortOver: TStaticText;
    Tax: TMyQuery;
    TaxEntry: TIntegerField;
    TaxDocument: TStringField;
    TaxCode: TFloatField;
    TaxArea: TStringField;
    TaxBook: TStringField;
    TaxAccountNumber: TStringField;
    TaxDate: TDateField;
    TaxName: TStringField;
    TaxBillMonth: TStringField;
    TaxRateCode: TStringField;
    TaxReading: TFloatField;
    TaxKilowattHour: TFloatField;
    TaxAmount: TFloatField;
    TaxUCNPCSD: TFloatField;
    TaxUCNPCSCC: TFloatField;
    TaxUCDUSCC: TFloatField;
    TaxUCME: TFloatField;
    TaxUCETR: TFloatField;
    TaxUCEC: TFloatField;
    TaxUCCSR: TFloatField;
    TaxTransformerRental: TFloatField;
    TaxVATDist: TFloatField;
    TaxVATGenCO: TFloatField;
    TaxVATTransCO: TFloatField;
    TaxVATSystemLossGenCO: TFloatField;
    TaxVATSystemLossTransCO: TFloatField;
    TaxVAT: TFloatField;
    LabeledEdit1: TLabeledEdit;
    Bevel18: TBevel;
    NOD: TMyQuery;
    NODACCOUNTNUMBER: TStringField;
    CheckOEBR: TMyQuery;
    CheckOEBREntry: TIntegerField;
    CheckOEBRDocument: TStringField;
    CheckOEBRCode: TFloatField;
    CheckOEBRArea: TStringField;
    CheckOEBRBook: TStringField;
    CheckOEBRAccountNumber: TStringField;
    CheckOEBRDate: TDateField;
    CheckOEBRName: TStringField;
    CheckOEBRBillMonth: TStringField;
    CheckOEBRRateCode: TStringField;
    CheckOEBRReading: TFloatField;
    CheckOEBRKilowattHour: TFloatField;
    CheckOEBRAmount: TFloatField;
    CheckOEBRUCNPCSD: TFloatField;
    CheckOEBRUCNPCSCC: TFloatField;
    CheckOEBRUCDUSCC: TFloatField;
    CheckOEBRUCME: TFloatField;
    CheckOEBRUCETR: TFloatField;
    CheckOEBRUCEC: TFloatField;
    CheckOEBRUCCSR: TFloatField;
    CheckOEBRCollectorCode: TStringField;
    CheckOEBRDateIssued: TDateField;
    CheckOEBRBatch: TStringField;
    CheckOEBRTransformerRental: TFloatField;
    SumCollectionbills: TLargeintField;
    SumCollectionamount: TFloatField;
    Panel2: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label30: TLabel;
    Label33: TLabel;
    Gauge2: TGauge;
    Bevel6: TBevel;
    Bevel7: TBevel;
    PDJSillyLabel4: TNxButton;
    PDJSillyLabel5: TNxButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit5: TEdit;
    Edit3: TEdit;
    DBGrid3: TCRDBGrid1;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CloseLabelClick(Sender: TObject);
    procedure EditReceiptNumberKeyPress(Sender: TObject; var Key: Char);
    procedure PDJSillyLabel1Click(Sender: TObject);
    procedure PDJSillyLabel4Click(Sender: TObject);
    procedure PDJSillyLabel5Click(Sender: TObject);
    procedure DBGrid3Enter(Sender: TObject);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure ArrangebyOEBR1Click(Sender: TObject);
    procedure RemoveAutoArrance1Click(Sender: TObject);
    procedure ArrangebyAccountNumber1Click(Sender: TObject);
    procedure DBGrid5Enter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PDJSillyLabel19Click(Sender: TObject);
    procedure LabeledEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  CollectionRecordForm: TCollectionRecordForm;

implementation

uses Data, Collection, ModTools, StatusUpdate;

Var
Lst : Text ;

{$R *.DFM}

procedure TCollectionRecordForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  With BillingData do
   begin
    Collection.Close;
    UnPB.Close;
   end;
  Action := caFree;
  CollectionRecordForm := Nil;
end;

procedure TCollectionRecordForm.CloseLabelClick(Sender: TObject);
begin
  Close;
end;

procedure TCollectionRecordForm.EditReceiptNumberKeyPress(Sender: TObject;
  var Key: Char);
begin

  If (key = #13) then
    begin
      with BillingData,CollectionForm do
       begin
       UnPB.Close;
       UnPB.SQL.Clear;
       UnPB.SQL.Add('select * from unpaidbills where document = '+quotedstr(editreceiptnumber.Text));
       UnPB.Open;

         If not UnPB.IsEmpty then
          begin

            BillingData.Collection.Append;
            CollectionPosted.Text                      := '1';
            CollectionDatePaid.AsDateTime              := DSGroupCollection.DataSet.FieldValues['datepaid'];
            CollectionDateRemitted.AsDateTime          := DSGroupCollection.DataSet.FieldValues['datepaid'];
            CollectionCollectorCode.Text               := DSGroupCollection.DataSet.FieldValues['collectorcode'];
            CollectionEncoderCode.Text                 := DSGroupCollection.DataSet.FieldValues['encodercode'];
            CollectionReceiptNumber.Text               := EditReceiptNumber.Text;
            CollectionAccountCode.Text                 := UnPBCode.Text;
            CollectionAccountNumber.Text               := UnPBAccountNumber.Text;
            CollectionArea.Text                        := UnPBArea.Text;
            CollectionBook.Text                        := UnPBBook.Text;
            CollectionSequence.Text                    := UnPBRateCode.Text;
            CollectionName.Text                        := UnPBName.Text;
            CollectionBillMonth.Text                   := UnPBBillMonth.Text;
            CollectionTotalBill.AsCurrency             := UnPBAmount.AsCurrency;
            CollectionTotal.AsCurrency                 := UnPBAmount.AsCurrency;
            CollectionUCNPCSD.AsCurrency               := UnPBUCNPCSD.AsCurrency;
            CollectionUCNPCSCC.AsCurrency              := UnPBUCNPCSCC.AsCurrency;
            CollectionUCDUSCC.AsCurrency               := UnPBUCDUSCC.AsCurrency;
            CollectionUCME.AsCurrency                  := UnPBUCME.AsCurrency;
            CollectionUCETR.AsCurrency                 := UnPBUCETR.AsCurrency;
            CollectionUCEC.AsCurrency                  := UnPBUCEC.AsCurrency;
            CollectionUCCSR.AsCurrency                 := UnPBUCCSR.AsCurrency;
            CollectionTransformerRental.AsCurrency     := UnPBTransformerRental.AsCurrency;
            CollectionKilowattHour.AsCurrency          := UnPBKilowattHour.AsCurrency;
            CollectionVAT.AsCurrency                   := UnPBVAT.AsCurrency;
            CollectionVATGenCO.AsCurrency              := UnPBVATGenCO.AsCurrency;
            CollectionVATTransCO.AsCurrency            := UnPBVATTransCO.AsCurrency;
            CollectionVATSystemLossGenCO.AsCurrency    := UnPBVATSystemLossGenCO.AsCurrency;
            CollectionVATSystemLossTransCO.AsCurrency  := UnPBVATSystemLossTransCO.AsCurrency;
            CollectionVATDist.AsCurrency               := UnPBVAT.AsCurrency - (UnPBVATGenCO.AsCurrency+
                                                                                UnPBVATTransCO.AsCurrency+
                                                                                UnPBVATSystemLossGenCO.AsCurrency+
                                                                                UnPBVATSystemLossTransCO.AsCurrency);

            CollectionVATDiscAmt.AsFloat               := UnPBVATDiscAmt.AsCurrency;
            CollectionVATDistDiscAmt.AsFloat           := UnPBVATDistDiscAmt.AsCurrency;
            CollectionVATGenCoDiscAmt.AsFloat          := UnPBVATGenCODiscAmt.AsCurrency;
            CollectionVATTransCoDiscAmt.AsFloat        := UnPBVATTransCODiscAmt.AsCurrency;
            CollectionVATSystemLossDiscAmt.AsFloat     := UnPBVATSystemLossDiscAmt.AsCurrency;
            CollectionSystemLossCharge.AsCurrency      := UnPBSystemLossCharge.AsCurrency;
            CollectionPKVRAmount.AsCurrency            := UnPBPKVRAmount.AsCurrency;

            Try
             Collection.Post;
            except
             Collection.Delete;
             EditReceiptNumber.Text := '';
             EditReceiptNumber.SetFocus;
             exit;
            end;
            EditReceiptNumber.Text := '';
            EditReceiptNumber.SetFocus;
         end
         else
         begin

         end;
       end;

     EditReceiptNumber.Text := '';
     EditReceiptNumber.SetFocus;
    end;
end;

procedure TCollectionRecordForm.PDJSillyLabel1Click(Sender: TObject);
begin
   edit1.Text     := CollectionForm.DSGroupCollection.DataSet.FieldValues['collectorcode'];
   Panel2.Left    := 193;
   Panel2.Top     := 113;
   Panel2.Visible := True;
   Panel2.BringToFront;
   Edit1.SetFocus;
end;

procedure TCollectionRecordForm.PDJSillyLabel4Click(Sender: TObject);
Var
PageCount,LineCount,DetailCount,HeadSW : Word;
TArea                           : Array[1..30] of String[3];
TCollectionAmount               : Array[1..30] of Double;
TCollectionTransformerRental    : Array[1..30] of Double;
TCollectionLLP                  : Array[1..30] of Double;
TCollectionUCNPCSD              : Array[1..30] of Double;
TCollectionUCNPCSCC             : Array[1..30] of Double;
TCollectionUCDUSCC              : Array[1..30] of Double;
TCollectionUCME                 : Array[1..30] of Double;
TCollectionUCETR                : Array[1..30] of Double;
TCollectionUCEC                 : Array[1..30] of Double;
TCollectionUCCSR                : Array[1..30] of Double;
TCollectionKwhr                 : Array[1..30] of Double;
TCollectionVAT                  : Array[1..30] of Double;

TCollectionVATDist              : Array[1..30] of Double;
TCollectionVATGenCO             : Array[1..30] of Double;
TCollectionVATTransCO           : Array[1..30] of Double;
TCollectionVATSystemLoss        : Array[1..30] of Double;

TCollectionVATDiscAmt           : Array[1..30] of Double;
TCollectionVATDistDiscAmt       : Array[1..30] of Double;
TCollectionVATGenCODiscAmt      : Array[1..30] of Double;
TCollectionVATTransCODiscAmt    : Array[1..30] of Double;
TCollectionVATSystemLossDiscAmt : Array[1..30] of Double;

TAmount                         : Double ;
TTransformerRental              : Double ;
TLLP                            : Double ;
TUCNPCSD                        : Double ;
TUCNPCSCC                       : Double ;
TUCDUSCC                        : Double ;
TUCME                           : Double ;
TUCETR                          : Double ;
TUCEC                           : Double ;
TUCCSR                          : Double ;
TKwhr                           : Double ;

TVAT                            : Double ;
TVATDist                        : Double ;
TVATGenCO                       : Double ;
TVATTransCO                     : Double ;
TVATSystemLoss                  : Double ;

TVATDiscAmt                     : Double ;
TVATDistDiscAmt                 : Double ;
TVATGenCODiscAmt                : Double ;
TVATTransCODiscAmt              : Double ;
TVATSystemLossDiscAmt           : Double ;

XRent,LLP                       : Double ;
PageXRent,PageLLP               : Double ;
GrandXRent,GrandLLP             : Double ;

PageTotal                       : Double ;
GrandTotal                      : Double ;
AmountRemitted                  : Real   ;
Check                           : Integer;
Difference                      : Double ;
I                               : Integer;

Procedure Heading;
begin
Write(Lst,#18,#27+'P');
writeln(lst,'Page #          : ',PageCount);
writeln(lst,'Report Name     : COLLECTION REPORT - '+Edit1.Text);
writeln(lst,'COLLECTION DATE : ',DateToStr(CollectionForm.DSGroupCollection.DataSet.FieldValues['DatePaid']));
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
    Gauge2.Progress := 0;
    Gauge2.MinValue := 0;
    Gauge2.MaxValue := Collection.RecordCount;

    Collection.First;

    LineCount                    := 0;
    HeadSw                       := 0;
    DetailCount                  := 0;
    PageCount                    := 1;

    For I := 1 to 30 do
    begin
      TArea[I]                           := '';
      TCollectionAmount[I]               := 0;
      TCollectionTransformerRental[I]    := 0;
      TCollectionLLP[I]                  := 0;
      TCollectionUCNPCSD[I]              := 0;
      TCollectionUCNPCSCC[I]             := 0;
      TCollectionUCDUSCC[I]              := 0;
      TCollectionUCME[I]                 := 0;
      TCollectionUCETR[I]                := 0;
      TCollectionUCEC[I]                 := 0;
      TCollectionUCCSR[I]                := 0;
      TCollectionKwhr[I]                 := 0;

      TCollectionVAT[I]                  := 0;
      TCollectionVATDist[I]              := 0;
      TCollectionVATGenCO[I]             := 0;
      TCollectionVATTransCO[I]           := 0;
      TCollectionVATSystemLoss[I]        := 0;

      TCollectionVATDiscAmt[I]           := 0;
      TCollectionVATDistDiscAmt[I]       := 0;
      TCollectionVATGenCODiscAmt[I]      := 0;
      TCollectionVATTransCODiscAmt[I]    := 0;
      TCollectionVATSystemLossDiscAmt[I] := 0;
    end;

    TAmount               := 0;
    TTransformerRental    := 0;
    TLLP                  := 0;
    TUCNPCSD              := 0;
    TUCNPCSCC             := 0;
    TUCDUSCC              := 0;
    TUCME                 := 0;
    TUCETR                := 0;
    TUCEC                 := 0;
    TUCCSR                := 0;
    TKwhr                 := 0;
    TVAT                  := 0;
    TVATDist              := 0;
    TVATGenCO             := 0;
    TVATTransCO           := 0;
    TVATSystemLoss        := 0;

    TVATDiscAmt           := 0;
    TVATDistDiscAmt       := 0;
    TVATGenCODiscAmt      := 0;
    TVATTransCODiscAmt    := 0;
    TVATSystemLossDiscAmt := 0;

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
     Gauge2.AddProgress(1);

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
            TCollectionAmount[I]               := TCollectionAmount[I] + CollectionTotal.AsFloat;

            If CollectionSequence.Text <> 'R' then
            TCollectionTransformerRental[I]    := TCollectionTransformerRental[I] + CollectionTransformerRental.AsFloat else
            TCollectionLLP[I]                  := TCollectionLLP[I] + CollectionTransformerRental.AsFloat;

            TCollectionUCNPCSD[I]              := TCollectionUCNPCSD[I] + CollectionUCNPCSD.AsFloat;
            TCollectionUCNPCSCC[I]             := TCollectionUCNPCSCC[I] + CollectionUCNPCSCC.AsFloat;
            TCollectionUCDUSCC[I]              := TCollectionUCDUSCC[I] + CollectionUCDUSCC.AsFloat;
            TCollectionUCME[I]                 := TCollectionUCME[I] + CollectionUCME.AsFloat;
            TCollectionUCETR[I]                := TCollectionUCETR[I] + CollectionUCETR.AsFloat;
            TCollectionUCEC[I]                 := TCollectionUCEC[I] + CollectionUCEC.AsFloat;
            TCollectionKwhr[I]                 := TCollectionKwhr[I] + CollectionKilowattHour.AsFloat;

            TCollectionVAT[I]                  := TCollectionVAT[I] + CollectionVAT.AsFloat;
            TCollectionVATDist[I]              := TCollectionVATDist[I] + CollectionVATDist.AsFloat;
            TCollectionVATGenCO[I]             := TCollectionVATGenCO[I] + CollectionVATGenCO.AsFloat;
            TCollectionVATTransCO[I]           := TCollectionVATTransCO[I] + CollectionVATTransCO.AsFloat;
            TCollectionVATSystemLoss[I]        := TCollectionVATSystemLoss[I] + CollectionVATSystemLossGenCO.AsFloat;

            TCollectionVATDiscAmt[I]           := TCollectionVATDiscAmt[I] + CollectionVATDiscAmt.AsFloat;
            TCollectionVATDistDiscAmt[I]       := TCollectionVATDistDiscAmt[I] + CollectionVATDistDiscAmt.AsFloat;
            TCollectionVATGenCODiscAmt[I]      := TCollectionVATGenCODiscAmt[I] + CollectionVATGenCoDiscAmt.AsFloat;
            TCollectionVATTransCODiscAmt[I]    := TCollectionVATTransCODiscAmt[I] + CollectionVATTransCoDiscAmt.AsFloat;
            TCollectionVATSystemLossDiscAmt[I] := TCollectionVATSystemLossDiscAmt[I] + CollectionVATSystemLossDiscAmt.AsFloat;

            TAmount                            := TAmount + CollectionTotal.AsFloat;

            If CollectionSequence.Text <> 'R' then
            TTransformerRental    := TTransformerRental + CollectionTransformerRental.AsFloat else
            TLLP                  := TLLP + CollectionTransformerRental.AsFloat;

            TUCNPCSD              := TUCNPCSD + CollectionPKVRAmount.AsFloat;
            TUCNPCSCC             := TUCNPCSCC + CollectionUCNPCSCC.AsFloat;
            TUCDUSCC              := TUCDUSCC + CollectionUCDUSCC.AsFloat;
            TUCME                 := TUCME + CollectionUCME.AsFloat;
            TUCETR                := TUCETR + CollectionUCETR.AsFloat;
            TUCEC                 := TUCEC + CollectionUCEC.AsFloat;
            TKwhr                 := TKwhr + CollectionKilowattHour.AsFloat;

            TVAT                  := TVAT + CollectionVAT.AsFloat;
            TVATDist              := TVATDist + CollectionVATDist.AsFloat;
            TVATGenCO             := TVATGenCO + CollectionVATGenCO.AsFloat;
            TVATTransCO           := TVATTransCO + CollectionVATTransCO.AsFloat;
            TVATSystemLoss        := TVATSystemLoss + CollectionVATSystemLossGenCO.AsFloat;

            TVATDiscAmt           := TVATDiscAmt + CollectionVATDiscAmt.AsFloat;
            TVATDistDiscAmt       := TVATDistDiscAmt + CollectionVATDistDiscAmt.AsFloat;
            TVATGenCODiscAmt      := TVATGenCODiscAmt + CollectionVATGenCODiscAmt.AsFloat;
            TVATTransCODiscAmt    := TVATTransCODiscAmt + CollectionVATTransCODiscAmt.AsFloat;
            TVATSystemLossDiscAmt := TVATSystemLossDiscAmt + CollectionVATSystemLossDiscAmt.AsFloat;

          end;
      end;

      PageTotal                    := PageTotal + CollectionTotal.AsFloat;
      GrandTotal                   := GrandTotal + CollectionTotal.AsFloat;

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

     If Edit5.Text <> '' then
     begin
      (*
      Collection.Edit;
      CollectionSundries.Text := Edit5.Text;
      Collection.Post;
      *)
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
Writeln(lst,'|                                                              Less : Amount Remitted ',Format(AmountRemitted,'#,###,###.##'),'    |');
Writeln(lst,'|                                                                          Difference ',Format(Difference,'#,###,###.##'),'    |');
Writeln(lst,'---------------------------------------------------------------------------------------------------------');
Writeln(lst);
Writeln(lst,#27+'M');
Writeln(lst,'Prepared by : __________________________  Received by : ________________  OR #:',Edit5.Text);
Writeln(lst,'             ',JustStr(Edit1.Text,' ',25,0),
            '              ',JustStr(Edit2.Text,' ',16,0));


LineCount := 0;

Write(Lst,#12);
Writeln(lst);
Writeln(lst);
writeln(lst,'Report Name     : COLLECTION REPORT - '+Edit1.Text);
writeln(lst,'COLLECTION DATE : ',DateToStr(CollectionForm.DSGroupCollection.DataSet.FieldValues['DatePaid']));
Writeln(Lst,'Charges Breakdown',#15);
Writeln(lst,'-----------------------------------------------------------------------------------------------------------------------------------------------------------------');
Writeln(lst,'|AR.|      Total |         PKV|NPC Stranded| DU Stranded| Missionary |  Taxes and | Environment| Transformer|        LLP |       EVAT |        Net | Kilowatt Hr|');
Writeln(lst,'|   |     Amount |    Recovery|  Cont. Cost|  Cont. Cost|      Elec. |  Royalties |            |      Rental|            |            |            |            |');
Writeln(lst,'-----------------------------------------------------------------------------------------------------------------------------------------------------------------');
For I := 1 to 30 do
If TCollectionAmount[I] > 0 then
begin
Writeln(lst,'|',TArea[I],' ',
            Format(TCollectionAmount[I],'###,###.##'),'|',
            Format(TCollectionUCNPCSD[I] ,'###,###.##'),'|',
            Format(TCollectionUCNPCSCC[I] ,'###,###.##'),'|',
            Format(TCollectionUCDUSCC[I] ,'###,###.##'),'|',
            Format(TCollectionUCME[I] ,'###,###.##'),'|',
            Format(TCollectionUCETR[I] ,'###,###.##'),'|',
            Format(TCollectionUCEC[I] ,'###,###.##'),'|',
            Format(TCollectionTransformerRental[I] ,'###,###.##'),'|',
            Format(TCollectionLLP[I] ,'###,###.##'),'|',
            Format(TCollectionVATGenCO[I] +
                   TCollectionVATTransCO[I] +
                   TCollectionVATSystemLoss[I] +
                   TCollectionVATDist[I]+
                   TCollectionVATGenCODiscAmt[I] +
                   TCollectionVATTransCODiscAmt[I] +
                   TCollectionVATSystemLossDiscAmt[I] +
                   TCollectionVATDistDiscAmt[I],
                   '###,###.##'),'|',
            Format(TCollectionAmount[I]-
                  (TCollectionUCNPCSD[I] +
                   TCollectionUCNPCSCC[I] +
                   TCollectionUCDUSCC[I] +
                   TCollectionUCME[I] +
                   TCollectionUCETR[I] +
                   TCollectionUCEC[I] +
                   TCollectionTransformerRental[I] +
                   TCollectionLLP[I]+
                   TCollectionVATGenCO[I] +
                   TCollectionVATTransCO[I] +
                   TCollectionVATSystemLoss[I] +
                   TCollectionVATDist[I]+
                   TCollectionVATGenCODiscAmt[I] +
                   TCollectionVATTransCODiscAmt[I] +
                   TCollectionVATSystemLossDiscAmt[I] +
                   TCollectionVATDistDiscAmt[I]),'###,###.##'),'|',
            Format(TCollectionKWHR[I] ,'###,###.##'),'|');
Inc(LineCount);
end;
Writeln(lst,'-----------------------------------------------------------------------------------------------------------------------------------------------------------------');
Writeln(lst,'Total',
            Format(TAmount,'###,###.##'),'|',
            Format(TUCNPCSD ,'###,###.##'),'|',
            Format(TUCNPCSCC ,'###,###.##'),'|',
            Format(TUCDUSCC ,'###,###.##'),'|',
            Format(TUCME ,'###,###.##'),'|',
            Format(TUCETR ,'###,###.##'),'|',
            Format(TUCEC ,'###,###.##'),'|',
            Format(TTransformerRental ,'###,###.##'),'|',
            Format(TLLP ,'###,###.##'),'|',
            Format(TVATGenCO +
                   TVATTransCO +
                   TVATSystemLoss +
                   TVATDist+
                   TVATGenCODiscAmt +
                   TVATTransCODiscAmt +
                   TVATSystemLossDiscAmt +
                   TVATDistDiscAmt,'###,###.##'),'|',
            Format(TAmount-
                  (TUCNPCSD +
                   TUCNPCSCC +
                   TUCDUSCC +
                   TUCME +
                   TUCETR +
                   TUCEC +
                   TUCCSR +
                   TTransformerRental +
                   TLLP+
                   TVATGenCO +
                   TVATTransCO +
                   TVATSystemLoss +
                   TVATDist+
                   TVATGenCODiscAmt +
                   TVATTransCODiscAmt +
                   TVATSystemLossDiscAmt +
                   TVATDistDiscAmt),'###,###.##'),'|',
            Format(TKWHR ,'###,###.##'),'|');
Writeln(lst,'-----------------------------------------------------------------------------------------------------------------------------------------------------------------');
Inc(LineCount,10);
If LineCount > 50 then
  begin
   Writeln(lst,'----------------------------------------------------------------------');
   LineCount := 0;
   Write(Lst,#12);
  end;

Writeln(Lst);
Writeln(Lst,#27+'P',#18);
Writeln(Lst,'VAT Gross Breakdown');
Writeln(lst,'---------------------------------------------------------------------');
Writeln(lst,'|AR.|        VAT |        VAT |        VAT |        VAT |        VAT |');
Writeln(lst,'|   |      GenCO |    TransCO |System Loss |       Dist |      Total |');
Writeln(lst,'----------------------------------------------------------------------');

For I := 1 to 30 do
If TCollectionAmount[I] > 0 then
begin
Writeln(lst,'|',TArea[I],' ',
            Format(TCollectionVATGenco[I],'###,###.##'),'|',
            Format(TCollectionVATTransCO[I] ,'###,###.##'),'|',
            Format(TCollectionVATSystemLoss[I] ,'###,###.##'),'|',
            Format(TCollectionVATDist[I] ,'###,###.##'),'|',

            Format(TCollectionVATGenCO[I] +
                   TCollectionVATTransCO[I] +
                   TCollectionVATSystemLoss[I] +
                   TCollectionVATDist[I],'###,###.##'),'|');
Inc(LineCount);
If LineCount > 50 then
  begin
   Writeln(lst,'----------------------------------------------------------------------');
   LineCount := 0;
   Write(Lst,#12);
  end;
end;

Writeln(lst,'----------------------------------------------------------------------');
Writeln(lst,'Total',
            Format(TVATGenCO,'###,###.##'),'|',
            Format(TVATTransCO,'###,###.##'),'|',
            Format(TVATSystemLoss ,'###,###.##'),'|',
            Format(TVATDist ,'###,###.##'),'|',
            Format(TVATGenCO +
                   TVATTransCO +
                   TVATSystemLoss +
                   TVATDist,'###,###.##'),'|');
Writeln(lst,'----------------------------------------------------------------------');

If (TVATGenCODiscAmt +
    TVATTransCODiscAmt +
    TVATSystemLossDiscAmt +
    TVATDistDiscAmt) <> 0 then
begin

      Inc(LineCount,4);
      If LineCount > 50 then
        begin
         Writeln(lst,'----------------------------------------------------------------------');
         LineCount := 0;
         Write(Lst,#12);
        end;

      Writeln(Lst,'VAT Discount Breakdown');
      For I := 1 to 30 do
      If TCollectionAmount[I] > 0 then
      begin
      Writeln(lst,'|',TArea[I],' ',
                  Format(TCollectionVATGencoDiscAmt[I],'###,###.##'),'|',
                  Format(TCollectionVATTransCODiscAmt[I] ,'###,###.##'),'|',
                  Format(TCollectionVATSystemLossDiscAmt[I] ,'###,###.##'),'|',
                  Format(TCollectionVATDistDiscAmt[I] ,'###,###.##'),'|',
                  Format(TCollectionVATGenCODiscAmt[I] +
                         TCollectionVATTransCODiscAmt[I] +
                         TCollectionVATSystemLossDiscAmt[I] +
                         TCollectionVATDistDiscAmt[I],'###,###.##'),'|');
      Inc(LineCount);
      If LineCount > 50 then
        begin
         Writeln(lst,'----------------------------------------------------------------------');
         LineCount := 0;
         Write(Lst,#12);
        end;
      end;

      Writeln(lst,'----------------------------------------------------------------------');
      Writeln(lst,'Total',
                  Format(TVATGenCODiscAmt,'###,###.##'),'|',
                  Format(TVATTransCODiscAmt,'###,###.##'),'|',
                  Format(TVATSystemLossDiscAmt,'###,###.##'),'|',
                  Format(TVATDistDiscAmt,'###,###.##'),'|',
                  Format(TVATGenCODiscAmt +
                         TVATTransCODiscAmt +
                         TVATSystemLossDiscAmt +
                         TVATDistDiscAmt,'###,###.##'),'|');
      Writeln(lst,'----------------------------------------------------------------------');

      Inc(LineCount,4);
      If LineCount > 50 then
        begin
         Writeln(lst,'----------------------------------------------------------------------');
         LineCount := 0;
         Write(Lst,#12);
        end;
      Writeln(Lst,'VAT Net Breakdown');
      For I := 1 to 30 do
      If TCollectionAmount[I] > 0 then
      begin
      Writeln(lst,'|',TArea[I],' ',
                  Format(TCollectionVATGenco[I]+TCollectionVATGencoDiscAmt[I],'###,###.##'),'|',
                  Format(TCollectionVATTransCO[I]+TCollectionVATTransCODiscAmt[I] ,'###,###.##'),'|',
                  Format(TCollectionVATSystemLoss[I]+TCollectionVATSystemLossDiscAmt[I] ,'###,###.##'),'|',
                  Format(TCollectionVATDist[I]+TCollectionVATDistDiscAmt[I] ,'###,###.##'),'|',
                  Format((TCollectionVATGenCO[I]+TCollectionVATGenCODiscAmt[I]) +
                         (TCollectionVATTransCO[I]+TCollectionVATTransCODiscAmt[I]) +
                         (TCollectionVATSystemLoss[I]+TCollectionVATSystemLossDiscAmt[I]) +
                         (TCollectionVATDist[I]+TCollectionVATDistDiscAmt[I]),'###,###.##'),'|');
      Inc(LineCount);
      If LineCount > 50 then
        begin
         Writeln(lst,'----------------------------------------------------------------------');
         LineCount := 0;
         Write(Lst,#12);
        end;
      end;

      Writeln(lst,'----------------------------------------------------------------------');
      Writeln(lst,'Total',
                  Format(TVATGenCO + TVATGenCODiscAmt,'###,###.##'),'|',
                  Format(TVATTransCO + TVATTransCODiscAmt,'###,###.##'),'|',
                  Format(TVATSystemLoss + TVATSystemLossDiscAmt,'###,###.##'),'|',
                  Format(TVATDist + TVATDistDiscAmt,'###,###.##'),'|',
                  Format((TVATGenCO + TVATGenCODiscAmt)+
                         (TVATTransCO + TVATTransCODiscAmt) +
                         (TVATSystemLoss + TVATSystemLossDiscAmt) +
                         (TVATDist + TVATDistDiscAmt),'###,###.##'),'|');
      Writeln(lst,'----------------------------------------------------------------------');
end;

Write(lst,#12);
CloseFile(Lst);
ShowMessage('Done.');
end;

procedure TCollectionRecordForm.PDJSillyLabel5Click(Sender: TObject);
begin
  Panel2.Visible := False;
end;

procedure TCollectionRecordForm.DBGrid3Enter(Sender: TObject);
begin
  BillingData.Collection.Edit;
end;

procedure TCollectionRecordForm.Edit4KeyPress(Sender: TObject;
  var Key: Char);
Var
Actual : Real;
Check  : Integer;
Diff   : Currency;

begin
  If Key = #13 then
    begin
      Val(Edit4.Text,Actual,Check);
      Diff := Actual - SumCollectionamount.AsCurrency;
      ShortOver.Caption := 'DIFF - '+Format(Diff,'#,###,###.##');
    end;
end;

procedure TCollectionRecordForm.ArrangebyOEBR1Click(Sender: TObject);
begin
With BillingData do
begin
     Collection.Close;
     Collection.SQL.Clear;
     Collection.SQL.Add('select * from collection');
     Collection.SQL.Add('         where datepaid = :datepaid and ');
     Collection.SQL.Add('               collectorcode = :collectorcode and');
     Collection.SQL.Add('               encodercode = :encodercode');
     Collection.SQL.Add('order by ReceiptNumber');
     Collection.ParamByName('datepaid').AsDate    := CollectionForm.DSGroupCollection.DataSet.FieldValues['DatePaid'];
     Collection.ParamByName('collectorcode').Text := CollectionForm.DSGroupCollection.DataSet.FieldValues['CollectorCode'];
     Collection.ParamByName('encodercode').Text   := CollectionForm.DSGroupCollection.DataSet.FieldValues['encodercode'];
     Collection.Open;
end;
end;

procedure TCollectionRecordForm.RemoveAutoArrance1Click(Sender: TObject);
begin
With BillingData do
begin
     Collection.Close;
     Collection.SQL.Clear;
     Collection.SQL.Add('select * from collection');
     Collection.SQL.Add('         where datepaid = :datepaid and ');
     Collection.SQL.Add('               collectorcode = :collectorcode and');
     Collection.SQL.Add('               encodercode = :encodercode');
     Collection.SQL.Add('order by Entry');
     Collection.ParamByName('datepaid').AsDate    := CollectionForm.DSGroupCollection.DataSet.FieldValues['DatePaid'];
     Collection.ParamByName('collectorcode').Text := CollectionForm.DSGroupCollection.DataSet.FieldValues['CollectorCode'];
     Collection.ParamByName('encodercode').Text   := CollectionForm.DSGroupCollection.DataSet.FieldValues['encodercode'];
     Collection.Open;
end;
end;

procedure TCollectionRecordForm.ArrangebyAccountNumber1Click(
  Sender: TObject);
begin
With BillingData do
begin
     Collection.Close;
     Collection.SQL.Clear;
     Collection.SQL.Add('select * from collection');
     Collection.SQL.Add('         where datepaid = :datepaid and ');
     Collection.SQL.Add('               collectorcode = :collectorcode and');
     Collection.SQL.Add('               encodercode = :encodercode');
     Collection.SQL.Add('order by AccountNumber');

     Collection.ParamByName('datepaid').AsDate    := CollectionForm.DSGroupCollection.DataSet.FieldValues['DatePaid'];
     Collection.ParamByName('collectorcode').Text := CollectionForm.DSGroupCollection.DataSet.FieldValues['CollectorCode'];
     Collection.ParamByName('encodercode').Text   := CollectionForm.DSGroupCollection.DataSet.FieldValues['encodercode'];
     Collection.Open;
end;
end;

procedure TCollectionRecordForm.DBGrid5Enter(Sender: TObject);
begin
  With BillingData do
  begin
    AR.Filter := 'DEBIT > 0';
    AR.Filtered := True;
  end;
end;

procedure TCollectionRecordForm.FormCreate(Sender: TObject);
begin
   BillingData.Collection.Connection := BillingData.MyConnection1;
   SumCollection.Connection := BillingData.MyConnection1;
end;

procedure TCollectionRecordForm.PDJSillyLabel19Click(Sender: TObject);
begin
   SumCollection.Close;
   SumCollection.ParamByName('collectorcode').text := CollectionForm.DSGroupCollection.DataSet.FieldValues['CollectorCode'];
   SumCollection.ParamByName('encodercode').text   := CollectionForm.DSGroupCollection.DataSet.FieldValues['encodercode'];
   SumCollection.ParamByName('datepaid').AsDate    := CollectionForm.DSGroupCollection.DataSet.FieldValues['DatePaid'];
   SumCollection.Open;

   TotalBillLabel.Caption   := 'BILLS - '+IntToStr(SumCollectionbills.AsInteger);
   TotalAmountLabel.Caption := 'AMOUNT - '+Format(SumCollectionamount.AsCurrency,'#,###,###.##');
end;

procedure TCollectionRecordForm.LabeledEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
   If Key = #13 then
    begin
     if not BillingData.Collection.Locate('receiptnumber',LabeledEdit1.Text,[]) then
        MessageDlg('OEBR Number not found.....', mtError, [mbOK], 0);
      LabeledEdit1.SetFocus;
      LabeledEdit1.SelectAll;
    end;
end;

procedure TCollectionRecordForm.FormShow(Sender: TObject);
begin
  EditReceiptNumber.SetFocus;
end;

end.



