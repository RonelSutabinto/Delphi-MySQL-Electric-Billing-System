object frmUnbundledCollectionnu: TfrmUnbundledCollectionnu
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'Unbundled Collection Report'
  ClientHeight = 284
  ClientWidth = 326
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Scaled = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 0
    Width = 308
    Height = 273
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
        Left = 114
        Top = 4
        Width = 73
        Height = 13
        Alignment = taCenter
        Caption = 'Coverage Date'
      end
      object dtpDateFrom: TDateTimePicker
        Left = 35
        Top = 25
        Width = 100
        Height = 21
        Date = 41426.706271261570000000
        Time = 41426.706271261570000000
        TabOrder = 0
      end
      object dtpDateTo: TDateTimePicker
        Left = 157
        Top = 23
        Width = 100
        Height = 23
        Date = 41455.706308310180000000
        Time = 41455.706308310180000000
        TabOrder = 1
      end
    end
    object pCurrentBill: TPanel
      Left = 6
      Top = 65
      Width = 296
      Height = 59
      Align = alTop
      TabOrder = 1
      object Label2: TLabel
        Left = 118
        Top = 6
        Width = 59
        Height = 13
        Caption = 'Billing Month'
      end
      object eBillMonth: TEdit
        Left = 50
        Top = 25
        Width = 185
        Height = 21
        TabOrder = 0
      end
    end
    object Panel2: TPanel
      Left = 6
      Top = 124
      Width = 296
      Height = 41
      Align = alTop
      TabOrder = 2
      object rbAllArea: TRadioButton
        Left = 66
        Top = 11
        Width = 65
        Height = 17
        Caption = 'All Area'
        Checked = True
        TabOrder = 0
        TabStop = True
        OnClick = rbAllAreaClick
      end
      object rbSelectArea: TRadioButton
        Left = 148
        Top = 11
        Width = 84
        Height = 17
        Caption = 'Select Area'
        TabOrder = 1
        OnClick = rbSelectAreaClick
      end
    end
    object Panel3: TPanel
      Left = 6
      Top = 165
      Width = 296
      Height = 53
      Align = alTop
      TabOrder = 3
      object Label3: TLabel
        Left = 135
        Top = 4
        Width = 23
        Height = 13
        Caption = 'Area'
      end
      object eArea: TEdit
        Left = 50
        Top = 25
        Width = 185
        Height = 21
        Enabled = False
        TabOrder = 0
      end
    end
    object Panel4: TPanel
      Left = 6
      Top = 218
      Width = 296
      Height = 31
      Align = alTop
      Caption = 'Print'
      TabOrder = 4
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
  object Panel5: TPanel
    Left = 393
    Top = 311
    Width = 1441
    Height = 574
    BevelInner = bvRaised
    BevelWidth = 5
    Caption = 'Panel5'
    TabOrder = 1
    Visible = False
    object PageControl1: TPageControl
      Left = 10
      Top = 10
      Width = 1421
      Height = 554
      ActivePage = tsUnbundledCollection
      Align = alClient
      TabOrder = 0
      object tsUnbundledCollection: TTabSheet
        Caption = 'tsUnbundledCollection'
        ImageIndex = 1
        object qrUnbundledCollection: TQuickRep
          Left = -431
          Top = 25
          Width = 1248
          Height = 816
          DataSet = qCollectionReport
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
            Top = 116
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
            object QRLabel33: TQRLabel
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
            object QRShape56: TQRShape
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
            object QRShape57: TQRShape
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
            object QRLabel34: TQRLabel
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
            object QRShape58: TQRShape
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
            object QRLabel35: TQRLabel
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
            object QRShape59: TQRShape
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
            object QRLabel36: TQRLabel
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
            object QRShape60: TQRShape
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
            object QRLabel37: TQRLabel
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
            object QRShape61: TQRShape
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
            object QRLabel38: TQRLabel
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
            object QRShape62: TQRShape
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
            object QRLabel39: TQRLabel
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
            object QRShape63: TQRShape
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
            object QRLabel40: TQRLabel
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
            object QRShape64: TQRShape
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
            object QRLabel41: TQRLabel
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
            object QRShape65: TQRShape
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
            object QRLabel42: TQRLabel
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
            object QRShape66: TQRShape
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
            object QRLabel43: TQRLabel
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
            object QRShape67: TQRShape
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
            object QRLabel44: TQRLabel
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
            object QRShape68: TQRShape
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
            object QRLabel45: TQRLabel
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
            object QRShape69: TQRShape
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
            object QRLabel46: TQRLabel
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
            object QRShape70: TQRShape
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
            object QRLabel47: TQRLabel
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
            object QRLabel48: TQRLabel
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
            object QRShape71: TQRShape
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
            object QRLabel49: TQRLabel
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
            object QRShape72: TQRShape
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
            object QRLabel50: TQRLabel
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
            object QRShape73: TQRShape
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
            object QRLabel51: TQRLabel
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
            object QRLabel52: TQRLabel
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
            object QRLabel53: TQRLabel
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
            object QRLabel54: TQRLabel
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
            object QRShape159: TQRShape
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
            object QRLabel86: TQRLabel
              Left = 1155
              Top = 5
              Width = 43
              Height = 37
              Size.Values = (
                97.895833333333320000
                3055.937500000000000000
                13.229166666666670000
                113.770833333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = '% Revenue Sales'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
          end
          object QRBand2: TQRBand
            Left = 24
            Top = 161
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
            object QRShape75: TQRShape
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
            object QRShape76: TQRShape
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
            object QRShape77: TQRShape
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
            object QRShape78: TQRShape
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
            object QRShape79: TQRShape
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
            object QRShape80: TQRShape
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
            object QRShape81: TQRShape
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
            object QRShape82: TQRShape
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
            object QRShape83: TQRShape
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
            object QRShape84: TQRShape
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
            object QRShape85: TQRShape
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
            object QRShape86: TQRShape
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
            object QRShape87: TQRShape
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
            object QRShape88: TQRShape
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
            object QRShape89: TQRShape
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
            object QRShape90: TQRShape
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
            object QRShape91: TQRShape
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
            object QRDBText21: TQRDBText
              Left = 1
              Top = 0
              Width = 154
              Height = 13
              Size.Values = (
                34.395833333333330000
                2.645833333333333000
                0.000000000000000000
                407.458333333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qCollectionReport
              DataField = 'desc'
              Transparent = True
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
              Size.Values = (
                34.395833333333330000
                412.750000000000000000
                2.645833333333333000
                119.062500000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qCollectionReport
              DataField = 'resBills'
              Mask = '###,##0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText23: TQRDBText
              Left = 198
              Top = 0
              Width = 44
              Height = 13
              Size.Values = (
                34.395833333333330000
                523.875000000000000000
                0.000000000000000000
                116.416666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qCollectionReport
              DataField = 'resLLBills'
              Mask = '###,##0 '
              Transparent = True
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
              Size.Values = (
                34.395833333333330000
                656.166666666666800000
                2.645833333333333000
                113.770833333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qCollectionReport
              DataField = 'resLLKwhr'
              Mask = '###,##0.0 '
              Transparent = True
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
              Size.Values = (
                34.395833333333330000
                772.583333333333200000
                2.645833333333333000
                142.875000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qCollectionReport
              DataField = 'resKwhr'
              Mask = '###,###,##0.0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText26: TQRDBText
              Left = 345
              Top = 0
              Width = 72
              Height = 13
              Size.Values = (
                34.395833333333330000
                912.812500000000000000
                0.000000000000000000
                190.500000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qCollectionReport
              DataField = 'RES'
              Transparent = True
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
              Size.Values = (
                34.395833333333330000
                1116.541666666667000000
                2.645833333333333000
                113.770833333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qCollectionReport
              DataField = 'LVBills'
              Mask = '###,##0 '
              Transparent = True
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
              Size.Values = (
                34.395833333333330000
                1238.250000000000000000
                2.645833333333333000
                142.875000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qCollectionReport
              DataField = 'LVKwhr'
              Mask = '###,##0.0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText29: TQRDBText
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
              Color = clWhite
              DataSet = qCollectionReport
              DataField = 'LV'
              Mask = '###,###,###.## '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText30: TQRDBText
              Left = 774
              Top = 1
              Width = 76
              Height = 13
              Size.Values = (
                34.395833333333330000
                2047.875000000000000000
                2.645833333333333000
                201.083333333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qCollectionReport
              DataField = 'HV'
              Mask = '###,###,###.##'
              Transparent = True
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
              Size.Values = (
                34.395833333333330000
                1725.083333333333000000
                2.645833333333333000
                156.104166666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qCollectionReport
              DataField = 'HVKwhr'
              Mask = '###,##0.0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText32: TQRDBText
              Left = 598
              Top = 1
              Width = 52
              Height = 13
              Size.Values = (
                34.395833333333330000
                1582.208333333333000000
                2.645833333333333000
                137.583333333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qCollectionReport
              DataField = 'HVBills'
              Mask = '###,##0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText33: TQRDBText
              Left = 712
              Top = 1
              Width = 61
              Height = 13
              Size.Values = (
                34.395833333333330000
                1883.833333333333000000
                2.645833333333333000
                161.395833333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qCollectionReport
              DataField = 'HVKwhrd'
              Mask = '###,##0.0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText34: TQRDBText
              Left = 1085
              Top = 1
              Width = 68
              Height = 13
              Size.Values = (
                34.395833333333330000
                2870.729166666667000000
                2.645833333333333000
                179.916666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qCollectionReport
              DataField = 'TotalAmount'
              Mask = '###,###,##0.00 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText35: TQRDBText
              Left = 955
              Top = 1
              Width = 66
              Height = 13
              Size.Values = (
                34.395833333333330000
                2526.770833333333000000
                2.645833333333333000
                174.625000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qCollectionReport
              DataField = 'TotalKwhr'
              Mask = '###,##0.0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText36: TQRDBText
              Left = 893
              Top = 0
              Width = 56
              Height = 13
              Size.Values = (
                34.395833333333330000
                2362.729166666667000000
                0.000000000000000000
                148.166666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qCollectionReport
              DataField = 'resLLBills'
              Mask = '###,###,##0.00 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText37: TQRDBText
              Left = 853
              Top = 1
              Width = 43
              Height = 13
              Size.Values = (
                34.395833333333330000
                2256.895833333333000000
                2.645833333333333000
                113.770833333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qCollectionReport
              DataField = 'numBills'
              Mask = '###,##0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText38: TQRDBText
              Left = 1020
              Top = 0
              Width = 61
              Height = 13
              Size.Values = (
                34.395833333333330000
                2698.750000000000000000
                0.000000000000000000
                161.395833333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qCollectionReport
              DataField = 'TotalKwhrD'
              Mask = '###,##0.0 '
              Transparent = True
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
          object QRBand3: TQRBand
            Left = 24
            Top = 173
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
            object QRShape92: TQRShape
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
            object QRShape93: TQRShape
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
            object QRShape94: TQRShape
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
            object QRShape95: TQRShape
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
            object QRShape96: TQRShape
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
            object QRShape97: TQRShape
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
            object QRShape98: TQRShape
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
            object QRShape99: TQRShape
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
            object QRShape100: TQRShape
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
            object QRShape101: TQRShape
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
            object QRShape102: TQRShape
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
            object QRShape103: TQRShape
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
            object QRShape104: TQRShape
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
            object QRShape105: TQRShape
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
            object QRShape106: TQRShape
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
            object QRShape107: TQRShape
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
            object QRShape108: TQRShape
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
            object QRExpr31: TQRExpr
              Left = 348
              Top = 1
              Width = 72
              Height = 13
              Size.Values = (
                34.395833333333330000
                920.750000000000000000
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
              Expression = 'SUM(qCollectionReport.RES2)'
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
              Expression = 'SUM(qCollectionReport.LV2)'
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
              Size.Values = (
                34.395833333333330000
                2050.520833333333000000
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
              Expression = 'SUM(qCollectionReport.HV2)'
              Mask = '###,###,##0.00 '
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr34: TQRExpr
              Left = 1087
              Top = 1
              Width = 68
              Height = 13
              Size.Values = (
                34.395833333333330000
                2876.020833333333000000
                2.645833333333333000
                179.916666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(qCollectionReport.TotalAmount2) '
              Mask = '###,###,##0.00 '
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel55: TQRLabel
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
            object QRShape161: TQRShape
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
            Height = 92
            AlignToBottom = False
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              243.416666666666700000
              3175.000000000000000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbTitle
            object QRLabel56: TQRLabel
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
            object qrlCUFDMonth: TQRLabel
              Left = -16
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
            object QRLabel58: TQRLabel
              Left = 514
              Top = 45
              Width = 171
              Height = 15
              Size.Values = (
                39.687500000000000000
                1359.958333333333000000
                119.062500000000000000
                452.437500000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = True
              Caption = 'UNBUNDLED COLLECTION REPORT'
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
            object QRLabel59: TQRLabel
              Left = -64
              Top = 24
              Width = 144
              Height = 15
              Size.Values = (
                39.687500000000000000
                1397.000000000000000000
                63.500000000000000000
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
            object qrlCUFDMunicipality: TQRLabel
              Left = 552
              Top = 74
              Width = 95
              Height = 17
              Size.Values = (
                44.979166666666670000
                1460.500000000000000000
                195.791666666666700000
                251.354166666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = True
              Caption = 'qrlCUFDMunicipality'
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
          end
        end
      end
      object tsCurrentSubsidiary: TTabSheet
        Caption = 'tsCurrentSubsidiary'
        ImageIndex = 2
        object qrCurrentSubsidiary: TQuickRep
          Left = -20
          Top = -12
          Width = 1248
          Height = 816
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
          PrintIfEmpty = False
          SnapToGrid = True
          Units = Inches
          Zoom = 100
          PrevFormStyle = fsNormal
          PreviewInitialState = wsMaximized
          PrevInitialZoom = qrZoomToWidth
          PreviewDefaultSaveType = stQRP
          PreviewLeft = 0
          PreviewTop = 0
          object QRBand5: TQRBand
            Left = 24
            Top = 109
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
            object QRLabel32: TQRLabel
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
            object QRShape38: TQRShape
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
            object QRShape74: TQRShape
              Left = 156
              Top = 13
              Width = 1043
              Height = 2
              Size.Values = (
                5.291666666666667000
                412.750000000000000000
                34.395833333333330000
                2759.604166666667000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsHorLine
              VertAdjust = 0
            end
            object QRLabel60: TQRLabel
              Left = 158
              Top = 15
              Width = 52
              Height = 24
              Size.Values = (
                64.255952380952380000
                417.663690476190500000
                39.687500000000000000
                137.961309523809500000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'No. of Consumers'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape109: TQRShape
              Left = 210
              Top = 15
              Width = 2
              Height = 28
              Size.Values = (
                73.705357142857140000
                555.625000000000000000
                39.687500000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel61: TQRLabel
              Left = 213
              Top = 15
              Width = 43
              Height = 24
              Size.Values = (
                64.255952380952380000
                563.184523809523800000
                39.687500000000000000
                113.392857142857100000)
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
            object QRShape110: TQRShape
              Left = 256
              Top = 15
              Width = 2
              Height = 28
              Size.Values = (
                73.705357142857140000
                676.577380952381100000
                39.687500000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel62: TQRLabel
              Left = 259
              Top = 15
              Width = 41
              Height = 24
              Size.Values = (
                64.255952380952380000
                684.136904761904800000
                39.687500000000000000
                107.723214285714300000)
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
            object QRShape111: TQRShape
              Left = 300
              Top = 15
              Width = 2
              Height = 28
              Size.Values = (
                73.705357142857140000
                793.750000000000000000
                39.687500000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel63: TQRLabel
              Left = 303
              Top = 22
              Width = 53
              Height = 13
              Size.Values = (
                34.017857142857140000
                801.309523809523800000
                58.586309523809520000
                139.851190476190500000)
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
            object QRShape112: TQRShape
              Left = 356
              Top = 15
              Width = 2
              Height = 28
              Size.Values = (
                73.705357142857140000
                941.160714285714300000
                39.687500000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel64: TQRLabel
              Left = 364
              Top = 22
              Width = 62
              Height = 13
              Size.Values = (
                34.017857142857140000
                963.839285714285700000
                58.586309523809520000
                164.419642857142900000)
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
            object QRShape113: TQRShape
              Tag = 1000
              Left = 429
              Top = 0
              Width = 2
              Height = 30
              Size.Values = (
                79.375000000000000000
                1135.818452380952000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel65: TQRLabel
              Left = 489
              Top = 22
              Width = 53
              Height = 13
              Size.Values = (
                34.017857142857140000
                1294.568452380952000000
                58.586309523809520000
                139.851190476190500000)
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
            object QRShape114: TQRShape
              Left = 542
              Top = 15
              Width = 2
              Height = 28
              Size.Values = (
                73.705357142857140000
                1434.419642857143000000
                39.687500000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel66: TQRLabel
              Left = 544
              Top = 22
              Width = 62
              Height = 13
              Size.Values = (
                34.017857142857140000
                1438.199404761905000000
                58.586309523809520000
                164.419642857142900000)
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
            object QRShape115: TQRShape
              Tag = 1000
              Left = 617
              Top = 0
              Width = 2
              Height = 30
              Size.Values = (
                79.375000000000000000
                1632.857142857143000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel67: TQRLabel
              Left = 434
              Top = 15
              Width = 52
              Height = 24
              Size.Values = (
                64.255952380952380000
                1147.157738095238000000
                39.687500000000000000
                137.961309523809500000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'No. of Consumers'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape116: TQRShape
              Left = 486
              Top = 15
              Width = 2
              Height = 28
              Size.Values = (
                73.705357142857140000
                1287.008928571429000000
                39.687500000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel68: TQRLabel
              Left = 680
              Top = 22
              Width = 53
              Height = 13
              Size.Values = (
                34.017857142857140000
                1799.166666666667000000
                58.586309523809520000
                139.851190476190500000)
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
            object QRShape117: TQRShape
              Left = 736
              Top = 15
              Width = 2
              Height = 28
              Size.Values = (
                73.705357142857140000
                1946.577380952381000000
                39.687500000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel69: TQRLabel
              Left = 802
              Top = 22
              Width = 62
              Height = 13
              Size.Values = (
                34.017857142857140000
                2122.336309523810000000
                58.586309523809520000
                164.419642857142900000)
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
            object QRShape118: TQRShape
              Tag = 1000
              Left = 876
              Top = 0
              Width = 2
              Height = 30
              Size.Values = (
                79.375000000000000000
                2318.883928571429000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel70: TQRLabel
              Left = 620
              Top = 15
              Width = 52
              Height = 24
              Size.Values = (
                64.255952380952380000
                1640.416666666667000000
                39.687500000000000000
                137.961309523809500000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'No. of Consumers'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape119: TQRShape
              Left = 675
              Top = 15
              Width = 2
              Height = 28
              Size.Values = (
                73.705357142857140000
                1785.937500000000000000
                39.687500000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel71: TQRLabel
              Left = 741
              Top = 22
              Width = 53
              Height = 13
              Size.Values = (
                34.017857142857140000
                1959.806547619048000000
                58.586309523809520000
                139.851190476190500000)
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
            object QRShape120: TQRShape
              Left = 799
              Top = 15
              Width = 2
              Height = 28
              Size.Values = (
                73.705357142857140000
                2112.886904761905000000
                39.687500000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel72: TQRLabel
              Left = 1011
              Top = 22
              Width = 53
              Height = 15
              Size.Values = (
                39.687500000000000000
                2674.181547619048000000
                58.586309523809520000
                139.851190476190500000)
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
            object QRShape121: TQRShape
              Left = 1066
              Top = 15
              Width = 2
              Height = 28
              Size.Values = (
                73.705357142857140000
                2821.592261904762000000
                39.687500000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel73: TQRLabel
              Left = 1133
              Top = 22
              Width = 62
              Height = 15
              Size.Values = (
                39.687500000000000000
                2997.729166666667000000
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
            object QRLabel74: TQRLabel
              Left = 879
              Top = 15
              Width = 62
              Height = 24
              Size.Values = (
                64.255952380952380000
                2324.553571428571000000
                39.687500000000000000
                164.419642857142900000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'No. of Consumers'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape122: TQRShape
              Left = 941
              Top = 15
              Width = 2
              Height = 28
              Size.Values = (
                73.705357142857140000
                2490.863095238095000000
                39.687500000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel75: TQRLabel
              Left = 1071
              Top = 22
              Width = 53
              Height = 15
              Size.Values = (
                39.687500000000000000
                2834.821428571429000000
                58.586309523809520000
                139.851190476190500000)
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
            object QRShape123: TQRShape
              Left = 1129
              Top = 15
              Width = 2
              Height = 28
              Size.Values = (
                73.705357142857140000
                2987.901785714286000000
                39.687500000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel76: TQRLabel
              Left = 951
              Top = 15
              Width = 43
              Height = 24
              Size.Values = (
                64.255952380952380000
                2515.431547619048000000
                39.687500000000000000
                113.392857142857100000)
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
            object QRShape124: TQRShape
              Left = 999
              Top = 15
              Width = 2
              Height = 28
              Size.Values = (
                73.705357142857140000
                2642.053571428571000000
                39.687500000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel77: TQRLabel
              Left = 156
              Top = 1
              Width = 274
              Height = 13
              Size.Values = (
                34.395833333333330000
                412.750000000000000000
                2.645833333333333000
                724.958333333333200000)
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
            object QRLabel78: TQRLabel
              Left = 431
              Top = 1
              Width = 186
              Height = 13
              Size.Values = (
                34.395833333333330000
                1140.354166666667000000
                2.645833333333333000
                492.125000000000000000)
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
            object QRLabel79: TQRLabel
              Left = 619
              Top = 1
              Width = 259
              Height = 13
              Size.Values = (
                34.395833333333330000
                1637.770833333333000000
                2.645833333333333000
                685.270833333333200000)
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
            object QRLabel80: TQRLabel
              Left = 878
              Top = 1
              Width = 321
              Height = 13
              Size.Values = (
                34.395833333333330000
                2323.041666666667000000
                2.645833333333333000
                849.312500000000000000)
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
          end
          object QRBand6: TQRBand
            Left = 24
            Top = 154
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
            object QRShape125: TQRShape
              Tag = 1000
              Left = 161
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                55.562500000000000000
                425.979166666666700000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape126: TQRShape
              Tag = 1000
              Left = 210
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                56.696428571428570000
                555.625000000000000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape127: TQRShape
              Tag = 1000
              Left = 256
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                56.696428571428570000
                676.577380952381100000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape128: TQRShape
              Tag = 1000
              Left = 300
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                56.696428571428570000
                793.750000000000000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape129: TQRShape
              Tag = 1000
              Left = 356
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                56.696428571428570000
                941.160714285714300000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape130: TQRShape
              Tag = 1000
              Left = 429
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                56.696428571428570000
                1135.818452380952000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape131: TQRShape
              Tag = 1000
              Left = 542
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                56.696428571428570000
                1434.419642857143000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape132: TQRShape
              Tag = 1000
              Left = 617
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                56.696428571428570000
                1632.857142857143000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape133: TQRShape
              Tag = 1000
              Left = 486
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                56.696428571428570000
                1287.008928571429000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape134: TQRShape
              Tag = 1000
              Left = 736
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                56.696428571428570000
                1946.577380952381000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape135: TQRShape
              Tag = 1000
              Left = 876
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                54.806547619047620000
                2318.883928571429000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape136: TQRShape
              Tag = 1000
              Left = 675
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                56.696428571428570000
                1785.937500000000000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape137: TQRShape
              Tag = 1000
              Left = 799
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                54.806547619047620000
                2112.886904761905000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape138: TQRShape
              Tag = 1000
              Left = 1066
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                54.806547619047620000
                2821.592261904762000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape139: TQRShape
              Tag = 1000
              Left = 941
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                54.806547619047620000
                2490.863095238095000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape140: TQRShape
              Tag = 1000
              Left = 1129
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                54.806547619047620000
                2987.901785714286000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape141: TQRShape
              Tag = 1000
              Left = 999
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                54.806547619047620000
                2642.053571428571000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRDBText20: TQRDBText
              Left = 1
              Top = 1
              Width = 154
              Height = 13
              Size.Values = (
                34.395833333333330000
                2.645833333333333000
                2.645833333333333000
                407.458333333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataField = 'desc'
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText39: TQRDBText
              Left = 156
              Top = 1
              Width = 54
              Height = 13
              Size.Values = (
                34.395833333333330000
                412.750000000000000000
                2.645833333333333000
                142.875000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataField = 'resBills'
              Mask = '#,###.#0'
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText40: TQRDBText
              Left = 211
              Top = 1
              Width = 44
              Height = 13
              Size.Values = (
                34.395833333333330000
                558.270833333333300000
                2.645833333333333000
                116.416666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataField = 'resLLBills'
              Mask = '###,##0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText41: TQRDBText
              Left = 257
              Top = 1
              Width = 43
              Height = 13
              Size.Values = (
                34.395833333333330000
                679.979166666666800000
                2.645833333333333000
                113.770833333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataField = 'resLLKwhr'
              Mask = '###,##0.0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText42: TQRDBText
              Left = 301
              Top = 1
              Width = 54
              Height = 13
              Size.Values = (
                34.395833333333330000
                796.395833333333200000
                2.645833333333333000
                142.875000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataField = 'resKwhr'
              Mask = '###,###,##0.0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText43: TQRDBText
              Left = 357
              Top = 1
              Width = 72
              Height = 13
              Size.Values = (
                34.395833333333330000
                944.562500000000000000
                2.645833333333333000
                190.500000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataField = 'RES'
              Mask = '#,###.#0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText44: TQRDBText
              Left = 431
              Top = 1
              Width = 56
              Height = 13
              Size.Values = (
                34.395833333333330000
                1140.354166666667000000
                2.645833333333333000
                148.166666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataField = 'LVBills'
              Mask = '###,##0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText45: TQRDBText
              Left = 489
              Top = 1
              Width = 54
              Height = 13
              Size.Values = (
                34.395833333333330000
                1293.812500000000000000
                2.645833333333333000
                142.875000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataField = 'LVKwhr'
              Mask = '###,##0.0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText46: TQRDBText
              Left = 544
              Top = 1
              Width = 74
              Height = 13
              Size.Values = (
                34.395833333333330000
                1439.333333333333000000
                2.645833333333333000
                195.791666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataField = 'LV'
              Mask = '###,###,##0.00 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText47: TQRDBText
              Left = 800
              Top = 1
              Width = 76
              Height = 13
              Size.Values = (
                34.395833333333330000
                2116.666666666667000000
                2.645833333333333000
                201.083333333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataField = 'HV'
              Mask = '###,###,##0.00 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText48: TQRDBText
              Left = 677
              Top = 1
              Width = 59
              Height = 13
              Size.Values = (
                34.395833333333330000
                1791.229166666667000000
                2.645833333333333000
                156.104166666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataField = 'HVKwhr'
              Mask = '###,##0.0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText49: TQRDBText
              Left = 619
              Top = 1
              Width = 56
              Height = 13
              Size.Values = (
                34.395833333333330000
                1637.770833333333000000
                2.645833333333333000
                148.166666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataField = 'HVBills'
              Mask = '###,##0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText50: TQRDBText
              Left = 737
              Top = 1
              Width = 61
              Height = 13
              Size.Values = (
                34.395833333333330000
                1949.979166666667000000
                2.645833333333333000
                161.395833333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataField = 'HVKwhrd'
              Mask = '###,##0.0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText51: TQRDBText
              Left = 1131
              Top = 1
              Width = 68
              Height = 13
              Size.Values = (
                34.395833333333330000
                2992.437500000000000000
                2.645833333333333000
                179.916666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataField = 'TotalAmount'
              Mask = '###,###,##0.00 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText52: TQRDBText
              Left = 1000
              Top = 1
              Width = 66
              Height = 13
              Size.Values = (
                34.395833333333330000
                2645.833333333333000000
                2.645833333333333000
                174.625000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataField = 'TotalKwhr'
              Mask = '###,##0.0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText53: TQRDBText
              Left = 943
              Top = 1
              Width = 56
              Height = 13
              Size.Values = (
                34.395833333333330000
                2495.020833333333000000
                2.645833333333333000
                148.166666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataField = 'resLLBills'
              Mask = '###,###,##0.00 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText54: TQRDBText
              Left = 878
              Top = 1
              Width = 64
              Height = 13
              Size.Values = (
                34.395833333333330000
                2323.041666666667000000
                2.645833333333333000
                169.333333333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataField = 'numBills'
              Mask = '###,##0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText55: TQRDBText
              Left = 1068
              Top = 1
              Width = 61
              Height = 13
              Size.Values = (
                34.395833333333330000
                2825.750000000000000000
                2.645833333333333000
                161.395833333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataField = 'TotalKwhrD'
              Mask = '###,##0.0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
          end
          object QRBand7: TQRBand
            Left = 24
            Top = 166
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
            object QRShape142: TQRShape
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
            object QRShape143: TQRShape
              Tag = 1000
              Left = 210
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.898809523809520000
                555.625000000000000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape144: TQRShape
              Tag = 1000
              Left = 256
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.898809523809520000
                676.577380952381100000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape145: TQRShape
              Tag = 1000
              Left = 300
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.898809523809520000
                793.750000000000000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape146: TQRShape
              Tag = 1000
              Left = 356
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.898809523809520000
                941.160714285714300000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape147: TQRShape
              Tag = 1000
              Left = 429
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.898809523809520000
                1135.818452380952000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape148: TQRShape
              Tag = 1000
              Left = 542
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.898809523809520000
                1434.419642857143000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape149: TQRShape
              Tag = 1000
              Left = 617
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.898809523809520000
                1632.857142857143000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape150: TQRShape
              Tag = 1000
              Left = 486
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.898809523809520000
                1287.008928571429000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape151: TQRShape
              Tag = 1000
              Left = 736
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.898809523809520000
                1946.577380952381000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape152: TQRShape
              Tag = 1000
              Left = 876
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.898809523809520000
                2318.883928571429000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape153: TQRShape
              Tag = 1000
              Left = 675
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.898809523809520000
                1785.937500000000000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape154: TQRShape
              Tag = 1000
              Left = 799
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.898809523809520000
                2112.886904761905000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape155: TQRShape
              Tag = 1000
              Left = 1066
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.898809523809520000
                2821.592261904762000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape156: TQRShape
              Tag = 1000
              Left = 941
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.898809523809520000
                2490.863095238095000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape157: TQRShape
              Tag = 1000
              Left = 1129
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.898809523809520000
                2987.901785714286000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape158: TQRShape
              Tag = 1000
              Left = 999
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.898809523809520000
                2642.053571428571000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRExpr18: TQRExpr
              Left = 357
              Top = 1
              Width = 72
              Height = 13
              Size.Values = (
                34.395833333333330000
                944.562500000000000000
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
              Expression = 'SUM(qpowersales.res)'
              Mask = '###,###,##0.00 '
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr19: TQRExpr
              Left = 544
              Top = 1
              Width = 74
              Height = 13
              Size.Values = (
                34.395833333333330000
                1439.333333333333000000
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
              Expression = 'SUM(qPowerSales.LV)'
              Mask = '###,###,##0.00 '
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr20: TQRExpr
              Left = 800
              Top = 1
              Width = 76
              Height = 13
              Size.Values = (
                34.395833333333330000
                2116.666666666667000000
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
              Expression = 'SUM(qPowerSales.HV)'
              Mask = '###,###,##0.00 '
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr21: TQRExpr
              Left = 1131
              Top = 1
              Width = 68
              Height = 13
              Size.Values = (
                34.395833333333330000
                2992.437500000000000000
                2.645833333333333000
                179.916666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(qPowerSales.TotalAmount)'
              Mask = '###,###,##0.00 '
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel81: TQRLabel
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
          end
          object QRBand8: TQRBand
            Left = 24
            Top = 24
            Width = 1200
            Height = 85
            AlignToBottom = False
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              224.895833333333300000
              3175.000000000000000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbTitle
            object QRLabel82: TQRLabel
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
            object qrlCSuFDMonth: TQRLabel
              Left = -16
              Top = 72
              Width = 48
              Height = 15
              Size.Values = (
                39.687500000000000000
                1524.000000000000000000
                190.500000000000000000
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
            object QRLabel84: TQRLabel
              Left = 528
              Top = 45
              Width = 143
              Height = 15
              Size.Values = (
                39.687500000000000000
                1397.000000000000000000
                119.062500000000000000
                378.354166666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = True
              Caption = 'SUBSIDIARY SALES REPORT'
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
            object QRLabel85: TQRLabel
              Left = -64
              Top = 24
              Width = 144
              Height = 15
              Size.Values = (
                39.687500000000000000
                1397.000000000000000000
                63.500000000000000000
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
            object qrlCSuMunicipality: TQRLabel
              Left = 528
              Top = 59
              Width = 143
              Height = 15
              Size.Values = (
                39.687500000000000000
                1397.000000000000000000
                156.104166666666700000
                378.354166666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = True
              Caption = 'SUBSIDIARY SALES REPORT'
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
          end
        end
      end
    end
  end
  object qCollectionReport: TMyQuery
    Connection = BillingData.MyConnection1
    SQL.Strings = (
      'call Collection(:BM,:RT,:A,:DF,:DT)')
    Left = 264
    Top = 96
    ParamData = <
      item
        DataType = ftString
        Name = 'BM'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'RT'
        Value = nil
      end
      item
        DataType = ftString
        Name = 'A'
        Value = nil
      end
      item
        DataType = ftDate
        Name = 'DF'
        Value = nil
      end
      item
        DataType = ftDate
        Name = 'DT'
        Value = nil
      end>
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
    PrinterSettings.MemoryLimit = 1000000
    PrinterSettings.PrintQuality = 0
    PrinterSettings.Collate = 0
    PrinterSettings.ColorOption = 0
    PrinterSettings.Orientation = poLandscape
    PrinterSettings.PaperSize = FanfoldGerLegal
    PageCount = 0
    Left = 536
    Top = 32
  end
end
