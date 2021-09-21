object ZeroVATForm: TZeroVATForm
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Consumers with Zero VAT'
  ClientHeight = 456
  ClientWidth = 510
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object NxLinkLabel1: TNxLinkLabel
    Left = 21
    Top = 9
    Width = 26
    Height = 18
    Caption = 'New'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    HoverColor = clRed
    ParentFont = False
    TextDistance = 2
    VertSpacing = 2
    OnClick = NxLinkLabel1Click
  end
  object NxLinkLabel2: TNxLinkLabel
    Left = 61
    Top = 9
    Width = 22
    Height = 18
    Caption = 'Edit'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    HoverColor = clRed
    ParentFont = False
    TextDistance = 2
    VertSpacing = 2
    OnClick = NxLinkLabel2Click
  end
  object NxLinkLabel3: TNxLinkLabel
    Left = 101
    Top = 9
    Width = 37
    Height = 18
    Caption = 'Delete'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    HoverColor = clRed
    ParentFont = False
    TextDistance = 2
    VertSpacing = 2
    OnClick = NxLinkLabel3Click
  end
  object NxLinkLabel4: TNxLinkLabel
    Left = 457
    Top = 9
    Width = 32
    Height = 18
    Caption = 'Close'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    HoverColor = clRed
    ParentFont = False
    TextDistance = 2
    VertSpacing = 2
    OnClick = NxLinkLabel4Click
  end
  object CRDBGrid11: TCRDBGrid1
    Left = 23
    Top = 29
    Width = 465
    Height = 398
    DataSource = dsZeroVATQ
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'AccountNumber'
        Title.Alignment = taCenter
        Title.Caption = 'Account Number'
        Width = 83
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Name'
        Title.Alignment = taCenter
        Width = 249
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DateEntered'
        Title.Alignment = taCenter
        Title.Caption = 'Date Entered'
        Width = 85
        Visible = True
      end>
  end
  object NxHeaderPanel1: TNxHeaderPanel
    Left = 381
    Top = 35
    Width = 324
    Height = 139
    Caption = 'ZERO VAT Record'
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -11
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = []
    ParentHeaderFont = False
    TabOrder = 5
    Visible = False
    FullWidth = 324
    object Label2: TLabel
      Left = 32
      Top = 74
      Width = 64
      Height = 13
      Caption = 'Date Entered'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 69
      Top = 102
      Width = 27
      Height = 13
      Caption = 'Name'
      FocusControl = DBEdit3
    end
    object DBEdit1: TDBEdit
      Left = 100
      Top = 42
      Width = 200
      Height = 21
      DataField = 'AccountNumber'
      DataSource = dsZeroVATQ
      TabOrder = 0
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit3: TDBEdit
      Left = 100
      Top = 96
      Width = 200
      Height = 21
      DataField = 'Name'
      DataSource = dsZeroVATQ
      TabOrder = 2
      OnKeyPress = DBEdit1KeyPress
    end
    object Label1: TNxLinkLabel
      Left = 16
      Top = 46
      Width = 80
      Height = 15
      Caption = 'Account Number'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      HoverColor = clRed
      ParentFont = False
      TextDistance = 2
      Transparent = True
      VertSpacing = 2
      OnClick = Label1Click
    end
    object NxLinkLabel5: TNxLinkLabel
      Left = 246
      Top = 6
      Width = 25
      Height = 15
      Caption = 'Save'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      HoverColor = clBlue
      ParentFont = False
      TextDistance = 2
      Transparent = True
      VertSpacing = 2
      OnClick = NxLinkLabel5Click
    end
    object NxLinkLabel6: TNxLinkLabel
      Left = 279
      Top = 6
      Width = 33
      Height = 15
      Caption = 'Cancel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      HoverColor = clBlue
      ParentFont = False
      TextDistance = 2
      Transparent = True
      VertSpacing = 2
      OnClick = NxLinkLabel6Click
    end
    object DBEdit2: TAdvDBDateTimePicker
      Left = 100
      Top = 68
      Width = 200
      Height = 21
      Date = 0.573611111111111100
      Time = 0.573611111111111100
      DoubleBuffered = True
      Kind = dkDate
      ParentDoubleBuffered = False
      TabOrder = 1
      OnKeyPress = DBEdit1KeyPress
      BorderStyle = bsSingle
      Ctl3D = True
      DateTime = 0.573611111111111100
      Version = '1.2.0.2'
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      DataField = 'DateEntered'
      DataSource = dsZeroVATQ
    end
  end
  object NxHeaderPanel2: TNxHeaderPanel
    Left = 254
    Top = 62
    Width = 280
    Height = 239
    Caption = 'Master File Search'
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -11
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = []
    ParentHeaderFont = False
    TabOrder = 6
    Visible = False
    FullWidth = 280
    object Search: TNxEdit
      Left = 13
      Top = 35
      Width = 250
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
      OnChange = SearchChange
    end
    object CRDBGrid12: TCRDBGrid1
      Left = 13
      Top = 63
      Width = 250
      Height = 161
      DataSource = dsMasterQ
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'accountnumber'
          Title.Caption = 'Account Number'
          Width = 83
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'name'
          Title.Caption = 'Consumer Name'
          Width = 304
          Visible = True
        end>
    end
    object NxLinkLabel7: TNxLinkLabel
      Left = 199
      Top = 6
      Width = 30
      Height = 15
      Caption = 'Select'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      HoverColor = clBlue
      ParentFont = False
      TextDistance = 2
      Transparent = True
      VertSpacing = 2
      OnClick = NxLinkLabel7Click
    end
    object NxLinkLabel8: TNxLinkLabel
      Left = 235
      Top = 6
      Width = 33
      Height = 15
      Caption = 'Cancel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      HoverColor = clBlue
      ParentFont = False
      TextDistance = 2
      Transparent = True
      VertSpacing = 2
      OnClick = NxLinkLabel8Click
    end
  end
  object NxLinkLabel9: TNxLinkLabel
    Left = 23
    Top = 429
    Width = 78
    Height = 18
    Caption = 'Zero VAT List'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    HoverColor = clRed
    ParentFont = False
    TextDistance = 2
    VertSpacing = 2
    OnClick = NxLinkLabel9Click
  end
  object NxHeaderPanel3: TNxHeaderPanel
    Left = 159
    Top = 172
    Width = 191
    Height = 112
    Caption = 'Zero VAT List'
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -11
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = []
    ParentHeaderFont = False
    TabOrder = 8
    Visible = False
    FullWidth = 191
    object Label4: TLabel
      Left = 44
      Top = 45
      Width = 45
      Height = 13
      Caption = 'Bill Month'
    end
    object Edit1: TEdit
      Left = 95
      Top = 41
      Width = 49
      Height = 21
      TabOrder = 0
    end
    object NxButton1: TNxButton
      Left = 58
      Top = 72
      Width = 74
      Caption = 'Print'
      TabOrder = 1
      OnClick = NxButton1Click
    end
    object NxLinkLabel10: TNxLinkLabel
      Left = 149
      Top = 6
      Width = 33
      Height = 15
      Caption = 'Cancel'
      HoverColor = clRed
      TextDistance = 2
      Transparent = True
      VertSpacing = 2
      OnClick = NxLinkLabel10Click
    end
  end
  object Panel1: TPanel
    Left = 370
    Top = 334
    Width = 465
    Height = 336
    BevelInner = bvLowered
    BorderWidth = 5
    TabOrder = 9
    Visible = False
    object QuickRep1: TQuickRep
      Left = 38
      Top = 18
      Width = 794
      Height = 1123
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      Functions.Strings = (
        'PAGENUMBER'
        'COLUMNNUMBER'
        'REPORTTITLE')
      Functions.DATA = (
        '0'
        '0'
        #39#39)
      Options = [FirstPageHeader, LastPageFooter]
      Page.Columns = 1
      Page.Orientation = poPortrait
      Page.PaperSize = A4
      Page.Continuous = False
      Page.Values = (
        100.000000000000000000
        2970.000000000000000000
        100.000000000000000000
        2100.000000000000000000
        100.000000000000000000
        100.000000000000000000
        0.000000000000000000)
      PrinterSettings.Copies = 1
      PrinterSettings.OutputBin = Auto
      PrinterSettings.Duplex = False
      PrinterSettings.FirstPage = 0
      PrinterSettings.LastPage = 0
      PrinterSettings.UseStandardprinter = False
      PrinterSettings.UseCustomBinCode = False
      PrinterSettings.CustomBinCode = 0
      PrinterSettings.ExtendedDuplex = 0
      PrinterSettings.UseCustomPaperCode = False
      PrinterSettings.CustomPaperCode = 0
      PrinterSettings.PrintMetaFile = False
      PrinterSettings.PrintQuality = 0
      PrinterSettings.Collate = 0
      PrinterSettings.ColorOption = 0
      PrintIfEmpty = True
      SnapToGrid = True
      Units = MM
      Zoom = 100
      PrevFormStyle = fsNormal
      PreviewInitialState = wsNormal
      PrevInitialZoom = qrZoomToFit
      PreviewDefaultSaveType = stQRP
      PreviewLeft = 0
      PreviewTop = 0
      object TitleBand1: TQRBand
        Left = 38
        Top = 38
        Width = 718
        Height = 92
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        AlignToBottom = False
        Color = clWhite
        TransparentBand = False
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          243.416666666666700000
          1899.708333333333000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        BandType = rbTitle
        object QRLabel18: TQRLabel
          Left = 8
          Top = 8
          Width = 306
          Height = 17
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            21.166666666666670000
            21.166666666666670000
            809.625000000000000000)
          XLColumn = 0
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'ZAMBOANGA DEL NORTE ELECTRIC COOP., INC.'
          Color = clWhite
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FontSize = 10
        end
        object QRLabel19: TQRLabel
          Left = 9
          Top = 30
          Width = 249
          Height = 17
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            23.812500000000000000
            79.375000000000000000
            658.812500000000000000)
          XLColumn = 0
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'CONSUMER WITH ZERO VAT DISCOUNT'
          Color = clWhite
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FontSize = 10
        end
        object QRSysData4: TQRSysData
          Left = 650
          Top = 8
          Width = 68
          Height = 17
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1719.791666666667000000
            21.166666666666670000
            179.916666666666700000)
          XLColumn = 0
          Alignment = taRightJustify
          AlignToBand = True
          AutoSize = True
          Color = clWhite
          Data = qrsDateTime
          Transparent = False
          ExportAs = exptText
          FontSize = 10
        end
        object QRSysData5: TQRSysData
          Left = 650
          Top = 8
          Width = 68
          Height = 17
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1719.791666666667000000
            21.166666666666670000
            179.916666666666700000)
          XLColumn = 0
          Alignment = taRightJustify
          AlignToBand = True
          AutoSize = True
          Color = clWhite
          Data = qrsDateTime
          Transparent = False
          ExportAs = exptText
          FontSize = 10
        end
        object QRSysData6: TQRSysData
          Left = 672
          Top = 32
          Width = 46
          Height = 17
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1778.000000000000000000
            84.666666666666670000
            121.708333333333300000)
          XLColumn = 0
          Alignment = taRightJustify
          AlignToBand = True
          AutoSize = True
          Color = clWhite
          Data = qrsPageNumber
          Transparent = False
          ExportAs = exptText
          FontSize = 10
        end
        object QRLabel1: TQRLabel
          Left = 8
          Top = 70
          Width = 60
          Height = 17
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            21.166666666666670000
            185.208333333333300000
            158.750000000000000000)
          XLColumn = 0
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Account #'
          Color = clWhite
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FontSize = 10
        end
        object QRLabel2: TQRLabel
          Left = 137
          Top = 70
          Width = 98
          Height = 17
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            362.479166666666700000
            185.208333333333300000
            259.291666666666700000)
          XLColumn = 0
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Consumer Name'
          Color = clWhite
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FontSize = 10
        end
        object QRLabel3: TQRLabel
          Left = 273
          Top = 70
          Width = 68
          Height = 17
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            722.312500000000000000
            185.208333333333300000
            179.916666666666700000)
          XLColumn = 0
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'VAT Genco'
          Color = clWhite
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FontSize = 10
        end
        object QRLabel4: TQRLabel
          Left = 365
          Top = 70
          Width = 76
          Height = 17
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            965.729166666666700000
            185.208333333333300000
            201.083333333333300000)
          XLColumn = 0
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'VAT Transco'
          Color = clWhite
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FontSize = 10
        end
        object QRLabel5: TQRLabel
          Left = 461
          Top = 70
          Width = 81
          Height = 17
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1219.729166666667000000
            185.208333333333300000
            214.312500000000000000)
          XLColumn = 0
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'VAT SysLoss'
          Color = clWhite
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FontSize = 10
        end
        object QRLabel6: TQRLabel
          Left = 561
          Top = 70
          Width = 53
          Height = 17
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1484.312500000000000000
            185.208333333333300000
            140.229166666666700000)
          XLColumn = 0
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'VAT Dist'
          Color = clWhite
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FontSize = 10
        end
        object QRLabel7: TQRLabel
          Left = 681
          Top = 70
          Width = 29
          Height = 17
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1801.812500000000000000
            185.208333333333300000
            76.729166666666670000)
          XLColumn = 0
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Total'
          Color = clWhite
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FontSize = 10
        end
        object QRLabel8: TQRLabel
          Left = 9
          Top = 50
          Width = 121
          Height = 17
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            23.812500000000000000
            132.291666666666700000
            320.145833333333300000)
          XLColumn = 0
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'For the Billing Month'
          Color = clWhite
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FontSize = 10
        end
      end
      object DetailBand1: TQRBand
        Left = 38
        Top = 130
        Width = 718
        Height = 36
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        AlignToBottom = False
        Color = clWhite
        TransparentBand = False
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          95.250000000000000000
          1899.708333333333000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        BandType = rbDetail
        object QRDBText1: TQRDBText
          Left = 8
          Top = 7
          Width = 79
          Height = 17
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            21.166666666666670000
            18.520833333333330000
            209.020833333333300000)
          XLColumn = 0
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = ZeroVatList
          DataField = 'AccountNumber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FullJustify = False
          MaxBreakChars = 0
          FontSize = 8
        end
        object QRDBText2: TQRDBText
          Left = 92
          Top = 7
          Width = 27
          Height = 17
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            243.416666666666700000
            18.520833333333330000
            71.437500000000000000)
          XLColumn = 0
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = ZeroVatList
          DataField = 'name'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FullJustify = False
          MaxBreakChars = 0
          FontSize = 8
        end
        object cv: TQRDBText
          Left = 294
          Top = 7
          Width = 46
          Height = 17
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            777.875000000000000000
            18.520833333333330000
            121.708333333333300000)
          XLColumn = 0
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = ZeroVatList
          DataField = 'vatgenco'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Mask = '#,###.00'
          ParentFont = False
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FullJustify = False
          MaxBreakChars = 0
          FontSize = 8
        end
        object QRDBText3: TQRDBText
          Left = 387
          Top = 7
          Width = 53
          Height = 17
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1023.937500000000000000
            18.520833333333330000
            140.229166666666700000)
          XLColumn = 0
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = ZeroVatList
          DataField = 'vattransco'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Mask = '#,###.00'
          ParentFont = False
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FullJustify = False
          MaxBreakChars = 0
          FontSize = 8
        end
        object QRDBText4: TQRDBText
          Left = 441
          Top = 7
          Width = 101
          Height = 17
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1166.812500000000000000
            18.520833333333330000
            267.229166666666700000)
          XLColumn = 0
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = ZeroVatList
          DataField = 'vatsystemlossgenco'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Mask = '#,###.00'
          ParentFont = False
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FullJustify = False
          MaxBreakChars = 0
          FontSize = 8
        end
        object QRDBText5: TQRDBText
          Left = 581
          Top = 7
          Width = 33
          Height = 17
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1537.229166666667000000
            18.520833333333330000
            87.312500000000000000)
          XLColumn = 0
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = ZeroVatList
          DataField = 'vatdist'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Mask = '#,###.00'
          ParentFont = False
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FullJustify = False
          MaxBreakChars = 0
          FontSize = 8
        end
        object QRDBText6: TQRDBText
          Left = 694
          Top = 7
          Width = 16
          Height = 17
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1836.208333333333000000
            18.520833333333330000
            42.333333333333330000)
          XLColumn = 0
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = ZeroVatList
          DataField = 'vat'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Mask = '#,###.00'
          ParentFont = False
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FullJustify = False
          MaxBreakChars = 0
          FontSize = 8
        end
      end
      object SummaryBand1: TQRBand
        Left = 38
        Top = 166
        Width = 718
        Height = 33
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        AlignToBottom = False
        Color = clWhite
        TransparentBand = False
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          87.312500000000000000
          1899.708333333333000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        BandType = rbSummary
        object QRExpr5: TQRExpr
          Left = 604
          Top = 6
          Width = 106
          Height = 17
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1598.083333333333000000
            15.875000000000000000
            280.458333333333300000)
          XLColumn = 0
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Color = clWhite
          ParentFont = False
          ResetAfterPrint = False
          Transparent = False
          WordWrap = True
          Expression = 'SUM(ZeroVatList.vat)'
          Mask = '#,###.00'
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FontSize = 8
        end
        object QRExpr4: TQRExpr
          Left = 490
          Top = 6
          Width = 124
          Height = 17
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1296.458333333333000000
            15.875000000000000000
            328.083333333333300000)
          XLColumn = 0
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Color = clWhite
          ParentFont = False
          ResetAfterPrint = False
          Transparent = False
          WordWrap = True
          Expression = 'SUM(ZeroVatList.vatDist)'
          Mask = '#,###.00'
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FontSize = 8
        end
        object QRExpr3: TQRExpr
          Left = 351
          Top = 6
          Width = 191
          Height = 17
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            928.687500000000000000
            15.875000000000000000
            505.354166666666700000)
          XLColumn = 0
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Color = clWhite
          ParentFont = False
          ResetAfterPrint = False
          Transparent = False
          WordWrap = True
          Expression = 'SUM(ZeroVatList.vatsystemlossgenco)'
          Mask = '#,###.00'
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FontSize = 8
        end
        object QRExpr2: TQRExpr
          Left = 297
          Top = 6
          Width = 143
          Height = 17
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            785.812500000000000000
            15.875000000000000000
            378.354166666666700000)
          XLColumn = 0
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Color = clWhite
          ParentFont = False
          ResetAfterPrint = False
          Transparent = False
          WordWrap = True
          Expression = 'SUM(ZeroVatList.vattransco)'
          Mask = '#,###.00'
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FontSize = 8
        end
        object QRExpr1: TQRExpr
          Left = 204
          Top = 6
          Width = 136
          Height = 17
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            539.750000000000000000
            15.875000000000000000
            359.833333333333300000)
          XLColumn = 0
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Color = clWhite
          ParentFont = False
          ResetAfterPrint = False
          Transparent = False
          WordWrap = True
          Expression = 'SUM(ZeroVatList.vatgenco)'
          Mask = '#,###.00'
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FontSize = 8
        end
      end
    end
  end
  object ZeroVATQ: TMyQuery
    Connection = BillingData.MyConnection1
    SQL.Strings = (
      'select zeroVat.*, '
      '       m.Name from ZeroVAT '
      'left join master m on (zerovat.code = m.code)')
    Left = 48
    Top = 368
    object ZeroVATQidZeroVAT: TLongWordField
      FieldName = 'idZeroVAT'
    end
    object ZeroVATQCode: TFloatField
      FieldName = 'Code'
    end
    object ZeroVATQAccountNumber: TStringField
      FieldName = 'AccountNumber'
      Size = 10
    end
    object ZeroVATQDateEntered: TDateField
      FieldName = 'DateEntered'
    end
    object ZeroVATQName: TStringField
      FieldName = 'Name'
      Size = 50
    end
  end
  object dsZeroVATQ: TMyDataSource
    DataSet = ZeroVATQ
    Left = 112
    Top = 368
  end
  object MasterQ: TMyQuery
    Connection = BillingData.MyConnection1
    SQL.Strings = (
      'select code, '
      '       accountnumber, '
      '       name '
      'from master')
    Left = 180
    Top = 367
    object MasterQcode: TIntegerField
      FieldName = 'code'
    end
    object MasterQaccountnumber: TStringField
      FieldName = 'accountnumber'
      Size = 10
    end
    object MasterQname: TStringField
      FieldName = 'name'
      Size = 50
    end
  end
  object dsMasterQ: TMyDataSource
    DataSet = MasterQ
    Left = 256
    Top = 368
  end
  object ZeroVatList: TMyQuery
    Connection = BillingData.MyConnection1
    SQL.Strings = (
      'select z.*,'
      '       b.name,'
      '       b.vatgenco,'
      '       b.vattransco,'
      '       b.vatsystemlossgenco,'
      '       b.vatdist,'
      '       b.vat'
      'from zerovat z'
      
        'join billhistory b on (b.code = z.code and b.billmonth = :billmo' +
        'nth)')
    Left = 352
    Top = 368
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'billmonth'
      end>
    object ZeroVatListidZeroVAT: TLongWordField
      FieldName = 'idZeroVAT'
    end
    object ZeroVatListCode: TFloatField
      FieldName = 'Code'
    end
    object ZeroVatListAccountNumber: TStringField
      FieldName = 'AccountNumber'
      Size = 10
    end
    object ZeroVatListDateEntered: TDateField
      FieldName = 'DateEntered'
    end
    object ZeroVatListvatgenco: TFloatField
      FieldName = 'vatgenco'
      currency = True
    end
    object ZeroVatListvattransco: TFloatField
      FieldName = 'vattransco'
      currency = True
    end
    object ZeroVatListvatsystemlossgenco: TFloatField
      FieldName = 'vatsystemlossgenco'
      currency = True
    end
    object ZeroVatListvatdist: TFloatField
      FieldName = 'vatdist'
      currency = True
    end
    object ZeroVatListname: TStringField
      FieldName = 'name'
      Size = 30
    end
    object ZeroVatListvat: TFloatField
      FieldName = 'vat'
    end
  end
end
