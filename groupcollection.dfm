object GroupCollectionForm: TGroupCollectionForm
  Left = 95
  Top = 154
  Width = 700
  Height = 478
  Caption = 'GroupCollectionForm'
  Color = clBtnFace
  Constraints.MaxHeight = 478
  Constraints.MaxWidth = 700
  Constraints.MinHeight = 478
  Constraints.MinWidth = 700
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Gauge1: TGauge
    Left = 51
    Top = 367
    Width = 81
    Height = 76
    Kind = gkPie
    Progress = 0
  end
  object Label1: TLabel
    Left = 7
    Top = 186
    Width = 93
    Height = 25
    Alignment = taCenter
    AutoSize = False
    Caption = 'Bill Month'
    Color = clBtnShadow
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Layout = tlCenter
  end
  object BitBtn1: TBitBtn
    Left = 6
    Top = 42
    Width = 173
    Height = 25
    Caption = 'Create Group'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = BitBtn1Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333333333333FF3FF3333333333CC30003333333333773777333333333C33
      3000333FF33337F33777339933333C3333333377F33337F3333F339933333C33
      33003377333337F33377333333333C333300333F333337F33377339333333C33
      3333337FF3333733333F33993333C33333003377FF33733333773339933C3333
      330033377FF73F33337733339933C33333333FF377F373F3333F993399333C33
      330077F377F337F33377993399333C33330077FF773337F33377399993333C33
      33333777733337F333FF333333333C33300033333333373FF7773333333333CC
      3000333333333377377733333333333333333333333333333333}
    NumGlyphs = 2
  end
  object BitBtn2: TBitBtn
    Left = 6
    Top = 78
    Width = 173
    Height = 25
    Caption = 'Print Collection Report'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = BitBtn2Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
      00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
      8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
      8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
      8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
      03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
      03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
      33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
      33333337FFFF7733333333300000033333333337777773333333}
    NumGlyphs = 2
  end
  object BitBtn3: TBitBtn
    Left = 6
    Top = 221
    Width = 173
    Height = 25
    Caption = 'Set Filter'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = BitBtn3Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003FF0000000F0
      000033F77777773777773FFF0CCC0FF09990333F73F37337F33733FFF0C0FFF0
      99903333F7373337F337333FFF0FFFF0999033333F73FFF7FFF73333FFF000F0
      0000333333F77737777733333F07B70FFFFF3333337F337F33333333330BBB0F
      FFFF3333337F337F333333333307B70FFFFF33333373FF733F333333333000FF
      0FFF3333333777337FF3333333333FF000FF33FFFFF3333777FF300000333300
      000F377777F33377777F30EEE0333000000037F337F33777777730EEE0333330
      00FF37F337F3333777F330EEE033333000FF37FFF7F3333777F3300000333330
      00FF3777773333F77733333333333000033F3333333337777333}
    NumGlyphs = 2
  end
  object BitBtn4: TBitBtn
    Left = 6
    Top = 293
    Width = 173
    Height = 25
    Caption = 'Remove Filter'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = BitBtn4Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      55555FFFFFFF5F55FFF5777777757559995777777775755777F7555555555550
      305555555555FF57F7F555555550055BB0555555555775F777F55555550FB000
      005555555575577777F5555550FB0BF0F05555555755755757F555550FBFBF0F
      B05555557F55557557F555550BFBF0FB005555557F55575577F555500FBFBFB0
      B05555577F555557F7F5550E0BFBFB00B055557575F55577F7F550EEE0BFB0B0
      B05557FF575F5757F7F5000EEE0BFBF0B055777FF575FFF7F7F50000EEE00000
      B0557777FF577777F7F500000E055550805577777F7555575755500000555555
      05555777775555557F5555000555555505555577755555557555}
    NumGlyphs = 2
  end
  object BitBtn5: TBitBtn
    Left = 6
    Top = 329
    Width = 173
    Height = 25
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    Kind = bkClose
  end
  object DBNavigator1: TDBNavigator
    Left = 16
    Top = 7
    Width = 156
    Height = 25
    DataSource = BillingData.GroupCollSource
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 5
  end
  object Panel1: TPanel
    Left = 179
    Top = 0
    Width = 510
    Height = 450
    TabOrder = 6
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 508
      Height = 148
      Align = alClient
      DataSource = BillingData.GroupCollSource
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DatePaid'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Date Paid'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 68
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CollectorCode'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Collector'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 44
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'EncoderCode'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Batch'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 32
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Posted'
          Title.Caption = 'P'
          Width = 13
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Sundries'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'OR #'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 65
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Total'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 59
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'AccountNumber'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Stubs'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Visible = True
        end>
    end
    object DBGrid2: TDBGrid
      Left = 1
      Top = 149
      Width = 508
      Height = 300
      Align = alBottom
      DataSource = BillingData.CollectionSource
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ReceiptNumber'
          Title.Alignment = taCenter
          Title.Caption = 'OEBR'
          Width = 56
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AccountNumber'
          Title.Alignment = taCenter
          Title.Caption = 'Account #'
          Width = 77
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Name'
          Title.Alignment = taCenter
          Width = 109
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BillMonth'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TotalBill'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Membership'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Penalty'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Security'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MeterDeposit'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TransformerRental'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Sundries'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SundriesAmount'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UCNPCSD'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UCNPCSCC'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UCDUSCC'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UCME'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UCETR'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UCEC'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UCCSR'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LoanCondo'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Total'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CollectorCode'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DatePaid'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DateRemitted'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EncoderCode'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Posted'
          Title.Alignment = taCenter
          Visible = True
        end>
    end
  end
  object BillMonth: TEdit
    Left = 102
    Top = 186
    Width = 77
    Height = 24
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
  end
  object BitBtn6: TBitBtn
    Left = 6
    Top = 257
    Width = 173
    Height = 25
    Caption = 'Summary Menu'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    OnClick = BitBtn6Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
      00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
      8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
      8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
      8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
      03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
      03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
      33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
      33333337FFFF7733333333300000033333333337777773333333}
    NumGlyphs = 2
  end
  object Panel9: TPanel
    Left = 189
    Top = 66
    Width = 474
    Height = 319
    BevelInner = bvLowered
    BorderWidth = 3
    Color = clNavy
    TabOrder = 9
    Visible = False
    object Label17: TLabel
      Left = 5
      Top = 5
      Width = 464
      Height = 36
      Align = alTop
      Alignment = taCenter
      AutoSize = False
      Caption = 'Print Summary Menu'
      Color = clNavy
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
    end
    object Label68: TLabel
      Left = 84
      Top = 61
      Width = 99
      Height = 19
      Alignment = taCenter
      Caption = 'Prepared by'
      Color = clNavy
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
    end
    object Label65: TLabel
      Left = 90
      Top = 97
      Width = 93
      Height = 19
      Alignment = taCenter
      Caption = 'Checked by'
      Color = clNavy
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
    end
    object Label67: TLabel
      Left = 110
      Top = 133
      Width = 73
      Height = 19
      Alignment = taCenter
      Caption = 'Noted by'
      Color = clNavy
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
    end
    object Bevel1: TBevel
      Left = 43
      Top = 48
      Width = 385
      Height = 124
    end
    object PDJSillyLabel8: TPDJSillyLabel
      Left = 44
      Top = 184
      Width = 385
      Height = 32
      Cursor = 1
      AlwaysSpectrum = True
      Version = 
        'Version 2.00, Copyright '#169' 2000-2001 by Peric, E-mail: pericddn@p' +
        'tt.yu'
      ColorLineFocus = clBlue
      Caption = 'Summary of Collection with Aging'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'Arial Narrow'
      Font.Style = []
      Color = clWhite
      ParentColor = False
      TabOrder = 0
      OnClick = PDJSillyLabel8Click
      ParentFont = False
    end
    object PDJSillyLabel1: TPDJSillyLabel
      Left = 44
      Top = 221
      Width = 385
      Height = 32
      Cursor = 1
      AlwaysSpectrum = True
      Version = 
        'Version 2.00, Copyright '#169' 2000-2001 by Peric, E-mail: pericddn@p' +
        'tt.yu'
      ColorLineFocus = clBlue
      Caption = 'Summary of Collection by Consumer Type'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'Arial Narrow'
      Font.Style = []
      Color = clWhite
      ParentColor = False
      TabOrder = 1
      OnClick = PDJSillyLabel1Click
      ParentFont = False
    end
    object PDJSillyLabel2: TPDJSillyLabel
      Left = 44
      Top = 258
      Width = 385
      Height = 32
      Cursor = 1
      AlwaysSpectrum = True
      Version = 
        'Version 2.00, Copyright '#169' 2000-2001 by Peric, E-mail: pericddn@p' +
        'tt.yu'
      ColorLineFocus = clBlue
      Caption = 'Close'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'Arial Narrow'
      Font.Style = []
      Color = clWhite
      ParentColor = False
      TabOrder = 2
      OnClick = PDJSillyLabel2Click
      ParentFont = False
    end
    object NotedBy: TEdit
      Left = 195
      Top = 133
      Width = 196
      Height = 27
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Text = ' '
    end
    object CheckedBy: TEdit
      Left = 195
      Top = 97
      Width = 196
      Height = 27
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      Text = ' '
    end
    object PreparedBy: TEdit
      Left = 195
      Top = 61
      Width = 196
      Height = 27
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      Text = ' '
    end
    object FromDate: TDateTimePicker
      Left = 32
      Top = 114
      Width = 126
      Height = 26
      Date = 0.519354710602784200
      Time = 0.519354710602784200
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object ToDate: TDateTimePicker
      Left = 32
      Top = 150
      Width = 126
      Height = 26
      Date = 0.519354710602784200
      Time = 0.519354710602784200
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
  end
  object Panel2: TPanel
    Left = 764
    Top = 38
    Width = 364
    Height = 232
    BevelInner = bvLowered
    BorderWidth = 5
    TabOrder = 10
    Visible = False
    object Label4: TLabel
      Left = 7
      Top = 7
      Width = 350
      Height = 28
      Align = alTop
      Alignment = taCenter
      AutoSize = False
      Caption = 'Print Collection Report'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
    object Label5: TLabel
      Left = 80
      Top = 55
      Width = 57
      Height = 13
      Alignment = taCenter
      Caption = 'Prepared by'
      Layout = tlCenter
    end
    object Label8: TLabel
      Left = 92
      Top = 87
      Width = 45
      Height = 13
      Alignment = taCenter
      Caption = 'Check by'
      Layout = tlCenter
    end
    object Label30: TLabel
      Left = 111
      Top = 119
      Width = 26
      Height = 13
      Alignment = taCenter
      Caption = 'OR #'
      Layout = tlCenter
    end
    object Label33: TLabel
      Left = 56
      Top = 151
      Width = 81
      Height = 13
      Alignment = taCenter
      Caption = 'Amount Remitted'
      Layout = tlCenter
    end
    object Bevel2: TBevel
      Left = 29
      Top = 37
      Width = 306
      Height = 145
    end
    object Edit1: TEdit
      Left = 143
      Top = 48
      Width = 164
      Height = 28
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 143
      Top = 80
      Width = 164
      Height = 28
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object PDJSillyLabel4: TPDJSillyLabel
      Left = 95
      Top = 191
      Width = 81
      Height = 24
      Cursor = 1
      AlwaysSpectrum = True
      Version = 
        'Version 2.00, Copyright '#169' 2000-2001 by Peric, E-mail: pericddn@p' +
        'tt.yu'
      ColorLine = clBtnShadow
      ColorSpectrum = clBtnShadow
      Caption = 'Print'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Color = clWhite
      ParentColor = False
      TabOrder = 3
      OnClick = PDJSillyLabel4Click
      ParentFont = False
    end
    object PDJSillyLabel5: TPDJSillyLabel
      Left = 183
      Top = 190
      Width = 81
      Height = 25
      Cursor = 1
      AlwaysSpectrum = True
      Version = 
        'Version 2.00, Copyright '#169' 2000-2001 by Peric, E-mail: pericddn@p' +
        'tt.yu'
      ColorLine = clBtnShadow
      ColorSpectrum = clBtnShadow
      Caption = 'Cancel'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Color = clWhite
      ParentColor = False
      TabOrder = 4
      OnClick = PDJSillyLabel5Click
      ParentFont = False
    end
    object Edit5: TEdit
      Left = 143
      Top = 112
      Width = 164
      Height = 28
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object Edit3: TEdit
      Left = 143
      Top = 144
      Width = 164
      Height = 28
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
  end
end
