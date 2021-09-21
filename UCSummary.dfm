object UCSummaryForm: TUCSummaryForm
  Left = 233
  Top = 65
  Width = 544
  Height = 375
  Caption = 'Universal Charges Summary'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = -104
    Top = 6
    Width = 1056
    Height = 816
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = DetailTable
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
    Page.Orientation = poLandscape
    Page.PaperSize = Letter
    Page.Values = (
      127
      2159
      127
      2794
      127
      127
      0)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.OutputBin = First
    PrintIfEmpty = True
    SnapToGrid = True
    Units = Inches
    Zoom = 100
    object QRBand1: TQRBand
      Left = 48
      Top = 161
      Width = 960
      Height = 103
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        272.520833333333
        2540)
      BandType = rbDetail
      object QRDBText32: TQRDBText
        Left = 65
        Top = 3
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          171.979166666667
          7.9375
          97.8958333333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DetailTable
        DataField = 'Area'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText33: TQRDBText
        Left = 102
        Top = 3
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          269.875
          7.9375
          97.8958333333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DetailTable
        DataField = 'Book'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText34: TQRDBText
        Left = 139
        Top = 3
        Width = 320
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          367.770833333333
          7.9375
          846.666666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DetailTable
        DataField = 'Address'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText35: TQRDBText
        Left = 459
        Top = 3
        Width = 109
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1214.4375
          7.9375
          288.395833333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DetailTable
        DataField = 'TotalConsumers'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText36: TQRDBText
        Left = 568
        Top = 3
        Width = 109
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1502.83333333333
          7.9375
          288.395833333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DetailTable
        DataField = 'KilowattHour'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText37: TQRDBText
        Left = 677
        Top = 3
        Width = 109
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1791.22916666667
          7.9375
          288.395833333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DetailTable
        DataField = 'KilowattUsed'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText38: TQRDBText
        Left = 786
        Top = 3
        Width = 109
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2079.625
          7.9375
          288.395833333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DetailTable
        DataField = 'TotalBill'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape7: TQRShape
        Left = 0
        Top = 20
        Width = 960
        Height = 41
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          108.479166666667
          0
          52.9166666666667
          2540)
        Shape = qrsRectangle
      end
      object QRShape8: TQRShape
        Left = 0
        Top = 60
        Width = 960
        Height = 41
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          108.479166666667
          0
          158.75
          2540)
        Shape = qrsRectangle
      end
      object QRDBText39: TQRDBText
        Left = 143
        Top = 24
        Width = 117
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          378.354166666667
          63.5
          309.5625)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DetailTable
        DataField = 'GenSysCharge'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText40: TQRDBText
        Left = 260
        Top = 24
        Width = 117
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          687.916666666667
          63.5
          309.5625)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DetailTable
        DataField = 'HostCommCharge'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText41: TQRDBText
        Left = 376
        Top = 24
        Width = 117
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          994.833333333333
          63.5
          309.5625)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DetailTable
        DataField = 'ForexCharge'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText42: TQRDBText
        Left = 493
        Top = 24
        Width = 117
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1304.39583333333
          63.5
          309.5625)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DetailTable
        DataField = 'TCTransSystemCharge'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText43: TQRDBText
        Left = 610
        Top = 24
        Width = 117
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1613.95833333333
          63.5
          309.5625)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DetailTable
        DataField = 'TCDemandCharge'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText44: TQRDBText
        Left = 727
        Top = 24
        Width = 117
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1923.52083333333
          63.5
          309.5625)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DetailTable
        DataField = 'SystemLossCharge'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText45: TQRDBText
        Left = 143
        Top = 42
        Width = 117
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          378.354166666667
          111.125
          309.5625)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DetailTable
        DataField = 'DCDistributionCharge'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText46: TQRDBText
        Left = 260
        Top = 42
        Width = 117
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          687.916666666667
          111.125
          309.5625)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DetailTable
        DataField = 'DCDemandCharge'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText47: TQRDBText
        Left = 376
        Top = 42
        Width = 117
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          994.833333333333
          111.125
          309.5625)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DetailTable
        DataField = 'SCRetCustCharge'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText48: TQRDBText
        Left = 493
        Top = 42
        Width = 117
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1304.39583333333
          111.125
          309.5625)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DetailTable
        DataField = 'SCSupplySysCharge'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText49: TQRDBText
        Left = 610
        Top = 42
        Width = 117
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1613.95833333333
          111.125
          309.5625)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DetailTable
        DataField = 'MCRetailCustCharge'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText50: TQRDBText
        Left = 727
        Top = 42
        Width = 117
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1923.52083333333
          111.125
          309.5625)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DetailTable
        DataField = 'MCSystemCharge'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText51: TQRDBText
        Left = 143
        Top = 63
        Width = 117
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          378.354166666667
          166.6875
          309.5625)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DetailTable
        DataField = 'UCNPCStrandedDebts'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText52: TQRDBText
        Left = 260
        Top = 63
        Width = 117
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          687.916666666667
          166.6875
          309.5625)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DetailTable
        DataField = 'UCNPCStrandedContCost'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText53: TQRDBText
        Left = 376
        Top = 63
        Width = 117
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          994.833333333333
          166.6875
          309.5625)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DetailTable
        DataField = 'UCDUStrandedContCost'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText54: TQRDBText
        Left = 493
        Top = 63
        Width = 117
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1304.39583333333
          166.6875
          309.5625)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DetailTable
        DataField = 'UCME'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText55: TQRDBText
        Left = 610
        Top = 63
        Width = 117
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1613.95833333333
          166.6875
          309.5625)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DetailTable
        DataField = 'UCEqTaxesAndRoyalties'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText56: TQRDBText
        Left = 143
        Top = 81
        Width = 117
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          378.354166666667
          214.3125
          309.5625)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DetailTable
        DataField = 'UCCrossSubRemoval'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText57: TQRDBText
        Left = 260
        Top = 81
        Width = 117
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          687.916666666667
          214.3125
          309.5625)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DetailTable
        DataField = 'ICCrossSubsidyCharge'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText58: TQRDBText
        Left = 376
        Top = 81
        Width = 117
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          994.833333333333
          214.3125
          309.5625)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DetailTable
        DataField = 'PowerActRateRed'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText59: TQRDBText
        Left = 493
        Top = 81
        Width = 117
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1304.39583333333
          214.3125
          309.5625)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DetailTable
        DataField = 'LifelineDiscSubs'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText60: TQRDBText
        Left = 610
        Top = 81
        Width = 117
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1613.95833333333
          214.3125
          309.5625)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DetailTable
        DataField = 'LoanCondo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText61: TQRDBText
        Left = 727
        Top = 63
        Width = 117
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1923.52083333333
          166.6875
          309.5625)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DetailTable
        DataField = 'UCEC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText62: TQRDBText
        Left = 727
        Top = 81
        Width = 117
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1923.52083333333
          214.3125
          309.5625)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DetailTable
        DataField = 'TransformerRental'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRExpr31: TQRExpr
        Left = 847
        Top = 71
        Width = 109
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          2241.02083333333
          187.854166666667
          288.395833333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'OCAmount1+OCAmount2+OCAmount3'
        Mask = '###,###.00'
        FontSize = 8
      end
    end
    object QRBand2: TQRBand
      Left = 48
      Top = 381
      Width = 960
      Height = 24
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        63.5
        2540)
      BandType = rbPageFooter
      object QRSysData5: TQRSysData
        Left = 3
        Top = 2
        Width = 49
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          7.9375
          5.29166666666667
          129.645833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsPageNumber
        Text = 'Page '
        Transparent = False
        FontSize = 10
      end
    end
    object QRBand3: TQRBand
      Left = 48
      Top = 48
      Width = 960
      Height = 80
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        211.666666666667
        2540)
      BandType = rbTitle
      object QRSysData6: TQRSysData
        Left = 413
        Top = 4
        Width = 134
        Height = 28
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          74.0833333333333
          1092.72916666667
          10.5833333333333
          354.541666666667)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        Color = clWhite
        Data = qrsReportTitle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        FontSize = 18
      end
      object QRSysData7: TQRSysData
        Left = 247
        Top = 4
        Width = 465
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          76.7291666666667
          653.520833333333
          10.5833333333333
          1230.3125)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        Color = clWhite
        Data = qrsReportTitle
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        Text = 'Universal Charges Summary'
        Transparent = False
        FontSize = 18
      end
      object QRSysData8: TQRSysData
        Left = 357
        Top = 32
        Width = 246
        Height = 28
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          74.0833333333333
          944.5625
          84.6666666666667
          650.875)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        Color = clWhite
        Data = qrsReportTitle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = 'Area / Route List'
        Transparent = False
        FontSize = 14
      end
      object QRSysData9: TQRSysData
        Left = 374
        Top = 56
        Width = 211
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.8541666666667
          989.541666666667
          148.166666666667
          558.270833333333)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        Color = clWhite
        Data = qrsReportTitle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = 'Billing Month'
        Transparent = False
        FontSize = 14
      end
      object QRSysData10: TQRSysData
        Left = 4
        Top = 4
        Width = 68
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          10.5833333333333
          10.5833333333333
          179.916666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsDateTime
        Transparent = False
        FontSize = 10
      end
    end
    object QRBand4: TQRBand
      Left = 48
      Top = 128
      Width = 960
      Height = 33
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        87.3125
        2540)
      BandType = rbColumnHeader
      object QRLabel38: TQRLabel
        Left = 3
        Top = 5
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          7.9375
          13.2291666666667
          87.3125)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Area'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRLabel39: TQRLabel
        Left = 40
        Top = 5
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          105.833333333333
          13.2291666666667
          87.3125)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Book'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRLabel40: TQRLabel
        Left = 77
        Top = 5
        Width = 124
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          203.729166666667
          13.2291666666667
          328.083333333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Vicinity'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRLabel41: TQRLabel
        Left = 203
        Top = 5
        Width = 62
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          537.104166666667
          13.2291666666667
          164.041666666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Total Cons'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRLabel44: TQRLabel
        Left = 808
        Top = 5
        Width = 109
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2137.83333333333
          13.2291666666667
          288.395833333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Kilowatthours'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRLabel58: TQRLabel
        Left = 270
        Top = 4
        Width = 60
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          714.375
          10.5833333333333
          158.75)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'NPC SD'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRLabel59: TQRLabel
        Left = 334
        Top = 4
        Width = 60
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          883.708333333333
          10.5833333333333
          158.75)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'NPC SCC'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRLabel60: TQRLabel
        Left = 398
        Top = 4
        Width = 60
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          1053.04166666667
          10.5833333333333
          158.75)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'DU'#39's SCC'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRLabel61: TQRLabel
        Left = 463
        Top = 4
        Width = 60
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          1225.02083333333
          10.5833333333333
          158.75)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'ME'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRLabel62: TQRLabel
        Left = 527
        Top = 4
        Width = 60
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          1394.35416666667
          10.5833333333333
          158.75)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Tax/Royalties'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRLabel63: TQRLabel
        Left = 591
        Top = 4
        Width = 60
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          1563.6875
          10.5833333333333
          158.75)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'UCEC'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRLabel64: TQRLabel
        Left = 656
        Top = 4
        Width = 60
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          1735.66666666667
          10.5833333333333
          158.75)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'CSR'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
    end
    object QRBand5: TQRBand
      Left = 48
      Top = 264
      Width = 960
      Height = 117
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        309.5625
        2540)
      BandType = rbSummary
      object QRShape11: TQRShape
        Left = 0
        Top = 24
        Width = 960
        Height = 44
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          116.416666666667
          0
          63.5
          2540)
        Shape = qrsRectangle
      end
      object QRShape12: TQRShape
        Left = 0
        Top = 67
        Width = 960
        Height = 45
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          119.0625
          0
          177.270833333333
          2540)
        Shape = qrsRectangle
      end
      object QRExpr32: TQRExpr
        Left = 143
        Top = 27
        Width = 117
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          378.354166666667
          71.4375
          309.5625)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Color = clWhite
        Master = QuickRep1
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'SUM(GenSysCharge)'
        Mask = '##,###,###.00'
        FontSize = 9
      end
      object QRLabel72: TQRLabel
        Left = 2
        Top = 26
        Width = 138
        Height = 40
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          105.833333333333
          5.29166666666667
          68.7916666666667
          365.125)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Total Basic Charges'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel73: TQRLabel
        Left = 2
        Top = 70
        Width = 138
        Height = 40
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          105.833333333333
          5.29166666666667
          185.208333333333
          365.125)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Total UC'#39's/ADJ'#39's/OC'#39's'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRExpr33: TQRExpr
        Left = 260
        Top = 27
        Width = 117
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          687.916666666667
          71.4375
          309.5625)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Color = clWhite
        Master = QuickRep1
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'SUM(HostCommCharge)'
        Mask = '##,###,###.00'
        FontSize = 9
      end
      object QRExpr34: TQRExpr
        Left = 376
        Top = 27
        Width = 117
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          994.833333333333
          71.4375
          309.5625)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Color = clWhite
        Master = QuickRep1
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'SUM(ForexCharge)'
        Mask = '##,###,###.00'
        FontSize = 9
      end
      object QRExpr35: TQRExpr
        Left = 493
        Top = 27
        Width = 117
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1304.39583333333
          71.4375
          309.5625)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Color = clWhite
        Master = QuickRep1
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'SUM(TCTransSystemCharge)'
        Mask = '##,###,###.00'
        FontSize = 9
      end
      object QRExpr36: TQRExpr
        Left = 610
        Top = 27
        Width = 117
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1613.95833333333
          71.4375
          309.5625)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Color = clWhite
        Master = QuickRep1
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'SUM(TCDemandCharge)'
        Mask = '##,###,###.00'
        FontSize = 9
      end
      object QRExpr37: TQRExpr
        Left = 727
        Top = 27
        Width = 117
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1923.52083333333
          71.4375
          309.5625)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Color = clWhite
        Master = QuickRep1
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'SUM(SystemLossCharge)'
        Mask = '##,###,###.00'
        FontSize = 9
      end
      object QRExpr38: TQRExpr
        Left = 727
        Top = 46
        Width = 117
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1923.52083333333
          121.708333333333
          309.5625)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Color = clWhite
        Master = QuickRep1
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'SUM(MasterTable.MCSystemCharge)'
        Mask = '##,###,###.00'
        FontSize = 9
      end
      object QRExpr39: TQRExpr
        Left = 143
        Top = 46
        Width = 117
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          378.354166666667
          121.708333333333
          309.5625)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Color = clWhite
        Master = QuickRep1
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'SUM(MasterTable.DCDistributionCharge)'
        Mask = '##,###,###.00'
        FontSize = 9
      end
      object QRExpr40: TQRExpr
        Left = 260
        Top = 46
        Width = 117
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          687.916666666667
          121.708333333333
          309.5625)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Color = clWhite
        Master = QuickRep1
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'SUM(MasterTable.DCDemandCharge)'
        Mask = '##,###,###.00'
        FontSize = 9
      end
      object QRExpr41: TQRExpr
        Left = 376
        Top = 46
        Width = 117
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          994.833333333333
          121.708333333333
          309.5625)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Color = clWhite
        Master = QuickRep1
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'SUM(MasterTable.SCRetCustCharge)'
        Mask = '##,###,###.00'
        FontSize = 9
      end
      object QRExpr42: TQRExpr
        Left = 493
        Top = 46
        Width = 117
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1304.39583333333
          121.708333333333
          309.5625)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Color = clWhite
        Master = QuickRep1
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'SUM(MasterTable.SCSupplySysCharge)'
        Mask = '##,###,###.00'
        FontSize = 9
      end
      object QRExpr43: TQRExpr
        Left = 610
        Top = 46
        Width = 117
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1613.95833333333
          121.708333333333
          309.5625)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Color = clWhite
        Master = QuickRep1
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'Sum(MasterTable.MCRetailCustCharge)'
        Mask = '##,###,###.00'
        FontSize = 9
      end
      object QRExpr44: TQRExpr
        Left = 143
        Top = 70
        Width = 117
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          378.354166666667
          185.208333333333
          309.5625)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Color = clWhite
        Master = QuickRep1
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'SUM(MasterTable.UCNPCStrandedDebts)'
        Mask = '##,###,###.00'
        FontSize = 9
      end
      object QRExpr45: TQRExpr
        Left = 260
        Top = 70
        Width = 117
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          687.916666666667
          185.208333333333
          309.5625)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Color = clWhite
        Master = QuickRep1
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'SUM(MasterTable.UCNPCStrandedContCost)'
        Mask = '##,###,###.00'
        FontSize = 9
      end
      object QRExpr46: TQRExpr
        Left = 376
        Top = 70
        Width = 117
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          994.833333333333
          185.208333333333
          309.5625)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Color = clWhite
        Master = QuickRep1
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'SUM(MasterTable.UCDUStrandedContCost)'
        Mask = '##,###,###.00'
        FontSize = 9
      end
      object QRExpr47: TQRExpr
        Left = 493
        Top = 70
        Width = 117
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1304.39583333333
          185.208333333333
          309.5625)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Color = clWhite
        Master = QuickRep1
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'SUM(UCME)'
        Mask = '##,###,###.00'
        FontSize = 9
      end
      object QRExpr48: TQRExpr
        Left = 610
        Top = 70
        Width = 117
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1613.95833333333
          185.208333333333
          309.5625)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Color = clWhite
        Master = QuickRep1
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'SUM(MasterTable.UCEqTaxesAndRoyalties)'
        Mask = '##,###,###.00'
        FontSize = 9
      end
      object QRExpr49: TQRExpr
        Left = 727
        Top = 70
        Width = 117
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1923.52083333333
          185.208333333333
          309.5625)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Color = clWhite
        Master = QuickRep1
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'SUM(UCEC)'
        Mask = '##,###,###.00'
        FontSize = 9
      end
      object QRExpr50: TQRExpr
        Left = 143
        Top = 90
        Width = 117
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          378.354166666667
          238.125
          309.5625)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Color = clWhite
        Master = QuickRep1
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'SUM(MasterTable.UCCrossSubRemoval)'
        Mask = '##,###,###.00'
        FontSize = 9
      end
      object QRExpr51: TQRExpr
        Left = 260
        Top = 90
        Width = 117
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          687.916666666667
          238.125
          309.5625)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Color = clWhite
        Master = QuickRep1
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'SUM(MasterTable.ICCrossSubsidyCharge)'
        Mask = '##,###,###.00'
        FontSize = 9
      end
      object QRExpr52: TQRExpr
        Left = 376
        Top = 90
        Width = 117
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          994.833333333333
          238.125
          309.5625)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Color = clWhite
        Master = QuickRep1
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'SUM(MasterTable.PowerActRateRed)'
        Mask = '##,###,###.00'
        FontSize = 9
      end
      object QRExpr53: TQRExpr
        Left = 493
        Top = 90
        Width = 117
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1304.39583333333
          238.125
          309.5625)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Color = clWhite
        Master = QuickRep1
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'SUM(MasterTable.LifelineDiscSubs)'
        Mask = '##,###,###.00'
        FontSize = 9
      end
      object QRExpr54: TQRExpr
        Left = 610
        Top = 90
        Width = 117
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1613.95833333333
          238.125
          309.5625)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Color = clWhite
        Master = QuickRep1
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'SUM(MasterTable.LoanCondo)'
        Mask = '##,###,###.00'
        FontSize = 9
      end
      object QRExpr55: TQRExpr
        Left = 727
        Top = 90
        Width = 117
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1923.52083333333
          238.125
          309.5625)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Color = clWhite
        Master = QuickRep1
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'SUM(MasterTable.TransformerRental)'
        Mask = '##,###,###.00'
        FontSize = 9
      end
      object QRExpr56: TQRExpr
        Left = 847
        Top = 80
        Width = 109
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2241.02083333333
          211.666666666667
          288.395833333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 
          'Sum(MasterTable.OCAmount1+        MasterTable.OCAmount2+        ' +
          'MasterTable.OCAmount3)'
        Mask = '##,###,###.00'
        FontSize = 9
      end
      object QRExpr57: TQRExpr
        Left = 459
        Top = 4
        Width = 109
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          1214.4375
          10.5833333333333
          288.395833333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Color = clWhite
        Master = QuickRep1
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'SUM(TotalConsumers)'
        Mask = '#,###,###.00'
        FontSize = 9
      end
      object QRLabel74: TQRLabel
        Left = 0
        Top = 4
        Width = 459
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          0
          10.5833333333333
          1214.4375)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Grand Total'
        Color = clBlack
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRExpr58: TQRExpr
        Left = 568
        Top = 4
        Width = 109
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          1502.83333333333
          10.5833333333333
          288.395833333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Color = clWhite
        Master = QuickRep1
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'SUM(Kilowatthour)'
        Mask = '#,###,###.00'
        FontSize = 9
      end
      object QRExpr59: TQRExpr
        Left = 677
        Top = 4
        Width = 109
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          1791.22916666667
          10.5833333333333
          288.395833333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Color = clWhite
        Master = QuickRep1
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'SUM(KilowattUsed)'
        Mask = '#,###,###.00'
        FontSize = 9
      end
      object QRExpr60: TQRExpr
        Left = 786
        Top = 4
        Width = 109
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          2079.625
          10.5833333333333
          288.395833333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Color = clWhite
        Master = QuickRep1
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'SUM(TotalBill)'
        Mask = '##,###,###.00'
        FontSize = 9
      end
    end
  end
  object DetailTable: TTable
    Active = True
    DatabaseName = 'coop'
    TableName = 'SalesByBook.DB'
    Left = 217
    Top = 14
    object DetailTableEntry: TAutoIncField
      FieldName = 'Entry'
      ReadOnly = True
    end
    object DetailTableBillMonth: TStringField
      FieldName = 'BillMonth'
      Size = 4
    end
    object DetailTableArea: TStringField
      FieldName = 'Area'
      Size = 3
    end
    object DetailTableBook: TStringField
      FieldName = 'Book'
      Size = 3
    end
    object DetailTableAddress: TStringField
      FieldName = 'Address'
      Size = 50
    end
    object DetailTableTotalConsumers: TFloatField
      FieldName = 'TotalConsumers'
    end
    object DetailTableKilowattHour: TCurrencyField
      FieldName = 'KilowattHour'
    end
    object DetailTableKilowattUsed: TCurrencyField
      FieldName = 'KilowattUsed'
    end
    object DetailTableGenSysCharge: TCurrencyField
      FieldName = 'GenSysCharge'
    end
    object DetailTableHostCommCharge: TCurrencyField
      FieldName = 'HostCommCharge'
    end
    object DetailTableForexCharge: TCurrencyField
      FieldName = 'ForexCharge'
    end
    object DetailTableTCDemandCharge: TCurrencyField
      FieldName = 'TCDemandCharge'
    end
    object DetailTableTCTransSystemCharge: TCurrencyField
      FieldName = 'TCTransSystemCharge'
    end
    object DetailTableSystemLossCharge: TCurrencyField
      FieldName = 'SystemLossCharge'
    end
    object DetailTableDCDemandCharge: TCurrencyField
      FieldName = 'DCDemandCharge'
    end
    object DetailTableDCDistributionCharge: TCurrencyField
      FieldName = 'DCDistributionCharge'
    end
    object DetailTableSCRetCustCharge: TCurrencyField
      FieldName = 'SCRetCustCharge'
    end
    object DetailTableSCSupplySysCharge: TCurrencyField
      FieldName = 'SCSupplySysCharge'
    end
    object DetailTableMCRetailCustCharge: TCurrencyField
      FieldName = 'MCRetailCustCharge'
    end
    object DetailTableMCSystemCharge: TCurrencyField
      FieldName = 'MCSystemCharge'
    end
    object DetailTableUCNPCStrandedDebts: TCurrencyField
      FieldName = 'UCNPCStrandedDebts'
    end
    object DetailTableUCNPCStrandedContCost: TCurrencyField
      FieldName = 'UCNPCStrandedContCost'
    end
    object DetailTableUCDUStrandedContCost: TCurrencyField
      FieldName = 'UCDUStrandedContCost'
    end
    object DetailTableUCME: TCurrencyField
      FieldName = 'UCME'
    end
    object DetailTableUCEqTaxesAndRoyalties: TCurrencyField
      FieldName = 'UCEqTaxesAndRoyalties'
    end
    object DetailTableUCEC: TCurrencyField
      FieldName = 'UCEC'
    end
    object DetailTableUCCrossSubRemoval: TCurrencyField
      FieldName = 'UCCrossSubRemoval'
    end
    object DetailTableICCrossSubsidyCharge: TCurrencyField
      FieldName = 'ICCrossSubsidyCharge'
    end
    object DetailTablePowerActRateRed: TCurrencyField
      FieldName = 'PowerActRateRed'
    end
    object DetailTableLifelineDiscSubs: TCurrencyField
      FieldName = 'LifelineDiscSubs'
    end
    object DetailTableLoanCondo: TCurrencyField
      FieldName = 'LoanCondo'
    end
    object DetailTableTransformerRental: TCurrencyField
      FieldName = 'TransformerRental'
    end
    object DetailTableOCCode1: TStringField
      FieldName = 'OCCode1'
      Size = 10
    end
    object DetailTableOCAmount1: TCurrencyField
      FieldName = 'OCAmount1'
    end
    object DetailTableOCCode2: TStringField
      FieldName = 'OCCode2'
      Size = 10
    end
    object DetailTableOCAmount2: TCurrencyField
      FieldName = 'OCAmount2'
    end
    object DetailTableOCCode3: TStringField
      FieldName = 'OCCode3'
      Size = 10
    end
    object DetailTableOCAmount3: TCurrencyField
      FieldName = 'OCAmount3'
    end
    object DetailTableTotalBill: TCurrencyField
      FieldName = 'TotalBill'
    end
  end
  object MasterTable: TQuery
    SQL.Strings = (
      'select Area,'
      '       BillMonth,'
      '       sum(UCNPCStrandedDebts) NPCSD,'
      '       sum(UCNPCStrandedContCost) NPCSCC,'
      '       sum(UCDUStrandedContCost) DUSCC,'
      '       sum(UCME) ME,'
      '       sum(UCEQTaxesandRoyalties) Taxes,'
      '       sum(UCEC) EC,'
      '       sum(UCCrossSubRemoval) CSR,'
      '       sum(KilowattHour) TotalKWHR from ":coop:SalesByBook.db"'
      '       where billmonth = '#39'0404'#39' group by area, billmonth')
    Left = 320
    Top = 16
    object MasterTableArea: TStringField
      FieldName = 'Area'
      Origin = '"SalesByBook.DB".Area'
      Size = 3
    end
    object MasterTableBillMonth: TStringField
      FieldName = 'BillMonth'
      Origin = '"SalesByBook.DB".BillMonth'
      Size = 4
    end
    object MasterTableNPCSD: TCurrencyField
      FieldName = 'NPCSD'
      Origin = '"SalesByBook.DB".UCNPCStrandedDebts'
    end
    object MasterTableNPCSCC: TCurrencyField
      FieldName = 'NPCSCC'
      Origin = '"SalesByBook.DB".UCNPCStrandedContCost'
    end
    object MasterTableDUSCC: TCurrencyField
      FieldName = 'DUSCC'
      Origin = '"SalesByBook.DB".UCDUStrandedContCost'
    end
    object MasterTableME: TCurrencyField
      FieldName = 'ME'
      Origin = '"SalesByBook.DB".UCME'
    end
    object MasterTableTaxes: TCurrencyField
      FieldName = 'Taxes'
      Origin = '"SalesByBook.DB".UCEqTaxesAndRoyalties'
    end
    object MasterTableEC: TCurrencyField
      FieldName = 'EC'
      Origin = '"SalesByBook.DB".UCEC'
    end
    object MasterTableCSR: TCurrencyField
      FieldName = 'CSR'
      Origin = '"SalesByBook.DB".UCCrossSubRemoval'
    end
    object MasterTableTotalKWHR: TCurrencyField
      FieldName = 'TotalKWHR'
      Origin = '"SalesByBook.DB".KilowattHour'
    end
  end
end
