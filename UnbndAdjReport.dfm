object UnBnAdjReport: TUnBnAdjReport
  Left = 439
  Top = 110
  BorderStyle = bsSizeToolWin
  Caption = 'Unbundled Adjustment Report'
  ClientHeight = 146
  ClientWidth = 331
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  Scaled = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object qrCurrentUnbundled: TQuickRep
    Left = 198
    Top = 290
    Width = 1248
    Height = 816
    DataSet = qAdjustmentRpt
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
    PrinterSettings.MemoryLimit = 1000000
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
    object QRBand1: TQRBand
      Left = 24
      Top = 112
      Width = 1200
      Height = 45
      Frame.DrawTop = True
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
      object QRLabel1: TQRLabel
        Left = 57
        Top = 15
        Width = 36
        Height = 14
        Size.Values = (
          37.041666666666670000
          150.812500000000000000
          39.687500000000000000
          95.250000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Charges'
        Color = clWhite
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRShape1: TQRShape
        Tag = 1000
        Left = 155
        Top = 0
        Width = 2
        Height = 30
        Size.Values = (
          79.375000000000000000
          410.104166666666700000
          0.000000000000000000
          5.669642857142857000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape2: TQRShape
        Left = 156
        Top = 13
        Width = 998
        Height = 2
        Size.Values = (
          5.291666666666667000
          412.750000000000000000
          34.395833333333330000
          2640.541666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel2: TQRLabel
        Left = 158
        Top = 15
        Width = 43
        Height = 24
        Size.Values = (
          63.500000000000000000
          418.041666666666700000
          39.687500000000000000
          113.770833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'No. of Consumers'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object QRShape3: TQRShape
        Left = 201
        Top = 15
        Width = 2
        Height = 28
        Size.Values = (
          74.083333333333320000
          531.812500000000000000
          39.687500000000000000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel3: TQRLabel
        Left = 204
        Top = 15
        Width = 43
        Height = 24
        Size.Values = (
          63.500000000000000000
          539.750000000000000000
          39.687500000000000000
          113.770833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Minimum Bills'
        Color = clWhite
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRShape4: TQRShape
        Left = 247
        Top = 15
        Width = 2
        Height = 28
        Size.Values = (
          74.083333333333320000
          653.520833333333200000
          39.687500000000000000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel4: TQRLabel
        Left = 250
        Top = 15
        Width = 41
        Height = 24
        Size.Values = (
          63.500000000000000000
          661.458333333333200000
          39.687500000000000000
          108.479166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Minimum KWHr'
        Color = clWhite
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRShape5: TQRShape
        Left = 291
        Top = 15
        Width = 2
        Height = 28
        Size.Values = (
          74.083333333333320000
          769.937500000000000000
          39.687500000000000000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel5: TQRLabel
        Left = 294
        Top = 22
        Width = 53
        Height = 13
        Size.Values = (
          34.395833333333330000
          777.875000000000000000
          58.208333333333320000
          140.229166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'KWHr'
        Color = clWhite
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRShape6: TQRShape
        Left = 347
        Top = 15
        Width = 2
        Height = 28
        Size.Values = (
          74.083333333333320000
          918.104166666666800000
          39.687500000000000000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel6: TQRLabel
        Left = 355
        Top = 22
        Width = 62
        Height = 13
        Size.Values = (
          34.395833333333330000
          939.270833333333200000
          58.208333333333320000
          164.041666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Amount'
        Color = clWhite
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRShape7: TQRShape
        Tag = 1000
        Left = 420
        Top = 0
        Width = 2
        Height = 30
        Size.Values = (
          79.375000000000000000
          1111.250000000000000000
          0.000000000000000000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel7: TQRLabel
        Left = 468
        Top = 22
        Width = 53
        Height = 13
        Size.Values = (
          34.395833333333330000
          1238.250000000000000000
          58.208333333333320000
          140.229166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'KWHr'
        Color = clWhite
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRShape8: TQRShape
        Left = 521
        Top = 15
        Width = 2
        Height = 28
        Size.Values = (
          74.083333333333320000
          1378.479166666667000000
          39.687500000000000000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel8: TQRLabel
        Left = 523
        Top = 22
        Width = 74
        Height = 13
        Size.Values = (
          34.395833333333330000
          1383.770833333333000000
          58.208333333333320000
          195.791666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Amount'
        Color = clWhite
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRShape9: TQRShape
        Tag = 1000
        Left = 596
        Top = 0
        Width = 2
        Height = 30
        Size.Values = (
          79.375000000000000000
          1576.916666666667000000
          0.000000000000000000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel9: TQRLabel
        Left = 422
        Top = 15
        Width = 43
        Height = 24
        Size.Values = (
          63.500000000000000000
          1116.541666666667000000
          39.687500000000000000
          113.770833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'No. of Consumers'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object QRShape10: TQRShape
        Left = 465
        Top = 15
        Width = 2
        Height = 28
        Size.Values = (
          74.083333333333320000
          1230.312500000000000000
          39.687500000000000000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel10: TQRLabel
        Left = 655
        Top = 22
        Width = 53
        Height = 13
        Size.Values = (
          34.395833333333330000
          1733.020833333333000000
          58.208333333333320000
          140.229166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'KWHr'
        Color = clWhite
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRShape11: TQRShape
        Left = 711
        Top = 15
        Width = 2
        Height = 28
        Size.Values = (
          74.083333333333320000
          1881.187500000000000000
          39.687500000000000000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel11: TQRLabel
        Left = 777
        Top = 22
        Width = 74
        Height = 13
        Size.Values = (
          34.395833333333330000
          2055.812500000000000000
          58.208333333333320000
          195.791666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Amount'
        Color = clWhite
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRShape12: TQRShape
        Tag = 1000
        Left = 851
        Top = 0
        Width = 2
        Height = 30
        Size.Values = (
          79.375000000000000000
          2251.604166666667000000
          0.000000000000000000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel12: TQRLabel
        Left = 598
        Top = 15
        Width = 52
        Height = 24
        Size.Values = (
          63.500000000000000000
          1582.208333333333000000
          39.687500000000000000
          137.583333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'No. of Consumers'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object QRShape13: TQRShape
        Left = 650
        Top = 15
        Width = 2
        Height = 28
        Size.Values = (
          74.083333333333320000
          1719.791666666667000000
          39.687500000000000000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel13: TQRLabel
        Left = 716
        Top = 22
        Width = 53
        Height = 13
        Size.Values = (
          34.395833333333330000
          1894.416666666667000000
          58.208333333333320000
          140.229166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'KW Dmd.'
        Color = clWhite
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRShape14: TQRShape
        Left = 774
        Top = 15
        Width = 2
        Height = 28
        Size.Values = (
          74.083333333333320000
          2047.875000000000000000
          39.687500000000000000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel14: TQRLabel
        Left = 966
        Top = 22
        Width = 53
        Height = 15
        Size.Values = (
          39.687500000000000000
          2555.875000000000000000
          58.208333333333320000
          140.229166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'KWHr'
        Color = clWhite
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRShape15: TQRShape
        Left = 1021
        Top = 15
        Width = 2
        Height = 28
        Size.Values = (
          74.083333333333320000
          2701.395833333333000000
          39.687500000000000000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel15: TQRLabel
        Left = 1088
        Top = 22
        Width = 62
        Height = 15
        Size.Values = (
          39.687500000000000000
          2878.666666666667000000
          58.208333333333320000
          164.041666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Amount'
        Color = clWhite
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRLabel16: TQRLabel
        Left = 853
        Top = 15
        Width = 43
        Height = 24
        Size.Values = (
          63.500000000000000000
          2256.895833333333000000
          39.687500000000000000
          113.770833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'No. of Consumers'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object QRShape16: TQRShape
        Left = 896
        Top = 15
        Width = 2
        Height = 28
        Size.Values = (
          74.083333333333320000
          2370.666666666667000000
          39.687500000000000000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel17: TQRLabel
        Left = 1026
        Top = 22
        Width = 53
        Height = 15
        Size.Values = (
          39.687500000000000000
          2714.625000000000000000
          58.208333333333320000
          140.229166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'KW Dmd.'
        Color = clWhite
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRShape17: TQRShape
        Left = 1084
        Top = 15
        Width = 2
        Height = 28
        Size.Values = (
          74.083333333333320000
          2868.083333333333000000
          39.687500000000000000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel18: TQRLabel
        Left = 906
        Top = 15
        Width = 43
        Height = 24
        Size.Values = (
          63.500000000000000000
          2397.125000000000000000
          39.687500000000000000
          113.770833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Minimum Bills'
        Color = clWhite
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRShape18: TQRShape
        Left = 954
        Top = 15
        Width = 2
        Height = 28
        Size.Values = (
          74.083333333333320000
          2524.125000000000000000
          39.687500000000000000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel19: TQRLabel
        Left = 156
        Top = 1
        Width = 264
        Height = 13
        Size.Values = (
          34.395833333333330000
          412.750000000000000000
          2.645833333333333000
          698.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Residential'
        Color = clWhite
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRLabel20: TQRLabel
        Left = 423
        Top = 1
        Width = 174
        Height = 13
        Size.Values = (
          34.395833333333330000
          1119.187500000000000000
          2.645833333333333000
          460.375000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Low Voltage'
        Color = clWhite
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRLabel21: TQRLabel
        Left = 597
        Top = 1
        Width = 282
        Height = 13
        Size.Values = (
          34.395833333333330000
          1579.562500000000000000
          2.645833333333333000
          746.125000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'High Voltage'
        Color = clWhite
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRLabel22: TQRLabel
        Left = 878
        Top = 1
        Width = 276
        Height = 13
        Size.Values = (
          34.395833333333330000
          2323.041666666667000000
          2.645833333333333000
          730.250000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'TOTAL'
        Color = clWhite
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRShape19: TQRShape
        Tag = 1000
        Left = 1153
        Top = 1
        Width = 2
        Height = 30
        Size.Values = (
          79.375000000000000000
          3050.645833333333000000
          2.645833333333333000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
    end
    object QRBand3: TQRBand
      Left = 24
      Top = 169
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
      object QRShape38: TQRShape
        Tag = 1000
        Left = 155
        Top = 0
        Width = 2
        Height = 7
        Size.Values = (
          18.898809523809520000
          410.104166666666700000
          0.000000000000000000
          5.669642857142857000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape39: TQRShape
        Tag = 1000
        Left = 201
        Top = 0
        Width = 2
        Height = 7
        Size.Values = (
          18.520833333333330000
          531.812500000000000000
          0.000000000000000000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape40: TQRShape
        Tag = 1000
        Left = 247
        Top = 0
        Width = 2
        Height = 7
        Size.Values = (
          18.520833333333330000
          653.520833333333200000
          0.000000000000000000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape41: TQRShape
        Tag = 1000
        Left = 291
        Top = 0
        Width = 2
        Height = 7
        Size.Values = (
          18.520833333333330000
          769.937500000000000000
          0.000000000000000000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape42: TQRShape
        Tag = 1000
        Left = 347
        Top = 0
        Width = 2
        Height = 7
        Size.Values = (
          18.520833333333330000
          918.104166666666800000
          0.000000000000000000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape43: TQRShape
        Tag = 1000
        Left = 420
        Top = 0
        Width = 2
        Height = 7
        Size.Values = (
          18.520833333333330000
          1111.250000000000000000
          0.000000000000000000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape44: TQRShape
        Tag = 1000
        Left = 521
        Top = 0
        Width = 2
        Height = 7
        Size.Values = (
          18.520833333333330000
          1378.479166666667000000
          0.000000000000000000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape45: TQRShape
        Tag = 1000
        Left = 596
        Top = 0
        Width = 2
        Height = 7
        Size.Values = (
          18.520833333333330000
          1576.916666666667000000
          0.000000000000000000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape46: TQRShape
        Tag = 1000
        Left = 465
        Top = 0
        Width = 2
        Height = 7
        Size.Values = (
          18.520833333333330000
          1230.312500000000000000
          0.000000000000000000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape47: TQRShape
        Tag = 1000
        Left = 711
        Top = 0
        Width = 2
        Height = 7
        Size.Values = (
          18.520833333333330000
          1881.187500000000000000
          0.000000000000000000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape48: TQRShape
        Tag = 1000
        Left = 851
        Top = 0
        Width = 2
        Height = 7
        Size.Values = (
          18.520833333333330000
          2251.604166666667000000
          0.000000000000000000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape49: TQRShape
        Tag = 1000
        Left = 650
        Top = 0
        Width = 2
        Height = 7
        Size.Values = (
          18.520833333333330000
          1719.791666666667000000
          0.000000000000000000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape50: TQRShape
        Tag = 1000
        Left = 774
        Top = 0
        Width = 2
        Height = 7
        Size.Values = (
          18.520833333333330000
          2047.875000000000000000
          0.000000000000000000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape51: TQRShape
        Tag = 1000
        Left = 1021
        Top = 0
        Width = 2
        Height = 7
        Size.Values = (
          18.520833333333330000
          2701.395833333333000000
          0.000000000000000000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape52: TQRShape
        Tag = 1000
        Left = 896
        Top = 0
        Width = 2
        Height = 7
        Size.Values = (
          18.520833333333330000
          2370.666666666667000000
          0.000000000000000000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape53: TQRShape
        Tag = 1000
        Left = 1084
        Top = 0
        Width = 2
        Height = 7
        Size.Values = (
          18.520833333333330000
          2868.083333333333000000
          0.000000000000000000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape54: TQRShape
        Tag = 1000
        Left = 954
        Top = 0
        Width = 2
        Height = 7
        Size.Values = (
          18.520833333333330000
          2524.125000000000000000
          0.000000000000000000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRExpr1: TQRExpr
        Left = 347
        Top = 1
        Width = 72
        Height = 13
        Size.Values = (
          34.395833333333330000
          918.104166666666700000
          2.645833333333333000
          190.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        Expression = 'SUM(qAdjustmentRpt.RES2)'
        Mask = '###,###,##0.00;(###,###,##0.00 )'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRExpr2: TQRExpr
        Left = 523
        Top = 1
        Width = 74
        Height = 13
        Size.Values = (
          34.395833333333330000
          1383.770833333333000000
          2.645833333333333000
          195.791666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        Expression = 'SUM(qAdjustmentRpt.LV2)'
        Mask = '###,###,##0.00;(###,###,##0.00) '
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRExpr3: TQRExpr
        Left = 773
        Top = 1
        Width = 76
        Height = 13
        Size.Values = (
          34.395833333333330000
          2045.229166666667000000
          2.645833333333333000
          201.083333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        Expression = 'SUM(qAdjustmentRpt.HV2)'
        Mask = '###,###,##0.00;(###,###,##0.00)'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRExpr4: TQRExpr
        Left = 1085
        Top = -1
        Width = 68
        Height = 13
        Size.Values = (
          34.395833333333330000
          2870.729166666667000000
          -2.645833333333333000
          179.916666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        Expression = 'SUM(qAdjustmentRpt.TotalAmount2) '
        Mask = '###,###,##0.00;(###,###,##0.00)'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRLabel24: TQRLabel
        Left = 61
        Top = 1
        Width = 29
        Height = 14
        Size.Values = (
          37.041666666666670000
          161.395833333333300000
          2.645833333333333000
          76.729166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'TOTAL'
        Color = clWhite
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRShape55: TQRShape
        Tag = 1000
        Left = 1153
        Top = 0
        Width = 2
        Height = 12
        Size.Values = (
          31.750000000000000000
          3050.645833333333000000
          0.000000000000000000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
    end
    object QRBand4: TQRBand
      Left = 24
      Top = 24
      Width = 1200
      Height = 88
      AlignToBottom = False
      BeforePrint = QRBand4BeforePrint
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        232.833333333333300000
        3175.000000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
      object QRLabel25: TQRLabel
        Left = 421
        Top = 5
        Width = 357
        Height = 17
        Size.Values = (
          44.979166666666670000
          1113.895833333333000000
          13.229166666666670000
          944.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = True
        Caption = 'ZAMBOANGA DEL NORTE ELECTRIC COOPERATIVE, INC.'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel26: TQRLabel
        Left = 512
        Top = 39
        Width = 175
        Height = 15
        Size.Values = (
          39.687500000000000000
          1354.666666666667000000
          103.187500000000000000
          463.020833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = True
        Caption = 'UNBUNDLED ADJUSTMENT REPORT'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel27: TQRLabel
        Left = 528
        Top = 23
        Width = 144
        Height = 15
        Size.Values = (
          39.687500000000000000
          1397.000000000000000000
          60.854166666666670000
          381.000000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = True
        Caption = 'General Luna St., Dipolog City'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object qrlCUFDMonth: TQRLabel
        Left = 576
        Top = 60
        Width = 48
        Height = 15
        Size.Values = (
          39.687500000000000000
          1524.000000000000000000
          158.750000000000000000
          127.000000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = True
        Caption = 'QRLabel1'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel23: TQRLabel
        Left = 567
        Top = 71
        Width = 65
        Height = 17
        Size.Values = (
          44.979166666666670000
          1500.187500000000000000
          187.854166666666700000
          171.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        Caption = 'QRLabel23'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
    end
    object QRBand2: TQRBand
      Left = 24
      Top = 157
      Width = 1200
      Height = 12
      Frame.DrawTop = True
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
      object QRShape20: TQRShape
        Tag = 1000
        Left = 155
        Top = 0
        Width = 2
        Height = 21
        Size.Values = (
          56.696428571428570000
          410.104166666666700000
          0.000000000000000000
          5.669642857142857000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape21: TQRShape
        Tag = 1000
        Left = 201
        Top = 0
        Width = 2
        Height = 21
        Size.Values = (
          55.562500000000000000
          531.812500000000000000
          0.000000000000000000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape22: TQRShape
        Tag = 1000
        Left = 247
        Top = 0
        Width = 2
        Height = 21
        Size.Values = (
          55.562500000000000000
          653.520833333333200000
          0.000000000000000000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape23: TQRShape
        Tag = 1000
        Left = 291
        Top = 0
        Width = 2
        Height = 21
        Size.Values = (
          55.562500000000000000
          769.937500000000000000
          0.000000000000000000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape24: TQRShape
        Tag = 1000
        Left = 347
        Top = 0
        Width = 2
        Height = 21
        Size.Values = (
          55.562500000000000000
          918.104166666666800000
          0.000000000000000000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape25: TQRShape
        Tag = 1000
        Left = 420
        Top = 0
        Width = 2
        Height = 21
        Size.Values = (
          55.562500000000000000
          1111.250000000000000000
          0.000000000000000000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape26: TQRShape
        Tag = 1000
        Left = 521
        Top = 0
        Width = 2
        Height = 21
        Size.Values = (
          55.562500000000000000
          1378.479166666667000000
          0.000000000000000000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape27: TQRShape
        Tag = 1000
        Left = 596
        Top = 0
        Width = 2
        Height = 21
        Size.Values = (
          55.562500000000000000
          1576.916666666667000000
          0.000000000000000000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape28: TQRShape
        Tag = 1000
        Left = 465
        Top = 0
        Width = 2
        Height = 21
        Size.Values = (
          55.562500000000000000
          1230.312500000000000000
          0.000000000000000000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape29: TQRShape
        Tag = 1000
        Left = 711
        Top = 0
        Width = 2
        Height = 21
        Size.Values = (
          55.562500000000000000
          1881.187500000000000000
          0.000000000000000000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape30: TQRShape
        Tag = 1000
        Left = 851
        Top = 0
        Width = 2
        Height = 21
        Size.Values = (
          55.562500000000000000
          2251.604166666667000000
          0.000000000000000000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape31: TQRShape
        Tag = 1000
        Left = 650
        Top = 0
        Width = 2
        Height = 21
        Size.Values = (
          55.562500000000000000
          1719.791666666667000000
          0.000000000000000000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape32: TQRShape
        Tag = 1000
        Left = 774
        Top = 0
        Width = 2
        Height = 21
        Size.Values = (
          55.562500000000000000
          2047.875000000000000000
          0.000000000000000000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape33: TQRShape
        Tag = 1000
        Left = 1021
        Top = 0
        Width = 2
        Height = 21
        Size.Values = (
          55.562500000000000000
          2701.395833333333000000
          0.000000000000000000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape34: TQRShape
        Tag = 1000
        Left = 896
        Top = 0
        Width = 2
        Height = 21
        Size.Values = (
          55.562500000000000000
          2370.666666666667000000
          0.000000000000000000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape35: TQRShape
        Tag = 1000
        Left = 1084
        Top = 0
        Width = 2
        Height = 21
        Size.Values = (
          55.562500000000000000
          2868.083333333333000000
          0.000000000000000000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape36: TQRShape
        Tag = 1000
        Left = 954
        Top = 0
        Width = 2
        Height = 21
        Size.Values = (
          55.562500000000000000
          2524.125000000000000000
          0.000000000000000000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRDBText1: TQRDBText
        Left = 0
        Top = 1
        Width = 154
        Height = 13
        Size.Values = (
          34.395833333333330000
          0.000000000000000000
          2.645833333333333000
          407.458333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = qAdjustmentRpt
        DataField = 'desc'
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 7
      end
      object QRDBText2: TQRDBText
        Left = 151
        Top = 0
        Width = 45
        Height = 13
        Size.Values = (
          34.395833333333330000
          399.520833333333300000
          0.000000000000000000
          119.062500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = qAdjustmentRpt
        DataField = 'resBills'
        Mask = '###,##0'
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 7
      end
      object QRDBText3: TQRDBText
        Left = 202
        Top = 1
        Width = 44
        Height = 13
        Size.Values = (
          34.395833333333330000
          534.458333333333300000
          2.645833333333333000
          116.416666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = qAdjustmentRpt
        DataField = 'resLLBills'
        Mask = '###,##0'
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 7
      end
      object QRDBText4: TQRDBText
        Left = 247
        Top = 1
        Width = 43
        Height = 13
        Size.Values = (
          34.395833333333330000
          653.520833333333300000
          2.645833333333333000
          113.770833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = qAdjustmentRpt
        DataField = 'resLLKwhr'
        Mask = '###,##0.0'
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 7
      end
      object QRDBText5: TQRDBText
        Left = 291
        Top = 1
        Width = 54
        Height = 13
        Size.Values = (
          34.395833333333330000
          769.937500000000000000
          2.645833333333333000
          142.875000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = qAdjustmentRpt
        DataField = 'resKwhr'
        Mask = '###,###,##0.0'
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 7
      end
      object QRDBText6: TQRDBText
        Left = 347
        Top = 1
        Width = 72
        Height = 13
        Size.Values = (
          34.395833333333330000
          918.104166666666700000
          2.645833333333333000
          190.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = qAdjustmentRpt
        DataField = 'RES'
        Mask = '#,###,##0.00;(#,###,##0.00)'
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 7
      end
      object QRDBText7: TQRDBText
        Left = 421
        Top = 1
        Width = 43
        Height = 13
        Size.Values = (
          34.395833333333330000
          1113.895833333333000000
          2.645833333333333000
          113.770833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = qAdjustmentRpt
        DataField = 'LVBills'
        Mask = '###,##0'
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 7
      end
      object QRDBText8: TQRDBText
        Left = 466
        Top = 1
        Width = 54
        Height = 13
        Size.Values = (
          34.395833333333330000
          1232.958333333333000000
          2.645833333333333000
          142.875000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = qAdjustmentRpt
        DataField = 'LVKwhr'
        Mask = '###,##0.0'
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 7
      end
      object QRDBText9: TQRDBText
        Left = 522
        Top = 1
        Width = 74
        Height = 13
        Size.Values = (
          34.395833333333330000
          1381.125000000000000000
          2.645833333333333000
          195.791666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = qAdjustmentRpt
        DataField = 'LV'
        Mask = '###,###,##0.00;(###,###,##0.00)'
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 7
      end
      object QRDBText10: TQRDBText
        Left = 773
        Top = 0
        Width = 76
        Height = 13
        Size.Values = (
          34.395833333333330000
          2045.229166666667000000
          0.000000000000000000
          201.083333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = qAdjustmentRpt
        DataField = 'HV'
        Mask = '###,###,##0.00;(###,###,##0.00)'
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 7
      end
      object QRDBText11: TQRDBText
        Left = 651
        Top = 1
        Width = 59
        Height = 13
        Size.Values = (
          34.395833333333330000
          1722.437500000000000000
          2.645833333333333000
          156.104166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = qAdjustmentRpt
        DataField = 'HVKwhr'
        Mask = '###,##0.0'
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 7
      end
      object QRDBText12: TQRDBText
        Left = 597
        Top = 1
        Width = 52
        Height = 13
        Size.Values = (
          34.395833333333330000
          1579.562500000000000000
          2.645833333333333000
          137.583333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = qAdjustmentRpt
        DataField = 'HVBills'
        Mask = '###,##0'
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 7
      end
      object QRDBText13: TQRDBText
        Left = 711
        Top = 1
        Width = 61
        Height = 13
        Size.Values = (
          34.395833333333330000
          1881.187500000000000000
          2.645833333333333000
          161.395833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = qAdjustmentRpt
        DataField = 'HVKwhrd'
        Mask = '###,##0.0'
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 7
      end
      object QRDBText14: TQRDBText
        Left = 1084
        Top = 1
        Width = 68
        Height = 13
        Size.Values = (
          34.395833333333330000
          2868.083333333333000000
          2.645833333333333000
          179.916666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = qAdjustmentRpt
        DataField = 'TotalAmount'
        Mask = '###,###,##0.00;(###,###,##0.00)'
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 7
      end
      object QRDBText15: TQRDBText
        Left = 954
        Top = 2
        Width = 66
        Height = 13
        Size.Values = (
          34.395833333333330000
          2524.125000000000000000
          5.291666666666667000
          174.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = qAdjustmentRpt
        DataField = 'TotalKwhr'
        Mask = '###,##0.0'
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 7
      end
      object QRDBText16: TQRDBText
        Left = 897
        Top = 1
        Width = 56
        Height = 13
        Size.Values = (
          34.395833333333330000
          2373.312500000000000000
          2.645833333333333000
          148.166666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = qAdjustmentRpt
        DataField = 'resLLBills'
        Mask = '###,###,##0.00'
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 7
      end
      object QRDBText17: TQRDBText
        Left = 852
        Top = 1
        Width = 43
        Height = 13
        Size.Values = (
          34.395833333333330000
          2254.250000000000000000
          2.645833333333333000
          113.770833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = qAdjustmentRpt
        DataField = 'numBills'
        Mask = '###,##0'
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 7
      end
      object QRDBText18: TQRDBText
        Left = 1022
        Top = 1
        Width = 61
        Height = 13
        Size.Values = (
          34.395833333333330000
          2704.041666666667000000
          2.645833333333333000
          161.395833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = qAdjustmentRpt
        DataField = 'TotalKwhrD'
        Mask = '###,##0.0'
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 7
      end
      object QRShape37: TQRShape
        Tag = 1000
        Left = 1153
        Top = 0
        Width = 2
        Height = 12
        Size.Values = (
          31.750000000000000000
          3050.645833333333000000
          0.000000000000000000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
    end
  end
  object Panel1: TPanel
    Left = 11
    Top = -4
    Width = 308
    Height = 265
    Align = alCustom
    BevelInner = bvLowered
    BevelWidth = 3
    Constraints.MinHeight = 265
    Constraints.MinWidth = 308
    TabOrder = 0
    object pLateBill: TPanel
      Left = 6
      Top = 6
      Width = 296
      Height = 59
      Align = alTop
      TabOrder = 0
      object Label1: TLabel
        Left = 123
        Top = 4
        Width = 73
        Height = 13
        Alignment = taCenter
        Caption = 'Coverage Date'
      end
      object dtpDateFrom: TDateTimePicker
        Left = 52
        Top = 23
        Width = 100
        Height = 21
        Date = 40941.706271261570000000
        Time = 40941.706271261570000000
        TabOrder = 0
      end
      object dtpDateTo: TDateTimePicker
        Left = 176
        Top = 25
        Width = 100
        Height = 21
        Date = 40941.706308310180000000
        Time = 40941.706308310180000000
        TabOrder = 1
      end
    end
    object Panel2: TPanel
      Left = 6
      Top = 65
      Width = 296
      Height = 41
      Align = alTop
      TabOrder = 1
      object rbSummary: TRadioButton
        Left = 43
        Top = 8
        Width = 116
        Height = 17
        Caption = 'OverAll Unbundled'
        Checked = True
        TabOrder = 0
        TabStop = True
      end
      object PerArea: TRadioButton
        Left = 181
        Top = 6
        Width = 70
        Height = 17
        Caption = 'Per Area'
        TabOrder = 1
      end
    end
    object Panel4: TPanel
      Left = 6
      Top = 106
      Width = 296
      Height = 31
      Align = alTop
      Caption = 'Print'
      TabOrder = 2
      object btnPrint: TButton
        Left = 1
        Top = 1
        Width = 294
        Height = 29
        Align = alClient
        Caption = 'PRINT'
        TabOrder = 0
        OnClick = btnPrintClick
      end
    end
  end
  object Panel6: TPanel
    Left = 443
    Top = -55
    Width = 427
    Height = 265
    BevelInner = bvLowered
    BevelWidth = 3
    TabOrder = 1
    Visible = False
    object Label4: TLabel
      Left = 18
      Top = 14
      Width = 59
      Height = 13
      Caption = 'Prepared By'
    end
    object Position: TLabel
      Left = 18
      Top = 38
      Width = 37
      Height = 13
      Caption = 'Position'
    end
    object Label5: TLabel
      Left = 18
      Top = 63
      Width = 56
      Height = 13
      Caption = 'Checked By'
    end
    object Label6: TLabel
      Left = 18
      Top = 88
      Width = 37
      Height = 13
      Caption = 'Position'
    end
    object Label7: TLabel
      Left = 18
      Top = 113
      Width = 51
      Height = 13
      Caption = 'Verified By'
    end
    object Label8: TLabel
      Left = 18
      Top = 138
      Width = 37
      Height = 13
      Caption = 'Position'
    end
    object Label9: TLabel
      Left = 18
      Top = 163
      Width = 56
      Height = 13
      Caption = 'Certified By'
    end
    object Label10: TLabel
      Left = 18
      Top = 188
      Width = 37
      Height = 13
      Caption = 'Position'
    end
    object Label11: TLabel
      Left = 18
      Top = 213
      Width = 57
      Height = 13
      Caption = 'Attested By'
    end
    object Label12: TLabel
      Left = 18
      Top = 238
      Width = 37
      Height = 13
      Caption = 'Position'
    end
    object DBEdit1: TDBEdit
      Left = 83
      Top = 11
      Width = 311
      Height = 21
      CharCase = ecUpperCase
      DataField = 'preparedby'
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 83
      Top = 35
      Width = 311
      Height = 21
      DataField = 'preparedpos'
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 83
      Top = 60
      Width = 311
      Height = 21
      CharCase = ecUpperCase
      DataField = 'checkby'
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 81
      Top = 85
      Width = 311
      Height = 21
      DataField = 'checkpos'
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 83
      Top = 110
      Width = 311
      Height = 21
      CharCase = ecUpperCase
      DataField = 'verifiedby'
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 83
      Top = 137
      Width = 311
      Height = 21
      DataField = 'verifiedpos'
      TabOrder = 5
    end
    object DBEdit7: TDBEdit
      Left = 83
      Top = 160
      Width = 311
      Height = 21
      CharCase = ecUpperCase
      DataField = 'certifiedby'
      TabOrder = 6
    end
    object DBEdit8: TDBEdit
      Left = 83
      Top = 185
      Width = 311
      Height = 21
      Color = clRed
      DataField = 'certifiedpos'
      TabOrder = 7
    end
    object DBEdit9: TDBEdit
      Left = 83
      Top = 210
      Width = 311
      Height = 21
      CharCase = ecUpperCase
      DataField = 'attestedby'
      TabOrder = 8
    end
    object DBEdit10: TDBEdit
      Left = 83
      Top = 235
      Width = 311
      Height = 21
      DataField = 'attestedpos'
      TabOrder = 9
    end
    object Button1: TButton
      Left = 397
      Top = 6
      Width = 24
      Height = 253
      Align = alRight
      Caption = 'D  O  N  E'
      TabOrder = 10
      WordWrap = True
      OnClick = Button1Click
    end
  end
  object QRCompositeReport1: TQRCompositeReport
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
    PrinterSettings.MemoryLimit = 1000000
    PrinterSettings.PrintQuality = 0
    PrinterSettings.Collate = 0
    PrinterSettings.ColorOption = 0
    PrinterSettings.Orientation = poPortrait
    PrinterSettings.PaperSize = Letter
    PageCount = 0
    Left = 1056
    Top = 16
  end
  object qAdjustmentRptAreaBook: TMyQuery
    Connection = BillingData.MyConnection1
    SQL.Strings = (
      'call adjustment(:BM,:RT,:DF,:DT)')
    Left = 240
    Top = 280
    ParamData = <
      item
        DataType = ftString
        Name = 'BM'
        Value = '1011'
      end
      item
        DataType = ftUnknown
        Name = 'RT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DF'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DT'
        Value = nil
      end>
  end
  object qAdjustmentRpt: TMyQuery
    Connection = BillingData.MyConnection1
    SQL.Strings = (
      'call adjustment(:RT,:A,:DF,:DT)')
    Left = 72
    Top = 280
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'RT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'A'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DF'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DT'
        Value = nil
      end>
  end
end
