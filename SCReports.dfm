object SCReportForm: TSCReportForm
  Left = 245
  Top = 108
  BorderIcons = [biSystemMenu]
  Caption = 'Senior Citizen Reports '
  ClientHeight = 201
  ClientWidth = 279
  Color = clBtnFace
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
  object NxLabel1: TNxLabel
    Left = 56
    Top = 28
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
  object NxEdit1: TNxEdit
    Left = 108
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object NxButton1: TNxButton
    Left = 26
    Top = 67
    Width = 233
    Caption = 'Senior Citizen Summary Report Annex A-1'
    TabOrder = 1
    OnClick = NxButton1Click
  end
  object NxButton2: TNxButton
    Left = 26
    Top = 99
    Width = 233
    Caption = 'Senior Citizen Summary Report Annex A-3'
    TabOrder = 2
    OnClick = NxButton2Click
  end
  object NxButton3: TNxButton
    Left = 26
    Top = 163
    Width = 233
    Caption = 'Close'
    TabOrder = 3
    OnClick = NxButton3Click
  end
  object NxButton4: TNxButton
    Left = 26
    Top = 131
    Width = 233
    Caption = 'Senior Citizen Detailed List '
    TabOrder = 5
    OnClick = NxButton4Click
  end
  object Panel1: TPanel
    Left = 265
    Top = 131
    Width = 921
    Height = 457
    BevelInner = bvLowered
    BorderWidth = 5
    TabOrder = 4
    Visible = False
    object PageControl1: TPageControl
      Left = 7
      Top = 7
      Width = 907
      Height = 443
      ActivePage = TabSheet2
      Align = alClient
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Annex A1'
        object QuickRep1: TQuickRep
          Left = 56
          Top = 16
          Width = 1056
          Height = 816
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          DataSet = AnnexA1
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
          Page.Continuous = False
          Page.Values = (
            127.000000000000000000
            2159.000000000000000000
            127.000000000000000000
            2794.000000000000000000
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
          PrevInitialZoom = qrZoomToFit
          PreviewDefaultSaveType = stQRP
          PreviewLeft = 0
          PreviewTop = 0
          object PageHeaderBand1: TQRBand
            Left = 48
            Top = 48
            Width = 960
            Height = 113
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
              298.979166666666700000
              2540.000000000000000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbPageHeader
            object QRLabel1: TQRLabel
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
            object QRLabel2: TQRLabel
              Left = 8
              Top = 30
              Width = 373
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                21.166666666666670000
                79.375000000000000000
                986.895833333333300000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'SENIOR CITIZEN DISCOUNTS COMPUTATION (HOUSEHOLD) '
              Color = clWhite
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 10
            end
            object QRLabel3: TQRLabel
              Left = 8
              Top = 53
              Width = 159
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                21.166666666666670000
                140.229166666666700000
                420.687500000000000000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
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
            object QRSysData1: TQRSysData
              Left = 892
              Top = 8
              Width = 68
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                2360.083333333333000000
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
            object QRSysData2: TQRSysData
              Left = 892
              Top = 8
              Width = 68
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                2360.083333333333000000
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
            object QRSysData3: TQRSysData
              Left = 914
              Top = 32
              Width = 46
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                2418.291666666667000000
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
            object QRLabel4: TQRLabel
              Left = 8
              Top = 91
              Width = 74
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                21.166666666666670000
                240.770833333333300000
                195.791666666666700000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Lifeline Level'
              Color = clWhite
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 10
            end
            object QRLabel5: TQRLabel
              Left = 110
              Top = 91
              Width = 67
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                291.041666666666700000
                240.770833333333300000
                177.270833333333300000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Percentage'
              Color = clWhite
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 10
            end
            object QRLabel6: TQRLabel
              Left = 96
              Top = 75
              Width = 96
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                254.000000000000000000
                198.437500000000000000
                254.000000000000000000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Lifeline Discount'
              Color = clWhite
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 10
            end
            object QRLabel7: TQRLabel
              Left = 220
              Top = 91
              Width = 77
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                582.083333333333300000
                240.770833333333300000
                203.729166666666700000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Consumption'
              Color = clWhite
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 10
            end
            object QRLabel8: TQRLabel
              Left = 221
              Top = 73
              Width = 76
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                584.729166666666700000
                193.145833333333300000
                201.083333333333300000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Kilowatthour '
              Color = clWhite
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 10
            end
            object QRLabel9: TQRLabel
              Left = 341
              Top = 73
              Width = 35
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                902.229166666666700000
                193.145833333333300000
                92.604166666666670000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'No of.'
              Color = clWhite
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 10
            end
            object QRLabel10: TQRLabel
              Left = 324
              Top = 91
              Width = 67
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                857.250000000000000000
                240.770833333333300000
                177.270833333333300000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Consumers'
              Color = clWhite
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 10
            end
            object QRLabel11: TQRLabel
              Left = 428
              Top = 91
              Width = 42
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1132.416666666667000000
                240.770833333333300000
                111.125000000000000000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'TRATE'
              Color = clWhite
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 10
            end
            object QRLabel12: TQRLabel
              Left = 508
              Top = 91
              Width = 71
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1344.083333333333000000
                240.770833333333300000
                187.854166666666700000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Fix Charges'
              Color = clWhite
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 10
            end
            object QRLabel13: TQRLabel
              Left = 605
              Top = 73
              Width = 94
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1600.729166666667000000
                193.145833333333300000
                248.708333333333300000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Amount Subject'
              Color = clWhite
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 10
            end
            object QRLabel14: TQRLabel
              Left = 617
              Top = 91
              Width = 70
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1632.479166666667000000
                240.770833333333300000
                185.208333333333300000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'To Discount'
              Color = clWhite
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 10
            end
            object QRLabel15: TQRLabel
              Left = 729
              Top = 91
              Width = 82
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1928.812500000000000000
                240.770833333333300000
                216.958333333333300000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = '100% less LD'
              Color = clWhite
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 10
            end
            object QRLabel16: TQRLabel
              Left = 877
              Top = 73
              Width = 60
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                2320.395833333333000000
                193.145833333333300000
                158.750000000000000000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Amount of'
              Color = clWhite
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 10
            end
            object QRLabel17: TQRLabel
              Left = 883
              Top = 91
              Width = 52
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                2336.270833333333000000
                240.770833333333300000
                137.583333333333300000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Discount'
              Color = clWhite
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 10
            end
          end
          object DetailBand1: TQRBand
            Left = 48
            Top = 161
            Width = 960
            Height = 32
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
              84.666666666666670000
              2540.000000000000000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbDetail
            object QRDBText1: TQRDBText
              Left = 8
              Top = 7
              Width = 70
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                21.166666666666670000
                18.520833333333330000
                185.208333333333300000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = AnnexA1
              DataField = 'LifelineLevel'
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 10
            end
            object QRDBText2: TQRDBText
              Left = 108
              Top = 7
              Width = 69
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                285.750000000000000000
                18.520833333333330000
                182.562500000000000000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = AnnexA1
              DataField = 'LifelineDiscountPercentage'
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 10
            end
            object QRDBText3: TQRDBText
              Left = 225
              Top = 7
              Width = 69
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                595.312500000000000000
                18.520833333333330000
                182.562500000000000000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = AnnexA1
              DataField = 'kilowatthour'
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 10
            end
            object QRDBText4: TQRDBText
              Left = 320
              Top = 7
              Width = 69
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                846.666666666666700000
                18.520833333333330000
                182.562500000000000000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = AnnexA1
              DataField = 'tAccount'
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 10
            end
            object QRDBText5: TQRDBText
              Left = 400
              Top = 7
              Width = 69
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1058.333333333333000000
                18.520833333333330000
                182.562500000000000000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = AnnexA1
              DataField = 'TRate'
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 10
            end
            object QRDBText6: TQRDBText
              Left = 507
              Top = 7
              Width = 69
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1341.437500000000000000
                18.520833333333330000
                182.562500000000000000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = AnnexA1
              DataField = 'FixCharges'
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 10
            end
            object QRDBText7: TQRDBText
              Left = 603
              Top = 7
              Width = 91
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1595.437500000000000000
                18.520833333333330000
                240.770833333333300000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = AnnexA1
              DataField = 'amount4discount'
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 10
            end
            object QRDBText8: TQRDBText
              Left = 719
              Top = 7
              Width = 91
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1902.354166666667000000
                18.520833333333330000
                240.770833333333300000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = AnnexA1
              DataField = 'amountlessld'
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 10
            end
            object QRDBText9: TQRDBText
              Left = 845
              Top = 7
              Width = 91
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                2235.729166666667000000
                18.520833333333330000
                240.770833333333300000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = AnnexA1
              DataField = 'amountdiscount'
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 10
            end
          end
          object SummaryBand2: TQRBand
            Left = 48
            Top = 193
            Width = 960
            Height = 35
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
              92.604166666666670000
              2540.000000000000000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbSummary
            object QRLabel35: TQRLabel
              Left = 96
              Top = 8
              Width = 41
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                254.000000000000000000
                21.166666666666670000
                108.479166666666700000)
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
              FontSize = 10
            end
            object QRExpr3: TQRExpr
              Left = 749
              Top = 7
              Width = 187
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1981.729166666667000000
                18.520833333333330000
                494.770833333333300000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              ResetAfterPrint = False
              Transparent = False
              WordWrap = True
              Expression = 'SUM(AnnexA1.amountdiscount)'
              Mask = '#,###.00'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 10
            end
            object QRExpr4: TQRExpr
              Left = 552
              Top = 7
              Width = 68
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1460.500000000000000000
                18.520833333333330000
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
              Expression = 'SUM(AnnexA1.TKwhr)'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 10
            end
            object QRLabel36: TQRLabel
              Left = 472
              Top = 8
              Width = 72
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1248.833333333333000000
                21.166666666666670000
                190.500000000000000000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Kilowatthour'
              Color = clWhite
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 10
            end
            object QRDBText19: TQRDBText
              Left = 320
              Top = 7
              Width = 69
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                846.666666666666700000
                18.520833333333330000
                182.562500000000000000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = TAccount
              DataField = 'tAccount'
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 10
            end
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Annex A3'
        ImageIndex = 1
        object QuickRep2: TQuickRep
          Left = -21
          Top = 3
          Width = 816
          Height = 1056
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          DataSet = AnnexA3
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
          PrevInitialZoom = qrZoomToFit
          PreviewDefaultSaveType = stQRP
          PreviewLeft = 0
          PreviewTop = 0
          object QRBand1: TQRBand
            Left = 48
            Top = 48
            Width = 720
            Height = 113
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
              298.979166666666700000
              1905.000000000000000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbPageHeader
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
              Left = 8
              Top = 30
              Width = 328
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                21.166666666666670000
                79.375000000000000000
                867.833333333333300000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'SENIOR CITIZEN COMPUTATION OF SUBSIDY RATES'
              Color = clWhite
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 10
            end
            object QRSysData4: TQRSysData
              Left = 652
              Top = 8
              Width = 68
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1725.083333333333000000
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
              Left = 652
              Top = 8
              Width = 68
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1725.083333333333000000
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
              Left = 674
              Top = 32
              Width = 46
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1783.291666666667000000
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
            object QRLabel21: TQRLabel
              Left = 8
              Top = 91
              Width = 48
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                21.166666666666670000
                240.770833333333300000
                127.000000000000000000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Month/s'
              Color = clWhite
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 10
            end
            object QRLabel22: TQRLabel
              Left = 193
              Top = 91
              Width = 96
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                510.645833333333300000
                240.770833333333300000
                254.000000000000000000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Citizen Discount'
              Color = clWhite
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 10
            end
            object QRLabel23: TQRLabel
              Left = 192
              Top = 75
              Width = 101
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                508.000000000000000000
                198.437500000000000000
                267.229166666666700000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Amount of Senior'
              Color = clWhite
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 10
            end
            object QRLabel24: TQRLabel
              Left = 396
              Top = 91
              Width = 112
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1047.750000000000000000
                240.770833333333300000
                296.333333333333300000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'KWH Consumption'
              Color = clWhite
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 10
            end
            object QRLabel25: TQRLabel
              Left = 421
              Top = 73
              Width = 68
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1113.895833333333000000
                193.145833333333300000
                179.916666666666700000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Subsidizing'
              Color = clWhite
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 10
            end
            object QRLabel28: TQRLabel
              Left = 596
              Top = 91
              Width = 79
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1576.916666666667000000
                240.770833333333300000
                209.020833333333300000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Subsidy Rate'
              Color = clWhite
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 10
            end
          end
          object QRBand2: TQRBand
            Left = 48
            Top = 161
            Width = 720
            Height = 32
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
              84.666666666666670000
              1905.000000000000000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbDetail
            object QRDBText10: TQRDBText
              Left = 8
              Top = 7
              Width = 72
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                21.166666666666670000
                18.520833333333330000
                190.500000000000000000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = AnnexA3
              DataField = 'BillMonthStr'
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 10
            end
            object QRDBText11: TQRDBText
              Left = 236
              Top = 7
              Width = 54
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                624.416666666666700000
                18.520833333333330000
                142.875000000000000000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = AnnexA3
              DataField = 'tdiscount'
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 10
            end
            object QRDBText12: TQRDBText
              Left = 436
              Top = 7
              Width = 32
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1153.583333333333000000
                18.520833333333330000
                84.666666666666670000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = AnnexA3
              DataField = 'tkwhr'
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 10
            end
            object QRDBText13: TQRDBText
              Left = 611
              Top = 7
              Width = 58
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1616.604166666667000000
                18.520833333333330000
                153.458333333333300000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = AnnexA3
              DataField = 'SubsRate'
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 10
            end
          end
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Senior Citizen Detailed List'
        ImageIndex = 2
        object QuickRep3: TQuickRep
          Left = 35
          Top = -1
          Width = 816
          Height = 1056
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          DataSet = SCList
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
          PrevInitialZoom = qrZoomToFit
          PreviewDefaultSaveType = stQRP
          PreviewLeft = 0
          PreviewTop = 0
          object QRBand3: TQRBand
            Left = 48
            Top = 48
            Width = 720
            Height = 113
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
              298.979166666666700000
              1905.000000000000000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbPageHeader
            object QRLabel20: TQRLabel
              Left = 8
              Top = 8
              Width = 353
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                21.166666666666670000
                21.166666666666670000
                933.979166666666700000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'ZAMBOANGA DEL NORTE ELECTRIC COOPERATIVE, Inc.'
              Color = clWhite
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 10
            end
            object QRLabel26: TQRLabel
              Left = 8
              Top = 30
              Width = 197
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                21.166666666666670000
                79.375000000000000000
                521.229166666666700000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'SENIOR CITIZEN DETAILED LIST'
              Color = clWhite
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 10
            end
            object QRSysData7: TQRSysData
              Left = 652
              Top = 8
              Width = 68
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1725.083333333333000000
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
            object QRSysData8: TQRSysData
              Left = 652
              Top = 8
              Width = 68
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1725.083333333333000000
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
            object QRSysData9: TQRSysData
              Left = 674
              Top = 32
              Width = 46
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1783.291666666667000000
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
            object QRLabel27: TQRLabel
              Left = 8
              Top = 91
              Width = 98
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                21.166666666666670000
                240.770833333333300000
                259.291666666666700000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Account Number'
              Color = clWhite
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 10
            end
            object QRLabel29: TQRLabel
              Left = 193
              Top = 91
              Width = 98
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                510.645833333333300000
                240.770833333333300000
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
            object QRLabel31: TQRLabel
              Left = 396
              Top = 91
              Width = 68
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1047.750000000000000000
                240.770833333333300000
                179.916666666666700000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Bill Number'
              Color = clWhite
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 10
            end
            object QRLabel33: TQRLabel
              Left = 668
              Top = 91
              Width = 46
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1767.416666666667000000
                240.770833333333300000
                121.708333333333300000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Amount'
              Color = clWhite
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 10
            end
            object QRLabel30: TQRLabel
              Left = 8
              Top = 53
              Width = 159
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                21.166666666666670000
                140.229166666666700000
                420.687500000000000000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
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
            object QRLabel34: TQRLabel
              Left = 532
              Top = 91
              Width = 72
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1407.583333333333000000
                240.770833333333300000
                190.500000000000000000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Kilowatthour'
              Color = clWhite
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 10
            end
          end
          object QRBand4: TQRBand
            Left = 48
            Top = 161
            Width = 720
            Height = 32
            Frame.DrawTop = True
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            AlignToBottom = False
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              84.666666666666670000
              1905.000000000000000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbDetail
            object QRDBText14: TQRDBText
              Left = 8
              Top = 7
              Width = 94
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                21.166666666666670000
                18.520833333333330000
                248.708333333333300000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = SCList
              DataField = 'AccountNumber'
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 10
            end
            object QRDBText15: TQRDBText
              Left = 116
              Top = 7
              Width = 70
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                306.916666666666700000
                18.520833333333330000
                185.208333333333300000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = SCList
              DataField = 'BillingName'
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 10
            end
            object QRDBText16: TQRDBText
              Left = 397
              Top = 7
              Width = 69
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1050.395833333333000000
                18.520833333333330000
                182.562500000000000000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = SCList
              DataField = 'oebrnumber'
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 10
            end
            object QRDBText17: TQRDBText
              Left = 673
              Top = 7
              Width = 39
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1780.645833333333000000
                18.520833333333330000
                103.187500000000000000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = SCList
              DataField = 'scdisc'
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 10
            end
            object QRDBText18: TQRDBText
              Left = 532
              Top = 7
              Width = 70
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1407.583333333333000000
                18.520833333333330000
                185.208333333333300000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = SCList
              DataField = 'kilowatthour'
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 10
            end
          end
          object SummaryBand1: TQRBand
            Left = 48
            Top = 193
            Width = 720
            Height = 40
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
              105.833333333333300000
              1905.000000000000000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbSummary
            object QRLabel32: TQRLabel
              Left = 520
              Top = 12
              Width = 29
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1375.833333333333000000
                31.750000000000000000
                76.729166666666670000)
              XLColumn = 0
              Alignment = taLeftJustify
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
            object QRExpr1: TQRExpr
              Left = 593
              Top = 12
              Width = 119
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1568.979166666667000000
                31.750000000000000000
                314.854166666666700000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              ResetAfterPrint = False
              Transparent = False
              WordWrap = True
              Expression = 'SUM(SCList.scdisc)'
              Mask = '#,##0.00'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 10
            end
          end
        end
      end
    end
  end
  object AnnexA1: TMyQuery
    Connection = BillingData.MyConnection1
    SQL.Strings = (
      'select case '
      '       when a.kilowatthour <= 15               then '#39'<= 15'#39
      '       when a.kilowatthour between 15.1 and 16 then '#39'15.1 to 16'#39
      '       when a.kilowatthour between 16.1 and 17 then '#39'16.1 to 17'#39
      '       when a.kilowatthour between 17.1 and 18 then '#39'17.1 to 18'#39
      '       when a.kilowatthour between 18.1 and 19 then '#39'18.1 to 19'#39
      '       when a.kilowatthour between 19.1 and 20 then '#39'19.1 to 20'#39
      '       else '#39' '#39' end as LifelineLevel,'
      '       case '
      '       when a.kilowatthour <= 15               then '#39'50%'#39
      '       when a.kilowatthour between 15.1 and 16 then '#39'40%'#39
      '       when a.kilowatthour between 16.1 and 17 then '#39'30%'#39
      '       when a.kilowatthour between 17.1 and 18 then '#39'20%'#39
      '       when a.kilowatthour between 18.1 and 19 then '#39'10%'#39
      '       when a.kilowatthour between 19.1 and 20 then '#39'5%'#39
      '       else '#39' '#39' end as LifelineDiscount,'
      '       case '
      '       when a.kilowatthour <= 15               then 0.50'
      '       when a.kilowatthour between 15.1 and 16 then 0.60'
      '       when a.kilowatthour between 16.1 and 17 then 0.70'
      '       when a.kilowatthour between 17.1 and 18 then 0.80'
      '       when a.kilowatthour between 18.1 and 19 then 0.90'
      '       when a.kilowatthour between 19.1 and 20 then 0.95'
      '       else 1 end as LifelineDiscountPercentage,'
      '       a.kilowatthour,'
      '       count(a.accountnumber) tAccount,'
      '       sum(ifnull(kilowatthour,0)) TKwhr,'
      '       ifnull(m.GenSysRate,0) +'
      '       ifnull(m.HostCommRate,0) +'
      '       ifnull(m.ForexRate,0) +'
      '       ifnull(m.TCDemandRate,0) +'
      '       ifnull(m.TCSystemRate,0) +'
      '       ifnull(m.SystemLossRate,0) +'
      '       ifnull(m.DCDemandRate,0) +'
      '       ifnull(m.DCSystemRate,0) +'
      '       ifnull(m.SCSupplySysRate,0) +'
      '       ifnull(m.MCSysRate,0) as TRate,'
      '       ifnull(m.SCRetailCustRate,0) +'
      '       ifnull(m.MCRetailCustRate,0) + '
      '       ifnull(m.LoanCondo,0) as FixCharges,'
      '       M.SCDiscPercent       '
      'from billhistory a'
      
        'inner join meterrate m on (m.mbillmonth = a.billmonth and (IF(CO' +
        'NCAT(RIGHT(a.billmonth,2),'
      
        '                                                                ' +
        '     LEFT(a.billmonth,2)) >= '#39'0112'#39','
      
        '                                                              m.' +
        'wratecode = a.wratecode,'
      
        '                                                              m.' +
        'ratecode = a.ratecode))) '
      'where a.billmonth = :billmonth and '
      '      a.ratecode = '#39'R'#39' and '
      
        '      exists (select *,DateDiff(expirationdate,a.presentreadingd' +
        'ate) as stillvalid'
      '                       from scdisc '
      '                         where scode = a.code and '
      
        '                               DateApplied <= a.presentreadingda' +
        'te'
      '                       having stillvalid  > 0)'
      '      and a.kilowatthour between 0 and 100'
      'group by a.kilowatthour'
      'order by a.kilowatthour')
    OnCalcFields = AnnexA1CalcFields
    Left = 8
    Top = 16
    ParamData = <
      item
        DataType = ftString
        Name = 'billmonth'
        Value = '0112'
      end>
    object AnnexA1kilowatthour: TFloatField
      FieldName = 'kilowatthour'
    end
    object AnnexA1tAccount: TLargeintField
      FieldName = 'tAccount'
    end
    object AnnexA1TKwhr: TFloatField
      FieldName = 'TKwhr'
    end
    object AnnexA1TRate: TFloatField
      FieldName = 'TRate'
    end
    object AnnexA1FixCharges: TFloatField
      FieldName = 'FixCharges'
    end
    object AnnexA1SCDiscPercent: TFloatField
      FieldName = 'SCDiscPercent'
    end
    object AnnexA1amount4discount: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'amount4discount'
      Calculated = True
    end
    object AnnexA1amountlessld: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'amountlessld'
      Calculated = True
    end
    object AnnexA1amountdiscount: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'amountdiscount'
      Calculated = True
    end
    object AnnexA1LifelineLevel: TStringField
      FieldName = 'LifelineLevel'
      Size = 11
    end
    object AnnexA1LifelineDiscount: TStringField
      FieldName = 'LifelineDiscount'
      Size = 3
    end
    object AnnexA1LifelineDiscountPercentage: TFloatField
      FieldName = 'LifelineDiscountPercentage'
      currency = True
    end
  end
  object AnnexA3: TMyQuery
    Connection = BillingData.MyConnection1
    SQL.Strings = (
      'select a.billmonth,'
      '       m.mbillmonth,'
      
        '       Date_Format(date(concat(substring(a.billmonth,3,2),'#39'-'#39',su' +
        'bstring(a.billmonth,1,2),'#39'-01'#39')),'#39'%M, %Y'#39') BillMonthStr,'
      
        '       concat(substring(a.billmonth,3,2),substring(a.billmonth,1' +
        ',2)) yearmon,'
      '       sum(if(ifnull(a.scdisc,0) < 0,a.scdisc*-1,0)) tdiscount,'
      
        '       sum(if(ifnull(a.scdisc,0) >= 0 and ifnull(a.lifelinediscs' +
        'ubs,0) > 0,cast(a.kilowatthour as decimal(10,1)),0)) tkwhr'
      'from billhistory a'
      
        'join meterrate m on (a.billmonth = m.mbillmonth and (IF(CONCAT(R' +
        'IGHT(a.billmonth,2),'
      
        '                                                                ' +
        '     LEFT(a.billmonth,2)) >= '#39'1201'#39','
      
        '                                                              m.' +
        'wratecode = a.wratecode and m.wratecode = '#39'R'#39','
      
        '                                                              m.' +
        'ratecode = a.ratecode and m.ratecode = '#39'R'#39')) and m.scdiscapply =' +
        ' '#39'1'#39')'
      'group by a.billmonth'
      'order by yearmon')
    OnCalcFields = AnnexA3CalcFields
    Left = 8
    Top = 48
    object AnnexA3billmonth: TStringField
      FieldName = 'billmonth'
      Size = 4
    end
    object AnnexA3mbillmonth: TStringField
      FieldName = 'mbillmonth'
      Size = 4
    end
    object AnnexA3yearmon: TStringField
      FieldName = 'yearmon'
      Size = 4
    end
    object AnnexA3tdiscount: TFloatField
      FieldName = 'tdiscount'
    end
    object AnnexA3tkwhr: TFloatField
      FieldName = 'tkwhr'
    end
    object AnnexA3SubsRate: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'SubsRate'
      Calculated = True
    end
    object AnnexA3BillMonthStr: TStringField
      FieldName = 'BillMonthStr'
      Size = 70
    end
  end
  object SCList: TMyQuery
    Connection = BillingData.MyConnection1
    SQL.Strings = (
      'select a.*,'
      '       b.oebrnumber,'
      '       b.kilowatthour,'
      '       b.scdisc '
      'from scdisc a'
      
        'inner join billhistory b on (a.scode = b.code and b.billmonth = ' +
        ':billmonth)'
      'order by a.billingname')
    Left = 8
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'billmonth'
      end>
    object SCListSCode: TFloatField
      FieldName = 'SCode'
    end
    object SCListArea: TStringField
      FieldName = 'Area'
      FixedChar = True
      Size = 3
    end
    object SCListBook: TStringField
      FieldName = 'Book'
      FixedChar = True
      Size = 3
    end
    object SCListSequence: TStringField
      FieldName = 'Sequence'
      Size = 6
    end
    object SCListAccountNumber: TStringField
      FieldName = 'AccountNumber'
      Size = 10
    end
    object SCListBillingName: TStringField
      FieldName = 'BillingName'
      Size = 50
    end
    object SCListName: TStringField
      FieldName = 'Name'
      Size = 50
    end
    object SCListBDay: TDateField
      FieldName = 'BDay'
    end
    object SCListCPNo: TStringField
      FieldName = 'CPNo'
      Size = 15
    end
    object SCListSCIDNo: TStringField
      FieldName = 'SCIDNo'
    end
    object SCListSpouseSCIDNo: TStringField
      FieldName = 'SpouseSCIDNo'
    end
    object SCListDateApplied: TDateField
      FieldName = 'DateApplied'
    end
    object SCListExpirationDate: TDateField
      FieldName = 'ExpirationDate'
    end
    object SCListRemarks: TStringField
      FieldName = 'Remarks'
      Size = 50
    end
    object SCListAddress: TStringField
      FieldName = 'Address'
      Size = 50
    end
    object SCListscdisc: TFloatField
      FieldName = 'scdisc'
      currency = True
    end
    object SCListoebrnumber: TStringField
      FieldName = 'oebrnumber'
      Size = 10
    end
    object SCListkilowatthour: TFloatField
      FieldName = 'kilowatthour'
    end
    object SCListidSCDisc: TLongWordField
      FieldName = 'idSCDisc'
    end
  end
  object TAccount: TMyQuery
    Connection = BillingData.MyConnection1
    SQL.Strings = (
      'select count(a.accountnumber) tAccount'
      'from billhistory a'
      'where a.billmonth = :billmonth and '
      '      (IF(CONCAT(RIGHT(a.billmonth,2),'
      '          LEFT(a.billmonth,2)) >= '#39'0112'#39','
      '          a.wratecode,'
      '          a.ratecode)) = '#39'R'#39' and '
      
        '      exists (select *,DateDiff(expirationdate,a.presentreadingd' +
        'ate) as stillvalid'
      '                       from scdisc '
      '                         where scode = a.code and '
      
        '                               DateApplied <= a.presentreadingda' +
        'te'
      '                       having stillvalid  > 0)'
      '      and a.kilowatthour between 1 and 100'
      'group by a.billmonth')
    OnCalcFields = AnnexA1CalcFields
    Left = 8
    Top = 112
    ParamData = <
      item
        DataType = ftString
        Name = 'billmonth'
        Value = ''
      end>
    object TAccounttAccount: TLargeintField
      FieldName = 'tAccount'
    end
  end
end
