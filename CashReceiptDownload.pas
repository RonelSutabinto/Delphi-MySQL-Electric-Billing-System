unit CashReceiptDownload;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, MemDS, DBAccess, MyAccess, NxCollection, StdCtrls, NxEdit;

type
  TCashReceiptDownloadForm = class(TForm)
    NxMemo1: TNxMemo;
    NxButton1: TNxButton;
    NxButton2: TNxButton;
    CRUpdate: TMyQuery;
    CRUpdateidCashReceipt: TLargeintField;
    CRUpdatecrDate: TDateField;
    CRUpdatecrNumber: TStringField;
    CRUpdatecrAmount: TFloatField;
    CRCheck: TMyQuery;
    JournalUpdate: TMyQuery;
    GetAccount: TMyQuery;
    GetAccountidchart: TLargeintField;
    GetAccountaccountcode: TStringField;
    GetAccountaccountname: TStringField;
    GetAccountaccounttype: TStringField;
    GetAccountaccountledgertype: TStringField;
    GetAccountBalAsOf: TFloatField;
    GetAccountBalPeriodCovered: TFloatField;
    GetAccountIndent: TLargeintField;
    OpenDialog1: TOpenDialog;
    AREAOFFICE: TNxComboBox;
    CRUpdatecrDescription: TStringField;
    MyQuery1: TMyQuery;
    LargeintField1: TLargeintField;
    DateField1: TDateField;
    StringField1: TStringField;
    FloatField1: TFloatField;
    StringField2: TStringField;
    CDUpdate: TMyQuery;
    CDcheck: TMyQuery;
    CDUpdateidCashDeposit: TLargeintField;
    CDUpdatecdDate: TDateField;
    CDUpdatecdDescription: TStringField;
    CDUpdatecdNumber: TStringField;
    CDUpdatecdAmount: TFloatField;
    CDUpdatecashstatus: TBooleanField;
    CDUpdatepassword: TStringField;
    MyConnection1: TMyConnection;
    procedure NxButton1Click(Sender: TObject);
    procedure NxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CashReceiptDownloadForm: TCashReceiptDownloadForm;

implementation

uses Data, ModTools, Math;

{$R *.dfm}

Function RoundOff(Data : Currency) : Currency;
Var DSt  : String;
    Dat  : Currency;
    Chk  : Integer;
    Val2 : Currency;
begin
RoundOff := Data;
Str(Data:0:4,Dst);

 If Copy(Dst,Length(Dst)-1,1) >= '5' then
        if data >= 0 then Val2 := StrToCurr(Copy(Dst,1,length(dst)-2))+0.01 else
                          Val2 := StrToCurr(Copy(Dst,1,length(dst)-2))-0.01 else
      Val2 := StrToCurr(Copy(Dst,1,length(dst)-2));

RoundOff := Val2;
If (Dst = '0.00') or (Dst = '-0.00') then RoundOff := 0.00;
end;

procedure TCashReceiptDownloadForm.NxButton1Click(Sender: TObject);
type
cashreceipt = record
crdate          : TDate                       ;
crdescription   : String[50]                  ;
cramount        : Currency                    ;
craccountdate   : Array[1..300] of TDate      ;
craccountcode   : Array[1..300] of string[20] ;
crdebit         : Array[1..300] of Real       ;
crcredit        : Array[1..300] of Real       ;
doctype         : Array[1..300] of Integer    ;
Document        : string[50]                  ;
end;

Var CRRecord          : CashReceipt ;
    CRFile            : File        ;
    I                 : Integer     ;

begin
 NxMemo1.Lines.Clear;

 if not(OpenDialog1.Execute) then Exit;

 try
 AssignFile(CRFile,OpenDialog1.FileName);
 Reset(CRFile,SizeOf(CashReceipt));
 except
  on E: Exception do
    begin
      NxMemo1.Lines.Add(E.Message);
      exit;
    end;
 end;

 CRUpdate.Open;

 While not eof(crfile) do
   begin
    BlockRead(CRFile,CRRecord,1);

    With CRRecord do
      begin
        CRCheck.Close;
        CRCheck.ParamByName('crdescription').Text := AreaOffice.Text+' CASH RECEIPT '+DateToStr(CRRecord.crdate);
        CRCheck.Open;

        If not CRCheck.IsEmpty then
          begin
            case MessageDlg('Cash Receipt '+AreaOffice.Text+' CASH RECEIPT '+DateToStr(CRRecord.crdate)+
                            'is already on file.. Continue anyway?',
                            mtConfirmation, [mbYes, mbNo, mbCancel], 0) of
              mrNo     : Continue;
              mrCancel : begin
                           CloseFile(CRFile);
                           CRCheck.Close;
                           CRUpdate.Close;
                           exit;
                         end;

            end;
           CRCheck.Close;

          end;

        CRUpdate.AppendRecord([]);
        CRUpdate.Edit;
        CRUpdatecrDate.AsDateTime   := CRRecord.crdate;
        CRUpdatecrDescription.Text  := AreaOffice.Text+' CASH RECEIPT '+DateToStr(CRRecord.crdate);
        CRUpdatecrNumber.Text       := 'CRR-'+JustStr(CRUpdateidCashReceipt.Text,'0',5,1);
        CRUpdatecrAmount.AsCurrency := CRRecord.crAmount;

        NxMemo1.Lines.Add(CRUpdatecrDescription.Text+' added');

        CRUpdate.Post;

        For I := 1 to 300 do
          begin
            If RoundTo(CRRecord.crdebit[i]+CRRecord.crcredit[i],-2) <> 0 then
              begin
                GetAccount.ParamByName('accountcode').Text        := CRRecord.craccountcode[i];
                GetAccount.Open;

                If not GetAccount.IsEmpty then
                begin
                JournalUpdate.ParamByName('accountcode').Text     := GetAccountaccountcode.Text;
                JournalUpdate.ParamByName('accountname').Text     := GetAccountaccountname.Text;
                JournalUpdate.ParamByName('documentdate').AsDate  := CRRecord.craccountdate[i];
                JournalUpdate.ParamByName('documenttype').Text    := 'CRR';
                JournalUpdate.ParamByName('documentnumber').Text  := CRUpdatecrNumber.Text;
                JournalUpdate.ParamByName('debit').AsCurrency     := RoundOff(CRRecord.crdebit[i]);
                JournalUpdate.ParamByName('credit').AsCurrency    := RoundOff(CRRecord.crcredit[i]);
                JournalUpdate.Execute;
                end else
                NxMemo1.Add('This account code does not exist '+CRRecord.craccountcode[i]);

                GetAccount.Close;
              end;
          end;

      end; // end with
   end; // end while

CloseFile(crFile);
CrUpdate.Close;
NxMemo1.Lines.Add('Download done...');

MyQuery1.SQL.Clear;
MyQuery1.sql.Add('Update journal j inner join chart c on c.accountcode = j.accountcode set j.idchart = c.idchart');
MyQuery1.Execute;
NxMemo1.Lines.Add('Update Complete');

end;

procedure TCashReceiptDownloadForm.NxButton2Click(Sender: TObject);
begin
  Close;
end;

end.
