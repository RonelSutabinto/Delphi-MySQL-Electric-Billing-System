object CollectionWaiverForm: TCollectionWaiverForm
  Left = 250
  Top = 177
  BorderIcons = [biSystemMenu]
  Caption = 'Collection Waiver'
  ClientHeight = 443
  ClientWidth = 737
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object NxLabel1: TNxLabel
    Left = 9
    Top = 13
    Width = 123
    Height = 13
    Caption = 'Name or Account Number'
    HorizontalPosition = hpLeft
    InnerHorizontal = True
    InnerVertical = False
    InnerMargins.Horizontal = 0
    InnerMargins.Vertical = 2
    VerticalPosition = vpTop
  end
  object SearchData: TNxButtonEdit
    Left = 10
    Top = 32
    Width = 285
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
    OnKeyPress = SearchDataKeyPress
    OnButtonClick = SearchDataButtonClick
    ButtonCaption = 'Select'
    ButtonWidth = 50
    TransparentColor = clNone
  end
  object NxHeaderPanel1: TNxHeaderPanel
    Left = 9
    Top = 64
    Width = 286
    Height = 198
    Caption = 'Bill Detail'
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -11
    HeaderFont.Name = 'MS Sans Serif'
    HeaderFont.Style = []
    ParentHeaderFont = False
    TabOrder = 1
    FullWidth = 286
    object NxLabel2: TNxLabel
      Left = 16
      Top = 44
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
    object NxLabel3: TNxLabel
      Left = 68
      Top = 68
      Width = 28
      Height = 13
      Caption = 'Name'
      HorizontalPosition = hpLeft
      InnerHorizontal = True
      InnerVertical = False
      InnerMargins.Horizontal = 0
      InnerMargins.Vertical = 2
      VerticalPosition = vpTop
    end
    object NxLabel4: TNxLabel
      Left = 50
      Top = 92
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
    object NxLabel5: TNxLabel
      Left = 60
      Top = 116
      Width = 36
      Height = 13
      Caption = 'Amount'
      HorizontalPosition = hpLeft
      InnerHorizontal = True
      InnerVertical = False
      InnerMargins.Horizontal = 0
      InnerMargins.Vertical = 2
      VerticalPosition = vpTop
    end
    object NxLabel6: TNxLabel
      Left = 27
      Top = 140
      Width = 69
      Height = 13
      Caption = 'Collector Code'
      HorizontalPosition = hpLeft
      InnerHorizontal = True
      InnerVertical = False
      InnerMargins.Horizontal = 0
      InnerMargins.Vertical = 2
      VerticalPosition = vpTop
    end
    object NxLabel7: TNxLabel
      Left = 39
      Top = 164
      Width = 57
      Height = 13
      Caption = 'Date Issued'
      HorizontalPosition = hpLeft
      InnerHorizontal = True
      InnerVertical = False
      InnerMargins.Horizontal = 0
      InnerMargins.Vertical = 2
      VerticalPosition = vpTop
    end
    object SAccountNumber: TStaticText
      Left = 101
      Top = 41
      Width = 167
      Height = 19
      AutoSize = False
      BorderStyle = sbsSingle
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object SName: TStaticText
      Left = 101
      Top = 65
      Width = 167
      Height = 19
      AutoSize = False
      BorderStyle = sbsSingle
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object SBillMonth: TStaticText
      Left = 101
      Top = 89
      Width = 167
      Height = 19
      AutoSize = False
      BorderStyle = sbsSingle
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object SAmount: TStaticText
      Left = 101
      Top = 113
      Width = 167
      Height = 19
      AutoSize = False
      BorderStyle = sbsSingle
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object SCollectorCode: TStaticText
      Left = 101
      Top = 137
      Width = 167
      Height = 19
      AutoSize = False
      BorderStyle = sbsSingle
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object SDateIssued: TStaticText
      Left = 101
      Top = 161
      Width = 167
      Height = 19
      AutoSize = False
      BorderStyle = sbsSingle
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
  end
  object NxButton1: TNxButton
    Left = 20
    Top = 275
    Width = 265
    Height = 30
    Caption = 'Allow Payment Acceptance'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = NxButton1Click
  end
  object NxButton2: TNxButton
    Left = 20
    Top = 394
    Width = 265
    Height = 30
    Caption = 'Close Collection Waiver'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = NxButton2Click
  end
  object CRDBGrid1: TCRDBGrid1
    Left = 304
    Top = 9
    Width = 424
    Height = 426
    DataSource = dsroutecontrol
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Document'
        Title.Alignment = taCenter
        Width = 78
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AccountNumber'
        Title.Alignment = taCenter
        Title.Caption = 'Account #'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Name'
        Title.Alignment = taCenter
        Width = 141
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BillMonth'
        Title.Alignment = taCenter
        Title.Caption = 'Month'
        Width = 34
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Amount'
        Title.Alignment = taCenter
        Width = 64
        Visible = True
      end>
  end
  object RouteControl: TMyQuery
    Connection = BillingData.MyConnection1
    SQL.Strings = (
      'select * from routecontrol'
      'where (accountnumber like :accountnumber or'
      '       name like :name) and'
      '      itype = '#39'2'#39
      'order by accountnumber, date')
    Left = 16
    Top = 408
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'accountnumber'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'name'
        Value = nil
      end>
    object RouteControlEntry: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'Entry'
      Origin = 'routecontrol.Entry'
    end
    object RouteControlDocument: TStringField
      FieldName = 'Document'
      Origin = 'routecontrol.Document'
      Size = 15
    end
    object RouteControlCode: TFloatField
      FieldName = 'Code'
      Origin = 'routecontrol.Code'
    end
    object RouteControlArea: TStringField
      FieldName = 'Area'
      Origin = 'routecontrol.Area'
      FixedChar = True
      Size = 3
    end
    object RouteControlBook: TStringField
      FieldName = 'Book'
      Origin = 'routecontrol.Book'
      FixedChar = True
      Size = 3
    end
    object RouteControlAccountNumber: TStringField
      FieldName = 'AccountNumber'
      Origin = 'routecontrol.AccountNumber'
      Size = 10
    end
    object RouteControlDate: TDateField
      FieldName = 'Date'
      Origin = 'routecontrol.Date'
    end
    object RouteControlName: TStringField
      FieldName = 'Name'
      Origin = 'routecontrol.Name'
      Size = 30
    end
    object RouteControlBillMonth: TStringField
      FieldName = 'BillMonth'
      Origin = 'routecontrol.BillMonth'
      Size = 4
    end
    object RouteControlRateCode: TStringField
      FieldName = 'RateCode'
      Origin = 'routecontrol.RateCode'
      FixedChar = True
      Size = 2
    end
    object RouteControlReading: TFloatField
      FieldName = 'Reading'
      Origin = 'routecontrol.Reading'
    end
    object RouteControlKilowattHour: TFloatField
      FieldName = 'KilowattHour'
      Origin = 'routecontrol.KilowattHour'
    end
    object RouteControlAmount: TFloatField
      FieldName = 'Amount'
      Origin = 'routecontrol.Amount'
      currency = True
    end
    object RouteControlUCNPCSD: TFloatField
      FieldName = 'UCNPCSD'
      Origin = 'routecontrol.UCNPCSD'
    end
    object RouteControlUCNPCSCC: TFloatField
      FieldName = 'UCNPCSCC'
      Origin = 'routecontrol.UCNPCSCC'
    end
    object RouteControlUCDUSCC: TFloatField
      FieldName = 'UCDUSCC'
      Origin = 'routecontrol.UCDUSCC'
    end
    object RouteControlUCME: TFloatField
      FieldName = 'UCME'
      Origin = 'routecontrol.UCME'
    end
    object RouteControlUCETR: TFloatField
      FieldName = 'UCETR'
      Origin = 'routecontrol.UCETR'
    end
    object RouteControlUCEC: TFloatField
      FieldName = 'UCEC'
      Origin = 'routecontrol.UCEC'
    end
    object RouteControlUCCSR: TFloatField
      FieldName = 'UCCSR'
      Origin = 'routecontrol.UCCSR'
    end
    object RouteControlCollectorCode: TStringField
      FieldName = 'CollectorCode'
      Origin = 'routecontrol.CollectorCode'
      Size = 10
    end
    object RouteControlDateIssued: TDateField
      FieldName = 'DateIssued'
      Origin = 'routecontrol.DateIssued'
    end
    object RouteControlBatch: TStringField
      FieldName = 'Batch'
      Origin = 'routecontrol.Batch'
      Size = 10
    end
    object RouteControlencodercode: TStringField
      FieldName = 'encodercode'
      Origin = 'routecontrol.encodercode'
      FixedChar = True
      Size = 2
    end
    object RouteControlTransformerRental: TFloatField
      FieldName = 'TransformerRental'
      Origin = 'routecontrol.TransformerRental'
    end
    object RouteControlIType: TStringField
      FieldName = 'IType'
      Origin = 'routecontrol.IType'
      Size = 1
    end
  end
  object dsroutecontrol: TMyDataSource
    DataSet = RouteControl
    OnDataChange = dsroutecontrolDataChange
    Left = 48
    Top = 408
  end
  object allowpayment: TMyQuery
    Connection = BillingData.MyConnection1
    SQL.Strings = (
      'update routecontrol set itype = '#39'1'#39' '
      'where accountnumber = :accountnumber')
    Left = 80
    Top = 408
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'accountnumber'
        Value = nil
      end>
  end
end
