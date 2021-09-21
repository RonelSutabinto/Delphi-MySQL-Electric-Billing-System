object PantawidRecoveryForm: TPantawidRecoveryForm
  Left = 340
  Top = 125
  Caption = 'Pantawid Recovery'
  ClientHeight = 424
  ClientWidth = 650
  Color = clWindow
  Constraints.MaxHeight = 462
  Constraints.MaxWidth = 666
  Constraints.MinHeight = 462
  Constraints.MinWidth = 666
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object Search: TNxEdit
    Left = 13
    Top = 10
    Width = 132
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
  end
  object NxButton1: TNxButton
    Left = 13
    Top = 113
    Width = 131
    Caption = 'Search'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = NxButton1Click
  end
  object RadioGroup1: TRadioGroup
    Left = 14
    Top = 35
    Width = 131
    Height = 70
    Caption = 'Search Options'
    ItemIndex = 0
    Items.Strings = (
      'View All'
      'Account Number'
      'Area')
    TabOrder = 2
  end
  object NxButton2: TNxButton
    Left = 13
    Top = 145
    Width = 131
    Caption = 'Populate Manually'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = NxButton2Click
  end
  object NxButton3: TNxButton
    Left = 13
    Top = 177
    Width = 131
    Caption = 'Print Recovery Letter'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = NxButton3Click
  end
  object NxButton4: TNxButton
    Left = 13
    Top = 209
    Width = 131
    Caption = 'Print Recovery Report'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = NxButton4Click
  end
  object NxButton6: TNxButton
    Left = 13
    Top = 385
    Width = 131
    Caption = 'Close'
    TabOrder = 6
    OnClick = NxButton6Click
  end
  object PrintRecoveryPanel: TNxHeaderPanel
    Left = 389
    Top = 59
    Width = 273
    Height = 177
    Caption = 'Print Recovery Letter'
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -11
    HeaderFont.Name = 'MS Sans Serif'
    HeaderFont.Style = []
    ParentHeaderFont = False
    TabOrder = 9
    Visible = False
    FullWidth = 273
    object NxLabel2: TNxLabel
      Left = 19
      Top = 50
      Width = 105
      Height = 13
      Caption = 'Start Account Number'
      HorizontalPosition = hpLeft
      InnerHorizontal = True
      InnerVertical = False
      InnerMargins.Horizontal = 0
      InnerMargins.Vertical = 2
      VerticalPosition = vpTop
    end
    object NxLabel3: TNxLabel
      Left = 22
      Top = 74
      Width = 102
      Height = 13
      Caption = 'End Account Number'
      HorizontalPosition = hpLeft
      InnerHorizontal = True
      InnerVertical = False
      InnerMargins.Horizontal = 0
      InnerMargins.Vertical = 2
      VerticalPosition = vpTop
    end
    object Gauge1: TGauge
      Left = 58
      Top = 100
      Width = 65
      Height = 57
      BorderStyle = bsNone
      Kind = gkPie
      Progress = 0
    end
    object StartAccount: TNxEdit
      Left = 131
      Top = 46
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object EndAccount: TNxEdit
      Left = 131
      Top = 70
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object NxButton8: TNxButton
      Left = 138
      Top = 102
      Width = 75
      Caption = 'Print'
      TabOrder = 2
      OnClick = NxButton8Click
    end
    object NxButton9: TNxButton
      Left = 138
      Top = 131
      Width = 75
      Caption = 'Close'
      TabOrder = 3
      OnClick = NxButton9Click
    end
  end
  object PopulatePanel: TNxHeaderPanel
    Left = 408
    Top = 176
    Height = 105
    Caption = 'Populate Manually'
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -11
    HeaderFont.Name = 'MS Sans Serif'
    HeaderFont.Style = []
    ParentHeaderFont = False
    TabOrder = 8
    Visible = False
    FullWidth = 245
    object NxLabel1: TNxLabel
      Left = 15
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
    object PopulateAcct: TNxEdit
      Left = 103
      Top = 40
      Width = 121
      Height = 21
      TabOrder = 0
      OnKeyPress = PopulateAcctKeyPress
    end
    object NxButton7: TNxButton
      Left = 152
      Top = 72
      Width = 75
      Caption = 'Close'
      TabOrder = 1
      OnClick = NxButton7Click
    end
  end
  object RecoveryReportPanel: TNxHeaderPanel
    Left = 236
    Top = 83
    Width = 225
    Height = 193
    Caption = 'Print Recovery Report'
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -11
    HeaderFont.Name = 'MS Sans Serif'
    HeaderFont.Style = []
    ParentHeaderFont = False
    TabOrder = 11
    Visible = False
    FullWidth = 225
    object NxLabel4: TNxLabel
      Left = 72
      Top = 53
      Width = 22
      Height = 13
      Caption = 'Area'
      HorizontalPosition = hpLeft
      InnerHorizontal = True
      InnerVertical = False
      InnerMargins.Horizontal = 0
      InnerMargins.Vertical = 2
      VerticalPosition = vpTop
    end
    object NxLabel5: TNxLabel
      Left = 48
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
    object PrnArea: TNxEdit
      Left = 98
      Top = 48
      Width = 77
      Height = 21
      TabOrder = 0
    end
    object PrnBillMonth: TNxEdit
      Left = 98
      Top = 72
      Width = 77
      Height = 21
      TabOrder = 1
    end
    object NxButton5: TNxButton
      Left = 43
      Top = 103
      Width = 137
      Caption = 'Detailed Report'
      TabOrder = 2
      OnClick = NxButton5Click
    end
    object NxButton10: TNxButton
      Left = 43
      Top = 127
      Width = 137
      Caption = 'Summary'
      TabOrder = 3
      OnClick = NxButton10Click
    end
    object NxButton11: TNxButton
      Left = 43
      Top = 151
      Width = 137
      Caption = 'Close'
      TabOrder = 4
      OnClick = NxButton11Click
    end
  end
  object Panel1: TPanel
    Left = 504
    Top = 56
    Width = 633
    Height = 401
    BevelInner = bvLowered
    BorderWidth = 5
    Caption = 'Panel1'
    TabOrder = 10
    Visible = False
    object PageControl1: TPageControl
      Left = 7
      Top = 7
      Width = 619
      Height = 387
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'TabSheet1'
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object QuickRep1: TQuickRep
          Left = -7
          Top = -11
          Width = 816
          Height = 1056
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          DataSet = PKVRIndex
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
          Page.PaperSize = Letter
          Page.Continuous = False
          Page.Values = (
            127.000000000000000000
            2794.000000000000000000
            127.000000000000000000
            2159.000000000000000000
            127.000000000000000000
            127.000000000000000000
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
          PrevInitialZoom = qrZoomOther
          PreviewDefaultSaveType = stQRP
          PreviewLeft = 0
          PreviewTop = 0
          object ColumnHeaderBand1: TQRBand
            Left = 48
            Top = 48
            Width = 720
            Height = 114
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
              301.625000000000000000
              1905.000000000000000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbColumnHeader
            object QRLabel1: TQRLabel
              Left = 213
              Top = 5
              Width = 294
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                563.562500000000000000
                13.229166666666670000
                777.875000000000000000)
              XLColumn = 0
              Alignment = taCenter
              AlignToBand = True
              AutoSize = True
              AutoStretch = False
              Caption = 'ZAMBOANGA del NORTE ELECTRIC COOP., INC'
              Color = clWhite
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 10
            end
            object QRSysData1: TQRSysData
              Left = 0
              Top = 3
              Width = 37
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                0.000000000000000000
                7.937500000000000000
                97.895833333333330000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = True
              AutoSize = True
              Color = clWhite
              Data = qrsTime
              Transparent = False
              ExportAs = exptText
              FontSize = 10
            end
            object QRSysData2: TQRSysData
              Left = 674
              Top = 3
              Width = 46
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1783.291666666667000000
                7.937500000000000000
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
            object QRLabel3: TQRLabel
              Left = 131
              Top = 26
              Width = 457
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                346.604166666666700000
                68.791666666666670000
                1209.145833333333000000)
              XLColumn = 0
              Alignment = taCenter
              AlignToBand = True
              AutoSize = True
              AutoStretch = False
              Caption = 'DETAILED LIST OF CONSUMERS FOR PANTAWID KURYENTE RECOVERY'
              Color = clWhite
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 10
            end
            object QRLabel4: TQRLabel
              Left = 280
              Top = 47
              Width = 159
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                740.833333333333300000
                124.354166666666700000
                420.687500000000000000)
              XLColumn = 0
              Alignment = taCenter
              AlignToBand = True
              AutoSize = True
              AutoStretch = False
              Caption = 'FOR THE BILLING MONTH'
              Color = clWhite
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 10
            end
            object QRLabel5: TQRLabel
              Left = 7
              Top = 95
              Width = 80
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                18.520833333333330000
                251.354166666666700000
                211.666666666666700000)
              XLColumn = 0
              Alignment = taCenter
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Account Number'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRLabel6: TQRLabel
              Left = 304
              Top = 69
              Width = 111
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                804.333333333333300000
                182.562500000000000000
                293.687500000000000000)
              XLColumn = 0
              Alignment = taCenter
              AlignToBand = True
              AutoSize = True
              AutoStretch = False
              Caption = 'MUNICIPALITY OF'
              Color = clWhite
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 10
            end
            object QRLabel7: TQRLabel
              Left = 140
              Top = 95
              Width = 79
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                370.416666666666700000
                251.354166666666700000
                209.020833333333300000)
              XLColumn = 0
              Alignment = taCenter
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Consumer Name'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRLabel8: TQRLabel
              Left = 343
              Top = 95
              Width = 121
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                907.520833333333300000
                251.354166666666700000
                320.145833333333300000)
              XLColumn = 0
              Alignment = taCenter
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Amount to be Recovered'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRLabel13: TQRLabel
              Left = 677
              Top = 95
              Width = 38
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1791.229166666667000000
                251.354166666666700000
                100.541666666666700000)
              XLColumn = 0
              Alignment = taCenter
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Balance'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRLabel9: TQRLabel
              Left = 517
              Top = 95
              Width = 93
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1367.895833333333000000
                251.354166666666700000
                246.062500000000000000)
              XLColumn = 0
              Alignment = taCenter
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Amount Recovered'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
          end
          object DetailBand1: TQRBand
            Left = 48
            Top = 162
            Width = 720
            Height = 17
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
              44.979166666666670000
              1905.000000000000000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbDetail
            object QRDBText1: TQRDBText
              Left = 7
              Top = 1
              Width = 78
              Height = 15
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                18.520833333333330000
                2.645833333333333000
                206.375000000000000000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = PKVRIndex
              DataField = 'AccountNumber'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
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
              Left = 87
              Top = 1
              Width = 234
              Height = 15
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                230.187500000000000000
                2.645833333333333000
                619.125000000000000000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = PKVRIndex
              DataField = 'Name'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
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
            object QRDBText4: TQRDBText
              Left = 425
              Top = 1
              Width = 37
              Height = 15
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                1124.479166666667000000
                2.645833333333333000
                97.895833333333330000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = PKVRIndex
              DataField = 'amount'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
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
            object QRDBText7: TQRDBText
              Left = 560
              Top = 1
              Width = 50
              Height = 15
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                1481.666666666667000000
                2.645833333333333000
                132.291666666666700000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = PKVRIndex
              DataField = 'recovered'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
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
            object QRDBText8: TQRDBText
              Left = 676
              Top = 1
              Width = 38
              Height = 15
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                1788.583333333333000000
                2.645833333333333000
                100.541666666666700000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = PKVRIndex
              DataField = 'balance'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
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
          object SummaryBand1: TQRBand
            Left = 48
            Top = 179
            Width = 720
            Height = 29
            Frame.DrawTop = True
            Frame.DrawBottom = True
            Frame.DrawLeft = False
            Frame.DrawRight = False
            AlignToBottom = False
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              76.729166666666670000
              1905.000000000000000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbSummary
            object QRLabel2: TQRLabel
              Left = 184
              Top = 6
              Width = 25
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                486.833333333333300000
                15.875000000000000000
                66.145833333333330000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Total'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Arial Narrow'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 9
            end
            object QRExpr1: TQRExpr
              Left = 345
              Top = 6
              Width = 120
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                912.812500000000000000
                15.875000000000000000
                317.500000000000000000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Arial Narrow'
              Font.Style = [fsBold]
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = False
              Transparent = False
              WordWrap = True
              Expression = 'SUM(PKVRIndex.amount)'
              Mask = '#,##0.00'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 9
            end
            object QRSysData5: TQRSysData
              Left = 220
              Top = 6
              Width = 62
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                582.083333333333300000
                15.875000000000000000
                164.041666666666700000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              Color = clWhite
              Data = qrsDetailCount
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Arial Narrow'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              FontSize = 9
            end
            object QRExpr3: TQRExpr
              Left = 595
              Top = 6
              Width = 120
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1574.270833333333000000
                15.875000000000000000
                317.500000000000000000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Arial Narrow'
              Font.Style = [fsBold]
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = False
              Transparent = False
              WordWrap = True
              Expression = 'SUM(PKVRIndex.balance)'
              Mask = '#,##0.00'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 9
            end
            object QRExpr2: TQRExpr
              Left = 478
              Top = 6
              Width = 131
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1264.708333333333000000
                15.875000000000000000
                346.604166666666700000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Arial Narrow'
              Font.Style = [fsBold]
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = False
              Transparent = False
              WordWrap = True
              Expression = 'SUM(PKVRIndex.recovered)'
              Mask = '#,##0.00'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 9
            end
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'TabSheet2'
        ImageIndex = 1
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object QuickRep2: TQuickRep
          Left = -7
          Top = 13
          Width = 816
          Height = 1056
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          DataSet = PKVRSummary
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
          Page.PaperSize = Letter
          Page.Continuous = False
          Page.Values = (
            127.000000000000000000
            2794.000000000000000000
            127.000000000000000000
            2159.000000000000000000
            127.000000000000000000
            127.000000000000000000
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
          PrevInitialZoom = qrZoomOther
          PreviewDefaultSaveType = stQRP
          PreviewLeft = 0
          PreviewTop = 0
          object QRBand1: TQRBand
            Left = 48
            Top = 48
            Width = 720
            Height = 90
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
              238.125000000000000000
              1905.000000000000000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbColumnHeader
            object QRLabel14: TQRLabel
              Left = 213
              Top = 5
              Width = 294
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                563.562500000000000000
                13.229166666666670000
                777.875000000000000000)
              XLColumn = 0
              Alignment = taCenter
              AlignToBand = True
              AutoSize = True
              AutoStretch = False
              Caption = 'ZAMBOANGA del NORTE ELECTRIC COOP., INC'
              Color = clWhite
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 10
            end
            object QRSysData3: TQRSysData
              Left = 0
              Top = 3
              Width = 37
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                0.000000000000000000
                7.937500000000000000
                97.895833333333330000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = True
              AutoSize = True
              Color = clWhite
              Data = qrsTime
              Transparent = False
              ExportAs = exptText
              FontSize = 10
            end
            object QRSysData4: TQRSysData
              Left = 674
              Top = 3
              Width = 46
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1783.291666666667000000
                7.937500000000000000
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
            object QRLabel15: TQRLabel
              Left = 250
              Top = 26
              Width = 220
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                661.458333333333300000
                68.791666666666670000
                582.083333333333300000)
              XLColumn = 0
              Alignment = taCenter
              AlignToBand = True
              AutoSize = True
              AutoStretch = False
              Caption = 'PANTAWID KURYENTE RECOVERY'
              Color = clWhite
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 10
            end
            object QRLabel16: TQRLabel
              Left = 280
              Top = 47
              Width = 159
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                740.833333333333300000
                124.354166666666700000
                420.687500000000000000)
              XLColumn = 0
              Alignment = taCenter
              AlignToBand = True
              AutoSize = True
              AutoStretch = False
              Caption = 'FOR THE BILLING MONTH'
              Color = clWhite
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 10
            end
            object QRLabel17: TQRLabel
              Left = 6
              Top = 68
              Width = 24
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                15.875000000000000000
                179.916666666666700000
                63.500000000000000000)
              XLColumn = 0
              Alignment = taCenter
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Area'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRLabel18: TQRLabel
              Left = 92
              Top = 68
              Width = 56
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                243.416666666666700000
                179.916666666666700000
                148.166666666666700000)
              XLColumn = 0
              Alignment = taCenter
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Municipality'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRLabel19: TQRLabel
              Left = 323
              Top = 68
              Width = 121
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                854.604166666666700000
                179.916666666666700000
                320.145833333333300000)
              XLColumn = 0
              Alignment = taCenter
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Amount to be Recovered'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRLabel20: TQRLabel
              Left = 223
              Top = 68
              Width = 82
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                590.020833333333300000
                179.916666666666700000
                216.958333333333300000)
              XLColumn = 0
              Alignment = taCenter
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'No. of Consumer'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRLabel21: TQRLabel
              Left = 474
              Top = 68
              Width = 93
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1254.125000000000000000
                179.916666666666700000
                246.062500000000000000)
              XLColumn = 0
              Alignment = taCenter
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Amount Recovered'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRLabel22: TQRLabel
              Left = 674
              Top = 68
              Width = 38
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1783.291666666667000000
                179.916666666666700000
                100.541666666666700000)
              XLColumn = 0
              Alignment = taCenter
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Balance'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
          end
          object QRBand2: TQRBand
            Left = 48
            Top = 138
            Width = 720
            Height = 29
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
              76.729166666666670000
              1905.000000000000000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbDetail
            object QRDBText15: TQRDBText
              Left = 6
              Top = 7
              Width = 28
              Height = 14
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                15.875000000000000000
                18.520833333333330000
                74.083333333333330000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = PKVRSummary
              DataField = 'Area'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
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
            object QRDBText16: TQRDBText
              Left = 39
              Top = 7
              Width = 162
              Height = 14
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                103.187500000000000000
                18.520833333333330000
                428.625000000000000000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = PKVRSummary
              DataField = 'address'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
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
              Left = 267
              Top = 7
              Width = 39
              Height = 14
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                706.437500000000000000
                18.520833333333330000
                103.187500000000000000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = PKVRSummary
              DataField = 'account'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
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
              Left = 402
              Top = 7
              Width = 37
              Height = 14
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                1063.625000000000000000
                18.520833333333330000
                97.895833333333330000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = PKVRSummary
              DataField = 'amount'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Mask = '#,##0.00'
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
              Left = 675
              Top = 7
              Width = 38
              Height = 14
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                1785.937500000000000000
                18.520833333333330000
                100.541666666666700000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = PKVRSummary
              DataField = 'balance'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Mask = '#,##0.00'
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
              Left = 516
              Top = 7
              Width = 50
              Height = 14
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                1365.250000000000000000
                18.520833333333330000
                132.291666666666700000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = PKVRSummary
              DataField = 'recovered'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Mask = '#,##0.00'
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
          object QRBand3: TQRBand
            Left = 48
            Top = 167
            Width = 720
            Height = 29
            Frame.DrawTop = True
            Frame.DrawBottom = True
            Frame.DrawLeft = False
            Frame.DrawRight = False
            AlignToBottom = False
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              76.729166666666670000
              1905.000000000000000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbSummary
            object QRLabel25: TQRLabel
              Left = 8
              Top = 6
              Width = 25
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                21.166666666666670000
                15.875000000000000000
                66.145833333333330000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Total'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Arial Narrow'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 9
            end
            object QRExpr6: TQRExpr
              Left = 415
              Top = 5
              Width = 151
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1098.020833333333000000
                13.229166666666670000
                399.520833333333300000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Arial Narrow'
              Font.Style = [fsBold]
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = False
              Transparent = False
              WordWrap = True
              Expression = 'SUM(PKVRSummary.recovered)'
              Mask = '#,##0.00'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 9
            end
            object QRExpr5: TQRExpr
              Left = 298
              Top = 5
              Width = 140
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                788.458333333333300000
                13.229166666666670000
                370.416666666666700000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Arial Narrow'
              Font.Style = [fsBold]
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = False
              Transparent = False
              WordWrap = True
              Expression = 'SUM(PKVRSummary.amount)'
              Mask = '#,##0.00'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 9
            end
            object QRExpr4: TQRExpr
              Left = 165
              Top = 5
              Width = 141
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                436.562500000000000000
                13.229166666666670000
                373.062500000000000000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Arial Narrow'
              Font.Style = [fsBold]
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = False
              Transparent = False
              WordWrap = True
              Expression = 'SUM(PKVRSummary.account)'
              Mask = '#,##0.00'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 9
            end
            object QRExpr7: TQRExpr
              Left = 574
              Top = 5
              Width = 140
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1518.708333333333000000
                13.229166666666670000
                370.416666666666700000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Arial Narrow'
              Font.Style = [fsBold]
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = False
              Transparent = False
              WordWrap = True
              Expression = 'SUM(PKVRSummary.balance)'
              Mask = '#,##0.00'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 9
            end
          end
        end
      end
    end
  end
  object CRDBGrid1: TCRDBGrid1
    Left = 160
    Top = 8
    Width = 479
    Height = 407
    OptionsEx = [dgeEnableSort, dgeLocalFilter, dgeLocalSorting, dgeRecordCount, dgeSummary]
    DataSource = dsPKVRIndex
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    PopupMenu = PopupMenu1
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Area'
        Width = 26
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Book'
        Width = 29
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AccountNumber'
        Title.Caption = 'Account Number'
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Name'
        Title.Alignment = taCenter
        Width = 153
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'amount'
        Title.Alignment = taRightJustify
        Width = 67
        Visible = True
        SummaryMode = smSum
      end
      item
        Expanded = False
        FieldName = 'recovered'
        Title.Alignment = taRightJustify
        Width = 64
        Visible = True
        SummaryMode = smSum
      end>
  end
  object PKVRIndex: TMyQuery
    Connection = BillingData.MyConnection1
    SQL.Strings = (
      'select pkvridx.*,'
      
        '       (select sum(ifnull(billadjledger.credit,0)) from billadjl' +
        'edger where billadjledger.code = pkvridx.code and billadjledger.' +
        'accountnumber = pkvridx.accountnumber) as amount,'
      
        '       (select sum(ifnull(pkvrledger.amount,0)) from pkvrledger ' +
        'where pkvrledger.code = pkvridx.code and pkvrledger.accountnumbe' +
        'r = pkvridx.accountnumber) as recovered'
      'from pkvridx'
      '  where pkvridx.accountnumber like :accountnumber or'
      '        pkvridx.area like :area'
      'Having amount > 0'
      'order by pkvridx.accountnumber')
    OnCalcFields = PKVRIndexCalcFields
    Left = 168
    Top = 320
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'accountnumber'
      end
      item
        DataType = ftUnknown
        Name = 'area'
      end>
    object PKVRIndexidpkvridx: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'idpkvridx'
      Origin = 'pkvridx.idpkvridx'
    end
    object PKVRIndexcode: TFloatField
      FieldName = 'code'
      Origin = 'pkvridx.code'
    end
    object PKVRIndexArea: TStringField
      FieldName = 'Area'
      Origin = 'pkvridx.Area'
      Size = 3
    end
    object PKVRIndexBook: TStringField
      FieldName = 'Book'
      Origin = 'pkvridx.Book'
      Size = 3
    end
    object PKVRIndexSequence: TStringField
      FieldName = 'Sequence'
      Origin = 'pkvridx.Sequence'
      Size = 4
    end
    object PKVRIndexAccountNumber: TStringField
      FieldName = 'AccountNumber'
      Origin = 'pkvridx.AccountNumber'
      Size = 10
    end
    object PKVRIndexName: TStringField
      FieldName = 'Name'
      Origin = 'pkvridx.Name'
      Size = 30
    end
    object PKVRIndexamount: TFloatField
      FieldName = 'amount'
      Origin = 'amount'
      currency = True
    end
    object PKVRIndexrecovered: TFloatField
      FieldName = 'recovered'
      Origin = 'recovered'
      currency = True
    end
    object PKVRIndexbalance: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'balance'
      Calculated = True
    end
  end
  object PKVLedger: TMyQuery
    Connection = BillingData.MyConnection1
    SQL.Strings = (
      'select * from billadjledger '
      '   where credit > 0 and '
      '         code = :code and '
      '         accountnumber = :accountnumber')
    Left = 200
    Top = 320
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'code'
      end
      item
        DataType = ftUnknown
        Name = 'accountnumber'
      end>
  end
  object PKVRLedger: TMyQuery
    Connection = BillingData.MyConnection1
    SQL.Strings = (
      
        'select * from pkvrledger where code = :code and accountnumber = ' +
        ':accountnunmber')
    Left = 232
    Top = 320
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'code'
      end
      item
        DataType = ftUnknown
        Name = 'accountnunmber'
      end>
    object PKVRLedgeridpkvr: TLargeintField
      FieldName = 'idpkvr'
    end
    object PKVRLedgercode: TFloatField
      FieldName = 'code'
    end
    object PKVRLedgerArea: TStringField
      FieldName = 'Area'
      Size = 3
    end
    object PKVRLedgerBook: TStringField
      FieldName = 'Book'
      Size = 3
    end
    object PKVRLedgerSequence: TStringField
      FieldName = 'Sequence'
      Size = 4
    end
    object PKVRLedgerAccountNumber: TStringField
      FieldName = 'AccountNumber'
      Size = 10
    end
    object PKVRLedgerName: TStringField
      FieldName = 'Name'
      Size = 30
    end
    object PKVRLedgerBillMonth: TStringField
      FieldName = 'BillMonth'
      Size = 4
    end
    object PKVRLedgeramount: TFloatField
      FieldName = 'amount'
    end
    object PKVRLedgerbillnumber: TStringField
      FieldName = 'billnumber'
      Size = 10
    end
    object PKVRLedgerkilowatthour: TLargeintField
      FieldName = 'kilowatthour'
    end
    object PKVRLedgerpostingdate: TDateField
      FieldName = 'postingdate'
    end
  end
  object dsPKVRIndex: TMyDataSource
    DataSet = PKVRIndex
    Left = 168
    Top = 352
  end
  object dsPKVLedger: TMyDataSource
    DataSet = PKVLedger
    Left = 200
    Top = 352
  end
  object dsPKVRLedger: TMyDataSource
    DataSet = PKVRLedger
    Left = 232
    Top = 352
  end
  object insertPKVRIndex: TMyQuery
    Connection = BillingData.MyConnection1
    SQL.Strings = (
      'insert into pkvridx'
      '(code,'
      ' Area,'
      ' Book,'
      ' Sequence,'
      ' AccountNumber,'
      ' Name)'
      'select'
      ' code,'
      ' Area,'
      ' Book,'
      ' Sequence,'
      ' AccountNumber,'
      ' Name'
      'from pkvr where accountnumber like :accountnumber')
    Left = 264
    Top = 320
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'accountnumber'
      end>
  end
  object printletter: TMyQuery
    Connection = BillingData.MyConnection1
    SQL.Strings = (
      'select pkvridx.*,'
      '       master.address as address,'
      '       sum(ifnull(billadjledger.credit,0)) as amount'
      'from pkvridx'
      'left join master on (pkvridx.code = master.code)'
      
        'left join billadjledger on (billadjledger.code = pkvridx.code an' +
        'd billadjledger.accountnumber = pkvridx.accountnumber)'
      
        '  where pkvridx.accountnumber between :startaccount and :endacco' +
        'unt'
      'group by pkvridx.code'
      'order by pkvridx.accountnumber')
    Left = 264
    Top = 351
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'startaccount'
      end
      item
        DataType = ftUnknown
        Name = 'endaccount'
      end>
    object printletteridpkvridx: TLargeintField
      FieldName = 'idpkvridx'
    end
    object printlettercode: TFloatField
      FieldName = 'code'
    end
    object printletterArea: TStringField
      FieldName = 'Area'
      Size = 3
    end
    object printletterBook: TStringField
      FieldName = 'Book'
      Size = 3
    end
    object printletterSequence: TStringField
      FieldName = 'Sequence'
      Size = 4
    end
    object printletterAccountNumber: TStringField
      FieldName = 'AccountNumber'
      Size = 10
    end
    object printletterName: TStringField
      FieldName = 'Name'
      Size = 30
    end
    object printletteramount: TFloatField
      FieldName = 'amount'
      currency = True
    end
    object printletteraddress: TStringField
      FieldName = 'address'
      Size = 50
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 296
    Top = 320
    object StartAccountNumber1: TMenuItem
      Caption = 'Start Account Number'
      OnClick = StartAccountNumber1Click
    end
    object EndAccountNumber1: TMenuItem
      Caption = 'End Account Number'
      OnClick = EndAccountNumber1Click
    end
  end
  object PrinterSetupDialog1: TPrinterSetupDialog
    Left = 296
    Top = 352
  end
  object PKVRSummary: TMyQuery
    Connection = BillingData.MyConnection1
    SQL.Strings = (
      'select pkvridx.Area,'
      '        case pkvridx.Area '
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
      '       as address,'
      '       count(pkvridx.accountnumber) as account,'
      '       (select sum(ifnull(billadjledger.credit,0)) '
      
        '              from billadjledger where billadjledger.area = pkvr' +
        'idx.area and'
      
        '              exists (select * from pkvridx where pkvridx.code =' +
        ' billadjledger.code and pkvridx.accountnumber = billadjledger.ac' +
        'countnumber)) as amount,'
      
        '       (select sum(ifnull(pkvrledger.amount,0)) from pkvrledger ' +
        'where pkvrledger.area = pkvridx.area and'
      
        '               exists (select * from pkvridx where pkvridx.code ' +
        '= pkvrledger.code and pkvridx.accountnumber = pkvrledger.account' +
        'number)) as recovered'
      'from pkvridx'
      'group by pkvridx.area'
      'order by pkvridx.Area')
    OnCalcFields = PKVRSummaryCalcFields
    Left = 328
    Top = 320
    object PKVRSummaryArea: TStringField
      FieldName = 'Area'
      Size = 3
    end
    object PKVRSummaryaddress: TStringField
      FieldName = 'address'
      Size = 15
    end
    object PKVRSummaryamount: TFloatField
      FieldName = 'amount'
      currency = True
    end
    object PKVRSummaryrecovered: TFloatField
      FieldName = 'recovered'
      currency = True
    end
    object PKVRSummarybalance: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'balance'
      Calculated = True
    end
    object PKVRSummaryaccount: TLargeintField
      FieldName = 'account'
    end
  end
end
