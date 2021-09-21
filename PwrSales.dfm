object PSales: TPSales
  Left = 0
  Top = 0
  Caption = 'Power Sales'
  ClientHeight = 138
  ClientWidth = 253
  Color = clBtnFace
  Constraints.MaxHeight = 768
  Constraints.MaxWidth = 1300
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object NxLabel2: TNxLabel
    Left = 14
    Top = 10
    Width = 45
    Height = 13
    Caption = 'Bill Month'
    HorizontalPosition = hpLeft
    InnerHorizontal = True
    InnerVertical = False
    InnerMargins.Horizontal = 0
    InnerMargins.Vertical = 2
    VerticalPosition = vpTop
  end
  object NxEdit1: TNxEdit
    Left = 65
    Top = 8
    Width = 173
    Height = 21
    TabOrder = 0
  end
  object NxButton5: TNxButton
    Left = 14
    Top = 35
    Width = 224
    Align = alCustom
    Caption = 'Power Sales'
    TabOrder = 1
    OnClick = NxButton5Click
  end
  object NxNotebook1: TNxNotebook
    Left = 270
    Top = -8
    Width = 1199
    Height = 545
    ActivePage = PowerSalesAreaBook
    ActivePageIndex = 1
    TabOrder = 2
    Visible = False
    object PowerSales: TNxTabSheet
      Caption = 'Power Sales'
      PageIndex = 0
      ParentTabFont = False
      TabFont.Charset = DEFAULT_CHARSET
      TabFont.Color = clWindowText
      TabFont.Height = -11
      TabFont.Name = 'Tahoma'
      TabFont.Style = []
      object qrPowerAccounts: TQuickRep
        Left = 23
        Top = 88
        Width = 1248
        Height = 816
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        BeforePrint = qrPowerAccountsBeforePrint
        DataSet = quPowerSales
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
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
        Page.Orientation = poLandscape
        Page.PaperSize = FanfoldGerLegal
        Page.Continuous = False
        Page.Values = (
          63.500000000000000000
          2159.000000000000000000
          63.500000000000000000
          3302.000000000000000000
          63.500000000000000000
          63.500000000000000000
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
        Units = Inches
        Zoom = 100
        PrevFormStyle = fsNormal
        PreviewInitialState = wsMaximized
        PrevInitialZoom = qrZoomToFit
        PreviewDefaultSaveType = stQRP
        PreviewLeft = 0
        PreviewTop = 0
        object QRBand5: TQRBand
          Left = 24
          Top = 153
          Width = 1200
          Height = 22
          Frame.DrawTop = False
          Frame.DrawBottom = True
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            58.208333333333330000
            3175.000000000000000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbDetail
          object QRDBText16: TQRDBText
            Left = 8
            Top = 1
            Width = 25
            Height = 17
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              21.166666666666670000
              2.645833333333333000
              66.145833333333330000)
            XLColumn = 0
            Alignment = taCenter
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = quPowerSales
            DataField = 'Area'
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
          object QRDBText17: TQRDBText
            Left = 155
            Top = 1
            Width = 69
            Height = 17
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              410.104166666666700000
              2.645833333333333000
              182.562500000000000000)
            XLColumn = 0
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = quPowerSales
            DataField = 'NoOfConsumers'
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
          object QRDBText18: TQRDBText
            Left = 232
            Top = 1
            Width = 68
            Height = 17
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              613.833333333333300000
              2.645833333333333000
              179.916666666666700000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = quPowerSales
            DataField = 'KWHR'
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
          object QRDBText19: TQRDBText
            Left = 305
            Top = 0
            Width = 79
            Height = 17
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              806.979166666666700000
              0.000000000000000000
              209.020833333333300000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = quPowerSales
            DataField = 'Amount'
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
          object QRDBText20: TQRDBText
            Left = 392
            Top = 1
            Width = 72
            Height = 17
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1037.166666666667000000
              2.645833333333333000
              190.500000000000000000)
            XLColumn = 0
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = quPowerSales
            DataField = 'LNoOfConsumers'
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
          object QRDBText21: TQRDBText
            Left = 471
            Top = 0
            Width = 58
            Height = 17
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1246.187500000000000000
              0.000000000000000000
              153.458333333333300000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = quPowerSales
            DataField = 'LKWHR'
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
          object QRDBText22: TQRDBText
            Left = 537
            Top = 0
            Width = 89
            Height = 17
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1420.812500000000000000
              0.000000000000000000
              235.479166666666700000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = quPowerSales
            DataField = 'LAmount'
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
          object QRDBText23: TQRDBText
            Left = 632
            Top = 0
            Width = 71
            Height = 17
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1672.166666666667000000
              0.000000000000000000
              187.854166666666700000)
            XLColumn = 0
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = quPowerSales
            DataField = 'HNoOfConsumers'
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
          object QRDBText24: TQRDBText
            Left = 712
            Top = 1
            Width = 52
            Height = 17
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1883.833333333333000000
              2.645833333333333000
              137.583333333333300000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = quPowerSales
            DataField = 'HKWHR'
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
          object QRDBText25: TQRDBText
            Left = 774
            Top = 1
            Width = 40
            Height = 17
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              2047.875000000000000000
              2.645833333333333000
              105.833333333333300000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = quPowerSales
            DataField = 'demand'
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
          object QRDBText26: TQRDBText
            Left = 819
            Top = 1
            Width = 76
            Height = 17
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              2166.937500000000000000
              2.645833333333333000
              201.083333333333300000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = quPowerSales
            DataField = 'HAmount'
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
          object QRDBText27: TQRDBText
            Left = 904
            Top = 1
            Width = 79
            Height = 17
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              2391.833333333333000000
              2.645833333333333000
              209.020833333333300000)
            XLColumn = 0
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = quPowerSales
            DataField = 'TNoOfConsumers'
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
          object QRDBText28: TQRDBText
            Left = 989
            Top = 0
            Width = 49
            Height = 17
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              2616.729166666667000000
              0.000000000000000000
              129.645833333333300000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = quPowerSales
            DataField = 'TKWHR'
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
          object QRDBText29: TQRDBText
            Left = 1051
            Top = 0
            Width = 58
            Height = 17
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              2780.770833333333000000
              0.000000000000000000
              153.458333333333300000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = quPowerSales
            DataField = 'demandt'
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
          object QRDBText30: TQRDBText
            Left = 1112
            Top = 0
            Width = 81
            Height = 17
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              2942.166666666667000000
              0.000000000000000000
              214.312500000000000000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = quPowerSales
            DataField = 'TAmount'
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
          object QRDBText31: TQRDBText
            Left = 72
            Top = 0
            Width = 56
            Height = 17
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              190.500000000000000000
              0.000000000000000000
              148.166666666666700000)
            XLColumn = 0
            Alignment = taCenter
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = quPowerSales
            DataField = 'Municipality'
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
        end
        object QRBand6: TQRBand
          Left = 24
          Top = 175
          Width = 1200
          Height = 18
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            47.625000000000000000
            3175.000000000000000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbGroupFooter
          object QRLabel31: TQRLabel
            Left = 103
            Top = 1
            Width = 50
            Height = 15
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              39.687500000000000000
              272.520833333333300000
              2.645833333333333000
              132.291666666666700000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'TOTAL:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 8
          end
          object QRExpr15: TQRExpr
            Left = 159
            Top = 1
            Width = 62
            Height = 15
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              39.687500000000000000
              420.687500000000000000
              2.645833333333333000
              164.041666666666700000)
            XLColumn = 0
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
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
            Expression = 'SUM(quPowersales.NoOfConsumers)'
            Mask = '#,###'
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 8
          end
          object QRExpr16: TQRExpr
            Left = 232
            Top = 2
            Width = 69
            Height = 15
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              39.687500000000000000
              613.833333333333300000
              5.291666666666667000
              182.562500000000000000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
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
            Expression = 'SUM(quPowersales.KWHR)'
            Mask = '#,###.#0'
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 8
          end
          object QRExpr17: TQRExpr
            Left = 305
            Top = 1
            Width = 79
            Height = 15
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              39.687500000000000000
              806.979166666666700000
              2.645833333333333000
              209.020833333333300000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
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
            Expression = 'SUM(quPowersales.Amount)'
            Mask = '#,###.#0'
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 8
          end
          object QRExpr18: TQRExpr
            Left = 392
            Top = 1
            Width = 73
            Height = 15
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              39.687500000000000000
              1037.166666666667000000
              2.645833333333333000
              193.145833333333300000)
            XLColumn = 0
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
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
            Expression = 'SUM(quPowersales.LNoOfConsumers)'
            Mask = '#,###'
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 8
          end
          object QRExpr19: TQRExpr
            Left = 470
            Top = 1
            Width = 61
            Height = 15
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              39.687500000000000000
              1243.541666666667000000
              2.645833333333333000
              161.395833333333300000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
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
            Expression = 'SUM(quPowersales.LKWHR)'
            Mask = '#,###.#0'
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 8
          end
          object QRExpr20: TQRExpr
            Left = 537
            Top = 1
            Width = 91
            Height = 15
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              39.687500000000000000
              1420.812500000000000000
              2.645833333333333000
              240.770833333333300000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
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
            Expression = 'SUM(quPowersales.LAmount)'
            Mask = '#,###.#0'
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 8
          end
          object QRExpr21: TQRExpr
            Left = 632
            Top = 1
            Width = 71
            Height = 15
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              39.687500000000000000
              1672.166666666667000000
              2.645833333333333000
              187.854166666666700000)
            XLColumn = 0
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
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
            Expression = 'SUM(quPowersales.HNoOfConsumers)'
            Mask = '#,###'
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 8
          end
          object QRExpr22: TQRExpr
            Left = 712
            Top = 1
            Width = 55
            Height = 15
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              39.687500000000000000
              1883.833333333333000000
              2.645833333333333000
              145.520833333333300000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
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
            Expression = 'SUM(quPowersales.HKWHR)'
            Mask = '#,###.#0'
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 8
          end
          object QRExpr23: TQRExpr
            Left = 774
            Top = 1
            Width = 40
            Height = 15
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              39.687500000000000000
              2047.875000000000000000
              2.645833333333333000
              105.833333333333300000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
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
            Expression = 'Sum(quPowersales.demand)'
            Mask = '#,###.#0'
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 8
          end
          object QRExpr24: TQRExpr
            Left = 841
            Top = 1
            Width = 54
            Height = 15
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              39.687500000000000000
              2225.145833333333000000
              2.645833333333333000
              142.875000000000000000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
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
            Expression = 'SUM(quPowersales.HAmount)'
            Mask = '#,###.#0'
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 8
          end
          object QRExpr25: TQRExpr
            Left = 904
            Top = 1
            Width = 76
            Height = 15
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              39.687500000000000000
              2391.833333333333000000
              2.645833333333333000
              201.083333333333300000)
            XLColumn = 0
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
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
            Expression = 'SUM(quPowersales.TNoOfConsumers)'
            Mask = '#,###'
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 8
          end
          object QRExpr26: TQRExpr
            Left = 989
            Top = 1
            Width = 52
            Height = 15
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              39.687500000000000000
              2616.729166666667000000
              2.645833333333333000
              137.583333333333300000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
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
            Expression = 'SUM(quPowersales.TKWHR)'
            Mask = '#,###.#0'
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 8
          end
          object QRExpr27: TQRExpr
            Left = 1051
            Top = 1
            Width = 54
            Height = 15
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              39.687500000000000000
              2780.770833333333000000
              2.645833333333333000
              142.875000000000000000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
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
            Expression = 'SUM(quPowersales.demandt)'
            Mask = '#,###.#0'
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 8
          end
          object QRExpr28: TQRExpr
            Left = 1113
            Top = 1
            Width = 80
            Height = 15
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              39.687500000000000000
              2944.812500000000000000
              2.645833333333333000
              211.666666666666700000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
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
            Expression = 'SUM(quPowersales.TAmount)'
            Mask = '#,###.#0'
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 8
          end
        end
        object QRGroup2: TQRGroup
          Left = 24
          Top = 24
          Width = 1200
          Height = 129
          Frame.DrawTop = True
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = True
          Size.Values = (
            341.312500000000000000
            3175.000000000000000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          Expression = 'quAccountsReceivable.Area'
          FooterBand = QRBand6
          Master = qrPowerAccounts
          ReprintOnNewPage = False
          object QRShape20: TQRShape
            Left = 0
            Top = 90
            Width = 49
            Height = 37
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              97.895833333333330000
              0.000000000000000000
              238.125000000000000000
              129.645833333333300000)
            XLColumn = 0
            Shape = qrsRectangle
            VertAdjust = 0
          end
          object QRLabel32: TQRLabel
            Left = 14
            Top = 102
            Width = 20
            Height = 17
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              37.041666666666670000
              269.875000000000000000
              52.916666666666670000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Area'
            Color = clWhite
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 7
          end
          object QRShape21: TQRShape
            Left = 152
            Top = 90
            Width = 237
            Height = 19
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              50.270833333333330000
              402.166666666666700000
              238.125000000000000000
              627.062500000000000000)
            XLColumn = 0
            Shape = qrsRectangle
            VertAdjust = 0
          end
          object QRLabel33: TQRLabel
            Left = 239
            Top = 94
            Width = 47
            Height = 13
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333330000
              632.354166666666700000
              248.708333333333300000
              124.354166666666700000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Residential'
            Color = clWhite
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 7
          end
          object QRShape22: TQRShape
            Left = 152
            Top = 108
            Width = 76
            Height = 19
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              50.270833333333330000
              402.166666666666700000
              285.750000000000000000
              201.083333333333300000)
            XLColumn = 0
            Shape = qrsRectangle
            VertAdjust = 0
          end
          object QRLabel34: TQRLabel
            Left = 155
            Top = 110
            Width = 69
            Height = 13
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333330000
              410.104166666666700000
              291.041666666666700000
              182.562500000000000000)
            XLColumn = 0
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = '# of Consumers'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 7
          end
          object QRShape23: TQRShape
            Left = 302
            Top = 108
            Width = 87
            Height = 19
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              50.270833333333330000
              799.041666666666700000
              285.750000000000000000
              230.187500000000000000)
            XLColumn = 0
            Shape = qrsRectangle
            VertAdjust = 0
          end
          object QRLabel35: TQRLabel
            Left = 305
            Top = 110
            Width = 79
            Height = 13
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333330000
              806.979166666666700000
              291.041666666666700000
              209.020833333333300000)
            XLColumn = 0
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Amount'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 7
          end
          object QRShape24: TQRShape
            Left = 388
            Top = 90
            Width = 242
            Height = 19
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              50.270833333333330000
              1026.583333333333000000
              238.125000000000000000
              640.291666666666700000)
            XLColumn = 0
            Shape = qrsRectangle
            VertAdjust = 0
          end
          object QRLabel36: TQRLabel
            Left = 486
            Top = 93
            Width = 51
            Height = 13
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333330000
              1285.875000000000000000
              246.062500000000000000
              134.937500000000000000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Low Voltage'
            Color = clWhite
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 7
          end
          object QRShape25: TQRShape
            Left = 388
            Top = 108
            Width = 83
            Height = 19
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              50.270833333333330000
              1026.583333333333000000
              285.750000000000000000
              219.604166666666700000)
            XLColumn = 0
            Shape = qrsRectangle
            VertAdjust = 0
          end
          object QRLabel37: TQRLabel
            Left = 392
            Top = 110
            Width = 72
            Height = 13
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333330000
              1037.166666666667000000
              291.041666666666700000
              190.500000000000000000)
            XLColumn = 0
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = '#. of Consumers'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 7
          end
          object QRShape26: TQRShape
            Left = 532
            Top = 108
            Width = 98
            Height = 19
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              50.270833333333330000
              1407.583333333333000000
              285.750000000000000000
              259.291666666666700000)
            XLColumn = 0
            Shape = qrsRectangle
            VertAdjust = 0
          end
          object QRLabel38: TQRLabel
            Left = 537
            Top = 110
            Width = 87
            Height = 13
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333330000
              1420.812500000000000000
              291.041666666666700000
              230.187500000000000000)
            XLColumn = 0
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Amount'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 7
          end
          object QRShape27: TQRShape
            Left = 629
            Top = 90
            Width = 271
            Height = 19
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              50.270833333333330000
              1664.229166666667000000
              238.125000000000000000
              717.020833333333300000)
            XLColumn = 0
            Shape = qrsRectangle
            VertAdjust = 0
          end
          object QRLabel39: TQRLabel
            Left = 716
            Top = 93
            Width = 54
            Height = 13
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333330000
              1894.416666666667000000
              246.062500000000000000
              142.875000000000000000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'High Voltage'
            Color = clWhite
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 7
          end
          object QRShape28: TQRShape
            Left = 629
            Top = 108
            Width = 78
            Height = 19
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              50.270833333333330000
              1664.229166666667000000
              285.750000000000000000
              206.375000000000000000)
            XLColumn = 0
            Shape = qrsRectangle
            VertAdjust = 0
          end
          object QRLabel40: TQRLabel
            Left = 632
            Top = 110
            Width = 71
            Height = 13
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333330000
              1672.166666666667000000
              291.041666666666700000
              187.854166666666700000)
            XLColumn = 0
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = '# of Consumers'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 7
          end
          object QRShape29: TQRShape
            Left = 769
            Top = 108
            Width = 49
            Height = 19
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              50.270833333333330000
              2034.645833333333000000
              285.750000000000000000
              129.645833333333300000)
            XLColumn = 0
            Shape = qrsRectangle
            VertAdjust = 0
          end
          object QRLabel41: TQRLabel
            Left = 774
            Top = 110
            Width = 39
            Height = 13
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333330000
              2047.875000000000000000
              291.041666666666700000
              103.187500000000000000)
            XLColumn = 0
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'KW Dmd'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 7
          end
          object QRShape30: TQRShape
            Left = 816
            Top = 108
            Width = 84
            Height = 19
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              50.270833333333330000
              2159.000000000000000000
              285.750000000000000000
              222.250000000000000000)
            XLColumn = 0
            Shape = qrsRectangle
            VertAdjust = 0
          end
          object QRLabel42: TQRLabel
            Left = 819
            Top = 111
            Width = 76
            Height = 13
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333330000
              2166.937500000000000000
              293.687500000000000000
              201.083333333333300000)
            XLColumn = 0
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Amount'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 7
          end
          object QRShape31: TQRShape
            Left = 899
            Top = 90
            Width = 300
            Height = 19
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              50.270833333333330000
              2378.604166666667000000
              238.125000000000000000
              793.750000000000000000)
            XLColumn = 0
            Shape = qrsRectangle
            VertAdjust = 0
          end
          object QRLabel43: TQRLabel
            Left = 1045
            Top = 94
            Width = 29
            Height = 13
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333330000
              2764.895833333333000000
              248.708333333333300000
              76.729166666666670000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'TOTAL'
            Color = clWhite
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 7
          end
          object QRShape32: TQRShape
            Left = 899
            Top = 108
            Width = 86
            Height = 19
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              50.270833333333330000
              2378.604166666667000000
              285.750000000000000000
              227.541666666666700000)
            XLColumn = 0
            Shape = qrsRectangle
            VertAdjust = 0
          end
          object QRLabel44: TQRLabel
            Left = 904
            Top = 110
            Width = 73
            Height = 13
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333330000
              2391.833333333333000000
              291.041666666666700000
              193.145833333333300000)
            XLColumn = 0
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = '# of Consumers'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 7
          end
          object QRShape33: TQRShape
            Left = 1047
            Top = 108
            Width = 63
            Height = 19
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              50.270833333333330000
              2770.187500000000000000
              285.750000000000000000
              166.687500000000000000)
            XLColumn = 0
            Shape = qrsRectangle
            VertAdjust = 0
          end
          object QRLabel45: TQRLabel
            Left = 1052
            Top = 110
            Width = 54
            Height = 13
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333330000
              2783.416666666667000000
              291.041666666666700000
              142.875000000000000000)
            XLColumn = 0
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'KW Dmd'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 7
          end
          object QRShape34: TQRShape
            Left = 1109
            Top = 108
            Width = 88
            Height = 19
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              50.270833333333330000
              2934.229166666667000000
              285.750000000000000000
              232.833333333333300000)
            XLColumn = 0
            Shape = qrsRectangle
            VertAdjust = 0
          end
          object QRLabel46: TQRLabel
            Left = 1113
            Top = 110
            Width = 76
            Height = 13
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333330000
              2944.812500000000000000
              291.041666666666700000
              201.083333333333300000)
            XLColumn = 0
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Amount'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 7
          end
          object QRShape35: TQRShape
            Left = 227
            Top = 108
            Width = 76
            Height = 19
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              50.270833333333330000
              600.604166666666700000
              285.750000000000000000
              201.083333333333300000)
            XLColumn = 0
            Shape = qrsRectangle
            VertAdjust = 0
          end
          object QRLabel47: TQRLabel
            Left = 232
            Top = 111
            Width = 63
            Height = 13
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333330000
              613.833333333333300000
              293.687500000000000000
              166.687500000000000000)
            XLColumn = 0
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'KWHR'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 7
          end
          object QRShape36: TQRShape
            Left = 469
            Top = 108
            Width = 64
            Height = 19
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              50.270833333333330000
              1240.895833333333000000
              285.750000000000000000
              169.333333333333300000)
            XLColumn = 0
            Shape = qrsRectangle
            VertAdjust = 0
          end
          object QRLabel48: TQRLabel
            Left = 471
            Top = 111
            Width = 50
            Height = 13
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333330000
              1246.187500000000000000
              293.687500000000000000
              132.291666666666700000)
            XLColumn = 0
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'KWHR'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 7
          end
          object QRShape37: TQRShape
            Left = 706
            Top = 108
            Width = 64
            Height = 19
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              50.270833333333330000
              1867.958333333333000000
              285.750000000000000000
              169.333333333333300000)
            XLColumn = 0
            Shape = qrsRectangle
            VertAdjust = 0
          end
          object QRLabel49: TQRLabel
            Left = 712
            Top = 110
            Width = 51
            Height = 13
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333330000
              1883.833333333333000000
              291.041666666666700000
              134.937500000000000000)
            XLColumn = 0
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'KWHR'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 7
          end
          object QRShape38: TQRShape
            Left = 984
            Top = 108
            Width = 64
            Height = 19
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              50.270833333333330000
              2603.500000000000000000
              285.750000000000000000
              169.333333333333300000)
            XLColumn = 0
            Shape = qrsRectangle
            VertAdjust = 0
          end
          object QRLabel50: TQRLabel
            Left = 992
            Top = 110
            Width = 49
            Height = 13
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333330000
              2624.666666666667000000
              291.041666666666700000
              129.645833333333300000)
            XLColumn = 0
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'KWHR'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 7
          end
          object QRShape39: TQRShape
            Left = 45
            Top = 90
            Width = 108
            Height = 37
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              97.895833333333330000
              119.062500000000000000
              238.125000000000000000
              285.750000000000000000)
            XLColumn = 0
            Shape = qrsRectangle
            VertAdjust = 0
          end
          object QRLabel51: TQRLabel
            Left = 73
            Top = 102
            Width = 50
            Height = 17
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              193.145833333333300000
              269.875000000000000000
              132.291666666666700000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Municipality'
            Color = clWhite
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 7
          end
          object QRLabel26: TQRLabel
            Left = 485
            Top = 34
            Width = 230
            Height = 15
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              39.687500000000000000
              1283.229166666667000000
              89.958333333333330000
              608.541666666666700000)
            XLColumn = 0
            Alignment = taCenter
            AlignToBand = True
            AutoSize = False
            AutoStretch = False
            Caption = 'Accounts Receivable - Current'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 8
          end
          object QRLabel27: TQRLabel
            Left = 485
            Top = 2
            Width = 230
            Height = 15
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              39.687500000000000000
              1283.229166666667000000
              5.291666666666667000
              608.541666666666700000)
            XLColumn = 0
            Alignment = taCenter
            AlignToBand = True
            AutoSize = False
            AutoStretch = False
            Caption = 'ZAMBOANGA DEL NORTE ELECTRIC COOPERATIVE INC.'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 8
          end
          object QRLabel28: TQRLabel
            Left = 485
            Top = 18
            Width = 230
            Height = 15
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              39.687500000000000000
              1283.229166666667000000
              47.625000000000000000
              608.541666666666700000)
            XLColumn = 0
            Alignment = taCenter
            AlignToBand = True
            AutoSize = False
            AutoStretch = False
            Caption = 'General Luna St. Dipolog City'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 7
          end
          object QRLabel29: TQRLabel
            Left = 485
            Top = 54
            Width = 230
            Height = 15
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              39.687500000000000000
              1283.229166666667000000
              142.875000000000000000
              608.541666666666700000)
            XLColumn = 0
            Alignment = taCenter
            AlignToBand = True
            AutoSize = False
            AutoStretch = False
            Caption = 'Municipality of'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 7
          end
        end
      end
    end
    object PowerSalesAreaBook: TNxTabSheet
      Caption = 'NxTabSheet1'
      PageIndex = 1
      ParentTabFont = False
      TabFont.Charset = DEFAULT_CHARSET
      TabFont.Color = clWindowText
      TabFont.Height = -11
      TabFont.Name = 'Tahoma'
      TabFont.Style = []
      object qrPowerAccountsB: TQuickRep
        Left = 78
        Top = 43
        Width = 1248
        Height = 816
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        BeforePrint = qrPowerAccountsBBeforePrint
        DataSet = quPowerSalesBA
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
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
        Page.Orientation = poLandscape
        Page.PaperSize = FanfoldGerLegal
        Page.Continuous = False
        Page.Values = (
          63.500000000000000000
          2159.000000000000000000
          63.500000000000000000
          3302.000000000000000000
          63.500000000000000000
          63.500000000000000000
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
        Units = Inches
        Zoom = 100
        PrevFormStyle = fsNormal
        PreviewInitialState = wsMaximized
        PrevInitialZoom = qrZoomToFit
        PreviewDefaultSaveType = stQRP
        PreviewLeft = 0
        PreviewTop = 0
        object QRBand1: TQRBand
          Left = 24
          Top = 153
          Width = 1200
          Height = 21
          Frame.DrawTop = False
          Frame.DrawBottom = True
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            55.562500000000000000
            3175.000000000000000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbDetail
          object QRDBText32: TQRDBText
            Left = 11
            Top = 0
            Width = 28
            Height = 17
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              29.104166666666670000
              0.000000000000000000
              74.083333333333330000)
            XLColumn = 0
            Alignment = taCenter
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = quPowerSalesBA
            DataField = 'Area'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            FontSize = 10
          end
          object QRDBText33: TQRDBText
            Left = 117
            Top = 0
            Width = 79
            Height = 17
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              309.562500000000000000
              0.000000000000000000
              209.020833333333300000)
            XLColumn = 0
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = quPowerSalesBA
            DataField = 'NoOfConsumers'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            FontSize = 10
          end
          object QRDBText34: TQRDBText
            Left = 200
            Top = 0
            Width = 61
            Height = 17
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              529.166666666666700000
              0.000000000000000000
              161.395833333333300000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = quPowerSalesBA
            DataField = 'KWHR'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            Mask = '#,###.#0'
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            FontSize = 10
          end
          object QRDBText35: TQRDBText
            Left = 268
            Top = 0
            Width = 74
            Height = 17
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              709.083333333333300000
              0.000000000000000000
              195.791666666666700000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = quPowerSalesBA
            DataField = 'Amount'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            Mask = '#,###.#0'
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            FontSize = 10
          end
          object QRDBText36: TQRDBText
            Left = 364
            Top = 0
            Width = 82
            Height = 17
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              963.083333333333300000
              0.000000000000000000
              216.958333333333300000)
            XLColumn = 0
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = quPowerSalesBA
            DataField = 'LNoOfConsumers'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            FontSize = 10
          end
          object QRDBText37: TQRDBText
            Left = 449
            Top = 0
            Width = 59
            Height = 17
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1187.979166666667000000
              0.000000000000000000
              156.104166666666700000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = quPowerSalesBA
            DataField = 'LKWHR'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            Mask = '#,###.#0'
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            FontSize = 10
          end
          object QRDBText38: TQRDBText
            Left = 519
            Top = 0
            Width = 74
            Height = 17
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1373.187500000000000000
              0.000000000000000000
              195.791666666666700000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = quPowerSalesBA
            DataField = 'LAmount'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            Mask = '#,###.#0'
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            FontSize = 10
          end
          object QRDBText39: TQRDBText
            Left = 611
            Top = 0
            Width = 80
            Height = 17
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1616.604166666667000000
              0.000000000000000000
              211.666666666666700000)
            XLColumn = 0
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = quPowerSalesBA
            DataField = 'HNoOfConsumers'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            FontSize = 10
          end
          object QRDBText40: TQRDBText
            Left = 698
            Top = 0
            Width = 59
            Height = 17
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1846.791666666667000000
              0.000000000000000000
              156.104166666666700000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = quPowerSalesBA
            DataField = 'HKWHR'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            Mask = '#,###.#0'
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            FontSize = 10
          end
          object QRDBText41: TQRDBText
            Left = 765
            Top = 0
            Width = 50
            Height = 17
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              2024.062500000000000000
              0.000000000000000000
              132.291666666666700000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = quPowerSalesBA
            DataField = 'demand'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            Mask = '#,###.#0'
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            FontSize = 10
          end
          object QRDBText42: TQRDBText
            Left = 833
            Top = 0
            Width = 58
            Height = 17
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              2203.979166666667000000
              0.000000000000000000
              153.458333333333300000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = quPowerSalesBA
            DataField = 'HAmount'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            Mask = '#,###.#0'
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            FontSize = 10
          end
          object QRDBText43: TQRDBText
            Left = 916
            Top = 0
            Width = 58
            Height = 17
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              2423.583333333333000000
              0.000000000000000000
              153.458333333333300000)
            XLColumn = 0
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = quPowerSalesBA
            DataField = 'TNoOfConsumers'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            FontSize = 10
          end
          object QRDBText44: TQRDBText
            Left = 992
            Top = 0
            Width = 59
            Height = 17
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              2624.666666666667000000
              0.000000000000000000
              156.104166666666700000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = quPowerSalesBA
            DataField = 'TKWHR'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            Mask = '#,###.#0'
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            FontSize = 10
          end
          object QRDBText45: TQRDBText
            Left = 1056
            Top = 0
            Width = 54
            Height = 17
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              2794.000000000000000000
              0.000000000000000000
              142.875000000000000000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = quPowerSalesBA
            DataField = 'demandt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            FontSize = 10
          end
          object QRDBText46: TQRDBText
            Left = 1128
            Top = 0
            Width = 69
            Height = 17
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              2984.500000000000000000
              0.000000000000000000
              182.562500000000000000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = quPowerSalesBA
            DataField = 'TAmount'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            Mask = '#,###,#0'
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            FontSize = 10
          end
          object QRDBText47: TQRDBText
            Left = 68
            Top = 0
            Width = 31
            Height = 17
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              179.916666666666700000
              0.000000000000000000
              82.020833333333330000)
            XLColumn = 0
            Alignment = taCenter
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = quPowerSalesBA
            DataField = 'Book'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            FontSize = 10
          end
        end
        object QRBand7: TQRBand
          Left = 24
          Top = 174
          Width = 1200
          Height = 22
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = True
          Size.Values = (
            58.208333333333330000
            3175.000000000000000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbGroupFooter
          object QRLabel52: TQRLabel
            Left = 51
            Top = 2
            Width = 50
            Height = 15
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              39.687500000000000000
              134.937500000000000000
              5.291666666666667000
              132.291666666666700000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'TOTAL:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 8
          end
          object QRExpr29: TQRExpr
            Left = 117
            Top = 2
            Width = 78
            Height = 17
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              309.562500000000000000
              5.291666666666667000
              206.375000000000000000)
            XLColumn = 0
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            Color = clWhite
            ParentFont = False
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'SUM(quPowerSalesBA.NoOfConsumers)'
            Mask = '#,###'
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 10
          end
          object QRExpr30: TQRExpr
            Left = 200
            Top = 2
            Width = 62
            Height = 17
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              529.166666666666700000
              5.291666666666667000
              164.041666666666700000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            Color = clWhite
            ParentFont = False
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'SUM(quPowerSalesBA.KWHR)'
            Mask = '#,###.#0'
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 10
          end
          object QRExpr31: TQRExpr
            Left = 268
            Top = 2
            Width = 74
            Height = 17
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              709.083333333333300000
              5.291666666666667000
              195.791666666666700000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            Color = clWhite
            ParentFont = False
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'SUM(quPowerSalesBA.Amount)'
            Mask = '#,###.#0'
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 10
          end
          object QRExpr32: TQRExpr
            Left = 361
            Top = 2
            Width = 82
            Height = 17
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              955.145833333333300000
              5.291666666666667000
              216.958333333333300000)
            XLColumn = 0
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            Color = clWhite
            ParentFont = False
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'SUM(quPowerSalesBA.LNoOfConsumers)'
            Mask = '#,###.#0'
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 10
          end
          object QRExpr33: TQRExpr
            Left = 449
            Top = 2
            Width = 59
            Height = 17
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1187.979166666667000000
              5.291666666666667000
              156.104166666666700000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            Color = clWhite
            ParentFont = False
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'SUM(quPowerSalesBA.LKWHR)'
            Mask = '#,###.#0'
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 10
          end
          object QRExpr34: TQRExpr
            Left = 519
            Top = 2
            Width = 74
            Height = 17
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1373.187500000000000000
              5.291666666666667000
              195.791666666666700000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            Color = clWhite
            ParentFont = False
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'SUM(quPowerSalesBA.LAmount)'
            Mask = '#,###.#0'
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 10
          end
          object QRExpr35: TQRExpr
            Left = 611
            Top = 1
            Width = 80
            Height = 17
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1616.604166666667000000
              2.645833333333333000
              211.666666666666700000)
            XLColumn = 0
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            Color = clWhite
            ParentFont = False
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'SUM(quPowerSalesBA.HNoOfConsumers)'
            Mask = '#,###'
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 10
          end
          object QRExpr36: TQRExpr
            Left = 698
            Top = 2
            Width = 59
            Height = 17
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1846.791666666667000000
              5.291666666666667000
              156.104166666666700000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            Color = clWhite
            ParentFont = False
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'SUM(quPowerSalesBA.HKWHR)'
            Mask = '#,###.#0'
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 10
          end
          object QRExpr37: TQRExpr
            Left = 765
            Top = 2
            Width = 54
            Height = 17
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              2024.062500000000000000
              5.291666666666667000
              142.875000000000000000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            Color = clWhite
            ParentFont = False
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'Sum(quPowerSalesBA.demand)'
            Mask = '#,###.#0'
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 10
          end
          object QRExpr38: TQRExpr
            Left = 834
            Top = 2
            Width = 57
            Height = 17
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              2206.625000000000000000
              5.291666666666667000
              150.812500000000000000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            Color = clWhite
            ParentFont = False
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'SUM(quPowerSalesBA.HAmount)'
            Mask = '#,###.#0'
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 10
          end
          object QRExpr39: TQRExpr
            Left = 916
            Top = 1
            Width = 60
            Height = 17
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              2423.583333333333000000
              2.645833333333333000
              158.750000000000000000)
            XLColumn = 0
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            Color = clWhite
            ParentFont = False
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'SUM(quPowerSalesBA.TNoOfConsumers)'
            Mask = '#,###'
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 10
          end
          object QRExpr40: TQRExpr
            Left = 992
            Top = 1
            Width = 59
            Height = 17
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              2624.666666666667000000
              2.645833333333333000
              156.104166666666700000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            Color = clWhite
            ParentFont = False
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'SUM(quPowerSalesBA.TKWHR)'
            Mask = '#,###.#0'
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 10
          end
          object QRExpr41: TQRExpr
            Left = 1061
            Top = 1
            Width = 49
            Height = 17
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              2807.229166666667000000
              2.645833333333333000
              129.645833333333300000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            Color = clWhite
            ParentFont = False
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'SUM(quPowerSalesBA.demandt)'
            Mask = '#,###.#0'
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 10
          end
          object QRExpr42: TQRExpr
            Left = 1128
            Top = 2
            Width = 70
            Height = 17
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              2984.500000000000000000
              5.291666666666667000
              185.208333333333300000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            Color = clWhite
            ParentFont = False
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'SUM(quPowerSalesBA.TAmount)'
            Mask = '#,###.#0'
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 10
          end
        end
        object QRGroup3: TQRGroup
          Left = 24
          Top = 24
          Width = 1200
          Height = 129
          Frame.DrawTop = True
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = True
          Size.Values = (
            341.312500000000000000
            3175.000000000000000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          Expression = 'quAccountsReceivable.Area'
          FooterBand = QRBand7
          Master = qrPowerAccountsB
          ReprintOnNewPage = False
          object QRShape40: TQRShape
            Left = 0
            Top = 90
            Width = 56
            Height = 37
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              97.895833333333330000
              0.000000000000000000
              238.125000000000000000
              148.166666666666700000)
            XLColumn = 0
            Shape = qrsRectangle
            VertAdjust = 0
          end
          object QRLabel53: TQRLabel
            Left = 17
            Top = 102
            Width = 20
            Height = 17
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              44.979166666666670000
              269.875000000000000000
              52.916666666666670000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Area'
            Color = clWhite
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 7
          end
          object QRShape41: TQRShape
            Left = 110
            Top = 90
            Width = 248
            Height = 19
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              50.270833333333330000
              291.041666666666700000
              238.125000000000000000
              656.166666666666700000)
            XLColumn = 0
            Shape = qrsRectangle
            VertAdjust = 0
          end
          object QRLabel54: TQRLabel
            Left = 197
            Top = 94
            Width = 47
            Height = 13
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333330000
              521.229166666666700000
              248.708333333333300000
              124.354166666666700000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Residential'
            Color = clWhite
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 7
          end
          object QRShape42: TQRShape
            Left = 110
            Top = 108
            Width = 90
            Height = 19
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              50.270833333333330000
              291.041666666666700000
              285.750000000000000000
              238.125000000000000000)
            XLColumn = 0
            Shape = qrsRectangle
            VertAdjust = 0
          end
          object QRLabel55: TQRLabel
            Left = 113
            Top = 110
            Width = 83
            Height = 13
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333330000
              298.979166666666700000
              291.041666666666700000
              219.604166666666700000)
            XLColumn = 0
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'No. of Consumers'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 7
          end
          object QRShape43: TQRShape
            Left = 261
            Top = 108
            Width = 97
            Height = 19
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              50.270833333333330000
              690.562500000000000000
              285.750000000000000000
              256.645833333333300000)
            XLColumn = 0
            Shape = qrsRectangle
            VertAdjust = 0
          end
          object QRLabel56: TQRLabel
            Left = 268
            Top = 110
            Width = 74
            Height = 13
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333330000
              709.083333333333300000
              291.041666666666700000
              195.791666666666700000)
            XLColumn = 0
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Amount'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 7
          end
          object QRShape44: TQRShape
            Left = 357
            Top = 90
            Width = 252
            Height = 19
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              50.270833333333330000
              944.562500000000000000
              238.125000000000000000
              666.750000000000000000)
            XLColumn = 0
            Shape = qrsRectangle
            VertAdjust = 0
          end
          object QRLabel57: TQRLabel
            Left = 444
            Top = 93
            Width = 51
            Height = 13
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333330000
              1174.750000000000000000
              246.062500000000000000
              134.937500000000000000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Low Voltage'
            Color = clWhite
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 7
          end
          object QRShape45: TQRShape
            Left = 357
            Top = 108
            Width = 90
            Height = 19
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              50.270833333333330000
              944.562500000000000000
              285.750000000000000000
              238.125000000000000000)
            XLColumn = 0
            Shape = qrsRectangle
            VertAdjust = 0
          end
          object QRLabel58: TQRLabel
            Left = 361
            Top = 110
            Width = 82
            Height = 13
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333330000
              955.145833333333300000
              291.041666666666700000
              216.958333333333300000)
            XLColumn = 0
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'No. of Consumers'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 7
          end
          object QRShape46: TQRShape
            Left = 508
            Top = 108
            Width = 101
            Height = 19
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              50.270833333333330000
              1344.083333333333000000
              285.750000000000000000
              267.229166666666700000)
            XLColumn = 0
            Shape = qrsRectangle
            VertAdjust = 0
          end
          object QRLabel59: TQRLabel
            Left = 519
            Top = 110
            Width = 74
            Height = 13
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333330000
              1373.187500000000000000
              291.041666666666700000
              195.791666666666700000)
            XLColumn = 0
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Amount'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 7
          end
          object QRShape47: TQRShape
            Left = 608
            Top = 90
            Width = 290
            Height = 19
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              50.270833333333330000
              1608.666666666667000000
              238.125000000000000000
              767.291666666666700000)
            XLColumn = 0
            Shape = qrsRectangle
            VertAdjust = 0
          end
          object QRLabel60: TQRLabel
            Left = 695
            Top = 93
            Width = 54
            Height = 13
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333330000
              1838.854166666667000000
              246.062500000000000000
              142.875000000000000000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'High Voltage'
            Color = clWhite
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 7
          end
          object QRShape48: TQRShape
            Left = 608
            Top = 108
            Width = 89
            Height = 19
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              50.270833333333330000
              1608.666666666667000000
              285.750000000000000000
              235.479166666666700000)
            XLColumn = 0
            Shape = qrsRectangle
            VertAdjust = 0
          end
          object QRLabel61: TQRLabel
            Left = 611
            Top = 110
            Width = 78
            Height = 13
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333330000
              1616.604166666667000000
              291.041666666666700000
              206.375000000000000000)
            XLColumn = 0
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = '# of Consumers'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 7
          end
          object QRShape49: TQRShape
            Left = 758
            Top = 108
            Width = 73
            Height = 19
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              50.270833333333330000
              2005.541666666667000000
              285.750000000000000000
              193.145833333333300000)
            XLColumn = 0
            Shape = qrsRectangle
            VertAdjust = 0
          end
          object QRLabel62: TQRLabel
            Left = 765
            Top = 110
            Width = 54
            Height = 13
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333330000
              2024.062500000000000000
              291.041666666666700000
              142.875000000000000000)
            XLColumn = 0
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'KW Dmd'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 7
          end
          object QRShape50: TQRShape
            Left = 830
            Top = 108
            Width = 68
            Height = 19
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              50.270833333333330000
              2196.041666666667000000
              285.750000000000000000
              179.916666666666700000)
            XLColumn = 0
            Shape = qrsRectangle
            VertAdjust = 0
          end
          object QRLabel63: TQRLabel
            Left = 835
            Top = 110
            Width = 54
            Height = 13
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333330000
              2209.270833333333000000
              291.041666666666700000
              142.875000000000000000)
            XLColumn = 0
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Amount'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 7
          end
          object QRShape51: TQRShape
            Left = 897
            Top = 90
            Width = 305
            Height = 19
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              50.270833333333330000
              2373.312500000000000000
              238.125000000000000000
              806.979166666666700000)
            XLColumn = 0
            Shape = qrsRectangle
            VertAdjust = 0
          end
          object QRLabel64: TQRLabel
            Left = 1066
            Top = 94
            Width = 29
            Height = 13
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333330000
              2820.458333333333000000
              248.708333333333300000
              76.729166666666670000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'TOTAL'
            Color = clWhite
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 7
          end
          object QRShape52: TQRShape
            Left = 897
            Top = 108
            Width = 94
            Height = 19
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              50.270833333333330000
              2373.312500000000000000
              285.750000000000000000
              248.708333333333300000)
            XLColumn = 0
            Shape = qrsRectangle
            VertAdjust = 0
          end
          object QRLabel65: TQRLabel
            Left = 902
            Top = 110
            Width = 81
            Height = 13
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333330000
              2386.541666666667000000
              291.041666666666700000
              214.312500000000000000)
            XLColumn = 0
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = '# of Consumers'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 7
          end
          object QRShape53: TQRShape
            Left = 1052
            Top = 108
            Width = 72
            Height = 19
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              50.270833333333330000
              2783.416666666667000000
              285.750000000000000000
              190.500000000000000000)
            XLColumn = 0
            Shape = qrsRectangle
            VertAdjust = 0
          end
          object QRLabel66: TQRLabel
            Left = 1062
            Top = 110
            Width = 54
            Height = 13
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333330000
              2809.875000000000000000
              291.041666666666700000
              142.875000000000000000)
            XLColumn = 0
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'KW Dmd'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 7
          end
          object QRShape54: TQRShape
            Left = 1123
            Top = 108
            Width = 76
            Height = 19
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              50.270833333333330000
              2971.270833333333000000
              285.750000000000000000
              201.083333333333300000)
            XLColumn = 0
            Shape = qrsRectangle
            VertAdjust = 0
          end
          object QRLabel67: TQRLabel
            Left = 1129
            Top = 110
            Width = 70
            Height = 13
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333330000
              2987.145833333333000000
              291.041666666666700000
              185.208333333333300000)
            XLColumn = 0
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Amount'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 7
          end
          object QRShape55: TQRShape
            Left = 198
            Top = 108
            Width = 64
            Height = 19
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              50.270833333333330000
              523.875000000000000000
              285.750000000000000000
              169.333333333333300000)
            XLColumn = 0
            Shape = qrsRectangle
            VertAdjust = 0
          end
          object QRLabel68: TQRLabel
            Left = 206
            Top = 110
            Width = 49
            Height = 13
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333330000
              545.041666666666700000
              291.041666666666700000
              129.645833333333300000)
            XLColumn = 0
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'KWHR'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 7
          end
          object QRShape56: TQRShape
            Left = 446
            Top = 108
            Width = 64
            Height = 19
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              50.270833333333330000
              1180.041666666667000000
              285.750000000000000000
              169.333333333333300000)
            XLColumn = 0
            Shape = qrsRectangle
            VertAdjust = 0
          end
          object QRLabel69: TQRLabel
            Left = 453
            Top = 110
            Width = 49
            Height = 13
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333330000
              1198.562500000000000000
              291.041666666666700000
              129.645833333333300000)
            XLColumn = 0
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'KWHR'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 7
          end
          object QRShape57: TQRShape
            Left = 695
            Top = 108
            Width = 64
            Height = 19
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              50.270833333333330000
              1838.854166666667000000
              285.750000000000000000
              169.333333333333300000)
            XLColumn = 0
            Shape = qrsRectangle
            VertAdjust = 0
          end
          object QRLabel70: TQRLabel
            Left = 703
            Top = 110
            Width = 49
            Height = 13
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333330000
              1860.020833333333000000
              291.041666666666700000
              129.645833333333300000)
            XLColumn = 0
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'KWHR'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 7
          end
          object QRShape58: TQRShape
            Left = 989
            Top = 108
            Width = 64
            Height = 19
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              50.270833333333330000
              2616.729166666667000000
              285.750000000000000000
              169.333333333333300000)
            XLColumn = 0
            Shape = qrsRectangle
            VertAdjust = 0
          end
          object QRLabel71: TQRLabel
            Left = 997
            Top = 110
            Width = 49
            Height = 13
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333330000
              2637.895833333333000000
              291.041666666666700000
              129.645833333333300000)
            XLColumn = 0
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'KWHR'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 7
          end
          object QRShape59: TQRShape
            Left = 54
            Top = 90
            Width = 57
            Height = 37
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              97.895833333333330000
              142.875000000000000000
              238.125000000000000000
              150.812500000000000000)
            XLColumn = 0
            Shape = qrsRectangle
            VertAdjust = 0
          end
          object QRLabel72: TQRLabel
            Left = 73
            Top = 102
            Width = 22
            Height = 17
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              193.145833333333300000
              269.875000000000000000
              58.208333333333330000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Book'
            Color = clWhite
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 7
          end
          object QRLabel73: TQRLabel
            Left = 485
            Top = 42
            Width = 230
            Height = 15
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              39.687500000000000000
              1283.229166666667000000
              111.125000000000000000
              608.541666666666700000)
            XLColumn = 0
            Alignment = taCenter
            AlignToBand = True
            AutoSize = False
            AutoStretch = False
            Caption = 'Accounts Receivable - Current'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 8
          end
          object QRLabel74: TQRLabel
            Left = 485
            Top = 5
            Width = 230
            Height = 15
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              39.687500000000000000
              1283.229166666667000000
              13.229166666666670000
              608.541666666666700000)
            XLColumn = 0
            Alignment = taCenter
            AlignToBand = True
            AutoSize = False
            AutoStretch = False
            Caption = 'ZAMBOANGA DEL NORTE ELECTRIC COOPERATIVE INC.'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 8
          end
          object QRLabel75: TQRLabel
            Left = 485
            Top = 26
            Width = 230
            Height = 15
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              39.687500000000000000
              1283.229166666667000000
              68.791666666666670000
              608.541666666666700000)
            XLColumn = 0
            Alignment = taCenter
            AlignToBand = True
            AutoSize = False
            AutoStretch = False
            Caption = 'General Luna St. Dipolog City'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 7
          end
          object QRLabel77: TQRLabel
            Left = 485
            Top = 64
            Width = 230
            Height = 15
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              39.687500000000000000
              1283.229166666667000000
              169.333333333333300000
              608.541666666666700000)
            XLColumn = 0
            Alignment = taCenter
            AlignToBand = True
            AutoSize = False
            AutoStretch = False
            Caption = 'Municipality of'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 7
          end
        end
      end
    end
  end
  object NxButton1: TNxButton
    Left = 14
    Top = 64
    Width = 224
    Align = alCustom
    Caption = 'Book/Area'
    TabOrder = 3
    OnClick = NxButton1Click
  end
  object MyConnection1: TMyConnection
    Database = 'zaneco'
    Username = 'root'
    Password = 'blaise'
    Server = 'server'
    Connected = True
    LoginPrompt = False
    Left = 16
    Top = 88
  end
  object quPowerSales: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'Call powersales(:DF,:months)')
    Left = 96
    Top = 88
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DF'
      end
      item
        DataType = ftUnknown
        Name = 'months'
      end>
    object quPowerSalesarea: TStringField
      FieldName = 'area'
      FixedChar = True
      Size = 3
    end
    object quPowerSalesMunicipality: TStringField
      FieldName = 'Municipality'
      Size = 16
    end
    object quPowerSalesNoOfConsumers: TLargeintField
      FieldName = 'NoOfConsumers'
      DisplayFormat = '#,###'
    end
    object quPowerSalesKWHR: TFloatField
      FieldName = 'KWHR'
      DisplayFormat = '#,###.#0'
    end
    object quPowerSalesAmount: TFloatField
      FieldName = 'Amount'
      DisplayFormat = '#,###.#0'
    end
    object quPowerSalesLNoOfConsumers: TLargeintField
      FieldName = 'LNoOfConsumers'
      DisplayFormat = '#,###'
    end
    object quPowerSalesLKWHR: TFloatField
      FieldName = 'LKWHR'
      DisplayFormat = '#,###.#0'
    end
    object quPowerSalesLAmount: TFloatField
      FieldName = 'LAmount'
      DisplayFormat = '#,###.#0'
    end
    object quPowerSalesHNoOfConsumers: TLargeintField
      FieldName = 'HNoOfConsumers'
      DisplayFormat = '#,###'
    end
    object quPowerSalesHKWHR: TFloatField
      FieldName = 'HKWHR'
      DisplayFormat = '#,###.#0'
    end
    object quPowerSalesdemand: TStringField
      FieldName = 'demand'
      Size = 65530
    end
    object quPowerSalesHAmount: TFloatField
      FieldName = 'HAmount'
      DisplayFormat = '#,###.#0'
    end
    object quPowerSalesTNoOfConsumers: TLargeintField
      FieldName = 'TNoOfConsumers'
      DisplayFormat = '#,###'
    end
    object quPowerSalesTKWHR: TFloatField
      FieldName = 'TKWHR'
      DisplayFormat = '#,###.#0'
    end
    object quPowerSalesdemandt: TStringField
      FieldName = 'demandt'
      Size = 65530
    end
    object quPowerSalesTAmount: TFloatField
      FieldName = 'TAmount'
      DisplayFormat = '#,###.#0'
    end
  end
  object QRCompositeReport1: TQRCompositeReport
    OnAddReports = QRCompositeReport1AddReports
    Options = []
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
    PrinterSettings.Orientation = poLandscape
    PrinterSettings.PaperSize = Legal
    PageCount = 0
    Left = 48
    Top = 320
  end
  object quPowerSalesBA: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'Call powersalesbookarea(:pDF)')
    Left = 200
    Top = 88
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pDF'
      end>
    object quPowerSalesBAArea: TStringField
      FieldName = 'Area'
      FixedChar = True
      Size = 3
    end
    object quPowerSalesBAbook: TStringField
      FieldName = 'book'
      FixedChar = True
      Size = 3
    end
    object quPowerSalesBANoOfConsumers: TLargeintField
      FieldName = 'NoOfConsumers'
    end
    object quPowerSalesBAKWHR: TFloatField
      FieldName = 'KWHR'
    end
    object quPowerSalesBAAmount: TFloatField
      FieldName = 'Amount'
    end
    object quPowerSalesBALNoOfConsumers: TLargeintField
      FieldName = 'LNoOfConsumers'
    end
    object quPowerSalesBALKWHR: TFloatField
      FieldName = 'LKWHR'
    end
    object quPowerSalesBALAmount: TFloatField
      FieldName = 'LAmount'
    end
    object quPowerSalesBAHNoOfConsumers: TLargeintField
      FieldName = 'HNoOfConsumers'
    end
    object quPowerSalesBAHKWHR: TFloatField
      FieldName = 'HKWHR'
    end
    object quPowerSalesBAHAmount: TFloatField
      FieldName = 'HAmount'
    end
    object quPowerSalesBATNoOfConsumers: TLargeintField
      FieldName = 'TNoOfConsumers'
    end
    object quPowerSalesBATKWHR: TFloatField
      FieldName = 'TKWHR'
    end
    object quPowerSalesBATAmount: TFloatField
      FieldName = 'TAmount'
    end
  end
  object QRCompositeReport2: TQRCompositeReport
    OnAddReports = QRCompositeReport2AddReports
    Options = []
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
    PrinterSettings.Orientation = poLandscape
    PrinterSettings.PaperSize = Legal
    PageCount = 0
    Left = 176
    Top = 320
  end
end
