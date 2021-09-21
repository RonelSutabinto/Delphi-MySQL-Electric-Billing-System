object EncoderCollectionForm: TEncoderCollectionForm
  Left = 88
  Top = 52
  Width = 568
  Height = 407
  BorderIcons = [biSystemMenu, biMinimize]
  BorderWidth = 3
  Caption = 'Collection File - ENCODER'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -8
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  Menu = BcBarMainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 554
    Height = 42
    Align = alTop
    BevelOuter = bvNone
    BorderStyle = bsSingle
    TabOrder = 0
    object ORNumber: TDBText
      Left = 2
      Top = 3
      Width = 89
      Height = 16
      Alignment = taCenter
      Color = clBtnShadow
      DataField = 'ReceiptNumber'
      DataSource = BillingData.CollectionSource
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object AccountNumber: TDBText
      Left = 2
      Top = 21
      Width = 89
      Height = 15
      Alignment = taCenter
      Color = clBtnShadow
      DataField = 'AccountNumber'
      DataSource = BillingData.CollectionSource
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Name: TDBText
      Left = 93
      Top = 3
      Width = 343
      Height = 16
      Alignment = taCenter
      Color = clBtnShadow
      DataField = 'Name'
      DataSource = BillingData.CollectionSource
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Area: TDBText
      Left = 181
      Top = 21
      Width = 45
      Height = 15
      Alignment = taCenter
      Color = clBtnShadow
      DataField = 'Area'
      DataSource = BillingData.CollectionSource
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Book: TDBText
      Left = 229
      Top = 21
      Width = 46
      Height = 15
      Alignment = taCenter
      Color = clBtnShadow
      DataField = 'Book'
      DataSource = BillingData.CollectionSource
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Sequence: TDBText
      Left = 278
      Top = 21
      Width = 65
      Height = 15
      Alignment = taCenter
      Color = clBtnShadow
      DataField = 'Sequence'
      DataSource = BillingData.CollectionSource
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object DBNavigator1: TDBNavigator
      Left = 443
      Top = 9
      Width = 105
      Height = 22
      Cursor = crHandPoint
      DataSource = BillingData.CollectionSource
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 42
    Width = 554
    Height = 313
    Align = alClient
    BevelOuter = bvNone
    BorderStyle = bsSingle
    TabOrder = 1
    object TGradient
      Left = 368
      Top = 16
    end
    object DBGrid1: TDBGrid
      Left = 0
      Top = 0
      Width = 550
      Height = 309
      Align = alClient
      DataSource = BillingData.CollectionSource
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnKeyPress = DBGrid1KeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'ReceiptNumber'
          Title.Alignment = taCenter
          Title.Caption = 'Receipt #'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBtnText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 77
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DatePaid'
          Title.Alignment = taCenter
          Title.Caption = 'Date Paid'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBtnText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DateRemitted'
          Title.Alignment = taCenter
          Title.Caption = 'Date Remitted'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBtnText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CollectorCode'
          Title.Caption = 'Collector Code'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBtnText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AccountNumber'
          Title.Alignment = taCenter
          Title.Caption = 'Account #'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBtnText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Total'
          Title.Alignment = taRightJustify
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBtnText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Visible = True
        end
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'Sundries'
          Title.Alignment = taCenter
          Title.Caption = 'Cashier'#39's OR'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBtnText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 82
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Area'
          Title.Alignment = taCenter
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBtnText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 35
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Book'
          Title.Alignment = taCenter
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBtnText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 37
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Sequence'
          Title.Alignment = taCenter
          Title.Caption = 'Seq.'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBtnText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 41
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Name'
          Title.Alignment = taCenter
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBtnText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 211
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BillMonth'
          Title.Caption = 'Month'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBtnText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Membership'
          Title.Alignment = taRightJustify
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBtnText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Penalty'
          Title.Alignment = taRightJustify
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBtnText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Security'
          Title.Alignment = taRightJustify
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBtnText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MeterDeposit'
          Title.Alignment = taRightJustify
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBtnText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TransformerRental'
          Title.Alignment = taRightJustify
          Title.Caption = 'X-Former'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBtnText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SundriesAmount'
          Title.Alignment = taRightJustify
          Title.Caption = 'Sundries Amt'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBtnText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EncoderCode'
          Title.Alignment = taCenter
          Title.Caption = 'Encoder Code'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBtnText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Posted'
          Title.Alignment = taCenter
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBtnText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Visible = True
        end>
    end
    object Panel4: TPanel
      Left = 119
      Top = 41
      Width = 313
      Height = 188
      BevelInner = bvLowered
      BorderWidth = 3
      TabOrder = 1
      Visible = False
      object Gradient3: TGradient
        Left = 5
        Top = 23
        Width = 303
        Height = 160
        Align = alClient
        ColorBegin = clBtnFace
        ColorEnd = clWhite
        Reverse = True
        Style = gsDiamond
      end
      object Label6: TLabel
        Left = 5
        Top = 5
        Width = 303
        Height = 18
        Align = alTop
        Alignment = taCenter
        Caption = 'Search Collection'
        Color = clBtnShadow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Edit2: TEdit
        Left = 4
        Top = 22
        Width = 303
        Height = 24
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnChange = Edit2Change
      end
      object PDJSillyLabel3: TPDJSillyLabel
        Left = 98
        Top = 158
        Width = 105
        Height = 21
        AlwaysSpectrum = True
        Version = 
          'Version 2.00, Copyright '#169' 2000-2001 by Peric, E-mail: pericddn@p' +
          'tt.yu'
        ColorLine = clBtnShadow
        ColorSpectrum = clBtnShadow
        Caption = 'Close'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBtnText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Color = clWhite
        ParentColor = False
        TabOrder = 1
        OnClick = PDJSillyLabel3Click
        ParentFont = False
      end
      object Option: TPDJSillyRadioGroup
        Left = 72
        Top = 51
        Width = 164
        Height = 105
        ItemIndex = 0
        Items.Strings = (
          'Account Number'
          'Name'
          'OEBR')
        Version = 
          'Version 1.00, Copyright '#169' 2000-2001 by Peric, E-mail: pericddn@p' +
          'tt.yu'
        CaptionAlign = caLeft
        StyleFrame = sgStandardFrame
        CaptionColor = clBtnShadow
        FrameRadius = 10
        Caption = 'Search Options'
        Color = clBtnShadow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 2
        OnClick = OptionClick
        ColorChecked = clWhite
        ColorUnChecked = clBtnShadow
        ColorLineFocus = clBtnShadow
        ColorLine = clBtnShadow
      end
    end
    object Panel3: TPanel
      Left = 119
      Top = 71
      Width = 313
      Height = 166
      BevelInner = bvLowered
      BorderWidth = 3
      TabOrder = 2
      Visible = False
      object Gradient2: TGradient
        Left = 5
        Top = 23
        Width = 303
        Height = 138
        Align = alClient
        ColorBegin = clBtnFace
        ColorEnd = clWhite
        Reverse = True
        Style = gsDiamond
      end
      object Label1: TLabel
        Left = 5
        Top = 5
        Width = 303
        Height = 18
        Align = alTop
        Alignment = taCenter
        Caption = 'Set Collector and Date'
        Color = clBtnShadow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label2: TLabel
        Left = 30
        Top = 26
        Width = 121
        Height = 24
        Alignment = taCenter
        AutoSize = False
        Caption = 'Date Paid'
        Color = clBtnShadow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object Label3: TLabel
        Left = 158
        Top = 26
        Width = 121
        Height = 24
        Alignment = taCenter
        AutoSize = False
        Caption = 'Date Remitted'
        Color = clBtnShadow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object Label4: TLabel
        Left = 30
        Top = 78
        Width = 121
        Height = 24
        Alignment = taCenter
        AutoSize = False
        Caption = 'Collector / Teller'
        Color = clBtnShadow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object Label5: TLabel
        Left = 30
        Top = 107
        Width = 121
        Height = 24
        Alignment = taCenter
        AutoSize = False
        Caption = 'Batch'
        Color = clBtnShadow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object Edit1: TEdit
        Left = 158
        Top = 78
        Width = 121
        Height = 24
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object PDJSillyLabel1: TPDJSillyLabel
        Left = 42
        Top = 136
        Width = 105
        Height = 21
        Cursor = 1
        AlwaysSpectrum = True
        Version = 
          'Version 2.00, Copyright '#169' 2000-2001 by Peric, E-mail: pericddn@p' +
          'tt.yu'
        ColorLine = clBtnShadow
        ColorSpectrum = clBtnShadow
        Caption = 'Set '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBtnText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Color = clWhite
        ParentColor = False
        TabOrder = 0
        OnClick = PDJSillyLabel1Click
        ParentFont = False
      end
      object PDJSillyLabel2: TPDJSillyLabel
        Left = 162
        Top = 136
        Width = 105
        Height = 21
        Cursor = 1
        AlwaysSpectrum = True
        Version = 
          'Version 2.00, Copyright '#169' 2000-2001 by Peric, E-mail: pericddn@p' +
          'tt.yu'
        ColorLine = clBtnShadow
        ColorSpectrum = clBtnShadow
        Caption = 'Cancel Set'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBtnText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Color = clWhite
        ParentColor = False
        TabOrder = 1
        OnClick = PDJSillyLabel2Click
        ParentFont = False
      end
      object Edit3: TEdit
        Left = 158
        Top = 107
        Width = 121
        Height = 24
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object DatePaid: TDateTimePicker
        Left = 31
        Top = 50
        Width = 121
        Height = 24
        CalAlignment = dtaLeft
        Date = 38046.3900994097
        Time = 38046.3900994097
        DateFormat = dfShort
        DateMode = dmComboBox
        Kind = dtkDate
        ParseInput = False
        TabOrder = 4
      end
      object DateRemitted: TDateTimePicker
        Left = 159
        Top = 50
        Width = 121
        Height = 24
        CalAlignment = dtaLeft
        Date = 38046.3900994097
        Time = 38046.3900994097
        DateFormat = dfShort
        DateMode = dmComboBox
        Kind = dtkDate
        ParseInput = False
        TabOrder = 5
      end
    end
    object Panel5: TPanel
      Left = 119
      Top = 44
      Width = 313
      Height = 221
      BevelInner = bvLowered
      BorderWidth = 3
      TabOrder = 3
      Visible = False
      object Label7: TLabel
        Left = 5
        Top = 5
        Width = 303
        Height = 18
        Align = alTop
        Alignment = taCenter
        Caption = 'Put Official Receipt'
        Color = clBtnShadow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label8: TLabel
        Left = 32
        Top = 32
        Width = 121
        Height = 24
        Alignment = taCenter
        AutoSize = False
        Caption = 'Date Paid'
        Color = clBtnShadow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object Label9: TLabel
        Left = 160
        Top = 32
        Width = 121
        Height = 24
        Alignment = taCenter
        AutoSize = False
        Caption = 'Date Remitted'
        Color = clBtnShadow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object Label10: TLabel
        Left = 30
        Top = 88
        Width = 121
        Height = 24
        Alignment = taCenter
        AutoSize = False
        Caption = 'Collector / Teller'
        Color = clBtnShadow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object Label11: TLabel
        Left = 30
        Top = 117
        Width = 121
        Height = 24
        Alignment = taCenter
        AutoSize = False
        Caption = 'Batch'
        Color = clBtnShadow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object Label12: TLabel
        Left = 30
        Top = 146
        Width = 121
        Height = 24
        Alignment = taCenter
        AutoSize = False
        Caption = 'Cashier'#39's OR'
        Color = clBtnShadow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object Edit4: TEdit
        Left = 158
        Top = 88
        Width = 121
        Height = 24
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
        Left = 42
        Top = 185
        Width = 105
        Height = 21
        Cursor = 1
        AlwaysSpectrum = True
        Version = 
          'Version 2.00, Copyright '#169' 2000-2001 by Peric, E-mail: pericddn@p' +
          'tt.yu'
        ColorLine = clBtnShadow
        ColorSpectrum = clBtnShadow
        Caption = 'Put'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBtnText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Color = clWhite
        ParentColor = False
        TabOrder = 4
        OnClick = PDJSillyLabel4Click
        ParentFont = False
      end
      object PDJSillyLabel5: TPDJSillyLabel
        Left = 162
        Top = 185
        Width = 105
        Height = 21
        Cursor = 1
        AlwaysSpectrum = True
        Version = 
          'Version 2.00, Copyright '#169' 2000-2001 by Peric, E-mail: pericddn@p' +
          'tt.yu'
        ColorLine = clBtnShadow
        ColorSpectrum = clBtnShadow
        Caption = 'Close'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBtnText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Color = clWhite
        ParentColor = False
        TabOrder = 0
        OnClick = PDJSillyLabel5Click
        ParentFont = False
      end
      object Edit5: TEdit
        Left = 158
        Top = 117
        Width = 121
        Height = 24
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object CashierOR: TEdit
        Left = 158
        Top = 146
        Width = 121
        Height = 24
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object PutDatePaid: TDateTimePicker
        Left = 32
        Top = 57
        Width = 121
        Height = 24
        CalAlignment = dtaLeft
        Date = 0.39009940969845
        Time = 0.39009940969845
        DateFormat = dfShort
        DateMode = dmComboBox
        Kind = dtkDate
        ParseInput = False
        TabOrder = 5
      end
      object PutDateRemitted: TDateTimePicker
        Left = 160
        Top = 57
        Width = 121
        Height = 24
        CalAlignment = dtaLeft
        Date = 0.39009940969845
        Time = 0.39009940969845
        DateFormat = dfShort
        DateMode = dmComboBox
        Kind = dtkDate
        ParseInput = False
        TabOrder = 6
      end
    end
  end
  object BcBarMainMenu1: TBcBarMainMenu
    BiDiMode = bdLeftToRight
    OwnerDraw = True
    ParentBiDiMode = False
    Bar.BarCaption.Font.Charset = DEFAULT_CHARSET
    Bar.BarCaption.Font.Color = clWhite
    Bar.BarCaption.Font.Height = -13
    Bar.BarCaption.Font.Name = 'Tahoma'
    Bar.BarCaption.Font.Style = [fsBold, fsItalic]
    Bar.BarCaption.Caption = 'Collection File'
    Separators.Font.Charset = DEFAULT_CHARSET
    Separators.Font.Color = clWindowText
    Separators.Font.Height = -11
    Separators.Font.Name = 'MS Sans Serif'
    Separators.Font.Style = []
    MenuFont.Charset = DEFAULT_CHARSET
    MenuFont.Color = clWindowText
    MenuFont.Height = -11
    MenuFont.Name = 'MS Sans Serif'
    MenuFont.Style = []
    Top = 8
    object Transactions1: TMenuItem
      Caption = 'Collection Utilities'
      object Search1: TMenuItem
        Caption = 'Search'
        ShortCut = 112
        OnClick = Search1Click
      end
      object SetCollectorDatePaid1: TMenuItem
        Caption = 'Set Collector / Date Paid'
        ShortCut = 113
        OnClick = SetCollectorDatePaid1Click
      end
      object PutCashiersOR1: TMenuItem
        Caption = 'Put Cashier'#39's O.R.'
        ShortCut = 114
        OnClick = PutCashiersOR1Click
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object GroupCollectionInterface1: TMenuItem
        Caption = 'Group Collection Interface'
        ShortCut = 115
        OnClick = GroupCollectionInterface1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Exit1: TMenuItem
        Caption = 'Exit'
        ShortCut = 27
        OnClick = Exit1Click
      end
    end
  end
end
