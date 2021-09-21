object TagUnpaidBillsForm: TTagUnpaidBillsForm
  Left = 323
  Top = 115
  BorderStyle = bsToolWindow
  Caption = 'Tag Unpaid Bills'
  ClientHeight = 442
  ClientWidth = 712
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Search: TNxButtonEdit
    Left = 9
    Top = 10
    Width = 153
    Height = 21
    Glyph.Data = {
      06030000424D060300000000000036000000280000000F0000000F0000000100
      180000000000D002000000000000000000000000000000000000000000484342
      5044440000000000000000000000000000000000000000000000000000000000
      00000000000000000000312C265F80AD9785B07B666600000000000000000000
      00000000000000000000000000000000000000000000000000001F283B5BD9FF
      3479D69781A77C65640000000000000000000000000000000000000000000000
      0000000000000000000000000040588A5BD4FF3378D69882A77B646200000000
      0000000000000000000000000000000000000000000000000000000000000000
      41598B5BD6FF3277D69A85AB5542430000000000000000000000000000000000
      0000000000000000000000000000000000000041578A59D8FF4E8BDA625F5E1E
      191E917171C3A899D0B3A8856A7118181D000000000000000000000000000000
      000000000000344775706573AF9695FECFA9FFFFD0FFFFD8FFFFE1FFFFE6CCA9
      A4312D33000000000000000000000000000000000000000000050001FFD6AFFF
      FAC7FFFAC5FFFFDBFFFFECFFFFFFFFFFFFB18E87030407000000000000000000
      000000000000000000946F6CFFFFCCFFE0ACFFFCC9FFFFDFFFFFF3FFFFFBFFFF
      EBF1DEBC3A3139000000000000000000000000000000000000FBCBB6FFF5C2FF
      D7A3FFF7C3FFFFD8FFFFE6FFFFE8FFFFDFFFFBCD45343A000000000000000000
      000000000000000000DBB3A0FFFDC9FFDDADFFE9B4FFFDCAFFFFD3FFFFD5FFFF
      D0FFE8BC47343E000000000000000000000000000000000000725350FFFFE3FF
      F8EAFFDEB4FFE6B1FFEBB7FFEBB6FFFFCAE7B59D0F010E000000000000000000
      000000000000000000000000F2C9B8FFFFFFFFFAE0FFE1B0FFDFAAFFFBC7FFE0
      B26038490000000000000000000000000000000000000000000000001E1213CD
      A198FFE8C6FFFACCFFF7CAF6C4AC5E3B47000000000000000000000000000000
      000000000000000000000000000000000000170D0F2B191B4229360000020000
      00000000000000000000}
    TabOrder = 1
    OnButtonClick = SearchButtonClick
    ButtonCaption = 'Go'
    ButtonWidth = 25
    TransparentColor = clNone
  end
  object NxButton1: TNxButton
    Left = 8
    Top = 40
    Width = 153
    Caption = 'Add Accounts'
    TabOrder = 2
    OnClick = NxButton1Click
  end
  object NxButton2: TNxButton
    Left = 8
    Top = 72
    Width = 153
    Caption = 'Delete'
    TabOrder = 3
    OnClick = NxButton2Click
  end
  object NxButton3: TNxButton
    Left = 8
    Top = 407
    Width = 153
    Caption = 'Close'
    TabOrder = 4
    OnClick = NxButton3Click
  end
  object NxHeaderPanel1: TNxHeaderPanel
    Left = 212
    Top = 136
    Width = 289
    Height = 169
    Caption = 'Add Accounts'
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clBlack
    HeaderFont.Height = -13
    HeaderFont.Name = 'MS Sans Serif'
    HeaderFont.Style = [fsBold]
    ParentHeaderFont = False
    TabOrder = 5
    Visible = False
    FullWidth = 289
    object NxLabel1: TNxLabel
      Left = 24
      Top = 51
      Width = 80
      Height = 13
      Caption = 'Account Number'
      HorizontalPosition = hpLeft
      InnerHorizontal = True
      InnerVertical = False
      InnerMargins.Horizontal = 0
      InnerMargins.Vertical = 2
      VerticalPosition = vpTop
    end
    object NxLabel2: TNxLabel
      Left = 58
      Top = 75
      Width = 46
      Height = 13
      Caption = 'Bill Month'
      HorizontalPosition = hpLeft
      InnerHorizontal = True
      InnerVertical = False
      InnerMargins.Horizontal = 0
      InnerMargins.Vertical = 2
      VerticalPosition = vpTop
    end
    object NxLabel3: TNxLabel
      Left = 58
      Top = 101
      Width = 42
      Height = 13
      Caption = 'Remarks'
      HorizontalPosition = hpLeft
      InnerHorizontal = True
      InnerVertical = False
      InnerMargins.Horizontal = 0
      InnerMargins.Vertical = 2
      VerticalPosition = vpTop
    end
    object NxEdit1: TNxEdit
      Left = 112
      Top = 48
      Width = 145
      Height = 21
      TabOrder = 0
      OnKeyPress = NxEdit1KeyPress
    end
    object NxEdit2: TNxEdit
      Left = 112
      Top = 72
      Width = 145
      Height = 21
      TabOrder = 1
      OnKeyPress = NxEdit1KeyPress
    end
    object NxComboBox1: TNxComboBox
      Left = 112
      Top = 96
      Width = 145
      Height = 21
      TabOrder = 2
      Text = 'Embezzled by Deputized'
      OnKeyPress = NxEdit1KeyPress
      HideFocus = False
      AutoCompleteDelay = 0
      ItemIndex = 0
      Items.Strings = (
        'Embezzled by Deputized'
        'Bill Under Protest')
    end
    object NxButton4: TNxButton
      Left = 62
      Top = 128
      Width = 75
      Caption = 'Save'
      TabOrder = 3
      OnClick = NxButton4Click
    end
    object NxButton5: TNxButton
      Left = 150
      Top = 128
      Width = 75
      Caption = 'Close'
      TabOrder = 4
      OnClick = NxButton5Click
    end
  end
  object CRDBGrid1: TCRDBGrid1
    Left = 168
    Top = 8
    Width = 529
    Height = 425
    Ctl3D = False
    DataSource = dsTaggedf
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Document'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AccountNumber'
        Title.Caption = 'Account #'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Name'
        Title.Alignment = taCenter
        Width = 131
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BillMonth'
        Title.Caption = 'BMon'
        Width = 32
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RateCode'
        Title.Caption = 'CT'
        Width = 18
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Reading'
        Title.Alignment = taCenter
        Title.Caption = 'RDG'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'KilowattHour'
        Title.Alignment = taCenter
        Title.Caption = 'KWHR'
        Width = 54
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Amount'
        Title.Alignment = taRightJustify
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Remarks'
        Width = 184
        Visible = True
      end>
  end
  object CreateTag: TMyQuery
    Connection = BillingData.MyConnection1
    SQL.Strings = (
      'CREATE TABLE  `zaneco`.`tagunpaid` ('
      '  `Entry` int(11) NOT NULL auto_increment,'
      '  `Document` varchar(15) default NULL,'
      '  `Code` double default NULL,'
      '  `Area` char(3) default NULL,'
      '  `Book` char(3) default NULL,'
      '  `AccountNumber` varchar(10) default NULL,'
      '  `Date` date default NULL,'
      '  `Name` varchar(30) default NULL,'
      '  `BillMonth` varchar(4) default NULL,'
      '  `RateCode` char(2) default NULL,'
      '  `Reading` double default NULL,'
      '  `KilowattHour` double default NULL,'
      '  `Amount` double default NULL,'
      '  `Remarks` varchar(30) default NULL,'
      '  PRIMARY KEY  (`Entry`),'
      '  UNIQUE KEY `Index_5` (`AccountNumber`,`BillMonth`),'
      '  KEY `BillNumber` (`Document`),'
      '  KEY `Name` (`Name`),'
      '  KEY `AcctNum` (`AccountNumber`)'
      ') ENGINE=InnoDB DEFAULT CHARSET=latin1;')
    Left = 24
    Top = 384
  end
  object Tagged: TMyQuery
    Connection = BillingData.MyConnection1
    SQL.Strings = (
      'select * from tagunpaid'
      'where name like :name and'
      '      accountnumber like :accountnumber'
      'order by entry')
    Left = 56
    Top = 384
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'name'
      end
      item
        DataType = ftUnknown
        Name = 'accountnumber'
      end>
    object TaggedDocument: TStringField
      FieldName = 'Document'
      Size = 15
    end
    object TaggedCode: TFloatField
      FieldName = 'Code'
    end
    object TaggedArea: TStringField
      FieldName = 'Area'
      FixedChar = True
      Size = 3
    end
    object TaggedBook: TStringField
      FieldName = 'Book'
      FixedChar = True
      Size = 3
    end
    object TaggedAccountNumber: TStringField
      FieldName = 'AccountNumber'
      Size = 10
    end
    object TaggedDate: TDateField
      FieldName = 'Date'
    end
    object TaggedName: TStringField
      FieldName = 'Name'
      Size = 30
    end
    object TaggedBillMonth: TStringField
      FieldName = 'BillMonth'
      Size = 4
    end
    object TaggedRateCode: TStringField
      FieldName = 'RateCode'
      FixedChar = True
      Size = 2
    end
    object TaggedReading: TFloatField
      FieldName = 'Reading'
    end
    object TaggedKilowattHour: TFloatField
      FieldName = 'KilowattHour'
    end
    object TaggedAmount: TFloatField
      FieldName = 'Amount'
      currency = True
    end
    object TaggedRemarks: TStringField
      FieldName = 'Remarks'
      Size = 30
    end
  end
  object dsTaggedf: TMyDataSource
    DataSet = Tagged
    Left = 88
    Top = 384
  end
  object InsertTag: TMyQuery
    Connection = BillingData.MyConnection1
    SQL.Strings = (
      'Replace into zaneco.tagunpaid'
      ' (Document,'
      '  Code,'
      '  Area,'
      '  Book,'
      '  AccountNumber,'
      '  Date,'
      '  Name,'
      '  BillMonth,'
      '  RateCode,'
      '  Reading,'
      '  KilowattHour,'
      '  Amount,'
      '  Remarks)'
      'select'
      '  Document,'
      '  Code,'
      '  Area,'
      '  Book,'
      '  AccountNumber,'
      '  Date,'
      '  Name,'
      '  BillMonth,'
      '  RateCode,'
      '  Reading,'
      '  KilowattHour,'
      '  Amount,'
      '  :Remarks'
      'from zaneco.unpaidbills'
      'where accountnumber = :accountnumber and'
      '      billmonth = :billmonth')
    Left = 24
    Top = 352
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Remarks'
      end
      item
        DataType = ftUnknown
        Name = 'accountnumber'
      end
      item
        DataType = ftUnknown
        Name = 'billmonth'
      end>
  end
end
