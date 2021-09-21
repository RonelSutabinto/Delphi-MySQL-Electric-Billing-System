object OCIntegrationForm: TOCIntegrationForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Other Charges Integration Interface'
  ClientHeight = 430
  ClientWidth = 686
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object LedgerViewPanel: TNxHeaderPanel
    Left = 86
    Top = 26
    Width = 514
    Height = 378
    AdaptiveColors = False
    Caption = 'Ledger for Account'
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -11
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = []
    ParentHeaderFont = False
    TabOrder = 6
    Visible = False
    DesignSize = (
      512
      376)
    FullWidth = 514
    object NxLinkLabel19: TNxLinkLabel
      Left = 373
      Top = 5
      Width = 54
      Height = 18
      Anchors = [akTop, akRight]
      Caption = 'Hardcopy'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      HoverColor = clMaroon
      ParentFont = False
      TextDistance = 2
      Transparent = True
      VertSpacing = 2
      OnClick = NxLinkLabel19Click
    end
    object NxLinkLabel20: TNxLinkLabel
      Left = 433
      Top = 5
      Width = 32
      Height = 18
      Anchors = [akTop, akRight]
      Caption = 'Close'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      HoverColor = clMaroon
      ParentFont = False
      TextDistance = 2
      Transparent = True
      VertSpacing = 2
      OnClick = NxLinkLabel20Click
    end
    object CRDBGrid5: TCRDBGrid1
      Left = 16
      Top = 39
      Width = 481
      Height = 325
      DataSource = dsOCLedger
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'DateEntered'
          Title.Alignment = taCenter
          Title.Caption = 'Date'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BillMonth'
          Title.Caption = 'Bill Month'
          Width = 49
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BillNumber'
          Title.Alignment = taCenter
          Title.Caption = 'Bill Number'
          Width = 94
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Amount'
          Title.Alignment = taRightJustify
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TORNumber'
          Title.Alignment = taCenter
          Title.Caption = 'TOR Number'
          Width = 99
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DatePaid'
          Title.Alignment = taCenter
          Title.Caption = 'Date Paid'
          Width = 71
          Visible = True
        end>
    end
  end
  object NxHeaderPanel1: TNxHeaderPanel
    Left = 0
    Top = 0
    Width = 686
    Height = 430
    AdaptiveColors = False
    Align = alClient
    Caption = 'Other Charges Master List'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -13
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = [fsBold]
    ParentFont = False
    ParentHeaderFont = False
    TabOrder = 0
    DesignSize = (
      684
      428)
    FullWidth = 686
    object Label8: TLabel
      Left = 14
      Top = 176
      Width = 99
      Height = 13
      Caption = 'Current Billing Month'
    end
    object NxLinkLabel1: TNxLinkLabel
      Left = 542
      Top = 5
      Width = 26
      Height = 18
      Anchors = [akTop, akRight]
      Caption = 'New'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      HoverColor = clMaroon
      ParentFont = False
      TextDistance = 2
      Transparent = True
      VertSpacing = 2
      OnClick = NxLinkLabel1Click
    end
    object NxLinkLabel2: TNxLinkLabel
      Left = 578
      Top = 5
      Width = 22
      Height = 18
      Anchors = [akTop, akRight]
      Caption = 'Edit'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      HoverColor = clMaroon
      ParentFont = False
      TextDistance = 2
      Transparent = True
      VertSpacing = 2
      OnClick = NxLinkLabel2Click
    end
    object NxLinkLabel3: TNxLinkLabel
      Left = 608
      Top = 5
      Width = 37
      Height = 18
      Anchors = [akTop, akRight]
      Caption = 'Delete'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      HoverColor = clMaroon
      ParentFont = False
      TextDistance = 2
      Transparent = True
      VertSpacing = 2
      OnClick = NxLinkLabel3Click
    end
    object NxButton1: TNxButton
      Left = 10
      Top = 36
      Width = 170
      Caption = 'Details'
      TabOrder = 4
      OnClick = NxButton1Click
    end
    object NxButton2: TNxButton
      Left = 10
      Top = 63
      Width = 170
      Caption = 'Outstanding Accounts Summary'
      TabOrder = 5
      OnClick = NxButton2Click
    end
    object NxButton3: TNxButton
      Left = 10
      Top = 90
      Width = 170
      Caption = 'Close Accounts'
      TabOrder = 6
      OnClick = NxButton3Click
    end
    object NxButton4: TNxButton
      Left = 10
      Top = 396
      Width = 170
      Caption = 'Close'
      TabOrder = 7
      OnClick = NxButton4Click
    end
    object CurrentBillMonth: TEdit
      Left = 14
      Top = 194
      Width = 161
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 8
    end
    object NxButton7: TNxButton
      Left = 10
      Top = 219
      Width = 170
      Caption = 'Other Charges Billing Summary'
      TabOrder = 9
      OnClick = NxButton7Click
    end
    object CRDBGrid1: TCRDBGrid1
      Left = 189
      Top = 27
      Width = 495
      Height = 401
      OptionsEx = [dgeEnableSort, dgeLocalFilter, dgeLocalSorting, dgeRecordCount, dgeSearchBar]
      Align = alRight
      Ctl3D = False
      DataSource = dsOCMaster
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DateEntered'
          Title.Alignment = taCenter
          Title.Caption = 'Date Entered'
          Width = 81
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Description'
          Title.Alignment = taCenter
          Width = 304
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'OCType'
          Title.Alignment = taCenter
          Title.Caption = 'OC Type'
          Width = 58
          Visible = True
        end>
    end
  end
  object DetailPanel: TNxHeaderPanel
    Left = 206
    Top = 27
    Width = 329
    Height = 153
    AdaptiveColors = False
    Caption = 'Detail'
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -11
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = []
    ParentHeaderFont = False
    TabOrder = 4
    Visible = False
    DesignSize = (
      327
      151)
    FullWidth = 329
    object Label4: TLabel
      Left = 34
      Top = 69
      Width = 64
      Height = 13
      Caption = 'Date Entered'
      FocusControl = DBEdit5
    end
    object Label5: TLabel
      Left = 61
      Top = 93
      Width = 37
      Height = 13
      Caption = 'Amount'
      FocusControl = DBEdit6
    end
    object Label6: TLabel
      Left = 63
      Top = 117
      Width = 35
      Height = 13
      Caption = 'Months'
      FocusControl = DBEdit7
    end
    object NxLinkLabel14: TNxLinkLabel
      Left = 226
      Top = 6
      Width = 25
      Height = 15
      Anchors = [akTop, akRight]
      Caption = 'Save'
      HoverColor = clRed
      TextDistance = 2
      Transparent = True
      VertSpacing = 2
      OnClick = NxLinkLabel14Click
    end
    object NxLinkLabel15: TNxLinkLabel
      Left = 257
      Top = 6
      Width = 33
      Height = 15
      Anchors = [akTop, akRight]
      Caption = 'Cancel'
      HoverColor = clRed
      TextDistance = 2
      Transparent = True
      VertSpacing = 2
      OnClick = NxLinkLabel15Click
    end
    object DBEdit4: TDBEdit
      Left = 104
      Top = 42
      Width = 200
      Height = 19
      Ctl3D = False
      DataField = 'ConsumerName'
      DataSource = dsOCDetail
      ParentCtl3D = False
      TabOrder = 2
    end
    object DBEdit5: TDBEdit
      Left = 104
      Top = 66
      Width = 200
      Height = 19
      Ctl3D = False
      DataField = 'DateEntered'
      DataSource = dsOCDetail
      ParentCtl3D = False
      TabOrder = 3
    end
    object DBEdit6: TDBEdit
      Left = 104
      Top = 90
      Width = 200
      Height = 19
      Ctl3D = False
      DataField = 'Amount'
      DataSource = dsOCDetail
      ParentCtl3D = False
      TabOrder = 4
    end
    object DBEdit7: TDBEdit
      Left = 104
      Top = 114
      Width = 200
      Height = 19
      Ctl3D = False
      DataField = 'Months'
      DataSource = dsOCDetail
      ParentCtl3D = False
      TabOrder = 5
    end
    object NxLinkLabel16: TNxLinkLabel
      Left = 19
      Top = 45
      Width = 79
      Height = 15
      Caption = 'Consumer Name'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      HoverColor = clRed
      ParentFont = False
      TextDistance = 2
      VertSpacing = 2
      OnClick = NxLinkLabel16Click
    end
  end
  object ConsumerListPanel: TNxHeaderPanel
    Left = 543
    Top = 241
    Width = 338
    Height = 364
    AdaptiveColors = False
    Caption = 'Consumer List'
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -11
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = []
    ParentHeaderFont = False
    TabOrder = 5
    Visible = False
    FullWidth = 338
    object NxLinkLabel17: TNxLinkLabel
      Left = 253
      Top = 5
      Width = 30
      Height = 15
      Caption = 'Select'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      HoverColor = clRed
      ParentFont = False
      TextDistance = 2
      Transparent = True
      VertSpacing = 2
      OnClick = NxLinkLabel17Click
    end
    object NxLinkLabel18: TNxLinkLabel
      Left = 294
      Top = 5
      Width = 33
      Height = 15
      Caption = 'Cancel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      HoverColor = clRed
      ParentFont = False
      TextDistance = 2
      Transparent = True
      VertSpacing = 2
      OnClick = NxLinkLabel18Click
    end
    object CRDBGrid4: TCRDBGrid1
      Left = 15
      Top = 40
      Width = 307
      Height = 308
      OptionsEx = [dgeEnableSort, dgeLocalFilter, dgeLocalSorting, dgeRecordCount, dgeSearchBar]
      DataSource = dsM
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ReadOnly = True
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'accountnumber'
          Title.Alignment = taCenter
          Title.Caption = 'Account Number'
          Width = 83
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'name'
          Title.Alignment = taCenter
          Title.Caption = 'Name'
          Width = 200
          Visible = True
        end>
    end
  end
  object OCMasterPanel: TNxHeaderPanel
    Left = 206
    Top = 54
    Width = 309
    Height = 236
    AdaptiveColors = False
    Caption = 'Other Charges Master Record'
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -11
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = [fsBold]
    ParentHeaderFont = False
    TabOrder = 1
    Visible = False
    DesignSize = (
      307
      234)
    FullWidth = 309
    object Label1: TLabel
      Left = 21
      Top = 41
      Width = 64
      Height = 13
      Caption = 'Date Entered'
      FocusControl = DBEdit1
    end
    object Label3: TLabel
      Left = 32
      Top = 112
      Width = 53
      Height = 13
      Caption = 'Description'
      FocusControl = DBEdit3
    end
    object Label7: TLabel
      Left = 31
      Top = 136
      Width = 54
      Height = 13
      Caption = 'Billing Code'
      FocusControl = DBEdit3
    end
    object Label9: TLabel
      Left = 18
      Top = 65
      Width = 67
      Height = 13
      Caption = 'Debit Account'
      FocusControl = DBEdit1
    end
    object DBRadioGroup1: TDBRadioGroup
      Left = 13
      Top = 160
      Width = 275
      Height = 57
      Caption = 'OC Type'
      Columns = 3
      DataField = 'OCType'
      DataSource = dsOCMaster
      Items.Strings = (
        'Fixed Monthly'
        'Installment'
        'Pilferage')
      ParentBackground = True
      TabOrder = 5
      Values.Strings = (
        'M'
        'I'
        'P')
    end
    object NxLinkLabel4: TNxLinkLabel
      Left = 234
      Top = 6
      Width = 25
      Height = 15
      Anchors = [akTop, akRight]
      Caption = 'Save'
      HoverColor = clRed
      TextDistance = 2
      Transparent = True
      VertSpacing = 2
      OnClick = NxLinkLabel4Click
    end
    object NxLinkLabel5: TNxLinkLabel
      Left = 266
      Top = 6
      Width = 33
      Height = 15
      Anchors = [akTop, akRight]
      Caption = 'Cancel'
      HoverColor = clRed
      TextDistance = 2
      Transparent = True
      VertSpacing = 2
      OnClick = NxLinkLabel5Click
    end
    object DBEdit1: TDBEdit
      Left = 90
      Top = 38
      Width = 200
      Height = 19
      Ctl3D = False
      DataField = 'DateEntered'
      DataSource = dsOCMaster
      ParentCtl3D = False
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 90
      Top = 86
      Width = 200
      Height = 19
      Ctl3D = False
      DataField = 'AccountCode'
      DataSource = dsOCMaster
      ParentCtl3D = False
      TabOrder = 2
    end
    object DBEdit3: TDBEdit
      Left = 90
      Top = 110
      Width = 200
      Height = 19
      Ctl3D = False
      DataField = 'Description'
      DataSource = dsOCMaster
      ParentCtl3D = False
      TabOrder = 3
    end
    object NxLinkLabel6: TNxLinkLabel
      Left = 13
      Top = 88
      Width = 72
      Height = 15
      Caption = 'Credit Account'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      HoverColor = clGreen
      ParentFont = False
      TextDistance = 2
      VertSpacing = 2
      OnClick = NxLinkLabel6Click
    end
    object DBEdit8: TDBEdit
      Left = 90
      Top = 134
      Width = 200
      Height = 19
      Ctl3D = False
      DataField = 'OCCODE'
      DataSource = dsOCMaster
      ParentCtl3D = False
      TabOrder = 4
    end
    object DBEdit9: TDBEdit
      Left = 90
      Top = 62
      Width = 200
      Height = 19
      Ctl3D = False
      DataField = 'DebitAccountCode'
      DataSource = dsOCMaster
      ParentCtl3D = False
      TabOrder = 1
    end
  end
  object OCDetailsPanel: TNxHeaderPanel
    Left = 147
    Top = 277
    Width = 502
    Height = 330
    AdaptiveColors = False
    Caption = 'Detail for Account'
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -11
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = [fsBold]
    ParentHeaderFont = False
    TabOrder = 3
    Visible = False
    DesignSize = (
      500
      328)
    FullWidth = 502
    object NxLinkLabel9: TNxLinkLabel
      Left = 321
      Top = 5
      Width = 26
      Height = 18
      Anchors = [akTop, akRight]
      Caption = 'New'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      HoverColor = clMaroon
      ParentFont = False
      TextDistance = 2
      Transparent = True
      VertSpacing = 2
      OnClick = NxLinkLabel9Click
    end
    object NxLinkLabel10: TNxLinkLabel
      Left = 355
      Top = 5
      Width = 22
      Height = 18
      Anchors = [akTop, akRight]
      Caption = 'Edit'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      HoverColor = clMaroon
      ParentFont = False
      TextDistance = 2
      Transparent = True
      VertSpacing = 2
      OnClick = NxLinkLabel10Click
    end
    object NxLinkLabel11: TNxLinkLabel
      Left = 387
      Top = 5
      Width = 37
      Height = 18
      Anchors = [akTop, akRight]
      Caption = 'Delete'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      HoverColor = clMaroon
      ParentFont = False
      TextDistance = 2
      Transparent = True
      VertSpacing = 2
      OnClick = NxLinkLabel11Click
    end
    object NxLinkLabel12: TNxLinkLabel
      Left = 433
      Top = 5
      Width = 32
      Height = 18
      Anchors = [akTop, akRight]
      Caption = 'Close'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      HoverColor = clMaroon
      ParentFont = False
      TextDistance = 2
      Transparent = True
      VertSpacing = 2
      OnClick = NxLinkLabel12Click
    end
    object NxLinkLabel13: TNxLinkLabel
      Left = 268
      Top = 5
      Width = 40
      Height = 18
      Anchors = [akTop, akRight]
      Caption = 'Ledger'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      HoverColor = clMaroon
      ParentFont = False
      TextDistance = 2
      Transparent = True
      VertSpacing = 2
      OnClick = NxLinkLabel13Click
    end
    object CRDBGrid3: TCRDBGrid1
      Left = 0
      Top = 27
      Width = 500
      Height = 301
      OptionsEx = [dgeEnableSort, dgeLocalFilter, dgeLocalSorting, dgeRecordCount, dgeSearchBar]
      Align = alClient
      Ctl3D = False
      DataSource = dsOCDetail
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 4
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'AccountNumber'
          Title.Alignment = taCenter
          Title.Caption = 'Account'
          Width = 63
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CBook'
          Title.Alignment = taCenter
          Title.Caption = 'Cipher'
          Width = 51
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ConsumerName'
          Title.Alignment = taCenter
          Title.Caption = 'Consumer Name'
          Width = 137
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DateEntered'
          Title.Alignment = taCenter
          Title.Caption = 'Date Entered'
          Width = 68
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Amount'
          Title.Alignment = taCenter
          Width = 78
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Months'
          Title.Alignment = taCenter
          Width = 62
          Visible = True
        end>
    end
  end
  object AccountCodePanel: TNxHeaderPanel
    Left = 471
    Top = 117
    Width = 332
    Height = 359
    AdaptiveColors = False
    Caption = 'Cashier'#39's Account Code'
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -11
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = []
    ParentHeaderFont = False
    TabOrder = 2
    Visible = False
    FullWidth = 332
    object NxLinkLabel7: TNxLinkLabel
      Left = 245
      Top = 5
      Width = 30
      Height = 15
      Caption = 'Select'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      HoverColor = clRed
      ParentFont = False
      TextDistance = 2
      Transparent = True
      VertSpacing = 2
      OnClick = NxLinkLabel7Click
    end
    object NxLinkLabel8: TNxLinkLabel
      Left = 286
      Top = 5
      Width = 33
      Height = 15
      Caption = 'Cancel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      HoverColor = clRed
      ParentFont = False
      TextDistance = 2
      Transparent = True
      VertSpacing = 2
      OnClick = NxLinkLabel8Click
    end
    object CRDBGrid2: TCRDBGrid1
      Left = 16
      Top = 40
      Width = 298
      Height = 305
      OptionsEx = [dgeEnableSort, dgeLocalFilter, dgeLocalSorting, dgeRecordCount, dgeSearchBar, dgeStretch]
      DataSource = dsAC
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Code'
          Title.Alignment = taCenter
          Width = 93
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Description'
          Title.Alignment = taCenter
          Width = 188
          Visible = True
        end>
    end
  end
  object Panel1: TPanel
    Left = 440
    Top = 277
    Width = 911
    Height = 382
    BevelInner = bvLowered
    BorderWidth = 10
    Caption = 'Panel1'
    TabOrder = 7
    Visible = False
    object PageControl1: TPageControl
      Left = 12
      Top = 12
      Width = 887
      Height = 358
      ActivePage = TabSheet3
      Align = alClient
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'OCLedger'
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object QuickRep1: TQuickRep
          Left = 3
          Top = 3
          Width = 816
          Height = 1056
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
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
            Height = 167
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
              441.854166666666700000
              1905.000000000000000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbTitle
            object QRSysData1: TQRSysData
              Left = 0
              Top = 99
              Width = 68
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                0.000000000000000000
                261.937500000000000000
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
            object QRImage1: TQRImage
              Left = 8
              Top = 8
              Width = 105
              Height = 89
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                235.479166666666700000
                21.166666666666670000
                21.166666666666670000
                277.812500000000000000)
              XLColumn = 0
              Picture.Data = {
                07544269746D61700E750000424D0E750000000000003604000028000000B500
                00009D0000000100080000000000D8700000C40E0000C40E0000000100000000
                000000000000000080000080000000808000800000008000800080800000C0C0
                C000C0DCC000F0CAA6000020400000206000002080000020A0000020C0000020
                E00000400000004020000040400000406000004080000040A0000040C0000040
                E00000600000006020000060400000606000006080000060A0000060C0000060
                E00000800000008020000080400000806000008080000080A0000080C0000080
                E00000A0000000A0200000A0400000A0600000A0800000A0A00000A0C00000A0
                E00000C0000000C0200000C0400000C0600000C0800000C0A00000C0C00000C0
                E00000E0000000E0200000E0400000E0600000E0800000E0A00000E0C00000E0
                E00040000000400020004000400040006000400080004000A0004000C0004000
                E00040200000402020004020400040206000402080004020A0004020C0004020
                E00040400000404020004040400040406000404080004040A0004040C0004040
                E00040600000406020004060400040606000406080004060A0004060C0004060
                E00040800000408020004080400040806000408080004080A0004080C0004080
                E00040A0000040A0200040A0400040A0600040A0800040A0A00040A0C00040A0
                E00040C0000040C0200040C0400040C0600040C0800040C0A00040C0C00040C0
                E00040E0000040E0200040E0400040E0600040E0800040E0A00040E0C00040E0
                E00080000000800020008000400080006000800080008000A0008000C0008000
                E00080200000802020008020400080206000802080008020A0008020C0008020
                E00080400000804020008040400080406000804080008040A0008040C0008040
                E00080600000806020008060400080606000806080008060A0008060C0008060
                E00080800000808020008080400080806000808080008080A0008080C0008080
                E00080A0000080A0200080A0400080A0600080A0800080A0A00080A0C00080A0
                E00080C0000080C0200080C0400080C0600080C0800080C0A00080C0C00080C0
                E00080E0000080E0200080E0400080E0600080E0800080E0A00080E0C00080E0
                E000C0000000C0002000C0004000C0006000C0008000C000A000C000C000C000
                E000C0200000C0202000C0204000C0206000C0208000C020A000C020C000C020
                E000C0400000C0402000C0404000C0406000C0408000C040A000C040C000C040
                E000C0600000C0602000C0604000C0606000C0608000C060A000C060C000C060
                E000C0800000C0802000C0804000C0806000C0808000C080A000C080C000C080
                E000C0A00000C0A02000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0
                E000C0C00000C0C02000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0
                A000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
                FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFF6FFFFFF
                F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFF6FFFFF6FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFF6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFF6F7EEFFFFF6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFF6A55BEEFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF079C53A5EFF6FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFEE534A9CA6EFF6FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFF6EE544B559DAFF6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFF6
                A601565656A7EFF6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6F6FFFFFFFFFFFFFF
                FFFFF6F6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFF6AF5557575F5FA7AF
                F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFF6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFF6F6F6F6F6F6F6F6F6F6FFFFFFFFFFFFF6F6F6F6F6FFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFF6EFA756575F57565EAFEFF6F6F6FFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFF6F6FFFFFFFFFFFFFFFFFFFFF6F6F6F6F6F6F6F6
                F6F6F6F6F6F6F6F6F6F6F6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFF6F6EF56575F5757565E5EEFF6F6F6F6F6FFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFF6F6FFFFFFFFFFFFFFFFF6F6F6F6F6F6F6F6F6F6F6F6BFBFBFBFBFBF
                BFBFB6B6B7F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                F6F6AFA757575F5F5F565FA7EFF6F6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFF6F6BFBFBFBF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F2D0303AEF6F6
                F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFF6F6AF560E5FA7
                5F57575FA7B7F6F6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6BFBF
                7F7FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB7F251B25BFF6F6FFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFF6F6EF9F56575F575F5F5F5F67AFB7
                F6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6BFBF7FFBFBFBFBFBFBFBFB
                FBFBFBFBFBFBFBFBFBFBFB37031CB6F6F6FFFFFFFFFFFFFFF6F6FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFF6F6EF5F5F5757575F675F5F5F67AFF6F6F6F6FFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFF6F6BF7FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB
                FBFBFB3F251B6DBFF6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFF6F6EF675657575F5F5F5F5F5FA7AFEFF6F6F6FFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6
                FFFFF6F6F6BFBF7FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB36251C6D
                F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFF6F6F6AF5F
                5F575F5F5F5F5F5F67A7AFEFF6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6FFF6F6F6F6BFBF7F
                FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB37251B6DF6F6FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFF6F6F6AFA7575F5F5F5F5F5F
                5F67A7A7AFEFF6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6F6BFBF7F7FFBFBFBFBFBFBFBFB
                FBFBFBFBFBFBFBFBFBFBFBFB3F2D1B6508F6F6F6FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFF6F6F6AF5F5F5F5F5F5F5F5F5F5FA7A7AFEFF6
                F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFF6F6F6F6BFBFBF7FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB
                FBFBFBFB7F772525BFF6F6F6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFF6F6EFA75F5F5F5F5F676767A7A7A7A7AFB708F6FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6F6F6
                F6BFBFBF7F7FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB7F7F76
                767776BFF6F6F6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFF6
                F6EFA75F5F5F5F676767A7A7A7A7A7AFB7EFF6FFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6F6F6F6F6BFBF7F7FFBFBFBFB
                FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB7F7F7F2E25256D6EBFF6
                F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFF6F6FFFFFFFFFFFFFFFFF6F6AFA75F5F5F5F
                5F676767A7A7A7AFAFAFF6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFF6F6BFBFBFBFBFBF7FFBFBFBFBFBFBFBFBFBFBFBFBFBFB
                FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB3F7F372D256DBFBFF6F6FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFF6F6FFFFFFFFFFFFFFFFFFF6EFAFA75F5F5F5F5F676767A7AFAF
                AFAFF6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6F6F6F6F6F6F6F6F6F6F6
                F6F6BFBFBFBFBF7F7FFBFBFBFBFBFBFBFB7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
                7F7FFBFBFBFBFBFBFBFBFB7F7F7F77766E6DF6F6F6F6F6F6F6F6F6F6F6F6F6F6
                F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFF6F6F6A756575F5F5F6767A7A7A7AFAFEFEF08F6F6FF
                FFFFFFFFFFFFFFFFFFFFF6F6F6BFBF7F762D77BFBFF6F6BFBFBF7F7F7F7F7F7F
                FBFBFBFBFB7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7FFBFBFB
                FBFBFBFBFBFB7F7F7F7F1C2DB7BFBFBFBFBFBFBFBF7F651C65B7F6F6F6FFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFF6F6AF5F5F5F675F6767A7A7AFAFAFB7B7BFF6F6F6FFFFFFFFFFFFFFF6
                F6F6F6BFBF7F7FFB3F3F36777FBFBF7F7F7FFBFBFBFBFB7F7F7F7F7FBFBFBFBF
                F6F6F6F608F6F6F6F6F6F6F6F6F6F6F6F6BFBFBFBFBF7F7FFBFBFBFBFBFBFBFB
                FB7F2E367F7F7F7F7F7F7F7F7F7F77262565B7F6F6F6FFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6EFAF9F
                5FA7676767A7A7AFAFAFB7B7BFF6F6F6F6FFFFFFFFF6F6F6F6BFBF7F7FFBFBFB
                FBFBFBFB7F7F7FFBFBFBFBFBFBFB7F7FBFBFBFF6F6F6F6F6F6F6F6F6AD0052AE
                F6F653B6F6F6F6B6F6F6F6F6F6BFBFBFBF7F7FFBFBFBFBFBFBFBFBFBFB7F7F7F
                7FFBFBFBFB7F7F37261C64B6F6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6EFAFA76767676767AFAF
                AFAFB7B7BFBFF6F6F6F6F6F6F6F6F6BFBFBF7FFBFBFBFBFBFBFBFBFBFBFBFBFB
                FBFBFBFB7F7FBFBFF6F6F6F6F6F6F608A45BF6AD00F6AD00F7F65200F6F6A400
                0A00A407F6F6F6F6BFBFBF7F7FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB
                372D1C1CB6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFF6F6EFA767676767676FAFAFB7B7B7BFBFBFF6
                F6F6F6F6F6F6BFBFBF7FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB7F7FBFBFBFF6F6
                F6F6FFFFF6F6F6085A0AF6F6F6F6FF52F6FFA453FFFFF6009BF7A407FFFFF6F6
                F6F6BFBFBF7F7FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB3F2E251C6DF6F6
                F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFF6F6F6AFA7A76767676F6FAFB7B7B7BFBFBFBFBFF6F6F6F6BFBF7F
                7FFBFBFBFBFBFBFBFBFBFBFBFBFBFB7F7FBFBFF6F6F6F6F6FFFFFFFFF6F6F6F6
                A352FFFF499B000007FF9B4A07F6FFEE00FFFFFFFFFFFFFFFFF6F6F6BFBFBF7F
                7FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB7F2E1C1C6EF6F6F6FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFF6F6F6F6F6FFF6F6F6F6EF
                AFAFA76767676FAFB7B7B7B7BFBFBFBFBFBFBFBFBFBF7F7FFBFBFBFBFBFBFBFB
                FBFBFBFBFB7F7FBFBFF6F6FFFFFFFFFFFFFFFFF6F6F6FFF65A49FFF700FFFF00
                9BFFFF4AFFFFFFFF4900FFF6F6FFFFFFFFFFFFF6F6F6BFBFBF7F7FFBFBFBFBFB
                FBFBFBFBFBFBFBFBFBFBFB372E031C6EF6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFF08EEA59D9DA69E5EA6AFAFA75F5FA76767A7AFAF
                AFB7AFB7BFBFBFBFBFBFBFBFBF7F7FFBFBFBFBFBFBFBFBFBFBFBFBFBFB7FBFBF
                F6F6FFFFFFFFFFFFFFFFF6F6F6F6FF074900FFF700FFFF0007FFF6A400F6A4F6
                FF00F6F6FFFFFFFFFFFFFFFFF6F6F6F6F6BFBF7F7FFBFBFBFBFBFBFBFBFBFBFB
                FBFBFBFB37251C03B6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFF6A554549D5E5F5FA7A7A767675F5F5FA7A7AFB7B7B7BFBFBFBF7F
                7F7F7F7F7F7FFBFBFBFBFBFBFBFBFBFBFBFBFBFB7FBFBFF6F6F6F6FFF6F6FFFF
                FFF6F6F6FFFFFFED5200A4F6A549495BF7494A0049A500F7F700FFF6FFFFFFFF
                FFFFFFFFF6F6F6F6F6F6BFBFBF7F7FFBFBFBFBFBFBFBFBFBFBFBFBFBFB37251B
                03AEF6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFEFEE
                A55DA75F5F5F5F5F5F5F5F5F5FA7A7AFAFB7B7B7BFBFBF7F7F7FFBFBFBFBFBFB
                FBFBFBFBFBFBFBFBFBFB7F7FBFBFF6F6F6FFF6F6F6F6FFF6F6FFF6FFFFFFFFFF
                09EEF6FFF6F6F6FFFFF6FF0707FFF79B4952FFFFFFFFFFFFFFFFFFFFFFFFF6F6
                F6F6F6F6BFBF7F7FFBFBFBFBFBFBFBFBFBFBFBFBFBFB36250364F6F6F6FFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFF6EFA6A7675F5F5F5F
                5F5F5F5F5FA7A7AFAFEFB7B7BFBFBF7F7FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB
                7F7FBFBFBFF6F6F6F6F608F6F6F6F6FFF6F6F6FFF6F6FFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFF6FFFFFFFFFFFFFFFFF6F6F6FFFFFFFFFFFFFFF6F6F6BFBF7F
                7FFBFBFBFBFBFBFBFBFBFBFBFBFBFB37251C6EB7F6F6F6FFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFF6EF5F5F5F5F675F5F575F5F5FA7A7AF
                AFAFB7B7BFBFBF7F7FFBFBFBFBFBFBFBFBFBFBFBFBFBFB7FBFBFBFF6F6F6F6AE
                A45CF6F6F6F6F6FFFFFFFFF6F6FFFFFFF6FFA4E59B93924952499292A4A4E507
                FFFFFFFFFFFFF6FFFFFFFFFFFFFFFFFFFFFFFFF6F6F6BFBF7F7FFBFBFBFBFBFB
                FBFBFBFBFBFBFB7F37251C65B7F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFF6FFFFF65E5E5F5F675F5F575F5F67A7A7AFAFAFB7B7BFBFBFBF
                7FFBFBFBFBFBFBFBFBFBFBFBFBFB7FBFBFF6F6F6F6F607530A0AF6F6F6F6F6F6
                F6FFFFFFFFFF079340404040404041404040404040404949494993F7F6FFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFF6F6F6BFBF7F7FFBFBFBFBFBFBFBFBFBFBFBFB7F
                7F771C1CAEF6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFF6B7AFA75F5F5F5F6767676767A7AFAFAFB7B7BFBFBFBF7F7FFBFBFBFBFBFB
                FBFBFBFBFB7FBFBFF6F6FFFFFFFFEE530A13A407F6F6FFFFFFFFFFED52004041
                404040404140414140404041404040404040000052A407FFFFFFFFFFFFFFFFF6
                F6F6FFFFFFF6F6F6BFBF7FFBFBFBFBFBFBFBFBFBFBFBFBFB7F77251C65F6F6FF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6B7A75F5F
                676767676767A7A7AFAFB7B7B7BFBFBFBF7FFBFBFBFBFBFBFBFBFBFBFB7FBFF6
                F6FFFFFFFFF6075C135C5B07FFFFFFFF09ED4040404040404040404049404089
                4041414040494140498A40404000409307FFFFFFFFF607A55C9CFFFFFFFFFFF6
                F6BFBF7FFBFBFBFBFBFBFBFBFBFBFBFB372F261D66F6F6FFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFF6FFFFF6F6F6F6EFAFA76767676767676767
                A7AFB7B7B7BFBFBFBF7FFBFBFBFBFBFBFBFBFBFB7FBFBFF6F6FFFFFFFFF6F6B7
                AEAEF6FFFFFF099B414041414040404140404040404040404040404141404040
                40404040404040404149F6FFFFF6AE530A53F6FFFFFFFFF6F6F6BFBF7FFBFBFB
                FBFBFBFBFBFBFBFB37262E65AEF6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFF6F6F6F6EFA75EA7676767676F6F6FB7B7B7BFBFF6
                BFBFFBFBFBFBFBFBFBFBFB7FBFBFF6F6FFFFFFF6FFF6F6F6F6F6F6FFFFA44140
                4000494041404140414040404040404041894040044040404040404040404040
                4000009CF6F6EF0A0A53ADF6F6F6FFF6F6F6F6BFBF7FFBFBFBFBFBFBFBFBFB37
                2F261CBFF6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFF6F6F6F6EFAFA7A767676F6F6F6FB7B7B7BFF6F6BFBFFBFBFBFBFBFB
                FBFB7FBFBFF6F6FFFFFFF6FFFFF6FFFFFFFFFFA54A4149400040414040408940
                419CDCE4EEF6FF09E493898981048189929340404040404040490000499CEEEF
                9D9D08F6F6F6FFFFFFF6F6F6BFBF7FFBFBFBFBFBFBFBFB372F266EF6F6FFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6
                F6F6AFAFA7A7AFAFAFAFB7B7B7BFBFBFBFBF7FFBFBFBFBFBFB7FBFBFBFF6F6FF
                FFFFFFFFF6FFFFFFFFFFA4494040404141000041494041E4EDF6EDEDE4E5EDE4
                938A4040400489DBED09099240404940404040000000A5F6EFF6FFF6FFFFFFFF
                FFF6F6F6BFBF7F7FFBFBFBFBFBFB3F37271DBFF6FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6F6EFB7AFAFAFAF
                AFB7B7B7B7BFBFBFBFBF7FFBFBFBFBFB7FBFBFBFF6F6F6FFFFFFFFFFFFFFFFFF
                F69B404041404140004900000000F7FF93524141404040404040404040400489
                DBE4EDFFFF9B4040410040400041414107FFFFFFFFFFFFFFFFFFF6F6F6BFBF7F
                7FFBFBFBFBFB3F37261DF6F6F6FFFFFFFFF6FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6F6EFB7AFAFAFAFB7B7B7BFBFBF
                BFBF7FFBFBFBFBFBBFBFF6F6F6F6FFFFFFFFFFFFF6FFFF079B40494040414141
                0000000A64B6F6F649404040404040404049414040404040404041419CF6FF9B
                400041414049404049EDFFFFFFF6FFFFFFFFFFF6F6F6BFBF7F7FFBFBFBFB3F37
                261DF6F6F6FFFFFFFFF6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFF6F6F6F6F6EFEFAFAFB7B7B7BFBFBFBFBF7F7FFBFBFB7F
                BFF6F6F6F6F6FFFFFFFFFFF6FFFF09514040404141000000001B6DBFBFBFF6F6
                40404040404040404041404040408104404041414141E5FFF652004100404040
                404909F6FFFFFFFFF6FFFFFFF6F6F6BFBF7FFBFBFBFBFB37261DBFF6FFFFFFFF
                FFF6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFF6F6F6F6F6EFEFEFEFB7B7BFBFBFBFBF7FFBFBFBFB7FBFF6F6FFFFFFFFFF
                FFFFFFFFFFEE9240404004404000000A64BF7F7F7F7FBFB64040894040404949
                40404040404040404040404041414040A4FFE50041494040404049A4F6FFFFFF
                FFFFFFFFFFF6F6F6BFBF7FFBFBFBFB372E1D6EF6F6FFFFFFF6F6FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6FFF6F6
                F6EFEFEFB7BFBFBFBF7F7FFBFBFB7FBFF6F6FFFFFFFFFFFFFFFFFFFFF6494040
                4040404900001BBFBF7F7F7FFB7FBFB5004040408AEDFFFFA440404040404040
                40404040414040404000FFEE404040404040409209FFFFFFFFFFFFFFFFFFF6F6
                F6BF7FFBFBFBFB372E251CB7F6FFFFFFF6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6EFBFBFBFBF
                BF7FFBFBFB7FBFBFF6F6FF00FFFFFFFFFFFFF6FF49404149404040000064BF7F
                7FFBFBFBFB7FBFBF004040404009FFFFE4404040404040404040404040404040
                40404009FF4940404040404040F6FFF6FFF6FFFFF6FFF6B6F6BFBF7FFBFBFBFB
                37261DA6F6FFFFFFF6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6BFBFBFBF7F7FFBFB7FBFBFF6
                F6F69B49F5F6F6F6FFFFFF9B404040404040000A6CBF7FFBFBFBFBFBFB7FBFBF
                0040404040F6FFFF9B4041404040404040404040404040404040494092FF4940
                514040404052FFFFF6FFFFFFFFF6F6F6F6F6BF7F7F7FFBFB372E1D66EFF6FFF6
                F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFF6F6BFBFBF7F7FFBFB7FBFF6F6F6080051A351A4FF
                FFFFED40404140404900006DBF7FFBFBFBFBFBFBFB7FBFBF0000404040FFFFFF
                9B414040404040404040404040404040404041404193FF9240404040490052FF
                FFFF075B07FFF707F6F6BFBF7F7FFBFBFB371D5EAFF6F6F6F6F6FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFF6F6F6BFBF7FFBFB7FBFBFF6F6F607525A4900ACFFFFFF414040410000
                000064BF7F3FFBFBFBFBFBFBFB7FBFBF00004940409B9BA44A40404040404040
                40404040404040404040404040409BFF52414940400040A4FFFF08A49BFF5249
                F6F6F6BFBF7FFBFBFBFB1D1D66AFF6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6BF7F
                FBFBFB7FBFF6F6FFF6F6FFFF5BACF6FFFF92404041000000006DBF7FFBFBFBFB
                FBFBFBFBFB7FBFBF000049414149004041404141400440404041404040404040
                404040414040409CFF92404040404140F6F6FFFF00FFFF5BA3F6F6F6BF7FFBFB
                FBFB271E1DA6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6BF7FFBFB7F7FBFF6F6FF
                F608F75A4908FFFF9A4041404000000064BF7FFBFBFBFBFBFBFBFBFBFB7FBFBF
                00004041400049EDE54141408181404040404040404040404040404049404940
                9BFF49414040404092FFFFFF00A4FF4952FFFFF6BFBF7FFBFBFB3727155D08F6
                F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFF6F6BF7FFBFB7FBFF6F6F6F75B520000F7F6FFFF
                004040400000001BBF7F3FFBFB3FFBFBFBFBFBFBFB7FBFBF004040404109F6F6
                E4404040814040898A4040404040404040404040408A40400009F64040414140
                40EDFFFFF7004900EDFFFFF6F6BF7FFBFBFB3F2F155DB7F6FFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFF6F6BF7FFBFB7FBFF6F6F6A400005208FFFFFFF740404040000000BF
                BF7FFBFBFBFBFBFBFBFBFBFBFB7FBF0800404007FFFF524041404040814041E4
                09ED40404040404040404040404040404940FFED404041404040FFFFF65BA4FF
                F69BFFF6F6BF7FFBFBFBFB2F1D1CB7F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6F6FFFFFFFFFFFFFFF6F6BF7FFB
                FB7FBFBFF6F6F6F6FF0041FFF6FF074940494040000A6D7F7FFBFBFBFBFBFBFB
                FBFBFB7F7FBFBF645209FFF64A00004149894040894040E4F6E4404040404040
                4040404940404040404040FF494040404000F6FFF6FF07004041A4F6F6BF7F7F
                FBFBFBFB251D5CA5F6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFF6F6F6F6FFFFFFFFFFF6F6F6F6BF7FFB7F7FBFF6F6F6F6F6
                FFFF00F6FFF6A300404041410012BF7FFBFBFBFBFBFBFBFBFBFB7F7FBFBFF6F6
                FF9B41004A0000FFF640404049404092E49240499B9C8A418189404140404040
                894040E40940404040004908FFFF49499BFFFFF6F6F6BF7FFBFBFBFB2E251C65
                F6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                F6F6F6FFFFFFFFFFFFF6F6F6F6BF7FFBFB7FBFF6F6B652000707A4F6FF074940
                404049000076BF7FFBFBFBFBFBFBFBFBFB3F7FBFBFF6F69B404040410000F6FF
                40404040404040818904409BFFFF9B40404140494949404041404049FF924040
                400049F7FFF6FFED4940495BF6F6BF7FFBFBFBFB3F251C5CF6F6F6F6FFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6FFFFFFFFFFFFF6FFFFFFFFFFFF
                F6F6F6F6BFBFFBFB7FBFBFF6F60800000000F6FFFF9B4049414040001BBF7FFB
                FBFBFBFBFBFBFBFB7FBFBFBFF65B0040494040410007FF9B4040404040404040
                4040409BFFFF9C40404041E50909924141404040ED09404040400052F6FFFFFF
                E44900F7F6F6BF7FFBFBFBFBFB2D131CB7F6F6F6F6FFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFF6F6FFFFFFFFFFFFFFFFFFFFFFF6F6F6BFBFBF7FFBFB
                7FBFF608F6F6FFA34907FFFFFF52404140400052B6BFBF3FFBFBFBFBFBFB7F7F
                BFBFF65B0000000041000000FFFFFFFF40404081404041404040409BFFFF9B40
                404040EDFFFF93404040404049FF924040400000FFFFFF4949F708F6F6F6BFBF
                FBFBFBFBFB37252525B6F6F6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFF6F6FFFFFFFFFFFFFFFFFFFFF6F6F6BFBFBF7F7FFBFB7FBFF6F607F75A49
                52FFFFFF0700404040400052BFBFBF7FFBFBFBFB7F7FBFBFAD5B000000490000
                000053F6F608FFA440404081404040404040409207079240404040EDFFF69340
                4040414040ED094040405200F7FFFF0707079B5BF6F6BFBF7FFBFBFBFBFB7F36
                0325BF08F6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6FFFFFFFF
                FFFFFFFFF6F6F6F6BFBFBF7F7FFBFBFB7FBFF6F6084900404909FFFF9C004040
                4040404964BF7F7FFBFBFB7F7FBFBF640A00000040004040009BFF5200524900
                41404040404040404040404049494040404049EDFFF69B404041404040920992
                4040400000FFFF0749000052F6F6F6BF7FFBFBFBFBFBFB7F362D6D76BF08F6F6
                F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6BFBF
                BF7F7FFBFBFBFBFBBFBFF6F6FFF6FF9B00FFFFFF92404040414000000064BFBF
                7F7F7FBFBF76120000000048404041009CFFFF0A000052534040404040414040
                4140404000404040404040494A49414040404049404109ED4040404900FFF607
                EDF6FFFFFFF6F6BF7FFBFBFBFBFBFBFBFB7F2503036DBFF6F6F6FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6BFBF7F7F7FFBFBFBFBFBFB
                BFBFF6FF075209FF9BFFFFFF4940404049409C9B0000136EBFBFBFBFAE000000
                49404040494000F7F6F6F6F6F6F6F6FF4A404040494041408A40404141404040
                40404040404041404041404040409BFF4040414000F6FFFFFFFFFFFFFFF6F6BF
                BFFBFBFBFBFBFBFBFBFB7F7FBF25646464F6F6FFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFF6F6F6BF7F7FFBFBFBFBFBFBFBFBBFF6F6FF52004040
                49FFFF09494040404940A4FFF700000A1BBFBFF6520049404049494040409CF6
                F6BFBFBFBFF6F6F64940404140494040F6DC4040404040404140494140404040
                49929B40404092F649404049409BFFFFA4F7F6FFFFF6F6BFBF7FFBFBFBFBFBFB
                FBFBFB7F7F25036464F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFF6F6BFBF7FFBFBFBFBFBFBFBFB7FBFF6F6FF9B52E49249FFFFF740404140
                4140F6F6F6F60A0A0012F6AD0040408140408940404908F6BF7FBFBFBFBFBFF6
                5241414040404041EDDC4040404040404040404040404040E5FF094940408909
                924049404049FF075252FFFFFFFFF6BFBF7FFBFBFBFBFBFBFBFBFBFB7F2D0303
                64F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6BF7FFBFB
                FBFBFBFBFBFBFB7FBFF6F6AC5140495252F6F69B404081404000525BF6F6F65B
                0000FF49404140408140404049EDF6F6BFBF7F7F7FBFBFF60A00414041404140
                40404040404040404040410040404040EDFFFF4940404009DB4040404041FFFF
                F652FFF793A4F6F6BF7FFBFBFBFBFBFBFBFBFBFBFB2D250365F6F6FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6BF7FFBFBFBFBFBFBFBFBFB7F
                BFF6F6FF0852409207FFF652404081404049000013F6F6FF9C07ED0040404140
                404040409BFFF6BFBFBFBFBFBFBFBFF64A404040404140404140404040404040
                4040404040404140EDFFFF4940404009E54040494040FFFFFF52F693499BF6F6
                BF7FFBFBFBFBFBFBFBFBFBFBFB2D250365F6F6FFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFF6F6FFFFFFF6F6BF7FFBFBFBFBFBFBFBFBFB7FBFF6F6FFFFFFF6EE
                FFF6FF49404041400052AD00005BA5F6FFF64A40004941404041404052076464
                6D1B64641B1212640040404040414AE409E54040414040404040004040404040
                E4090949404140E4094040404040FFFFFF5B9B49499BF6F6BF7FFBFBFBFBFBFB
                FBFBFBFBFB2D250365F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6FF
                FFFFF6F6BF7FFBFBFBFBFBFBFBFBFB7FBFF6F6F69B0092EEFFF6FF4040404040
                00A4F6BF120000F7F6FF404000494040814040415C64231B64121B5C1B1B5BAD
                0040404040009BFFFFFF0092E49341404040939B4940404049408A40404040E4
                094140898A4007FFFF520040405207F6BF7FFBFBFBFBFBFBFBFBFBFBFB2D2564
                65F6F6FFFFFFFFFFF6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6FFFFFFF6F6BF7FFBFB
                FBFBFBFBFBFBFB7FBFF6F69B49F75249F6FFFF404040400000B6F6BFBF1B0000
                0707004040404041408141A4F6F6BFBFBFBFBFBFBFBFF6F64940404041005BF6
                F6F600EDFFED89404000FFFFE449404049404040404040DB09404041404007F6
                FF9B53ED07F6FFF6BF7FFBFBFBFBFBFBFBFBFBFBFB2E252565F6F6FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFF6F6FFFFFFF6F6BF7FFBFBFBFBFBFBFBFBFB7F
                BFF6F69B9BFFF60007FFFF404040000000F6BFBFBFBF6D12EE53404040404040
                404040F6F6BF7F7FBF7FBFBF7FBFBFBF00004040000064F6F60740EEFFED4940
                4000EDFF0940404189404040404040D309404040404007FFFFFFFFFF0752FFF6
                BFBFFBFBFBFBFBFBFBFBFBFBFB2E261D6EF6F6F6FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFF6F6BF7FFBFBFBFBFBFBFBFBFB7FBFF6F6ED00004A53
                F6FFFF404000000000F6BF7F7F7F7F6EF652404040404040404040F6F6BFBF7F
                7F7F7F7F7F7FBFBF00004040000064F6F608004A934900000000F6FFED404040
                40404040404040920989404040409BF6FF07F7490052F6F6BF7FFBFBFBFBFBFB
                FBFBFBFBFB2E261D6EF6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFF6F6BF7FFBFBFBFBFBFBFBFBFB7FBFF6F6F6ED004AFFFFFFFF4000000000
                00BFBF7FFBFB7FBFF60A404040404040404040FF5BBFBF7F7F7FFBFBFBFBBFB6
                0000404040006DBFF6F600000000000041414040404089494040404040404092
                0989404041409BFFFF9B0052FFFFFFF6BF7FFBFBFBFBFBFBFBFBFBFB3F2E261D
                66F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6FFFFFFFFF6F6BFBF7FFB
                FBFBFBFBFBFBFB7FBFF6F6FFFFFF07F7FFFFFF000000000000B6BF7FFBFB7FBF
                BF00404040404040404052080000BFBF7F7FFBFBFB7FBFB6004040404000B6BF
                BFBFBFBFB65C120A000000404040404040404000000040E4094040414140EDFF
                FFAC00005207F6F6BF7FFBFBFBFBFBFBFBFBFBFB3F2F261D66F6F6FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFF6FFFFFFFFF6F6BFBF7FFBFBFBFBFBFBFBFB7F
                BFF6F6FF08FF0852FFFFFF0000404000006DBF7FFBFB7FBFBF00404040404040
                4040F6FF0000006D767FFBFBFB7FBFAD004040404000B6BFBF7FBFBFBFBFF6F6
                08F700000040404940000000000A5207ED404081404007F6FFFFF6FF0000F6F6
                BF7FFBFBFBFBFBFBFBFBFBFB3F2F261D66F6F6FFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFF6FFFFFFFFF6F6BFBF7FFBFBFBFBFBFBFBFB7FBFF6F6FFFFF6FFFF
                F6FFFF00004041000064BF7FFBFB7FBFB6004040404040404040FFFFF60A0000
                0ABF7F7FBFBFF6AD004040000000B6BF7F7F7F7F7F7FBFBFBFF6F6F6F6AD0000
                4953F608BFF6F6F6A44940404040A4F6FFA4F6FFFF5208F6BF7FFBFBFBFBFBFB
                FBFBFBFB3F2F261D66F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFF6F6BFBF7FFBFBFBFBFBFBFBFB7FBFF6F6FFFFFFFFFFFFFFFF0040404140
                0012BF7FFB7F7FBFAE004040404040404040EDFFFFFF9C531265BFBFF6F6F6A4
                004000000000767F7FFBFBFBFBFB7F7F7FBFBFBFF6F6645CA4ADF6BFBFBFF6AD
                004081404049A4FFFF52000000A4F608BF7FFBFBFBFBFBFBFBFBFBFB3F2F261D
                66F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6BFBF7FFB
                FBFBFBFBFBFBFB7FBFF6F6FFF7F7524AFFFFFF00404040400012BF7F7F7F7FBF
                B6004040404040404040F6F6EDFFF6F6F65CF6F6F6FFFFE4404000000000767F
                FBFBFBFBFBFBFBFBFBFB7F7FBFBF1B12A4F6BFBFBFBFBF64004940894000F6F6
                FFFFFFF5F7A5F6F6BF7FFBFBFBFBFBFBFBFBFBFB3F2F261D6EF6F6FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6BFBF7FFBFBFBFBFBFBFBFB7F
                BFF6F60749009B009BFFFFF7404049400000BFBF7F7F7FBFF600004040404041
                40414040414141414A53414A41404141400000000000BF7FFBFBFBFBFBFBFBFB
                FBFBFBFB7F7F1B0012BFBF7F7F7FBF12004140404900FFFFF6FFFFFF499CF6F6
                BF7FFBFBFBFBFBFBFBFBFBFBFB371D66B7F6F6FFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFF6F6BFBF7FFBFBFBFBFBFBFBFB7FBFF6F6FF4A09F652
                9BFFFFED404041404000F6BF7F7F7FBFBF000040404149400000004141410000
                0000004140404040404000000000BF7FFBFBFBFBFBFBFBFBFBFBFBFBFB7F7603
                6DBF7F7F7F7FBF12004141494000FFF60800529B00FFF6BFBF7FFBFBFBFBFBFB
                FBFBFBFB7F2F141DB7F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFF6F6BFBF7F7F7FFBFBFBFBFBFB7FBFF6F6074A93F600A4FFFF0741404040
                4000ADBFBF7F7FBFBF6D529B4940404152524A4900004A53534A004A52415249
                404000000000BF7FFBFBFBFBFBFBFBFBFBFBFBFBFB7F7F7F7FBF7F7F7FBF760A
                00414041409BF6FFFFA3524900FFF6F6BF7FFBFBFBFBFBFBFBFBFB7F77261C66
                BFF6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6FFFFFFFFF6F6BFBFBF
                7F7FFBFBFBFBFBFBBFBFF6F6F600005BFFFFFFF65240404040001264BFBFBF7F
                BFBFF6F692404109F608F6F6F6F6F6F6F6FFF6F6F6FF0749404000000000BF7F
                FBFBFBFBFBFBFBFBFBFBFBFBFBFB7F7F7F7FFBFB7FBF6400004140400007FFFF
                A4FFFF9B00F6F6BF7F7FFBFBFBFBFBFBFBFB7F7F7F25146508F6F6FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFF6F6F6FFFFFFFFF6F6F6BFBFBFBF7FFBFBFBFBFB
                7FBFF6F6F6FFFFFF49FFFFFF9B0040494040000A1CBFBFBFBFF6F6FF92404909
                FFF6F6F6BFBF761B0A00B6F6F6F6FF00404040000000BF7FFBFBFBFBFBFBFBFB
                FBFBFBFBFBFBFBFBFBFBFBFB7FBF12000041404100FFFFFF009BFF0852F6F6BF
                7FFBFBFBFBFBFBFBFB7F7F76656EB7F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFF6F6F6F6FFFFFFFFF6F6F6F6BFBFBF7FFBFBFBFB7FBFBFF607490049
                00A4FFFFF700004940400000000AB6BFBFF60A535200419B07F6F6BF7F7FBF7F
                1C00000A07F6F69A404040404000BF7FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB
                FBFBFBFB7F7600004041404049FFFFFFED00520708F6BFBF7FFBFBFBFBFBFB7F
                7F7F6DB6BFF6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6F6
                FFFFFFFFF6F6F6F6F6F6BFBF7FFBFBFB7F7FBFBFF65200499B00FFFF08000049
                4040414000000064F6B60000000000004AA5BF7F7FFB7F7F7664000000F7FF49
                404040404000BF7FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB7F1C0000
                41414000A3FFFFF6FF490051F6F6BFBF7FFBFBFBFBFB3F36777FF6F6F6F6F6FF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6FFFFFFFFFFFFF6F6F6
                F6F6F6BFBF7FFBFBFB7FBFBFF6529B529B00FFF6F60000494040408AED53000A
                08AD000000000000005CBF7FFBFBFB7F7FBFBF1200005B52404940404000BFBF
                7F7FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBBF12004149404049F6FFFF52
                00004911F6F6BFBF7FFBFBFBFB36250376BFF6F6F6F6FFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6BF7FFBFB
                FB7FBFF6F65252FFF64907FFFFF700404040414093FFA400A4085B5B5B524A0A
                531BBFBF7FFBFBFBFBFB7F7F030A0000404940404000001BBFBF7FFBFBFBFBFB
                FBFBFBFBFBFBFBFBFBFB7F7F6400004940404049FFFFFF5207FFFFF6FFF6BFBF
                FBFBFBFB7F1C2625F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6BFBF7FFB7F7FBFBFF6F607FF
                FFF79BFFFF0849404140404100A4F6F652F6FFFFFFFFFFF6F6F6BF7FFBFBFBFB
                FBFBFB7F7F76120040404040404100000A64BF7F7FFBFBFBFBFBFBFBFBFBFBFB
                FB7F7F7611004140414000A5F6FF07A4FFFFFFFFFFF6BFBFFBFBFBFB7F1D256E
                F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFF6F6BF7F7FFB7FBFBFF6F6F74949494AF6FFFFA440
                404140404149F7FFFF07A4F5FFFFF6FFF6F6BF7FFBFBFBFBFBFBFB7FBFBFAD00
                404040404949F712000A6DBFBF7F7FFBFBFBFBFBFB7F7F7FBFBFBF1B00004140
                414149F6F6F607414052FFFFF6F6BF7FFBFBFBFB37251DB7F6FFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFF6F6BFBF7FFB7F7FBFF6F6EE53A4F7529CFFFFFF414041414040490052
                FFFFF749494A525BA4BFBF7F7FFBFBFBFB7F7FBFBFBFF600404040404052F6F6
                640A001B76BFBF7F7F7FBFBFBFBFBFBFBFBF6400000040414000F7F6F607EE52
                4A00FFFFF6F6BF7FFBFBFBFB26251CBFF6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6BF7F
                FBFB7FBFBFF6F6F6F6FFED52FFFFFF9B40414041414000005207FF5200000049
                5CF6BFBF7F7F7F7F7F7FBFBFBFF6F600414941404049F6F6AD520000121B031B
                1B130A0A0A0A0A0000000000404141400049F6F6FFF70049E54AFFF6F6BFBF7F
                FBFBFB7F25251CF6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6BF7FFBFB7F7FBFF6F6FF
                F6FFFFF6FFFFF607404040408A4049404041FFFFFFFFFFFFF6F6BFBFBFBFBFBF
                BFBF031B5B645B004040404940409B5300520000000000000000000000000000
                000000414040494000EDFFFFED9BA440009BFFF6F6BF7FFBFBFB3F371E1D66F6
                F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFF6BFBFFBFBFB7FBFF6F6FFF6FFFFFF07F6FFFF
                9B0040414041414140404092E5ED9B4100000000000000000000000000000041
                4040404140404900004941000000000040414040404040414141414040404041
                93FF07FF524AFFF6F7F7FFF6BFBF7FFBFBFB372F1E1DB7F6FFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFF6F6BF7FFBFB7FBFBFF6FFFFFFF6A400F7F6F6FF49404041414040
                49404040404040404140000000000041410000000000408A4041404040494041
                494000000040404041414040404040404040414040494041F6FFFFED40F69352
                F6F6F6F6BF7FFBFBFBFB37271E15BFF6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6BF
                7FFBFBFB7FBFF6F6F6F70049EDFFFFF6FFFF4049404141404049404041414040
                4040404040404140414140410049414089404041414000000040414140404040
                404140404004048104814041404040A4FFFFFF008A934900F7F6F6F6BF7FFBFB
                FBFB271E156FF6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6BF7FFBFBFB7FBFF6F6
                F60700494A0052FFFFFFF7404141404940414040404040404041404140414049
                404040000000494041414140400049490000000000499B9B4900404941400404
                04894040404992F6F6FFFFE549404AA4F6F6F6BF7FFBFBFBFB3F271E1DAFF6F6
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFF6F6FFFFF6F6BF7FFBFB7FBFBFF6F6F6F6F7490052F6
                FFFFFF9B4040414041404104400404404040494040004040499B5252525BA400
                414040400052A46464A4525249530708F7A4A4514040404081408940404AF6FF
                F6F6FFFF099349FFF6F6BFBF7FFBFBFB3F2F271E66BFF6F6F6F6FFFFF6FFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFF6F6FFFFF6F6BF7FFBFBFB7FBFBFF6F6F65249A4F60708FFFFFF4A404040
                49404040048181814140409B07A4494952F7FFFFF6F60800494040400064F6F6
                BFF6F65C00005207F6F60700004040404040404940F6FFFFF6F607A452FF07F6
                F6BFBF7FFBFBFBFB3727271DB7F6F6F6F6F6F6F6F6F6FFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6FFFFFFF6
                BFBF7FFBFB7F7FBFF6F6F6F7FFF6524A4AFFFFFFF6494040414140404081898A
                89494049F6F60753490007F6F6F6070040404040005BBFBFBFBFBFBF650A0000
                9BFF5B004040404040494040EDFFFFF65BF7529B00FFF6F6F6BF7FFBFBFBFB3F
                2F1E2666BFF6F6F6F6F6F6F6F6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6FFFFFFF6F6BF7FFBFBFB7FBF
                BFF6F6F6FF9B4A099300FFFFF6F6524140494140404041498A8A410000ADF6F6
                0A00000AADF6F60040494040005BBFBFBFBFBFBFF60752000049004041404040
                49004907FFFFFFFF07004A9B0007F6F6BF2D7FFBFBFBFB37271E266FF6F6F6F6
                F6F6F6F6F6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFF6F6FFFFFFFFF6BF7FFBFBFB7F7FBFF6F6F6FF499BFF
                ED00FFF6F6FFFF49414141404040404041494140000053F6F6A40A000AB60800
                40404040001ABFBFBFBFBFBFF6079B41404040404041404149009BFFFFFFED9B
                A4A44941FFF6F6BFBF7FFBFBFBFB3F2F271E26BFF6F6F6F6F6F6F6F6F6F6F6F6
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFF6BF7F7FFBFBFB7FBFBFBFF6F69B499B0052FFF6FFFFFF07
                41404040404040404040404140400000A4F6F65200005240400404400012BFBF
                BFBFBF765B000040414141404141404000A5FFFFFFA4000049FFF600F6F6F6BF
                7FFBFBFBFBFB3F2F271E1EBFF6F6F6F6F6F6F6F608F6F6F6F6F6F6FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6
                F6BFBF7FFBFBFBFB7F7FBFBFF6F607529AFF480007FFF6FFFF49404040414040
                404040404040000049A3F6F6F7524040400481404052F6F6BF64000000004040
                4040414041404041F6FFFFFFFF49F7FF0052FFFFFFF6BFBFFBFBFBFBFBFBFB37
                271E1E6FBFF6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6FFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6F6BFBF7FFBFBFBFB
                FB7FBFBFBFF6F6FFF5920009F59AFFFFFFFF9B49404040404140404040404940
                0000525B52494041814081404141525211000000404040404040409240009BF6
                F6FFFFFFFF49A4F65252FFFFF6F6BF7FFBFBFBFBFBFBFB3F2F1E1E67B7F6F6F6
                F6F6F6F6F6F6BF080808F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6BF7F7FFBFBFBFBFBFB77BFBFF6F6F6
                ED009B490049A4FFFFFFFF9C0040404040404041404040404040404040404040
                4040404040400000000040404040404040404049409BFFFFF6FFF7A4075A4949
                5A07FFF6F6BF7FFBFBFBFBFBFBFBFB3F2F1F1E67B7F6F6F6F6F60808BFBFBFBF
                BFBFF6F6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFF6F6BF7FFBFBFBFBFBFBFB7F7FBFBFF6F6089A094000FFFFF6
                F6F6FFFF079B4940404040404040404040404040404040404040404040404040
                404040404040404040414049F6FFFFFFFFA400494908F749FFFFF6F6BF7F7FFB
                FBFBFBFBFBFBFBFB2F271E1E6FBFF6F6F6F608BFBFBFBFB7B7B7B7BFF6F6F6F6
                F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6FFFFFFFFF6
                F6BF7FFBFBFBFBFBFBFBFB7FBFBFBFF6F6F64848E4F6085251F6F6FFFFFFF652
                4040404040404041414040404040404040404040404140404040404040404040
                4049E4F6FFFFFFFFF700FFF6005BFFFFFFF6F6BF7F7FFBFBFBFBFBFBFBFBFBFB
                37271E1E66B7F6F6F6F6EFBFBFB7B7B7B7B7B7B7BFF6F6F6F6F6F6FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6FFFFFFFFF6F6BF7FFBFBFBFBFB
                FBFBFB7F7F7FBFBFF6F608F609F59B5B08F652F6F6F6FFFFA492494040404040
                404040404041414040404040404040494041404040404092EDF6FFFFFFFF9B9B
                F700FFFF0052F6F6F6F6BFBF7FFBFBFBFBFBFBFBFBFBFBFB372F1E1E66B7F6F6
                08F6EFBFB7B7B7B7B7B7AFB7B7B7BFF6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFF6FFFFFFFFF6F6BF7FFBFBFBFBFBFBFBFBFB3F7F7FBF
                BFF6F6FF9A004907080752525BF6F6FFFFFFF6A4494040404040404040404040
                4040494940404040404040404092EDFFFFFFF6FFF65B52F7085B0000A3FFF6F6
                F6BF7F7FFBFBFBFBFBFBFBFBFBFBFBFB3F2F261D1EB7F60808F6EFEFB7B7B7B7
                B7B7AFAFB7B7B7B7BFBFF6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFF6F6BFBF7FFBFBFBFBFBFBFBFBFBFBFB7FBFBF08F6FFF6495A
                F6AC005B5252F6F6F6FFFFFFFFF6F74900004040404040404040404040404040
                40499BEDFFFFFFFFFFF6F6F69B0AF6FFFFFF07F6FFF6F6F6BF7FFBFBFBFBFBFB
                FBFBFBFBFBFBFBFB3F37261D1DB7F60807F6EFEFEFB7B7B7B7B7AFAFAFAFAFAF
                AFB7F6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6
                F6F6BF7FFBFBFBFBFBFBFBFBFBFBFBFB7FBFBFF6F6F6FF079B0000525B07F607
                F7FFFFFFFFFFFFFFFFFF9B9B49524092404040498A40A4FFF6FFFFF6FFF6F6FF
                F6F6F6F65B00FFFF49A4FFFFF6F6F6BF7F7FFBFBFBFBFBFBFBFBFBFBFBFBFB7F
                772F1425B7BFF6F6F6F6EFEFB7B7B7B7B7AFB7B7AFAF6F6FAFAFB7F6F6F6F6F6
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6BFBF7FFBFBFB
                FBFBFBFBFBFBFBFBFB7FBFBFF6F6F6F6F752F79BFFFFFF490049EEFFFFF6FFFF
                FFFFFFF6FFFFF6FFFFFFF6FFF6F6FFFFFF08FFFFF6FFFF9B4900F7F6F7000000
                4AFFFFF6F6F6BF7F7FFBFBFBFBFBFBFBFBFBFBFBFBFB7F7F2E1D66B7BFF6F6F6
                F6F6EFEFEFB7B7B7B7B76F6F6F6F6F6FAFAFAFEFF6F6F6FFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6F6BF7FFBFBFBFBFBFBFBFBFBFBFB
                FBFB7FBFBFBFF6F6F6F70000A4FF9B5208ED00A452A4FFFFFFFFF6FFFFFFFFF6
                F6FFFFF6FFFFF6FFFFF6F6F64AA40049FFFFFFFFFF075BF7F6F6F6F6BFBF7FFB
                FBFBFBFBFBFBFBFBFBFBFBFBFB7F7F2E1D25BFF6F6F6F6F6F6F6EFEFEFB7B7B7
                B7B76F6F6F6FAFAFAFAFAFEFF6F6F6F6FFF6FFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFF6F6FFFFF6F6F6BF7FFBFBFBFBFBFBFBFBFBFBFBFB3F7FBFBFBFF6
                F6F6F69BFFFFA4000052FFF60000000049F7F7FFFFFFF6FFF6F6F6FFA4FFF6A4
                FFA40052499B52F7FFFF52FFF6F6F6F6F6F6F6F6BF7FFBFBFBFBFBFBFBFBFBFB
                FBFBFBFB7F7F251365BFF6F6F6F6FFFFF6F6F6EFEFB7B7B7B7AFB7B7AFAFAFAF
                AFAFAFEFEFF6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFF6F6BFBF7FFBFBFBFBFBFBFBFBFBFBFBFBFB7F7FBFBFBFBFF6F6F6F64A00
                9C53FF4A00FFFF0852005B00A5FF9C0052F6FFAD00FFFF009B5249FF4953A441
                EE4949FFF6F6F6F6BFBFBFBF7FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB7F251365
                BFF6F6F6F6F6FFFFFFFFF6F6EFB7B7AFAFAFAFAFAFAFAFAFAFAFA6A6A6AE07F6
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6BFBF7F
                FBFBFBFBFBFBFBFBFBFBFBFBFBFB7F7FBFBFF6BFF6F6F6AE495BFF5249FFFFFF
                5252539BFF4949079BADF6F700FFFF00535200FF5349FF9B00A4F6F6F6F6BFBF
                BF7F7F7FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB7F2E1303BFF6F6FFFFFFFFFFFF
                FFF6F6F6EFB7B7AFAFAF6F6FAFAFAFAFAFAFA6A6A6AE0708F6FFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFF6F6FFFFFFFFFFFFFFFFF6F6BF7FFBFBFBFBFBFBFBFB
                FBFBFBFBFBFBFBFB7F7FBFBFBFBFF6F6F607F6529BFFF6FF52005BF6FF00A4FF
                FF07FFEE52F6FF49495200F6F749FFFFFFFFF6F6F6BFBF7F7F7FFBFBFBFBFBFB
                FBFBFBFBFBFBFBFBFBFB3F2F1C25BFF6F6FFFFFFFFFFFFF6F6F6F6F6EFB7AFAF
                AFAF67A7AFAFB7B70808EFEFEF0708F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFF6F6FFFFFFFFFFFFFFFFFFF6F6BF7F7FFBFBFBFBFBFBFBFBFBFBFBFBFBFB
                FBFB7FBFBFBFBFF6F6F6F6F6F6F6F6F60A495200FF52499C539BA5520052A553
                49A453F6FFFFF6F6F6F6F6BFBFBF7F7FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB
                FBFB371D25BFF6F6FFFFFFFFFFFFFFF6F6F6F6F6EFB7AFAFAFAFAFAFB7B7F6F6
                F6F6F6F6F6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFF6F6F6F6BF7FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB7F7FBFBF
                BFF6F6F6F6FFFFFFFFFFF7FFFFF6A452A5F6A4A4F70708FFFFFFF6F6F6F6F6F6
                F6BFBF7F7FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB3F361BAEF6F6F6F6
                FFFFFFFFFFFFFFF6F6F6F6F6BFB7AFAFA7A7A7AFAFEFF6F6F6F6FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFF6BFFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB7F7F7FBFBFBFF6F6F6F6F6
                F6F6F6F6F6F6F607F6F6F6F6F6F6F6F6F6F6F6F6F6F6BFBFBF7F7FFBFBFBFBFB
                FBFBFBFBFBFBFBFBFBFBFBFBFB7F7FFB372DAE08F6F6F6F6FFFFFFFFFFFFFFFF
                F6F6F6BFB7B7AFAFAFA7A7A7AFEFF6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6BFBFBFBF7F7F
                7F7F377F7F7F7F7F7F7F7FFBFBFB7F7F7F7FBFBFBFBFBFF6F6F6F6F6F6F6F6F6
                F6F6F6F6F6F6F6F6F6F6BFBFBFBFBFBF7FFBFBFBFBFBFBFBFB7F2D2E777F7F7F
                7F7FBFBFBFBF77251C1CF6F6F6F6F6FFFFFFFFFFFFFFFFFFF6F6EFB7B7B7AFAF
                AFAFA7A7A7AFF6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6BFBFBFBFBFBFBF7677BFBFBFBF
                BFBF7F7F7F7F7F7F7F7F7F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
                BFBFBF7F7F7F7F7FFBFBFBFBFBFBFBFB7F7F6D6EB7BFBFBFBFBFBFBFBFBFB76D
                6D6EF6F6F6F6F6FFFFFFFFFFFFFFFFF6F607EFB7B7B7AFAFAFAFAFAFA7AFAFEF
                F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFF6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6BFBFBF7F7F7F
                FBFBFBFBFB7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7FFBFBFBFBFBFB
                FBFBFBFBFBFB7F7F7E76F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6FFFFFF
                FFFFFFFFFFFFFFF6F607EFEFEFB7AFAFAFAFB7AFAFA7A7AFAFEFF6F6F6F6FFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFF6F6F6F6F6F6F6F6F6F6F6F6F6BFBFBF7F7F7F7FFBFBFBFBFBFB
                FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB7F7F7FBF
                BFBFF6F6F6F6F6F6F6F6F6F6FFF6FFFFFFF6FFF6FFFFFFFFFFFFFFFFFFFFFFF6
                F608EFEFB7B7AFAFAFAFAFAFAFAFA767A7AFF6F6F6F6FFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFF6F6F6FFFFFFFFFFF6F6F6BFBFBFBF7F7F7F7FFBFBFBFBFBFBFBFBFBFBFB
                FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB7F7F7FBFBFF6F6F6F6FFFFFFFFFF
                FFFFF6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6EFEFEFB7B7AF
                AFAFA7AFAFAF676767A7AFF6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFF6F6F6F6BFBFBFBFBF7F7FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB
                FBFBFBFBFBFBFB7F7F367FBFBFF6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6EFB7B7AFAFAFA7A7AFA76767
                67A7A7EFF6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6
                F6F6BFBFBF7F7FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB2D1C
                76BFF6F6F6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFF6F6F6F6EFB7AFAFB7AFAFA7A767676767AF5EA6F6F6F6
                FFF6FFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6F6F6F6BFBF7FFB
                FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB371C1CB7F6F6F6F6FFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFF6F6F6F6F6F6EFEFAFA7A7A767676767675FA7A7A7F6F6F6FFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6F6BF7F7FFBFBFBFBFBFBFBFB
                FBFBFBFBFBFBFBFBFBFBFBFB7F251B6DF6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6F6F6F6
                EFEFAFAFA7A7676767675FA7A7A7AFF6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFF6F6BFBF7FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB
                FBFBFB7F371C1CBFF6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6F6F6F6F6EFEFAFA76767
                67675F5FA7675EAFF6F6F6F6FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6FFFF
                FFFFFFFFF6F6BF7FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB7F2D1B6508
                F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6F6EFAFA7675F5F5FA75F5F5F5E
                A7F6F6F6F6F6FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6FFFFFFFFFFFFF6F6BFBF
                7FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB36031BAEF6F6FFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFF6F6F6F6B7A75F5F675F5F5F5F565EAFF6F6F6F6FFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6FFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFF6F6FFFFFFFFFFFFF6F6BFBF7F7F7F7F7F7F7F7F
                7F7F7F7F7F7F7F7F7F7F7F36036DBFF6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFF6F6F6F6B7A75F67575FA757579F5EEFF6F6F6FFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFF6F6BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
                BFBFBF766EBFF6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6F6
                AFA75EA75F575F5F5F57AFBFF6F6F6FFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFF6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6F6EFAF675F5757
                5F5F5667B7F6F6FFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFF6F6F6F6F6F6F6F6F6F6F6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6B7A75F5F5F5F175EAFF6F6FF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFF6F6F6F6AFA75F5F675656AFF6FFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFF6F6F6B7AF675F5656A7F6F6FFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6
                F6EF5E56559EEFEFF6FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6EFA7554C545D
                EFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6F6EFA6544B9DF6FFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFF6F6F6A55353FFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFF6EFA6FFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                F6F6FFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFF6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFF6F6F6F6FFFFFFFFFFFFFFFFFFF6F6FFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6FFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6FFFFFFFFFF000000}
              Stretch = True
            end
            object ConsName: TQRLabel
              Left = 252
              Top = 87
              Width = 215
              Height = 18
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                47.625000000000000000
                666.750000000000000000
                230.187500000000000000
                568.854166666666700000)
              XLColumn = 0
              Alignment = taCenter
              AlignToBand = True
              AutoSize = True
              AutoStretch = False
              Caption = 'Consumer Name Account Number'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 10
            end
            object QRLabel4: TQRLabel
              Left = 257
              Top = 65
              Width = 205
              Height = 23
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                60.854166666666670000
                679.979166666666700000
                171.979166666666700000
                542.395833333333300000)
              XLColumn = 0
              Alignment = taCenter
              AlignToBand = True
              AutoSize = True
              AutoStretch = False
              Caption = 'Other Charges Ledger'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -19
              Font.Name = 'Arial Rounded MT Bold'
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 14
            end
            object AreaOfficeLabel: TQRLabel
              Left = 273
              Top = 48
              Width = 173
              Height = 18
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                47.625000000000000000
                722.312500000000000000
                127.000000000000000000
                457.729166666666700000)
              XLColumn = 0
              Alignment = taCenter
              AlignToBand = True
              AutoSize = True
              AutoStretch = False
              Caption = 'Gen. Luna St., Dipolog City'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial Rounded MT Bold'
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 10
            end
            object QRLabel2: TQRLabel
              Left = 323
              Top = 32
              Width = 73
              Height = 18
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                47.625000000000000000
                854.604166666666700000
                84.666666666666670000
                193.145833333333300000)
              XLColumn = 0
              Alignment = taCenter
              AlignToBand = True
              AutoSize = True
              AutoStretch = False
              Caption = '( ZANECO )'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial Rounded MT Bold'
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 10
            end
            object QRLabel1: TQRLabel
              Left = 145
              Top = 14
              Width = 429
              Height = 18
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                47.625000000000000000
                383.645833333333300000
                37.041666666666670000
                1135.062500000000000000)
              XLColumn = 0
              Alignment = taCenter
              AlignToBand = True
              AutoSize = True
              AutoStretch = False
              Caption = 'ZAMBOANGA DEL NORTE ELECTRIC COOPERATIVE, INC.'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Arial Rounded MT Bold'
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 11
            end
            object AcctDesc: TQRLabel
              Left = 296
              Top = 108
              Width = 128
              Height = 18
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                47.625000000000000000
                783.166666666666700000
                285.750000000000000000
                338.666666666666700000)
              XLColumn = 0
              Alignment = taCenter
              AlignToBand = True
              AutoSize = True
              AutoStretch = False
              Caption = 'Account Descriptio '
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 10
            end
            object QRLabel5: TQRLabel
              Left = 32
              Top = 144
              Width = 73
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                84.666666666666670000
                381.000000000000000000
                193.145833333333300000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Date Posted'
              Color = clWhite
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 10
            end
            object QRLabel6: TQRLabel
              Left = 144
              Top = 144
              Width = 76
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                381.000000000000000000
                381.000000000000000000
                201.083333333333300000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Billing Month'
              Color = clWhite
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 10
            end
            object QRLabel7: TQRLabel
              Left = 264
              Top = 144
              Width = 68
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                698.500000000000000000
                381.000000000000000000
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
            object QRLabel8: TQRLabel
              Left = 408
              Top = 144
              Width = 46
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1079.500000000000000000
                381.000000000000000000
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
            object QRLabel9: TQRLabel
              Left = 520
              Top = 144
              Width = 58
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1375.833333333333000000
                381.000000000000000000
                153.458333333333300000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Date Paid'
              Color = clWhite
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 10
            end
            object QRLabel10: TQRLabel
              Left = 608
              Top = 144
              Width = 76
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1608.666666666667000000
                381.000000000000000000
                201.083333333333300000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'TOR Number'
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
            Top = 215
            Width = 720
            Height = 34
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
              89.958333333333330000
              1905.000000000000000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbDetail
            object QRDBText1: TQRDBText
              Left = 32
              Top = 8
              Width = 73
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                84.666666666666670000
                21.166666666666670000
                193.145833333333300000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = OCLedger
              DataField = 'DateEntered'
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 10
            end
            object QRDBText2: TQRDBText
              Left = 144
              Top = 8
              Width = 55
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                381.000000000000000000
                21.166666666666670000
                145.520833333333300000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = OCLedger
              DataField = 'BillMonth'
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 10
            end
            object QRDBText3: TQRDBText
              Left = 266
              Top = 8
              Width = 64
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                703.791666666666700000
                21.166666666666670000
                169.333333333333300000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = OCLedger
              DataField = 'BillNumber'
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 10
            end
            object QRDBText4: TQRDBText
              Left = 406
              Top = 8
              Width = 46
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1074.208333333333000000
                21.166666666666670000
                121.708333333333300000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = OCLedger
              DataField = 'Amount'
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 10
            end
            object QRDBText5: TQRDBText
              Left = 521
              Top = 8
              Width = 54
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1378.479166666667000000
                21.166666666666670000
                142.875000000000000000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = OCLedger
              DataField = 'DatePaid'
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 10
            end
            object QRDBText6: TQRDBText
              Left = 609
              Top = 8
              Width = 72
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1611.312500000000000000
                21.166666666666670000
                190.500000000000000000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = OCLedger
              DataField = 'TORNumber'
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
            Top = 249
            Width = 720
            Height = 40
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
              105.833333333333300000
              1905.000000000000000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbSummary
            object QRExpr1: TQRExpr
              Left = 305
              Top = 10
              Width = 145
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                806.979166666666700000
                26.458333333333330000
                383.645833333333300000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              ResetAfterPrint = False
              Transparent = False
              WordWrap = True
              Expression = 'SUM(OCLedger.Amount)'
              Mask = '#,###.00'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 10
            end
            object QRLabel11: TQRLabel
              Left = 240
              Top = 10
              Width = 29
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                635.000000000000000000
                26.458333333333330000
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
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Monthly Summary'
        ImageIndex = 1
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object QuickRep2: TQuickRep
          Left = 46
          Top = 37
          Width = 1056
          Height = 816
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          DataSet = MSumm
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
          PrevFormStyle = fsStayOnTop
          PreviewInitialState = wsMaximized
          PrevInitialZoom = qrZoomToWidth
          PreviewDefaultSaveType = stQRP
          PreviewLeft = 0
          PreviewTop = 0
          object ColumnHeaderBand1: TQRBand
            Left = 48
            Top = 48
            Width = 960
            Height = 148
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
              391.583333333333300000
              2540.000000000000000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbColumnHeader
            object QRSysData2: TQRSysData
              Left = 0
              Top = 99
              Width = 68
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                0.000000000000000000
                261.937500000000000000
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
            object QRImage2: TQRImage
              Left = 8
              Top = 8
              Width = 105
              Height = 89
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                235.479166666666700000
                21.166666666666670000
                21.166666666666670000
                277.812500000000000000)
              XLColumn = 0
              Picture.Data = {
                07544269746D61700E750000424D0E750000000000003604000028000000B500
                00009D0000000100080000000000D8700000C40E0000C40E0000000100000000
                000000000000000080000080000000808000800000008000800080800000C0C0
                C000C0DCC000F0CAA6000020400000206000002080000020A0000020C0000020
                E00000400000004020000040400000406000004080000040A0000040C0000040
                E00000600000006020000060400000606000006080000060A0000060C0000060
                E00000800000008020000080400000806000008080000080A0000080C0000080
                E00000A0000000A0200000A0400000A0600000A0800000A0A00000A0C00000A0
                E00000C0000000C0200000C0400000C0600000C0800000C0A00000C0C00000C0
                E00000E0000000E0200000E0400000E0600000E0800000E0A00000E0C00000E0
                E00040000000400020004000400040006000400080004000A0004000C0004000
                E00040200000402020004020400040206000402080004020A0004020C0004020
                E00040400000404020004040400040406000404080004040A0004040C0004040
                E00040600000406020004060400040606000406080004060A0004060C0004060
                E00040800000408020004080400040806000408080004080A0004080C0004080
                E00040A0000040A0200040A0400040A0600040A0800040A0A00040A0C00040A0
                E00040C0000040C0200040C0400040C0600040C0800040C0A00040C0C00040C0
                E00040E0000040E0200040E0400040E0600040E0800040E0A00040E0C00040E0
                E00080000000800020008000400080006000800080008000A0008000C0008000
                E00080200000802020008020400080206000802080008020A0008020C0008020
                E00080400000804020008040400080406000804080008040A0008040C0008040
                E00080600000806020008060400080606000806080008060A0008060C0008060
                E00080800000808020008080400080806000808080008080A0008080C0008080
                E00080A0000080A0200080A0400080A0600080A0800080A0A00080A0C00080A0
                E00080C0000080C0200080C0400080C0600080C0800080C0A00080C0C00080C0
                E00080E0000080E0200080E0400080E0600080E0800080E0A00080E0C00080E0
                E000C0000000C0002000C0004000C0006000C0008000C000A000C000C000C000
                E000C0200000C0202000C0204000C0206000C0208000C020A000C020C000C020
                E000C0400000C0402000C0404000C0406000C0408000C040A000C040C000C040
                E000C0600000C0602000C0604000C0606000C0608000C060A000C060C000C060
                E000C0800000C0802000C0804000C0806000C0808000C080A000C080C000C080
                E000C0A00000C0A02000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0
                E000C0C00000C0C02000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0
                A000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
                FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFF6FFFFFF
                F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFF6FFFFF6FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFF6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFF6F7EEFFFFF6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFF6A55BEEFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF079C53A5EFF6FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFEE534A9CA6EFF6FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFF6EE544B559DAFF6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFF6
                A601565656A7EFF6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6F6FFFFFFFFFFFFFF
                FFFFF6F6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFF6AF5557575F5FA7AF
                F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFF6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFF6F6F6F6F6F6F6F6F6F6FFFFFFFFFFFFF6F6F6F6F6FFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFF6EFA756575F57565EAFEFF6F6F6FFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFF6F6FFFFFFFFFFFFFFFFFFFFF6F6F6F6F6F6F6F6
                F6F6F6F6F6F6F6F6F6F6F6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFF6F6EF56575F5757565E5EEFF6F6F6F6F6FFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFF6F6FFFFFFFFFFFFFFFFF6F6F6F6F6F6F6F6F6F6F6F6BFBFBFBFBFBF
                BFBFB6B6B7F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                F6F6AFA757575F5F5F565FA7EFF6F6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFF6F6BFBFBFBF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F2D0303AEF6F6
                F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFF6F6AF560E5FA7
                5F57575FA7B7F6F6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6BFBF
                7F7FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB7F251B25BFF6F6FFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFF6F6EF9F56575F575F5F5F5F67AFB7
                F6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6BFBF7FFBFBFBFBFBFBFBFB
                FBFBFBFBFBFBFBFBFBFBFB37031CB6F6F6FFFFFFFFFFFFFFF6F6FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFF6F6EF5F5F5757575F675F5F5F67AFF6F6F6F6FFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFF6F6BF7FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB
                FBFBFB3F251B6DBFF6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFF6F6EF675657575F5F5F5F5F5FA7AFEFF6F6F6FFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6
                FFFFF6F6F6BFBF7FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB36251C6D
                F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFF6F6F6AF5F
                5F575F5F5F5F5F5F67A7AFEFF6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6FFF6F6F6F6BFBF7F
                FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB37251B6DF6F6FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFF6F6F6AFA7575F5F5F5F5F5F
                5F67A7A7AFEFF6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6F6BFBF7F7FFBFBFBFBFBFBFBFB
                FBFBFBFBFBFBFBFBFBFBFBFB3F2D1B6508F6F6F6FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFF6F6F6AF5F5F5F5F5F5F5F5F5F5FA7A7AFEFF6
                F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFF6F6F6F6BFBFBF7FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB
                FBFBFBFB7F772525BFF6F6F6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFF6F6EFA75F5F5F5F5F676767A7A7A7A7AFB708F6FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6F6F6
                F6BFBFBF7F7FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB7F7F76
                767776BFF6F6F6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFF6
                F6EFA75F5F5F5F676767A7A7A7A7A7AFB7EFF6FFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6F6F6F6F6BFBF7F7FFBFBFBFB
                FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB7F7F7F2E25256D6EBFF6
                F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFF6F6FFFFFFFFFFFFFFFFF6F6AFA75F5F5F5F
                5F676767A7A7A7AFAFAFF6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFF6F6BFBFBFBFBFBF7FFBFBFBFBFBFBFBFBFBFBFBFBFBFB
                FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB3F7F372D256DBFBFF6F6FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFF6F6FFFFFFFFFFFFFFFFFFF6EFAFA75F5F5F5F5F676767A7AFAF
                AFAFF6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6F6F6F6F6F6F6F6F6F6F6
                F6F6BFBFBFBFBF7F7FFBFBFBFBFBFBFBFB7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
                7F7FFBFBFBFBFBFBFBFBFB7F7F7F77766E6DF6F6F6F6F6F6F6F6F6F6F6F6F6F6
                F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFF6F6F6A756575F5F5F6767A7A7A7AFAFEFEF08F6F6FF
                FFFFFFFFFFFFFFFFFFFFF6F6F6BFBF7F762D77BFBFF6F6BFBFBF7F7F7F7F7F7F
                FBFBFBFBFB7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7FFBFBFB
                FBFBFBFBFBFB7F7F7F7F1C2DB7BFBFBFBFBFBFBFBF7F651C65B7F6F6F6FFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFF6F6AF5F5F5F675F6767A7A7AFAFAFB7B7BFF6F6F6FFFFFFFFFFFFFFF6
                F6F6F6BFBF7F7FFB3F3F36777FBFBF7F7F7FFBFBFBFBFB7F7F7F7F7FBFBFBFBF
                F6F6F6F608F6F6F6F6F6F6F6F6F6F6F6F6BFBFBFBFBF7F7FFBFBFBFBFBFBFBFB
                FB7F2E367F7F7F7F7F7F7F7F7F7F77262565B7F6F6F6FFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6EFAF9F
                5FA7676767A7A7AFAFAFB7B7BFF6F6F6F6FFFFFFFFF6F6F6F6BFBF7F7FFBFBFB
                FBFBFBFB7F7F7FFBFBFBFBFBFBFB7F7FBFBFBFF6F6F6F6F6F6F6F6F6AD0052AE
                F6F653B6F6F6F6B6F6F6F6F6F6BFBFBFBF7F7FFBFBFBFBFBFBFBFBFBFB7F7F7F
                7FFBFBFBFB7F7F37261C64B6F6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6EFAFA76767676767AFAF
                AFAFB7B7BFBFF6F6F6F6F6F6F6F6F6BFBFBF7FFBFBFBFBFBFBFBFBFBFBFBFBFB
                FBFBFBFB7F7FBFBFF6F6F6F6F6F6F608A45BF6AD00F6AD00F7F65200F6F6A400
                0A00A407F6F6F6F6BFBFBF7F7FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB
                372D1C1CB6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFF6F6EFA767676767676FAFAFB7B7B7BFBFBFF6
                F6F6F6F6F6F6BFBFBF7FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB7F7FBFBFBFF6F6
                F6F6FFFFF6F6F6085A0AF6F6F6F6FF52F6FFA453FFFFF6009BF7A407FFFFF6F6
                F6F6BFBFBF7F7FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB3F2E251C6DF6F6
                F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFF6F6F6AFA7A76767676F6FAFB7B7B7BFBFBFBFBFF6F6F6F6BFBF7F
                7FFBFBFBFBFBFBFBFBFBFBFBFBFBFB7F7FBFBFF6F6F6F6F6FFFFFFFFF6F6F6F6
                A352FFFF499B000007FF9B4A07F6FFEE00FFFFFFFFFFFFFFFFF6F6F6BFBFBF7F
                7FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB7F2E1C1C6EF6F6F6FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFF6F6F6F6F6FFF6F6F6F6EF
                AFAFA76767676FAFB7B7B7B7BFBFBFBFBFBFBFBFBFBF7F7FFBFBFBFBFBFBFBFB
                FBFBFBFBFB7F7FBFBFF6F6FFFFFFFFFFFFFFFFF6F6F6FFF65A49FFF700FFFF00
                9BFFFF4AFFFFFFFF4900FFF6F6FFFFFFFFFFFFF6F6F6BFBFBF7F7FFBFBFBFBFB
                FBFBFBFBFBFBFBFBFBFBFB372E031C6EF6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFF08EEA59D9DA69E5EA6AFAFA75F5FA76767A7AFAF
                AFB7AFB7BFBFBFBFBFBFBFBFBF7F7FFBFBFBFBFBFBFBFBFBFBFBFBFBFB7FBFBF
                F6F6FFFFFFFFFFFFFFFFF6F6F6F6FF074900FFF700FFFF0007FFF6A400F6A4F6
                FF00F6F6FFFFFFFFFFFFFFFFF6F6F6F6F6BFBF7F7FFBFBFBFBFBFBFBFBFBFBFB
                FBFBFBFB37251C03B6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFF6A554549D5E5F5FA7A7A767675F5F5FA7A7AFB7B7B7BFBFBFBF7F
                7F7F7F7F7F7FFBFBFBFBFBFBFBFBFBFBFBFBFBFB7FBFBFF6F6F6F6FFF6F6FFFF
                FFF6F6F6FFFFFFED5200A4F6A549495BF7494A0049A500F7F700FFF6FFFFFFFF
                FFFFFFFFF6F6F6F6F6F6BFBFBF7F7FFBFBFBFBFBFBFBFBFBFBFBFBFBFB37251B
                03AEF6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFEFEE
                A55DA75F5F5F5F5F5F5F5F5F5FA7A7AFAFB7B7B7BFBFBF7F7F7FFBFBFBFBFBFB
                FBFBFBFBFBFBFBFBFBFB7F7FBFBFF6F6F6FFF6F6F6F6FFF6F6FFF6FFFFFFFFFF
                09EEF6FFF6F6F6FFFFF6FF0707FFF79B4952FFFFFFFFFFFFFFFFFFFFFFFFF6F6
                F6F6F6F6BFBF7F7FFBFBFBFBFBFBFBFBFBFBFBFBFBFB36250364F6F6F6FFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFF6EFA6A7675F5F5F5F
                5F5F5F5F5FA7A7AFAFEFB7B7BFBFBF7F7FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB
                7F7FBFBFBFF6F6F6F6F608F6F6F6F6FFF6F6F6FFF6F6FFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFF6FFFFFFFFFFFFFFFFF6F6F6FFFFFFFFFFFFFFF6F6F6BFBF7F
                7FFBFBFBFBFBFBFBFBFBFBFBFBFBFB37251C6EB7F6F6F6FFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFF6EF5F5F5F5F675F5F575F5F5FA7A7AF
                AFAFB7B7BFBFBF7F7FFBFBFBFBFBFBFBFBFBFBFBFBFBFB7FBFBFBFF6F6F6F6AE
                A45CF6F6F6F6F6FFFFFFFFF6F6FFFFFFF6FFA4E59B93924952499292A4A4E507
                FFFFFFFFFFFFF6FFFFFFFFFFFFFFFFFFFFFFFFF6F6F6BFBF7F7FFBFBFBFBFBFB
                FBFBFBFBFBFBFB7F37251C65B7F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFF6FFFFF65E5E5F5F675F5F575F5F67A7A7AFAFAFB7B7BFBFBFBF
                7FFBFBFBFBFBFBFBFBFBFBFBFBFB7FBFBFF6F6F6F6F607530A0AF6F6F6F6F6F6
                F6FFFFFFFFFF079340404040404041404040404040404949494993F7F6FFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFF6F6F6BFBF7F7FFBFBFBFBFBFBFBFBFBFBFBFB7F
                7F771C1CAEF6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFF6B7AFA75F5F5F5F6767676767A7AFAFAFB7B7BFBFBFBF7F7FFBFBFBFBFBFB
                FBFBFBFBFB7FBFBFF6F6FFFFFFFFEE530A13A407F6F6FFFFFFFFFFED52004041
                404040404140414140404041404040404040000052A407FFFFFFFFFFFFFFFFF6
                F6F6FFFFFFF6F6F6BFBF7FFBFBFBFBFBFBFBFBFBFBFBFBFB7F77251C65F6F6FF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6B7A75F5F
                676767676767A7A7AFAFB7B7B7BFBFBFBF7FFBFBFBFBFBFBFBFBFBFBFB7FBFF6
                F6FFFFFFFFF6075C135C5B07FFFFFFFF09ED4040404040404040404049404089
                4041414040494140498A40404000409307FFFFFFFFF607A55C9CFFFFFFFFFFF6
                F6BFBF7FFBFBFBFBFBFBFBFBFBFBFBFB372F261D66F6F6FFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFF6FFFFF6F6F6F6EFAFA76767676767676767
                A7AFB7B7B7BFBFBFBF7FFBFBFBFBFBFBFBFBFBFB7FBFBFF6F6FFFFFFFFF6F6B7
                AEAEF6FFFFFF099B414041414040404140404040404040404040404141404040
                40404040404040404149F6FFFFF6AE530A53F6FFFFFFFFF6F6F6BFBF7FFBFBFB
                FBFBFBFBFBFBFBFB37262E65AEF6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFF6F6F6F6EFA75EA7676767676F6F6FB7B7B7BFBFF6
                BFBFFBFBFBFBFBFBFBFBFB7FBFBFF6F6FFFFFFF6FFF6F6F6F6F6F6FFFFA44140
                4000494041404140414040404040404041894040044040404040404040404040
                4000009CF6F6EF0A0A53ADF6F6F6FFF6F6F6F6BFBF7FFBFBFBFBFBFBFBFBFB37
                2F261CBFF6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFF6F6F6F6EFAFA7A767676F6F6F6FB7B7B7BFF6F6BFBFFBFBFBFBFBFB
                FBFB7FBFBFF6F6FFFFFFF6FFFFF6FFFFFFFFFFA54A4149400040414040408940
                419CDCE4EEF6FF09E493898981048189929340404040404040490000499CEEEF
                9D9D08F6F6F6FFFFFFF6F6F6BFBF7FFBFBFBFBFBFBFBFB372F266EF6F6FFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6
                F6F6AFAFA7A7AFAFAFAFB7B7B7BFBFBFBFBF7FFBFBFBFBFBFB7FBFBFBFF6F6FF
                FFFFFFFFF6FFFFFFFFFFA4494040404141000041494041E4EDF6EDEDE4E5EDE4
                938A4040400489DBED09099240404940404040000000A5F6EFF6FFF6FFFFFFFF
                FFF6F6F6BFBF7F7FFBFBFBFBFBFB3F37271DBFF6FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6F6EFB7AFAFAFAF
                AFB7B7B7B7BFBFBFBFBF7FFBFBFBFBFB7FBFBFBFF6F6F6FFFFFFFFFFFFFFFFFF
                F69B404041404140004900000000F7FF93524141404040404040404040400489
                DBE4EDFFFF9B4040410040400041414107FFFFFFFFFFFFFFFFFFF6F6F6BFBF7F
                7FFBFBFBFBFB3F37261DF6F6F6FFFFFFFFF6FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6F6EFB7AFAFAFAFB7B7B7BFBFBF
                BFBF7FFBFBFBFBFBBFBFF6F6F6F6FFFFFFFFFFFFF6FFFF079B40494040414141
                0000000A64B6F6F649404040404040404049414040404040404041419CF6FF9B
                400041414049404049EDFFFFFFF6FFFFFFFFFFF6F6F6BFBF7F7FFBFBFBFB3F37
                261DF6F6F6FFFFFFFFF6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFF6F6F6F6F6EFEFAFAFB7B7B7BFBFBFBFBF7F7FFBFBFB7F
                BFF6F6F6F6F6FFFFFFFFFFF6FFFF09514040404141000000001B6DBFBFBFF6F6
                40404040404040404041404040408104404041414141E5FFF652004100404040
                404909F6FFFFFFFFF6FFFFFFF6F6F6BFBF7FFBFBFBFBFB37261DBFF6FFFFFFFF
                FFF6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFF6F6F6F6F6EFEFEFEFB7B7BFBFBFBFBF7FFBFBFBFB7FBFF6F6FFFFFFFFFF
                FFFFFFFFFFEE9240404004404000000A64BF7F7F7F7FBFB64040894040404949
                40404040404040404040404041414040A4FFE50041494040404049A4F6FFFFFF
                FFFFFFFFFFF6F6F6BFBF7FFBFBFBFB372E1D6EF6F6FFFFFFF6F6FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6FFF6F6
                F6EFEFEFB7BFBFBFBF7F7FFBFBFB7FBFF6F6FFFFFFFFFFFFFFFFFFFFF6494040
                4040404900001BBFBF7F7F7FFB7FBFB5004040408AEDFFFFA440404040404040
                40404040414040404000FFEE404040404040409209FFFFFFFFFFFFFFFFFFF6F6
                F6BF7FFBFBFBFB372E251CB7F6FFFFFFF6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6EFBFBFBFBF
                BF7FFBFBFB7FBFBFF6F6FF00FFFFFFFFFFFFF6FF49404149404040000064BF7F
                7FFBFBFBFB7FBFBF004040404009FFFFE4404040404040404040404040404040
                40404009FF4940404040404040F6FFF6FFF6FFFFF6FFF6B6F6BFBF7FFBFBFBFB
                37261DA6F6FFFFFFF6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6BFBFBFBF7F7FFBFB7FBFBFF6
                F6F69B49F5F6F6F6FFFFFF9B404040404040000A6CBF7FFBFBFBFBFBFB7FBFBF
                0040404040F6FFFF9B4041404040404040404040404040404040494092FF4940
                514040404052FFFFF6FFFFFFFFF6F6F6F6F6BF7F7F7FFBFB372E1D66EFF6FFF6
                F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFF6F6BFBFBF7F7FFBFB7FBFF6F6F6080051A351A4FF
                FFFFED40404140404900006DBF7FFBFBFBFBFBFBFB7FBFBF0000404040FFFFFF
                9B414040404040404040404040404040404041404193FF9240404040490052FF
                FFFF075B07FFF707F6F6BFBF7F7FFBFBFB371D5EAFF6F6F6F6F6FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFF6F6F6BFBF7FFBFB7FBFBFF6F6F607525A4900ACFFFFFF414040410000
                000064BF7F3FFBFBFBFBFBFBFB7FBFBF00004940409B9BA44A40404040404040
                40404040404040404040404040409BFF52414940400040A4FFFF08A49BFF5249
                F6F6F6BFBF7FFBFBFBFB1D1D66AFF6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6BF7F
                FBFBFB7FBFF6F6FFF6F6FFFF5BACF6FFFF92404041000000006DBF7FFBFBFBFB
                FBFBFBFBFB7FBFBF000049414149004041404141400440404041404040404040
                404040414040409CFF92404040404140F6F6FFFF00FFFF5BA3F6F6F6BF7FFBFB
                FBFB271E1DA6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6BF7FFBFB7F7FBFF6F6FF
                F608F75A4908FFFF9A4041404000000064BF7FFBFBFBFBFBFBFBFBFBFB7FBFBF
                00004041400049EDE54141408181404040404040404040404040404049404940
                9BFF49414040404092FFFFFF00A4FF4952FFFFF6BFBF7FFBFBFB3727155D08F6
                F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFF6F6BF7FFBFB7FBFF6F6F6F75B520000F7F6FFFF
                004040400000001BBF7F3FFBFB3FFBFBFBFBFBFBFB7FBFBF004040404109F6F6
                E4404040814040898A4040404040404040404040408A40400009F64040414140
                40EDFFFFF7004900EDFFFFF6F6BF7FFBFBFB3F2F155DB7F6FFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFF6F6BF7FFBFB7FBFF6F6F6A400005208FFFFFFF740404040000000BF
                BF7FFBFBFBFBFBFBFBFBFBFBFB7FBF0800404007FFFF524041404040814041E4
                09ED40404040404040404040404040404940FFED404041404040FFFFF65BA4FF
                F69BFFF6F6BF7FFBFBFBFB2F1D1CB7F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6F6FFFFFFFFFFFFFFF6F6BF7FFB
                FB7FBFBFF6F6F6F6FF0041FFF6FF074940494040000A6D7F7FFBFBFBFBFBFBFB
                FBFBFB7F7FBFBF645209FFF64A00004149894040894040E4F6E4404040404040
                4040404940404040404040FF494040404000F6FFF6FF07004041A4F6F6BF7F7F
                FBFBFBFB251D5CA5F6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFF6F6F6F6FFFFFFFFFFF6F6F6F6BF7FFB7F7FBFF6F6F6F6F6
                FFFF00F6FFF6A300404041410012BF7FFBFBFBFBFBFBFBFBFBFB7F7FBFBFF6F6
                FF9B41004A0000FFF640404049404092E49240499B9C8A418189404140404040
                894040E40940404040004908FFFF49499BFFFFF6F6F6BF7FFBFBFBFB2E251C65
                F6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                F6F6F6FFFFFFFFFFFFF6F6F6F6BF7FFBFB7FBFF6F6B652000707A4F6FF074940
                404049000076BF7FFBFBFBFBFBFBFBFBFB3F7FBFBFF6F69B404040410000F6FF
                40404040404040818904409BFFFF9B40404140494949404041404049FF924040
                400049F7FFF6FFED4940495BF6F6BF7FFBFBFBFB3F251C5CF6F6F6F6FFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6FFFFFFFFFFFFF6FFFFFFFFFFFF
                F6F6F6F6BFBFFBFB7FBFBFF6F60800000000F6FFFF9B4049414040001BBF7FFB
                FBFBFBFBFBFBFBFB7FBFBFBFF65B0040494040410007FF9B4040404040404040
                4040409BFFFF9C40404041E50909924141404040ED09404040400052F6FFFFFF
                E44900F7F6F6BF7FFBFBFBFBFB2D131CB7F6F6F6F6FFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFF6F6FFFFFFFFFFFFFFFFFFFFFFF6F6F6BFBFBF7FFBFB
                7FBFF608F6F6FFA34907FFFFFF52404140400052B6BFBF3FFBFBFBFBFBFB7F7F
                BFBFF65B0000000041000000FFFFFFFF40404081404041404040409BFFFF9B40
                404040EDFFFF93404040404049FF924040400000FFFFFF4949F708F6F6F6BFBF
                FBFBFBFBFB37252525B6F6F6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFF6F6FFFFFFFFFFFFFFFFFFFFF6F6F6BFBFBF7F7FFBFB7FBFF6F607F75A49
                52FFFFFF0700404040400052BFBFBF7FFBFBFBFB7F7FBFBFAD5B000000490000
                000053F6F608FFA440404081404040404040409207079240404040EDFFF69340
                4040414040ED094040405200F7FFFF0707079B5BF6F6BFBF7FFBFBFBFBFB7F36
                0325BF08F6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6FFFFFFFF
                FFFFFFFFF6F6F6F6BFBFBF7F7FFBFBFB7FBFF6F6084900404909FFFF9C004040
                4040404964BF7F7FFBFBFB7F7FBFBF640A00000040004040009BFF5200524900
                41404040404040404040404049494040404049EDFFF69B404041404040920992
                4040400000FFFF0749000052F6F6F6BF7FFBFBFBFBFBFB7F362D6D76BF08F6F6
                F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6BFBF
                BF7F7FFBFBFBFBFBBFBFF6F6FFF6FF9B00FFFFFF92404040414000000064BFBF
                7F7F7FBFBF76120000000048404041009CFFFF0A000052534040404040414040
                4140404000404040404040494A49414040404049404109ED4040404900FFF607
                EDF6FFFFFFF6F6BF7FFBFBFBFBFBFBFBFB7F2503036DBFF6F6F6FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6BFBF7F7F7FFBFBFBFBFBFB
                BFBFF6FF075209FF9BFFFFFF4940404049409C9B0000136EBFBFBFBFAE000000
                49404040494000F7F6F6F6F6F6F6F6FF4A404040494041408A40404141404040
                40404040404041404041404040409BFF4040414000F6FFFFFFFFFFFFFFF6F6BF
                BFFBFBFBFBFBFBFBFBFB7F7FBF25646464F6F6FFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFF6F6F6BF7F7FFBFBFBFBFBFBFBFBBFF6F6FF52004040
                49FFFF09494040404940A4FFF700000A1BBFBFF6520049404049494040409CF6
                F6BFBFBFBFF6F6F64940404140494040F6DC4040404040404140494140404040
                49929B40404092F649404049409BFFFFA4F7F6FFFFF6F6BFBF7FFBFBFBFBFBFB
                FBFBFB7F7F25036464F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFF6F6BFBF7FFBFBFBFBFBFBFBFB7FBFF6F6FF9B52E49249FFFFF740404140
                4140F6F6F6F60A0A0012F6AD0040408140408940404908F6BF7FBFBFBFBFBFF6
                5241414040404041EDDC4040404040404040404040404040E5FF094940408909
                924049404049FF075252FFFFFFFFF6BFBF7FFBFBFBFBFBFBFBFBFBFB7F2D0303
                64F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6BF7FFBFB
                FBFBFBFBFBFBFB7FBFF6F6AC5140495252F6F69B404081404000525BF6F6F65B
                0000FF49404140408140404049EDF6F6BFBF7F7F7FBFBFF60A00414041404140
                40404040404040404040410040404040EDFFFF4940404009DB4040404041FFFF
                F652FFF793A4F6F6BF7FFBFBFBFBFBFBFBFBFBFBFB2D250365F6F6FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6BF7FFBFBFBFBFBFBFBFBFB7F
                BFF6F6FF0852409207FFF652404081404049000013F6F6FF9C07ED0040404140
                404040409BFFF6BFBFBFBFBFBFBFBFF64A404040404140404140404040404040
                4040404040404140EDFFFF4940404009E54040494040FFFFFF52F693499BF6F6
                BF7FFBFBFBFBFBFBFBFBFBFBFB2D250365F6F6FFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFF6F6FFFFFFF6F6BF7FFBFBFBFBFBFBFBFBFB7FBFF6F6FFFFFFF6EE
                FFF6FF49404041400052AD00005BA5F6FFF64A40004941404041404052076464
                6D1B64641B1212640040404040414AE409E54040414040404040004040404040
                E4090949404140E4094040404040FFFFFF5B9B49499BF6F6BF7FFBFBFBFBFBFB
                FBFBFBFBFB2D250365F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6FF
                FFFFF6F6BF7FFBFBFBFBFBFBFBFBFB7FBFF6F6F69B0092EEFFF6FF4040404040
                00A4F6BF120000F7F6FF404000494040814040415C64231B64121B5C1B1B5BAD
                0040404040009BFFFFFF0092E49341404040939B4940404049408A40404040E4
                094140898A4007FFFF520040405207F6BF7FFBFBFBFBFBFBFBFBFBFBFB2D2564
                65F6F6FFFFFFFFFFF6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6FFFFFFF6F6BF7FFBFB
                FBFBFBFBFBFBFB7FBFF6F69B49F75249F6FFFF404040400000B6F6BFBF1B0000
                0707004040404041408141A4F6F6BFBFBFBFBFBFBFBFF6F64940404041005BF6
                F6F600EDFFED89404000FFFFE449404049404040404040DB09404041404007F6
                FF9B53ED07F6FFF6BF7FFBFBFBFBFBFBFBFBFBFBFB2E252565F6F6FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFF6F6FFFFFFF6F6BF7FFBFBFBFBFBFBFBFBFB7F
                BFF6F69B9BFFF60007FFFF404040000000F6BFBFBFBF6D12EE53404040404040
                404040F6F6BF7F7FBF7FBFBF7FBFBFBF00004040000064F6F60740EEFFED4940
                4000EDFF0940404189404040404040D309404040404007FFFFFFFFFF0752FFF6
                BFBFFBFBFBFBFBFBFBFBFBFBFB2E261D6EF6F6F6FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFF6F6BF7FFBFBFBFBFBFBFBFBFB7FBFF6F6ED00004A53
                F6FFFF404000000000F6BF7F7F7F7F6EF652404040404040404040F6F6BFBF7F
                7F7F7F7F7F7FBFBF00004040000064F6F608004A934900000000F6FFED404040
                40404040404040920989404040409BF6FF07F7490052F6F6BF7FFBFBFBFBFBFB
                FBFBFBFBFB2E261D6EF6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFF6F6BF7FFBFBFBFBFBFBFBFBFB7FBFF6F6F6ED004AFFFFFFFF4000000000
                00BFBF7FFBFB7FBFF60A404040404040404040FF5BBFBF7F7F7FFBFBFBFBBFB6
                0000404040006DBFF6F600000000000041414040404089494040404040404092
                0989404041409BFFFF9B0052FFFFFFF6BF7FFBFBFBFBFBFBFBFBFBFB3F2E261D
                66F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6FFFFFFFFF6F6BFBF7FFB
                FBFBFBFBFBFBFB7FBFF6F6FFFFFF07F7FFFFFF000000000000B6BF7FFBFB7FBF
                BF00404040404040404052080000BFBF7F7FFBFBFB7FBFB6004040404000B6BF
                BFBFBFBFB65C120A000000404040404040404000000040E4094040414140EDFF
                FFAC00005207F6F6BF7FFBFBFBFBFBFBFBFBFBFB3F2F261D66F6F6FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFF6FFFFFFFFF6F6BFBF7FFBFBFBFBFBFBFBFB7F
                BFF6F6FF08FF0852FFFFFF0000404000006DBF7FFBFB7FBFBF00404040404040
                4040F6FF0000006D767FFBFBFB7FBFAD004040404000B6BFBF7FBFBFBFBFF6F6
                08F700000040404940000000000A5207ED404081404007F6FFFFF6FF0000F6F6
                BF7FFBFBFBFBFBFBFBFBFBFB3F2F261D66F6F6FFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFF6FFFFFFFFF6F6BFBF7FFBFBFBFBFBFBFBFB7FBFF6F6FFFFF6FFFF
                F6FFFF00004041000064BF7FFBFB7FBFB6004040404040404040FFFFF60A0000
                0ABF7F7FBFBFF6AD004040000000B6BF7F7F7F7F7F7FBFBFBFF6F6F6F6AD0000
                4953F608BFF6F6F6A44940404040A4F6FFA4F6FFFF5208F6BF7FFBFBFBFBFBFB
                FBFBFBFB3F2F261D66F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFF6F6BFBF7FFBFBFBFBFBFBFBFB7FBFF6F6FFFFFFFFFFFFFFFF0040404140
                0012BF7FFB7F7FBFAE004040404040404040EDFFFFFF9C531265BFBFF6F6F6A4
                004000000000767F7FFBFBFBFBFB7F7F7FBFBFBFF6F6645CA4ADF6BFBFBFF6AD
                004081404049A4FFFF52000000A4F608BF7FFBFBFBFBFBFBFBFBFBFB3F2F261D
                66F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6BFBF7FFB
                FBFBFBFBFBFBFB7FBFF6F6FFF7F7524AFFFFFF00404040400012BF7F7F7F7FBF
                B6004040404040404040F6F6EDFFF6F6F65CF6F6F6FFFFE4404000000000767F
                FBFBFBFBFBFBFBFBFBFB7F7FBFBF1B12A4F6BFBFBFBFBF64004940894000F6F6
                FFFFFFF5F7A5F6F6BF7FFBFBFBFBFBFBFBFBFBFB3F2F261D6EF6F6FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6BFBF7FFBFBFBFBFBFBFBFB7F
                BFF6F60749009B009BFFFFF7404049400000BFBF7F7F7FBFF600004040404041
                40414040414141414A53414A41404141400000000000BF7FFBFBFBFBFBFBFBFB
                FBFBFBFB7F7F1B0012BFBF7F7F7FBF12004140404900FFFFF6FFFFFF499CF6F6
                BF7FFBFBFBFBFBFBFBFBFBFBFB371D66B7F6F6FFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFF6F6BFBF7FFBFBFBFBFBFBFBFB7FBFF6F6FF4A09F652
                9BFFFFED404041404000F6BF7F7F7FBFBF000040404149400000004141410000
                0000004140404040404000000000BF7FFBFBFBFBFBFBFBFBFBFBFBFBFB7F7603
                6DBF7F7F7F7FBF12004141494000FFF60800529B00FFF6BFBF7FFBFBFBFBFBFB
                FBFBFBFB7F2F141DB7F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFF6F6BFBF7F7F7FFBFBFBFBFBFB7FBFF6F6074A93F600A4FFFF0741404040
                4000ADBFBF7F7FBFBF6D529B4940404152524A4900004A53534A004A52415249
                404000000000BF7FFBFBFBFBFBFBFBFBFBFBFBFBFB7F7F7F7FBF7F7F7FBF760A
                00414041409BF6FFFFA3524900FFF6F6BF7FFBFBFBFBFBFBFBFBFB7F77261C66
                BFF6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6FFFFFFFFF6F6BFBFBF
                7F7FFBFBFBFBFBFBBFBFF6F6F600005BFFFFFFF65240404040001264BFBFBF7F
                BFBFF6F692404109F608F6F6F6F6F6F6F6FFF6F6F6FF0749404000000000BF7F
                FBFBFBFBFBFBFBFBFBFBFBFBFBFB7F7F7F7FFBFB7FBF6400004140400007FFFF
                A4FFFF9B00F6F6BF7F7FFBFBFBFBFBFBFBFB7F7F7F25146508F6F6FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFF6F6F6FFFFFFFFF6F6F6BFBFBFBF7FFBFBFBFBFB
                7FBFF6F6F6FFFFFF49FFFFFF9B0040494040000A1CBFBFBFBFF6F6FF92404909
                FFF6F6F6BFBF761B0A00B6F6F6F6FF00404040000000BF7FFBFBFBFBFBFBFBFB
                FBFBFBFBFBFBFBFBFBFBFBFB7FBF12000041404100FFFFFF009BFF0852F6F6BF
                7FFBFBFBFBFBFBFBFB7F7F76656EB7F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFF6F6F6F6FFFFFFFFF6F6F6F6BFBFBF7FFBFBFBFB7FBFBFF607490049
                00A4FFFFF700004940400000000AB6BFBFF60A535200419B07F6F6BF7F7FBF7F
                1C00000A07F6F69A404040404000BF7FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB
                FBFBFBFB7F7600004041404049FFFFFFED00520708F6BFBF7FFBFBFBFBFBFB7F
                7F7F6DB6BFF6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6F6
                FFFFFFFFF6F6F6F6F6F6BFBF7FFBFBFB7F7FBFBFF65200499B00FFFF08000049
                4040414000000064F6B60000000000004AA5BF7F7FFB7F7F7664000000F7FF49
                404040404000BF7FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB7F1C0000
                41414000A3FFFFF6FF490051F6F6BFBF7FFBFBFBFBFB3F36777FF6F6F6F6F6FF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6FFFFFFFFFFFFF6F6F6
                F6F6F6BFBF7FFBFBFB7FBFBFF6529B529B00FFF6F60000494040408AED53000A
                08AD000000000000005CBF7FFBFBFB7F7FBFBF1200005B52404940404000BFBF
                7F7FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBBF12004149404049F6FFFF52
                00004911F6F6BFBF7FFBFBFBFB36250376BFF6F6F6F6FFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6BF7FFBFB
                FB7FBFF6F65252FFF64907FFFFF700404040414093FFA400A4085B5B5B524A0A
                531BBFBF7FFBFBFBFBFB7F7F030A0000404940404000001BBFBF7FFBFBFBFBFB
                FBFBFBFBFBFBFBFBFBFB7F7F6400004940404049FFFFFF5207FFFFF6FFF6BFBF
                FBFBFBFB7F1C2625F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6BFBF7FFB7F7FBFBFF6F607FF
                FFF79BFFFF0849404140404100A4F6F652F6FFFFFFFFFFF6F6F6BF7FFBFBFBFB
                FBFBFB7F7F76120040404040404100000A64BF7F7FFBFBFBFBFBFBFBFBFBFBFB
                FB7F7F7611004140414000A5F6FF07A4FFFFFFFFFFF6BFBFFBFBFBFB7F1D256E
                F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFF6F6BF7F7FFB7FBFBFF6F6F74949494AF6FFFFA440
                404140404149F7FFFF07A4F5FFFFF6FFF6F6BF7FFBFBFBFBFBFBFB7FBFBFAD00
                404040404949F712000A6DBFBF7F7FFBFBFBFBFBFB7F7F7FBFBFBF1B00004140
                414149F6F6F607414052FFFFF6F6BF7FFBFBFBFB37251DB7F6FFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFF6F6BFBF7FFB7F7FBFF6F6EE53A4F7529CFFFFFF414041414040490052
                FFFFF749494A525BA4BFBF7F7FFBFBFBFB7F7FBFBFBFF600404040404052F6F6
                640A001B76BFBF7F7F7FBFBFBFBFBFBFBFBF6400000040414000F7F6F607EE52
                4A00FFFFF6F6BF7FFBFBFBFB26251CBFF6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6BF7F
                FBFB7FBFBFF6F6F6F6FFED52FFFFFF9B40414041414000005207FF5200000049
                5CF6BFBF7F7F7F7F7F7FBFBFBFF6F600414941404049F6F6AD520000121B031B
                1B130A0A0A0A0A0000000000404141400049F6F6FFF70049E54AFFF6F6BFBF7F
                FBFBFB7F25251CF6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6BF7FFBFB7F7FBFF6F6FF
                F6FFFFF6FFFFF607404040408A4049404041FFFFFFFFFFFFF6F6BFBFBFBFBFBF
                BFBF031B5B645B004040404940409B5300520000000000000000000000000000
                000000414040494000EDFFFFED9BA440009BFFF6F6BF7FFBFBFB3F371E1D66F6
                F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFF6BFBFFBFBFB7FBFF6F6FFF6FFFFFF07F6FFFF
                9B0040414041414140404092E5ED9B4100000000000000000000000000000041
                4040404140404900004941000000000040414040404040414141414040404041
                93FF07FF524AFFF6F7F7FFF6BFBF7FFBFBFB372F1E1DB7F6FFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFF6F6BF7FFBFB7FBFBFF6FFFFFFF6A400F7F6F6FF49404041414040
                49404040404040404140000000000041410000000000408A4041404040494041
                494000000040404041414040404040404040414040494041F6FFFFED40F69352
                F6F6F6F6BF7FFBFBFBFB37271E15BFF6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6BF
                7FFBFBFB7FBFF6F6F6F70049EDFFFFF6FFFF4049404141404049404041414040
                4040404040404140414140410049414089404041414000000040414140404040
                404140404004048104814041404040A4FFFFFF008A934900F7F6F6F6BF7FFBFB
                FBFB271E156FF6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6BF7FFBFBFB7FBFF6F6
                F60700494A0052FFFFFFF7404141404940414040404040404041404140414049
                404040000000494041414140400049490000000000499B9B4900404941400404
                04894040404992F6F6FFFFE549404AA4F6F6F6BF7FFBFBFBFB3F271E1DAFF6F6
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFF6F6FFFFF6F6BF7FFBFB7FBFBFF6F6F6F6F7490052F6
                FFFFFF9B4040414041404104400404404040494040004040499B5252525BA400
                414040400052A46464A4525249530708F7A4A4514040404081408940404AF6FF
                F6F6FFFF099349FFF6F6BFBF7FFBFBFB3F2F271E66BFF6F6F6F6FFFFF6FFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFF6F6FFFFF6F6BF7FFBFBFB7FBFBFF6F6F65249A4F60708FFFFFF4A404040
                49404040048181814140409B07A4494952F7FFFFF6F60800494040400064F6F6
                BFF6F65C00005207F6F60700004040404040404940F6FFFFF6F607A452FF07F6
                F6BFBF7FFBFBFBFB3727271DB7F6F6F6F6F6F6F6F6F6FFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6FFFFFFF6
                BFBF7FFBFB7F7FBFF6F6F6F7FFF6524A4AFFFFFFF6494040414140404081898A
                89494049F6F60753490007F6F6F6070040404040005BBFBFBFBFBFBF650A0000
                9BFF5B004040404040494040EDFFFFF65BF7529B00FFF6F6F6BF7FFBFBFBFB3F
                2F1E2666BFF6F6F6F6F6F6F6F6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6FFFFFFF6F6BF7FFBFBFB7FBF
                BFF6F6F6FF9B4A099300FFFFF6F6524140494140404041498A8A410000ADF6F6
                0A00000AADF6F60040494040005BBFBFBFBFBFBFF60752000049004041404040
                49004907FFFFFFFF07004A9B0007F6F6BF2D7FFBFBFBFB37271E266FF6F6F6F6
                F6F6F6F6F6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFF6F6FFFFFFFFF6BF7FFBFBFB7F7FBFF6F6F6FF499BFF
                ED00FFF6F6FFFF49414141404040404041494140000053F6F6A40A000AB60800
                40404040001ABFBFBFBFBFBFF6079B41404040404041404149009BFFFFFFED9B
                A4A44941FFF6F6BFBF7FFBFBFBFB3F2F271E26BFF6F6F6F6F6F6F6F6F6F6F6F6
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFF6BF7F7FFBFBFB7FBFBFBFF6F69B499B0052FFF6FFFFFF07
                41404040404040404040404140400000A4F6F65200005240400404400012BFBF
                BFBFBF765B000040414141404141404000A5FFFFFFA4000049FFF600F6F6F6BF
                7FFBFBFBFBFB3F2F271E1EBFF6F6F6F6F6F6F6F608F6F6F6F6F6F6FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6
                F6BFBF7FFBFBFBFB7F7FBFBFF6F607529AFF480007FFF6FFFF49404040414040
                404040404040000049A3F6F6F7524040400481404052F6F6BF64000000004040
                4040414041404041F6FFFFFFFF49F7FF0052FFFFFFF6BFBFFBFBFBFBFBFBFB37
                271E1E6FBFF6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6FFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6F6BFBF7FFBFBFBFB
                FB7FBFBFBFF6F6FFF5920009F59AFFFFFFFF9B49404040404140404040404940
                0000525B52494041814081404141525211000000404040404040409240009BF6
                F6FFFFFFFF49A4F65252FFFFF6F6BF7FFBFBFBFBFBFBFB3F2F1E1E67B7F6F6F6
                F6F6F6F6F6F6BF080808F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6BF7F7FFBFBFBFBFBFB77BFBFF6F6F6
                ED009B490049A4FFFFFFFF9C0040404040404041404040404040404040404040
                4040404040400000000040404040404040404049409BFFFFF6FFF7A4075A4949
                5A07FFF6F6BF7FFBFBFBFBFBFBFBFB3F2F1F1E67B7F6F6F6F6F60808BFBFBFBF
                BFBFF6F6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFF6F6BF7FFBFBFBFBFBFBFB7F7FBFBFF6F6089A094000FFFFF6
                F6F6FFFF079B4940404040404040404040404040404040404040404040404040
                404040404040404040414049F6FFFFFFFFA400494908F749FFFFF6F6BF7F7FFB
                FBFBFBFBFBFBFBFB2F271E1E6FBFF6F6F6F608BFBFBFBFB7B7B7B7BFF6F6F6F6
                F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6FFFFFFFFF6
                F6BF7FFBFBFBFBFBFBFBFB7FBFBFBFF6F6F64848E4F6085251F6F6FFFFFFF652
                4040404040404041414040404040404040404040404140404040404040404040
                4049E4F6FFFFFFFFF700FFF6005BFFFFFFF6F6BF7F7FFBFBFBFBFBFBFBFBFBFB
                37271E1E66B7F6F6F6F6EFBFBFB7B7B7B7B7B7B7BFF6F6F6F6F6F6FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6FFFFFFFFF6F6BF7FFBFBFBFBFB
                FBFBFB7F7F7FBFBFF6F608F609F59B5B08F652F6F6F6FFFFA492494040404040
                404040404041414040404040404040494041404040404092EDF6FFFFFFFF9B9B
                F700FFFF0052F6F6F6F6BFBF7FFBFBFBFBFBFBFBFBFBFBFB372F1E1E66B7F6F6
                08F6EFBFB7B7B7B7B7B7AFB7B7B7BFF6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFF6FFFFFFFFF6F6BF7FFBFBFBFBFBFBFBFBFB3F7F7FBF
                BFF6F6FF9A004907080752525BF6F6FFFFFFF6A4494040404040404040404040
                4040494940404040404040404092EDFFFFFFF6FFF65B52F7085B0000A3FFF6F6
                F6BF7F7FFBFBFBFBFBFBFBFBFBFBFBFB3F2F261D1EB7F60808F6EFEFB7B7B7B7
                B7B7AFAFB7B7B7B7BFBFF6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFF6F6BFBF7FFBFBFBFBFBFBFBFBFBFBFB7FBFBF08F6FFF6495A
                F6AC005B5252F6F6F6FFFFFFFFF6F74900004040404040404040404040404040
                40499BEDFFFFFFFFFFF6F6F69B0AF6FFFFFF07F6FFF6F6F6BF7FFBFBFBFBFBFB
                FBFBFBFBFBFBFBFB3F37261D1DB7F60807F6EFEFEFB7B7B7B7B7AFAFAFAFAFAF
                AFB7F6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6
                F6F6BF7FFBFBFBFBFBFBFBFBFBFBFBFB7FBFBFF6F6F6FF079B0000525B07F607
                F7FFFFFFFFFFFFFFFFFF9B9B49524092404040498A40A4FFF6FFFFF6FFF6F6FF
                F6F6F6F65B00FFFF49A4FFFFF6F6F6BF7F7FFBFBFBFBFBFBFBFBFBFBFBFBFB7F
                772F1425B7BFF6F6F6F6EFEFB7B7B7B7B7AFB7B7AFAF6F6FAFAFB7F6F6F6F6F6
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6BFBF7FFBFBFB
                FBFBFBFBFBFBFBFBFB7FBFBFF6F6F6F6F752F79BFFFFFF490049EEFFFFF6FFFF
                FFFFFFF6FFFFF6FFFFFFF6FFF6F6FFFFFF08FFFFF6FFFF9B4900F7F6F7000000
                4AFFFFF6F6F6BF7F7FFBFBFBFBFBFBFBFBFBFBFBFBFB7F7F2E1D66B7BFF6F6F6
                F6F6EFEFEFB7B7B7B7B76F6F6F6F6F6FAFAFAFEFF6F6F6FFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6F6BF7FFBFBFBFBFBFBFBFBFBFBFB
                FBFB7FBFBFBFF6F6F6F70000A4FF9B5208ED00A452A4FFFFFFFFF6FFFFFFFFF6
                F6FFFFF6FFFFF6FFFFF6F6F64AA40049FFFFFFFFFF075BF7F6F6F6F6BFBF7FFB
                FBFBFBFBFBFBFBFBFBFBFBFBFB7F7F2E1D25BFF6F6F6F6F6F6F6EFEFEFB7B7B7
                B7B76F6F6F6FAFAFAFAFAFEFF6F6F6F6FFF6FFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFF6F6FFFFF6F6F6BF7FFBFBFBFBFBFBFBFBFBFBFBFB3F7FBFBFBFF6
                F6F6F69BFFFFA4000052FFF60000000049F7F7FFFFFFF6FFF6F6F6FFA4FFF6A4
                FFA40052499B52F7FFFF52FFF6F6F6F6F6F6F6F6BF7FFBFBFBFBFBFBFBFBFBFB
                FBFBFBFB7F7F251365BFF6F6F6F6FFFFF6F6F6EFEFB7B7B7B7AFB7B7AFAFAFAF
                AFAFAFEFEFF6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFF6F6BFBF7FFBFBFBFBFBFBFBFBFBFBFBFBFB7F7FBFBFBFBFF6F6F6F64A00
                9C53FF4A00FFFF0852005B00A5FF9C0052F6FFAD00FFFF009B5249FF4953A441
                EE4949FFF6F6F6F6BFBFBFBF7FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB7F251365
                BFF6F6F6F6F6FFFFFFFFF6F6EFB7B7AFAFAFAFAFAFAFAFAFAFAFA6A6A6AE07F6
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6BFBF7F
                FBFBFBFBFBFBFBFBFBFBFBFBFBFB7F7FBFBFF6BFF6F6F6AE495BFF5249FFFFFF
                5252539BFF4949079BADF6F700FFFF00535200FF5349FF9B00A4F6F6F6F6BFBF
                BF7F7F7FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB7F2E1303BFF6F6FFFFFFFFFFFF
                FFF6F6F6EFB7B7AFAFAF6F6FAFAFAFAFAFAFA6A6A6AE0708F6FFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFF6F6FFFFFFFFFFFFFFFFF6F6BF7FFBFBFBFBFBFBFBFB
                FBFBFBFBFBFBFBFB7F7FBFBFBFBFF6F6F607F6529BFFF6FF52005BF6FF00A4FF
                FF07FFEE52F6FF49495200F6F749FFFFFFFFF6F6F6BFBF7F7F7FFBFBFBFBFBFB
                FBFBFBFBFBFBFBFBFBFB3F2F1C25BFF6F6FFFFFFFFFFFFF6F6F6F6F6EFB7AFAF
                AFAF67A7AFAFB7B70808EFEFEF0708F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFF6F6FFFFFFFFFFFFFFFFFFF6F6BF7F7FFBFBFBFBFBFBFBFBFBFBFBFBFBFB
                FBFB7FBFBFBFBFF6F6F6F6F6F6F6F6F60A495200FF52499C539BA5520052A553
                49A453F6FFFFF6F6F6F6F6BFBFBF7F7FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB
                FBFB371D25BFF6F6FFFFFFFFFFFFFFF6F6F6F6F6EFB7AFAFAFAFAFAFB7B7F6F6
                F6F6F6F6F6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFF6F6F6F6BF7FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB7F7FBFBF
                BFF6F6F6F6FFFFFFFFFFF7FFFFF6A452A5F6A4A4F70708FFFFFFF6F6F6F6F6F6
                F6BFBF7F7FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB3F361BAEF6F6F6F6
                FFFFFFFFFFFFFFF6F6F6F6F6BFB7AFAFA7A7A7AFAFEFF6F6F6F6FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFF6BFFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB7F7F7FBFBFBFF6F6F6F6F6
                F6F6F6F6F6F6F607F6F6F6F6F6F6F6F6F6F6F6F6F6F6BFBFBF7F7FFBFBFBFBFB
                FBFBFBFBFBFBFBFBFBFBFBFBFB7F7FFB372DAE08F6F6F6F6FFFFFFFFFFFFFFFF
                F6F6F6BFB7B7AFAFAFA7A7A7AFEFF6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6BFBFBFBF7F7F
                7F7F377F7F7F7F7F7F7F7FFBFBFB7F7F7F7FBFBFBFBFBFF6F6F6F6F6F6F6F6F6
                F6F6F6F6F6F6F6F6F6F6BFBFBFBFBFBF7FFBFBFBFBFBFBFBFB7F2D2E777F7F7F
                7F7FBFBFBFBF77251C1CF6F6F6F6F6FFFFFFFFFFFFFFFFFFF6F6EFB7B7B7AFAF
                AFAFA7A7A7AFF6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6BFBFBFBFBFBFBF7677BFBFBFBF
                BFBF7F7F7F7F7F7F7F7F7F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
                BFBFBF7F7F7F7F7FFBFBFBFBFBFBFBFB7F7F6D6EB7BFBFBFBFBFBFBFBFBFB76D
                6D6EF6F6F6F6F6FFFFFFFFFFFFFFFFF6F607EFB7B7B7AFAFAFAFAFAFA7AFAFEF
                F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFF6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6BFBFBF7F7F7F
                FBFBFBFBFB7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7FFBFBFBFBFBFB
                FBFBFBFBFBFB7F7F7E76F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6FFFFFF
                FFFFFFFFFFFFFFF6F607EFEFEFB7AFAFAFAFB7AFAFA7A7AFAFEFF6F6F6F6FFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFF6F6F6F6F6F6F6F6F6F6F6F6F6BFBFBF7F7F7F7FFBFBFBFBFBFB
                FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB7F7F7FBF
                BFBFF6F6F6F6F6F6F6F6F6F6FFF6FFFFFFF6FFF6FFFFFFFFFFFFFFFFFFFFFFF6
                F608EFEFB7B7AFAFAFAFAFAFAFAFA767A7AFF6F6F6F6FFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFF6F6F6FFFFFFFFFFF6F6F6BFBFBFBF7F7F7F7FFBFBFBFBFBFBFBFBFBFBFB
                FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB7F7F7FBFBFF6F6F6F6FFFFFFFFFF
                FFFFF6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6EFEFEFB7B7AF
                AFAFA7AFAFAF676767A7AFF6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFF6F6F6F6BFBFBFBFBF7F7FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB
                FBFBFBFBFBFBFB7F7F367FBFBFF6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6EFB7B7AFAFAFA7A7AFA76767
                67A7A7EFF6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6
                F6F6BFBFBF7F7FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB2D1C
                76BFF6F6F6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFF6F6F6F6EFB7AFAFB7AFAFA7A767676767AF5EA6F6F6F6
                FFF6FFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6F6F6F6BFBF7FFB
                FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB371C1CB7F6F6F6F6FFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFF6F6F6F6F6F6EFEFAFA7A7A767676767675FA7A7A7F6F6F6FFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6F6BF7F7FFBFBFBFBFBFBFBFB
                FBFBFBFBFBFBFBFBFBFBFBFB7F251B6DF6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6F6F6F6
                EFEFAFAFA7A7676767675FA7A7A7AFF6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFF6F6BFBF7FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB
                FBFBFB7F371C1CBFF6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6F6F6F6F6EFEFAFA76767
                67675F5FA7675EAFF6F6F6F6FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6FFFF
                FFFFFFFFF6F6BF7FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB7F2D1B6508
                F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6F6EFAFA7675F5F5FA75F5F5F5E
                A7F6F6F6F6F6FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6FFFFFFFFFFFFF6F6BFBF
                7FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB36031BAEF6F6FFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFF6F6F6F6B7A75F5F675F5F5F5F565EAFF6F6F6F6FFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6FFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFF6F6FFFFFFFFFFFFF6F6BFBF7F7F7F7F7F7F7F7F
                7F7F7F7F7F7F7F7F7F7F7F36036DBFF6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFF6F6F6F6B7A75F67575FA757579F5EEFF6F6F6FFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFF6F6BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
                BFBFBF766EBFF6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6F6
                AFA75EA75F575F5F5F57AFBFF6F6F6FFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFF6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6F6EFAF675F5757
                5F5F5667B7F6F6FFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFF6F6F6F6F6F6F6F6F6F6F6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6B7A75F5F5F5F175EAFF6F6FF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFF6F6F6F6AFA75F5F675656AFF6FFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFF6F6F6B7AF675F5656A7F6F6FFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6
                F6EF5E56559EEFEFF6FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6EFA7554C545D
                EFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6F6EFA6544B9DF6FFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFF6F6F6A55353FFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFF6EFA6FFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                F6F6FFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFF6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFF6F6F6F6FFFFFFFFFFFFFFFFFFF6F6FFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6FFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6FFFFFFFFFF000000}
              Stretch = True
            end
            object QRLabel3: TQRLabel
              Left = 439
              Top = 88
              Width = 82
              Height = 18
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                47.625000000000000000
                1161.520833333333000000
                232.833333333333300000
                216.958333333333300000)
              XLColumn = 0
              Alignment = taCenter
              AlignToBand = True
              AutoSize = True
              AutoStretch = False
              Caption = 'Billing Period'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 10
            end
            object OCReportTitle: TQRLabel
              Left = 328
              Top = 65
              Width = 303
              Height = 23
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                60.854166666666670000
                867.833333333333300000
                171.979166666666700000
                801.687500000000000000)
              XLColumn = 0
              Alignment = taCenter
              AlignToBand = True
              AutoSize = True
              AutoStretch = False
              Caption = 'Monthly Other Charges Summary'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -19
              Font.Name = 'Arial Rounded MT Bold'
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 14
            end
            object QRLabel13: TQRLabel
              Left = 393
              Top = 48
              Width = 173
              Height = 18
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                47.625000000000000000
                1039.812500000000000000
                127.000000000000000000
                457.729166666666700000)
              XLColumn = 0
              Alignment = taCenter
              AlignToBand = True
              AutoSize = True
              AutoStretch = False
              Caption = 'Gen. Luna St., Dipolog City'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial Rounded MT Bold'
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 10
            end
            object QRLabel14: TQRLabel
              Left = 443
              Top = 32
              Width = 73
              Height = 18
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                47.625000000000000000
                1172.104166666667000000
                84.666666666666670000
                193.145833333333300000)
              XLColumn = 0
              Alignment = taCenter
              AlignToBand = True
              AutoSize = True
              AutoStretch = False
              Caption = '( ZANECO )'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial Rounded MT Bold'
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 10
            end
            object QRLabel15: TQRLabel
              Left = 265
              Top = 14
              Width = 429
              Height = 18
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                47.625000000000000000
                701.145833333333300000
                37.041666666666670000
                1135.062500000000000000)
              XLColumn = 0
              Alignment = taCenter
              AlignToBand = True
              AutoSize = True
              AutoStretch = False
              Caption = 'ZAMBOANGA DEL NORTE ELECTRIC COOPERATIVE, INC.'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Arial Rounded MT Bold'
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 11
            end
            object QRLabel16: TQRLabel
              Left = 9
              Top = 128
              Width = 80
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                23.812500000000000000
                338.666666666666700000
                211.666666666666700000)
              XLColumn = 0
              Alignment = taLeftJustify
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
            object QRLabel17: TQRLabel
              Left = 177
              Top = 128
              Width = 79
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                468.312500000000000000
                338.666666666666700000
                209.020833333333300000)
              XLColumn = 0
              Alignment = taLeftJustify
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
            object QRLabel18: TQRLabel
              Left = 366
              Top = 128
              Width = 65
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                968.375000000000000000
                338.666666666666700000
                171.979166666666700000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Date Entered'
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
              Left = 470
              Top = 128
              Width = 36
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1243.541666666667000000
                338.666666666666700000
                95.250000000000000000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Months'
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
              Left = 550
              Top = 128
              Width = 38
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1455.208333333333000000
                338.666666666666700000
                100.541666666666700000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Amount'
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
              Left = 622
              Top = 128
              Width = 25
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1645.708333333333000000
                338.666666666666700000
                66.145833333333330000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Billed'
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
              Left = 710
              Top = 128
              Width = 38
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1878.541666666667000000
                338.666666666666700000
                100.541666666666700000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Amount'
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
            object QRLabel23: TQRLabel
              Left = 800
              Top = 128
              Width = 21
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                2116.666666666667000000
                338.666666666666700000
                55.562500000000000000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Paid'
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
            object QRLabel24: TQRLabel
              Left = 886
              Top = 128
              Width = 38
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                2344.208333333333000000
                338.666666666666700000
                100.541666666666700000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Amount'
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
          object DetailBand2: TQRBand
            Left = 48
            Top = 226
            Width = 960
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
              2540.000000000000000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbDetail
            object QRDBText10: TQRDBText
              Left = 8
              Top = 7
              Width = 77
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                21.166666666666670000
                18.520833333333330000
                203.729166666666700000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = MSumm
              DataField = 'AccountNumber'
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
            object QRDBText11: TQRDBText
              Left = 96
              Top = 7
              Width = 76
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                254.000000000000000000
                18.520833333333330000
                201.083333333333300000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = MSumm
              DataField = 'ConsumerName'
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
            object QRDBText12: TQRDBText
              Left = 366
              Top = 7
              Width = 62
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                968.375000000000000000
                18.520833333333330000
                164.041666666666700000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = MSumm
              DataField = 'DateEntered'
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
            object QRDBText13: TQRDBText
              Left = 470
              Top = 7
              Width = 36
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1243.541666666667000000
                18.520833333333330000
                95.250000000000000000)
              XLColumn = 0
              Alignment = taCenter
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = MSumm
              DataField = 'Months'
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
            object QRDBText14: TQRDBText
              Left = 550
              Top = 7
              Width = 38
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1455.208333333333000000
                18.520833333333330000
                100.541666666666700000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = MSumm
              DataField = 'Amount'
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
            object QRDBText15: TQRDBText
              Left = 614
              Top = 7
              Width = 40
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1624.541666666667000000
                18.520833333333330000
                105.833333333333300000)
              XLColumn = 0
              Alignment = taCenter
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = MSumm
              DataField = 'billcount'
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
              Left = 687
              Top = 6
              Width = 61
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1817.687500000000000000
                15.875000000000000000
                161.395833333333300000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = MSumm
              DataField = 'billedamount'
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
              Left = 785
              Top = 7
              Width = 48
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                2076.979166666667000000
                18.520833333333330000
                127.000000000000000000)
              XLColumn = 0
              Alignment = taCenter
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = MSumm
              DataField = 'paidcount'
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
              Left = 867
              Top = 6
              Width = 57
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                2293.937500000000000000
                15.875000000000000000
                150.812500000000000000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = MSumm
              DataField = 'paidamount'
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
          end
          object SummaryBand2: TQRBand
            Left = 48
            Top = 255
            Width = 960
            Height = 27
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
              71.437500000000000000
              2540.000000000000000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbGroupFooter
            object QRExpr2: TQRExpr
              Left = 480
              Top = 6
              Width = 107
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1270.000000000000000000
                15.875000000000000000
                283.104166666666700000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = True
              Transparent = False
              WordWrap = True
              Expression = 'SUM(MSumm.Amount)'
              Mask = '#,###.00'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRExpr3: TQRExpr
              Left = 617
              Top = 6
              Width = 131
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1632.479166666667000000
                15.875000000000000000
                346.604166666666700000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = True
              Transparent = False
              WordWrap = True
              Expression = 'SUM(MSumm.BilledAmount)'
              Mask = '#,###.00'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRExpr4: TQRExpr
              Left = 797
              Top = 6
              Width = 127
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                2108.729166666667000000
                15.875000000000000000
                336.020833333333300000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = True
              Transparent = False
              WordWrap = True
              Expression = 'SUM(MSumm.PaidAmount)'
              Mask = '#,###.00'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRLabel25: TQRLabel
              Left = 352
              Top = 6
              Width = 67
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                931.333333333333300000
                15.875000000000000000
                177.270833333333300000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Account Total'
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
          object QRGroup1: TQRGroup
            Left = 48
            Top = 196
            Width = 960
            Height = 30
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
              79.375000000000000000
              2540.000000000000000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            Expression = 'MSumm.accountcode'
            FooterBand = SummaryBand2
            Master = QuickRep2
            ReprintOnNewPage = False
            object QRDBText9: TQRDBText
              Left = 295
              Top = 6
              Width = 64
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                780.520833333333300000
                15.875000000000000000
                169.333333333333300000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = MSumm
              DataField = 'BillingType'
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 10
            end
            object QRDBText8: TQRDBText
              Left = 135
              Top = 6
              Width = 64
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                357.187500000000000000
                15.875000000000000000
                169.333333333333300000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = MSumm
              DataField = 'description'
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 10
            end
            object QRDBText7: TQRDBText
              Left = 7
              Top = 6
              Width = 75
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                18.520833333333330000
                15.875000000000000000
                198.437500000000000000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = MSumm
              DataField = 'accountcode'
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 10
            end
          end
          object QRBand1: TQRBand
            Left = 48
            Top = 282
            Width = 960
            Height = 30
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
              79.375000000000000000
              2540.000000000000000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbSummary
            object QRExpr5: TQRExpr
              Left = 481
              Top = 6
              Width = 107
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1272.645833333333000000
                15.875000000000000000
                283.104166666666700000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = False
              Transparent = False
              WordWrap = True
              Expression = 'SUM(MSumm.Amount)'
              Mask = '#,###.00'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRExpr6: TQRExpr
              Left = 617
              Top = 6
              Width = 131
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1632.479166666667000000
                15.875000000000000000
                346.604166666666700000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = False
              Transparent = False
              WordWrap = True
              Expression = 'SUM(MSumm.BilledAmount)'
              Mask = '#,###.00'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRExpr7: TQRExpr
              Left = 797
              Top = 6
              Width = 127
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                2108.729166666667000000
                15.875000000000000000
                336.020833333333300000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = False
              Transparent = False
              WordWrap = True
              Expression = 'SUM(MSumm.PaidAmount)'
              Mask = '#,###.00'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRLabel26: TQRLabel
              Left = 357
              Top = 6
              Width = 62
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                944.562500000000000000
                15.875000000000000000
                164.041666666666700000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Overall Total'
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
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Other Charges Billing'
        ImageIndex = 2
        object QuickRep3: TQuickRep
          Left = 67
          Top = 33
          Width = 816
          Height = 1056
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          DataSet = OCBilling
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
          PrevFormStyle = fsStayOnTop
          PreviewInitialState = wsMaximized
          PrevInitialZoom = qrZoomToWidth
          PreviewDefaultSaveType = stQRP
          PreviewLeft = 0
          PreviewTop = 0
          object QRBand2: TQRBand
            Left = 48
            Top = 48
            Width = 720
            Height = 148
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
              391.583333333333300000
              1905.000000000000000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbColumnHeader
            object QRSysData3: TQRSysData
              Left = 0
              Top = 99
              Width = 68
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                0.000000000000000000
                261.937500000000000000
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
            object QRImage3: TQRImage
              Left = 8
              Top = 8
              Width = 105
              Height = 89
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                235.479166666666700000
                21.166666666666670000
                21.166666666666670000
                277.812500000000000000)
              XLColumn = 0
              Picture.Data = {
                07544269746D61700E750000424D0E750000000000003604000028000000B500
                00009D0000000100080000000000D8700000C40E0000C40E0000000100000000
                000000000000000080000080000000808000800000008000800080800000C0C0
                C000C0DCC000F0CAA6000020400000206000002080000020A0000020C0000020
                E00000400000004020000040400000406000004080000040A0000040C0000040
                E00000600000006020000060400000606000006080000060A0000060C0000060
                E00000800000008020000080400000806000008080000080A0000080C0000080
                E00000A0000000A0200000A0400000A0600000A0800000A0A00000A0C00000A0
                E00000C0000000C0200000C0400000C0600000C0800000C0A00000C0C00000C0
                E00000E0000000E0200000E0400000E0600000E0800000E0A00000E0C00000E0
                E00040000000400020004000400040006000400080004000A0004000C0004000
                E00040200000402020004020400040206000402080004020A0004020C0004020
                E00040400000404020004040400040406000404080004040A0004040C0004040
                E00040600000406020004060400040606000406080004060A0004060C0004060
                E00040800000408020004080400040806000408080004080A0004080C0004080
                E00040A0000040A0200040A0400040A0600040A0800040A0A00040A0C00040A0
                E00040C0000040C0200040C0400040C0600040C0800040C0A00040C0C00040C0
                E00040E0000040E0200040E0400040E0600040E0800040E0A00040E0C00040E0
                E00080000000800020008000400080006000800080008000A0008000C0008000
                E00080200000802020008020400080206000802080008020A0008020C0008020
                E00080400000804020008040400080406000804080008040A0008040C0008040
                E00080600000806020008060400080606000806080008060A0008060C0008060
                E00080800000808020008080400080806000808080008080A0008080C0008080
                E00080A0000080A0200080A0400080A0600080A0800080A0A00080A0C00080A0
                E00080C0000080C0200080C0400080C0600080C0800080C0A00080C0C00080C0
                E00080E0000080E0200080E0400080E0600080E0800080E0A00080E0C00080E0
                E000C0000000C0002000C0004000C0006000C0008000C000A000C000C000C000
                E000C0200000C0202000C0204000C0206000C0208000C020A000C020C000C020
                E000C0400000C0402000C0404000C0406000C0408000C040A000C040C000C040
                E000C0600000C0602000C0604000C0606000C0608000C060A000C060C000C060
                E000C0800000C0802000C0804000C0806000C0808000C080A000C080C000C080
                E000C0A00000C0A02000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0
                E000C0C00000C0C02000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0
                A000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
                FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFF6FFFFFF
                F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFF6FFFFF6FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFF6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFF6F7EEFFFFF6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFF6A55BEEFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF079C53A5EFF6FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFEE534A9CA6EFF6FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFF6EE544B559DAFF6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFF6
                A601565656A7EFF6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6F6FFFFFFFFFFFFFF
                FFFFF6F6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFF6AF5557575F5FA7AF
                F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFF6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFF6F6F6F6F6F6F6F6F6F6FFFFFFFFFFFFF6F6F6F6F6FFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFF6EFA756575F57565EAFEFF6F6F6FFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFF6F6FFFFFFFFFFFFFFFFFFFFF6F6F6F6F6F6F6F6
                F6F6F6F6F6F6F6F6F6F6F6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFF6F6EF56575F5757565E5EEFF6F6F6F6F6FFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFF6F6FFFFFFFFFFFFFFFFF6F6F6F6F6F6F6F6F6F6F6F6BFBFBFBFBFBF
                BFBFB6B6B7F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                F6F6AFA757575F5F5F565FA7EFF6F6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFF6F6BFBFBFBF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F2D0303AEF6F6
                F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFF6F6AF560E5FA7
                5F57575FA7B7F6F6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6BFBF
                7F7FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB7F251B25BFF6F6FFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFF6F6EF9F56575F575F5F5F5F67AFB7
                F6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6BFBF7FFBFBFBFBFBFBFBFB
                FBFBFBFBFBFBFBFBFBFBFB37031CB6F6F6FFFFFFFFFFFFFFF6F6FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFF6F6EF5F5F5757575F675F5F5F67AFF6F6F6F6FFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFF6F6BF7FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB
                FBFBFB3F251B6DBFF6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFF6F6EF675657575F5F5F5F5F5FA7AFEFF6F6F6FFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6
                FFFFF6F6F6BFBF7FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB36251C6D
                F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFF6F6F6AF5F
                5F575F5F5F5F5F5F67A7AFEFF6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6FFF6F6F6F6BFBF7F
                FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB37251B6DF6F6FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFF6F6F6AFA7575F5F5F5F5F5F
                5F67A7A7AFEFF6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6F6BFBF7F7FFBFBFBFBFBFBFBFB
                FBFBFBFBFBFBFBFBFBFBFBFB3F2D1B6508F6F6F6FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFF6F6F6AF5F5F5F5F5F5F5F5F5F5FA7A7AFEFF6
                F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFF6F6F6F6BFBFBF7FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB
                FBFBFBFB7F772525BFF6F6F6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFF6F6EFA75F5F5F5F5F676767A7A7A7A7AFB708F6FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6F6F6
                F6BFBFBF7F7FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB7F7F76
                767776BFF6F6F6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFF6
                F6EFA75F5F5F5F676767A7A7A7A7A7AFB7EFF6FFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6F6F6F6F6BFBF7F7FFBFBFBFB
                FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB7F7F7F2E25256D6EBFF6
                F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFF6F6FFFFFFFFFFFFFFFFF6F6AFA75F5F5F5F
                5F676767A7A7A7AFAFAFF6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFF6F6BFBFBFBFBFBF7FFBFBFBFBFBFBFBFBFBFBFBFBFBFB
                FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB3F7F372D256DBFBFF6F6FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFF6F6FFFFFFFFFFFFFFFFFFF6EFAFA75F5F5F5F5F676767A7AFAF
                AFAFF6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6F6F6F6F6F6F6F6F6F6F6
                F6F6BFBFBFBFBF7F7FFBFBFBFBFBFBFBFB7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
                7F7FFBFBFBFBFBFBFBFBFB7F7F7F77766E6DF6F6F6F6F6F6F6F6F6F6F6F6F6F6
                F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFF6F6F6A756575F5F5F6767A7A7A7AFAFEFEF08F6F6FF
                FFFFFFFFFFFFFFFFFFFFF6F6F6BFBF7F762D77BFBFF6F6BFBFBF7F7F7F7F7F7F
                FBFBFBFBFB7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7FFBFBFB
                FBFBFBFBFBFB7F7F7F7F1C2DB7BFBFBFBFBFBFBFBF7F651C65B7F6F6F6FFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFF6F6AF5F5F5F675F6767A7A7AFAFAFB7B7BFF6F6F6FFFFFFFFFFFFFFF6
                F6F6F6BFBF7F7FFB3F3F36777FBFBF7F7F7FFBFBFBFBFB7F7F7F7F7FBFBFBFBF
                F6F6F6F608F6F6F6F6F6F6F6F6F6F6F6F6BFBFBFBFBF7F7FFBFBFBFBFBFBFBFB
                FB7F2E367F7F7F7F7F7F7F7F7F7F77262565B7F6F6F6FFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6EFAF9F
                5FA7676767A7A7AFAFAFB7B7BFF6F6F6F6FFFFFFFFF6F6F6F6BFBF7F7FFBFBFB
                FBFBFBFB7F7F7FFBFBFBFBFBFBFB7F7FBFBFBFF6F6F6F6F6F6F6F6F6AD0052AE
                F6F653B6F6F6F6B6F6F6F6F6F6BFBFBFBF7F7FFBFBFBFBFBFBFBFBFBFB7F7F7F
                7FFBFBFBFB7F7F37261C64B6F6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6EFAFA76767676767AFAF
                AFAFB7B7BFBFF6F6F6F6F6F6F6F6F6BFBFBF7FFBFBFBFBFBFBFBFBFBFBFBFBFB
                FBFBFBFB7F7FBFBFF6F6F6F6F6F6F608A45BF6AD00F6AD00F7F65200F6F6A400
                0A00A407F6F6F6F6BFBFBF7F7FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB
                372D1C1CB6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFF6F6EFA767676767676FAFAFB7B7B7BFBFBFF6
                F6F6F6F6F6F6BFBFBF7FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB7F7FBFBFBFF6F6
                F6F6FFFFF6F6F6085A0AF6F6F6F6FF52F6FFA453FFFFF6009BF7A407FFFFF6F6
                F6F6BFBFBF7F7FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB3F2E251C6DF6F6
                F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFF6F6F6AFA7A76767676F6FAFB7B7B7BFBFBFBFBFF6F6F6F6BFBF7F
                7FFBFBFBFBFBFBFBFBFBFBFBFBFBFB7F7FBFBFF6F6F6F6F6FFFFFFFFF6F6F6F6
                A352FFFF499B000007FF9B4A07F6FFEE00FFFFFFFFFFFFFFFFF6F6F6BFBFBF7F
                7FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB7F2E1C1C6EF6F6F6FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFF6F6F6F6F6FFF6F6F6F6EF
                AFAFA76767676FAFB7B7B7B7BFBFBFBFBFBFBFBFBFBF7F7FFBFBFBFBFBFBFBFB
                FBFBFBFBFB7F7FBFBFF6F6FFFFFFFFFFFFFFFFF6F6F6FFF65A49FFF700FFFF00
                9BFFFF4AFFFFFFFF4900FFF6F6FFFFFFFFFFFFF6F6F6BFBFBF7F7FFBFBFBFBFB
                FBFBFBFBFBFBFBFBFBFBFB372E031C6EF6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFF08EEA59D9DA69E5EA6AFAFA75F5FA76767A7AFAF
                AFB7AFB7BFBFBFBFBFBFBFBFBF7F7FFBFBFBFBFBFBFBFBFBFBFBFBFBFB7FBFBF
                F6F6FFFFFFFFFFFFFFFFF6F6F6F6FF074900FFF700FFFF0007FFF6A400F6A4F6
                FF00F6F6FFFFFFFFFFFFFFFFF6F6F6F6F6BFBF7F7FFBFBFBFBFBFBFBFBFBFBFB
                FBFBFBFB37251C03B6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFF6A554549D5E5F5FA7A7A767675F5F5FA7A7AFB7B7B7BFBFBFBF7F
                7F7F7F7F7F7FFBFBFBFBFBFBFBFBFBFBFBFBFBFB7FBFBFF6F6F6F6FFF6F6FFFF
                FFF6F6F6FFFFFFED5200A4F6A549495BF7494A0049A500F7F700FFF6FFFFFFFF
                FFFFFFFFF6F6F6F6F6F6BFBFBF7F7FFBFBFBFBFBFBFBFBFBFBFBFBFBFB37251B
                03AEF6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFEFEE
                A55DA75F5F5F5F5F5F5F5F5F5FA7A7AFAFB7B7B7BFBFBF7F7F7FFBFBFBFBFBFB
                FBFBFBFBFBFBFBFBFBFB7F7FBFBFF6F6F6FFF6F6F6F6FFF6F6FFF6FFFFFFFFFF
                09EEF6FFF6F6F6FFFFF6FF0707FFF79B4952FFFFFFFFFFFFFFFFFFFFFFFFF6F6
                F6F6F6F6BFBF7F7FFBFBFBFBFBFBFBFBFBFBFBFBFBFB36250364F6F6F6FFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFF6EFA6A7675F5F5F5F
                5F5F5F5F5FA7A7AFAFEFB7B7BFBFBF7F7FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB
                7F7FBFBFBFF6F6F6F6F608F6F6F6F6FFF6F6F6FFF6F6FFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFF6FFFFFFFFFFFFFFFFF6F6F6FFFFFFFFFFFFFFF6F6F6BFBF7F
                7FFBFBFBFBFBFBFBFBFBFBFBFBFBFB37251C6EB7F6F6F6FFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFF6EF5F5F5F5F675F5F575F5F5FA7A7AF
                AFAFB7B7BFBFBF7F7FFBFBFBFBFBFBFBFBFBFBFBFBFBFB7FBFBFBFF6F6F6F6AE
                A45CF6F6F6F6F6FFFFFFFFF6F6FFFFFFF6FFA4E59B93924952499292A4A4E507
                FFFFFFFFFFFFF6FFFFFFFFFFFFFFFFFFFFFFFFF6F6F6BFBF7F7FFBFBFBFBFBFB
                FBFBFBFBFBFBFB7F37251C65B7F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFF6FFFFF65E5E5F5F675F5F575F5F67A7A7AFAFAFB7B7BFBFBFBF
                7FFBFBFBFBFBFBFBFBFBFBFBFBFB7FBFBFF6F6F6F6F607530A0AF6F6F6F6F6F6
                F6FFFFFFFFFF079340404040404041404040404040404949494993F7F6FFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFF6F6F6BFBF7F7FFBFBFBFBFBFBFBFBFBFBFBFB7F
                7F771C1CAEF6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFF6B7AFA75F5F5F5F6767676767A7AFAFAFB7B7BFBFBFBF7F7FFBFBFBFBFBFB
                FBFBFBFBFB7FBFBFF6F6FFFFFFFFEE530A13A407F6F6FFFFFFFFFFED52004041
                404040404140414140404041404040404040000052A407FFFFFFFFFFFFFFFFF6
                F6F6FFFFFFF6F6F6BFBF7FFBFBFBFBFBFBFBFBFBFBFBFBFB7F77251C65F6F6FF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6B7A75F5F
                676767676767A7A7AFAFB7B7B7BFBFBFBF7FFBFBFBFBFBFBFBFBFBFBFB7FBFF6
                F6FFFFFFFFF6075C135C5B07FFFFFFFF09ED4040404040404040404049404089
                4041414040494140498A40404000409307FFFFFFFFF607A55C9CFFFFFFFFFFF6
                F6BFBF7FFBFBFBFBFBFBFBFBFBFBFBFB372F261D66F6F6FFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFF6FFFFF6F6F6F6EFAFA76767676767676767
                A7AFB7B7B7BFBFBFBF7FFBFBFBFBFBFBFBFBFBFB7FBFBFF6F6FFFFFFFFF6F6B7
                AEAEF6FFFFFF099B414041414040404140404040404040404040404141404040
                40404040404040404149F6FFFFF6AE530A53F6FFFFFFFFF6F6F6BFBF7FFBFBFB
                FBFBFBFBFBFBFBFB37262E65AEF6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFF6F6F6F6EFA75EA7676767676F6F6FB7B7B7BFBFF6
                BFBFFBFBFBFBFBFBFBFBFB7FBFBFF6F6FFFFFFF6FFF6F6F6F6F6F6FFFFA44140
                4000494041404140414040404040404041894040044040404040404040404040
                4000009CF6F6EF0A0A53ADF6F6F6FFF6F6F6F6BFBF7FFBFBFBFBFBFBFBFBFB37
                2F261CBFF6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFF6F6F6F6EFAFA7A767676F6F6F6FB7B7B7BFF6F6BFBFFBFBFBFBFBFB
                FBFB7FBFBFF6F6FFFFFFF6FFFFF6FFFFFFFFFFA54A4149400040414040408940
                419CDCE4EEF6FF09E493898981048189929340404040404040490000499CEEEF
                9D9D08F6F6F6FFFFFFF6F6F6BFBF7FFBFBFBFBFBFBFBFB372F266EF6F6FFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6
                F6F6AFAFA7A7AFAFAFAFB7B7B7BFBFBFBFBF7FFBFBFBFBFBFB7FBFBFBFF6F6FF
                FFFFFFFFF6FFFFFFFFFFA4494040404141000041494041E4EDF6EDEDE4E5EDE4
                938A4040400489DBED09099240404940404040000000A5F6EFF6FFF6FFFFFFFF
                FFF6F6F6BFBF7F7FFBFBFBFBFBFB3F37271DBFF6FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6F6EFB7AFAFAFAF
                AFB7B7B7B7BFBFBFBFBF7FFBFBFBFBFB7FBFBFBFF6F6F6FFFFFFFFFFFFFFFFFF
                F69B404041404140004900000000F7FF93524141404040404040404040400489
                DBE4EDFFFF9B4040410040400041414107FFFFFFFFFFFFFFFFFFF6F6F6BFBF7F
                7FFBFBFBFBFB3F37261DF6F6F6FFFFFFFFF6FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6F6EFB7AFAFAFAFB7B7B7BFBFBF
                BFBF7FFBFBFBFBFBBFBFF6F6F6F6FFFFFFFFFFFFF6FFFF079B40494040414141
                0000000A64B6F6F649404040404040404049414040404040404041419CF6FF9B
                400041414049404049EDFFFFFFF6FFFFFFFFFFF6F6F6BFBF7F7FFBFBFBFB3F37
                261DF6F6F6FFFFFFFFF6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFF6F6F6F6F6EFEFAFAFB7B7B7BFBFBFBFBF7F7FFBFBFB7F
                BFF6F6F6F6F6FFFFFFFFFFF6FFFF09514040404141000000001B6DBFBFBFF6F6
                40404040404040404041404040408104404041414141E5FFF652004100404040
                404909F6FFFFFFFFF6FFFFFFF6F6F6BFBF7FFBFBFBFBFB37261DBFF6FFFFFFFF
                FFF6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFF6F6F6F6F6EFEFEFEFB7B7BFBFBFBFBF7FFBFBFBFB7FBFF6F6FFFFFFFFFF
                FFFFFFFFFFEE9240404004404000000A64BF7F7F7F7FBFB64040894040404949
                40404040404040404040404041414040A4FFE50041494040404049A4F6FFFFFF
                FFFFFFFFFFF6F6F6BFBF7FFBFBFBFB372E1D6EF6F6FFFFFFF6F6FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6FFF6F6
                F6EFEFEFB7BFBFBFBF7F7FFBFBFB7FBFF6F6FFFFFFFFFFFFFFFFFFFFF6494040
                4040404900001BBFBF7F7F7FFB7FBFB5004040408AEDFFFFA440404040404040
                40404040414040404000FFEE404040404040409209FFFFFFFFFFFFFFFFFFF6F6
                F6BF7FFBFBFBFB372E251CB7F6FFFFFFF6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6EFBFBFBFBF
                BF7FFBFBFB7FBFBFF6F6FF00FFFFFFFFFFFFF6FF49404149404040000064BF7F
                7FFBFBFBFB7FBFBF004040404009FFFFE4404040404040404040404040404040
                40404009FF4940404040404040F6FFF6FFF6FFFFF6FFF6B6F6BFBF7FFBFBFBFB
                37261DA6F6FFFFFFF6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6BFBFBFBF7F7FFBFB7FBFBFF6
                F6F69B49F5F6F6F6FFFFFF9B404040404040000A6CBF7FFBFBFBFBFBFB7FBFBF
                0040404040F6FFFF9B4041404040404040404040404040404040494092FF4940
                514040404052FFFFF6FFFFFFFFF6F6F6F6F6BF7F7F7FFBFB372E1D66EFF6FFF6
                F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFF6F6BFBFBF7F7FFBFB7FBFF6F6F6080051A351A4FF
                FFFFED40404140404900006DBF7FFBFBFBFBFBFBFB7FBFBF0000404040FFFFFF
                9B414040404040404040404040404040404041404193FF9240404040490052FF
                FFFF075B07FFF707F6F6BFBF7F7FFBFBFB371D5EAFF6F6F6F6F6FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFF6F6F6BFBF7FFBFB7FBFBFF6F6F607525A4900ACFFFFFF414040410000
                000064BF7F3FFBFBFBFBFBFBFB7FBFBF00004940409B9BA44A40404040404040
                40404040404040404040404040409BFF52414940400040A4FFFF08A49BFF5249
                F6F6F6BFBF7FFBFBFBFB1D1D66AFF6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6BF7F
                FBFBFB7FBFF6F6FFF6F6FFFF5BACF6FFFF92404041000000006DBF7FFBFBFBFB
                FBFBFBFBFB7FBFBF000049414149004041404141400440404041404040404040
                404040414040409CFF92404040404140F6F6FFFF00FFFF5BA3F6F6F6BF7FFBFB
                FBFB271E1DA6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6BF7FFBFB7F7FBFF6F6FF
                F608F75A4908FFFF9A4041404000000064BF7FFBFBFBFBFBFBFBFBFBFB7FBFBF
                00004041400049EDE54141408181404040404040404040404040404049404940
                9BFF49414040404092FFFFFF00A4FF4952FFFFF6BFBF7FFBFBFB3727155D08F6
                F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFF6F6BF7FFBFB7FBFF6F6F6F75B520000F7F6FFFF
                004040400000001BBF7F3FFBFB3FFBFBFBFBFBFBFB7FBFBF004040404109F6F6
                E4404040814040898A4040404040404040404040408A40400009F64040414140
                40EDFFFFF7004900EDFFFFF6F6BF7FFBFBFB3F2F155DB7F6FFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFF6F6BF7FFBFB7FBFF6F6F6A400005208FFFFFFF740404040000000BF
                BF7FFBFBFBFBFBFBFBFBFBFBFB7FBF0800404007FFFF524041404040814041E4
                09ED40404040404040404040404040404940FFED404041404040FFFFF65BA4FF
                F69BFFF6F6BF7FFBFBFBFB2F1D1CB7F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6F6FFFFFFFFFFFFFFF6F6BF7FFB
                FB7FBFBFF6F6F6F6FF0041FFF6FF074940494040000A6D7F7FFBFBFBFBFBFBFB
                FBFBFB7F7FBFBF645209FFF64A00004149894040894040E4F6E4404040404040
                4040404940404040404040FF494040404000F6FFF6FF07004041A4F6F6BF7F7F
                FBFBFBFB251D5CA5F6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFF6F6F6F6FFFFFFFFFFF6F6F6F6BF7FFB7F7FBFF6F6F6F6F6
                FFFF00F6FFF6A300404041410012BF7FFBFBFBFBFBFBFBFBFBFB7F7FBFBFF6F6
                FF9B41004A0000FFF640404049404092E49240499B9C8A418189404140404040
                894040E40940404040004908FFFF49499BFFFFF6F6F6BF7FFBFBFBFB2E251C65
                F6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                F6F6F6FFFFFFFFFFFFF6F6F6F6BF7FFBFB7FBFF6F6B652000707A4F6FF074940
                404049000076BF7FFBFBFBFBFBFBFBFBFB3F7FBFBFF6F69B404040410000F6FF
                40404040404040818904409BFFFF9B40404140494949404041404049FF924040
                400049F7FFF6FFED4940495BF6F6BF7FFBFBFBFB3F251C5CF6F6F6F6FFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6FFFFFFFFFFFFF6FFFFFFFFFFFF
                F6F6F6F6BFBFFBFB7FBFBFF6F60800000000F6FFFF9B4049414040001BBF7FFB
                FBFBFBFBFBFBFBFB7FBFBFBFF65B0040494040410007FF9B4040404040404040
                4040409BFFFF9C40404041E50909924141404040ED09404040400052F6FFFFFF
                E44900F7F6F6BF7FFBFBFBFBFB2D131CB7F6F6F6F6FFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFF6F6FFFFFFFFFFFFFFFFFFFFFFF6F6F6BFBFBF7FFBFB
                7FBFF608F6F6FFA34907FFFFFF52404140400052B6BFBF3FFBFBFBFBFBFB7F7F
                BFBFF65B0000000041000000FFFFFFFF40404081404041404040409BFFFF9B40
                404040EDFFFF93404040404049FF924040400000FFFFFF4949F708F6F6F6BFBF
                FBFBFBFBFB37252525B6F6F6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFF6F6FFFFFFFFFFFFFFFFFFFFF6F6F6BFBFBF7F7FFBFB7FBFF6F607F75A49
                52FFFFFF0700404040400052BFBFBF7FFBFBFBFB7F7FBFBFAD5B000000490000
                000053F6F608FFA440404081404040404040409207079240404040EDFFF69340
                4040414040ED094040405200F7FFFF0707079B5BF6F6BFBF7FFBFBFBFBFB7F36
                0325BF08F6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6FFFFFFFF
                FFFFFFFFF6F6F6F6BFBFBF7F7FFBFBFB7FBFF6F6084900404909FFFF9C004040
                4040404964BF7F7FFBFBFB7F7FBFBF640A00000040004040009BFF5200524900
                41404040404040404040404049494040404049EDFFF69B404041404040920992
                4040400000FFFF0749000052F6F6F6BF7FFBFBFBFBFBFB7F362D6D76BF08F6F6
                F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6BFBF
                BF7F7FFBFBFBFBFBBFBFF6F6FFF6FF9B00FFFFFF92404040414000000064BFBF
                7F7F7FBFBF76120000000048404041009CFFFF0A000052534040404040414040
                4140404000404040404040494A49414040404049404109ED4040404900FFF607
                EDF6FFFFFFF6F6BF7FFBFBFBFBFBFBFBFB7F2503036DBFF6F6F6FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6BFBF7F7F7FFBFBFBFBFBFB
                BFBFF6FF075209FF9BFFFFFF4940404049409C9B0000136EBFBFBFBFAE000000
                49404040494000F7F6F6F6F6F6F6F6FF4A404040494041408A40404141404040
                40404040404041404041404040409BFF4040414000F6FFFFFFFFFFFFFFF6F6BF
                BFFBFBFBFBFBFBFBFBFB7F7FBF25646464F6F6FFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFF6F6F6BF7F7FFBFBFBFBFBFBFBFBBFF6F6FF52004040
                49FFFF09494040404940A4FFF700000A1BBFBFF6520049404049494040409CF6
                F6BFBFBFBFF6F6F64940404140494040F6DC4040404040404140494140404040
                49929B40404092F649404049409BFFFFA4F7F6FFFFF6F6BFBF7FFBFBFBFBFBFB
                FBFBFB7F7F25036464F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFF6F6BFBF7FFBFBFBFBFBFBFBFB7FBFF6F6FF9B52E49249FFFFF740404140
                4140F6F6F6F60A0A0012F6AD0040408140408940404908F6BF7FBFBFBFBFBFF6
                5241414040404041EDDC4040404040404040404040404040E5FF094940408909
                924049404049FF075252FFFFFFFFF6BFBF7FFBFBFBFBFBFBFBFBFBFB7F2D0303
                64F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6BF7FFBFB
                FBFBFBFBFBFBFB7FBFF6F6AC5140495252F6F69B404081404000525BF6F6F65B
                0000FF49404140408140404049EDF6F6BFBF7F7F7FBFBFF60A00414041404140
                40404040404040404040410040404040EDFFFF4940404009DB4040404041FFFF
                F652FFF793A4F6F6BF7FFBFBFBFBFBFBFBFBFBFBFB2D250365F6F6FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6BF7FFBFBFBFBFBFBFBFBFB7F
                BFF6F6FF0852409207FFF652404081404049000013F6F6FF9C07ED0040404140
                404040409BFFF6BFBFBFBFBFBFBFBFF64A404040404140404140404040404040
                4040404040404140EDFFFF4940404009E54040494040FFFFFF52F693499BF6F6
                BF7FFBFBFBFBFBFBFBFBFBFBFB2D250365F6F6FFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFF6F6FFFFFFF6F6BF7FFBFBFBFBFBFBFBFBFB7FBFF6F6FFFFFFF6EE
                FFF6FF49404041400052AD00005BA5F6FFF64A40004941404041404052076464
                6D1B64641B1212640040404040414AE409E54040414040404040004040404040
                E4090949404140E4094040404040FFFFFF5B9B49499BF6F6BF7FFBFBFBFBFBFB
                FBFBFBFBFB2D250365F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6FF
                FFFFF6F6BF7FFBFBFBFBFBFBFBFBFB7FBFF6F6F69B0092EEFFF6FF4040404040
                00A4F6BF120000F7F6FF404000494040814040415C64231B64121B5C1B1B5BAD
                0040404040009BFFFFFF0092E49341404040939B4940404049408A40404040E4
                094140898A4007FFFF520040405207F6BF7FFBFBFBFBFBFBFBFBFBFBFB2D2564
                65F6F6FFFFFFFFFFF6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6FFFFFFF6F6BF7FFBFB
                FBFBFBFBFBFBFB7FBFF6F69B49F75249F6FFFF404040400000B6F6BFBF1B0000
                0707004040404041408141A4F6F6BFBFBFBFBFBFBFBFF6F64940404041005BF6
                F6F600EDFFED89404000FFFFE449404049404040404040DB09404041404007F6
                FF9B53ED07F6FFF6BF7FFBFBFBFBFBFBFBFBFBFBFB2E252565F6F6FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFF6F6FFFFFFF6F6BF7FFBFBFBFBFBFBFBFBFB7F
                BFF6F69B9BFFF60007FFFF404040000000F6BFBFBFBF6D12EE53404040404040
                404040F6F6BF7F7FBF7FBFBF7FBFBFBF00004040000064F6F60740EEFFED4940
                4000EDFF0940404189404040404040D309404040404007FFFFFFFFFF0752FFF6
                BFBFFBFBFBFBFBFBFBFBFBFBFB2E261D6EF6F6F6FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFF6F6BF7FFBFBFBFBFBFBFBFBFB7FBFF6F6ED00004A53
                F6FFFF404000000000F6BF7F7F7F7F6EF652404040404040404040F6F6BFBF7F
                7F7F7F7F7F7FBFBF00004040000064F6F608004A934900000000F6FFED404040
                40404040404040920989404040409BF6FF07F7490052F6F6BF7FFBFBFBFBFBFB
                FBFBFBFBFB2E261D6EF6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFF6F6BF7FFBFBFBFBFBFBFBFBFB7FBFF6F6F6ED004AFFFFFFFF4000000000
                00BFBF7FFBFB7FBFF60A404040404040404040FF5BBFBF7F7F7FFBFBFBFBBFB6
                0000404040006DBFF6F600000000000041414040404089494040404040404092
                0989404041409BFFFF9B0052FFFFFFF6BF7FFBFBFBFBFBFBFBFBFBFB3F2E261D
                66F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6FFFFFFFFF6F6BFBF7FFB
                FBFBFBFBFBFBFB7FBFF6F6FFFFFF07F7FFFFFF000000000000B6BF7FFBFB7FBF
                BF00404040404040404052080000BFBF7F7FFBFBFB7FBFB6004040404000B6BF
                BFBFBFBFB65C120A000000404040404040404000000040E4094040414140EDFF
                FFAC00005207F6F6BF7FFBFBFBFBFBFBFBFBFBFB3F2F261D66F6F6FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFF6FFFFFFFFF6F6BFBF7FFBFBFBFBFBFBFBFB7F
                BFF6F6FF08FF0852FFFFFF0000404000006DBF7FFBFB7FBFBF00404040404040
                4040F6FF0000006D767FFBFBFB7FBFAD004040404000B6BFBF7FBFBFBFBFF6F6
                08F700000040404940000000000A5207ED404081404007F6FFFFF6FF0000F6F6
                BF7FFBFBFBFBFBFBFBFBFBFB3F2F261D66F6F6FFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFF6FFFFFFFFF6F6BFBF7FFBFBFBFBFBFBFBFB7FBFF6F6FFFFF6FFFF
                F6FFFF00004041000064BF7FFBFB7FBFB6004040404040404040FFFFF60A0000
                0ABF7F7FBFBFF6AD004040000000B6BF7F7F7F7F7F7FBFBFBFF6F6F6F6AD0000
                4953F608BFF6F6F6A44940404040A4F6FFA4F6FFFF5208F6BF7FFBFBFBFBFBFB
                FBFBFBFB3F2F261D66F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFF6F6BFBF7FFBFBFBFBFBFBFBFB7FBFF6F6FFFFFFFFFFFFFFFF0040404140
                0012BF7FFB7F7FBFAE004040404040404040EDFFFFFF9C531265BFBFF6F6F6A4
                004000000000767F7FFBFBFBFBFB7F7F7FBFBFBFF6F6645CA4ADF6BFBFBFF6AD
                004081404049A4FFFF52000000A4F608BF7FFBFBFBFBFBFBFBFBFBFB3F2F261D
                66F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6BFBF7FFB
                FBFBFBFBFBFBFB7FBFF6F6FFF7F7524AFFFFFF00404040400012BF7F7F7F7FBF
                B6004040404040404040F6F6EDFFF6F6F65CF6F6F6FFFFE4404000000000767F
                FBFBFBFBFBFBFBFBFBFB7F7FBFBF1B12A4F6BFBFBFBFBF64004940894000F6F6
                FFFFFFF5F7A5F6F6BF7FFBFBFBFBFBFBFBFBFBFB3F2F261D6EF6F6FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6BFBF7FFBFBFBFBFBFBFBFB7F
                BFF6F60749009B009BFFFFF7404049400000BFBF7F7F7FBFF600004040404041
                40414040414141414A53414A41404141400000000000BF7FFBFBFBFBFBFBFBFB
                FBFBFBFB7F7F1B0012BFBF7F7F7FBF12004140404900FFFFF6FFFFFF499CF6F6
                BF7FFBFBFBFBFBFBFBFBFBFBFB371D66B7F6F6FFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFF6F6BFBF7FFBFBFBFBFBFBFBFB7FBFF6F6FF4A09F652
                9BFFFFED404041404000F6BF7F7F7FBFBF000040404149400000004141410000
                0000004140404040404000000000BF7FFBFBFBFBFBFBFBFBFBFBFBFBFB7F7603
                6DBF7F7F7F7FBF12004141494000FFF60800529B00FFF6BFBF7FFBFBFBFBFBFB
                FBFBFBFB7F2F141DB7F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFF6F6BFBF7F7F7FFBFBFBFBFBFB7FBFF6F6074A93F600A4FFFF0741404040
                4000ADBFBF7F7FBFBF6D529B4940404152524A4900004A53534A004A52415249
                404000000000BF7FFBFBFBFBFBFBFBFBFBFBFBFBFB7F7F7F7FBF7F7F7FBF760A
                00414041409BF6FFFFA3524900FFF6F6BF7FFBFBFBFBFBFBFBFBFB7F77261C66
                BFF6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6FFFFFFFFF6F6BFBFBF
                7F7FFBFBFBFBFBFBBFBFF6F6F600005BFFFFFFF65240404040001264BFBFBF7F
                BFBFF6F692404109F608F6F6F6F6F6F6F6FFF6F6F6FF0749404000000000BF7F
                FBFBFBFBFBFBFBFBFBFBFBFBFBFB7F7F7F7FFBFB7FBF6400004140400007FFFF
                A4FFFF9B00F6F6BF7F7FFBFBFBFBFBFBFBFB7F7F7F25146508F6F6FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFF6F6F6FFFFFFFFF6F6F6BFBFBFBF7FFBFBFBFBFB
                7FBFF6F6F6FFFFFF49FFFFFF9B0040494040000A1CBFBFBFBFF6F6FF92404909
                FFF6F6F6BFBF761B0A00B6F6F6F6FF00404040000000BF7FFBFBFBFBFBFBFBFB
                FBFBFBFBFBFBFBFBFBFBFBFB7FBF12000041404100FFFFFF009BFF0852F6F6BF
                7FFBFBFBFBFBFBFBFB7F7F76656EB7F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFF6F6F6F6FFFFFFFFF6F6F6F6BFBFBF7FFBFBFBFB7FBFBFF607490049
                00A4FFFFF700004940400000000AB6BFBFF60A535200419B07F6F6BF7F7FBF7F
                1C00000A07F6F69A404040404000BF7FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB
                FBFBFBFB7F7600004041404049FFFFFFED00520708F6BFBF7FFBFBFBFBFBFB7F
                7F7F6DB6BFF6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6F6
                FFFFFFFFF6F6F6F6F6F6BFBF7FFBFBFB7F7FBFBFF65200499B00FFFF08000049
                4040414000000064F6B60000000000004AA5BF7F7FFB7F7F7664000000F7FF49
                404040404000BF7FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB7F1C0000
                41414000A3FFFFF6FF490051F6F6BFBF7FFBFBFBFBFB3F36777FF6F6F6F6F6FF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6FFFFFFFFFFFFF6F6F6
                F6F6F6BFBF7FFBFBFB7FBFBFF6529B529B00FFF6F60000494040408AED53000A
                08AD000000000000005CBF7FFBFBFB7F7FBFBF1200005B52404940404000BFBF
                7F7FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBBF12004149404049F6FFFF52
                00004911F6F6BFBF7FFBFBFBFB36250376BFF6F6F6F6FFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6BF7FFBFB
                FB7FBFF6F65252FFF64907FFFFF700404040414093FFA400A4085B5B5B524A0A
                531BBFBF7FFBFBFBFBFB7F7F030A0000404940404000001BBFBF7FFBFBFBFBFB
                FBFBFBFBFBFBFBFBFBFB7F7F6400004940404049FFFFFF5207FFFFF6FFF6BFBF
                FBFBFBFB7F1C2625F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6BFBF7FFB7F7FBFBFF6F607FF
                FFF79BFFFF0849404140404100A4F6F652F6FFFFFFFFFFF6F6F6BF7FFBFBFBFB
                FBFBFB7F7F76120040404040404100000A64BF7F7FFBFBFBFBFBFBFBFBFBFBFB
                FB7F7F7611004140414000A5F6FF07A4FFFFFFFFFFF6BFBFFBFBFBFB7F1D256E
                F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFF6F6BF7F7FFB7FBFBFF6F6F74949494AF6FFFFA440
                404140404149F7FFFF07A4F5FFFFF6FFF6F6BF7FFBFBFBFBFBFBFB7FBFBFAD00
                404040404949F712000A6DBFBF7F7FFBFBFBFBFBFB7F7F7FBFBFBF1B00004140
                414149F6F6F607414052FFFFF6F6BF7FFBFBFBFB37251DB7F6FFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFF6F6BFBF7FFB7F7FBFF6F6EE53A4F7529CFFFFFF414041414040490052
                FFFFF749494A525BA4BFBF7F7FFBFBFBFB7F7FBFBFBFF600404040404052F6F6
                640A001B76BFBF7F7F7FBFBFBFBFBFBFBFBF6400000040414000F7F6F607EE52
                4A00FFFFF6F6BF7FFBFBFBFB26251CBFF6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6BF7F
                FBFB7FBFBFF6F6F6F6FFED52FFFFFF9B40414041414000005207FF5200000049
                5CF6BFBF7F7F7F7F7F7FBFBFBFF6F600414941404049F6F6AD520000121B031B
                1B130A0A0A0A0A0000000000404141400049F6F6FFF70049E54AFFF6F6BFBF7F
                FBFBFB7F25251CF6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6BF7FFBFB7F7FBFF6F6FF
                F6FFFFF6FFFFF607404040408A4049404041FFFFFFFFFFFFF6F6BFBFBFBFBFBF
                BFBF031B5B645B004040404940409B5300520000000000000000000000000000
                000000414040494000EDFFFFED9BA440009BFFF6F6BF7FFBFBFB3F371E1D66F6
                F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFF6BFBFFBFBFB7FBFF6F6FFF6FFFFFF07F6FFFF
                9B0040414041414140404092E5ED9B4100000000000000000000000000000041
                4040404140404900004941000000000040414040404040414141414040404041
                93FF07FF524AFFF6F7F7FFF6BFBF7FFBFBFB372F1E1DB7F6FFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFF6F6BF7FFBFB7FBFBFF6FFFFFFF6A400F7F6F6FF49404041414040
                49404040404040404140000000000041410000000000408A4041404040494041
                494000000040404041414040404040404040414040494041F6FFFFED40F69352
                F6F6F6F6BF7FFBFBFBFB37271E15BFF6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6BF
                7FFBFBFB7FBFF6F6F6F70049EDFFFFF6FFFF4049404141404049404041414040
                4040404040404140414140410049414089404041414000000040414140404040
                404140404004048104814041404040A4FFFFFF008A934900F7F6F6F6BF7FFBFB
                FBFB271E156FF6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6BF7FFBFBFB7FBFF6F6
                F60700494A0052FFFFFFF7404141404940414040404040404041404140414049
                404040000000494041414140400049490000000000499B9B4900404941400404
                04894040404992F6F6FFFFE549404AA4F6F6F6BF7FFBFBFBFB3F271E1DAFF6F6
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFF6F6FFFFF6F6BF7FFBFB7FBFBFF6F6F6F6F7490052F6
                FFFFFF9B4040414041404104400404404040494040004040499B5252525BA400
                414040400052A46464A4525249530708F7A4A4514040404081408940404AF6FF
                F6F6FFFF099349FFF6F6BFBF7FFBFBFB3F2F271E66BFF6F6F6F6FFFFF6FFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFF6F6FFFFF6F6BF7FFBFBFB7FBFBFF6F6F65249A4F60708FFFFFF4A404040
                49404040048181814140409B07A4494952F7FFFFF6F60800494040400064F6F6
                BFF6F65C00005207F6F60700004040404040404940F6FFFFF6F607A452FF07F6
                F6BFBF7FFBFBFBFB3727271DB7F6F6F6F6F6F6F6F6F6FFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6FFFFFFF6
                BFBF7FFBFB7F7FBFF6F6F6F7FFF6524A4AFFFFFFF6494040414140404081898A
                89494049F6F60753490007F6F6F6070040404040005BBFBFBFBFBFBF650A0000
                9BFF5B004040404040494040EDFFFFF65BF7529B00FFF6F6F6BF7FFBFBFBFB3F
                2F1E2666BFF6F6F6F6F6F6F6F6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6FFFFFFF6F6BF7FFBFBFB7FBF
                BFF6F6F6FF9B4A099300FFFFF6F6524140494140404041498A8A410000ADF6F6
                0A00000AADF6F60040494040005BBFBFBFBFBFBFF60752000049004041404040
                49004907FFFFFFFF07004A9B0007F6F6BF2D7FFBFBFBFB37271E266FF6F6F6F6
                F6F6F6F6F6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFF6F6FFFFFFFFF6BF7FFBFBFB7F7FBFF6F6F6FF499BFF
                ED00FFF6F6FFFF49414141404040404041494140000053F6F6A40A000AB60800
                40404040001ABFBFBFBFBFBFF6079B41404040404041404149009BFFFFFFED9B
                A4A44941FFF6F6BFBF7FFBFBFBFB3F2F271E26BFF6F6F6F6F6F6F6F6F6F6F6F6
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFF6BF7F7FFBFBFB7FBFBFBFF6F69B499B0052FFF6FFFFFF07
                41404040404040404040404140400000A4F6F65200005240400404400012BFBF
                BFBFBF765B000040414141404141404000A5FFFFFFA4000049FFF600F6F6F6BF
                7FFBFBFBFBFB3F2F271E1EBFF6F6F6F6F6F6F6F608F6F6F6F6F6F6FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6
                F6BFBF7FFBFBFBFB7F7FBFBFF6F607529AFF480007FFF6FFFF49404040414040
                404040404040000049A3F6F6F7524040400481404052F6F6BF64000000004040
                4040414041404041F6FFFFFFFF49F7FF0052FFFFFFF6BFBFFBFBFBFBFBFBFB37
                271E1E6FBFF6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6FFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6F6BFBF7FFBFBFBFB
                FB7FBFBFBFF6F6FFF5920009F59AFFFFFFFF9B49404040404140404040404940
                0000525B52494041814081404141525211000000404040404040409240009BF6
                F6FFFFFFFF49A4F65252FFFFF6F6BF7FFBFBFBFBFBFBFB3F2F1E1E67B7F6F6F6
                F6F6F6F6F6F6BF080808F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6BF7F7FFBFBFBFBFBFB77BFBFF6F6F6
                ED009B490049A4FFFFFFFF9C0040404040404041404040404040404040404040
                4040404040400000000040404040404040404049409BFFFFF6FFF7A4075A4949
                5A07FFF6F6BF7FFBFBFBFBFBFBFBFB3F2F1F1E67B7F6F6F6F6F60808BFBFBFBF
                BFBFF6F6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFF6F6BF7FFBFBFBFBFBFBFB7F7FBFBFF6F6089A094000FFFFF6
                F6F6FFFF079B4940404040404040404040404040404040404040404040404040
                404040404040404040414049F6FFFFFFFFA400494908F749FFFFF6F6BF7F7FFB
                FBFBFBFBFBFBFBFB2F271E1E6FBFF6F6F6F608BFBFBFBFB7B7B7B7BFF6F6F6F6
                F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6FFFFFFFFF6
                F6BF7FFBFBFBFBFBFBFBFB7FBFBFBFF6F6F64848E4F6085251F6F6FFFFFFF652
                4040404040404041414040404040404040404040404140404040404040404040
                4049E4F6FFFFFFFFF700FFF6005BFFFFFFF6F6BF7F7FFBFBFBFBFBFBFBFBFBFB
                37271E1E66B7F6F6F6F6EFBFBFB7B7B7B7B7B7B7BFF6F6F6F6F6F6FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6FFFFFFFFF6F6BF7FFBFBFBFBFB
                FBFBFB7F7F7FBFBFF6F608F609F59B5B08F652F6F6F6FFFFA492494040404040
                404040404041414040404040404040494041404040404092EDF6FFFFFFFF9B9B
                F700FFFF0052F6F6F6F6BFBF7FFBFBFBFBFBFBFBFBFBFBFB372F1E1E66B7F6F6
                08F6EFBFB7B7B7B7B7B7AFB7B7B7BFF6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFF6FFFFFFFFF6F6BF7FFBFBFBFBFBFBFBFBFB3F7F7FBF
                BFF6F6FF9A004907080752525BF6F6FFFFFFF6A4494040404040404040404040
                4040494940404040404040404092EDFFFFFFF6FFF65B52F7085B0000A3FFF6F6
                F6BF7F7FFBFBFBFBFBFBFBFBFBFBFBFB3F2F261D1EB7F60808F6EFEFB7B7B7B7
                B7B7AFAFB7B7B7B7BFBFF6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFF6F6BFBF7FFBFBFBFBFBFBFBFBFBFBFB7FBFBF08F6FFF6495A
                F6AC005B5252F6F6F6FFFFFFFFF6F74900004040404040404040404040404040
                40499BEDFFFFFFFFFFF6F6F69B0AF6FFFFFF07F6FFF6F6F6BF7FFBFBFBFBFBFB
                FBFBFBFBFBFBFBFB3F37261D1DB7F60807F6EFEFEFB7B7B7B7B7AFAFAFAFAFAF
                AFB7F6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6
                F6F6BF7FFBFBFBFBFBFBFBFBFBFBFBFB7FBFBFF6F6F6FF079B0000525B07F607
                F7FFFFFFFFFFFFFFFFFF9B9B49524092404040498A40A4FFF6FFFFF6FFF6F6FF
                F6F6F6F65B00FFFF49A4FFFFF6F6F6BF7F7FFBFBFBFBFBFBFBFBFBFBFBFBFB7F
                772F1425B7BFF6F6F6F6EFEFB7B7B7B7B7AFB7B7AFAF6F6FAFAFB7F6F6F6F6F6
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6BFBF7FFBFBFB
                FBFBFBFBFBFBFBFBFB7FBFBFF6F6F6F6F752F79BFFFFFF490049EEFFFFF6FFFF
                FFFFFFF6FFFFF6FFFFFFF6FFF6F6FFFFFF08FFFFF6FFFF9B4900F7F6F7000000
                4AFFFFF6F6F6BF7F7FFBFBFBFBFBFBFBFBFBFBFBFBFB7F7F2E1D66B7BFF6F6F6
                F6F6EFEFEFB7B7B7B7B76F6F6F6F6F6FAFAFAFEFF6F6F6FFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6F6BF7FFBFBFBFBFBFBFBFBFBFBFB
                FBFB7FBFBFBFF6F6F6F70000A4FF9B5208ED00A452A4FFFFFFFFF6FFFFFFFFF6
                F6FFFFF6FFFFF6FFFFF6F6F64AA40049FFFFFFFFFF075BF7F6F6F6F6BFBF7FFB
                FBFBFBFBFBFBFBFBFBFBFBFBFB7F7F2E1D25BFF6F6F6F6F6F6F6EFEFEFB7B7B7
                B7B76F6F6F6FAFAFAFAFAFEFF6F6F6F6FFF6FFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFF6F6FFFFF6F6F6BF7FFBFBFBFBFBFBFBFBFBFBFBFB3F7FBFBFBFF6
                F6F6F69BFFFFA4000052FFF60000000049F7F7FFFFFFF6FFF6F6F6FFA4FFF6A4
                FFA40052499B52F7FFFF52FFF6F6F6F6F6F6F6F6BF7FFBFBFBFBFBFBFBFBFBFB
                FBFBFBFB7F7F251365BFF6F6F6F6FFFFF6F6F6EFEFB7B7B7B7AFB7B7AFAFAFAF
                AFAFAFEFEFF6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFF6F6BFBF7FFBFBFBFBFBFBFBFBFBFBFBFBFB7F7FBFBFBFBFF6F6F6F64A00
                9C53FF4A00FFFF0852005B00A5FF9C0052F6FFAD00FFFF009B5249FF4953A441
                EE4949FFF6F6F6F6BFBFBFBF7FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB7F251365
                BFF6F6F6F6F6FFFFFFFFF6F6EFB7B7AFAFAFAFAFAFAFAFAFAFAFA6A6A6AE07F6
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6BFBF7F
                FBFBFBFBFBFBFBFBFBFBFBFBFBFB7F7FBFBFF6BFF6F6F6AE495BFF5249FFFFFF
                5252539BFF4949079BADF6F700FFFF00535200FF5349FF9B00A4F6F6F6F6BFBF
                BF7F7F7FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB7F2E1303BFF6F6FFFFFFFFFFFF
                FFF6F6F6EFB7B7AFAFAF6F6FAFAFAFAFAFAFA6A6A6AE0708F6FFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFF6F6FFFFFFFFFFFFFFFFF6F6BF7FFBFBFBFBFBFBFBFB
                FBFBFBFBFBFBFBFB7F7FBFBFBFBFF6F6F607F6529BFFF6FF52005BF6FF00A4FF
                FF07FFEE52F6FF49495200F6F749FFFFFFFFF6F6F6BFBF7F7F7FFBFBFBFBFBFB
                FBFBFBFBFBFBFBFBFBFB3F2F1C25BFF6F6FFFFFFFFFFFFF6F6F6F6F6EFB7AFAF
                AFAF67A7AFAFB7B70808EFEFEF0708F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFF6F6FFFFFFFFFFFFFFFFFFF6F6BF7F7FFBFBFBFBFBFBFBFBFBFBFBFBFBFB
                FBFB7FBFBFBFBFF6F6F6F6F6F6F6F6F60A495200FF52499C539BA5520052A553
                49A453F6FFFFF6F6F6F6F6BFBFBF7F7FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB
                FBFB371D25BFF6F6FFFFFFFFFFFFFFF6F6F6F6F6EFB7AFAFAFAFAFAFB7B7F6F6
                F6F6F6F6F6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFF6F6F6F6BF7FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB7F7FBFBF
                BFF6F6F6F6FFFFFFFFFFF7FFFFF6A452A5F6A4A4F70708FFFFFFF6F6F6F6F6F6
                F6BFBF7F7FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB3F361BAEF6F6F6F6
                FFFFFFFFFFFFFFF6F6F6F6F6BFB7AFAFA7A7A7AFAFEFF6F6F6F6FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFF6BFFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB7F7F7FBFBFBFF6F6F6F6F6
                F6F6F6F6F6F6F607F6F6F6F6F6F6F6F6F6F6F6F6F6F6BFBFBF7F7FFBFBFBFBFB
                FBFBFBFBFBFBFBFBFBFBFBFBFB7F7FFB372DAE08F6F6F6F6FFFFFFFFFFFFFFFF
                F6F6F6BFB7B7AFAFAFA7A7A7AFEFF6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6BFBFBFBF7F7F
                7F7F377F7F7F7F7F7F7F7FFBFBFB7F7F7F7FBFBFBFBFBFF6F6F6F6F6F6F6F6F6
                F6F6F6F6F6F6F6F6F6F6BFBFBFBFBFBF7FFBFBFBFBFBFBFBFB7F2D2E777F7F7F
                7F7FBFBFBFBF77251C1CF6F6F6F6F6FFFFFFFFFFFFFFFFFFF6F6EFB7B7B7AFAF
                AFAFA7A7A7AFF6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6BFBFBFBFBFBFBF7677BFBFBFBF
                BFBF7F7F7F7F7F7F7F7F7F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
                BFBFBF7F7F7F7F7FFBFBFBFBFBFBFBFB7F7F6D6EB7BFBFBFBFBFBFBFBFBFB76D
                6D6EF6F6F6F6F6FFFFFFFFFFFFFFFFF6F607EFB7B7B7AFAFAFAFAFAFA7AFAFEF
                F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFF6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6BFBFBF7F7F7F
                FBFBFBFBFB7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7FFBFBFBFBFBFB
                FBFBFBFBFBFB7F7F7E76F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6FFFFFF
                FFFFFFFFFFFFFFF6F607EFEFEFB7AFAFAFAFB7AFAFA7A7AFAFEFF6F6F6F6FFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFF6F6F6F6F6F6F6F6F6F6F6F6F6BFBFBF7F7F7F7FFBFBFBFBFBFB
                FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB7F7F7FBF
                BFBFF6F6F6F6F6F6F6F6F6F6FFF6FFFFFFF6FFF6FFFFFFFFFFFFFFFFFFFFFFF6
                F608EFEFB7B7AFAFAFAFAFAFAFAFA767A7AFF6F6F6F6FFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFF6F6F6FFFFFFFFFFF6F6F6BFBFBFBF7F7F7F7FFBFBFBFBFBFBFBFBFBFBFB
                FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB7F7F7FBFBFF6F6F6F6FFFFFFFFFF
                FFFFF6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6EFEFEFB7B7AF
                AFAFA7AFAFAF676767A7AFF6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFF6F6F6F6BFBFBFBFBF7F7FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB
                FBFBFBFBFBFBFB7F7F367FBFBFF6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6EFB7B7AFAFAFA7A7AFA76767
                67A7A7EFF6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6
                F6F6BFBFBF7F7FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB2D1C
                76BFF6F6F6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFF6F6F6F6EFB7AFAFB7AFAFA7A767676767AF5EA6F6F6F6
                FFF6FFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6F6F6F6BFBF7FFB
                FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB371C1CB7F6F6F6F6FFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFF6F6F6F6F6F6EFEFAFA7A7A767676767675FA7A7A7F6F6F6FFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6F6BF7F7FFBFBFBFBFBFBFBFB
                FBFBFBFBFBFBFBFBFBFBFBFB7F251B6DF6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6F6F6F6
                EFEFAFAFA7A7676767675FA7A7A7AFF6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFF6F6BFBF7FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB
                FBFBFB7F371C1CBFF6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6F6F6F6F6EFEFAFA76767
                67675F5FA7675EAFF6F6F6F6FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6FFFF
                FFFFFFFFF6F6BF7FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB7F2D1B6508
                F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6F6EFAFA7675F5F5FA75F5F5F5E
                A7F6F6F6F6F6FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6FFFFFFFFFFFFF6F6BFBF
                7FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB36031BAEF6F6FFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFF6F6F6F6B7A75F5F675F5F5F5F565EAFF6F6F6F6FFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6FFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFF6F6FFFFFFFFFFFFF6F6BFBF7F7F7F7F7F7F7F7F
                7F7F7F7F7F7F7F7F7F7F7F36036DBFF6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFF6F6F6F6B7A75F67575FA757579F5EEFF6F6F6FFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFF6F6BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
                BFBFBF766EBFF6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6F6
                AFA75EA75F575F5F5F57AFBFF6F6F6FFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFF6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6F6EFAF675F5757
                5F5F5667B7F6F6FFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFF6F6F6F6F6F6F6F6F6F6F6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6B7A75F5F5F5F175EAFF6F6FF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFF6F6F6F6AFA75F5F675656AFF6FFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFF6F6F6B7AF675F5656A7F6F6FFFFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6
                F6EF5E56559EEFEFF6FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6EFA7554C545D
                EFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6F6EFA6544B9DF6FFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFF6F6F6A55353FFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFF6EFA6FFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                F6F6FFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFF6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFF6F6F6F6FFFFFFFFFFFFFFFFFFF6F6FFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6FFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6FFFFFFFFFF000000}
              Stretch = True
            end
            object QRLabel12: TQRLabel
              Left = 319
              Top = 88
              Width = 82
              Height = 18
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                47.625000000000000000
                844.020833333333300000
                232.833333333333300000
                216.958333333333300000)
              XLColumn = 0
              Alignment = taCenter
              AlignToBand = True
              AutoSize = True
              AutoStretch = False
              Caption = 'Billing Period'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 10
            end
            object QRLabel27: TQRLabel
              Left = 215
              Top = 65
              Width = 289
              Height = 23
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                60.854166666666670000
                568.854166666666700000
                171.979166666666700000
                764.645833333333300000)
              XLColumn = 0
              Alignment = taCenter
              AlignToBand = True
              AutoSize = True
              AutoStretch = False
              Caption = 'Other Charges Billing Summary'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -19
              Font.Name = 'Arial Rounded MT Bold'
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 14
            end
            object QRLabel28: TQRLabel
              Left = 273
              Top = 48
              Width = 173
              Height = 18
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                47.625000000000000000
                722.312500000000000000
                127.000000000000000000
                457.729166666666700000)
              XLColumn = 0
              Alignment = taCenter
              AlignToBand = True
              AutoSize = True
              AutoStretch = False
              Caption = 'Gen. Luna St., Dipolog City'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial Rounded MT Bold'
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 10
            end
            object QRLabel29: TQRLabel
              Left = 323
              Top = 32
              Width = 73
              Height = 18
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                47.625000000000000000
                854.604166666666700000
                84.666666666666670000
                193.145833333333300000)
              XLColumn = 0
              Alignment = taCenter
              AlignToBand = True
              AutoSize = True
              AutoStretch = False
              Caption = '( ZANECO )'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial Rounded MT Bold'
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 10
            end
            object QRLabel30: TQRLabel
              Left = 145
              Top = 14
              Width = 429
              Height = 18
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                47.625000000000000000
                383.645833333333300000
                37.041666666666670000
                1135.062500000000000000)
              XLColumn = 0
              Alignment = taCenter
              AlignToBand = True
              AutoSize = True
              AutoStretch = False
              Caption = 'ZAMBOANGA DEL NORTE ELECTRIC COOPERATIVE, INC.'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Arial Rounded MT Bold'
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 11
            end
            object QRLabel31: TQRLabel
              Left = 63
              Top = 128
              Width = 80
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                166.687500000000000000
                338.666666666666700000
                211.666666666666700000)
              XLColumn = 0
              Alignment = taLeftJustify
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
            object QRLabel32: TQRLabel
              Left = 231
              Top = 128
              Width = 79
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                611.187500000000000000
                338.666666666666700000
                209.020833333333300000)
              XLColumn = 0
              Alignment = taLeftJustify
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
            object QRLabel33: TQRLabel
              Left = 383
              Top = 128
              Width = 65
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1013.354166666667000000
                338.666666666666700000
                171.979166666666700000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Date Entered'
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
            object QRLabel35: TQRLabel
              Left = 620
              Top = 128
              Width = 38
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1640.416666666667000000
                338.666666666666700000
                100.541666666666700000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Amount'
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
            object QRLabel34: TQRLabel
              Left = 471
              Top = 128
              Width = 53
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1246.187500000000000000
                338.666666666666700000
                140.229166666666700000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Bill Number'
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
          object QRBand3: TQRBand
            Left = 48
            Top = 226
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
            object QRDBText19: TQRDBText
              Left = 63
              Top = 7
              Width = 77
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                166.687500000000000000
                18.520833333333330000
                203.729166666666700000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = OCBilling
              DataField = 'AccountNumber'
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
            object QRDBText20: TQRDBText
              Left = 151
              Top = 7
              Width = 76
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                399.520833333333300000
                18.520833333333330000
                201.083333333333300000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = OCBilling
              DataField = 'ConsumerName'
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
            object QRDBText21: TQRDBText
              Left = 381
              Top = 7
              Width = 62
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1008.062500000000000000
                18.520833333333330000
                164.041666666666700000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = OCBilling
              DataField = 'DateEntered'
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
            object QRDBText23: TQRDBText
              Left = 619
              Top = 6
              Width = 38
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1637.770833333333000000
                15.875000000000000000
                100.541666666666700000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = OCBilling
              DataField = 'Amount'
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
            object QRDBText22: TQRDBText
              Left = 469
              Top = 7
              Width = 50
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1240.895833333333000000
                18.520833333333330000
                132.291666666666700000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = OCBilling
              DataField = 'BillNumber'
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
          end
          object QRBand4: TQRBand
            Left = 48
            Top = 255
            Width = 720
            Height = 27
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
              71.437500000000000000
              1905.000000000000000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbGroupFooter
            object QRExpr8: TQRExpr
              Left = 545
              Top = 6
              Width = 112
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1441.979166666667000000
                15.875000000000000000
                296.333333333333300000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = True
              Transparent = False
              WordWrap = True
              Expression = 'SUM(OCBilling.Amount)'
              Mask = '#,###.00'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRLabel40: TQRLabel
              Left = 376
              Top = 6
              Width = 67
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                994.833333333333300000
                15.875000000000000000
                177.270833333333300000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Account Total'
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
          object QRGroup2: TQRGroup
            Left = 48
            Top = 196
            Width = 720
            Height = 30
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
              79.375000000000000000
              1905.000000000000000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            Expression = 'OCBilling.accountcode'
            FooterBand = QRBand4
            Master = QuickRep3
            ReprintOnNewPage = False
            object QRDBText28: TQRDBText
              Left = 471
              Top = 6
              Width = 64
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1246.187500000000000000
                15.875000000000000000
                169.333333333333300000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = OCBilling
              DataField = 'BillingType'
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 10
            end
            object QRDBText29: TQRDBText
              Left = 311
              Top = 6
              Width = 64
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                822.854166666666700000
                15.875000000000000000
                169.333333333333300000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = OCBilling
              DataField = 'description'
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 10
            end
            object QRDBText30: TQRDBText
              Left = 184
              Top = 6
              Width = 75
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                486.833333333333300000
                15.875000000000000000
                198.437500000000000000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = OCBilling
              DataField = 'accountcode'
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 10
            end
          end
          object QRBand5: TQRBand
            Left = 48
            Top = 282
            Width = 720
            Height = 30
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
              79.375000000000000000
              1905.000000000000000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbSummary
            object QRExpr11: TQRExpr
              Left = 545
              Top = 6
              Width = 112
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1441.979166666667000000
                15.875000000000000000
                296.333333333333300000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = False
              Transparent = False
              WordWrap = True
              Expression = 'SUM(OCBilling.Amount)'
              Mask = '#,###.00'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRLabel41: TQRLabel
              Left = 379
              Top = 6
              Width = 62
              Height = 17
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1002.770833333333000000
                15.875000000000000000
                164.041666666666700000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Overall Total'
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
        end
      end
    end
  end
  object CloseAccountPanel: TNxHeaderPanel
    Left = 531
    Top = 261
    Width = 586
    Height = 352
    AdaptiveColors = False
    Caption = 'Close Accounts'
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -11
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = []
    ParentHeaderFont = False
    TabOrder = 8
    Visible = False
    DesignSize = (
      584
      350)
    FullWidth = 586
    object Label2: TLabel
      Left = 21
      Top = 38
      Width = 60
      Height = 13
      Caption = 'Closing Date'
    end
    object NxLinkLabel21: TNxLinkLabel
      Left = 539
      Top = 5
      Width = 32
      Height = 18
      Anchors = [akTop, akRight]
      Caption = 'Close'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      HoverColor = clMaroon
      ParentFont = False
      TextDistance = 2
      Transparent = True
      VertSpacing = 2
      OnClick = NxLinkLabel21Click
    end
    object ClosingDate: TDateTimePicker
      Left = 89
      Top = 34
      Width = 110
      Height = 21
      Date = 40994.413625949080000000
      Time = 40994.413625949080000000
      TabOrder = 2
    end
    object NxButton5: TNxButton
      Left = 242
      Top = 34
      Width = 158
      Caption = 'Close Highlighted Account'
      TabOrder = 3
      OnClick = NxButton5Click
    end
    object NxButton6: TNxButton
      Left = 410
      Top = 34
      Width = 158
      Caption = 'Closed Accounts Hardcopy'
      TabOrder = 4
      OnClick = NxButton6Click
    end
    object CRDBGrid6: TCRDBGrid1
      Left = 16
      Top = 64
      Width = 553
      Height = 273
      DataSource = dsCA
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'description'
          Title.Alignment = taCenter
          Title.Caption = 'Description'
          Width = 107
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AccountNumber'
          Title.Alignment = taCenter
          Title.Caption = 'Account Number'
          Width = 83
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ConsumerName'
          Title.Alignment = taCenter
          Title.Caption = 'Consumer Name'
          Width = 134
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DateEntered'
          Title.Alignment = taCenter
          Title.Caption = 'Date Entered'
          Width = 68
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Amount'
          Title.Alignment = taCenter
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Months'
          Title.Alignment = taCenter
          Width = 94
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'billcount'
          Title.Alignment = taCenter
          Title.Caption = 'Bill Count'
          Width = 94
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'billedamount'
          Title.Alignment = taCenter
          Title.Caption = 'Billed Amount'
          Width = 68
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'paidcount'
          Title.Alignment = taCenter
          Width = 94
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'paidamount'
          Title.Alignment = taCenter
          Width = 64
          Visible = True
        end>
    end
  end
  object OCMaster: TMyQuery
    Connection = BillingData.MyConnection1
    SQL.Strings = (
      'select * from ocmaster order by idocmaster')
    Left = 24
    Top = 32
    object OCMasterDateEntered: TDateField
      FieldName = 'DateEntered'
    end
    object OCMasterAccountCode: TStringField
      FieldName = 'AccountCode'
      Size = 15
    end
    object OCMasterDescription: TStringField
      FieldName = 'Description'
      Size = 50
    end
    object OCMasterOCType: TStringField
      FieldName = 'OCType'
      Size = 1
    end
    object OCMasterOCCODE: TStringField
      FieldName = 'OCCODE'
      Size = 10
    end
    object OCMasterDebitAccountCode: TStringField
      FieldName = 'DebitAccountCode'
      Size = 15
    end
    object OCMasteridocmaster: TLongWordField
      FieldName = 'idocmaster'
    end
  end
  object dsOCMaster: TMyDataSource
    DataSet = OCMaster
    Left = 24
    Top = 80
  end
  object AC: TMyQuery
    Connection = BillingData.MyConnection1
    SQL.Strings = (
      'select * from accountcode order by description')
    Left = 80
    Top = 34
    object ACCode: TStringField
      FieldName = 'Code'
      Size = 15
    end
    object ACDescription: TStringField
      FieldName = 'Description'
      Size = 50
    end
    object ACAmount: TFloatField
      FieldName = 'Amount'
    end
    object ACWithEVAT: TStringField
      FieldName = 'WithEVAT'
      Size = 1
    end
    object ACExcludeCOH: TStringField
      FieldName = 'ExcludeCOH'
      Size = 1
    end
  end
  object dsAC: TMyDataSource
    DataSet = AC
    Left = 80
    Top = 82
  end
  object OCDetail: TMyQuery
    Connection = BillingData.MyConnection1
    SQL.Strings = (
      'select * from ocdetail where idocmaster = :idocmaster')
    OnCalcFields = OCDetailCalcFields
    Left = 24
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'idocmaster'
      end>
    object OCDetailidOCMaster: TFloatField
      FieldName = 'idOCMaster'
    end
    object OCDetailCode: TFloatField
      FieldName = 'Code'
    end
    object OCDetailConsumerName: TStringField
      FieldName = 'ConsumerName'
      Size = 50
    end
    object OCDetailDateEntered: TDateField
      FieldName = 'DateEntered'
    end
    object OCDetailAmount: TFloatField
      FieldName = 'Amount'
    end
    object OCDetailStatus: TStringField
      FieldName = 'Status'
      Size = 1
    end
    object OCDetailDateClosed: TDateField
      FieldName = 'DateClosed'
    end
    object OCDetailAccountNumber: TStringField
      FieldKind = fkCalculated
      FieldName = 'AccountNumber'
      Calculated = True
    end
    object OCDetailCBook: TStringField
      FieldKind = fkCalculated
      FieldName = 'CBook'
      Calculated = True
    end
    object OCDetailOCCode: TStringField
      FieldName = 'OCCode'
      Size = 10
    end
    object OCDetailidOCDetail: TLongWordField
      FieldName = 'idOCDetail'
    end
    object OCDetailMonths: TLongWordField
      FieldName = 'Months'
    end
  end
  object dsOCDetail: TMyDataSource
    DataSet = OCDetail
    Left = 24
    Top = 176
  end
  object OCLedger: TMyQuery
    Connection = BillingData.MyConnection1
    SQL.Strings = (
      'select * from ocledger where idocdetail = :idocdetail'
      ' order by dateentered')
    Left = 80
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'idocdetail'
      end>
    object OCLedgeridOCDetail: TFloatField
      FieldName = 'idOCDetail'
    end
    object OCLedgerCode: TFloatField
      FieldName = 'Code'
    end
    object OCLedgerDateEntered: TDateField
      FieldName = 'DateEntered'
    end
    object OCLedgerBillMonth: TStringField
      FieldName = 'BillMonth'
      Size = 4
    end
    object OCLedgerBillNumber: TStringField
      FieldName = 'BillNumber'
      Size = 15
    end
    object OCLedgerAmount: TFloatField
      FieldName = 'Amount'
      currency = True
    end
    object OCLedgerTORNumber: TStringField
      FieldName = 'TORNumber'
      Size = 15
    end
    object OCLedgerDatePaid: TDateField
      FieldName = 'DatePaid'
    end
  end
  object dsOCLedger: TMyDataSource
    DataSet = OCLedger
    Left = 80
    Top = 176
  end
  object M: TMyQuery
    Connection = BillingData.MyConnection1
    SQL.Strings = (
      
        'select code, accountnumber, name from master where name like :na' +
        'me order by name')
    Left = 24
    Top = 224
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'name'
      end>
    object Mcode: TIntegerField
      FieldName = 'code'
    end
    object Maccountnumber: TStringField
      FieldName = 'accountnumber'
      Size = 10
    end
    object Mname: TStringField
      FieldName = 'name'
      Size = 50
    end
  end
  object dsM: TMyDataSource
    DataSet = M
    Left = 24
    Top = 272
  end
  object MSumm: TMyQuery
    Connection = BillingData.MyConnection1
    SQL.Strings = (
      'select OCM.accountcode,'
      '       OCM.description,'
      '       Case OCM.OCType '
      '         when '#39'M'#39' then '#39'Monthly Fixed'#39
      '         when '#39'I'#39' then '#39'Installment Mode'#39
      '         when '#39'P'#39' then '#39'Pilferage Mode'#39' '
      '         else '#39#39' end as BillingType,'
      '       M.AccountNumber,'
      '       OCD.ConsumerName, '
      '       OCD.DateEntered,'
      '       OCD.Amount,'
      '       OCD.Months,'
      '       count(oclb.idocledger) billcount, '
      '       sum(ifnull(oclb.amount,0)) billedamount, '
      '       count(oclp.idocledger) paidcount, '
      '       sum(ifnull(oclp.amount,0)) paidamount'
      'from OCDetail OCD'
      '  join OCMaster OCM on OCM.idOCMaster = OCD.idOCMaster'
      '  left join master M on OCD.Code = M.Code'
      '  inner join ocledger oclb on oclb.idocdetail = OCD.idocdetail'
      
        '  inner join ocledger oclp on (oclp.idocdetail = OCD.idocdetail)' +
        ' and '
      '                              ifnull(oclp.TORNumber,'#39#39') <> '#39#39
      'where ocd.status = '#39'1'#39
      'group by ocd.idocdetail'
      'order by ocm.idocmaster')
    Left = 78
    Top = 222
    object MSummaccountcode: TStringField
      FieldName = 'accountcode'
      Size = 15
    end
    object MSummdescription: TStringField
      FieldName = 'description'
      Size = 50
    end
    object MSummBillingType: TStringField
      FieldName = 'BillingType'
      Size = 16
    end
    object MSummAccountNumber: TStringField
      FieldName = 'AccountNumber'
      Size = 10
    end
    object MSummConsumerName: TStringField
      FieldName = 'ConsumerName'
      Size = 50
    end
    object MSummDateEntered: TDateField
      FieldName = 'DateEntered'
    end
    object MSummAmount: TFloatField
      FieldName = 'Amount'
      currency = True
    end
    object MSummbillcount: TLargeintField
      FieldName = 'billcount'
    end
    object MSummbilledamount: TFloatField
      FieldName = 'billedamount'
      currency = True
    end
    object MSummpaidcount: TLargeintField
      FieldName = 'paidcount'
    end
    object MSummpaidamount: TFloatField
      FieldName = 'paidamount'
      currency = True
    end
    object MSummMonths: TLongWordField
      FieldName = 'Months'
    end
  end
  object CA: TMyQuery
    Connection = BillingData.MyConnection1
    SQL.Strings = (
      'select OCM.accountcode,'
      '       OCM.description,'
      '       Case OCM.OCType '
      '         when '#39'M'#39' then '#39'Monthly Fized'#39
      '         when '#39'I'#39' then '#39'Installment Mode'#39
      '         when '#39'P'#39' then '#39'Pilferage Mode'#39' '
      '         else '#39#39' end as BillingType,'
      '       M.AccountNumber,'
      '       OCD.idOCDetail,'
      '       OCD.ConsumerName, '
      '       OCD.DateEntered,'
      '       OCD.Amount,'
      '       OCD.Months,'
      '       count(oclb.idocledger) billcount, '
      '       sum(ifnull(oclb.amount,0)) billedamount, '
      '       count(oclp.idocledger) paidcount, '
      '       sum(ifnull(oclp.amount,0)) paidamount'
      'from OCDetail OCD'
      '  join OCMaster OCM on OCM.idOCMaster = OCD.idOCMaster'
      '  left join master M on OCD.Code = M.Code'
      '  inner join ocledger oclb on oclb.idocdetail = OCD.idocdetail'
      
        '  inner join ocledger oclp on (oclp.idocdetail = OCD.idocdetail)' +
        ' and '
      '                              ifnull(oclp.TORNumber,'#39#39') <> '#39#39
      'where ocd.status = :status'
      'group by ocd.idocdetail'
      'having truncate(billedamount,2) = truncate(paidamount,2)'
      'order by ocm.idocmaster')
    Left = 78
    Top = 272
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'STATUS'
      end>
    object CAaccountcode: TStringField
      FieldName = 'accountcode'
      Size = 15
    end
    object CAdescription: TStringField
      FieldName = 'description'
      Size = 50
    end
    object CABillingType: TStringField
      FieldName = 'BillingType'
      Size = 16
    end
    object CAAccountNumber: TStringField
      FieldName = 'AccountNumber'
      Size = 10
    end
    object CAConsumerName: TStringField
      FieldName = 'ConsumerName'
      Size = 50
    end
    object CADateEntered: TDateField
      FieldName = 'DateEntered'
    end
    object CAAmount: TFloatField
      FieldName = 'Amount'
      currency = True
    end
    object CAbillcount: TLargeintField
      FieldName = 'billcount'
    end
    object CAbilledamount: TFloatField
      FieldName = 'billedamount'
      currency = True
    end
    object CApaidcount: TLargeintField
      FieldName = 'paidcount'
    end
    object CApaidamount: TFloatField
      FieldName = 'paidamount'
      currency = True
    end
    object CAMonths: TLongWordField
      FieldName = 'Months'
    end
    object CAidOCDetail: TLongWordField
      FieldName = 'idOCDetail'
    end
  end
  object dsCA: TMyDataSource
    DataSet = CA
    Left = 78
    Top = 324
  end
  object UpdateClose: TMyQuery
    Connection = BillingData.MyConnection1
    SQL.Strings = (
      'update OCDetail set DateClosed = :dateclosed,'
      '                    Status = '#39'2'#39
      'where idocdetail = :idocdetail')
    Left = 24
    Top = 328
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dateclosed'
      end
      item
        DataType = ftUnknown
        Name = 'idocdetail'
      end>
  end
  object CreateOCTables: TMyQuery
    Connection = BillingData.MyConnection1
    SQL.Strings = (
      'CREATE TABLE  `zaneco`.`ocdetail` ('
      '  `idOCDetail` int(10) unsigned NOT NULL auto_increment,'
      '  `idOCMaster` double NOT NULL,'
      '  `Code` double NOT NULL,'
      '  `ConsumerName` varchar(50) NOT NULL,'
      '  `DateEntered` date NOT NULL,'
      '  `Amount` double(12,2) NOT NULL,'
      '  `Months` int(10) unsigned default '#39'0'#39','
      '  `Status` varchar(1) default '#39'1'#39','
      '  `DateClosed` date default NULL,'
      '  `OCCode` varchar(10) default NULL,'
      '  PRIMARY KEY  (`idOCDetail`),'
      '  KEY `Index_2` (`idOCMaster`),'
      '  KEY `Index_3` (`Code`)'
      ') ENGINE=InnoDB DEFAULT CHARSET=latin1;'
      ''
      'CREATE TABLE  `zaneco`.`ocledger` ('
      '  `idOCLedger` int(10) unsigned NOT NULL auto_increment,'
      '  `idOCDetail` double NOT NULL,'
      '  `Code` double NOT NULL,'
      '  `DateEntered` date NOT NULL,'
      '  `BillMonth` varchar(4) NOT NULL,'
      '  `BillNumber` varchar(15) NOT NULL,'
      '  `Amount` double(12,2) NOT NULL,'
      '  `TORNumber` varchar(15) default NULL,'
      '  `DatePaid` date default NULL,'
      '  PRIMARY KEY  (`idOCLedger`),'
      '  UNIQUE KEY `Index_6` (`idOCDetail`,`Code`,`BillMonth`),'
      '  KEY `Index_2` (`idOCDetail`),'
      '  KEY `Index_3` (`Code`,`BillMonth`),'
      '  KEY `Index_4` (`BillNumber`),'
      '  KEY `Index_5` (`TORNumber`)'
      ') ENGINE=InnoDB DEFAULT CHARSET=latin1;'
      ''
      'CREATE TABLE  `zaneco`.`ocmaster` ('
      '  `idocmaster` int(10) unsigned NOT NULL auto_increment,'
      '  `DateEntered` date NOT NULL,'
      '  `AccountCode` varchar(15) NOT NULL,'
      '  `Description` varchar(50) NOT NULL,'
      '  `OCType` varchar(1) NOT NULL,'
      '  `OCCODE` varchar(10) default NULL,'
      '  PRIMARY KEY  (`idocmaster`)'
      ') ENGINE=InnoDB DEFAULT CHARSET=latin1;')
    Left = 136
    Top = 32
  end
  object CBM: TMyQuery
    Connection = BillingData.MyConnection1
    SQL.Strings = (
      'select distinct billmonth, '
      
        '       date(concat(substring(billmonth,3,2),'#39'/'#39',substring(billmo' +
        'nth,1,2),'#39'/01'#39')) mbillorder'
      'from ocledger'
      'order by mbillorder desc'
      'limit 1')
    Left = 136
    Top = 80
    object CBMbillmonth: TStringField
      FieldName = 'billmonth'
      Size = 4
    end
    object CBMmbillorder: TDateField
      FieldName = 'mbillorder'
    end
  end
  object OCBilling: TMyQuery
    Connection = BillingData.MyConnection1
    SQL.Strings = (
      'select OCM.accountcode,'
      '       OCM.description,'
      '       Case OCM.OCType '
      '         when '#39'M'#39' then '#39'Monthly Fixed'#39
      '         when '#39'I'#39' then '#39'Installment Mode'#39
      '         when '#39'P'#39' then '#39'Pilferage Mode'#39' '
      '         else '#39#39' end as BillingType,'
      '       M.AccountNumber,'
      '       OCD.ConsumerName, '
      '       OCD.DateEntered,'
      '       OCLB.Amount,'
      '       OCD.Months,'
      '       OCLB.BillMonth,'
      '       OCLB.BillNumber,'
      '       count(oclb.idocledger) billcount '
      'from OCLedger oclb'
      '  join ocdetail ocd on oclb.idocdetail = OCD.idocdetail'
      '  join OCMaster OCM on OCM.idOCMaster = OCD.idOCMaster'
      '  left join master M on OCD.Code = M.Code'
      'where oclb.BillMonth = :billmonth'
      'group by ocd.idocdetail'
      'order by ocm.idocmaster')
    Left = 136
    Top = 127
    ParamData = <
      item
        DataType = ftString
        Name = 'billmonth'
        Value = '0613'
      end>
    object OCBillingaccountcode: TStringField
      FieldName = 'accountcode'
      Size = 15
    end
    object OCBillingdescription: TStringField
      FieldName = 'description'
      Size = 50
    end
    object OCBillingBillingType: TStringField
      FieldName = 'BillingType'
      Size = 16
    end
    object OCBillingAccountNumber: TStringField
      FieldName = 'AccountNumber'
      Size = 10
    end
    object OCBillingConsumerName: TStringField
      FieldName = 'ConsumerName'
      Size = 50
    end
    object OCBillingDateEntered: TDateField
      FieldName = 'DateEntered'
    end
    object OCBillingAmount: TFloatField
      FieldName = 'Amount'
      currency = True
    end
    object OCBillingBillNumber: TStringField
      FieldName = 'BillNumber'
      Size = 15
    end
    object OCBillingBillMonth: TStringField
      FieldName = 'BillMonth'
      Size = 4
    end
    object OCBillingbillcount: TLargeintField
      FieldName = 'billcount'
    end
    object OCBillingMonths: TLongWordField
      FieldName = 'Months'
    end
  end
end
