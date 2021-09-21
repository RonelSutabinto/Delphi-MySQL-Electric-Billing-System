object FSRMain: TFSRMain
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Financial Statistical Report'
  ClientHeight = 174
  ClientWidth = 375
  Color = clBtnFace
  Constraints.MinHeight = 202
  Constraints.MinWidth = 381
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 52
    Top = 27
    Width = 59
    Height = 13
    Alignment = taRightJustify
    Caption = 'Billing Period'
  end
  object Label2: TLabel
    Left = 38
    Top = 55
    Width = 73
    Height = 13
    Alignment = taRightJustify
    Caption = 'Date Coverage'
  end
  object Panel1: TPanel
    Left = 197
    Top = 40
    Width = 825
    Height = 505
    BevelInner = bvLowered
    BevelWidth = 3
    Caption = 'Panel1'
    TabOrder = 3
    Visible = False
    object PageControl1: TPageControl
      Left = 6
      Top = 6
      Width = 813
      Height = 493
      ActivePage = FSRPart4
      Align = alClient
      TabOrder = 0
      object FSRPart1: TTabSheet
        Caption = 'FSRPart1'
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object part1: TQuickRep
          Left = 0
          Top = 0
          Width = 816
          Height = 1248
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          DataSet = qPart1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
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
          Page.PaperSize = FanfoldGerLegal
          Page.Continuous = False
          Page.Values = (
            200.000000000000000000
            3302.000000000000000000
            200.000000000000000000
            2159.000000000000000000
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
          PrinterSettings.MemoryLimit = 1000000
          PrinterSettings.PrintQuality = 0
          PrinterSettings.Collate = 0
          PrinterSettings.ColorOption = 0
          PrintIfEmpty = True
          SnapToGrid = True
          Units = MM
          Zoom = 100
          PrevFormStyle = fsNormal
          PreviewInitialState = wsMaximized
          PrevInitialZoom = qrZoomToWidth
          PreviewDefaultSaveType = stQRP
          PreviewLeft = 0
          PreviewTop = 0
          object TitleBand1: TQRBand
            Left = 38
            Top = 76
            Width = 740
            Height = 193
            Frame.DrawBottom = True
            AlignToBottom = False
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              510.645833333333300000
              1957.916666666667000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbTitle
            object QRShape5: TQRShape
              Left = 0
              Top = 140
              Width = 649
              Height = 15
              Size.Values = (
                39.687500000000000000
                0.000000000000000000
                370.416666666666700000
                1717.145833333333000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsRectangle
              VertAdjust = 0
            end
            object QRShape1: TQRShape
              Tag = 1000
              Left = 0
              Top = 83
              Width = 739
              Height = 5
              Size.Values = (
                13.229166666666670000
                0.000000000000000000
                219.604166666666700000
                1955.270833333333000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsRectangle
              VertAdjust = 0
            end
            object QRShape2: TQRShape
              Left = 226
              Top = 0
              Width = 39
              Height = 84
              Size.Values = (
                222.250000000000000000
                597.958333333333300000
                0.000000000000000000
                103.187500000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape4: TQRShape
              Left = 0
              Top = 136
              Width = 739
              Height = 4
              Size.Values = (
                10.583333333333330000
                0.000000000000000000
                359.833333333333300000
                1955.270833333333000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsRectangle
              VertAdjust = 0
            end
            object QRShape9: TQRShape
              Left = 0
              Top = 155
              Width = 649
              Height = 37
              Size.Values = (
                97.895833333333330000
                0.000000000000000000
                410.104166666666700000
                1717.145833333333000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsRectangle
              VertAdjust = 0
            end
            object QRLabel1: TQRLabel
              Left = 21
              Top = 40
              Width = 204
              Height = 17
              Size.Values = (
                44.979166666666670000
                55.562500000000000000
                105.833333333333300000
                539.750000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'Financial Statistical Report'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 10
            end
            object QRLabel2: TQRLabel
              Left = 276
              Top = 16
              Width = 437
              Height = 17
              Size.Values = (
                44.979166666666670000
                730.250000000000000000
                42.333333333333330000
                1156.229166666667000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'REC: ZAMBOANGA DEL NORTE ELECTRIC, INC. (ZANECO)'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 9
            end
            object qFSRCoverage: TQRLabel
              Left = 276
              Top = 47
              Width = 437
              Height = 19
              Size.Values = (
                50.270833333333330000
                730.250000000000000000
                124.354166666666700000
                1156.229166666667000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'qFSRCoverage'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 11
            end
            object QRShape3: TQRShape
              Left = 169
              Top = 140
              Width = 39
              Height = 52
              Size.Values = (
                137.583333333333300000
                447.145833333333300000
                370.416666666666700000
                103.187500000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape33: TQRShape
              Left = 321
              Top = 140
              Width = 39
              Height = 52
              Size.Values = (
                137.583333333333300000
                849.312500000000000000
                370.416666666666700000
                103.187500000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape35: TQRShape
              Left = 452
              Top = 140
              Width = 39
              Height = 52
              Size.Values = (
                137.583333333333300000
                1195.916666666667000000
                370.416666666666700000
                103.187500000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape10: TQRShape
              Left = 228
              Top = 155
              Width = 39
              Height = 37
              Size.Values = (
                97.895833333333330000
                603.250000000000000000
                410.104166666666700000
                103.187500000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape34: TQRShape
              Left = 369
              Top = 155
              Width = 39
              Height = 37
              Size.Values = (
                97.895833333333330000
                976.312500000000000000
                410.104166666666700000
                103.187500000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape36: TQRShape
              Left = 500
              Top = 155
              Width = 39
              Height = 37
              Size.Values = (
                97.895833333333330000
                1322.916666666667000000
                410.104166666666700000
                103.187500000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel3: TQRLabel
              Left = 151
              Top = 102
              Width = 437
              Height = 19
              Size.Values = (
                50.270833333333330000
                399.520833333333300000
                269.875000000000000000
                1156.229166666667000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = True
              AutoSize = False
              Caption = 'Section D : CONSUMER ACCOUNT RECEIVABLE'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 11
            end
            object QRLabel4: TQRLabel
              Left = 188
              Top = 140
              Width = 153
              Height = 15
              Size.Values = (
                39.687500000000000000
                497.416666666666700000
                370.416666666666700000
                404.812500000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'Total Receivable'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRLabel5: TQRLabel
              Left = 340
              Top = 140
              Width = 132
              Height = 15
              Size.Values = (
                39.687500000000000000
                899.583333333333300000
                370.416666666666700000
                349.250000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'CURRENT'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRLabel6: TQRLabel
              Left = 471
              Top = 140
              Width = 179
              Height = 15
              Size.Values = (
                39.687500000000000000
                1246.187500000000000000
                370.416666666666700000
                473.604166666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = '30 DAYS & OVER'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRLabel7: TQRLabel
              Left = 650
              Top = 144
              Width = 88
              Height = 43
              Size.Values = (
                113.770833333333300000
                1719.791666666667000000
                381.000000000000000000
                232.833333333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'No. of Disconnected Bills'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRLabel8: TQRLabel
              Left = 188
              Top = 164
              Width = 60
              Height = 15
              Size.Values = (
                39.687500000000000000
                497.416666666666700000
                433.916666666666700000
                158.750000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'No. Bills'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRLabel9: TQRLabel
              Left = 247
              Top = 164
              Width = 94
              Height = 15
              Size.Values = (
                39.687500000000000000
                653.520833333333300000
                433.916666666666700000
                248.708333333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'Amount'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRLabel10: TQRLabel
              Left = 340
              Top = 156
              Width = 49
              Height = 31
              Size.Values = (
                82.020833333333330000
                899.583333333333300000
                412.750000000000000000
                129.645833333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'No. of Bills'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRLabel11: TQRLabel
              Left = 388
              Top = 164
              Width = 84
              Height = 15
              Size.Values = (
                39.687500000000000000
                1026.583333333333000000
                433.916666666666700000
                222.250000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'Amount'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRLabel12: TQRLabel
              Left = 519
              Top = 164
              Width = 131
              Height = 15
              Size.Values = (
                39.687500000000000000
                1373.187500000000000000
                433.916666666666700000
                346.604166666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'Amount'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRLabel13: TQRLabel
              Left = 471
              Top = 156
              Width = 49
              Height = 31
              Size.Values = (
                82.020833333333330000
                1246.187500000000000000
                412.750000000000000000
                129.645833333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'No. of Bills'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRLabel14: TQRLabel
              Left = 0
              Top = 164
              Width = 189
              Height = 15
              Size.Values = (
                39.687500000000000000
                0.000000000000000000
                433.916666666666700000
                500.062500000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'Consumer Class'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
          end
          object DetailBand1: TQRBand
            Left = 38
            Top = 269
            Width = 740
            Height = 15
            Frame.DrawLeft = True
            Frame.DrawRight = True
            AlignToBottom = False
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              39.687500000000000000
              1957.916666666667000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbDetail
            object QRShape7: TQRShape
              Tag = 1000
              Left = 169
              Top = 1
              Width = 39
              Height = 25
              Size.Values = (
                66.145833333333330000
                447.145833333333300000
                2.645833333333333000
                103.187500000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape8: TQRShape
              Tag = 1000
              Left = 321
              Top = 1
              Width = 39
              Height = 10
              Size.Values = (
                26.458333333333330000
                849.312500000000000000
                2.645833333333333000
                103.187500000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape11: TQRShape
              Tag = 1000
              Left = 452
              Top = 1
              Width = 39
              Height = 10
              Size.Values = (
                26.458333333333330000
                1195.916666666667000000
                2.645833333333333000
                103.187500000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape12: TQRShape
              Tag = 1000
              Left = 228
              Top = 1
              Width = 39
              Height = 10
              Size.Values = (
                26.458333333333330000
                603.250000000000000000
                2.645833333333333000
                103.187500000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape13: TQRShape
              Tag = 1000
              Left = 369
              Top = 1
              Width = 39
              Height = 10
              Size.Values = (
                26.458333333333330000
                976.312500000000000000
                2.645833333333333000
                103.187500000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape15: TQRShape
              Tag = 1000
              Left = 500
              Top = 1
              Width = 39
              Height = 10
              Size.Values = (
                26.458333333333330000
                1322.916666666667000000
                2.645833333333333000
                103.187500000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRDBText1: TQRDBText
              Left = 1
              Top = 0
              Width = 189
              Height = 15
              Size.Values = (
                39.687500000000000000
                2.645833333333333000
                0.000000000000000000
                500.062500000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPart1
              DataField = 'ItemName'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText2: TQRDBText
              Left = 188
              Top = 0
              Width = 60
              Height = 15
              Size.Values = (
                39.687500000000000000
                497.416666666666700000
                0.000000000000000000
                158.750000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPart1
              DataField = 'TotalNumberbills'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = []
              Mask = '###,##0 '
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText3: TQRDBText
              Left = 247
              Top = 0
              Width = 92
              Height = 15
              Size.Values = (
                39.687500000000000000
                653.520833333333300000
                0.000000000000000000
                243.416666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPart1
              DataField = 'TotalReceivable'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = []
              Mask = '###,###,##0.00'
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText4: TQRDBText
              Left = 388
              Top = 0
              Width = 82
              Height = 15
              Size.Values = (
                39.687500000000000000
                1026.583333333333000000
                0.000000000000000000
                216.958333333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPart1
              DataField = 'CurrentReceivable'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = []
              Mask = '###,###,##0.00'
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText5: TQRDBText
              Left = 340
              Top = 0
              Width = 49
              Height = 15
              Size.Values = (
                39.687500000000000000
                899.583333333333300000
                0.000000000000000000
                129.645833333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPart1
              DataField = 'CurrentNumberbills'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = []
              Mask = '###,##0 '
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRShape21: TQRShape
              Tag = 1000
              Left = 630
              Top = 1
              Width = 39
              Height = 10
              Size.Values = (
                26.458333333333330000
                1666.875000000000000000
                2.645833333333333000
                103.187500000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRDBText6: TQRDBText
              Left = 519
              Top = 0
              Width = 129
              Height = 15
              Size.Values = (
                39.687500000000000000
                1373.187500000000000000
                0.000000000000000000
                341.312500000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPart1
              DataField = 'OverReceivable'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = []
              Mask = '###,###,##0.00'
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText7: TQRDBText
              Left = 471
              Top = 0
              Width = 49
              Height = 15
              Size.Values = (
                39.687500000000000000
                1246.187500000000000000
                0.000000000000000000
                129.645833333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPart1
              DataField = 'OverNumberbills'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = []
              Mask = '###,##0 '
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText8: TQRDBText
              Left = 650
              Top = 0
              Width = 88
              Height = 15
              Size.Values = (
                39.687500000000000000
                1719.791666666667000000
                0.000000000000000000
                232.833333333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPart1
              DataField = 'DiscoNumberbills'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = []
              Mask = '###,##0 '
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRShape43: TQRShape
              Left = 188
              Top = 10
              Width = 551
              Height = 10
              Size.Values = (
                26.458333333333330000
                497.416666666666700000
                26.458333333333330000
                1457.854166666667000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsHorLine
              VertAdjust = 0
            end
          end
          object SummaryBand2: TQRBand
            Left = 38
            Top = 284
            Width = 740
            Height = 15
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
              39.687500000000000000
              1957.916666666667000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbSummary
            object QRShape6: TQRShape
              Tag = 1000
              Left = 169
              Top = 1
              Width = 39
              Height = 10
              Size.Values = (
                26.458333333333330000
                447.145833333333300000
                2.645833333333333000
                103.187500000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape16: TQRShape
              Tag = 1000
              Left = 321
              Top = 1
              Width = 39
              Height = 10
              Size.Values = (
                26.458333333333330000
                849.312500000000000000
                2.645833333333333000
                103.187500000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape17: TQRShape
              Tag = 1000
              Left = 452
              Top = 1
              Width = 39
              Height = 10
              Size.Values = (
                26.458333333333330000
                1195.916666666667000000
                2.645833333333333000
                103.187500000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape18: TQRShape
              Tag = 1000
              Left = 228
              Top = 1
              Width = 39
              Height = 10
              Size.Values = (
                26.458333333333330000
                603.250000000000000000
                2.645833333333333000
                103.187500000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape19: TQRShape
              Tag = 1000
              Left = 369
              Top = 1
              Width = 39
              Height = 10
              Size.Values = (
                26.458333333333330000
                976.312500000000000000
                2.645833333333333000
                103.187500000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape20: TQRShape
              Tag = 1000
              Left = 500
              Top = 1
              Width = 39
              Height = 10
              Size.Values = (
                26.458333333333330000
                1322.916666666667000000
                2.645833333333333000
                103.187500000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape22: TQRShape
              Tag = 1000
              Left = 630
              Top = 1
              Width = 39
              Height = 10
              Size.Values = (
                26.458333333333330000
                1666.875000000000000000
                2.645833333333333000
                103.187500000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel15: TQRLabel
              Left = 0
              Top = 0
              Width = 189
              Height = 15
              Size.Values = (
                39.687500000000000000
                0.000000000000000000
                0.000000000000000000
                500.062500000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'TOTAL'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRExpr1: TQRExpr
              Left = 188
              Top = 0
              Width = 60
              Height = 15
              Size.Values = (
                39.687500000000000000
                497.416666666666700000
                0.000000000000000000
                158.750000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(qPart1.TotalNumberbills)'
              Mask = '###,##0 '
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRExpr2: TQRExpr
              Left = 340
              Top = 0
              Width = 49
              Height = 15
              Size.Values = (
                39.687500000000000000
                899.583333333333300000
                0.000000000000000000
                129.645833333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(qPart1.CurrentNumberbills)'
              Mask = '###,##0 '
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRExpr3: TQRExpr
              Left = 471
              Top = 0
              Width = 49
              Height = 15
              Size.Values = (
                39.687500000000000000
                1246.187500000000000000
                0.000000000000000000
                129.645833333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(qPart1.OverNumberbills)'
              Mask = '###,##0 '
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRExpr4: TQRExpr
              Left = 650
              Top = 0
              Width = 88
              Height = 15
              Size.Values = (
                39.687500000000000000
                1719.791666666667000000
                0.000000000000000000
                232.833333333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(qPart1.DiscoNumberbills)'
              Mask = '###,##0 '
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRExpr5: TQRExpr
              Left = 246
              Top = 0
              Width = 92
              Height = 15
              Size.Values = (
                39.687500000000000000
                650.875000000000000000
                0.000000000000000000
                243.416666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(qPart1.TotalReceivable)'
              Mask = '###,###,##0.00'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRExpr6: TQRExpr
              Left = 390
              Top = 0
              Width = 82
              Height = 15
              Size.Values = (
                39.687500000000000000
                1031.875000000000000000
                0.000000000000000000
                216.958333333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              OnPrint = QRExpr6Print
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(qPart1.CurrentReceivable)'
              Mask = '###,###,##0.00'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRExpr7: TQRExpr
              Left = 519
              Top = 0
              Width = 129
              Height = 15
              Size.Values = (
                39.687500000000000000
                1373.187500000000000000
                0.000000000000000000
                341.312500000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(qPart1.OverReceivable)'
              Mask = '###,###,##0.00'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
          end
        end
      end
      object FSRPart2: TTabSheet
        Caption = 'FSRPart2'
        ImageIndex = 1
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object part2: TQuickRep
          Left = 0
          Top = 0
          Width = 816
          Height = 1248
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          DataSet = qPart2
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
          Page.PaperSize = FanfoldGerLegal
          Page.Continuous = False
          Page.Values = (
            200.000000000000000000
            3302.000000000000000000
            200.000000000000000000
            2159.000000000000000000
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
          PrinterSettings.MemoryLimit = 1000000
          PrinterSettings.PrintQuality = 0
          PrinterSettings.Collate = 0
          PrinterSettings.ColorOption = 0
          PrintIfEmpty = True
          SnapToGrid = True
          Units = MM
          Zoom = 100
          PrevFormStyle = fsNormal
          PreviewInitialState = wsMaximized
          PrevInitialZoom = qrZoomToWidth
          PreviewDefaultSaveType = stQRP
          PreviewLeft = 0
          PreviewTop = 0
          object ColumnHeaderBand1: TQRBand
            Left = 38
            Top = 76
            Width = 740
            Height = 15
            Frame.DrawBottom = True
            AlignToBottom = False
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              39.687500000000000000
              1957.916666666667000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbColumnHeader
            object QRShape24: TQRShape
              Tag = 1000
              Left = 551
              Top = 1
              Width = 39
              Height = 10
              Size.Values = (
                26.458333333333330000
                1457.854166666667000000
                2.645833333333333000
                103.187500000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape14: TQRShape
              Tag = 1000
              Left = 369
              Top = 1
              Width = 39
              Height = 10
              Size.Values = (
                26.458333333333330000
                976.312500000000000000
                2.645833333333333000
                103.187500000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel16: TQRLabel
              Left = 0
              Top = 0
              Width = 388
              Height = 17
              Size.Values = (
                44.979166666666670000
                0.000000000000000000
                0.000000000000000000
                1026.583333333333000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'ITEMS'
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
            object QRLabel17: TQRLabel
              Left = 389
              Top = 0
              Width = 181
              Height = 17
              Size.Values = (
                44.979166666666670000
                1029.229166666667000000
                0.000000000000000000
                478.895833333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'FOR THE MONTH'
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
            object QRLabel18: TQRLabel
              Left = 570
              Top = 0
              Width = 169
              Height = 17
              Size.Values = (
                44.979166666666670000
                1508.125000000000000000
                0.000000000000000000
                447.145833333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'YEAR TO DATE'
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
          object DetailBand2: TQRBand
            Left = 38
            Top = 91
            Width = 740
            Height = 15
            Frame.DrawBottom = True
            AlignToBottom = False
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              39.687500000000000000
              1957.916666666667000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbDetail
            object QRShape23: TQRShape
              Tag = 1000
              Left = 369
              Top = 1
              Width = 39
              Height = 10
              Size.Values = (
                26.458333333333330000
                976.312500000000000000
                2.645833333333333000
                103.187500000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape25: TQRShape
              Tag = 1000
              Left = 551
              Top = 1
              Width = 39
              Height = 10
              Size.Values = (
                26.458333333333330000
                1457.854166666667000000
                2.645833333333333000
                103.187500000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRDBText9: TQRDBText
              Left = 0
              Top = 0
              Width = 388
              Height = 17
              Size.Values = (
                44.979166666666670000
                0.000000000000000000
                0.000000000000000000
                1026.583333333333000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPart2
              DataField = 'ItemName'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 8
            end
            object QRDBText10: TQRDBText
              Left = 389
              Top = 0
              Width = 181
              Height = 17
              Size.Values = (
                44.979166666666670000
                1029.229166666667000000
                0.000000000000000000
                478.895833333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPart2
              DataField = 'forMo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Mask = '###,###,##0.00 '
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 8
            end
            object QRDBText11: TQRDBText
              Left = 570
              Top = 0
              Width = 169
              Height = 17
              Size.Values = (
                44.979166666666670000
                1508.125000000000000000
                0.000000000000000000
                447.145833333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPart2
              DataField = 'prvyrDate'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Mask = '###,###,##0.00 '
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 8
            end
          end
          object SummaryBand3: TQRBand
            Left = 38
            Top = 106
            Width = 740
            Height = 15
            Frame.DrawBottom = True
            AlignToBottom = False
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              39.687500000000000000
              1957.916666666667000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbSummary
            object QRShape26: TQRShape
              Tag = 1000
              Left = 369
              Top = 1
              Width = 39
              Height = 10
              Size.Values = (
                26.458333333333330000
                976.312500000000000000
                2.645833333333333000
                103.187500000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape27: TQRShape
              Tag = 1000
              Left = 551
              Top = 1
              Width = 39
              Height = 10
              Size.Values = (
                26.458333333333330000
                1457.854166666667000000
                2.645833333333333000
                103.187500000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel19: TQRLabel
              Left = 3
              Top = 2
              Width = 383
              Height = 17
              Size.Values = (
                44.979166666666670000
                7.937500000000000000
                5.291666666666667000
                1013.354166666667000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              Caption = '6.. Total Receivable'
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
            object QRExpr8: TQRExpr
              Left = 389
              Top = 0
              Width = 181
              Height = 17
              Size.Values = (
                44.979166666666670000
                1029.229166666667000000
                0.000000000000000000
                478.895833333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(qPart2.forMo)'
              Mask = '###,###,##0.00 '
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRExpr9: TQRExpr
              Left = 570
              Top = 0
              Width = 169
              Height = 17
              Size.Values = (
                44.979166666666670000
                1508.125000000000000000
                0.000000000000000000
                447.145833333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(qPart2.prvyrDate)'
              Mask = '###,###,##0.00 '
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
          end
        end
      end
      object FSRPart3: TTabSheet
        Caption = 'FSRPart3'
        ImageIndex = 2
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object part3: TQuickRep
          Left = -4
          Top = 0
          Width = 816
          Height = 1248
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          DataSet = qPart3
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
          Page.PaperSize = FanfoldGerLegal
          Page.Continuous = False
          Page.Values = (
            200.000000000000000000
            3302.000000000000000000
            200.000000000000000000
            2159.000000000000000000
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
          PrinterSettings.MemoryLimit = 1000000
          PrinterSettings.PrintQuality = 0
          PrinterSettings.Collate = 0
          PrinterSettings.ColorOption = 0
          PrintIfEmpty = True
          SnapToGrid = True
          Units = MM
          Zoom = 100
          PrevFormStyle = fsNormal
          PreviewInitialState = wsMaximized
          PrevInitialZoom = qrZoomToWidth
          PreviewDefaultSaveType = stQRP
          PreviewLeft = 0
          PreviewTop = 0
          object ColumnHeaderBand2: TQRBand
            Left = 38
            Top = 76
            Width = 740
            Height = 32
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
              84.666666666666670000
              1957.916666666667000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbColumnHeader
            object QRShape32: TQRShape
              Left = 2
              Top = 0
              Width = 738
              Height = 32
              Size.Values = (
                84.666666666666670000
                5.291666666666667000
                0.000000000000000000
                1952.625000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsHorLine
              VertAdjust = 0
            end
            object QRShape29: TQRShape
              Tag = 1000
              Left = 451
              Top = 1
              Width = 39
              Height = 15
              Size.Values = (
                39.687500000000000000
                1193.270833333333000000
                2.645833333333333000
                103.187500000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape28: TQRShape
              Tag = 1000
              Left = 228
              Top = 1
              Width = 39
              Height = 15
              Size.Values = (
                39.687500000000000000
                603.250000000000000000
                2.645833333333333000
                103.187500000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape37: TQRShape
              Left = 369
              Top = 16
              Width = 39
              Height = 15
              Size.Values = (
                39.687500000000000000
                976.312500000000000000
                42.333333333333330000
                103.187500000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape38: TQRShape
              Left = 551
              Top = 16
              Width = 39
              Height = 15
              Size.Values = (
                39.687500000000000000
                1457.854166666667000000
                42.333333333333330000
                103.187500000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape42: TQRShape
              Left = 630
              Top = 16
              Width = 39
              Height = 15
              Size.Values = (
                39.687500000000000000
                1666.875000000000000000
                42.333333333333330000
                103.187500000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel20: TQRLabel
              Left = 248
              Top = 0
              Width = 222
              Height = 15
              Size.Values = (
                39.687500000000000000
                656.166666666666700000
                0.000000000000000000
                587.375000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'FOR THE MONTH'
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
            object QRLabel21: TQRLabel
              Left = 472
              Top = 0
              Width = 265
              Height = 15
              Size.Values = (
                39.687500000000000000
                1248.833333333333000000
                0.000000000000000000
                701.145833333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'TO DATE'
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
            object QRLabel22: TQRLabel
              Left = 248
              Top = 17
              Width = 140
              Height = 15
              Size.Values = (
                39.687500000000000000
                656.166666666666700000
                44.979166666666670000
                370.416666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'CURRENT'
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
              Left = 389
              Top = 17
              Width = 81
              Height = 15
              Size.Values = (
                39.687500000000000000
                1029.229166666667000000
                44.979166666666670000
                214.312500000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'ARREAR'
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
            object QRLabel24: TQRLabel
              Left = 571
              Top = 17
              Width = 78
              Height = 15
              Size.Values = (
                39.687500000000000000
                1510.770833333333000000
                44.979166666666670000
                206.375000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'ARREAR'
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
            object QRLabel25: TQRLabel
              Left = 471
              Top = 17
              Width = 99
              Height = 15
              Size.Values = (
                39.687500000000000000
                1246.187500000000000000
                44.979166666666670000
                261.937500000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'CURRENT'
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
            object QRLabel26: TQRLabel
              Left = 650
              Top = 17
              Width = 88
              Height = 15
              Size.Values = (
                39.687500000000000000
                1719.791666666667000000
                44.979166666666670000
                232.833333333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'TOTAL'
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
          object DetailBand3: TQRBand
            Left = 38
            Top = 108
            Width = 740
            Height = 16
            AlignToBottom = False
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              42.333333333333330000
              1957.916666666667000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbDetail
            object QRShape44: TQRShape
              Left = 246
              Top = 8
              Width = 493
              Height = 12
              Size.Values = (
                31.750000000000000000
                650.875000000000000000
                21.166666666666670000
                1304.395833333333000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsHorLine
              VertAdjust = 0
            end
            object QRShape30: TQRShape
              Tag = 1000
              Left = 369
              Top = 1
              Width = 39
              Height = 10
              Size.Values = (
                26.458333333333330000
                976.312500000000000000
                2.645833333333333000
                103.187500000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape31: TQRShape
              Tag = 1000
              Left = 551
              Top = 1
              Width = 39
              Height = 10
              Size.Values = (
                26.458333333333330000
                1457.854166666667000000
                2.645833333333333000
                103.187500000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape39: TQRShape
              Tag = 1000
              Left = 224
              Top = -1
              Width = 39
              Height = 10
              Size.Values = (
                26.458333333333330000
                592.666666666666700000
                -2.645833333333333000
                103.187500000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape40: TQRShape
              Tag = 1000
              Left = 451
              Top = 1
              Width = 39
              Height = 10
              Size.Values = (
                26.458333333333330000
                1193.270833333333000000
                2.645833333333333000
                103.187500000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape41: TQRShape
              Tag = 1000
              Left = 630
              Top = 1
              Width = 39
              Height = 10
              Size.Values = (
                26.458333333333330000
                1666.875000000000000000
                2.645833333333333000
                103.187500000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRDBText12: TQRDBText
              Left = 2
              Top = 2
              Width = 238
              Height = 18
              Size.Values = (
                47.625000000000000000
                5.291666666666667000
                5.291666666666667000
                629.708333333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPart3
              DataField = 'ItemName'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 8
            end
            object QRDBText13: TQRDBText
              Left = 248
              Top = 2
              Width = 140
              Height = 18
              Size.Values = (
                47.625000000000000000
                656.166666666666700000
                5.291666666666667000
                370.416666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPart3
              DataField = 'Current'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = []
              Mask = '###,###,##0.00 '
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText14: TQRDBText
              Left = 391
              Top = 2
              Width = 81
              Height = 18
              Size.Values = (
                47.625000000000000000
                1034.520833333333000000
                5.291666666666667000
                214.312500000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPart3
              DataField = 'Arrear'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = []
              Mask = '###,###,##0.00 '
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText15: TQRDBText
              Left = 471
              Top = 2
              Width = 99
              Height = 18
              Size.Values = (
                47.625000000000000000
                1246.187500000000000000
                5.291666666666667000
                261.937500000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPart3
              DataField = 'Current2Date'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = []
              Mask = '###,###,##0.00 '
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText16: TQRDBText
              Left = 571
              Top = 2
              Width = 78
              Height = 18
              Size.Values = (
                47.625000000000000000
                1510.770833333333000000
                5.291666666666667000
                206.375000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPart3
              DataField = 'Arrear2Date'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = []
              Mask = '###,###,##0.00 '
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText17: TQRDBText
              Left = 650
              Top = 2
              Width = 88
              Height = 18
              Size.Values = (
                47.625000000000000000
                1719.791666666667000000
                5.291666666666667000
                232.833333333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPart3
              DataField = 'Total2Date'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = []
              Mask = '###,###,##0.00 '
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
          end
          object QRBand1: TQRBand
            Left = 38
            Top = 124
            Width = 740
            Height = 38
            Frame.DrawBottom = True
            AlignToBottom = False
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              100.541666666666700000
              1957.916666666667000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbSummary
            object QRLabel34: TQRLabel
              Left = 3
              Top = 3
              Width = 235
              Height = 15
              Size.Values = (
                39.687500000000000000
                7.937500000000000000
                7.937500000000000000
                621.770833333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              Caption = '8. Net Receivable'
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
            object QRLabel35: TQRLabel
              Left = 3
              Top = 17
              Width = 235
              Height = 18
              Size.Values = (
                47.625000000000000000
                7.937500000000000000
                44.979166666666670000
                621.770833333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              Caption = '9. Accounts Receivable under Litigation'
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
            object NetRec6: TQRLabel
              Left = 653
              Top = 3
              Width = 84
              Height = 13
              Size.Values = (
                34.395833333333330000
                1727.729166666667000000
                7.937500000000000000
                222.250000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Caption = '0.00'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object NetRec5: TQRLabel
              Left = 571
              Top = 3
              Width = 78
              Height = 13
              Size.Values = (
                34.395833333333330000
                1510.770833333333000000
                7.937500000000000000
                206.375000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Caption = '0.00'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object NetRec2: TQRLabel
              Left = 388
              Top = 3
              Width = 81
              Height = 13
              Size.Values = (
                34.395833333333330000
                1026.583333333333000000
                7.937500000000000000
                214.312500000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Caption = '0.00'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object NetRec1: TQRLabel
              Left = 247
              Top = 3
              Width = 140
              Height = 13
              Size.Values = (
                34.395833333333330000
                653.520833333333300000
                7.937500000000000000
                370.416666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Caption = '0.00'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object NetRec4: TQRLabel
              Left = 469
              Top = 3
              Width = 99
              Height = 13
              Size.Values = (
                34.395833333333330000
                1240.895833333333000000
                7.937500000000000000
                261.937500000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Caption = '0.00'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
          end
        end
      end
      object FSRPart4: TTabSheet
        Caption = 'FSRPart4'
        ImageIndex = 3
        object part4: TQuickRep
          Left = 0
          Top = 0
          Width = 816
          Height = 1248
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          DataSet = qPart4
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
          Page.PaperSize = FanfoldGerLegal
          Page.Continuous = False
          Page.Values = (
            200.000000000000000000
            3302.000000000000000000
            200.000000000000000000
            2159.000000000000000000
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
          PrinterSettings.MemoryLimit = 1000000
          PrinterSettings.PrintQuality = 0
          PrinterSettings.Collate = 0
          PrinterSettings.ColorOption = 0
          PrintIfEmpty = True
          SnapToGrid = True
          Units = MM
          Zoom = 100
          PrevFormStyle = fsNormal
          PreviewInitialState = wsMaximized
          PrevInitialZoom = qrZoomToWidth
          PreviewDefaultSaveType = stQRP
          PreviewLeft = 0
          PreviewTop = 0
          object ColumnHeaderBand3: TQRBand
            Left = 38
            Top = 76
            Width = 740
            Height = 15
            AlignToBottom = False
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              39.687500000000000000
              1957.916666666667000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbColumnHeader
            object QRShape51: TQRShape
              Left = 471
              Top = 8
              Width = 268
              Height = 12
              Size.Values = (
                31.750000000000000000
                1246.187500000000000000
                21.166666666666670000
                709.083333333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsHorLine
              VertAdjust = 0
            end
            object QRShape52: TQRShape
              Left = 471
              Top = -6
              Width = 268
              Height = 12
              Size.Values = (
                31.750000000000000000
                1246.187500000000000000
                -15.875000000000000000
                709.083333333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsHorLine
              VertAdjust = 0
            end
            object QRShape45: TQRShape
              Tag = 1000
              Left = 551
              Top = 1
              Width = 39
              Height = 10
              Size.Values = (
                26.458333333333330000
                1457.854166666667000000
                2.645833333333333000
                103.187500000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape46: TQRShape
              Tag = 1000
              Left = 451
              Top = 1
              Width = 39
              Height = 10
              Size.Values = (
                26.458333333333330000
                1193.270833333333000000
                2.645833333333333000
                103.187500000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape47: TQRShape
              Tag = 1000
              Left = 630
              Top = 1
              Width = 39
              Height = 10
              Size.Values = (
                26.458333333333330000
                1666.875000000000000000
                2.645833333333333000
                103.187500000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel30: TQRLabel
              Left = 471
              Top = 0
              Width = 98
              Height = 17
              Size.Values = (
                44.979166666666670000
                1246.187500000000000000
                0.000000000000000000
                259.291666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'CURRENT'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRLabel31: TQRLabel
              Left = 650
              Top = 0
              Width = 88
              Height = 17
              Size.Values = (
                44.979166666666670000
                1719.791666666667000000
                0.000000000000000000
                232.833333333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'TO DATE'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
          end
          object DetailBand4: TQRBand
            Left = 38
            Top = 91
            Width = 740
            Height = 15
            AlignToBottom = False
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              39.687500000000000000
              1957.916666666667000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbDetail
            object QRShape48: TQRShape
              Tag = 1000
              Left = 551
              Top = 1
              Width = 39
              Height = 10
              Size.Values = (
                26.458333333333330000
                1457.854166666667000000
                2.645833333333333000
                103.187500000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape49: TQRShape
              Tag = 1000
              Left = 451
              Top = 1
              Width = 39
              Height = 10
              Size.Values = (
                26.458333333333330000
                1193.270833333333000000
                2.645833333333333000
                103.187500000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape50: TQRShape
              Tag = 1000
              Left = 630
              Top = 1
              Width = 39
              Height = 10
              Size.Values = (
                26.458333333333330000
                1666.875000000000000000
                2.645833333333333000
                103.187500000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape53: TQRShape
              Left = 471
              Top = 8
              Width = 99
              Height = 12
              Size.Values = (
                31.750000000000000000
                1246.187500000000000000
                21.166666666666670000
                261.937500000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsHorLine
              VertAdjust = 0
            end
            object QRShape56: TQRShape
              Left = 650
              Top = 8
              Width = 89
              Height = 12
              Size.Values = (
                31.750000000000000000
                1719.791666666667000000
                21.166666666666670000
                235.479166666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsHorLine
              VertAdjust = 0
            end
            object QRDBText28: TQRDBText
              Left = 0
              Top = 0
              Width = 246
              Height = 17
              Size.Values = (
                44.979166666666670000
                0.000000000000000000
                0.000000000000000000
                650.875000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPart4
              DataField = 'ItemName'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 8
            end
            object QRDBText29: TQRDBText
              Left = 471
              Top = 0
              Width = 98
              Height = 17
              Size.Values = (
                44.979166666666670000
                1246.187500000000000000
                0.000000000000000000
                259.291666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPart4
              DataField = 'Current'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 8
            end
            object QRDBText30: TQRDBText
              Left = 650
              Top = 0
              Width = 88
              Height = 17
              Size.Values = (
                44.979166666666670000
                1719.791666666667000000
                0.000000000000000000
                232.833333333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPart4
              DataField = 'Todate'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 8
            end
          end
          object SummaryBand1: TQRBand
            Left = 38
            Top = 106
            Width = 740
            Height = 280
            Frame.DrawTop = True
            AlignToBottom = False
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              740.833333333333300000
              1957.916666666667000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbSummary
            object QRLabel27: TQRLabel
              Left = 32
              Top = 24
              Width = 75
              Height = 17
              Size.Values = (
                44.979166666666670000
                84.666666666666670000
                63.500000000000000000
                198.437500000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taLeftJustify
              AlignToBand = False
              Caption = 'Prepared by:'
              Color = clWhite
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 10
            end
            object QRLabel28: TQRLabel
              Left = 64
              Top = 152
              Width = 165
              Height = 17
              Size.Values = (
                44.979166666666670000
                169.333333333333300000
                402.166666666666700000
                436.562500000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taLeftJustify
              AlignToBand = False
              Caption = 'Certified true and correct by:'
              Color = clWhite
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 10
            end
            object QRLabel29: TQRLabel
              Left = 464
              Top = 152
              Width = 72
              Height = 17
              Size.Values = (
                44.979166666666670000
                1227.666666666667000000
                402.166666666666700000
                190.500000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taLeftJustify
              AlignToBand = False
              Caption = 'Attested  by'
              Color = clWhite
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 10
            end
            object QRLabel32: TQRLabel
              Left = 288
              Top = 24
              Width = 74
              Height = 17
              Size.Values = (
                44.979166666666670000
                762.000000000000000000
                63.500000000000000000
                195.791666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taLeftJustify
              AlignToBand = False
              Caption = 'Checked by:'
              Color = clWhite
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 10
            end
            object QRLabel33: TQRLabel
              Left = 496
              Top = 24
              Width = 73
              Height = 17
              Size.Values = (
                44.979166666666670000
                1312.333333333333000000
                63.500000000000000000
                193.145833333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taLeftJustify
              AlignToBand = False
              Caption = 'Reviewed by'
              Color = clWhite
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 10
            end
            object QRDBText18: TQRDBText
              Left = 64
              Top = 86
              Width = 200
              Height = 20
              Size.Values = (
                52.916666666666670000
                169.333333333333300000
                227.541666666666700000
                529.166666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qReportSignatories
              DataField = 'PreparedBy'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 12
            end
            object QRDBText19: TQRDBText
              Left = 64
              Top = 112
              Width = 200
              Height = 17
              Size.Values = (
                44.979166666666670000
                169.333333333333300000
                296.333333333333300000
                529.166666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qReportSignatories
              DataField = 'PreparedPos'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 9
            end
            object QRDBText20: TQRDBText
              Left = 320
              Top = 88
              Width = 200
              Height = 19
              Size.Values = (
                50.270833333333330000
                846.666666666666700000
                232.833333333333300000
                529.166666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qReportSignatories
              DataField = 'CheckBy'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 12
            end
            object QRDBText21: TQRDBText
              Left = 320
              Top = 108
              Width = 200
              Height = 17
              Size.Values = (
                44.979166666666670000
                846.666666666666700000
                285.750000000000000000
                529.166666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qReportSignatories
              DataField = 'CheckPos'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 9
            end
            object QRDBText22: TQRDBText
              Left = 536
              Top = 88
              Width = 200
              Height = 19
              Size.Values = (
                50.270833333333330000
                1418.166666666667000000
                232.833333333333300000
                529.166666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qReportSignatories
              DataField = 'ReviewedBy'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 12
            end
            object QRDBText23: TQRDBText
              Left = 536
              Top = 108
              Width = 200
              Height = 17
              Size.Values = (
                44.979166666666670000
                1418.166666666667000000
                285.750000000000000000
                529.166666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qReportSignatories
              DataField = 'ReviewedPos'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 9
            end
            object QRDBText24: TQRDBText
              Left = 104
              Top = 216
              Width = 200
              Height = 19
              Size.Values = (
                50.270833333333330000
                275.166666666666700000
                571.500000000000000000
                529.166666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qReportSignatories
              DataField = 'CertTCBy'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 12
            end
            object QRDBText25: TQRDBText
              Left = 104
              Top = 236
              Width = 200
              Height = 17
              Size.Values = (
                44.979166666666670000
                275.166666666666700000
                624.416666666666700000
                529.166666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qReportSignatories
              DataField = 'CertTCPos'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 9
            end
            object QRDBText26: TQRDBText
              Left = 496
              Top = 216
              Width = 200
              Height = 19
              Size.Values = (
                50.270833333333330000
                1312.333333333333000000
                571.500000000000000000
                529.166666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qReportSignatories
              DataField = 'AttestedBy'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 12
            end
            object QRDBText27: TQRDBText
              Left = 496
              Top = 236
              Width = 200
              Height = 17
              Size.Values = (
                44.979166666666670000
                1312.333333333333000000
                624.416666666666700000
                529.166666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qReportSignatories
              DataField = 'AttestedPos'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 9
            end
          end
        end
      end
    end
  end
  object Edit1: TEdit
    Left = 113
    Top = 23
    Width = 105
    Height = 21
    TabOrder = 0
  end
  object DateTimePicker1: TDateTimePicker
    Left = 113
    Top = 50
    Width = 105
    Height = 21
    Date = 40934.482217673610000000
    Time = 40934.482217673610000000
    TabOrder = 1
    OnCloseUp = DateTimePicker1CloseUp
  end
  object DateTimePicker2: TDateTimePicker
    Left = 113
    Top = 74
    Width = 105
    Height = 21
    Date = 40934.482265821760000000
    Time = 40934.482265821760000000
    TabOrder = 2
  end
  object NxButton1: TNxButton
    Left = 35
    Top = 106
    Width = 143
    Caption = 'Print Preview'
    TabOrder = 4
    OnClick = NxButton1Click
  end
  object NxButton2: TNxButton
    Left = 35
    Top = 135
    Width = 143
    Caption = 'FSR Configuration'
    TabOrder = 5
    OnClick = NxButton2Click
  end
  object NxButton3: TNxButton
    Left = 197
    Top = 135
    Width = 143
    Caption = 'Signatories'
    TabOrder = 6
    OnClick = NxButton3Click
  end
  object NxButton4: TNxButton
    Left = 197
    Top = 106
    Width = 143
    Caption = 'Update Totals'
    TabOrder = 7
    OnClick = NxButton4Click
  end
  object GroupBox1: TGroupBox
    Left = 223
    Top = 15
    Width = 113
    Height = 83
    Caption = 'Area'
    TabOrder = 8
    object DMO: TCheckBox
      Left = 8
      Top = 25
      Width = 42
      Height = 17
      Caption = 'DMO'
      TabOrder = 0
    end
    object SAO: TCheckBox
      Left = 8
      Top = 49
      Width = 40
      Height = 18
      Caption = 'SAO'
      TabOrder = 1
    end
    object PAO: TCheckBox
      Left = 57
      Top = 25
      Width = 42
      Height = 17
      Caption = 'PAO'
      TabOrder = 2
    end
    object LAO: TCheckBox
      Left = 57
      Top = 49
      Width = 42
      Height = 17
      Caption = 'LAO'
      TabOrder = 3
    end
  end
  object qPart1: TMyQuery
    Connection = BillingData.MyConnection1
    SQL.Strings = (
      'DROP TABLE IF EXISTS bills1;'
      ''
      '  CREATE TABLE bills1'
      '  SELECT wratecode,'
      '      sum(TotalNumberbills) TotalNumberbills,'
      '      sum(TotalReceivable) TotalReceivable,'
      '      SUM(CurrentNumberbills) CurrentNumberbills,'
      '      sum(CurrentReceivable) CurrentReceivable,'
      '      SUM(OverNumberbills) OverNumberbills,'
      '      sum(OverReceivable) OverReceivable,'
      '      SUM(DiscoNumberbills) DiscoNumberbills'
      '  FROM'
      '  ('
      '    &DMO &DMOUNION'
      '    &SAO &SAOUNION'
      '    &PAO &PAOUNION'
      '    &LAO '
      ''
      '  ) as bills'
      '    group by wratecode;'
      ''
      '  SELECT'
      '    a.ItemName,'
      '    b.TotalNumberbills,'
      '    b.TotalReceivable,'
      '    b.CurrentNumberbills,'
      '    b.CurrentReceivable,'
      '    b.OverNumberbills,'
      '    b.OverReceivable,'
      '    b.DiscoNumberbills'
      '  FROM'
      '    mfsrsheetdpart1 a'
      '  INNER JOIN bills1 b on b.wratecode = a.Ratecode'
      '    order by a.itemname;')
    Left = 8
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'BillingPeriod'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'billmonth'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'BillingPeriod'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'billmonth'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'BillingPeriod'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'billmonth'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'BillingPeriod'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'billmonth'
        Value = nil
      end>
    MacroData = <
      item
        Name = 'DMO'
        Value = 
          '  (select'#13#10'  m.wratecode,'#13#10'      sum(1) TotalNumberbills,'#13#10'     ' +
          ' CAST(SUM(ifnull(u.amount,0) -'#13#10'                  (ifnull(bh.oca' +
          'mount1,0) +'#13#10'                   ifnull(bh.ocamount2,0) +'#13#10'      ' +
          '             ifnull(bh.ocamount3,0) +'#13#10'                   ifnull' +
          '(u.UCME,0) +'#13#10'                   ifnull(u.UCEC,0) +  '#13#10'         ' +
          '          ifnull(u.VATDist,0) +'#13#10'                   ifnull(u.VAT' +
          'GenCO,0) + '#13#10'                   ifnull(u.VATTransco,0) +'#13#10'      ' +
          '             ifnull(u.VATSystemLossGenco,0)  +'#13#10'                ' +
          '   ifnull(bh.MCC,0) + '#13#10'                   ifnull(pf.MCC,0) + '#13#10 +
          '                   ifnull(lbh.MCC,0)  )  ) '#13#10'                  a' +
          's DECIMAL(18,2)) TotalReceivable,'#13#10'      SUM(IF(:BillingPeriod =' +
          ' u.BillMonth or (substr(u.billmonth,1,2) = '#39'PF'#39' and date_format(' +
          'u.date,'#39'%m%y'#39') = :billmonth),1,0)) CurrentNumberbills,'#13#10'      CA' +
          'ST(SUM(IF(:BillingPeriod = u.BillMonth or (substr(u.billmonth,1,' +
          '2) = '#39'PF'#39' and date_format(u.date,'#39'%m%y'#39') = :billmonth),'#13#10'       ' +
          '           ifnull(u.amount,0) -'#13#10'                  (ifnull(bh.oc' +
          'amount1,0) +'#13#10'                   ifnull(bh.ocamount2,0) +'#13#10'     ' +
          '              ifnull(bh.ocamount3,0) +'#13#10'                   ifnul' +
          'l(u.UCME,0) +'#13#10'                   ifnull(u.UCEC,0) +  '#13#10'        ' +
          '           ifnull(u.VATDist,0) +'#13#10'                   ifnull(u.VA' +
          'TGenCO,0) + '#13#10'                   ifnull(u.VATTransco,0) +'#13#10'     ' +
          '              ifnull(u.VATSystemLossGenco,0)  +'#13#10'               ' +
          '    ifnull(bh.MCC,0) + ifnull(pf.MCC,0) + ifnull(lbh.MCC,0) ),0)' +
          ') '#13#10'                   as DECIMAL(18,2)) CurrentReceivable,'#13#10'   ' +
          '   SUM(IF(:BillingPeriod <> u.BillMonth and date_format(u.date,'#39 +
          '%m%y'#39') <> :billmonth,1,0)) OverNumberbills,'#13#10'      CAST(SUM(IF(:' +
          'BillingPeriod <> u.BillMonth and date_format(u.date,'#39'%m%y'#39') <> :' +
          'billmonth,'#13#10'                  ifnull(u.amount,0) -'#13#10'            ' +
          '      (ifnull(bh.ocamount1,0) +'#13#10'                   ifnull(bh.oc' +
          'amount2,0) +'#13#10'                   ifnull(bh.ocamount3,0) +'#13#10'     ' +
          '              ifnull(u.UCME,0) +'#13#10'                   ifnull(u.UC' +
          'EC,0) +  '#13#10'                   ifnull(u.VATDist,0) +'#13#10'           ' +
          '        ifnull(u.VATGenCO,0) + '#13#10'                   ifnull(u.VAT' +
          'Transco,0) +'#13#10'                   ifnull(u.VATSystemLossGenco,0) ' +
          ' +'#13#10'                   ifnull(bh.MCC,0) + ifnull(pf.MCC,0) + ifn' +
          'ull(lbh.MCC,0) ),0)) as DECIMAL(18,2)) OverReceivable,'#13#10'      SU' +
          'M(IF(m.ConnCode <> 1,1,0)) DiscoNumberbills    '#13#10'    from zaneco' +
          '.unpaidbills u'#13#10'    left join zaneco.master m on (u.code = m.cod' +
          'e)'#13#10'    left join zaneco.billhistory bh on (u.code = bh.code and' +
          ' u.billmonth = bh.billmonth)'#13#10'    left join zaneco.pilferbill pf' +
          ' on (u.code = pf.code and u.billmonth = pf.billmonth)'#13#10'    left ' +
          'join zaneco.latebillhistory lbh on (u.code = lbh.code and u.bill' +
          'month = lbh.billmonth)'#13#10'    where m.WRateCode in ('#39'R'#39','#39'H'#39','#39'L'#39')'#13#10 +
          '    group by m.WRateCode)'#13#10
        Active = False
      end
      item
        Name = 'DMOUNION'
        Value = 'union all'
        Active = False
      end
      item
        Name = 'SAO'
        Value = 
          '  (select'#13#10'  m.wratecode,'#13#10'      sum(1) TotalNumberbills,'#13#10'     ' +
          ' CAST(SUM(ifnull(u.amount,0) -'#13#10'                  (ifnull(bh.oca' +
          'mount1,0) +'#13#10'                   ifnull(bh.ocamount2,0) +'#13#10'      ' +
          '             ifnull(bh.ocamount3,0) +'#13#10'                   ifnull' +
          '(u.UCME,0) +'#13#10'                   ifnull(u.UCEC,0) +  '#13#10'         ' +
          '          ifnull(u.VATDist,0) +'#13#10'                   ifnull(u.VAT' +
          'GenCO,0) + '#13#10'                   ifnull(u.VATTransco,0) +'#13#10'      ' +
          '             ifnull(u.VATSystemLossGenco,0) +'#13#10'                 ' +
          '  ifnull(bh.MCC,0) + ifnull(pf.MCC,0) + ifnull(lbh.MCC,0) )  ) '#13 +
          #10'                  as DECIMAL(18,2)) TotalReceivable,'#13#10'      SUM' +
          '(IF(:BillingPeriod = u.BillMonth or (substr(u.billmonth,1,2) = '#39 +
          'PF'#39' and date_format(u.date,'#39'%m%y'#39') = :billmonth),1,0)) CurrentNu' +
          'mberbills,'#13#10'      CAST(SUM(IF(:BillingPeriod = u.BillMonth or (s' +
          'ubstr(u.billmonth,1,2) = '#39'PF'#39' and date_format(u.date,'#39'%m%y'#39') = :' +
          'billmonth),'#13#10'                  ifnull(u.amount,0) -'#13#10'           ' +
          '       (ifnull(bh.ocamount1,0) +'#13#10'                   ifnull(bh.o' +
          'camount2,0) +'#13#10'                   ifnull(bh.ocamount3,0) +'#13#10'    ' +
          '               ifnull(u.UCME,0) +'#13#10'                   ifnull(u.U' +
          'CEC,0) +  '#13#10'                   ifnull(u.VATDist,0) +'#13#10'          ' +
          '         ifnull(u.VATGenCO,0) + '#13#10'                   ifnull(u.VA' +
          'TTransco,0) +'#13#10'                   ifnull(u.VATSystemLossGenco,0)' +
          ' +'#13#10'                   ifnull(bh.MCC,0) + ifnull(pf.MCC,0) + ifn' +
          'ull(lbh.MCC,0)),0)) '#13#10'                   as DECIMAL(18,2)) Curre' +
          'ntReceivable,'#13#10'      SUM(IF(:BillingPeriod <> u.BillMonth and da' +
          'te_format(u.date,'#39'%m%y'#39') <> :billmonth,1,0)) OverNumberbills,'#13#10' ' +
          '     CAST(SUM(IF(:BillingPeriod <> u.BillMonth and date_format(u' +
          '.date,'#39'%m%y'#39') <> :billmonth,'#13#10'                  ifnull(u.amount,' +
          '0) -'#13#10'                  (ifnull(bh.ocamount1,0) +'#13#10'             ' +
          '      ifnull(bh.ocamount2,0) +'#13#10'                   ifnull(bh.oca' +
          'mount3,0) +'#13#10'                   ifnull(u.UCME,0) +'#13#10'            ' +
          '       ifnull(u.UCEC,0) +  '#13#10'                   ifnull(u.VATDist' +
          ',0) +'#13#10'                   ifnull(u.VATGenCO,0) + '#13#10'             ' +
          '      ifnull(u.VATTransco,0) +'#13#10'                   ifnull(u.VATS' +
          'ystemLossGenco,0) +'#13#10'                   ifnull(bh.MCC,0) + ifnul' +
          'l(pf.MCC,0) + ifnull(lbh.MCC,0)),0)) as DECIMAL(18,2)) OverRecei' +
          'vable,'#13#10'      SUM(IF(m.ConnCode <> 1,1,0)) DiscoNumberbills   '#13#10 +
          '    from zanecopao.unpaidbills u'#13#10'    left join zanecosao.master' +
          ' m on (u.code = m.code)'#13#10'    left join zanecosao.billhistory bh ' +
          'on (u.code = bh.code and u.billmonth = bh.billmonth)'#13#10'    left j' +
          'oin zanecosao.pilferbill pf on (u.code = pf.code and u.billmonth' +
          ' = pf.billmonth)'#13#10'    left join zanecosao.latebillhistory lbh on' +
          ' (u.code = lbh.code and u.billmonth = lbh.billmonth)'#13#10'    where ' +
          'm.WRateCode in ('#39'R'#39','#39'H'#39','#39'L'#39')'#13#10'    group by m.WRateCode)'#13#10
        Active = False
      end
      item
        Name = 'SAOUNION'
        Value = 'union all'
        Active = False
      end
      item
        Name = 'PAO'
        Value = 
          '  (select'#13#10#13#10'     m.wratecode,'#13#10'      sum(1) TotalNumberbills,'#13#10 +
          '      CAST(SUM(ifnull(u.amount,0) -'#13#10'                  (ifnull(b' +
          'h.ocamount1,0) +'#13#10'                   ifnull(bh.ocamount2,0) +'#13#10' ' +
          '                  ifnull(bh.ocamount3,0) +'#13#10'                   i' +
          'fnull(u.UCME,0) +'#13#10'                   ifnull(u.UCEC,0) +  '#13#10'    ' +
          '               ifnull(u.VATDist,0) +'#13#10'                   ifnull(' +
          'u.VATGenCO,0) + '#13#10'                   ifnull(u.VATTransco,0) +'#13#10' ' +
          '                  ifnull(u.VATSystemLossGenco,0)  +'#13#10'           ' +
          '        ifnull(bh.MCC,0) + '#13#10'                   ifnull(pf.MCC,0)' +
          ' + '#13#10'                   ifnull(lbh.MCC,0)  )  ) '#13#10'              ' +
          '    as DECIMAL(18,2)) TotalReceivable,'#13#10#13#10'      SUM(IF(:BillingP' +
          'eriod = u.BillMonth or (substr(u.billmonth,1,2) = '#39'PF'#39' and date_' +
          'format(u.date,'#39'%m%y'#39') = :billmonth),1,0)) CurrentNumberbills,'#13#10' ' +
          '     CAST(SUM(IF(:BillingPeriod = u.BillMonth or (substr(u.billm' +
          'onth,1,2) = '#39'PF'#39' and date_format(u.date,'#39'%m%y'#39') = :billmonth),'#13#10 +
          '                  ifnull(u.amount,0) -'#13#10'                  (ifnul' +
          'l(bh.ocamount1,0) +'#13#10'                   ifnull(bh.ocamount2,0) +' +
          #13#10'                   ifnull(bh.ocamount3,0) +'#13#10'                 ' +
          '  ifnull(u.UCME,0) +'#13#10'                   ifnull(u.UCEC,0) +  '#13#10' ' +
          '                  ifnull(u.VATDist,0) +'#13#10'                   ifnu' +
          'll(u.VATGenCO,0) + '#13#10'                   ifnull(u.VATTransco,0) +' +
          #13#10'                   ifnull(u.VATSystemLossGenco,0)  +'#13#10'        ' +
          '           ifnull(bh.MCC,0) +'#13#10'                   ifnull(pf.MCC,' +
          '0) + '#13#10'                   ifnull(lbh.MCC,0) ),0)) '#13#10'            ' +
          '       as DECIMAL(18,2)) CurrentReceivable,'#13#10'      SUM(IF(:Billi' +
          'ngPeriod <> u.BillMonth and date_format(u.date,'#39'%m%y'#39') <> :billm' +
          'onth,1,0)) OverNumberbills,'#13#10'      CAST(SUM(IF(:BillingPeriod <>' +
          ' u.BillMonth and date_format(u.date,'#39'%m%y'#39') <> :billmonth,'#13#10'    ' +
          '              ifnull(u.amount,0) -'#13#10'                  (ifnull(bh' +
          '.ocamount1,0) +'#13#10'                   ifnull(bh.ocamount2,0) +'#13#10'  ' +
          '                 ifnull(bh.ocamount3,0) +'#13#10'                   if' +
          'null(u.UCME,0) +'#13#10'                   ifnull(u.UCEC,0) +  '#13#10'     ' +
          '              ifnull(u.VATDist,0) +'#13#10'                   ifnull(u' +
          '.VATGenCO,0) + '#13#10'                   ifnull(u.VATTransco,0) +'#13#10'  ' +
          '                 ifnull(u.VATSystemLossGenco,0)  +'#13#10'            ' +
          '       ifnull(bh.MCC,0) + '#13#10'                   ifnull(pf.MCC,0) ' +
          '+ '#13#10'                   ifnull(lbh.MCC,0) ),0)) as DECIMAL(18,2))' +
          ' OverReceivable,'#13#10'      SUM(IF(m.ConnCode <> 1,1,0)) DiscoNumber' +
          'bills    '#13#10'   from zanecopao.unpaidbills u'#13#10'    left join zaneco' +
          'pao.master m on (u.code = m.code)'#13#10'    left join zanecopao.billh' +
          'istory bh on (u.code = bh.code and u.billmonth = bh.billmonth)'#13#10 +
          '    left join zanecopao.pilferbill pf on (u.code = pf.code and u' +
          '.billmonth = pf.billmonth)'#13#10'    left join zanecopao.latebillhist' +
          'ory lbh on (u.code = lbh.code and u.billmonth = lbh.billmonth)'#13#10 +
          #13#10'    where m.WRateCode in ('#39'R'#39','#39'H'#39','#39'L'#39')'#13#10'    group by m.WRateCo' +
          'de)'#13#10
      end
      item
        Name = 'PAOUNION'
        Value = 'union all'
        Active = False
      end
      item
        Name = 'LAO'
        Value = 
          '  (select'#13#10#13#10'  m.wratecode,'#13#10'      sum(1) TotalNumberbills,'#13#10'   ' +
          '   CAST(SUM(ifnull(u.amount,0) -'#13#10'                  (ifnull(bh.o' +
          'camount1,0) +'#13#10'                   ifnull(bh.ocamount2,0) +'#13#10'    ' +
          '               ifnull(bh.ocamount3,0) +'#13#10'                   ifnu' +
          'll(u.UCME,0) +'#13#10'                   ifnull(u.UCEC,0) +  '#13#10'       ' +
          '            ifnull(u.VATDist,0) +'#13#10'                   ifnull(u.V' +
          'ATGenCO,0) + '#13#10'                   ifnull(u.VATTransco,0) +'#13#10'    ' +
          '               ifnull(u.VATSystemLossGenco,0)  +'#13#10'              ' +
          '     ifnull(bh.MCC,0) + ifnull(pf.MCC,0) + ifnull(lbh.MCC,0)  ) ' +
          ' ) '#13#10'                  as DECIMAL(18,2)) TotalReceivable,'#13#10'     ' +
          ' SUM(IF(:BillingPeriod = u.BillMonth or (substr(u.billmonth,1,2)' +
          ' = '#39'PF'#39' and date_format(u.date,'#39'%m%y'#39') = :billmonth),1,0)) Curre' +
          'ntNumberbills,'#13#10'      CAST(SUM(IF(:BillingPeriod = u.BillMonth o' +
          'r (substr(u.billmonth,1,2) = '#39'PF'#39' and date_format(u.date,'#39'%m%y'#39')' +
          ' = :billmonth),'#13#10'                  ifnull(u.amount,0) -'#13#10'       ' +
          '           (ifnull(bh.ocamount1,0) +'#13#10'                   ifnull(' +
          'bh.ocamount2,0) +'#13#10'                   ifnull(bh.ocamount3,0) +'#13#10 +
          '                   ifnull(u.UCME,0) +'#13#10'                   ifnull' +
          '(u.UCEC,0) +  '#13#10'                   ifnull(u.VATDist,0) +'#13#10'      ' +
          '             ifnull(u.VATGenCO,0) + '#13#10'                   ifnull(' +
          'u.VATTransco,0) +'#13#10'                   ifnull(u.VATSystemLossGenc' +
          'o,0)  +'#13#10'                   ifnull(bh.MCC,0) + ifnull(pf.MCC,0) ' +
          '+ ifnull(lbh.MCC,0) ),0)) '#13#10'                   as DECIMAL(18,2))' +
          ' CurrentReceivable,'#13#10'      SUM(IF(:BillingPeriod <> u.BillMonth ' +
          'and date_format(u.date,'#39'%m%y'#39') <> :billmonth,1,0)) OverNumberbil' +
          'ls,'#13#10'      CAST(SUM(IF(:BillingPeriod <> u.BillMonth and date_fo' +
          'rmat(u.date,'#39'%m%y'#39') <> :billmonth,'#13#10'                  ifnull(u.a' +
          'mount,0) -'#13#10'                  (ifnull(bh.ocamount1,0) +'#13#10'       ' +
          '            ifnull(bh.ocamount2,0) +'#13#10'                   ifnull(' +
          'bh.ocamount3,0) +'#13#10'                   ifnull(u.UCME,0) +'#13#10'      ' +
          '             ifnull(u.UCEC,0) +  '#13#10'                   ifnull(u.V' +
          'ATDist,0) +'#13#10'                   ifnull(u.VATGenCO,0) + '#13#10'       ' +
          '            ifnull(u.VATTransco,0) +'#13#10'                   ifnull(' +
          'u.VATSystemLossGenco,0) +'#13#10'                   ifnull(bh.MCC,0) +' +
          ' ifnull(pf.MCC,0) + ifnull(lbh.MCC,0)),0)) as DECIMAL(18,2)) Ove' +
          'rReceivable,'#13#10'      SUM(IF(m.ConnCode <> 1,1,0)) DiscoNumberbill' +
          's    '#13#10'   from zanecolao.unpaidbills u'#13#10#13#10'    left join zanecola' +
          'o.master m on (u.code = m.code)'#13#10'    left join zanecolao.billhis' +
          'tory bh on (u.code = bh.code and u.billmonth = bh.billmonth)'#13#10'  ' +
          '  left join zanecolao.pilferbill pf on (u.code = pf.code and u.b' +
          'illmonth = pf.billmonth)'#13#10'    left join zanecolao.latebillhistor' +
          'y lbh on (u.code = lbh.code and u.billmonth = lbh.billmonth)'#13#10#13#10 +
          '    where m.WRateCode in ('#39'R'#39','#39'H'#39','#39'L'#39')'#13#10'    group by m.WRateCode' +
          ')'#13#10
        Active = False
      end>
  end
  object qPart2: TMyQuery
    Connection = BillingData.MyConnection1
    SQL.Strings = (
      'SELECT'
      '  ItemName,'
      '  forMo,'
      '  prvyrDate'
      'FROM'
      '  mfsrsheetdpart2')
    Left = 64
    Top = 144
  end
  object qPart3: TMyQuery
    Connection = BillingData.MyConnection1
    SQL.Strings = (
      'DROP TABLE IF EXISTS Bills2;'
      ''
      '  CREATE TEMPORARY TABLE Bills2'
      '   select'
      '     WRateCode,'
      '     sum(CURRENT) current,'
      '     sum(ARREAR) arrear'
      '   from'
      '   (&DMO &dmobills2union'
      '    &SAO &saobills2union'
      '    &PAO &paobills2union'
      '    &LAO) as bills group by wratecode;'
      ''
      '  DROP TABLE IF EXISTS Bills3;'
      ''
      '  CREATE TEMPORARY TABLE Bills3'
      '   select'
      '     sum(CURRENT) current,'
      '     sum(ARREAR) arrear'
      '   from'
      '   (&DMOBills3 &dmobills3union'
      '    &SAOBills3 &saobills3union'
      '    &PAOBills3 &paobills3union'
      '    &LAOBills3) as bills3;'
      ''
      '  SELECT'
      '     a.idmfsrsheetdpart3,'
      '     a.ItemName,'
      '     c.Current,'
      '     c.Arrear,'
      '     c.Current + a.pvtdCurrent Current2Date,'
      '     c.Arrear + a.pvtdArrear Arrear2Date,'
      
        '     c.Current + a.pvtdCurrent + c.Arrear + a.pvtdArrear Total2D' +
        'ate'
      '  FROM'
      '    mfsrsheetdpart3 a, bills3 c'
      '  WHERE A.RATECODE = '#39'A'#39
      ''
      '  UNION'
      ''
      '  SELECT'
      '     a.idmfsrsheetdpart3,'
      '     a.ItemName,'
      '     b.Current,'
      '     b.Arrear,'
      '     b.Current + a.pvtdCurrent Current2Date,'
      '     b.Arrear + a.pvtdArrear Arrear2Date,'
      
        '     b.Current + a.pvtdCurrent + b.Arrear + a.pvtdArrear Total2D' +
        'ate'
      '  FROM'
      '    mfsrsheetdpart3 a'
      '  INNER JOIN'
      '    Bills2 b on b.wratecode = a.ratecode'
      '  order by idmfsrsheetdpart3;'
      ''
      '/* call FSRPart3(:BM,:DF,:DT); */')
    Left = 128
    Top = 144
    MacroData = <
      item
        Name = 'DMO'
        Value = 
          '  select'#13#10'       bh.WRateCode,'#13#10'       CAST(SUM(IF(c.BillMonth =' +
          ' :BillingPeriod,'#13#10'                               IFNULL(c.TotalB' +
          'ill,0) -'#13#10'                                (ifnull(bh.ocamount1,0' +
          ') +'#13#10'                                 ifnull(bh.ocamount2,0) +'#13#10 +
          '                                 ifnull(bh.ocamount3,0) +'#13#10'     ' +
          '                            ifnull(bh.UCME,0) +'#13#10'               ' +
          '                  ifnull(bh.UCEC,0) +'#13#10'                         ' +
          '        ifnull(bh.VATDist,0) +'#13#10'                                ' +
          ' ifnull(bh.VATGenCO,0) +'#13#10'                                 ifnul' +
          'l(bh.VATTransco,0) +'#13#10'                                 ifnull(bh' +
          '.VATSystemLossGenco,0) +'#13#10'                                 ifnul' +
          'l(bh.MCC,0)) ,0)) as DECIMAL(18,2)) CURRENT,'#13#10'       CAST(SUM(IF' +
          '(c.BillMonth <> :BillingPeriod,'#13#10'                               ' +
          'IFNULL(c.TotalBill,0) -'#13#10'                                (ifnull' +
          '(bh.ocamount1,0) +'#13#10'                                 ifnull(bh.o' +
          'camount2,0) +'#13#10'                                 ifnull(bh.ocamou' +
          'nt3,0) +'#13#10'                                 ifnull(bh.UCME,0) +'#13#10 +
          '                                 ifnull(bh.UCEC,0) +'#13#10'          ' +
          '                       ifnull(bh.VATDist,0) +'#13#10'                 ' +
          '                ifnull(bh.VATGenCO,0) +'#13#10'                       ' +
          '          ifnull(bh.VATTransco,0) +'#13#10'                           ' +
          '      ifnull(bh.VATSystemLossGenco,0) +'#13#10'                       ' +
          '          ifnull(bh.MCC,0)) ,0)) as DECIMAL(18,2)) ARREAR'#13#10'     ' +
          'from'#13#10'       zaneco.collection c'#13#10'     left join zaneco.`billhis' +
          'tory` bh on (bh.Code = c.AccountCode and bh.billmonth = c.billmo' +
          'nth)'#13#10'     where'#13#10'       c.datepaid between :DateFrom and :DateT' +
          'o and'#13#10'       c.totalbill is not null'#13#10'     group by'#13#10'       bh.' +
          'WRateCode'#13#10
        Active = False
      end
      item
        Name = 'dmobills2union'
        Value = 'union all'#13#10
        Active = False
      end
      item
        Name = 'SAO'
        Value = 
          '   select'#13#10'       bh.WRateCode,'#13#10'       CAST(SUM(IF(c.BillMonth ' +
          '= :BillingPeriod,'#13#10'                               IFNULL(c.Total' +
          'Bill,0) -'#13#10'                                (ifnull(bh.ocamount1,' +
          '0) +'#13#10'                                 ifnull(bh.ocamount2,0) +'#13 +
          #10'                                 ifnull(bh.ocamount3,0) +'#13#10'    ' +
          '                             ifnull(bh.UCME,0) +'#13#10'              ' +
          '                   ifnull(bh.UCEC,0) +'#13#10'                        ' +
          '         ifnull(bh.VATDist,0) +'#13#10'                               ' +
          '  ifnull(bh.VATGenCO,0) +'#13#10'                                 ifnu' +
          'll(bh.VATTransco,0) +'#13#10'                                 ifnull(b' +
          'h.VATSystemLossGenco,0) +'#13#10'                                 ifnu' +
          'll(bh.MCC,0)) ,0)) as DECIMAL(18,2)) CURRENT,'#13#10'       CAST(SUM(I' +
          'F(c.BillMonth <> :BillingPeriod,'#13#10'                              ' +
          ' IFNULL(c.TotalBill,0) -'#13#10'                                (ifnul' +
          'l(bh.ocamount1,0) +'#13#10'                                 ifnull(bh.' +
          'ocamount2,0) +'#13#10'                                 ifnull(bh.ocamo' +
          'unt3,0) +'#13#10'                                 ifnull(bh.UCME,0) +'#13 +
          #10'                                 ifnull(bh.UCEC,0) +'#13#10'         ' +
          '                        ifnull(bh.VATDist,0) +'#13#10'                ' +
          '                 ifnull(bh.VATGenCO,0) +'#13#10'                      ' +
          '           ifnull(bh.VATTransco,0) +'#13#10'                          ' +
          '       ifnull(bh.VATSystemLossGenco,0) +'#13#10'                      ' +
          '           ifnull(bh.MCC,0)) ,0)) as DECIMAL(18,2)) ARREAR'#13#10'    ' +
          ' from'#13#10'       `zaneco sao`.collection c'#13#10'     left join `zaneco ' +
          'sao`.`billhistory` bh on (bh.Code = c.AccountCode and bh.billmon' +
          'th = c.billmonth)'#13#10'     where'#13#10'       c.datepaid between :DateFr' +
          'om and :DateTo and'#13#10'       c.totalbill is not null'#13#10'     group b' +
          'y'#13#10'       bh.WRateCode'#13#10
        Active = False
      end
      item
        Name = 'saobills2union'
        Value = 'union all'
        Active = False
      end
      item
        Name = 'PAO'
        Value = 
          '   select'#13#10'       bh.WRateCode,'#13#10'       CAST(SUM(IF(c.BillMonth ' +
          '= :BillingPeriod,'#13#10'                               IFNULL(c.Total' +
          'Bill,0) -'#13#10'                                (ifnull(bh.ocamount1,' +
          '0) +'#13#10'                                 ifnull(bh.ocamount2,0) +'#13 +
          #10'                                 ifnull(bh.ocamount3,0) +'#13#10'    ' +
          '                             ifnull(bh.UCME,0) +'#13#10'              ' +
          '                   ifnull(bh.UCEC,0) +'#13#10'                        ' +
          '         ifnull(bh.VATDist,0) +'#13#10'                               ' +
          '  ifnull(bh.VATGenCO,0) +'#13#10'                                 ifnu' +
          'll(bh.VATTransco,0) +'#13#10'                                 ifnull(b' +
          'h.VATSystemLossGenco,0) +'#13#10'                                 ifnu' +
          'll(bh.MCC,0)) ,0)) as DECIMAL(18,2)) CURRENT,'#13#10'       CAST(SUM(I' +
          'F(c.BillMonth <> :BillingPeriod,'#13#10'                              ' +
          ' IFNULL(c.TotalBill,0) -'#13#10'                                (ifnul' +
          'l(bh.ocamount1,0) +'#13#10'                                 ifnull(bh.' +
          'ocamount2,0) +'#13#10'                                 ifnull(bh.ocamo' +
          'unt3,0) +'#13#10'                                 ifnull(bh.UCME,0) +'#13 +
          #10'                                 ifnull(bh.UCEC,0) +'#13#10'         ' +
          '                        ifnull(bh.VATDist,0) +'#13#10'                ' +
          '                 ifnull(bh.VATGenCO,0) +'#13#10'                      ' +
          '           ifnull(bh.VATTransco,0) +'#13#10'                          ' +
          '       ifnull(bh.VATSystemLossGenco,0) +'#13#10'                      ' +
          '           ifnull(bh.MCC,0)) ,0)) as DECIMAL(18,2)) ARREAR'#13#10'    ' +
          ' from'#13#10'       zanecopao.collection c'#13#10'     left join zanecopao.b' +
          'illhistory bh on (bh.Code = c.AccountCode and bh.billmonth = c.b' +
          'illmonth)'#13#10'     where'#13#10'       c.datepaid between :DateFrom and :' +
          'DateTo and'#13#10'       c.totalbill is not null'#13#10'     group by'#13#10'     ' +
          '  bh.WRateCode'
        Active = False
      end
      item
        Name = 'paobills2union'
        Value = 'union all'
        Active = False
      end
      item
        Name = 'LAO'
        Value = 
          '  select'#13#10'       bh.WRateCode,'#13#10'       CAST(SUM(IF(c.BillMonth =' +
          ' :BillingPeriod,'#13#10'                               IFNULL(c.TotalB' +
          'ill,0) -'#13#10'                                (ifnull(bh.ocamount1,0' +
          ') +'#13#10'                                 ifnull(bh.ocamount2,0) +'#13#10 +
          '                                 ifnull(bh.ocamount3,0) +'#13#10'     ' +
          '                            ifnull(bh.UCME,0) +'#13#10'               ' +
          '                  ifnull(bh.UCEC,0) +'#13#10'                         ' +
          '        ifnull(bh.VATDist,0) +'#13#10'                                ' +
          ' ifnull(bh.VATGenCO,0) +'#13#10'                                 ifnul' +
          'l(bh.VATTransco,0) +'#13#10'                                 ifnull(bh' +
          '.VATSystemLossGenco,0) +'#13#10'                                 ifnul' +
          'l(bh.MCC,0)) ,0)) as DECIMAL(18,2)) CURRENT,'#13#10'       CAST(SUM(IF' +
          '(c.BillMonth <> :BillingPeriod,'#13#10'                               ' +
          'IFNULL(c.TotalBill,0) -'#13#10'                                (ifnull' +
          '(bh.ocamount1,0) +'#13#10'                                 ifnull(bh.o' +
          'camount2,0) +'#13#10'                                 ifnull(bh.ocamou' +
          'nt3,0) +'#13#10'                                 ifnull(bh.UCME,0) +'#13#10 +
          '                                 ifnull(bh.UCEC,0) +'#13#10'          ' +
          '                       ifnull(bh.VATDist,0) +'#13#10'                 ' +
          '                ifnull(bh.VATGenCO,0) +'#13#10'                       ' +
          '          ifnull(bh.VATTransco,0) +'#13#10'                           ' +
          '      ifnull(bh.VATSystemLossGenco,0) +'#13#10'                       ' +
          '          ifnull(bh.MCC,0)) ,0)) as DECIMAL(18,2)) ARREAR'#13#10'     ' +
          'from'#13#10'       `zanecolao`.collection c'#13#10'     left join `zanecolao' +
          '`.`billhistory` bh on (bh.Code = c.AccountCode and bh.billmonth ' +
          '= c.billmonth)'#13#10'     where'#13#10'       c.datepaid between :DateFrom ' +
          'and :DateTo and'#13#10'       c.totalbill is not null'#13#10'     group by'#13#10 +
          '       bh.WRateCode'
        Active = False
      end
      item
        Name = 'DMOBills3'
        Value = 
          '    select'#13#10'     CAST(SUM(IF(c.BillMonth = :BillingPeriod,'#13#10'    ' +
          '                           IFNULL(c.TotalBill,0) -'#13#10'            ' +
          '                    (ifnull(bh.ocamount1,0) +'#13#10'                 ' +
          '                ifnull(bh.ocamount2,0) +'#13#10'                      ' +
          '           ifnull(bh.ocamount3,0) +'#13#10'                           ' +
          '      ifnull(bh.UCME,0) +'#13#10'                                 ifnu' +
          'll(bh.UCEC,0) +'#13#10'                                 ifnull(bh.VATD' +
          'ist,0) +'#13#10'                                 ifnull(bh.VATGenCO,0)' +
          ' +'#13#10'                                 ifnull(bh.VATTransco,0) +'#13#10 +
          '                                 ifnull(bh.VATSystemLossGenco,0)' +
          ' +'#13#10'                                 ifnull(bh.MCC,0)) ,0)) as D' +
          'ECIMAL(18,2)) CURRENT,'#13#10'       CAST(SUM(IF(c.BillMonth <> :Billi' +
          'ngPeriod,'#13#10'                               IFNULL(c.TotalBill,0) ' +
          '-'#13#10'                                (ifnull(bh.ocamount1,0) +'#13#10'  ' +
          '                               ifnull(bh.ocamount2,0) +'#13#10'       ' +
          '                          ifnull(bh.ocamount3,0) +'#13#10'            ' +
          '                     ifnull(bh.UCME,0) +'#13#10'                      ' +
          '           ifnull(bh.UCEC,0) +'#13#10'                                ' +
          ' ifnull(bh.VATDist,0) +'#13#10'                                 ifnull' +
          '(bh.VATGenCO,0) +'#13#10'                                 ifnull(bh.VA' +
          'TTransco,0) +'#13#10'                                 ifnull(bh.VATSys' +
          'temLossGenco,0) +'#13#10'                                 ifnull(bh.MC' +
          'C,0)) ,0)) as DECIMAL(18,2)) ARREAR'#13#10'       from'#13#10'       zaneco.' +
          'collection c'#13#10'     left join zaneco.`billhistory` bh on (bh.Code' +
          ' = c.AccountCode and bh.billmonth = c.billmonth)'#13#10'     where'#13#10'  ' +
          '     c.datepaid between :DateFrom and :DateTo and'#13#10'       c.tota' +
          'lbill is not null'#13#10
        Active = False
      end
      item
        Name = 'dmobills3union'
        Value = 'union all'
        Active = False
      end
      item
        Name = 'SAOBills3'
        Value = 
          '    select'#13#10'     CAST(SUM(IF(c.BillMonth = :BillingPeriod,'#13#10'    ' +
          '                           IFNULL(c.TotalBill,0) -'#13#10'            ' +
          '                    (ifnull(bh.ocamount1,0) +'#13#10'                 ' +
          '                ifnull(bh.ocamount2,0) +'#13#10'                      ' +
          '           ifnull(bh.ocamount3,0) +'#13#10'                           ' +
          '      ifnull(bh.UCME,0) +'#13#10'                                 ifnu' +
          'll(bh.UCEC,0) +'#13#10'                                 ifnull(bh.VATD' +
          'ist,0) +'#13#10'                                 ifnull(bh.VATGenCO,0)' +
          ' +'#13#10'                                 ifnull(bh.VATTransco,0) +'#13#10 +
          '                                 ifnull(bh.VATSystemLossGenco,0)' +
          ' +'#13#10'                                 ifnull(bh.MCC,0)) ,0)) as D' +
          'ECIMAL(18,2)) CURRENT,'#13#10'       CAST(SUM(IF(c.BillMonth <> :Billi' +
          'ngPeriod,'#13#10'                               IFNULL(c.TotalBill,0) ' +
          '-'#13#10'                                (ifnull(bh.ocamount1,0) +'#13#10'  ' +
          '                               ifnull(bh.ocamount2,0) +'#13#10'       ' +
          '                          ifnull(bh.ocamount3,0) +'#13#10'            ' +
          '                     ifnull(bh.UCME,0) +'#13#10'                      ' +
          '           ifnull(bh.UCEC,0) +'#13#10'                                ' +
          ' ifnull(bh.VATDist,0) +'#13#10'                                 ifnull' +
          '(bh.VATGenCO,0) +'#13#10'                                 ifnull(bh.VA' +
          'TTransco,0) +'#13#10'                                 ifnull(bh.VATSys' +
          'temLossGenco,0) +'#13#10'                                 ifnull(bh.MC' +
          'C,0)) ,0)) as DECIMAL(18,2)) ARREAR'#13#10'       from'#13#10'       `zaneco' +
          ' sao`.collection c'#13#10'     left join`zaneco sao`.`billhistory` bh ' +
          'on (bh.Code = c.AccountCode and bh.billmonth = c.billmonth)'#13#10'   ' +
          '  where'#13#10'       c.datepaid between :DateFrom and :DateTo and'#13#10'  ' +
          '     c.totalbill is not null'#13#10#13#10
        Active = False
      end
      item
        Name = 'saobills3union'
        Value = 'union all'
        Active = False
      end
      item
        Name = 'PAOBills3'
        Value = 
          '    select'#13#10'     CAST(SUM(IF(c.BillMonth = :BillingPeriod,'#13#10'    ' +
          '                           IFNULL(c.TotalBill,0) -'#13#10'            ' +
          '                    (ifnull(bh.ocamount1,0) +'#13#10'                 ' +
          '                ifnull(bh.ocamount2,0) +'#13#10'                      ' +
          '           ifnull(bh.ocamount3,0) +'#13#10'                           ' +
          '      ifnull(bh.UCME,0) +'#13#10'                                 ifnu' +
          'll(bh.UCEC,0) +'#13#10'                                 ifnull(bh.VATD' +
          'ist,0) +'#13#10'                                 ifnull(bh.VATGenCO,0)' +
          ' +'#13#10'                                 ifnull(bh.VATTransco,0) +'#13#10 +
          '                                 ifnull(bh.VATSystemLossGenco,0)' +
          ' +'#13#10'                                 ifnull(bh.MCC,0)) ,0)) as D' +
          'ECIMAL(18,2)) CURRENT,'#13#10'       CAST(SUM(IF(c.BillMonth <> :Billi' +
          'ngPeriod,'#13#10'                               IFNULL(c.TotalBill,0) ' +
          '-'#13#10'                                (ifnull(bh.ocamount1,0) +'#13#10'  ' +
          '                               ifnull(bh.ocamount2,0) +'#13#10'       ' +
          '                          ifnull(bh.ocamount3,0) +'#13#10'            ' +
          '                     ifnull(bh.UCME,0) +'#13#10'                      ' +
          '           ifnull(bh.UCEC,0) +'#13#10'                                ' +
          ' ifnull(bh.VATDist,0) +'#13#10'                                 ifnull' +
          '(bh.VATGenCO,0) +'#13#10'                                 ifnull(bh.VA' +
          'TTransco,0) +'#13#10'                                 ifnull(bh.VATSys' +
          'temLossGenco,0) +'#13#10'                                 ifnull(bh.MC' +
          'C,0)) ,0)) as DECIMAL(18,2)) ARREAR'#13#10'       from'#13#10'       zanecop' +
          'ao.collection c'#13#10'     left join zanecopao.`billhistory` bh on (b' +
          'h.Code = c.AccountCode and bh.billmonth = c.billmonth)'#13#10'     whe' +
          're'#13#10'       c.datepaid between :DateFrom and :DateTo and'#13#10'       ' +
          'c.totalbill is not null'#13#10#13#10
        Active = False
      end
      item
        Name = 'paobills3union'
        Value = 'union all'
        Active = False
      end
      item
        Name = 'LAOBills3'
        Value = 
          '    select'#13#10'     CAST(SUM(IF(c.BillMonth = :BillingPeriod,'#13#10'    ' +
          '                           IFNULL(c.TotalBill,0) -'#13#10'            ' +
          '                    (ifnull(bh.ocamount1,0) +'#13#10'                 ' +
          '                ifnull(bh.ocamount2,0) +'#13#10'                      ' +
          '           ifnull(bh.ocamount3,0) +'#13#10'                           ' +
          '      ifnull(bh.UCME,0) +'#13#10'                                 ifnu' +
          'll(bh.UCEC,0) +'#13#10'                                 ifnull(bh.VATD' +
          'ist,0) +'#13#10'                                 ifnull(bh.VATGenCO,0)' +
          ' +'#13#10'                                 ifnull(bh.VATTransco,0) +'#13#10 +
          '                                 ifnull(bh.VATSystemLossGenco,0)' +
          ' +'#13#10'                                 ifnull(bh.MCC,0)) ,0)) as D' +
          'ECIMAL(18,2)) CURRENT,'#13#10'       CAST(SUM(IF(c.BillMonth <> :Billi' +
          'ngPeriod,'#13#10'                               IFNULL(c.TotalBill,0) ' +
          '-'#13#10'                                (ifnull(bh.ocamount1,0) +'#13#10'  ' +
          '                               ifnull(bh.ocamount2,0) +'#13#10'       ' +
          '                          ifnull(bh.ocamount3,0) +'#13#10'            ' +
          '                     ifnull(bh.UCME,0) +'#13#10'                      ' +
          '           ifnull(bh.UCEC,0) +'#13#10'                                ' +
          ' ifnull(bh.VATDist,0) +'#13#10'                                 ifnull' +
          '(bh.VATGenCO,0) +'#13#10'                                 ifnull(bh.VA' +
          'TTransco,0) +'#13#10'                                 ifnull(bh.VATSys' +
          'temLossGenco,0) +'#13#10'                                 ifnull(bh.MC' +
          'C,0)) ,0)) as DECIMAL(18,2)) ARREAR'#13#10'       from'#13#10'       zanecol' +
          'ao.collection c'#13#10'     left join zanecolao.`billhistory` bh on (b' +
          'h.Code = c.AccountCode and bh.billmonth = c.billmonth)'#13#10'     whe' +
          're'#13#10'       c.datepaid between :DateFrom and :DateTo and'#13#10'       ' +
          'c.totalbill is not null'#13#10
        Active = False
      end>
  end
  object qPart4: TMyQuery
    Connection = BillingData.MyConnection1
    SQL.Strings = (
      'SELECT'
      '  ItemName,'
      '  Current,'
      '  Todate'
      'FROM'
      '  mfsrsheetdpart4')
    Left = 192
    Top = 144
  end
  object qrFSRReport: TQRCompositeReport
    OnAddReports = qrFSRReportAddReports
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
    PrinterSettings.PaperSize = FanfoldGerLegal
    PageCount = 0
    Left = 344
    Top = 144
  end
  object qReportSignatories: TMyQuery
    Connection = BillingData.MyConnection1
    SQL.Strings = (
      'select * from fsrsignatories')
    Left = 64
    Top = 200
  end
  object MyQuery1: TMyQuery
    Connection = BillingData.MyConnection1
    SQL.Strings = (
      'CREATE TABLE  `zaneco`.`fsrsignatories` ('
      '  `idfsrsignatories` int(11) NOT NULL auto_increment,'
      '  `PreparedBy` varchar(255) default NULL,'
      '  `PreparedPos` varchar(255) default NULL,'
      '  `CheckBy` varchar(255) default NULL,'
      '  `CheckPos` varchar(255) default NULL,'
      '  `ReviewedBy` varchar(255) default NULL,'
      '  `ReviewedPos` varchar(255) default NULL,'
      '  `CertTCBy` varchar(255) default NULL,'
      '  `CertTCPos` varchar(255) default NULL,'
      '  `AttestedBy` varchar(255) default NULL,'
      '  `AttestedPos` varchar(255) default NULL,'
      '  PRIMARY KEY  (`idfsrsignatories`)'
      ') ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;')
    Left = 264
    Top = 144
  end
  object QRPDFFilter1: TQRPDFFilter
    CompressionOn = False
    TextEncoding = AnsiEncoding
    Codepage = '1252'
    Left = 152
    Top = 200
  end
  object QRExcelFilter1: TQRExcelFilter
    TextEncoding = DefaultEncoding
    UseXLColumns = False
    Left = 232
    Top = 200
  end
end
