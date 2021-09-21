object AdjustmentForm: TAdjustmentForm
  Left = 80
  Top = 20
  Width = 576
  Height = 411
  BorderIcons = [biSystemMenu, biMinimize]
  BorderWidth = 3
  Caption = 'Adjustment File'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -8
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 562
    Height = 167
    Align = alTop
    BevelOuter = bvNone
    BorderStyle = bsSingle
    TabOrder = 0
    object AccountNumber: TDBText
      Left = 112
      Top = 18
      Width = 91
      Height = 13
      Alignment = taCenter
      AutoSize = True
      DataField = 'AccountNumber'
      DataSource = BillingData.AdjSource
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Name: TDBText
      Left = 112
      Top = 40
      Width = 33
      Height = 13
      Alignment = taCenter
      AutoSize = True
      DataField = 'Name'
      DataSource = BillingData.AdjSource
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BMonth: TDBText
      Left = 112
      Top = 62
      Width = 44
      Height = 13
      Alignment = taCenter
      AutoSize = True
      DataField = 'BillMonth'
      DataSource = BillingData.AdjSource
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 15
      Top = 19
      Width = 80
      Height = 13
      Caption = 'Account Number'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 67
      Top = 41
      Width = 28
      Height = 13
      Caption = 'Name'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 49
      Top = 63
      Width = 46
      Height = 13
      Caption = 'Bill Month'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Bevel1: TBevel
      Left = 8
      Top = 11
      Width = 94
      Height = 142
      Style = bsRaised
    end
    object Bevel2: TBevel
      Left = 102
      Top = 11
      Width = 243
      Height = 142
      Style = bsRaised
    end
    object Label1: TLabel
      Left = 55
      Top = 85
      Width = 40
      Height = 13
      Caption = 'As Billed'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 19
      Top = 107
      Width = 76
      Height = 13
      Caption = 'Should be Billed'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object AsBilled: TDBText
      Left = 112
      Top = 85
      Width = 46
      Height = 13
      Alignment = taCenter
      AutoSize = True
      DataField = 'ABTotalBill'
      DataSource = BillingData.AdjSource
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ShouldBeBilled: TDBText
      Left = 112
      Top = 107
      Width = 86
      Height = 13
      Alignment = taCenter
      AutoSize = True
      DataField = 'TotalBill'
      DataSource = BillingData.AdjSource
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 28
      Top = 131
      Width = 67
      Height = 13
      Caption = 'Date Adjusted'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object AdjustmentDate: TDBText
      Left = 112
      Top = 130
      Width = 90
      Height = 13
      Alignment = taCenter
      AutoSize = True
      DataField = 'AdjDate'
      DataSource = BillingData.AdjSource
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBNavigator1: TDBNavigator
      Left = 371
      Top = 129
      Width = 165
      Height = 22
      Cursor = crHandPoint
      DataSource = BillingData.AdjSource
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 167
    Width = 562
    Height = 211
    Align = alClient
    BevelOuter = bvNone
    BorderStyle = bsSingle
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 0
      Top = 0
      Width = 558
      Height = 207
      Align = alClient
      DataSource = BillingData.AdjSource
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
          Alignment = taCenter
          Expanded = False
          FieldName = 'Area'
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
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Book'
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
          Width = 30
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Sequence'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Seq.'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 39
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
          Title.Caption = 'Account #'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Name'
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
          Width = 286
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'BillMonth'
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
          Width = 54
          Visible = True
        end>
    end
  end
end
