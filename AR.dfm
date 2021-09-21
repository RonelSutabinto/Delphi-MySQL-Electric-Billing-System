object AccountsReceivable: TAccountsReceivable
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Unbundled Unpaid Bills'
  ClientHeight = 331
  ClientWidth = 262
  Color = clWindow
  Constraints.MaxHeight = 768
  Constraints.MaxWidth = 1300
  Constraints.MinHeight = 370
  Constraints.MinWidth = 278
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  Scaled = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 104
    Top = 339
    Width = 1195
    Height = 617
    BevelInner = bvLowered
    BorderWidth = 5
    Caption = 'Panel2'
    TabOrder = 0
    Visible = False
    object PageControl1: TPageControl
      Left = 7
      Top = 7
      Width = 1181
      Height = 603
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'TabSheet1'
        object QUnpaidUnbundled: TQuickRep
          Left = 19
          Top = 36
          Width = 1248
          Height = 816
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          DataSet = quAccountsReceivable
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
          PrevInitialZoom = qrZoomToWidth
          PreviewDefaultSaveType = stQRP
          PreviewLeft = 0
          PreviewTop = 0
          object QRBand4: TQRBand
            Left = 24
            Top = 100
            Width = 1200
            Height = 45
            Frame.DrawTop = True
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = True
            AlignToBottom = False
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              119.062500000000000000
              3175.000000000000000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbColumnHeader
            object QRLabel33: TQRLabel
              Left = 57
              Top = 15
              Width = 36
              Height = 14
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                150.812500000000000000
                39.687500000000000000
                95.250000000000000000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Charges'
              Color = clWhite
              Transparent = True
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape20: TQRShape
              Tag = 1000
              Left = 155
              Top = 0
              Width = 2
              Height = 30
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                79.375000000000000000
                410.104166666666700000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape21: TQRShape
              Left = 156
              Top = 13
              Width = 998
              Height = 2
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                5.291666666666667000
                412.750000000000000000
                34.395833333333330000
                2640.541666666667000000)
              XLColumn = 0
              Shape = qrsHorLine
              VertAdjust = 0
            end
            object QRLabel34: TQRLabel
              Left = 158
              Top = 15
              Width = 43
              Height = 24
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                63.500000000000000000
                418.041666666666700000
                39.687500000000000000
                113.770833333333300000)
              XLColumn = 0
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = 'No. of Consumers'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 6
            end
            object QRShape22: TQRShape
              Left = 201
              Top = 15
              Width = 2
              Height = 28
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                74.083333333333320000
                531.812500000000000000
                39.687500000000000000
                5.291666666666667000)
              XLColumn = 0
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel35: TQRLabel
              Left = 204
              Top = 15
              Width = 43
              Height = 24
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                63.500000000000000000
                539.750000000000000000
                39.687500000000000000
                113.770833333333300000)
              XLColumn = 0
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = 'Minimum Bills'
              Color = clWhite
              Transparent = True
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape23: TQRShape
              Left = 247
              Top = 15
              Width = 2
              Height = 28
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                74.083333333333320000
                653.520833333333200000
                39.687500000000000000
                5.291666666666667000)
              XLColumn = 0
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel36: TQRLabel
              Left = 250
              Top = 15
              Width = 41
              Height = 24
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                63.500000000000000000
                661.458333333333200000
                39.687500000000000000
                108.479166666666700000)
              XLColumn = 0
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = 'Minimum KWHr'
              Color = clWhite
              Transparent = True
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape24: TQRShape
              Left = 291
              Top = 15
              Width = 2
              Height = 28
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                74.083333333333320000
                769.937500000000000000
                39.687500000000000000
                5.291666666666667000)
              XLColumn = 0
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel37: TQRLabel
              Left = 294
              Top = 22
              Width = 53
              Height = 13
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                34.395833333333330000
                777.875000000000000000
                58.208333333333320000
                140.229166666666700000)
              XLColumn = 0
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = 'KWHr'
              Color = clWhite
              Transparent = True
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape25: TQRShape
              Left = 347
              Top = 15
              Width = 2
              Height = 28
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                74.083333333333320000
                918.104166666666800000
                39.687500000000000000
                5.291666666666667000)
              XLColumn = 0
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel38: TQRLabel
              Left = 355
              Top = 22
              Width = 62
              Height = 13
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                34.395833333333330000
                939.270833333333200000
                58.208333333333320000
                164.041666666666700000)
              XLColumn = 0
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = 'Amount'
              Color = clWhite
              Transparent = True
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape26: TQRShape
              Tag = 1000
              Left = 420
              Top = 0
              Width = 2
              Height = 30
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                79.375000000000000000
                1111.250000000000000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel39: TQRLabel
              Left = 468
              Top = 22
              Width = 53
              Height = 13
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                34.395833333333330000
                1238.250000000000000000
                58.208333333333320000
                140.229166666666700000)
              XLColumn = 0
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = 'KWHr'
              Color = clWhite
              Transparent = True
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape27: TQRShape
              Left = 521
              Top = 15
              Width = 2
              Height = 28
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                74.083333333333320000
                1378.479166666667000000
                39.687500000000000000
                5.291666666666667000)
              XLColumn = 0
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel40: TQRLabel
              Left = 523
              Top = 22
              Width = 74
              Height = 13
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                34.395833333333330000
                1383.770833333333000000
                58.208333333333320000
                195.791666666666700000)
              XLColumn = 0
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = 'Amount'
              Color = clWhite
              Transparent = True
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape28: TQRShape
              Tag = 1000
              Left = 596
              Top = 0
              Width = 2
              Height = 30
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                79.375000000000000000
                1576.916666666667000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel41: TQRLabel
              Left = 422
              Top = 15
              Width = 43
              Height = 24
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                63.500000000000000000
                1116.541666666667000000
                39.687500000000000000
                113.770833333333300000)
              XLColumn = 0
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = 'No. of Consumers'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 6
            end
            object QRShape29: TQRShape
              Left = 465
              Top = 15
              Width = 2
              Height = 28
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                74.083333333333320000
                1230.312500000000000000
                39.687500000000000000
                5.291666666666667000)
              XLColumn = 0
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel42: TQRLabel
              Left = 655
              Top = 22
              Width = 53
              Height = 13
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                34.395833333333330000
                1733.020833333333000000
                58.208333333333320000
                140.229166666666700000)
              XLColumn = 0
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = 'KWHr'
              Color = clWhite
              Transparent = True
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape30: TQRShape
              Left = 711
              Top = 15
              Width = 2
              Height = 28
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                74.083333333333320000
                1881.187500000000000000
                39.687500000000000000
                5.291666666666667000)
              XLColumn = 0
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel43: TQRLabel
              Left = 777
              Top = 22
              Width = 74
              Height = 13
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                34.395833333333330000
                2055.812500000000000000
                58.208333333333320000
                195.791666666666700000)
              XLColumn = 0
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = 'Amount'
              Color = clWhite
              Transparent = True
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape31: TQRShape
              Tag = 1000
              Left = 851
              Top = 0
              Width = 2
              Height = 30
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                79.375000000000000000
                2251.604166666667000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel44: TQRLabel
              Left = 598
              Top = 15
              Width = 52
              Height = 24
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                63.500000000000000000
                1582.208333333333000000
                39.687500000000000000
                137.583333333333300000)
              XLColumn = 0
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = 'No. of Consumers'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 6
            end
            object QRShape32: TQRShape
              Left = 650
              Top = 15
              Width = 2
              Height = 28
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                74.083333333333320000
                1719.791666666667000000
                39.687500000000000000
                5.291666666666667000)
              XLColumn = 0
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel45: TQRLabel
              Left = 716
              Top = 22
              Width = 53
              Height = 13
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                34.395833333333330000
                1894.416666666667000000
                58.208333333333320000
                140.229166666666700000)
              XLColumn = 0
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = 'KW Dmd.'
              Color = clWhite
              Transparent = True
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape33: TQRShape
              Left = 774
              Top = 15
              Width = 2
              Height = 28
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                74.083333333333320000
                2047.875000000000000000
                39.687500000000000000
                5.291666666666667000)
              XLColumn = 0
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel46: TQRLabel
              Left = 966
              Top = 22
              Width = 53
              Height = 15
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                2555.875000000000000000
                58.208333333333320000
                140.229166666666700000)
              XLColumn = 0
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = 'KWHr'
              Color = clWhite
              Transparent = True
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape34: TQRShape
              Left = 1021
              Top = 15
              Width = 2
              Height = 28
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                74.083333333333320000
                2701.395833333333000000
                39.687500000000000000
                5.291666666666667000)
              XLColumn = 0
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel47: TQRLabel
              Left = 1088
              Top = 22
              Width = 62
              Height = 15
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                2878.666666666667000000
                58.208333333333320000
                164.041666666666700000)
              XLColumn = 0
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = 'Amount'
              Color = clWhite
              Transparent = True
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel48: TQRLabel
              Left = 853
              Top = 15
              Width = 43
              Height = 24
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                63.500000000000000000
                2256.895833333333000000
                39.687500000000000000
                113.770833333333300000)
              XLColumn = 0
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = 'No. of Consumers'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 6
            end
            object QRShape35: TQRShape
              Left = 896
              Top = 15
              Width = 2
              Height = 28
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                74.083333333333320000
                2370.666666666667000000
                39.687500000000000000
                5.291666666666667000)
              XLColumn = 0
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel49: TQRLabel
              Left = 1026
              Top = 22
              Width = 53
              Height = 15
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                2714.625000000000000000
                58.208333333333320000
                140.229166666666700000)
              XLColumn = 0
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = 'KW Dmd.'
              Color = clWhite
              Transparent = True
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape36: TQRShape
              Left = 1084
              Top = 15
              Width = 2
              Height = 28
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                74.083333333333320000
                2868.083333333333000000
                39.687500000000000000
                5.291666666666667000)
              XLColumn = 0
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel50: TQRLabel
              Left = 906
              Top = 15
              Width = 43
              Height = 24
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                63.500000000000000000
                2397.125000000000000000
                39.687500000000000000
                113.770833333333300000)
              XLColumn = 0
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = 'Minimum Bills'
              Color = clWhite
              Transparent = True
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape37: TQRShape
              Left = 954
              Top = 15
              Width = 2
              Height = 28
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                74.083333333333320000
                2524.125000000000000000
                39.687500000000000000
                5.291666666666667000)
              XLColumn = 0
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel51: TQRLabel
              Left = 156
              Top = 1
              Width = 264
              Height = 13
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                34.395833333333330000
                412.750000000000000000
                2.645833333333333000
                698.500000000000000000)
              XLColumn = 0
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = 'Residential'
              Color = clWhite
              Transparent = True
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel26: TQRLabel
              Left = 423
              Top = 1
              Width = 174
              Height = 13
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                34.395833333333330000
                1119.187500000000000000
                2.645833333333333000
                460.375000000000000000)
              XLColumn = 0
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = 'Low Voltage'
              Color = clWhite
              Transparent = True
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel27: TQRLabel
              Left = 597
              Top = 1
              Width = 282
              Height = 13
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                34.395833333333330000
                1579.562500000000000000
                2.645833333333333000
                746.125000000000000000)
              XLColumn = 0
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = 'High Voltage'
              Color = clWhite
              Transparent = True
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel28: TQRLabel
              Left = 878
              Top = 1
              Width = 276
              Height = 13
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                34.395833333333330000
                2323.041666666667000000
                2.645833333333333000
                730.250000000000000000)
              XLColumn = 0
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = 'TOTAL'
              Color = clWhite
              Transparent = True
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape159: TQRShape
              Tag = 1000
              Left = 1153
              Top = 1
              Width = 2
              Height = 30
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                79.375000000000000000
                3050.645833333333000000
                2.645833333333333000
                5.291666666666667000)
              XLColumn = 0
              Shape = qrsVertLine
              VertAdjust = 0
            end
          end
          object QRBand5: TQRBand
            Left = 24
            Top = 145
            Width = 1200
            Height = 12
            Frame.DrawTop = True
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = True
            AlignToBottom = False
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              31.750000000000000000
              3175.000000000000000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbDetail
            object QRShape38: TQRShape
              Tag = 1000
              Left = 155
              Top = 0
              Width = 2
              Height = 21
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                56.696428571428570000
                410.104166666666700000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape39: TQRShape
              Tag = 1000
              Left = 201
              Top = 0
              Width = 2
              Height = 21
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                55.562500000000000000
                531.812500000000000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape79: TQRShape
              Tag = 1000
              Left = 247
              Top = 0
              Width = 2
              Height = 21
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                55.562500000000000000
                653.520833333333200000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape80: TQRShape
              Tag = 1000
              Left = 291
              Top = 0
              Width = 2
              Height = 21
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                55.562500000000000000
                769.937500000000000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape81: TQRShape
              Tag = 1000
              Left = 347
              Top = 0
              Width = 2
              Height = 21
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                55.562500000000000000
                918.104166666666800000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape82: TQRShape
              Tag = 1000
              Left = 420
              Top = 0
              Width = 2
              Height = 21
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                55.562500000000000000
                1111.250000000000000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape83: TQRShape
              Tag = 1000
              Left = 521
              Top = 0
              Width = 2
              Height = 21
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                55.562500000000000000
                1378.479166666667000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape84: TQRShape
              Tag = 1000
              Left = 596
              Top = 0
              Width = 2
              Height = 21
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                55.562500000000000000
                1576.916666666667000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape85: TQRShape
              Tag = 1000
              Left = 465
              Top = 0
              Width = 2
              Height = 21
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                55.562500000000000000
                1230.312500000000000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape86: TQRShape
              Tag = 1000
              Left = 711
              Top = 0
              Width = 2
              Height = 21
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                55.562500000000000000
                1881.187500000000000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape87: TQRShape
              Tag = 1000
              Left = 851
              Top = 0
              Width = 2
              Height = 21
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                55.562500000000000000
                2251.604166666667000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape88: TQRShape
              Tag = 1000
              Left = 650
              Top = 0
              Width = 2
              Height = 21
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                55.562500000000000000
                1719.791666666667000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape89: TQRShape
              Tag = 1000
              Left = 774
              Top = 0
              Width = 2
              Height = 21
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                55.562500000000000000
                2047.875000000000000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape90: TQRShape
              Tag = 1000
              Left = 1021
              Top = 0
              Width = 2
              Height = 21
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                55.562500000000000000
                2701.395833333333000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape91: TQRShape
              Tag = 1000
              Left = 896
              Top = 0
              Width = 2
              Height = 21
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                55.562500000000000000
                2370.666666666667000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape92: TQRShape
              Tag = 1000
              Left = 1084
              Top = 0
              Width = 2
              Height = 21
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                55.562500000000000000
                2868.083333333333000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape93: TQRShape
              Tag = 1000
              Left = 954
              Top = 0
              Width = 2
              Height = 21
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                55.562500000000000000
                2524.125000000000000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRDBText21: TQRDBText
              Left = 0
              Top = 1
              Width = 154
              Height = 13
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                34.395833333333330000
                0.000000000000000000
                2.645833333333333000
                407.458333333333300000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = quAccountsReceivable
              DataField = 'desc'
              Transparent = True
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText22: TQRDBText
              Left = 156
              Top = 1
              Width = 45
              Height = 13
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                34.395833333333330000
                412.750000000000000000
                2.645833333333333000
                119.062500000000000000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = quAccountsReceivable
              DataField = 'resBills'
              Mask = '###,##0 '
              Transparent = True
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText23: TQRDBText
              Left = 202
              Top = 1
              Width = 44
              Height = 13
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                34.395833333333330000
                534.458333333333300000
                2.645833333333333000
                116.416666666666700000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = quAccountsReceivable
              DataField = 'resLLBills'
              Mask = '###,##0 '
              Transparent = True
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText24: TQRDBText
              Left = 248
              Top = 1
              Width = 43
              Height = 13
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                34.395833333333330000
                656.166666666666800000
                2.645833333333333000
                113.770833333333300000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = quAccountsReceivable
              DataField = 'resLLKwhr'
              Mask = '###,##0.0 '
              Transparent = True
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText25: TQRDBText
              Left = 292
              Top = 1
              Width = 54
              Height = 13
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                34.395833333333330000
                772.583333333333200000
                2.645833333333333000
                142.875000000000000000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = quAccountsReceivable
              DataField = 'resKwhr'
              Mask = '###,###,##0.0 '
              Transparent = True
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText26: TQRDBText
              Left = 348
              Top = 1
              Width = 72
              Height = 13
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                34.395833333333330000
                920.750000000000000000
                2.645833333333333000
                190.500000000000000000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = quAccountsReceivable
              DataField = 'RES'
              Mask = '###,###,##0.00 '
              Transparent = True
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText27: TQRDBText
              Left = 422
              Top = 1
              Width = 43
              Height = 13
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                34.395833333333330000
                1116.541666666667000000
                2.645833333333333000
                113.770833333333300000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = quAccountsReceivable
              DataField = 'LVBills'
              Mask = '###,##0 '
              Transparent = True
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText28: TQRDBText
              Left = 468
              Top = 1
              Width = 54
              Height = 13
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                34.395833333333330000
                1238.250000000000000000
                2.645833333333333000
                142.875000000000000000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = quAccountsReceivable
              DataField = 'LVKwhr'
              Mask = '###,##0.0 '
              Transparent = True
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText29: TQRDBText
              Left = 523
              Top = 1
              Width = 74
              Height = 13
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                34.395833333333330000
                1383.770833333333000000
                2.645833333333333000
                195.791666666666700000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = quAccountsReceivable
              DataField = 'LV'
              Mask = '###,###,##0.00 '
              Transparent = True
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText30: TQRDBText
              Left = 775
              Top = 1
              Width = 76
              Height = 13
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                34.395833333333330000
                2050.520833333333000000
                2.645833333333333000
                201.083333333333300000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = quAccountsReceivable
              DataField = 'HV'
              Mask = '###,###,##0.00 '
              Transparent = True
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText31: TQRDBText
              Left = 652
              Top = 1
              Width = 59
              Height = 13
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                34.395833333333330000
                1725.083333333333000000
                2.645833333333333000
                156.104166666666700000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = quAccountsReceivable
              DataField = 'HVKwhr'
              Mask = '###,##0.0 '
              Transparent = True
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText16: TQRDBText
              Left = 598
              Top = 1
              Width = 52
              Height = 13
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                34.395833333333330000
                1582.208333333333000000
                2.645833333333333000
                137.583333333333300000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = quAccountsReceivable
              DataField = 'HVBills'
              Mask = '###,##0 '
              Transparent = True
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText17: TQRDBText
              Left = 712
              Top = 1
              Width = 61
              Height = 13
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                34.395833333333330000
                1883.833333333333000000
                2.645833333333333000
                161.395833333333300000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = quAccountsReceivable
              DataField = 'HVKwhrd'
              Mask = '###,##0.0 '
              Transparent = True
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText18: TQRDBText
              Left = 1086
              Top = 1
              Width = 68
              Height = 13
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                34.395833333333330000
                2873.375000000000000000
                2.645833333333333000
                179.916666666666700000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = quAccountsReceivable
              DataField = 'TotalAmount'
              Mask = '###,###,##0.00 '
              Transparent = True
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText19: TQRDBText
              Left = 955
              Top = 1
              Width = 66
              Height = 13
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                34.395833333333330000
                2526.770833333333000000
                2.645833333333333000
                174.625000000000000000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = quAccountsReceivable
              DataField = 'TotalKwhr'
              Mask = '###,##0.0 '
              Transparent = True
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText20: TQRDBText
              Left = 898
              Top = 1
              Width = 56
              Height = 13
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                34.395833333333330000
                2375.958333333333000000
                2.645833333333333000
                148.166666666666700000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = quAccountsReceivable
              DataField = 'resLLBills'
              Mask = '###,###,##0.00 '
              Transparent = True
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText63: TQRDBText
              Left = 854
              Top = 0
              Width = 43
              Height = 13
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                34.395833333333330000
                2259.541666666667000000
                0.000000000000000000
                113.770833333333300000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = quAccountsReceivable
              DataField = 'numBills'
              Mask = '###,##0 '
              Transparent = True
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText64: TQRDBText
              Left = 1023
              Top = 1
              Width = 61
              Height = 13
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                34.395833333333330000
                2706.687500000000000000
                2.645833333333333000
                161.395833333333300000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = quAccountsReceivable
              DataField = 'TotalKwhrD'
              Mask = '###,##0.0 '
              Transparent = True
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRShape160: TQRShape
              Tag = 1000
              Left = 1153
              Top = 0
              Width = 2
              Height = 12
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                31.750000000000000000
                3050.645833333333000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              Shape = qrsVertLine
              VertAdjust = 0
            end
          end
          object QRBand6: TQRBand
            Left = 24
            Top = 157
            Width = 1200
            Height = 12
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
              31.750000000000000000
              3175.000000000000000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbSummary
            object QRShape94: TQRShape
              Tag = 1000
              Left = 155
              Top = 0
              Width = 2
              Height = 7
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                18.898809523809520000
                410.104166666666700000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape95: TQRShape
              Tag = 1000
              Left = 201
              Top = 0
              Width = 2
              Height = 7
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                18.520833333333330000
                531.812500000000000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape96: TQRShape
              Tag = 1000
              Left = 247
              Top = 0
              Width = 2
              Height = 7
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                18.520833333333330000
                653.520833333333200000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape97: TQRShape
              Tag = 1000
              Left = 291
              Top = 0
              Width = 2
              Height = 7
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                18.520833333333330000
                769.937500000000000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape98: TQRShape
              Tag = 1000
              Left = 347
              Top = 0
              Width = 2
              Height = 7
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                18.520833333333330000
                918.104166666666800000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape99: TQRShape
              Tag = 1000
              Left = 420
              Top = 0
              Width = 2
              Height = 7
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                18.520833333333330000
                1111.250000000000000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape100: TQRShape
              Tag = 1000
              Left = 521
              Top = 0
              Width = 2
              Height = 7
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                18.520833333333330000
                1378.479166666667000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape101: TQRShape
              Tag = 1000
              Left = 596
              Top = 0
              Width = 2
              Height = 7
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                18.520833333333330000
                1576.916666666667000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape102: TQRShape
              Tag = 1000
              Left = 465
              Top = 0
              Width = 2
              Height = 7
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                18.520833333333330000
                1230.312500000000000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape103: TQRShape
              Tag = 1000
              Left = 711
              Top = 0
              Width = 2
              Height = 7
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                18.520833333333330000
                1881.187500000000000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape104: TQRShape
              Tag = 1000
              Left = 851
              Top = 0
              Width = 2
              Height = 7
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                18.520833333333330000
                2251.604166666667000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape105: TQRShape
              Tag = 1000
              Left = 650
              Top = 0
              Width = 2
              Height = 7
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                18.520833333333330000
                1719.791666666667000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape106: TQRShape
              Tag = 1000
              Left = 774
              Top = 0
              Width = 2
              Height = 7
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                18.520833333333330000
                2047.875000000000000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape107: TQRShape
              Tag = 1000
              Left = 1021
              Top = 0
              Width = 2
              Height = 7
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                18.520833333333330000
                2701.395833333333000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape108: TQRShape
              Tag = 1000
              Left = 896
              Top = 0
              Width = 2
              Height = 7
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                18.520833333333330000
                2370.666666666667000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape109: TQRShape
              Tag = 1000
              Left = 1084
              Top = 0
              Width = 2
              Height = 7
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                18.520833333333330000
                2868.083333333333000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape110: TQRShape
              Tag = 1000
              Left = 954
              Top = 0
              Width = 2
              Height = 7
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                18.520833333333330000
                2524.125000000000000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRExpr12: TQRExpr
              Left = 348
              Top = 1
              Width = 72
              Height = 13
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                34.395833333333330000
                920.750000000000000000
                2.645833333333333000
                190.500000000000000000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              ResetAfterPrint = False
              Transparent = False
              WordWrap = True
              Expression = 'SUM(quAccountsReceivable.RES)'
              Mask = '###,###,##0.00 '
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr32: TQRExpr
              Left = 523
              Top = 1
              Width = 74
              Height = 13
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                34.395833333333330000
                1383.770833333333000000
                2.645833333333333000
                195.791666666666700000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              ResetAfterPrint = False
              Transparent = False
              WordWrap = True
              Expression = 'SUM(quAccountsReceivable.LV)'
              Mask = '###,###,##0.00 '
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr33: TQRExpr
              Left = 775
              Top = 1
              Width = 76
              Height = 13
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                34.395833333333330000
                2050.520833333333000000
                2.645833333333333000
                201.083333333333300000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              ResetAfterPrint = False
              Transparent = False
              WordWrap = True
              Expression = 'SUM(qPowerSales.HV)'
              Mask = '###,###,##0.00 '
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr13: TQRExpr
              Left = 1087
              Top = -1
              Width = 68
              Height = 13
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                34.395833333333330000
                2876.020833333333000000
                -2.645833333333333000
                179.916666666666700000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              ResetAfterPrint = False
              Transparent = False
              WordWrap = True
              Expression = 'SUM(qPowerSales.TotalAmount) '
              Mask = '###,###,##0.00 '
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel31: TQRLabel
              Left = 61
              Top = 1
              Width = 29
              Height = 14
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                161.395833333333300000
                2.645833333333333000
                76.729166666666670000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'TOTAL'
              Color = clWhite
              Transparent = True
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape161: TQRShape
              Tag = 1000
              Left = 1153
              Top = 0
              Width = 2
              Height = 12
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                31.750000000000000000
                3050.645833333333000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              Shape = qrsVertLine
              VertAdjust = 0
            end
          end
          object QRBand13: TQRBand
            Left = 24
            Top = 24
            Width = 1200
            Height = 76
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            AlignToBottom = False
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = True
            Size.Values = (
              201.083333333333300000
              3175.000000000000000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbTitle
            object QRLabel32: TQRLabel
              Left = 421
              Top = 5
              Width = 357
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1113.895833333333000000
                13.229166666666670000
                944.562500000000000000)
              XLColumn = 0
              Alignment = taCenter
              AlignToBand = True
              AutoSize = True
              AutoStretch = False
              Caption = 'ZAMBOANGA DEL NORTE ELECTRIC COOPERATIVE, INC.'
              Color = clWhite
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
              FontSize = 10
            end
            object QRLabel1: TQRLabel
              Left = -16
              Top = 60
              Width = 48
              Height = 15
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                1524.000000000000000000
                158.750000000000000000
                127.000000000000000000)
              XLColumn = 0
              Alignment = taCenter
              AlignToBand = True
              AutoSize = True
              AutoStretch = False
              Caption = 'QRLabel1'
              Color = clWhite
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
              FontSize = 8
            end
            object QRLabel99: TQRLabel
              Left = 512
              Top = 45
              Width = 176
              Height = 15
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                1354.666666666667000000
                119.062500000000000000
                465.666666666666700000)
              XLColumn = 0
              Alignment = taCenter
              AlignToBand = True
              AutoSize = True
              AutoStretch = False
              Caption = 'UNBUNDLED UNPAID BILLS REPORT'
              Color = clWhite
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
              FontSize = 8
            end
            object QRLabel100: TQRLabel
              Left = -64
              Top = 24
              Width = 144
              Height = 15
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                1397.000000000000000000
                63.500000000000000000
                381.000000000000000000)
              XLColumn = 0
              Alignment = taCenter
              AlignToBand = True
              AutoSize = True
              AutoStretch = False
              Caption = 'General Luna St., Dipolog City'
              Color = clWhite
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
              FontSize = 8
            end
          end
        end
      end
    end
  end
  object DateTimePicker1: TDateTimePicker
    Left = 39
    Top = 25
    Width = 186
    Height = 21
    Date = 41463.586215497690000000
    Time = 41463.586215497690000000
    TabOrder = 1
  end
  object RadioGroup1: TRadioGroup
    Left = 39
    Top = 52
    Width = 186
    Height = 61
    Caption = 'Area Options'
    Columns = 2
    Ctl3D = False
    ItemIndex = 0
    Items.Strings = (
      'Summary'
      'Per Area'
      'Select Area')
    ParentCtl3D = False
    TabOrder = 2
    OnClick = RadioGroup1Click
  end
  object NxButton1: TNxButton
    Left = 39
    Top = 283
    Width = 186
    Caption = 'Print Hardcopy'
    TabOrder = 3
    OnClick = NxButton1Click
  end
  object RadioGroup2: TRadioGroup
    Left = 39
    Top = 225
    Width = 185
    Height = 49
    Caption = 'Status Options'
    Columns = 2
    Ctl3D = False
    ItemIndex = 0
    Items.Strings = (
      'Active'
      'Disco')
    ParentCtl3D = False
    TabOrder = 4
  end
  object CRDBGrid11: TCRDBGrid1
    Left = 40
    Top = 117
    Width = 185
    Height = 106
    DataSource = dsQArea
    Enabled = False
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'area'
        Title.Alignment = taCenter
        Title.Caption = 'Area'
        Width = 27
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'address'
        Title.Alignment = taCenter
        Title.Caption = 'Address'
        Width = 119
        Visible = True
      end>
  end
  object quAccountsReceivable: TMyQuery
    Connection = BillingData.MyConnection1
    SQL.Strings = (
      'Call AccountsReceivables(:conncode,:parea);')
    Left = 216
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'conncode'
      end
      item
        DataType = ftUnknown
        Name = 'parea'
      end>
    object quAccountsReceivableidarub: TStringField
      FieldName = 'idarub'
      Size = 11
    end
    object quAccountsReceivabledesc: TStringField
      FieldName = 'desc'
      Size = 50
    end
    object quAccountsReceivableresBills: TStringField
      FieldName = 'resBills'
      Size = 42
    end
    object quAccountsReceivableresLLBills: TStringField
      FieldName = 'resLLBills'
      Size = 46
    end
    object quAccountsReceivableresLLKwhr: TStringField
      FieldName = 'resLLKwhr'
      Size = 42
    end
    object quAccountsReceivableresKwhr: TStringField
      FieldName = 'resKwhr'
      Size = 42
    end
    object quAccountsReceivableRES: TFloatField
      FieldName = 'RES'
    end
    object quAccountsReceivableLVBills: TStringField
      FieldName = 'LVBills'
      Size = 42
    end
    object quAccountsReceivableLVKwhr: TStringField
      FieldName = 'LVKwhr'
      Size = 42
    end
    object quAccountsReceivableLV: TFloatField
      FieldName = 'LV'
    end
    object quAccountsReceivableHVBills: TStringField
      FieldName = 'HVBills'
      Size = 42
    end
    object quAccountsReceivableHVKwhr: TStringField
      FieldName = 'HVKwhr'
      Size = 42
    end
    object quAccountsReceivableHVKwhrD: TStringField
      FieldName = 'HVKwhrD'
      Size = 42
    end
    object quAccountsReceivableHV: TFloatField
      FieldName = 'HV'
    end
    object quAccountsReceivablenumBills: TStringField
      FieldName = 'numBills'
      Size = 42
    end
    object quAccountsReceivableTotalKwhr: TStringField
      FieldName = 'TotalKwhr'
      Size = 42
    end
    object quAccountsReceivableTotalKwhrD: TStringField
      FieldName = 'TotalKwhrD'
      Size = 42
    end
    object quAccountsReceivableTotalAmount: TFloatField
      FieldName = 'TotalAmount'
    end
  end
  object QArea: TMyQuery
    Connection = BillingData.MyConnection1
    SQL.Strings = (
      'select distinct ifnull(area,0) area, '
      '       case Area '
      '        when '#39'001'#39' then '#39'RIZAL'#39
      '        when '#39'002'#39' then '#39'SIBUTAD'#39
      '        when '#39'003'#39' then '#39'MUTIA'#39
      '        when '#39'004'#39' then '#39'LA LIBERTAD'#39
      '        when '#39'005'#39' then '#39'SERGIO OSME'#209'A'#39
      '        when '#39'006'#39' then '#39'DAPITAN'#39
      '        when '#39'007'#39' then '#39'PI'#209'AN'#39
      '        when '#39'008'#39' then '#39'POLANCO'#39
      '        when '#39'009'#39' then '#39'DIPOLOG NORTH'#39
      '        when '#39'010'#39' then '#39'DIPOLOG SOUTH'#39
      '        when '#39'011'#39' then '#39'KATIPUNAN'#39
      '        when '#39'012'#39' then '#39'ROXAS'#39
      '        when '#39'013'#39' then '#39'MANUKAN'#39
      '        when '#39'014'#39' then '#39'JOSE DALMAN'#39
      '        when '#39'015'#39' then '#39'SINDANGAN'#39
      '        when '#39'016'#39' then '#39'LEON B. POSTIGO'#39
      '        when '#39'017'#39' then '#39'SIAYAN'#39
      '        when '#39'018'#39' then '#39'SALUG'#39
      '        when '#39'019'#39' then '#39'LILOY'#39
      '        when '#39'020'#39' then '#39'LABASON'#39
      '        when '#39'021'#39' then '#39'TAMPILISAN'#39
      '        when '#39'022'#39' then '#39'GODOD'#39
      '        when '#39'023'#39' then '#39'GUTALAC'#39
      '        when '#39'024'#39' then '#39'DAPITAN / PI'#209'AN'#39
      '        when '#39'025'#39' then '#39'KALAWIT'#39
      '        else '#39#39' '
      '       end '
      '       as address'
      'from master where area <>  0')
    Left = 216
    Top = 72
    object QAreaarea: TStringField
      FieldName = 'area'
      FixedChar = True
      Size = 3
    end
    object QAreaaddress: TStringField
      FieldName = 'address'
      Size = 15
    end
  end
  object dsQArea: TMyDataSource
    DataSet = QArea
    Left = 216
    Top = 128
  end
end
