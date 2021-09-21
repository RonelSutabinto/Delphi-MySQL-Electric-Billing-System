object AccountGroupsForm: TAccountGroupsForm
  Left = 54
  Top = 83
  Width = 949
  Height = 630
  Caption = 'Satement of Account Groups'
  Color = clBtnFace
  Constraints.MinHeight = 625
  Constraints.MinWidth = 932
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = AcctGrpMainMenu
  OldCreateOrder = False
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  DesignSize = (
    941
    584)
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox2: TGroupBox
    Left = 12
    Top = 364
    Width = 917
    Height = 193
    Anchors = [akLeft, akRight, akBottom]
    Caption = 'Unpaid &Bills'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    DesignSize = (
      917
      193)
    object Label1: TLabel
      Left = 12
      Top = 26
      Width = 118
      Height = 16
      Caption = 'Search BillNumber :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object OEBRFinder: TVolgaFindEdit
      Left = 136
      Top = 16
      Width = 157
      Height = 28
      DataField = 'Document'
      DataSource = dsUnPB
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnKeyPress = OEBRFinderKeyPress
    end
    object UnPBGrid: TDBGrid
      Left = 12
      Top = 52
      Width = 893
      Height = 129
      Anchors = [akLeft, akTop, akRight, akBottom]
      DataSource = dsUnPB
      Font.Charset = OEM_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Terminal'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnKeyPress = UnPBGridKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'Document'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Area'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Book'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AccountNumber'
          Width = 93
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Name'
          Width = 282
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BillMonth'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RateCode'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'KilowattHour'
          Title.Caption = 'KWH'
          Width = 74
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Amount'
          Visible = True
        end>
    end
  end
  object GroupBox1: TGroupBox
    Left = 12
    Top = 11
    Width = 917
    Height = 334
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = 'Accounts &Grouping'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    DesignSize = (
      917
      334)
    object Label2: TLabel
      Left = 12
      Top = 72
      Width = 50
      Height = 16
      Caption = 'Groups :'
    end
    object Label3: TLabel
      Left = 384
      Top = 24
      Width = 31
      Height = 16
      Caption = 'Bills :'
    end
    object AcctDetailGrid: TDBGrid
      Left = 384
      Top = 44
      Width = 521
      Height = 246
      Anchors = [akLeft, akTop, akRight, akBottom]
      DataSource = dsAcctGrpDetail
      Font.Charset = OEM_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Terminal'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      ParentFont = False
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'BillNumber'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BillDate'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BillMonth'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Name'
          Width = 135
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Charge1'
          Title.Caption = 'Charges'
          Width = 81
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AversionFee'
          Visible = True
        end>
    end
    object GroupGrid: TDBGrid
      Left = 12
      Top = 100
      Width = 357
      Height = 222
      Anchors = [akLeft, akTop, akBottom]
      DataSource = dsAcctGrp
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      PopupMenu = GroupPopUpMenu
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnKeyPress = GroupGridKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'Name'
          Width = 205
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BillMonth'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Address'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TotalAversionFee'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TotalCharges'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TotalBills'
          Visible = True
        end>
    end
    object GroupFinder: TVolgaFindEdit
      Left = 12
      Top = 36
      Width = 357
      Height = 28
      Hint = 'Search Groups'
      DataField = 'Name'
      DataSource = dsAcctGrp
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      PopupMenu = GroupFinderPopupMenu
      TabOrder = 0
    end
    object Recompute: TButton
      Left = 384
      Top = 297
      Width = 157
      Height = 25
      Anchors = [akLeft, akBottom]
      Caption = '&Recompute  Totals'
      TabOrder = 3
      OnClick = RecomputeClick
    end
  end
  object AccountGroups: TTable
    DatabaseName = 'Coop'
    TableName = 'AccountGroups.DB'
    Left = 444
    Top = 108
    object AccountGroupsObjectID: TAutoIncField
      FieldName = 'ObjectID'
      ReadOnly = True
    end
    object AccountGroupsName: TStringField
      FieldName = 'Name'
      Size = 40
    end
    object AccountGroupsAddress: TStringField
      FieldName = 'Address'
      Size = 50
    end
    object AccountGroupsBillMonth: TStringField
      FieldName = 'BillMonth'
      Required = True
      Size = 4
    end
    object AccountGroupsTotalAversionFee: TCurrencyField
      FieldName = 'TotalAversionFee'
    end
    object AccountGroupsTotalCharges: TCurrencyField
      FieldName = 'TotalCharges'
    end
    object AccountGroupsTotalBills: TFloatField
      FieldName = 'TotalBills'
    end
  end
  object AcctGrpDetail: TTable
    AfterPost = AcctGrpDetailAfterPost
    AfterDelete = AcctGrpDetailAfterPost
    DatabaseName = 'Coop'
    IndexName = 'Unique'
    MasterFields = 'ObjectID'
    MasterSource = dsAcctGrp
    TableName = 'AccountGroupsDetail.DB'
    Left = 444
    Top = 164
    object AcctGrpDetailAccountGroupID: TIntegerField
      FieldName = 'AccountGroupID'
      Required = True
    end
    object AcctGrpDetailBillNumber: TStringField
      FieldName = 'BillNumber'
      Required = True
      Size = 15
    end
    object AcctGrpDetailBillDate: TDateField
      FieldName = 'BillDate'
    end
    object AcctGrpDetailBillMonth: TStringField
      FieldName = 'BillMonth'
      Size = 4
    end
    object AcctGrpDetailName: TStringField
      FieldName = 'Name'
      Size = 40
    end
    object AcctGrpDetailRateCode: TStringField
      FieldName = 'RateCode'
      Required = True
      Size = 2
    end
    object AcctGrpDetailCharge1: TCurrencyField
      FieldName = 'Charge1'
    end
    object AcctGrpDetailAversionFee: TCurrencyField
      FieldName = 'AversionFee'
    end
  end
  object dsAcctGrp: TDataSource
    DataSet = AccountGroups
    Left = 552
    Top = 108
  end
  object dsAcctGrpDetail: TDataSource
    DataSet = AcctGrpDetail
    Left = 552
    Top = 164
  end
  object AcctGrpMainMenu: TBcBarMainMenu
    OwnerDraw = True
    Bar.BarCaption.Font.Charset = DEFAULT_CHARSET
    Bar.BarCaption.Font.Color = clWhite
    Bar.BarCaption.Font.Height = -19
    Bar.BarCaption.Font.Name = 'Tahoma'
    Bar.BarCaption.Font.Style = [fsBold, fsItalic]
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
    Left = 12
    object File1: TMenuItem
      Caption = '&File'
      object NewGroup1: TMenuItem
        Caption = '&Print...'
        ShortCut = 114
        OnClick = NewGroup1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Exit1: TMenuItem
        Caption = 'E&xit'
        ShortCut = 16472
        OnClick = Exit1Click
      end
    end
  end
  object UnPB: TTable
    DatabaseName = 'Coop'
    TableName = 'UnpaidBills.DB'
    Left = 444
    Top = 224
    object UnPBDocument: TStringField
      FieldName = 'Document'
      Size = 15
    end
    object UnPBName: TStringField
      FieldName = 'Name'
      Size = 30
    end
    object UnPBBillMonth: TStringField
      FieldName = 'BillMonth'
      Size = 4
    end
    object UnPBRateCode: TStringField
      FieldName = 'RateCode'
      Size = 2
    end
    object UnPBAmount: TCurrencyField
      FieldName = 'Amount'
    end
    object UnPBDate: TDateField
      FieldName = 'Date'
    end
    object UnPBArea: TStringField
      FieldName = 'Area'
      Size = 3
    end
    object UnPBBook: TStringField
      FieldName = 'Book'
      Size = 3
    end
    object UnPBAccountNumber: TStringField
      FieldName = 'AccountNumber'
      Size = 10
    end
    object UnPBKilowattHour: TCurrencyField
      FieldName = 'KilowattHour'
    end
  end
  object dsUnPB: TDataSource
    DataSet = UnPB
    Left = 552
    Top = 228
  end
  object GroupPopUpMenu: TBcBarPopupMenu
    OwnerDraw = True
    Bar.BarCaption.Font.Charset = DEFAULT_CHARSET
    Bar.BarCaption.Font.Color = clWhite
    Bar.BarCaption.Font.Height = -19
    Bar.BarCaption.Font.Name = 'Tahoma'
    Bar.BarCaption.Font.Style = [fsBold, fsItalic]
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
    Left = 72
    Top = 183
    object PrintthisGroup1: TMenuItem
      Caption = 'Print this Group'
      OnClick = PrintthisGroup1Click
    end
  end
  object GroupFinderPopupMenu: TPopupMenu
    Left = 208
    Top = 51
    object Search1: TMenuItem
      Caption = '&Search for a Group'
      Checked = True
      RadioItem = True
      OnClick = Search1Click
    end
    object Filter1: TMenuItem
      Caption = '&Filter Groups'
      RadioItem = True
      OnClick = Filter1Click
    end
    object Fields1: TMenuItem
      Caption = 'Fields'
      object Name1: TMenuItem
        Caption = 'By &Name'
        Checked = True
        RadioItem = True
        OnClick = Name1Click
      end
      object Billmonth1: TMenuItem
        Caption = 'By &Bill month'
        RadioItem = True
        OnClick = Billmonth1Click
      end
    end
  end
  object BillsSummary: TQuery
    DatabaseName = 'Coop'
    SQL.Strings = (
      
        'select sum(AversionFee) TotalAversionFee, sum(Charge1) TotalChar' +
        'ges,'
      '  count(*) TotalBills'
      'from AccountGroupsDetail')
    Left = 584
    Top = 299
    object BillsSummaryTotalAversionFee: TCurrencyField
      FieldName = 'TotalAversionFee'
      Origin = 'COOP."AccountGroupsDetail.DB".AversionFee'
    end
    object BillsSummaryTotalCharges: TCurrencyField
      FieldName = 'TotalCharges'
      Origin = 'COOP."AccountGroupsDetail.DB".Charge1'
    end
    object BillsSummaryTotalBills: TIntegerField
      FieldName = 'TotalBills'
    end
  end
end
