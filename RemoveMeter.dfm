object RemoveMeterForm: TRemoveMeterForm
  Left = 253
  Top = 67
  BorderStyle = bsDialog
  Caption = 'Remove Meter Interface'
  ClientHeight = 348
  ClientWidth = 637
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 13
    Top = 33
    Width = 23
    Height = 13
    Caption = 'From'
  end
  object Label2: TLabel
    Left = 23
    Top = 55
    Width = 13
    Height = 13
    Caption = 'To'
  end
  object DateFrom: TDateTimePicker
    Left = 40
    Top = 28
    Width = 93
    Height = 21
    Date = 40728.628962187500000000
    Time = 40728.628962187500000000
    TabOrder = 0
    OnChange = DateFromChange
  end
  object DateTo: TDateTimePicker
    Left = 40
    Top = 52
    Width = 93
    Height = 21
    Date = 40728.628962187500000000
    Time = 40728.628962187500000000
    TabOrder = 1
  end
  object NxLinkLabel1: TNxLinkLabel
    Left = 25
    Top = 7
    Width = 88
    Height = 18
    Caption = 'Period Covered'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    HoverColor = clRed
    ParentFont = False
    TextDistance = 2
    Transparent = True
    VertSpacing = 2
    OnClick = NxLinkLabel1Click
  end
  object RadioGroup1: TRadioGroup
    Left = 12
    Top = 92
    Width = 119
    Height = 96
    Caption = 'View Options'
    Items.Strings = (
      'All'
      'Pending'
      'Completed'
      'Posted'
      'Unposted')
    TabOrder = 3
    OnClick = RadioGroup1Click
  end
  object NxButton1: TNxButton
    Left = 12
    Top = 200
    Width = 117
    Caption = 'Remove Meter List'
    TabOrder = 4
    OnClick = NxButton1Click
  end
  object NxButton2: TNxButton
    Left = 12
    Top = 226
    Width = 117
    Caption = 'Update Master'
    TabOrder = 5
    OnClick = NxButton2Click
  end
  object NxButton3: TNxButton
    Left = 12
    Top = 316
    Width = 117
    Caption = 'Close'
    TabOrder = 6
    OnClick = NxButton3Click
  end
  object NxLinkLabel2: TNxLinkLabel
    Left = 144
    Top = 6
    Width = 41
    Height = 18
    Caption = 'Search'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    HoverColor = clRed
    ParentFont = False
    TextDistance = 2
    Transparent = True
    VertSpacing = 2
    OnClick = NxLinkLabel2Click
  end
  object NxEdit1: TNxEdit
    Left = 189
    Top = 6
    Width = 178
    Height = 21
    TabOrder = 9
  end
  object NxMemo1: TNxMemo
    Left = 144
    Top = 272
    Width = 481
    Height = 65
    TabOrder = 10
  end
  object NxLinkLabel3: TNxLinkLabel
    Left = 494
    Top = 6
    Width = 26
    Height = 18
    Caption = 'New'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    HoverColor = clRed
    ParentFont = False
    TextDistance = 2
    Transparent = True
    VertSpacing = 2
    OnClick = NxLinkLabel3Click
  end
  object NxLinkLabel4: TNxLinkLabel
    Left = 582
    Top = 6
    Width = 41
    Height = 18
    Caption = 'Update'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    HoverColor = clRed
    ParentFont = False
    TextDistance = 2
    Transparent = True
    VertSpacing = 2
    OnClick = NxLinkLabel4Click
  end
  object NxCheckBox1: TNxCheckBox
    Left = 370
    Top = 6
    Width = 103
    Height = 21
    TabOrder = 13
    Text = 'NxCheckBox1'
    Caption = 'Consumer Name'
  end
  object NxLinkLabel5: TNxLinkLabel
    Left = 533
    Top = 6
    Width = 37
    Height = 18
    Caption = 'Delete'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    HoverColor = clRed
    ParentFont = False
    TextDistance = 2
    Transparent = True
    VertSpacing = 2
    OnClick = NxLinkLabel5Click
  end
  object RemoveMeterPanel: TNxHeaderPanel
    Left = 313
    Top = 128
    Width = 345
    Height = 313
    Caption = 'Remove Meter Transaction'
    HeaderFont.Charset = ANSI_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -13
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = []
    ParentHeaderFont = False
    TabOrder = 15
    Visible = False
    DesignSize = (
      343
      311)
    FullWidth = 345
    object Label14: TLabel
      Left = 16
      Top = 472
      Width = 33
      Height = 13
      Caption = 'Posted'
      FocusControl = DBEdit12
    end
    object Label3: TLabel
      Left = 93
      Top = 49
      Width = 23
      Height = 13
      Caption = 'Date'
      FocusControl = DBEdit1
    end
    object Label5: TLabel
      Left = 88
      Top = 92
      Width = 28
      Height = 13
      Caption = 'Name'
      FocusControl = DBEdit3
    end
    object Label6: TLabel
      Left = 53
      Top = 135
      Width = 63
      Height = 13
      Caption = 'Last Reading'
      FocusControl = DBEdit4
    end
    object Label7: TLabel
      Left = 58
      Top = 157
      Width = 58
      Height = 13
      Caption = 'Meter Brand'
      FocusControl = DBEdit5
    end
    object Label8: TLabel
      Left = 50
      Top = 179
      Width = 66
      Height = 13
      Caption = 'Serial Number'
      FocusControl = DBEdit6
    end
    object Label9: TLabel
      Left = 44
      Top = 274
      Width = 72
      Height = 13
      Caption = 'Date Removed'
      FocusControl = DBEdit7
    end
    object Label4: TLabel
      Left = 22
      Top = 114
      Width = 94
      Height = 13
      Caption = 'Disconnection Date'
      FocusControl = DBEdit3
    end
    object Label10: TLabel
      Left = 75
      Top = 201
      Width = 41
      Height = 13
      Caption = 'Location'
      FocusControl = DBEdit6
    end
    object DBEdit12: TDBEdit
      Left = 16
      Top = 488
      Width = 17
      Height = 21
      DataField = 'Posted'
      DataSource = BillingData.dsRemoveMeter
      TabOrder = 0
    end
    object DBEdit1: TDBEdit
      Left = 120
      Top = 44
      Width = 200
      Height = 19
      Ctl3D = False
      DataField = 'Date'
      DataSource = BillingData.dsRemoveMeter
      ParentCtl3D = False
      TabOrder = 1
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit2: TDBEdit
      Left = 120
      Top = 66
      Width = 200
      Height = 19
      Ctl3D = False
      DataField = 'AccountNumber'
      DataSource = BillingData.dsRemoveMeter
      ParentCtl3D = False
      TabOrder = 2
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit3: TDBEdit
      Left = 120
      Top = 88
      Width = 200
      Height = 19
      Ctl3D = False
      DataField = 'Name'
      DataSource = BillingData.dsRemoveMeter
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 3
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit4: TDBEdit
      Left = 120
      Top = 132
      Width = 200
      Height = 19
      Ctl3D = False
      DataField = 'LastReading'
      DataSource = BillingData.dsRemoveMeter
      ParentCtl3D = False
      TabOrder = 5
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit5: TDBEdit
      Left = 120
      Top = 154
      Width = 200
      Height = 19
      Ctl3D = False
      DataField = 'MeterBrand'
      DataSource = BillingData.dsRemoveMeter
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 6
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit6: TDBEdit
      Left = 120
      Top = 176
      Width = 200
      Height = 19
      Ctl3D = False
      DataField = 'SerialNumber'
      DataSource = BillingData.dsRemoveMeter
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 7
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit7: TDBEdit
      Left = 120
      Top = 271
      Width = 200
      Height = 19
      Ctl3D = False
      DataField = 'DateRemoved'
      DataSource = BillingData.dsRemoveMeter
      Enabled = False
      ParentCtl3D = False
      TabOrder = 9
      OnKeyPress = DBEdit1KeyPress
    end
    object DBRadioGroup1: TDBRadioGroup
      Left = 80
      Top = 223
      Width = 185
      Height = 41
      Caption = 'Accomplishment Status'
      Columns = 2
      DataField = 'Accomplished'
      DataSource = BillingData.dsRemoveMeter
      Items.Strings = (
        'Pending'
        'Completed')
      ParentBackground = True
      TabOrder = 10
      Values.Strings = (
        '0'
        '1')
      OnClick = DBRadioGroup1Click
    end
    object NxLinkLabel6: TNxLinkLabel
      Left = 267
      Top = 4
      Width = 26
      Height = 16
      Anchors = [akTop, akRight]
      Caption = 'Save'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      HoverColor = clWindowText
      ParentFont = False
      TextDistance = 2
      Transparent = True
      VertSpacing = 2
      OnClick = NxLinkLabel6Click
    end
    object NxLinkLabel7: TNxLinkLabel
      Left = 299
      Top = 4
      Width = 36
      Height = 16
      Anchors = [akTop, akRight]
      Caption = 'Cancel'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      HoverColor = clWindowText
      ParentFont = False
      TextDistance = 2
      Transparent = True
      VertSpacing = 2
      OnClick = NxLinkLabel7Click
    end
    object AccountNumberSearch: TNxLinkLabel
      Left = 35
      Top = 70
      Width = 81
      Height = 15
      Caption = 'Account Number'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      HoverColor = clRed
      ParentFont = False
      TextDistance = 2
      VertSpacing = 2
      OnClick = AccountNumberSearchClick
    end
    object DBEdit8: TDBEdit
      Left = 120
      Top = 110
      Width = 200
      Height = 19
      Ctl3D = False
      DataField = 'DiscoDate'
      DataSource = BillingData.dsRemoveMeter
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 4
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit9: TDBEdit
      Left = 120
      Top = 198
      Width = 200
      Height = 19
      Ctl3D = False
      DataField = 'Location'
      DataSource = BillingData.dsRemoveMeter
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 8
      OnKeyPress = DBEdit1KeyPress
    end
  end
  object Panel1: TPanel
    Left = 664
    Top = 336
    Width = 1097
    Height = 417
    BevelInner = bvLowered
    BorderWidth = 10
    TabOrder = 16
    Visible = False
    object PageControl1: TPageControl
      Left = 12
      Top = 12
      Width = 1073
      Height = 393
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Remove Meter List'
        object QuickRep1: TQuickRep
          Left = 8
          Top = 0
          Width = 816
          Height = 1056
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          DataSet = RMList
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
          PreviewInitialState = wsNormal
          PrevInitialZoom = qrZoomToFit
          PreviewDefaultSaveType = stQRP
          PreviewLeft = 0
          PreviewTop = 0
          object TitleBand1: TQRBand
            Left = 48
            Top = 48
            Width = 720
            Height = 65
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
              171.979166666666700000
              1905.000000000000000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbTitle
            object QRLabel2: TQRLabel
              Left = 180
              Top = 8
              Width = 360
              Height = 20
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                52.916666666666670000
                476.250000000000000000
                21.166666666666670000
                952.500000000000000000)
              XLColumn = 0
              Alignment = taCenter
              AlignToBand = True
              AutoSize = True
              AutoStretch = False
              Caption = 'ZAMBOANGA DEL NORTE ELECTRIC COOP., INC.'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 12
            end
            object QRLabel26: TQRLabel
              Left = 237
              Top = 31
              Width = 245
              Height = 20
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                52.916666666666670000
                627.062500000000000000
                82.020833333333330000
                648.229166666666700000)
              XLColumn = 0
              Alignment = taCenter
              AlignToBand = True
              AutoSize = True
              AutoStretch = False
              Caption = 'REMOVE METER FOR EXECUTION'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 12
            end
            object QRSysData1: TQRSysData
              Left = 0
              Top = 8
              Width = 68
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                0.000000000000000000
                21.166666666666670000
                179.916666666666700000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = True
              AutoSize = True
              Color = clWhite
              Data = qrsDateTime
              Transparent = False
              ExportAs = exptText
              FontSize = 10
            end
            object QRSysData2: TQRSysData
              Left = 674
              Top = 9
              Width = 46
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1783.291666666667000000
                23.812500000000000000
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
          end
          object ColumnHeaderBand1: TQRBand
            Left = 48
            Top = 113
            Width = 720
            Height = 56
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
              148.166666666666700000
              1905.000000000000000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbColumnHeader
            object QRLabel1: TQRLabel
              Left = 7
              Top = 7
              Width = 21
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                18.520833333333330000
                18.520833333333330000
                55.562500000000000000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'No.'
              Color = clWhite
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 10
            end
            object QRLabel3: TQRLabel
              Left = 35
              Top = 7
              Width = 65
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                92.604166666666670000
                18.520833333333330000
                171.979166666666700000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Disco Date'
              Color = clWhite
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 10
            end
            object QRLabel4: TQRLabel
              Left = 127
              Top = 7
              Width = 98
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                336.020833333333300000
                18.520833333333330000
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
            object QRLabel5: TQRLabel
              Left = 263
              Top = 7
              Width = 35
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                695.854166666666700000
                18.520833333333330000
                92.604166666666670000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Name'
              Color = clWhite
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 10
            end
            object QRLabel6: TQRLabel
              Left = 415
              Top = 7
              Width = 49
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1098.020833333333000000
                18.520833333333330000
                129.645833333333300000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Address'
              Color = clWhite
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 10
            end
            object QRLabel7: TQRLabel
              Left = 663
              Top = 7
              Width = 53
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1754.187500000000000000
                18.520833333333330000
                140.229166666666700000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Remarks'
              Color = clWhite
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 10
            end
            object QRLabel8: TQRLabel
              Left = 127
              Top = 29
              Width = 83
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                336.020833333333300000
                76.729166666666670000
                219.604166666666700000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Serial Number'
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
            Top = 169
            Width = 720
            Height = 57
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
              150.812500000000000000
              1905.000000000000000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbDetail
            object QRDBText2: TQRDBText
              Left = 35
              Top = 8
              Width = 61
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                92.604166666666670000
                21.166666666666670000
                161.395833333333300000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = RMList
              DataField = 'DiscoDate'
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 10
            end
            object QRDBText3: TQRDBText
              Left = 126
              Top = 8
              Width = 94
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                333.375000000000000000
                21.166666666666670000
                248.708333333333300000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = RMList
              DataField = 'AccountNumber'
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 10
            end
            object QRDBText4: TQRDBText
              Left = 263
              Top = 8
              Width = 35
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                695.854166666666700000
                21.166666666666670000
                92.604166666666670000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = RMList
              DataField = 'Name'
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 10
            end
            object QRDBText5: TQRDBText
              Left = 415
              Top = 8
              Width = 47
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1098.020833333333000000
                21.166666666666670000
                124.354166666666700000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = RMList
              DataField = 'address'
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 10
            end
            object QRSysData3: TQRSysData
              Left = 6
              Top = 8
              Width = 23
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                15.875000000000000000
                21.166666666666670000
                60.854166666666670000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              Data = qrsDetailNo
              Transparent = False
              ExportAs = exptText
              FontSize = 10
            end
            object QRDBText1: TQRDBText
              Left = 126
              Top = 32
              Width = 79
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                333.375000000000000000
                84.666666666666670000
                209.020833333333300000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = RMList
              DataField = 'SerialNumber'
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 10
            end
            object QRDBText6: TQRDBText
              Left = 415
              Top = 31
              Width = 50
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1098.020833333333000000
                82.020833333333330000
                132.291666666666700000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = RMList
              DataField = 'Location'
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
    end
  end
  object CRDBGrid1: TCRDBGrid1
    Left = 139
    Top = 30
    Width = 481
    Height = 233
    Ctl3D = False
    DataSource = BillingData.dsRemoveMeter
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Date'
        Title.Alignment = taCenter
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'status'
        Title.Alignment = taCenter
        Title.Caption = 'Status'
        Width = 99
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Posted'
        Title.Alignment = taCenter
        Width = 37
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Area'
        Title.Alignment = taCenter
        Width = 26
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Book'
        Title.Alignment = taCenter
        Width = 29
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Sequence'
        Title.Alignment = taCenter
        Width = 53
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AccountNumber'
        Title.Alignment = taCenter
        Title.Caption = 'Account Number'
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Name'
        Title.Alignment = taCenter
        Width = 304
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LastReading'
        Title.Alignment = taCenter
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MeterBrand'
        Title.Alignment = taCenter
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SerialNumber'
        Title.Alignment = taCenter
        Width = 94
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DateRemoved'
        Title.Alignment = taCenter
        Width = 112
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Accomplished'
        Title.Alignment = taCenter
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DiscoDate'
        Title.Alignment = taCenter
        Title.Caption = 'Disco Date'
        Width = 64
        Visible = True
      end>
  end
  object RMaster: TMyQuery
    Connection = BillingData.MyConnection1
    SQL.Strings = (
      'select * from master where accountnumber = :accountnumber')
    Left = 18
    Top = 264
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'accountnumber'
      end>
    object RMasterCode: TIntegerField
      FieldName = 'Code'
    end
    object RMasterArea: TStringField
      FieldName = 'Area'
      FixedChar = True
      Size = 3
    end
    object RMasterBook: TStringField
      FieldName = 'Book'
      FixedChar = True
      Size = 3
    end
    object RMasterSequence: TStringField
      FieldName = 'Sequence'
      Size = 4
    end
    object RMasterAccountNumber: TStringField
      FieldName = 'AccountNumber'
      Size = 10
    end
    object RMasterName: TStringField
      FieldName = 'Name'
      Size = 50
    end
    object RMasterAddress: TStringField
      FieldName = 'Address'
      Size = 50
    end
    object RMasterRateCode: TStringField
      FieldName = 'RateCode'
      FixedChar = True
      Size = 1
    end
    object RMasterConsCode: TStringField
      FieldName = 'ConsCode'
      FixedChar = True
      Size = 1
    end
    object RMasterConnCode: TStringField
      FieldName = 'ConnCode'
      FixedChar = True
      Size = 1
    end
    object RMasterTransformer: TStringField
      FieldName = 'Transformer'
      Size = 80
    end
    object RMasterMeterBrand: TStringField
      FieldName = 'MeterBrand'
    end
    object RMasterSerial: TStringField
      FieldName = 'Serial'
    end
    object RMasterMultiplier: TFloatField
      FieldName = 'Multiplier'
    end
    object RMasterNewConnectionDate: TDateField
      FieldName = 'NewConnectionDate'
    end
    object RMasterReconnectionDate: TDateField
      FieldName = 'ReconnectionDate'
    end
    object RMasterDisconnectionDate: TDateField
      FieldName = 'DisconnectionDate'
    end
    object RMasterPreviousReadingDate: TDateField
      FieldName = 'PreviousReadingDate'
    end
    object RMasterPresentReadingDate: TDateField
      FieldName = 'PresentReadingDate'
    end
    object RMasterPreviousReadingKWH: TFloatField
      FieldName = 'PreviousReadingKWH'
    end
    object RMasterPresentReadingKWH: TFloatField
      FieldName = 'PresentReadingKWH'
    end
    object RMasterDiff: TFloatField
      FieldName = 'Diff'
    end
    object RMasterDemand: TFloatField
      FieldName = 'Demand'
    end
    object RMasterFlatRateWattage: TFloatField
      FieldName = 'FlatRateWattage'
    end
    object RMasterFeedBackCode: TStringField
      FieldName = 'FeedBackCode'
      FixedChar = True
      Size = 2
    end
    object RMasterCM: TStringField
      FieldName = 'CM'
      FixedChar = True
      Size = 1
    end
    object RMasterCMMultiplier: TFloatField
      FieldName = 'CMMultiplier'
    end
    object RMasterCMPreviousReadingKWH: TFloatField
      FieldName = 'CMPreviousReadingKWH'
    end
    object RMasterCMPresentReadingKWH: TFloatField
      FieldName = 'CMPresentReadingKWH'
    end
    object RMasterCMKilowattHour: TFloatField
      FieldName = 'CMKilowattHour'
    end
    object RMasterCMDemand: TFloatField
      FieldName = 'CMDemand'
    end
    object RMasterKilowattHour: TFloatField
      FieldName = 'KilowattHour'
    end
    object RMasterKilowattUsed: TFloatField
      FieldName = 'KilowattUsed'
    end
    object RMasterGenSysCharge: TFloatField
      FieldName = 'GenSysCharge'
    end
    object RMasterHostCommCharge: TFloatField
      FieldName = 'HostCommCharge'
    end
    object RMasterForexCharge: TFloatField
      FieldName = 'ForexCharge'
    end
    object RMasterTCDemandCharge: TFloatField
      FieldName = 'TCDemandCharge'
    end
    object RMasterTCTransSystemCharge: TFloatField
      FieldName = 'TCTransSystemCharge'
    end
    object RMasterSystemLossCharge: TFloatField
      FieldName = 'SystemLossCharge'
    end
    object RMasterDCDemandCharge: TFloatField
      FieldName = 'DCDemandCharge'
    end
    object RMasterDCDistributionCharge: TFloatField
      FieldName = 'DCDistributionCharge'
    end
    object RMasterSCRetCustCharge: TFloatField
      FieldName = 'SCRetCustCharge'
    end
    object RMasterSCSupplySysCharge: TFloatField
      FieldName = 'SCSupplySysCharge'
    end
    object RMasterMCRetailCustCharge: TFloatField
      FieldName = 'MCRetailCustCharge'
    end
    object RMasterMCSystemCharge: TFloatField
      FieldName = 'MCSystemCharge'
    end
    object RMasterUCNPCStrandedDebts: TFloatField
      FieldName = 'UCNPCStrandedDebts'
    end
    object RMasterUCNPCStrandedContCost: TFloatField
      FieldName = 'UCNPCStrandedContCost'
    end
    object RMasterUCDUStrandedContCost: TFloatField
      FieldName = 'UCDUStrandedContCost'
    end
    object RMasterUCME: TFloatField
      FieldName = 'UCME'
    end
    object RMasterUCEqTaxesAndRoyalties: TFloatField
      FieldName = 'UCEqTaxesAndRoyalties'
    end
    object RMasterUCEC: TFloatField
      FieldName = 'UCEC'
    end
    object RMasterUCCrossSubRemoval: TFloatField
      FieldName = 'UCCrossSubRemoval'
    end
    object RMasterICCrossSubsidyCharge: TFloatField
      FieldName = 'ICCrossSubsidyCharge'
    end
    object RMasterPowerActRateRed: TFloatField
      FieldName = 'PowerActRateRed'
    end
    object RMasterLifelineDiscSubs: TFloatField
      FieldName = 'LifelineDiscSubs'
    end
    object RMasterLoanCondo: TFloatField
      FieldName = 'LoanCondo'
    end
    object RMasterTransformerRental: TFloatField
      FieldName = 'TransformerRental'
    end
    object RMasterOCCode1: TStringField
      FieldName = 'OCCode1'
      Size = 10
    end
    object RMasterOCAmount1: TFloatField
      FieldName = 'OCAmount1'
    end
    object RMasterOCMo1: TFloatField
      FieldName = 'OCMo1'
    end
    object RMasterOCTotal1: TFloatField
      FieldName = 'OCTotal1'
    end
    object RMasterOCCode2: TStringField
      FieldName = 'OCCode2'
      Size = 10
    end
    object RMasterOCAmount2: TFloatField
      FieldName = 'OCAmount2'
    end
    object RMasterOCMo2: TFloatField
      FieldName = 'OCMo2'
    end
    object RMasterOCTotal2: TFloatField
      FieldName = 'OCTotal2'
    end
    object RMasterOCCode3: TStringField
      FieldName = 'OCCode3'
      Size = 10
    end
    object RMasterOCAmount3: TFloatField
      FieldName = 'OCAmount3'
    end
    object RMasterOCMo3: TFloatField
      FieldName = 'OCMo3'
    end
    object RMasterOCTotal3: TFloatField
      FieldName = 'OCTotal3'
    end
    object RMasterTotalBill: TFloatField
      FieldName = 'TotalBill'
    end
    object RMasterBillNumber: TStringField
      FieldName = 'BillNumber'
      Size = 15
    end
    object RMasterOEBRNumber: TStringField
      FieldName = 'OEBRNumber'
      Size = 10
    end
    object RMasterBillMonth: TStringField
      FieldName = 'BillMonth'
      Size = 4
    end
    object RMasterDeleteRemarks: TStringField
      FieldName = 'DeleteRemarks'
      Size = 30
    end
    object RMasterPoleNumber: TStringField
      FieldName = 'PoleNumber'
      Size = 80
    end
    object RMasterFeederNumber: TStringField
      FieldName = 'FeederNumber'
    end
    object RMasterXFormerQty: TIntegerField
      FieldName = 'XFormerQty'
    end
    object RMasterXFormerKVA: TStringField
      FieldName = 'XFormerKVA'
    end
    object RMasterAge30: TFloatField
      FieldName = 'Age30'
    end
    object RMasterAge60: TFloatField
      FieldName = 'Age60'
    end
    object RMasterAge90: TFloatField
      FieldName = 'Age90'
    end
    object RMasterAge120: TFloatField
      FieldName = 'Age120'
    end
    object RMasterAgeOver120: TFloatField
      FieldName = 'AgeOver120'
    end
    object RMasterAgeTotal: TFloatField
      FieldName = 'AgeTotal'
    end
    object RMasterTotalPayments: TFloatField
      FieldName = 'TotalPayments'
    end
    object RMasterARBalance: TFloatField
      FieldName = 'ARBalance'
    end
    object RMasterLCCustMo: TFloatField
      FieldName = 'LCCustMo'
    end
    object RMasterPrevYearAdjPowerCost: TFloatField
      FieldName = 'PrevYearAdjPowerCost'
    end
    object RMasterSysLossUnderRecov: TFloatField
      FieldName = 'SysLossUnderRecov'
    end
    object RMasterVATDisc: TFloatField
      FieldName = 'VATDisc'
    end
    object RMasterVATDiscAmt: TFloatField
      FieldName = 'VATDiscAmt'
    end
    object RMasterVATDistDiscAmt: TFloatField
      FieldName = 'VATDistDiscAmt'
    end
    object RMasterVATGenCoDiscAmt: TFloatField
      FieldName = 'VATGenCoDiscAmt'
    end
    object RMasterVATTransCoDiscAmt: TFloatField
      FieldName = 'VATTransCoDiscAmt'
    end
    object RMasterVATSystemLossDiscAmt: TFloatField
      FieldName = 'VATSystemLossDiscAmt'
    end
    object RMasterVATDist: TFloatField
      FieldName = 'VATDist'
    end
    object RMasterVATGenCO: TFloatField
      FieldName = 'VATGenCO'
    end
    object RMasterVATTransCO: TFloatField
      FieldName = 'VATTransCO'
    end
    object RMasterVATSystemLossGenCO: TFloatField
      FieldName = 'VATSystemLossGenCO'
    end
    object RMasterVATSystemLossTransCO: TFloatField
      FieldName = 'VATSystemLossTransCO'
    end
    object RMasterVAT: TFloatField
      FieldName = 'VAT'
    end
    object RMasterDiffBillPerKwhr: TFloatField
      FieldName = 'DiffBillPerKwhr'
    end
    object RMasterDiffBillPerKW: TFloatField
      FieldName = 'DiffBillPerKW'
    end
    object RMasterDiffBillPerCust: TFloatField
      FieldName = 'DiffBillPerCust'
    end
    object RMasterMCC: TFloatField
      FieldName = 'MCC'
    end
    object RMasterPKVROebrNumber: TStringField
      FieldName = 'PKVROebrNumber'
    end
    object RMasterPKVRBillMonth: TStringField
      FieldName = 'PKVRBillMonth'
      Size = 4
    end
    object RMasterPKVRAmount: TFloatField
      FieldName = 'PKVRAmount'
    end
    object RMasterSCDisc: TFloatField
      FieldName = 'SCDisc'
    end
    object RMasterWRateCode: TStringField
      FieldName = 'WRateCode'
      Size = 1
    end
    object RMasterSCAmt4Disc: TFloatField
      FieldName = 'SCAmt4Disc'
    end
    object RMasterDWLEN1: TFloatField
      FieldName = 'DWLEN1'
    end
    object RMasterDWLEN2: TFloatField
      FieldName = 'DWLEN2'
    end
  end
  object RMList: TMyQuery
    Connection = BillingData.MyConnection1
    SQL.Strings = (
      'select r.*, m.address  from removemeter r '
      'inner join master m on (m.code = r.code)'
      'where ifnull(r.accomplished,0)=0')
    Left = 49
    Top = 256
    object RMListidremovemeter: TIntegerField
      FieldName = 'idremovemeter'
    end
    object RMListCode: TFloatField
      FieldName = 'Code'
    end
    object RMListDate: TDateField
      FieldName = 'Date'
    end
    object RMListArea: TStringField
      FieldName = 'Area'
      FixedChar = True
      Size = 3
    end
    object RMListBook: TStringField
      FieldName = 'Book'
      FixedChar = True
      Size = 3
    end
    object RMListSequence: TStringField
      FieldName = 'Sequence'
      Size = 4
    end
    object RMListAccountNumber: TStringField
      FieldName = 'AccountNumber'
      Size = 10
    end
    object RMListName: TStringField
      FieldName = 'Name'
      Size = 50
    end
    object RMListLastReading: TFloatField
      FieldName = 'LastReading'
    end
    object RMListMeterBrand: TStringField
      FieldName = 'MeterBrand'
      Size = 10
    end
    object RMListSerialNumber: TStringField
      FieldName = 'SerialNumber'
      Size = 15
    end
    object RMListDateRemoved: TDateTimeField
      FieldName = 'DateRemoved'
    end
    object RMListAccomplished: TStringField
      FieldName = 'Accomplished'
      Size = 1
    end
    object RMListPosted: TStringField
      FieldName = 'Posted'
      Size = 1
    end
    object RMListDiscoDate: TDateField
      FieldName = 'DiscoDate'
    end
    object RMListaddress: TStringField
      FieldName = 'address'
      Size = 50
    end
    object RMListLocation: TStringField
      FieldName = 'Location'
      Size = 50
    end
  end
  object UpdateMaster: TMyQuery
    Connection = BillingData.MyConnection1
    SQL.Strings = (
      
        'update master, removemeter set master.conncode = '#39'5'#39', master.met' +
        'erbrand = '#39#39', master.serial = '#39#39
      'where removemeter.code = master.code and'
      '      ifnull(removemeter.accomplished,0) = 1 and'
      '      ifnull(removemeter.posted,0) = 0')
    Left = 73
    Top = 256
  end
  object UpdateRemoveMeter: TMyQuery
    Connection = BillingData.MyConnection1
    SQL.Strings = (
      'update removemeter set posted = '#39'1'#39' '
      'where accomplished = 1 and'
      '      posted = 0')
    Left = 105
    Top = 256
  end
  object UpdateMeterInv: TMyQuery
    Connection = BillingData.MyConnection1
    SQL.Strings = (
      
        'update zanecometer.meterinv, zaneco.removemeter set zanecometer.' +
        'meterinv.status = '#39'5'#39' /* remove meter */'
      
        'where trim(zaneco.removemeter.serialnumber) = trim(zanecometer.m' +
        'eterinv.serialnumber) and'
      
        '      trim(zaneco.removemeter.meterbrand) = trim(zanecometer.met' +
        'erinv.brand) and'
      '      removemeter.accomplished = 1 and'
      '      removemeter.posted = 0')
    Left = 19
    Top = 259
  end
  object UpdateMeterTrans: TMyQuery
    Connection = BillingData.MyConnection1
    SQL.Strings = (
      'insert into zanecometer.metertransaction'
      '(datetrans,'
      ' transdesc, '
      ' accountnumber,'
      ' name,'
      ' reading,'
      ' idmeterinv)'
      'select '
      ' date,'
      ' '#39'Remove Meter'#39','
      ' accountnumber,'
      ' name,'
      ' lastreading,'
      ' zanecometer.meterinv.idmeterinv'
      'from zaneco.removemeter'
      
        'left join zanecometer.meterinv on (trim(zaneco.removemeter.seria' +
        'lnumber) = trim(zanecometer.meterinv.serialnumber) and'
      
        '                                   trim(zaneco.removemeter.meter' +
        'brand) = trim(zanecometer.meterinv.brand))'
      'where removemeter.accomplished = 1 and'
      '      removemeter.posted = 0')
    Left = 43
    Top = 291
  end
  object MyQuery1: TMyQuery
    Connection = BillingData.MyConnection1
    SQL.Strings = (
      'select * from removemeter where'
      '  ifnull(removemeter.accomplished,0) = 1 and'
      '  ifnull(removemeter.posted,0) = 0')
    Left = 74
    Top = 291
  end
end
