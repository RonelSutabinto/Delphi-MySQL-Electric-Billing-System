object CashReceiptDownloadForm: TCashReceiptDownloadForm
  Left = 446
  Top = 175
  BorderStyle = bsDialog
  Caption = 'Download Cash Receipt from ASCII'
  ClientHeight = 359
  ClientWidth = 494
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object NxMemo1: TNxMemo
    Left = 152
    Top = 12
    Width = 329
    Height = 336
    TabOrder = 0
  end
  object NxButton1: TNxButton
    Left = 9
    Top = 45
    Width = 133
    Caption = 'Start Download'
    TabOrder = 1
    OnClick = NxButton1Click
  end
  object NxButton2: TNxButton
    Left = 9
    Top = 324
    Width = 133
    Caption = 'Close'
    TabOrder = 2
    OnClick = NxButton2Click
  end
  object AREAOFFICE: TNxComboBox
    Left = 8
    Top = 16
    Width = 133
    Height = 21
    TabOrder = 3
    Text = 'DIPOLOG'
    HideFocus = False
    AutoCompleteDelay = 0
    ItemIndex = 0
    Items.Strings = (
      'DIPOLOG'
      'PI'#209'AN'
      'SINDANGAN'
      'LILOY')
  end
  object CRUpdate: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'select * from CashReceipt')
    Left = 16
    Top = 72
    object CRUpdateidCashReceipt: TLargeintField
      FieldName = 'idCashReceipt'
    end
    object CRUpdatecrDate: TDateField
      FieldName = 'crDate'
    end
    object CRUpdatecrNumber: TStringField
      FieldName = 'crNumber'
      Size = 15
    end
    object CRUpdatecrAmount: TFloatField
      FieldName = 'crAmount'
    end
    object CRUpdatecrDescription: TStringField
      FieldName = 'crDescription'
      Size = 50
    end
  end
  object CRCheck: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'select * from cashreceipt '
      'where crdescription = :crdescription')
    Left = 16
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'crdescription'
        Value = nil
      end>
  end
  object JournalUpdate: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'insert into journal'
      ' (accountcode,'
      '  accountname,'
      '  documentdate,'
      '  documenttype,'
      '  documentnumber,'
      '  debit,'
      '  credit)'
      'values'
      ' (:accountcode,'
      '  :accountname,'
      '  :documentdate,'
      '  :documenttype,'
      '  :documentnumber,'
      '  :debit,'
      '  :credit)')
    Left = 48
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'accountcode'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'accountname'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'documentdate'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'documenttype'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'documentnumber'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'debit'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'credit'
        Value = nil
      end>
  end
  object GetAccount: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'select * from chart where accountcode = :accountcode')
    Left = 48
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'accountcode'
        Value = nil
      end>
    object GetAccountidchart: TLargeintField
      FieldName = 'idchart'
    end
    object GetAccountaccountcode: TStringField
      FieldName = 'accountcode'
    end
    object GetAccountaccountname: TStringField
      FieldName = 'accountname'
      Size = 70
    end
    object GetAccountaccounttype: TStringField
      FieldName = 'accounttype'
      Size = 10
    end
    object GetAccountaccountledgertype: TStringField
      FieldName = 'accountledgertype'
      Size = 5
    end
    object GetAccountBalAsOf: TFloatField
      FieldName = 'BalAsOf'
    end
    object GetAccountBalPeriodCovered: TFloatField
      FieldName = 'BalPeriodCovered'
    end
    object GetAccountIndent: TLargeintField
      FieldName = 'Indent'
    end
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '.fle'
    Filter = 'FLE Data File|*.fle'
    Left = 81
    Top = 72
  end
  object MyQuery1: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'select * from CashReceipt')
    Left = 16
    Top = 136
    object LargeintField1: TLargeintField
      FieldName = 'idCashReceipt'
    end
    object DateField1: TDateField
      FieldName = 'crDate'
    end
    object StringField1: TStringField
      FieldName = 'crNumber'
      Size = 15
    end
    object FloatField1: TFloatField
      FieldName = 'crAmount'
    end
    object StringField2: TStringField
      FieldName = 'crDescription'
      Size = 50
    end
  end
  object CDUpdate: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'select * from CashDeposit')
    Left = 16
    Top = 168
    object CDUpdateidCashDeposit: TLargeintField
      FieldName = 'idCashDeposit'
    end
    object CDUpdatecdDate: TDateField
      FieldName = 'cdDate'
    end
    object CDUpdatecdDescription: TStringField
      FieldName = 'cdDescription'
      Size = 50
    end
    object CDUpdatecdNumber: TStringField
      FieldName = 'cdNumber'
      Size = 15
    end
    object CDUpdatecdAmount: TFloatField
      FieldName = 'cdAmount'
    end
    object CDUpdatecashstatus: TBooleanField
      FieldName = 'cashstatus'
    end
    object CDUpdatepassword: TStringField
      FieldName = 'password'
      Size = 45
    end
  end
  object CDcheck: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'select * from cashDeposit'
      'where cddescription = :crdescription')
    Left = 48
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'crdescription'
        Value = nil
      end>
  end
  object MyConnection1: TMyConnection
    Username = '19zan72'
    LoginPrompt = False
    Left = 16
    Top = 216
    EncryptedPassword = '8FFF9EFF8CFF9CFF9EFF93FF85FF9EFF91FF'
  end
end
