object RestructureForm: TRestructureForm
  Left = 237
  Top = 95
  BorderIcons = [biSystemMenu]
  Caption = 'Account Restructure'
  ClientHeight = 405
  ClientWidth = 846
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object NxLabel1: TNxLabel
    Left = 12
    Top = 14
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
  object Search: TNxEdit
    Left = 10
    Top = 34
    Width = 147
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
    TabOrder = 0
    OnKeyPress = SearchKeyPress
  end
  object DBEdit1: TDBEdit
    Left = 9
    Top = 79
    Width = 148
    Height = 22
    Ctl3D = False
    DataField = 'name'
    DataSource = dsRMaster
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'Arial Narrow'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 9
    Top = 110
    Width = 148
    Height = 22
    Ctl3D = False
    DataField = 'ConsumerType'
    DataSource = dsRMaster
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'Arial Narrow'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 9
    Top = 142
    Width = 148
    Height = 22
    Ctl3D = False
    DataField = 'serial'
    DataSource = dsRMaster
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'Arial Narrow'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
  end
  object DBEdit4: TDBEdit
    Left = 9
    Top = 174
    Width = 148
    Height = 22
    Ctl3D = False
    DataField = 'Status'
    DataSource = dsRMaster
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'Arial Narrow'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 4
  end
  object NxButton1: TNxButton
    Left = 448
    Top = 102
    Width = 30
    Caption = '>'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = NxButton1Click
  end
  object NxButton2: TNxButton
    Left = 448
    Top = 134
    Width = 30
    Caption = '>>'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    OnClick = NxButton2Click
  end
  object NxButton3: TNxButton
    Left = 448
    Top = 166
    Width = 30
    Caption = '<'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    OnClick = NxButton3Click
  end
  object NxButton4: TNxButton
    Left = 448
    Top = 198
    Width = 30
    Caption = '<<'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
    OnClick = NxButton4Click
  end
  object CRDBGrid1: TCRDBGrid1
    Left = 169
    Top = 8
    Width = 272
    Height = 387
    OptionsEx = [dgeEnableSort, dgeLocalFilter, dgeLocalSorting, dgeSummary]
    Ctl3D = False
    DataSource = dsUnpaidBills
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'billingmonth'
        Title.Alignment = taCenter
        Title.Caption = 'Billing Month'
        Width = 86
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'document'
        Title.Alignment = taCenter
        Title.Caption = 'Bill Number'
        Width = 74
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'amount'
        Title.Alignment = taRightJustify
        Title.Caption = 'Amount'
        Width = 77
        Visible = True
        SummaryMode = smSum
        FloatFormat = ffCurrency
        FloatPrecision = 12
        FloatDigits = 2
      end>
  end
  object CRDBGrid2: TCRDBGrid1
    Left = 485
    Top = 8
    Width = 348
    Height = 387
    OptionsEx = [dgeEnableSort, dgeLocalFilter, dgeLocalSorting, dgeSummary]
    Ctl3D = False
    DataSource = dsRestUnpaid
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'billingmonth'
        Title.Alignment = taCenter
        Title.Caption = 'Billing Month'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'restOebrnumber'
        Title.Alignment = taCenter
        Title.Caption = 'Rest. OEBR'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'restbillmonth'
        Title.Alignment = taCenter
        Title.Caption = 'Rest. Month'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'amount'
        Title.Alignment = taRightJustify
        Title.Caption = 'Amount'
        Width = 72
        Visible = True
        SummaryMode = smSum
        FloatFormat = ffCurrency
        FloatPrecision = 12
        FloatDigits = 2
      end>
  end
  object RMaster: TMyQuery
    Connection = BillingData.MyConnection1
    SQL.Strings = (
      'select code,'
      '       accountnumber,'
      '       name,'
      '       case ratecode'
      '        when '#39'R'#39' then '#39'RESIDENTIAL'#39' '
      '        when '#39'C'#39' then '#39'COMMERCIAL'#39' '
      '        when '#39'P'#39' then '#39'PUBLIC BLDG.'#39' '
      '        when '#39'I'#39' then '#39'INDUSTRIAL'#39' '
      '        when '#39'S'#39' then '#39'STREET LIGHTS'#39' '
      '        else '#39#39
      '        end as ConsumerType,'
      '       serial,'
      '       case conncode'
      '        when '#39'1'#39' then '#39'ACTIVE'#39' '
      '        when '#39'4'#39' then '#39'DISCO'#39' '
      '        else '#39#39
      '        end as Status'
      'from master where accountnumber = :accountnumber')
    Left = 8
    Top = 200
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'accountnumber'
      end>
    object RMastercode: TIntegerField
      FieldName = 'code'
    end
    object RMasteraccountnumber: TStringField
      FieldName = 'accountnumber'
      Size = 10
    end
    object RMastername: TStringField
      FieldName = 'name'
      Size = 50
    end
    object RMasterConsumerType: TStringField
      FieldName = 'ConsumerType'
      Size = 11
    end
    object RMasterserial: TStringField
      FieldName = 'serial'
    end
    object RMasterStatus: TStringField
      FieldName = 'Status'
      Size = 6
    end
  end
  object dsRMaster: TMyDataSource
    DataSet = RMaster
    Left = 8
    Top = 232
  end
  object Unpaidbills: TMyQuery
    Connection = BillingData.MyConnection1
    SQL.Strings = (
      'select code,'
      '       accountnumber,'
      '       name,'
      '       billmonth,'
      '       date_format(concat(substring(billmonth,3,2),'#39'-'#39','
      
        '                          substring(billmonth,1,2),'#39'-01'#39'),'#39'%M, %' +
        'Y'#39') billingmonth,'
      '       document, '
      '       amount'
      'from unpaidbills'
      'where code = :code')
    Left = 40
    Top = 200
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'code'
      end>
    object Unpaidbillscode: TFloatField
      FieldName = 'code'
    end
    object Unpaidbillsaccountnumber: TStringField
      FieldName = 'accountnumber'
      Size = 10
    end
    object Unpaidbillsname: TStringField
      FieldName = 'name'
      Size = 30
    end
    object Unpaidbillsbillmonth: TStringField
      FieldName = 'billmonth'
      Size = 4
    end
    object Unpaidbillsbillingmonth: TStringField
      FieldName = 'billingmonth'
      Size = 70
    end
    object Unpaidbillsdocument: TStringField
      FieldName = 'document'
      Size = 15
    end
    object Unpaidbillsamount: TFloatField
      FieldName = 'amount'
      currency = True
    end
  end
  object dsUnpaidBills: TMyDataSource
    DataSet = Unpaidbills
    Left = 40
    Top = 232
  end
  object RUnpaidBills: TMyQuery
    Connection = BillingData.MyConnection1
    SQL.Strings = (
      'select code,'
      '       accountnumber,'
      '       name,'
      '       billmonth,'
      '       date_format(concat(substring(billmonth,3,2),'#39'-'#39','
      
        '                          substring(billmonth,1,2),'#39'-01'#39'),'#39'%M, %' +
        'Y'#39') billingmonth,'
      '       document, '
      '       amount,'
      '       restOebrnumber,'
      '       restbillmonth'
      'from restunpaid'
      'where code = :code')
    Left = 72
    Top = 200
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'code'
      end>
    object RUnpaidBillscode: TFloatField
      FieldName = 'code'
    end
    object RUnpaidBillsaccountnumber: TStringField
      FieldName = 'accountnumber'
      Size = 10
    end
    object RUnpaidBillsname: TStringField
      FieldName = 'name'
      Size = 30
    end
    object RUnpaidBillsbillmonth: TStringField
      FieldName = 'billmonth'
      Size = 4
    end
    object RUnpaidBillsbillingmonth: TStringField
      FieldName = 'billingmonth'
      Size = 70
    end
    object RUnpaidBillsdocument: TStringField
      FieldName = 'document'
      Size = 15
    end
    object RUnpaidBillsamount: TFloatField
      FieldName = 'amount'
      currency = True
    end
    object RUnpaidBillsrestOebrnumber: TStringField
      FieldName = 'restOebrnumber'
      Size = 15
    end
    object RUnpaidBillsrestbillmonth: TStringField
      FieldName = 'restbillmonth'
      Size = 4
    end
  end
  object dsRestUnpaid: TMyDataSource
    DataSet = RUnpaidBills
    Left = 72
    Top = 232
  end
  object CreatePromMaster: TMyQuery
    Connection = BillingData.MyConnection1
    SQL.Strings = (
      'CREATE TABLE billingdata.prommas ('
      '  IDPromMas int(11) NOT NULL AUTO_INCREMENT,'
      '  Code double NOT NULL,'
      '  Area char(3) NOT NULL DEFAULT '#39#39','
      '  Book char(3) NOT NULL DEFAULT '#39#39','
      '  Sequence varchar(6) DEFAULT NULL,'
      '  AccountNumber varchar(10) NOT NULL DEFAULT '#39#39','
      '  Name varchar(50) DEFAULT NULL,'
      '  Address varchar(50) DEFAULT NULL,'
      '  RateCode char(1) NOT NULL DEFAULT '#39#39','
      '  PRIMARY KEY (IDPromMas),'
      '  INDEX AREA (Area),'
      '  INDEX Index_8 (Code, RateCode),'
      '  INDEX MasterAccountName (Name),'
      '  UNIQUE INDEX MasterAccountNumber (AccountNumber),'
      '  INDEX RoverIndex (Sequence)'
      ')'
      'ENGINE = MYISAM'
      'AUTO_INCREMENT = 93163'
      'AVG_ROW_LENGTH = 365'
      'CHARACTER SET latin1'
      'COLLATE latin1_swedish_ci;')
    Left = 8
    Top = 288
  end
end
