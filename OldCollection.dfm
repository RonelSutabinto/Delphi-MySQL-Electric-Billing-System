object OldCollectionForm: TOldCollectionForm
  Left = 96
  Top = 24
  Width = 568
  Height = 368
  BorderIcons = [biSystemMenu, biMinimize]
  BorderWidth = 3
  Caption = 'Collection File'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -8
  Font.Name = 'MS Sans Serif'
  Font.Style = []
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
    object Gradient1: TGradient
      Left = 0
      Top = 0
      Width = 550
      Height = 38
      Align = alClient
      ColorBegin = clBtnShadow
      ColorEnd = clWhite
      Reverse = True
      Style = gsDiamond
    end
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
    object Area: TDBText
      Left = 181
      Top = 21
      Width = 45
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
    object Book: TDBText
      Left = 229
      Top = 21
      Width = 46
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
    object Sequence: TDBText
      Left = 278
      Top = 21
      Width = 65
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
    Height = 274
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
      Height = 270
      Align = alClient
      DataSource = BillingData.PostCollectionSource
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
          FieldName = 'Name'
          Title.Alignment = taCenter
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBtnText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 215
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
          FieldName = 'TotalPower'
          Title.Alignment = taRightJustify
          Title.Caption = 'T-Power'
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
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'Sundries'
          Title.Alignment = taCenter
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBtnText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 176
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
      end
      object Exit1: TMenuItem
        Caption = 'Exit'
        ShortCut = 27
        OnClick = Exit1Click
      end
    end
  end
end
