object MCCSummaryForm: TMCCSummaryForm
  Left = 291
  Top = 63
  BorderIcons = [biSystemMenu]
  Caption = 'Month End Summary Interface'
  ClientHeight = 463
  ClientWidth = 741
  Color = clWindow
  Constraints.MinHeight = 500
  Constraints.MinWidth = 626
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Gauge1: TGauge
    Left = 11
    Top = 409
    Width = 125
    Height = 20
    Progress = 0
  end
  object NxPageControl1: TNxPageControl
    Left = 158
    Top = 221
    Width = 571
    Height = 227
    ActivePage = NxTabSheet1
    ActivePageIndex = 0
    TabOrder = 12
    BackgroundKind = bkTransparent
    Margin = 0
    Spacing = 0
    TabHeight = 17
    object NxTabSheet1: TNxTabSheet
      Caption = 'Month-End Summaries'
      PageIndex = 0
      ParentTabFont = False
      TabFont.Charset = ANSI_CHARSET
      TabFont.Color = clWindowText
      TabFont.Height = -13
      TabFont.Name = 'Tahoma'
      TabFont.Style = []
      ExplicitTop = 0
      object CRDBGrid2: TCRDBGrid1
        Left = 0
        Top = 0
        Width = 571
        Height = 206
        Align = alClient
        Ctl3D = False
        DataSource = dsmccdetail
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = CRDBGrid2DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'Area'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 31
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Municipality'
            Title.Alignment = taCenter
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 130
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PrevAmount'
            Title.Alignment = taCenter
            Title.Caption = 'Previous'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CurrAmount'
            Title.Alignment = taCenter
            Title.Caption = 'Current'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AdjDrAmount'
            Title.Alignment = taCenter
            Title.Caption = 'Debit Adj'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AdjCrAmount'
            Title.Alignment = taCenter
            Title.Caption = 'Credit Adj'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TAmount'
            Title.Alignment = taCenter
            Title.Caption = 'Total'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CollAmount'
            Title.Alignment = taCenter
            Title.Caption = 'Collection'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BalAmount'
            Title.Alignment = taCenter
            Title.Caption = 'Balance'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 90
            Visible = True
          end>
      end
    end
    object NxTabSheet2: TNxTabSheet
      Caption = 'Monthly Net Collection Efficiency'
      PageIndex = 1
      ParentTabFont = False
      TabFont.Charset = ANSI_CHARSET
      TabFont.Color = clWindowText
      TabFont.Height = -13
      TabFont.Name = 'Tahoma'
      TabFont.Style = []
      ExplicitTop = 0
      object CRDBGrid3: TCRDBGrid1
        Left = 0
        Top = 0
        Width = 571
        Height = 206
        Align = alClient
        DataSource = dsCollEffDetail
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = CRDBGrid3DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'District'
            Title.Alignment = taCenter
            Width = 43
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Area'
            Title.Alignment = taCenter
            Width = 31
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Municipality'
            Title.Alignment = taCenter
            Width = 116
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ArrearsAmount'
            Title.Alignment = taCenter
            Title.Caption = 'Arrears'
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CurrentAmount'
            Title.Alignment = taCenter
            Title.Caption = 'Current'
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AdjDrAmount'
            Title.Alignment = taCenter
            Title.Caption = 'Debit'
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AdjCrAmount'
            Title.Alignment = taCenter
            Title.Caption = 'Credit'
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NetReceivables'
            Title.Alignment = taCenter
            Title.Caption = 'Net'
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ArrearsColl'
            Title.Alignment = taCenter
            Title.Caption = 'Arrears Coll'
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CurrentColl'
            Title.Alignment = taCenter
            Title.Caption = 'Current Coll'
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ArrearsBalance'
            Title.Alignment = taCenter
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CurrentBalance'
            Title.Alignment = taCenter
            Width = 90
            Visible = True
          end>
      end
    end
  end
  object RadioGroup1: TRadioGroup
    Left = 13
    Top = 225
    Width = 129
    Height = 178
    Caption = ' Detail Option '
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Items.Strings = (
      'Kilowatthour'
      'Mem. Cont. Capex'
      'UC Environment'
      'UC Missionary '
      'UC SCC '
      'PSALM EVAT'
      'NGCP EVAT'
      'DIST. EVAT'
      'System Loss EVAT')
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 4
    OnClick = RadioGroup1Click
  end
  object NxLinkLabel1: TNxLinkLabel
    Left = 114
    Top = 14
    Width = 28
    Height = 18
    Caption = 'New'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    HoverColor = clBlue
    ParentFont = False
    TextDistance = 2
    VertSpacing = 2
    OnClick = NxLinkLabel1Click
  end
  object NxLinkLabel2: TNxLinkLabel
    Left = 118
    Top = 36
    Width = 25
    Height = 18
    Caption = 'Edit'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    HoverColor = clBlue
    ParentFont = False
    TextDistance = 2
    VertSpacing = 2
    OnClick = NxLinkLabel2Click
  end
  object NxLinkLabel3: TNxLinkLabel
    Left = 103
    Top = 58
    Width = 43
    Height = 18
    Caption = 'Delete'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    HoverColor = clBlue
    ParentFont = False
    TextDistance = 2
    VertSpacing = 2
    OnClick = NxLinkLabel3Click
  end
  object NxLinkLabel4: TNxLinkLabel
    Left = 87
    Top = 153
    Width = 57
    Height = 18
    Caption = 'Retrieve'
    Font.Charset = ANSI_CHARSET
    Font.Color = clGreen
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    HoverColor = clGreen
    ParentFont = False
    TextDistance = 2
    VertSpacing = 2
    OnClick = NxLinkLabel4Click
  end
  object NxLinkLabel5: TNxLinkLabel
    Left = 7
    Top = 177
    Width = 137
    Height = 18
    Caption = 'Month-End Hardcopy'
    Font.Charset = ANSI_CHARSET
    Font.Color = clGreen
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    HoverColor = clGreen
    ParentFont = False
    TextDistance = 2
    VertSpacing = 2
    OnClick = NxLinkLabel5Click
  end
  object NxLinkLabel9: TNxLinkLabel
    Left = 103
    Top = 430
    Width = 32
    Height = 18
    Caption = 'Close'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    HoverColor = clRed
    ParentFont = False
    TextDistance = 2
    VertSpacing = 2
    OnClick = NxLinkLabel9Click
  end
  object NxLinkLabel13: TNxLinkLabel
    Left = 34
    Top = 201
    Width = 110
    Height = 18
    Caption = 'Coll Eff Hardcopy'
    Font.Charset = ANSI_CHARSET
    Font.Color = clPurple
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    HoverColor = clPurple
    ParentFont = False
    TextDistance = 2
    VertSpacing = 2
    OnClick = NxLinkLabel13Click
  end
  object CRDBGrid1: TCRDBGrid1
    Left = 157
    Top = 11
    Width = 573
    Height = 204
    Ctl3D = False
    DataSource = dsmccsumm
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Description'
        Title.Alignment = taCenter
        Width = 300
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'BillMonth'
        Title.Alignment = taCenter
        Title.Caption = 'Bill Month'
        Width = 59
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DateFrom'
        Title.Alignment = taCenter
        Title.Caption = 'Date From'
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DateTo'
        Title.Alignment = taCenter
        Title.Caption = 'Date To'
        Width = 80
        Visible = True
      end>
  end
  object MCCPanel: TNxHeaderPanel
    Left = 127
    Top = 454
    Width = 329
    Height = 173
    Caption = 'Summary Parameters'
    Color = 16568252
    HeaderFont.Charset = ANSI_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -13
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = [fsBold]
    ParentHeaderFont = False
    TabOrder = 1
    Visible = False
    FullWidth = 329
    object Label1: TLabel
      Left = 26
      Top = 49
      Width = 63
      Height = 16
      Caption = 'Description'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 34
      Top = 75
      Width = 55
      Height = 16
      Caption = 'Bill Month'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 29
      Top = 101
      Width = 60
      Height = 16
      Caption = 'Date From'
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 44
      Top = 127
      Width = 45
      Height = 16
      Caption = 'Date To'
      FocusControl = DBEdit4
    end
    object DBEdit1: TDBEdit
      Left = 96
      Top = 47
      Width = 200
      Height = 22
      Ctl3D = False
      DataField = 'Description'
      DataSource = dsmccsumm
      ParentCtl3D = False
      TabOrder = 0
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit2: TDBEdit
      Left = 96
      Top = 73
      Width = 200
      Height = 22
      Ctl3D = False
      DataField = 'BillMonth'
      DataSource = dsmccsumm
      ParentCtl3D = False
      TabOrder = 1
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit3: TDBEdit
      Left = 96
      Top = 99
      Width = 200
      Height = 22
      Ctl3D = False
      DataField = 'DateFrom'
      DataSource = dsmccsumm
      ParentCtl3D = False
      TabOrder = 2
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit4: TDBEdit
      Left = 96
      Top = 125
      Width = 200
      Height = 22
      Ctl3D = False
      DataField = 'DateTo'
      DataSource = dsmccsumm
      ParentCtl3D = False
      TabOrder = 3
    end
    object NxLinkLabel6: TNxLinkLabel
      Left = 235
      Top = 4
      Width = 33
      Height = 18
      Caption = 'Save'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      HoverColor = clBlue
      ParentFont = False
      TextDistance = 2
      Transparent = True
      VertSpacing = 2
      OnClick = NxLinkLabel6Click
    end
    object NxLinkLabel7: TNxLinkLabel
      Left = 275
      Top = 4
      Width = 43
      Height = 18
      Caption = 'Cancel'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      HoverColor = clBlue
      ParentFont = False
      TextDistance = 2
      Transparent = True
      VertSpacing = 2
      OnClick = NxLinkLabel7Click
    end
  end
  object EditFBPanel: TNxHeaderPanel
    Left = 598
    Top = 364
    Width = 337
    Height = 233
    Caption = 'Edit FB Month end'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    HeaderFont.Charset = ANSI_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -13
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = [fsBold]
    ParentFont = False
    ParentHeaderFont = False
    TabOrder = 5
    Visible = False
    FullWidth = 337
    object Label9: TLabel
      Left = 62
      Top = 48
      Width = 63
      Height = 16
      Caption = 'Description'
      FocusControl = DBEdit9
    end
    object Label10: TLabel
      Left = 74
      Top = 75
      Width = 51
      Height = 16
      Caption = 'BillMonth'
      FocusControl = DBEdit10
    end
    object Label11: TLabel
      Left = 26
      Top = 103
      Width = 99
      Height = 16
      Caption = 'Detail Description'
      FocusControl = DBEdit11
    end
    object Label12: TLabel
      Left = 15
      Top = 131
      Width = 110
      Height = 16
      Caption = 'Forwarded Balance'
      FocusControl = DBEdit11
    end
    object Label13: TLabel
      Left = 27
      Top = 159
      Width = 98
      Height = 16
      Caption = 'Debit Adjustment'
      FocusControl = DBEdit11
    end
    object Label14: TLabel
      Left = 22
      Top = 187
      Width = 103
      Height = 16
      Caption = 'Credit Adjustment'
      FocusControl = DBEdit11
    end
    object NxLinkLabel10: TNxLinkLabel
      Left = 286
      Top = 5
      Width = 39
      Height = 18
      Caption = 'Cancel'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      HoverColor = clRed
      ParentFont = False
      TextDistance = 2
      Transparent = True
      VertSpacing = 2
      OnClick = NxLinkLabel10Click
    end
    object NxLinkLabel11: TNxLinkLabel
      Left = 246
      Top = 5
      Width = 29
      Height = 18
      Caption = 'Save'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      HoverColor = clRed
      ParentFont = False
      TextDistance = 2
      Transparent = True
      VertSpacing = 2
      OnClick = NxLinkLabel11Click
    end
    object DBEdit9: TDBEdit
      Left = 128
      Top = 46
      Width = 180
      Height = 22
      Color = clCream
      Ctl3D = False
      DataField = 'Description'
      DataSource = dsmccsumm
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 2
    end
    object DBEdit10: TDBEdit
      Left = 128
      Top = 73
      Width = 180
      Height = 22
      Color = clCream
      Ctl3D = False
      DataField = 'BillMonth'
      DataSource = dsmccsumm
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 3
    end
    object DBEdit11: TDBEdit
      Left = 128
      Top = 100
      Width = 180
      Height = 22
      Color = clCream
      Ctl3D = False
      DataField = 'ReportType'
      DataSource = dsmccdetail
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 4
    end
    object DBEdit12: TDBEdit
      Left = 128
      Top = 128
      Width = 180
      Height = 22
      Ctl3D = False
      DataField = 'PrevAmount'
      DataSource = dsmccdetail
      ParentCtl3D = False
      TabOrder = 5
      OnKeyPress = DBEdit12KeyPress
    end
    object DBEdit13: TDBEdit
      Left = 128
      Top = 156
      Width = 180
      Height = 22
      Ctl3D = False
      DataField = 'AdjDrAmount'
      DataSource = dsmccdetail
      ParentCtl3D = False
      TabOrder = 6
      OnKeyPress = DBEdit12KeyPress
    end
    object DBEdit14: TDBEdit
      Left = 128
      Top = 184
      Width = 180
      Height = 22
      Ctl3D = False
      DataField = 'AdjCrAmount'
      DataSource = dsmccdetail
      ParentCtl3D = False
      TabOrder = 7
      OnKeyPress = DBEdit14KeyPress
    end
  end
  object RetrievePanel: TNxHeaderPanel
    Left = 171
    Top = 120
    Width = 337
    Height = 215
    Caption = 'Retrieve '
    Color = 16568252
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    HeaderFont.Charset = ANSI_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -13
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = [fsBold]
    ParentFont = False
    ParentHeaderFont = False
    TabOrder = 2
    Visible = False
    FullWidth = 337
    object Bevel1: TBevel
      Left = 14
      Top = 40
      Width = 308
      Height = 120
      Shape = bsFrame
    end
    object Label5: TLabel
      Left = 30
      Top = 51
      Width = 63
      Height = 16
      Caption = 'Description'
      FocusControl = DBEdit5
    end
    object Label6: TLabel
      Left = 38
      Top = 77
      Width = 55
      Height = 16
      Caption = 'Bill Month'
      FocusControl = DBEdit6
    end
    object Label7: TLabel
      Left = 33
      Top = 103
      Width = 60
      Height = 16
      Caption = 'Date From'
      FocusControl = DBEdit7
    end
    object Label8: TLabel
      Left = 48
      Top = 129
      Width = 45
      Height = 16
      Caption = 'Date To'
      FocusControl = DBEdit8
    end
    object DBEdit5: TDBEdit
      Left = 100
      Top = 49
      Width = 205
      Height = 22
      Color = clCream
      Ctl3D = False
      DataField = 'Description'
      DataSource = dsmccsumm
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit6: TDBEdit
      Left = 100
      Top = 75
      Width = 205
      Height = 22
      Color = clCream
      Ctl3D = False
      DataField = 'BillMonth'
      DataSource = dsmccsumm
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object DBEdit7: TDBEdit
      Left = 100
      Top = 101
      Width = 205
      Height = 22
      Color = clCream
      Ctl3D = False
      DataField = 'DateFrom'
      DataSource = dsmccsumm
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object DBEdit8: TDBEdit
      Left = 100
      Top = 127
      Width = 205
      Height = 22
      Color = clCream
      Ctl3D = False
      DataField = 'DateTo'
      DataSource = dsmccsumm
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object NxButton1: TNxButton
      Left = 12
      Top = 166
      Width = 152
      Height = 30
      Caption = 'Retrieve Month-End'
      TabOrder = 4
      OnClick = NxButton1Click
    end
    object NxLinkLabel8: TNxLinkLabel
      Left = 290
      Top = 5
      Width = 35
      Height = 18
      Caption = 'Close'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      HoverColor = clWindowText
      ParentFont = False
      TextDistance = 2
      Transparent = True
      VertSpacing = 2
      OnClick = NxLinkLabel8Click
    end
    object NxButton2: TNxButton
      Left = 170
      Top = 166
      Width = 152
      Height = 30
      Caption = 'Retrieve Net Collection'
      TabOrder = 6
      OnClick = NxButton2Click
    end
  end
  object Panel1: TPanel
    Left = 645
    Top = 343
    Width = 1257
    Height = 513
    BevelInner = bvLowered
    BorderWidth = 7
    TabOrder = 3
    Visible = False
    object PageControl1: TPageControl
      Left = 9
      Top = 9
      Width = 1239
      Height = 495
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 17
      ExplicitTop = 93
      object TabSheet1: TTabSheet
        Caption = 'Month End Summaries'
        object QuickRep1: TQuickRep
          Tag = 1
          Left = 59
          Top = -11
          Width = 1056
          Height = 816
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          DataSet = MCCDetail
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
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
          PrevShowSearch = False
          PrevInitialZoom = qrZoomOther
          PreviewDefaultSaveType = stQRP
          PreviewLeft = 0
          PreviewTop = 0
          object TitleBand1: TQRBand
            Left = 48
            Top = 48
            Width = 960
            Height = 74
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
              195.791666666666700000
              2540.000000000000000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbColumnHeader
            object QRSysData1: TQRSysData
              Left = 9
              Top = 8
              Width = 58
              Height = 14
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                23.812500000000000000
                21.166666666666670000
                153.458333333333300000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              Color = clWhite
              Data = qrsDateTime
              Transparent = False
              ExportAs = exptText
              FontSize = 8
            end
            object CurrentMonthLabel: TQRLabel
              Left = 405
              Top = 31
              Width = 150
              Height = 20
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                52.916666666666670000
                1071.562500000000000000
                82.020833333333330000
                396.875000000000000000)
              XLColumn = 0
              Alignment = taCenter
              AlignToBand = True
              AutoSize = True
              AutoStretch = False
              Caption = 'CURRENT BILLING MONTH'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 10
            end
            object PeriodCoveredLabel: TQRLabel
              Left = 428
              Top = 53
              Width = 103
              Height = 20
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                52.916666666666670000
                1132.416666666667000000
                140.229166666666700000
                272.520833333333300000)
              XLColumn = 0
              Alignment = taCenter
              AlignToBand = True
              AutoSize = True
              AutoStretch = False
              Caption = 'PERIOD COVERED'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 10
            end
            object QRLabel1: TQRLabel
              Left = 301
              Top = 8
              Width = 358
              Height = 20
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                52.916666666666670000
                796.395833333333300000
                21.166666666666670000
                947.208333333333300000)
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
          end
          object DetailBand1: TQRBand
            Left = 48
            Top = 166
            Width = 960
            Height = 28
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
              74.083333333333330000
              2540.000000000000000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbDetail
            object QRDBText1: TQRDBText
              Left = 8
              Top = 7
              Width = 24
              Height = 14
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                21.166666666666670000
                18.520833333333330000
                63.500000000000000000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = MCCDetail
              DataField = 'Area'
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 8
            end
            object QRDBText2: TQRDBText
              Left = 40
              Top = 7
              Width = 56
              Height = 14
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                105.833333333333300000
                18.520833333333330000
                148.166666666666700000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = MCCDetail
              DataField = 'Municipality'
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 8
            end
            object QRDBText4: TQRDBText
              Left = 181
              Top = 7
              Width = 90
              Height = 14
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                478.895833333333300000
                18.520833333333330000
                238.125000000000000000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = MCCDetail
              DataField = 'PrevAmount'
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 8
            end
            object QRDBText6: TQRDBText
              Left = 279
              Top = 7
              Width = 90
              Height = 14
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                738.187500000000000000
                18.520833333333330000
                238.125000000000000000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = MCCDetail
              DataField = 'CurrAmount'
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 8
            end
            object QRDBText8: TQRDBText
              Left = 377
              Top = 7
              Width = 90
              Height = 14
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                997.479166666666700000
                18.520833333333330000
                238.125000000000000000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = MCCDetail
              DataField = 'AdjDrAmount'
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 8
            end
            object QRDBText10: TQRDBText
              Left = 475
              Top = 7
              Width = 90
              Height = 14
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                1256.770833333333000000
                18.520833333333330000
                238.125000000000000000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = MCCDetail
              DataField = 'AdjCrAmount'
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 8
            end
            object QRDBText12: TQRDBText
              Left = 573
              Top = 7
              Width = 90
              Height = 14
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                1516.062500000000000000
                18.520833333333330000
                238.125000000000000000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = MCCDetail
              DataField = 'TAmount'
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 8
            end
            object QRDBText14: TQRDBText
              Left = 671
              Top = 7
              Width = 90
              Height = 14
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                1775.354166666667000000
                18.520833333333330000
                238.125000000000000000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = MCCDetail
              DataField = 'CollAmount'
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 8
            end
            object QRDBText16: TQRDBText
              Left = 770
              Top = 7
              Width = 90
              Height = 14
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                2037.291666666667000000
                18.520833333333330000
                238.125000000000000000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = MCCDetail
              DataField = 'BalAmount'
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 8
            end
            object QRDBText17: TQRDBText
              Left = 892
              Top = 7
              Width = 38
              Height = 14
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                2360.083333333333000000
                18.520833333333330000
                100.541666666666700000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = MCCDetail
              DataField = 'Percent'
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 8
            end
            object QRLabel29: TQRLabel
              Left = 935
              Top = 7
              Width = 12
              Height = 14
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                2473.854166666667000000
                18.520833333333330000
                31.750000000000000000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = '%'
              Color = clWhite
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
          end
          object SummaryBand1: TQRBand
            Left = 48
            Top = 194
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
            BandType = rbGroupFooter
            object QRLabel28: TQRLabel
              Left = 87
              Top = 8
              Width = 25
              Height = 14
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                230.187500000000000000
                21.166666666666670000
                66.145833333333330000)
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
              FontSize = 8
            end
            object QRExpr2: TQRExpr
              Left = 180
              Top = 8
              Width = 90
              Height = 14
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                476.250000000000000000
                21.166666666666670000
                238.125000000000000000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              ResetAfterPrint = True
              Transparent = False
              WordWrap = True
              Expression = 'SUM(MCCDetail.PrevAmount)'
              Mask = '#,###.00'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRExpr4: TQRExpr
              Left = 278
              Top = 8
              Width = 90
              Height = 14
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                735.541666666666700000
                21.166666666666670000
                238.125000000000000000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              ResetAfterPrint = True
              Transparent = False
              WordWrap = True
              Expression = 'SUM(MCCDetail.CurrAmount)'
              Mask = '#,###.00'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRExpr6: TQRExpr
              Left = 378
              Top = 8
              Width = 90
              Height = 14
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                1000.125000000000000000
                21.166666666666670000
                238.125000000000000000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              ResetAfterPrint = True
              Transparent = False
              WordWrap = True
              Expression = 'SUM(MCCDetail.AdjDrAmount)'
              Mask = '#,###.00'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRExpr8: TQRExpr
              Left = 475
              Top = 8
              Width = 90
              Height = 14
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                1256.770833333333000000
                21.166666666666670000
                238.125000000000000000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              ResetAfterPrint = True
              Transparent = False
              WordWrap = True
              Expression = 'SUM(MCCDetail.AdjCrAmount)'
              Mask = '#,###.00'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRExpr10: TQRExpr
              Left = 574
              Top = 8
              Width = 90
              Height = 14
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                1518.708333333333000000
                21.166666666666670000
                238.125000000000000000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              ResetAfterPrint = True
              Transparent = False
              WordWrap = True
              Expression = 'SUM(MCCDetail.TAmount)'
              Mask = '#,###.00'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRExpr12: TQRExpr
              Left = 670
              Top = 8
              Width = 90
              Height = 14
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                1772.708333333333000000
                21.166666666666670000
                238.125000000000000000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              ResetAfterPrint = True
              Transparent = False
              WordWrap = True
              Expression = 'SUM(MCCDetail.CollAmount)'
              Mask = '#,###.00'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRExpr14: TQRExpr
              Left = 771
              Top = 8
              Width = 90
              Height = 14
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                2039.937500000000000000
                21.166666666666670000
                238.125000000000000000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              ResetAfterPrint = True
              Transparent = False
              WordWrap = True
              Expression = 'SUM(MCCDetail.BalAmount)'
              Mask = '#,###.00'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
          end
          object QRGroup1: TQRGroup
            Left = 48
            Top = 122
            Width = 960
            Height = 44
            Frame.DrawTop = False
            Frame.DrawBottom = True
            Frame.DrawLeft = False
            Frame.DrawRight = False
            AlignToBottom = False
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = True
            Size.Values = (
              116.416666666666700000
              2540.000000000000000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            Expression = 'MCCDetail.summcode'
            FooterBand = SummaryBand1
            Master = QuickRep1
            ReprintOnNewPage = False
            object QRDBText3: TQRDBText
              Left = 439
              Top = 3
              Width = 82
              Height = 20
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                52.916666666666670000
                1161.520833333333000000
                7.937500000000000000
                216.958333333333300000)
              XLColumn = 0
              Alignment = taCenter
              AlignToBand = True
              AutoSize = True
              AutoStretch = True
              Color = clWhite
              DataSet = MCCDetail
              DataField = 'ReportType'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 12
            end
            object QRLabel3: TQRLabel
              Left = 9
              Top = 28
              Width = 24
              Height = 14
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                23.812500000000000000
                74.083333333333330000
                63.500000000000000000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Area'
              Color = clWhite
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRLabel4: TQRLabel
              Left = 61
              Top = 28
              Width = 56
              Height = 14
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                161.395833333333300000
                74.083333333333330000
                148.166666666666700000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Municipality'
              Color = clWhite
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRLabel5: TQRLabel
              Left = 180
              Top = 28
              Width = 90
              Height = 14
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                476.250000000000000000
                74.083333333333330000
                238.125000000000000000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = 'Previous'
              Color = clWhite
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRLabel8: TQRLabel
              Left = 278
              Top = 28
              Width = 90
              Height = 14
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                735.541666666666700000
                74.083333333333330000
                238.125000000000000000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = 'Current Month'
              Color = clWhite
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRLabel16: TQRLabel
              Left = 376
              Top = 28
              Width = 90
              Height = 14
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                994.833333333333300000
                74.083333333333330000
                238.125000000000000000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = 'Debit Adjustment'
              Color = clWhite
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRLabel17: TQRLabel
              Left = 474
              Top = 28
              Width = 90
              Height = 14
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                1254.125000000000000000
                74.083333333333330000
                238.125000000000000000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = 'Credit Adjustment'
              Color = clWhite
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRLabel18: TQRLabel
              Left = 572
              Top = 28
              Width = 90
              Height = 14
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                1513.416666666667000000
                74.083333333333330000
                238.125000000000000000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = 'TOTAL'
              Color = clWhite
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRLabel21: TQRLabel
              Left = 670
              Top = 28
              Width = 90
              Height = 14
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                1772.708333333333000000
                74.083333333333330000
                238.125000000000000000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = 'Collection'
              Color = clWhite
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRLabel24: TQRLabel
              Left = 769
              Top = 28
              Width = 90
              Height = 14
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                2034.645833333333000000
                74.083333333333330000
                238.125000000000000000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = 'Balance'
              Color = clWhite
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRLabel27: TQRLabel
              Left = 891
              Top = 28
              Width = 38
              Height = 14
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                2357.437500000000000000
                74.083333333333330000
                100.541666666666700000)
              XLColumn = 0
              Alignment = taCenter
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Percent'
              Color = clWhite
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Net Collection Efficiency'
        ImageIndex = 1
        object QuickRep2: TQuickRep
          Tag = 1
          Left = 41
          Top = 31
          Width = 1248
          Height = 816
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          DataSet = CollEffDetail
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
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
          Page.PaperSize = Custom
          Page.Continuous = False
          Page.Values = (
            127.000000000000000000
            2159.000000000000000000
            127.000000000000000000
            3302.000000000000000000
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
          PrevShowSearch = False
          PrevInitialZoom = qrZoomOther
          PreviewDefaultSaveType = stQRP
          PreviewLeft = 0
          PreviewTop = 0
          object QRBand1: TQRBand
            Left = 48
            Top = 48
            Width = 1152
            Height = 137
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
              362.479166666666700000
              3048.000000000000000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbColumnHeader
            object QRSysData2: TQRSysData
              Left = 9
              Top = 8
              Width = 58
              Height = 14
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                23.812500000000000000
                21.166666666666670000
                153.458333333333300000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              Color = clWhite
              Data = qrsDateTime
              Transparent = False
              ExportAs = exptText
              FontSize = 8
            end
            object QRLabel2: TQRLabel
              Left = 397
              Top = 8
              Width = 358
              Height = 20
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                52.916666666666670000
                1050.395833333333000000
                21.166666666666670000
                947.208333333333300000)
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
            object QRLabel6: TQRLabel
              Left = 501
              Top = 54
              Width = 150
              Height = 20
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                52.916666666666670000
                1325.562500000000000000
                142.875000000000000000
                396.875000000000000000)
              XLColumn = 0
              Alignment = taCenter
              AlignToBand = True
              AutoSize = True
              AutoStretch = False
              Caption = 'CURRENT BILLING MONTH'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 10
            end
            object QRLabel7: TQRLabel
              Left = 524
              Top = 76
              Width = 103
              Height = 20
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                52.916666666666670000
                1386.416666666667000000
                201.083333333333300000
                272.520833333333300000)
              XLColumn = 0
              Alignment = taCenter
              AlignToBand = True
              AutoSize = True
              AutoStretch = False
              Caption = 'PERIOD COVERED'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 10
            end
            object QRLabel11: TQRLabel
              Left = 9
              Top = 115
              Width = 24
              Height = 14
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                23.812500000000000000
                304.270833333333300000
                63.500000000000000000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Area'
              Color = clWhite
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRLabel12: TQRLabel
              Left = 61
              Top = 115
              Width = 56
              Height = 14
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                161.395833333333300000
                304.270833333333300000
                148.166666666666700000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Municipality'
              Color = clWhite
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRLabel13: TQRLabel
              Left = 164
              Top = 115
              Width = 90
              Height = 14
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                433.916666666666700000
                304.270833333333300000
                238.125000000000000000)
              XLColumn = 0
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = 'Arrears'
              Color = clWhite
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRLabel14: TQRLabel
              Left = 262
              Top = 115
              Width = 90
              Height = 14
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                693.208333333333300000
                304.270833333333300000
                238.125000000000000000)
              XLColumn = 0
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = 'Current'
              Color = clWhite
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRLabel15: TQRLabel
              Left = 360
              Top = 115
              Width = 90
              Height = 14
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                952.500000000000000000
                304.270833333333300000
                238.125000000000000000)
              XLColumn = 0
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = 'Debit Adjustment'
              Color = clWhite
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRLabel19: TQRLabel
              Left = 458
              Top = 115
              Width = 90
              Height = 14
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                1211.791666666667000000
                304.270833333333300000
                238.125000000000000000)
              XLColumn = 0
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = 'Credit Adjustment'
              Color = clWhite
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRLabel20: TQRLabel
              Left = 556
              Top = 115
              Width = 90
              Height = 14
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                1471.083333333333000000
                304.270833333333300000
                238.125000000000000000)
              XLColumn = 0
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = 'Net Receivables'
              Color = clWhite
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRLabel22: TQRLabel
              Left = 654
              Top = 115
              Width = 90
              Height = 14
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                1730.375000000000000000
                304.270833333333300000
                238.125000000000000000)
              XLColumn = 0
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = 'Arrears'
              Color = clWhite
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRLabel23: TQRLabel
              Left = 753
              Top = 115
              Width = 90
              Height = 14
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                1992.312500000000000000
                304.270833333333300000
                238.125000000000000000)
              XLColumn = 0
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = 'Current'
              Color = clWhite
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRLabel25: TQRLabel
              Left = 1043
              Top = 115
              Width = 38
              Height = 14
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                2759.604166666667000000
                304.270833333333300000
                100.541666666666700000)
              XLColumn = 0
              Alignment = taCenter
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Percent'
              Color = clWhite
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRLabel26: TQRLabel
              Left = 433
              Top = 31
              Width = 285
              Height = 20
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                52.916666666666670000
                1145.645833333333000000
                82.020833333333330000
                754.062500000000000000)
              XLColumn = 0
              Alignment = taCenter
              AlignToBand = True
              AutoSize = True
              AutoStretch = False
              Caption = 'NET COLLECTION EFFICIENCY REPORT'
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
            object QRLabel30: TQRLabel
              Left = 654
              Top = 99
              Width = 188
              Height = 14
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                1730.375000000000000000
                261.937500000000000000
                497.416666666666700000)
              XLColumn = 0
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = 'Collection'
              Color = clWhite
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRLabel31: TQRLabel
              Left = 846
              Top = 99
              Width = 188
              Height = 14
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                2238.375000000000000000
                261.937500000000000000
                497.416666666666700000)
              XLColumn = 0
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = 'Balance'
              Color = clWhite
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRLabel32: TQRLabel
              Left = 1112
              Top = 115
              Width = 30
              Height = 14
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                2942.166666666667000000
                304.270833333333300000
                79.375000000000000000)
              XLColumn = 0
              Alignment = taCenter
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Distict'
              Color = clWhite
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRLabel33: TQRLabel
              Left = 846
              Top = 115
              Width = 90
              Height = 14
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                2238.375000000000000000
                304.270833333333300000
                238.125000000000000000)
              XLColumn = 0
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = 'Arrears'
              Color = clWhite
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRLabel34: TQRLabel
              Left = 945
              Top = 115
              Width = 90
              Height = 14
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                2500.312500000000000000
                304.270833333333300000
                238.125000000000000000)
              XLColumn = 0
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = 'Current'
              Color = clWhite
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
          end
          object QRBand2: TQRBand
            Left = 48
            Top = 185
            Width = 1152
            Height = 28
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            AlignToBottom = False
            BeforePrint = QRBand2BeforePrint
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              74.083333333333330000
              3048.000000000000000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbDetail
            object QRDBText5: TQRDBText
              Left = 8
              Top = 7
              Width = 24
              Height = 14
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                21.166666666666670000
                18.520833333333330000
                63.500000000000000000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = CollEffDetail
              DataField = 'Area'
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 8
            end
            object QRDBText7: TQRDBText
              Left = 40
              Top = 7
              Width = 56
              Height = 14
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                105.833333333333300000
                18.520833333333330000
                148.166666666666700000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = CollEffDetail
              DataField = 'Municipality'
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 8
            end
            object QRDBText9: TQRDBText
              Left = 165
              Top = 7
              Width = 90
              Height = 14
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                436.562500000000000000
                18.520833333333330000
                238.125000000000000000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = CollEffDetail
              DataField = 'ArrearsAmount'
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 8
            end
            object QRDBText11: TQRDBText
              Left = 263
              Top = 7
              Width = 90
              Height = 14
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                695.854166666666700000
                18.520833333333330000
                238.125000000000000000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = CollEffDetail
              DataField = 'CurrentAmount'
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 8
            end
            object QRDBText13: TQRDBText
              Left = 361
              Top = 7
              Width = 90
              Height = 14
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                955.145833333333300000
                18.520833333333330000
                238.125000000000000000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = CollEffDetail
              DataField = 'AdjDrAmount'
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 8
            end
            object QRDBText15: TQRDBText
              Left = 459
              Top = 7
              Width = 90
              Height = 14
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                1214.437500000000000000
                18.520833333333330000
                238.125000000000000000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = CollEffDetail
              DataField = 'AdjCrAmount'
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 8
            end
            object QRDBText18: TQRDBText
              Left = 557
              Top = 7
              Width = 90
              Height = 14
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                1473.729166666667000000
                18.520833333333330000
                238.125000000000000000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = CollEffDetail
              DataField = 'NetReceivables'
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 8
            end
            object QRDBText19: TQRDBText
              Left = 655
              Top = 7
              Width = 90
              Height = 14
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                1733.020833333333000000
                18.520833333333330000
                238.125000000000000000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = CollEffDetail
              DataField = 'ArrearsColl'
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 8
            end
            object QRDBText20: TQRDBText
              Left = 753
              Top = 7
              Width = 90
              Height = 14
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                1992.312500000000000000
                18.520833333333330000
                238.125000000000000000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = CollEffDetail
              DataField = 'CurrentColl'
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 8
            end
            object QRDBText21: TQRDBText
              Left = 1048
              Top = 7
              Width = 32
              Height = 14
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                2772.833333333333000000
                18.520833333333330000
                84.666666666666670000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = CollEffDetail
              DataField = 'CollEff'
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 8
            end
            object QRLabel9: TQRLabel
              Left = 1087
              Top = 7
              Width = 12
              Height = 14
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                2876.020833333333000000
                18.520833333333330000
                31.750000000000000000)
              XLColumn = 0
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = '%'
              Color = clWhite
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRDBText22: TQRDBText
              Left = 847
              Top = 7
              Width = 90
              Height = 14
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                2241.020833333333000000
                18.520833333333330000
                238.125000000000000000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = CollEffDetail
              DataField = 'ArrearsBalance'
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 8
            end
            object QRDBText23: TQRDBText
              Left = 945
              Top = 7
              Width = 90
              Height = 14
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                2500.312500000000000000
                18.520833333333330000
                238.125000000000000000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = CollEffDetail
              DataField = 'CurrentBalance'
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 8
            end
            object DistrictEff: TQRLabel
              Left = 1105
              Top = 7
              Width = 43
              Height = 14
              Enabled = False
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                2923.645833333333000000
                18.520833333333330000
                113.770833333333300000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = '0.00%'
              Color = clWhite
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
          end
          object QRBand3: TQRBand
            Left = 48
            Top = 213
            Width = 1152
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
              3048.000000000000000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbSummary
            object QRLabel10: TQRLabel
              Left = 87
              Top = 8
              Width = 25
              Height = 14
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                230.187500000000000000
                21.166666666666670000
                66.145833333333330000)
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
              FontSize = 8
            end
            object QRExpr1: TQRExpr
              Left = 165
              Top = 8
              Width = 90
              Height = 14
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                436.562500000000000000
                21.166666666666670000
                238.125000000000000000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              ResetAfterPrint = True
              Transparent = False
              WordWrap = True
              Expression = 'SUM(CollEffDetail.ArrearsAmount)'
              Mask = '#,###.00'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRExpr3: TQRExpr
              Left = 263
              Top = 8
              Width = 90
              Height = 14
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                695.854166666666700000
                21.166666666666670000
                238.125000000000000000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              ResetAfterPrint = True
              Transparent = False
              WordWrap = True
              Expression = 'SUM(CollEffDetail.CurrentAmount)'
              Mask = '#,###.00'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRExpr5: TQRExpr
              Left = 363
              Top = 8
              Width = 90
              Height = 14
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                960.437500000000000000
                21.166666666666670000
                238.125000000000000000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              ResetAfterPrint = True
              Transparent = False
              WordWrap = True
              Expression = 'SUM(CollEffDetail.AdjDrAmount)'
              Mask = '#,###.00'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRExpr7: TQRExpr
              Left = 460
              Top = 8
              Width = 90
              Height = 14
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                1217.083333333333000000
                21.166666666666670000
                238.125000000000000000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              ResetAfterPrint = True
              Transparent = False
              WordWrap = True
              Expression = 'SUM(CollEffDetail.AdjCrAmount)'
              Mask = '#,###.00'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRExpr9: TQRExpr
              Left = 559
              Top = 8
              Width = 90
              Height = 14
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                1479.020833333333000000
                21.166666666666670000
                238.125000000000000000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              ResetAfterPrint = True
              Transparent = False
              WordWrap = True
              Expression = 'SUM(CollEffDetail.NetReceivables)'
              Mask = '#,###.00'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRExpr11: TQRExpr
              Left = 655
              Top = 8
              Width = 90
              Height = 14
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                1733.020833333333000000
                21.166666666666670000
                238.125000000000000000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              ResetAfterPrint = True
              Transparent = False
              WordWrap = True
              Expression = 'SUM(CollEffDetail.ArrearsColl)'
              Mask = '#,###.00'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRExpr13: TQRExpr
              Left = 754
              Top = 8
              Width = 90
              Height = 14
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                1994.958333333333000000
                21.166666666666670000
                238.125000000000000000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              ResetAfterPrint = True
              Transparent = False
              WordWrap = True
              Expression = 'SUM(CollEffDetail.CurrentColl)'
              Mask = '#,###.00'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRExpr15: TQRExpr
              Left = 848
              Top = 8
              Width = 90
              Height = 14
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                2243.666666666667000000
                21.166666666666670000
                238.125000000000000000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              ResetAfterPrint = True
              Transparent = False
              WordWrap = True
              Expression = 'SUM(CollEffDetail.ArrearsColl)'
              Mask = '#,###.00'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRExpr16: TQRExpr
              Left = 947
              Top = 8
              Width = 90
              Height = 14
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                2505.604166666667000000
                21.166666666666670000
                238.125000000000000000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              ResetAfterPrint = True
              Transparent = False
              WordWrap = True
              Expression = 'SUM(CollEffDetail.CurrentColl)'
              Mask = '#,###.00'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRExpr17: TQRExpr
              Left = 1041
              Top = 8
              Width = 38
              Height = 14
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                2754.312500000000000000
                21.166666666666670000
                100.541666666666700000)
              XLColumn = 0
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              ResetAfterPrint = True
              Transparent = False
              WordWrap = True
              Expression = 
                '(SUM(CollEffDetail.CurrentColl)+SUM(CollEffDetail.ArrearsColl)) ' +
                '/ SUM(CollEffDetail.NetReceivables) * 100'
              Mask = '#,###.00'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
          end
        end
      end
    end
  end
  object EditFBNetPanel: TNxHeaderPanel
    Left = 219
    Top = 102
    Width = 337
    Height = 178
    Caption = 'Edit FB Net Collection '
    Color = 16568252
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    HeaderFont.Charset = ANSI_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -13
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = [fsBold]
    ParentFont = False
    ParentHeaderFont = False
    TabOrder = 14
    Visible = False
    FullWidth = 337
    object Label15: TLabel
      Left = 98
      Top = 48
      Width = 27
      Height = 16
      Caption = 'Area'
      FocusControl = DBEdit15
    end
    object Label16: TLabel
      Left = 59
      Top = 77
      Width = 66
      Height = 16
      Caption = 'Municipality'
      FocusControl = DBEdit16
    end
    object Label18: TLabel
      Left = 15
      Top = 136
      Width = 110
      Height = 16
      Caption = 'Forwarded Balance'
    end
    object Label17: TLabel
      Left = 74
      Top = 106
      Width = 51
      Height = 16
      Caption = 'BillMonth'
      FocusControl = DBEdit17
    end
    object NxLinkLabel12: TNxLinkLabel
      Left = 282
      Top = 5
      Width = 43
      Height = 18
      Caption = 'Cancel'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      HoverColor = clBlue
      ParentFont = False
      TextDistance = 2
      Transparent = True
      VertSpacing = 2
      OnClick = NxLinkLabel12Click
    end
    object NxLinkLabel14: TNxLinkLabel
      Left = 239
      Top = 5
      Width = 33
      Height = 18
      Caption = 'Save'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      HoverColor = clBlue
      ParentFont = False
      TextDistance = 2
      Transparent = True
      VertSpacing = 2
      OnClick = NxLinkLabel14Click
    end
    object DBEdit15: TDBEdit
      Left = 128
      Top = 46
      Width = 180
      Height = 22
      Color = clCream
      Ctl3D = False
      DataField = 'Area'
      DataSource = dsCollEffDetail
      Enabled = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 2
    end
    object DBEdit16: TDBEdit
      Left = 128
      Top = 75
      Width = 180
      Height = 22
      Color = clCream
      Ctl3D = False
      DataField = 'Municipality'
      DataSource = dsCollEffDetail
      Enabled = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 3
    end
    object DBEdit18: TDBEdit
      Left = 128
      Top = 133
      Width = 180
      Height = 22
      Ctl3D = False
      DataField = 'ArrearsAmount'
      DataSource = dsCollEffDetail
      ParentCtl3D = False
      TabOrder = 4
    end
    object DBEdit17: TDBEdit
      Left = 128
      Top = 104
      Width = 180
      Height = 22
      Color = clCream
      Ctl3D = False
      DataField = 'BillMonth'
      DataSource = dsmccsumm
      Enabled = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 5
    end
  end
  object MCCSumm: TMyQuery
    Connection = BillingData.MyConnection1
    SQL.Strings = (
      'select * from mccsumm order by idmccsumm')
    Left = 8
    object MCCSummDescription: TStringField
      FieldName = 'Description'
      Origin = 'mccsumm.Description'
      Size = 50
    end
    object MCCSummBillMonth: TStringField
      FieldName = 'BillMonth'
      Origin = 'mccsumm.BillMonth'
      Size = 4
    end
    object MCCSummDateFrom: TDateField
      FieldName = 'DateFrom'
      Origin = 'mccsumm.DateFrom'
    end
    object MCCSummDateTo: TDateField
      FieldName = 'DateTo'
      Origin = 'mccsumm.DateTo'
    end
    object MCCSummidmccsumm: TLongWordField
      FieldName = 'idmccsumm'
    end
  end
  object MCCDetail: TMyQuery
    Connection = BillingData.MyConnection1
    SQL.Strings = (
      'select *,'
      '       case summcode'
      '        when "0"  then "KILOWATTHOUR SUMMARY"'
      '        when "1"  then "REINVESTMENT FOR SUST. CAPEX SUMMARY"'
      '        when "2"  then "UNIVERSAL CHARGE - ENVIRONMENT SUMMARY"'
      
        '        when "3"  then "UNIVERSAL CHARGE - MISSIONARY ELECTRIFIC' +
        'ATION SUMMARY"'
      
        '        when "4"  then "UNIVERSAL CHARGE - STRANDED CONTRACT COS' +
        'T"'
      '        when "5"  then "PSALM Value Added Tax SUMMARY"'
      '        when "6"  then "NGCP Value Added Tax SUMMARY"'
      '        when "7"  then "Distribution Value Added Tax SUMMARY" '
      '        when "8"  then "System Loss Value Added Tax SUMMARY" '
      '        when "9"  then "Real Property Tax"'
      '        when "10" then "Generation System Charge O/U"'
      '        when "11" then "Transmission System Charge O/U"'
      '        when "12" then "Transmission Demand Charge O/U"'
      '        when "13" then "System Loss Charge O/U"'
      '        when "14" then "Lifeline Rate O/U"'
      '        when "15" then "Senior Citizen O/U"'
      '        when "16" then "Interclass Cross Subsidy"'
      '        when "17" then "Feed-in Tariff Allowance"'
      '        wHEN "18" then "PAR Recovery"'
      '       else "" '
      '      end as ReportType'
      'from mccdetail '
      'order by summcode, area')
    OnCalcFields = MCCDetailCalcFields
    MasterSource = dsmccsumm
    MasterFields = 'idmccsumm'
    DetailFields = 'idmccsumm'
    Left = 40
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'idmccsumm'
        ParamType = ptInput
        Value = 1
      end>
    object MCCDetailArea: TStringField
      FieldName = 'Area'
      Origin = 'mccdetail.Area'
      Size = 3
    end
    object MCCDetailMunicipality: TStringField
      FieldName = 'Municipality'
      Origin = 'mccdetail.Municipality'
      Size = 30
    end
    object MCCDetailPrevKwhr: TFloatField
      FieldName = 'PrevKwhr'
      Origin = 'mccdetail.PrevKwhr'
    end
    object MCCDetailPrevAmount: TFloatField
      FieldName = 'PrevAmount'
      Origin = 'mccdetail.PrevAmount'
      currency = True
    end
    object MCCDetailCurrKwhr: TFloatField
      FieldName = 'CurrKwhr'
      Origin = 'mccdetail.CurrKwhr'
    end
    object MCCDetailCurrAmount: TFloatField
      FieldName = 'CurrAmount'
      Origin = 'mccdetail.CurrAmount'
      currency = True
    end
    object MCCDetailAdjDrKwhr: TFloatField
      FieldName = 'AdjDrKwhr'
      Origin = 'mccdetail.AdjDrKwhr'
    end
    object MCCDetailAdjDrAmount: TFloatField
      FieldName = 'AdjDrAmount'
      Origin = 'mccdetail.AdjDrAmount'
      currency = True
    end
    object MCCDetailAdjCrKwhr: TFloatField
      FieldName = 'AdjCrKwhr'
      Origin = 'mccdetail.AdjCrKwhr'
    end
    object MCCDetailAdjCrAmount: TFloatField
      FieldName = 'AdjCrAmount'
      Origin = 'mccdetail.AdjCrAmount'
      currency = True
    end
    object MCCDetailTKwhr: TFloatField
      FieldName = 'TKwhr'
      Origin = 'mccdetail.TKwhr'
    end
    object MCCDetailTAmount: TFloatField
      FieldName = 'TAmount'
      Origin = 'mccdetail.TAmount'
      currency = True
    end
    object MCCDetailCollKwhr: TFloatField
      FieldName = 'CollKwhr'
      Origin = 'mccdetail.CollKwhr'
    end
    object MCCDetailCollAmount: TFloatField
      FieldName = 'CollAmount'
      Origin = 'mccdetail.CollAmount'
      currency = True
    end
    object MCCDetailBalKwhr: TFloatField
      FieldName = 'BalKwhr'
      Origin = 'mccdetail.BalKwhr'
    end
    object MCCDetailBalAmount: TFloatField
      FieldName = 'BalAmount'
      Origin = 'mccdetail.BalAmount'
      currency = True
    end
    object MCCDetailidmccsumm: TFloatField
      FieldName = 'idmccsumm'
      Origin = 'mccdetail.idmccsumm'
    end
    object MCCDetailPercent: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Percent'
      currency = False
      Calculated = True
    end
    object MCCDetailsummcode: TStringField
      FieldName = 'summcode'
      Origin = 'mccdetail.summcode'
      Size = 1
    end
    object MCCDetailReportType: TStringField
      FieldName = 'ReportType'
      Origin = 'ReportType'
      Size = 45
    end
    object MCCDetailidmccdetail: TLongWordField
      FieldName = 'idmccdetail'
    end
  end
  object dsmccsumm: TMyDataSource
    DataSet = MCCSumm
    Left = 8
    Top = 32
  end
  object dsmccdetail: TMyDataSource
    DataSet = MCCDetail
    Left = 40
    Top = 32
  end
  object CreateMCC: TMyQuery
    Connection = BillingData.MyConnection1
    SQL.Strings = (
      
        'ALTER TABLE `zaneco`.`mccdetail` ADD INDEX `Index_2`(`idmccsumm`' +
        '), ADD INDEX `Index_3`(`idmccsumm`, `summcode`);'
      
        'ALTER TABLE `zaneco`.`mccdetail` ADD COLUMN `summcode` VARCHAR(1' +
        ') AFTER `BalAmount`;')
    Left = 9
    Top = 67
  end
  object MCCFB: TMyQuery
    Connection = BillingData.MyConnection1
    SQL.Strings = (
      
        'select * from mccdetail where idmccsumm = :idmccsumm and summcod' +
        'e = :summcode')
    Left = 8
    Top = 96
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'idmccsumm'
      end
      item
        DataType = ftUnknown
        Name = 'summcode'
      end>
    object MCCFBArea: TStringField
      FieldName = 'Area'
      Size = 3
    end
    object MCCFBMunicipality: TStringField
      FieldName = 'Municipality'
      Size = 30
    end
    object MCCFBPrevAmount: TFloatField
      FieldName = 'PrevAmount'
      currency = True
    end
    object MCCFBCurrAmount: TFloatField
      FieldName = 'CurrAmount'
      currency = True
    end
    object MCCFBAdjDrAmount: TFloatField
      FieldName = 'AdjDrAmount'
      currency = True
    end
    object MCCFBAdjCrAmount: TFloatField
      FieldName = 'AdjCrAmount'
      currency = True
    end
    object MCCFBTAmount: TFloatField
      FieldName = 'TAmount'
      currency = True
    end
    object MCCFBCollAmount: TFloatField
      FieldName = 'CollAmount'
      currency = True
    end
    object MCCFBBalAmount: TFloatField
      FieldName = 'BalAmount'
      currency = True
    end
    object MCCFBsummcode: TStringField
      FieldName = 'summcode'
      Size = 1
    end
    object MCCFBidmccdetail: TLongWordField
      FieldName = 'idmccdetail'
    end
    object MCCFBPrevKwhr: TFloatField
      FieldName = 'PrevKwhr'
    end
    object MCCFBCurrKwhr: TFloatField
      FieldName = 'CurrKwhr'
    end
    object MCCFBAdjDrKwhr: TFloatField
      FieldName = 'AdjDrKwhr'
    end
    object MCCFBAdjCrKwhr: TFloatField
      FieldName = 'AdjCrKwhr'
    end
    object MCCFBTKwhr: TFloatField
      FieldName = 'TKwhr'
    end
    object MCCFBCollKwhr: TFloatField
      FieldName = 'CollKwhr'
    end
    object MCCFBBalKwhr: TFloatField
      FieldName = 'BalKwhr'
    end
    object MCCFBidmccsumm: TFloatField
      FieldName = 'idmccsumm'
    end
  end
  object Adj: TMyQuery
    Connection = BillingData.MyConnection1
    SQL.Strings = (
      'select'
      '  area,'
      '  &kilowatthour'
      '  &mcc'
      '  &ucec '
      '  &ucme'
      '  &ucscc'
      '  &vatgenco '
      '  &vattransco'
      '  &vatdist'
      '  &vatsystemloss'
      '  &rptax'
      '  &OtherGen'
      '  &OtherTrans'
      '  &OtherTDemand'
      '  &OtherSysLoss'
      '  &OtherLifeline'
      '  &OtherSeniorCitizen'
      '  &ICCross '
      '  &Fitall'
      '  &PARec'
      'from adjustment'
      'where adjdate between :datefrom and :dateto'
      'group by area')
    Left = 40
    Top = 68
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'datefrom'
      end
      item
        DataType = ftUnknown
        Name = 'dateto'
      end>
    MacroData = <
      item
        Name = 'kilowatthour'
        Value = 
          'sum(if(abkilowatthour <= kilowatthour,ifnull(kilowatthour-abkilo' +
          'watthour,0),0)) Debitamount,'#13#10'sum(if(abkilowatthour > kilowattho' +
          'ur,ifnull(abkilowatthour-kilowatthour,0),0)) Creditamount'#13#10
        Active = False
      end
      item
        Name = 'mcc'
        Value = 
          'sum(if(abmcc <= mcc,ifnull(mcc-abmcc,0),0)) debitamount,'#13#10'sum(if' +
          '(abmcc > mcc,ifnull(abmcc-mcc,0),0)) Creditamount'#13#10
        Active = False
      end
      item
        Name = 'ucec'
        Value = 
          'sum(if(abucec <= ucec,ifnull(ucec-abucec,0),0)) debitamount,'#13#10'su' +
          'm(if(abucec > ucec,ifnull(abucec-ucec,0),0)) Creditamount'#13#10
        Active = False
      end
      item
        Name = 'ucme'
        Value = 
          'sum(if(abucme <= ucme, ifnull(ucme-abucme,0),0)) debitamount,'#13#10's' +
          'um(if(abucme > ucme, ifnull(abucme-ucme,0),0)) Creditamount'#13#10
        Active = False
      end
      item
        Name = 'ucscc'
        Value = 
          'sum(if(abucnpcstrandedcontcost <= ucnpcstrandedcontcost, ifnull(' +
          'ucnpcstrandedcontcost-abucnpcstrandedcontcost,0),0)) debitamount' +
          ','#13#10'sum(if(abucnpcstrandedcontcost > ucnpcstrandedcontcost, ifnul' +
          'l(abucnpcstrandedcontcost-ucnpcstrandedcontcost,0),0)) Creditamo' +
          'unt'#13#10
        Active = False
      end
      item
        Name = 'vatgenco'
        Value = 
          'sum(if(abvatgenco <= vatgenco,ifnull(vatgenco-abvatgenco,0),0)) ' +
          'debitamount,'#13#10'sum(if(abvatgenco > vatgenco,ifnull(abvatgenco-vat' +
          'genco,0),0)) Creditamount'#13#10
        Active = False
      end
      item
        Name = 'vattransco'
        Value = 
          'sum(if(abvattransco <= vattransco, ifnull(vattransco-abvattransc' +
          'o,0),0)) debitamount,'#13#10'sum(if(abvattransco > vattransco,ifnull(a' +
          'bvattransco-vattransco,0),0)) Creditamount'#13#10
        Active = False
      end
      item
        Name = 'vatdist'
        Value = 
          'sum(if( (abvatdist+abvatdistdiscamt) <= (vatdist+vatdistdiscamt)' +
          ' , ifnull((vatdist+vatdistdiscamt)-(abvatdist+abvatdistdiscamt),' +
          '0),0)) debitamount,'#13#10'sum(if( (abvatdist+abvatdistdiscamt) > (vat' +
          'dist+vatdistdiscamt), ifnull((abvatdist+abvatdistdiscamt)-(vatdi' +
          'st+vatdistdiscamt),0),0)) Creditamount'#13#10
        Active = False
      end
      item
        Name = 'vatsystemloss'
        Value = 
          'sum(if(abvatsystemlossgenco <= vatsystemlossgenco, ifnull(vatsys' +
          'temlossgenco-abvatsystemlossgenco,0),0)) debitamount,'#13#10'sum(if(ab' +
          'vatsystemlossgenco > vatsystemlossgenco,ifnull(abvatsystemlossge' +
          'nco-vatsystemlossgenco,0),0)) Creditamount'#13#10
        Active = False
      end
      item
        Name = 'rptax'
        Value = 
          'sum(if(ABRPTax <= RPTax, ifnull(RPTax - ABRPTax,0),0)) debitamou' +
          'nt,'#13#10'sum(if(ABRPTax >RPTax,ifnull(ABRPTax - RPTax,0),0)) Credita' +
          'mount'
        Active = False
      end
      item
        Name = 'OtherGen'
        Value = 
          'sum(if(ABOtherGenRateAdj<= OtherGenRateAdj, ifnull(OtherGenRateA' +
          'dj - ABOtherGenRateAdj,0),0)) debitamount,'#13#10'sum(if(ABOtherGenRat' +
          'eAdj> OtherGenRateAdj,ifnull(ABOtherGenRateAdj - OtherGenRateAdj' +
          ',0),0)) Creditamount'
        Active = False
      end
      item
        Name = 'OtherTrans'
        Value = 
          'sum(if(ABOtherTransCostAdj <= OtherTransCostAdj, ifnull(OtherTra' +
          'nsCostAdj - ABOtherTransCostAdj,0),0)) debitamount,'#13#10'sum(if(ABOt' +
          'herTransCostAdj > OtherTransCostAdj,ifnull(ABOtherTransCostAdj -' +
          ' OtherTransCostAdj,0),0)) Creditamount'
        Active = False
      end
      item
        Name = 'OtherTDemand'
        Value = 
          'sum(if(ABOtherTransDemandCostAdj <= OtherTransDemandCostAdj, ifn' +
          'ull(OtherTransDemandCostAdj - ABOtherTransDemandCostAdj,0),0)) d' +
          'ebitamount,'#13#10'sum(if(ABOtherTransDemandCostAdj > OtherTransDemand' +
          'CostAdj,ifnull(ABOtherTransDemandCostAdj - OtherTransDemandCostA' +
          'dj,0),0)) Creditamount'#13#10
        Active = False
      end
      item
        Name = 'OtherSysLoss'
        Value = 
          'sum(if(ABOtherSystemLossCostAdj <= OtherSystemLossCostAdj, ifnul' +
          'l(OtherSystemLossCostAdj - ABOtherSystemLossCostAdj,0),0)) debit' +
          'amount,'#13#10'sum(if(ABOtherSystemLossCostAdj > OtherSystemLossCostAd' +
          'j,ifnull(ABOtherSystemLossCostAdj - OtherSystemLossCostAdj,0),0)' +
          ') Creditamount'#13#10
        Active = False
      end
      item
        Name = 'OtherLifeline'
        Value = 
          'sum(if(ABOtherLifelineRateCostAdj <= OtherLifelineRateCostAdj, i' +
          'fnull(OtherLifelineRateCostAdj - ABOtherLifelineRateCostAdj,0),0' +
          ')) debitamount,'#13#10'sum(if(ABOtherLifelineRateCostAdj > OtherLifeli' +
          'neRateCostAdj,ifnull(ABOtherLifelineRateCostAdj - OtherLifelineR' +
          'ateCostAdj,0),0)) Creditamount'#13#10
        Active = False
      end
      item
        Name = 'OtherSeniorCitizen'
        Value = 
          'sum(if(ABOtherSeniorCitizenRateAdj <= OtherSeniorCitizenRateAdj,' +
          ' ifnull(OtherSeniorCitizenRateAdj - ABOtherSeniorCitizenRateAdj,' +
          '0),0)) debitamount,'#13#10'sum(if(ABOtherSeniorCitizenRateAdj > OtherS' +
          'eniorCitizenRateAdj,ifnull(ABOtherSeniorCitizenRateAdj - OtherSe' +
          'niorCitizenRateAdj,0),0)) Creditamount'#13#10
        Active = False
      end
      item
        Name = 'ICCross'
        Value = 
          'sum(if(ABICCrossSubsidyCharge <= ICCrossSubsidyCharge, ifnull(IC' +
          'CrossSubsidyCharge - ABICCrossSubsidyCharge,0),0)) debitamount,'#13 +
          #10'sum(if(ABICCrossSubsidyCharge > ICCrossSubsidyCharge,ifnull(ABI' +
          'CCrossSubsidyCharge - ICCrossSubsidyCharge,0),0)) Creditamount'#13#10
        Active = False
      end
      item
        Name = 'Fitall'
        Value = 
          'sum(if(abFitall <= Fitall,ifnull(Fitall-abFitall,0),0)) debitamo' +
          'unt,'#13#10'sum(if(abFitall >Fitall,ifnull(abFitall-Fitall,0),0)) Cred' +
          'itamount'
        Active = False
      end
      item
        Name = 'PARec'
        Value = 
          'sum(if(ABPARec <= PARec, ifnull(PARec - ABPARec,0),0)) debitamou' +
          'nt,'#13#10'sum(if(ABPARec >PARec,ifnull(ABPARec - PARec,0),0)) Credita' +
          'mount'
        Active = False
      end>
    object Adjarea: TStringField
      FieldName = 'area'
      FixedChar = True
      Size = 3
    end
    object Adjdebitamount: TFloatField
      FieldName = 'debitamount'
    end
    object AdjCreditamount: TFloatField
      FieldName = 'Creditamount'
    end
  end
  object CreateCollEff: TMyQuery
    Connection = BillingData.MyConnection1
    SQL.Strings = (
      'CREATE TABLE  `zaneco`.`colleffdetail` ('
      '  `idcolleffdetail` int(10) unsigned NOT NULL auto_increment,'
      '  `idmccsumm` double NOT NULL,'
      '  `District` varchar(3) default NULL,'
      '  `Area` varchar(3) default NULL,'
      '  `Municipality` varchar(30) default NULL,'
      '  `ArrearsAmount` double(12,2) default '#39'0.00'#39','
      '  `CurrentAmount` double(12,2) default '#39'0.00'#39','
      '  `AdjDrAmount` double(12,2) default '#39'0.00'#39','
      '  `AdjCrAmount` double(12,2) default '#39'0.00'#39','
      '  `NetReceivables` double(12,2) default '#39'0.00'#39','
      '  `ArrearsColl` double(12,2) default '#39'0.00'#39','
      '  `CurrentColl` double(12,2) default '#39'0.00'#39','
      '  `ArrearsBalance` double(12,2) default NULL,'
      '  `CurrentBalance` double(12,2) default NULL,'
      '  PRIMARY KEY  (`idcolleffdetail`),'
      '  KEY `Index_2` (`idmccsumm`)'
      ') ENGINE=InnoDB DEFAULT CHARSET=latin1;')
    Left = 8
    Top = 128
  end
  object CollEffDetail: TMyQuery
    Connection = BillingData.MyConnection1
    SQL.Strings = (
      'select * from colleffdetail order by district, area')
    OnCalcFields = CollEffCollCalcFields
    MasterSource = dsmccsumm
    MasterFields = 'idmccsumm'
    DetailFields = 'idmccsumm'
    Left = 40
    Top = 128
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'idmccsumm'
        ParamType = ptInput
        Value = 1
      end>
    object CollEffDetailidmccsumm: TFloatField
      FieldName = 'idmccsumm'
    end
    object CollEffDetailDistrict: TStringField
      FieldName = 'District'
      Size = 3
    end
    object CollEffDetailArea: TStringField
      FieldName = 'Area'
      Size = 3
    end
    object CollEffDetailMunicipality: TStringField
      FieldName = 'Municipality'
      Size = 30
    end
    object CollEffDetailArrearsAmount: TFloatField
      FieldName = 'ArrearsAmount'
      currency = True
    end
    object CollEffDetailCurrentAmount: TFloatField
      FieldName = 'CurrentAmount'
      currency = True
    end
    object CollEffDetailAdjDrAmount: TFloatField
      FieldName = 'AdjDrAmount'
      currency = True
    end
    object CollEffDetailAdjCrAmount: TFloatField
      FieldName = 'AdjCrAmount'
      currency = True
    end
    object CollEffDetailNetReceivables: TFloatField
      FieldName = 'NetReceivables'
      currency = True
    end
    object CollEffDetailArrearsColl: TFloatField
      FieldName = 'ArrearsColl'
      currency = True
    end
    object CollEffDetailCurrentColl: TFloatField
      FieldName = 'CurrentColl'
      currency = True
    end
    object CollEffDetailArrearsBalance: TFloatField
      FieldName = 'ArrearsBalance'
      currency = True
    end
    object CollEffDetailCurrentBalance: TFloatField
      FieldName = 'CurrentBalance'
      currency = True
    end
    object CollEffDetailCollEff: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CollEff'
      DisplayFormat = '#,###.00'
      Calculated = True
    end
    object CollEffDetailidcolleffdetail: TLongWordField
      FieldName = 'idcolleffdetail'
    end
  end
  object dsCollEffDetail: TMyDataSource
    DataSet = CollEffDetail
    Left = 40
    Top = 159
  end
  object CollFB: TMyQuery
    Connection = BillingData.MyConnection1
    SQL.Strings = (
      'select * from colleffdetail where idmccsumm = :idmccsumm')
    Left = 8
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'idmccsumm'
      end>
    object CollFBidmccsumm: TFloatField
      FieldName = 'idmccsumm'
    end
    object CollFBDistrict: TStringField
      FieldName = 'District'
      Size = 3
    end
    object CollFBArea: TStringField
      FieldName = 'Area'
      Size = 3
    end
    object CollFBMunicipality: TStringField
      FieldName = 'Municipality'
      Size = 30
    end
    object CollFBArrearsAmount: TFloatField
      FieldName = 'ArrearsAmount'
    end
    object CollFBCurrentAmount: TFloatField
      FieldName = 'CurrentAmount'
    end
    object CollFBAdjDrAmount: TFloatField
      FieldName = 'AdjDrAmount'
    end
    object CollFBAdjCrAmount: TFloatField
      FieldName = 'AdjCrAmount'
    end
    object CollFBNetReceivables: TFloatField
      FieldName = 'NetReceivables'
    end
    object CollFBArrearsColl: TFloatField
      FieldName = 'ArrearsColl'
    end
    object CollFBCurrentColl: TFloatField
      FieldName = 'CurrentColl'
    end
    object CollFBArrearsBalance: TFloatField
      FieldName = 'ArrearsBalance'
    end
    object CollFBCurrentBalance: TFloatField
      FieldName = 'CurrentBalance'
    end
    object CollFBidcolleffdetail: TLongWordField
      FieldName = 'idcolleffdetail'
    end
  end
  object AdjColl: TMyQuery
    Connection = BillingData.MyConnection1
    SQL.Strings = (
      'select area, '
      
        '        if(abamount <= sbamount,ifnull(sbamount-abamount,0),0) d' +
        'ebitamount,'
      
        '          if(abamount > sbamount,ifnull(abamount-sbamount,0),0) ' +
        'Creditamount'
      'from'
      '(select'
      '  area,'
      '  sum(ifnull(TotalBill,0)   - (ifnull(SystemLossCharge,0) +'
      '                               ifnull(VAT,0) +'
      '                               ifnull(UCEC,0) +'
      '                               ifnull(UCME,0) +'
      '                               ifnull(UCNPCStrandedContCost,0) +'
      '                               ifnull(MCC,0) +'
      '                               ifnull(transformerrental,0) +'
      '                               ifnull(VATDiscAmt,0)+'
      '                               ifnull(OtherGenRateAdj,0)+'
      '                               ifnull(OtherTransCostAdj,0)+'
      
        '                               ifnull(OtherTransDemandCostAdj,0)' +
        '+'
      '                               ifnull(OtherSystemLossCostAdj,0)+'
      
        '                               ifnull(OtherLifelineRateCostAdj,0' +
        ')+'
      
        '                               ifnull(OtherSeniorCitizenRateAdj,' +
        '0)+'
      '                               ifnull(Fitall,0)) ) sbamount,'
      '  sum(ifnull(ABTotalBill,0) - (ifnull(ABSystemLossCharge,0) +'
      '                               ifnull(ABVAT,0) +'
      '                               ifnull(ABUCEC,0) +'
      '                               ifnull(ABUCME,0) +'
      
        '                               ifnull(ABUCNPCStrandedContCost,0)' +
        ' +'
      '                               ifnull(ABMCC,0) +'
      '                               ifnull(ABtransformerrental,0) +'
      '                               ifnull(ABVATDiscAmt,0)+'
      '                               ifnull(ABOtherGenRateAdj,0)+'
      '                               ifnull(ABOtherTransCostAdj,0)+'
      
        '                               ifnull(ABOtherTransDemandCostAdj,' +
        '0)+'
      
        '                               ifnull(ABOtherSystemLossCostAdj,0' +
        ')+'
      
        '                               ifnull(ABOtherLifelineRateCostAdj' +
        ',0)+'
      
        '                               ifnull(ABOtherSeniorCitizenRateAd' +
        'j,0)+'
      '                               ifnull(ABFitall,0)) ) abamount'
      'from adjustment'
      'where adjdate between :datefrom and :dateto'
      'group by area) adj')
    Left = 8
    Top = 196
    ParamData = <
      item
        DataType = ftString
        Name = 'datefrom'
        Value = '2011-05-01'
      end
      item
        DataType = ftString
        Name = 'dateto'
        Value = '2011-05-31'
      end>
    object AdjCollarea: TStringField
      FieldName = 'area'
      FixedChar = True
      Size = 3
    end
    object AdjColldebitamount: TFloatField
      FieldName = 'debitamount'
    end
    object AdjCollCreditamount: TFloatField
      FieldName = 'Creditamount'
    end
  end
  object CollEffColl: TMyQuery
    Connection = BillingData.MyConnection1
    SQL.Strings = (
      'select'
      '  c.area,'
      
        '  sum( If(c.billmonth = :currentbillmonth, ifnull(c.TotalBill,0)' +
        ' - '
      '                                          (ifnull(c.VAT,0) +'
      '                                           ifnull(c.UCEC,0) +'
      '                                           ifnull(c.UCME,0) +'
      
        '                                           ifnull(c.UCNPCSCC,0) ' +
        '+'
      
        '                                           ifnull(b.ocamount1,0)' +
        ' +'
      
        '                                           ifnull(b.ocamount2,0)' +
        ' +'
      
        '                                           ifnull(b.ocamount3,0)' +
        ' +'
      
        '                                           ifnull(c.security,0) ' +
        '+'
      
        '                                           ifnull(c.VATDiscAmt,0' +
        ')+'
      
        '                                           ifnull(c.OtherGenRate' +
        'Adj,0)+'
      
        '                                           ifnull(c.OtherTransCo' +
        'stAdj,0)+'
      
        '                                           ifnull(c.OtherTransDe' +
        'mandCostAdj,0)+'
      
        '                                           ifnull(c.OtherSystemL' +
        'ossCostAdj,0)+'
      
        '                                           ifnull(c.OtherLifelin' +
        'eRateCostAdj,0)+'
      
        '                                           ifnull(c.OtherSeniorC' +
        'itizenRateAdj,0)+'
      
        '                                           ifnull(c.Fitall,0)),0' +
        ')) CurrentCollection,'
      
        '  sum( If(c.billmonth <> :currentbillmonth, ifnull(c.TotalBill,0' +
        ') - '
      '                                          (ifnull(c.VAT,0) +'
      '                                           ifnull(c.UCEC,0) +'
      '                                           ifnull(c.UCME,0) +'
      
        '                                           ifnull(c.UCNPCSCC,0) ' +
        '+'
      
        '                                           ifnull(b.ocamount1,0)' +
        ' +'
      
        '                                           ifnull(b.ocamount2,0)' +
        ' +'
      
        '                                           ifnull(b.ocamount3,0)' +
        ' +'
      
        '                                           ifnull(c.security,0) ' +
        '+'
      
        '                                           ifnull(c.VATDiscAmt,0' +
        ')+'
      
        '                                           ifnull(c.OtherGenRate' +
        'Adj,0)+'
      
        '                                           ifnull(c.OtherTransCo' +
        'stAdj,0)+'
      
        '                                           ifnull(c.OtherTransDe' +
        'mandCostAdj,0)+'
      
        '                                           ifnull(c.OtherSystemL' +
        'ossCostAdj,0)+'
      
        '                                           ifnull(c.OtherLifelin' +
        'eRateCostAdj,0)+'
      
        '                                           ifnull(c.OtherSeniorC' +
        'itizenRateAdj,0)+'
      
        '                                           ifnull(c.Fitall,0)),0' +
        ')) ArrearsCollection'
      'from collection c '
      
        'left join billhistory b on (c.accountcode = b.code and c.billmon' +
        'th = b.billmonth)'
      'where c.datepaid between :datefrom and :dateto and'
      '      c.collectorcode <> '#39'PKV'#39' and'
      '      c.sundries is not null'
      'group by area')
    OnCalcFields = CollEffCollCalcFields
    Left = 40
    Top = 196
    ParamData = <
      item
        DataType = ftString
        Name = 'currentbillmonth'
        Value = '0511'
      end
      item
        DataType = ftString
        Name = 'currentbillmonth'
        Value = '0511'
      end
      item
        DataType = ftString
        Name = 'datefrom'
        Value = '2011-05-01'
      end
      item
        DataType = ftString
        Name = 'dateto'
        Value = '2011-05-31'
      end>
    object CollEffCollarea: TStringField
      FieldName = 'area'
      FixedChar = True
      Size = 3
    end
    object CollEffCollCurrentCollection: TFloatField
      FieldName = 'CurrentCollection'
      currency = True
    end
    object CollEffCollArrearsCollection: TFloatField
      FieldName = 'ArrearsCollection'
      currency = True
    end
  end
  object DP: TMyQuery
    Connection = BillingData.MyConnection1
    SQL.Strings = (
      'select District, (Coll / NR) * 100 as DP from '
      '  (select District, '
      '          sum(Ifnull(netreceivables,0)) NR, '
      '          sum(ifnull(ArrearsColl,0)+ifnull(CurrentColl,0)) Coll '
      
        '           from CollEffDetail where idmccsumm = :idmccsumm group' +
        ' by district)'
      'DistPercent')
    Left = 8
    Top = 224
    ParamData = <
      item
        DataType = ftString
        Name = 'idmccsumm'
        Value = '15'
      end>
    object DPDistrict: TStringField
      FieldName = 'District'
      Size = 3
    end
    object DPDP: TFloatField
      FieldName = 'DP'
      DisplayFormat = '#,###.00'
    end
  end
  object CollectionOUquery: TMyQuery
    Connection = BillingData.MyConnection1
    SQL.Strings = (
      'DROP TABLE IF EXISTS `zaneco`.`collection_ou`;'
      'CREATE TABLE  `zaneco`.`collection_ou` ('
      '  `Entry` int(11) default NULL,'
      '  `ReceiptNumber` varchar(10) default NULL,'
      '  `AccountCode` double default NULL,'
      '  `Area` char(3) default NULL,'
      '  `Book` char(3) default NULL,'
      '  `Sequence` varchar(4) default NULL,'
      '  `AccountNumber` varchar(10) default NULL,'
      '  `Name` varchar(50) default NULL,'
      '  `BillMonth` varchar(4) default NULL,'
      '  `TotalBill` double(12,2) default NULL,'
      '  `Membership` double(12,2) default NULL,'
      '  `Penalty` double(12,2) default NULL,'
      '  `Security` double(12,2) default NULL,'
      '  `MeterDeposit` double(12,2) default NULL,'
      '  `TransformerRental` double(12,2) default NULL,'
      '  `Sundries` varchar(15) default NULL,'
      '  `SundriesAmount` double(12,2) default NULL,'
      '  `UCNPCSD` double(12,2) default NULL,'
      '  `UCNPCSCC` double(12,2) default NULL,'
      '  `UCDUSCC` double(12,2) default NULL,'
      '  `UCME` double(12,2) default NULL,'
      '  `UCETR` double(12,2) default NULL,'
      '  `UCEC` double(12,2) default NULL,'
      '  `UCCSR` double(12,2) default NULL,'
      '  `LoanCondo` double(12,2) default NULL,'
      '  `Total` double(12,2) default NULL,'
      '  `CollectorCode` char(3) default NULL,'
      '  `DatePaid` date default NULL,'
      '  `DateRemitted` date default NULL,'
      '  `EncoderCode` varchar(10) default NULL,'
      '  `Posted` char(1) default NULL,'
      '  `KilowattHour` double default NULL,'
      '  `Address` varchar(15) default '#39#39','
      '  `OPDescription` varchar(50) default '#39#39','
      '  `OPAmount` double(12,2) default '#39'0.00'#39','
      '  `TellerORNumber` varchar(15) default '#39#39','
      '  `VATDiscAmt` double(12,2) NOT NULL default '#39'0.00'#39','
      '  `VATDistDiscAmt` double(12,2) NOT NULL default '#39'0.00'#39','
      '  `VATGenCoDiscAmt` double(12,2) NOT NULL default '#39'0.00'#39','
      '  `VATTransCoDiscAmt` double(12,2) NOT NULL default '#39'0.00'#39','
      '  `VATSystemLossDiscAmt` double(12,2) NOT NULL default '#39'0.00'#39','
      '  `VATDist` double(12,2) NOT NULL default '#39'0.00'#39','
      '  `VATGenCO` double(12,2) NOT NULL default '#39'0.00'#39','
      '  `VATTransCO` double(12,2) NOT NULL default '#39'0.00'#39','
      '  `VATSystemLossGenCO` double(12,2) NOT NULL default '#39'0.00'#39','
      '  `VATSystemLossTransCO` double(12,2) NOT NULL default '#39'0.00'#39','
      '  `VAT` double(12,2) NOT NULL default '#39'0.00'#39','
      '  `SystemLossCharge` double(12,2) default '#39'0.00'#39','
      '  `PKVRAmount` double(12,2) default NULL,'
      '  `SCDisc` double(12,2) default NULL,'
      '  `WRateCode` varchar(1) default NULL,'
      '  `RPTax` double(12,2) default '#39'0.00'#39','
      '  `RateOrder` varchar(6) default NULL,'
      '  `BTax` double(12,2) default '#39'0.00'#39','
      '  `OtherSystemLossCostAdj` double(12,2) default NULL,'
      '  `OtherSeniorCitizenRateAdj` double(12,2) default NULL,'
      '  `OtherGenRateAdj` double(12,2) default NULL,'
      '  `OtherTransCostAdj` double(12,2) default NULL,'
      '  `OtherTransDemandCostAdj` double(12,2) default NULL,'
      '  `OtherLifelineRateCostAdj` double(12,2) default NULL,'
      '  KEY `CollAccountNumber` (`AccountNumber`),'
      '  KEY `code` (`AccountCode`),'
      '  KEY `RETURNS` (`AccountCode`,`BillMonth`),'
      '  KEY `ornumber` (`TellerORNumber`),'
      '  KEY `CollName` (`Name`),'
      
        '  KEY `collectionfilter` (`DatePaid`,`CollectorCode`,`EncoderCod' +
        'e`),'
      
        '  KEY `Index_9` (`CollectorCode`,`EncoderCode`,`DatePaid`,`DateR' +
        'emitted`),'
      
        '  KEY `uniquereceiopt` USING BTREE (`ReceiptNumber`,`BillMonth`)' +
        ','
      '  KEY `Index_10` (`Area`,`BillMonth`,`DatePaid`,`Posted`),'
      '  KEY `Index_11` (`AccountCode`,`BillMonth`,`ReceiptNumber`),'
      '  KEY `Wratecode` (`WRateCode`),'
      '  KEY `SpotB` (`BillMonth`,`OPDescription`),'
      '  KEY `datepaid` (`DatePaid`)'
      ') ENGINE=InnoDB DEFAULT CHARSET=latin1;')
    Left = 64
    Top = 464
  end
  object OUquery: TMyQuery
    Connection = BillingData.MyConnection1
    SQL.Strings = (
      'Select sum(ifnull(c.amount,0),'
      '       sum(ifnull(bl.RPTax,0)'
      'from collection_ou c'
      
        'left join ((select * from billhistory b  where b.billmonth = c.b' +
        'illmonth and b.accountnumber = c.accountnumber) union'
      
        '           (select * from latebillhistory l where l.billmonth = ' +
        'c.billmonth and l.accountnumber = c.accountnumber )) bl'
      
        '           on bl.billmonth = c.billmonth and bl.accountnumber = ' +
        'c.accountnumber'
      ''
      'group by c.area           '
      ''
      '/*Select sum(ifnull(c.TotalBill,0)),'
      '       sum(ifnull(bl.RPTax,0))'
      'from collection_ou c'
      
        '/*left join ((Select * from billhistory b  on b.BillMonth = c1.B' +
        'illMonth and b.AccountNumber = c1.AccountNumber) union'
      '           (Select c2.TotalBill,b.rptax from collection c2'
      
        '            left join latebillhistory l where l.BillMonth = c2.B' +
        'illMonth and l.AccountNumber = c2.AccountNumber)) bl'
      
        '           on bl.billmonth = c.BillMonth -- and bl.AccountNumber' +
        ' = c.AccountNumber'
      ''
      'group by c.area*/'
      ''
      'left join ((Select b.* from collection c1'
      
        '            left join billhistory b  on b.BillMonth = c1.BillMon' +
        'th and b.AccountNumber = c1.AccountNumber) union'
      '           (Select l.* from collection c2'
      
        '            left join latebillhistory l on l.BillMonth = c2.Bill' +
        'Month and l.AccountNumber = c2.AccountNumber)) bl'
      
        '           on bl.billmonth = c.BillMonth -- and bl.AccountNumber' +
        ' = c.AccountNumber'
      ''
      'group by c.area*/')
    Left = 32
    Top = 464
    object OUqueryEntry2: TIntegerField
      FieldName = 'Entry2'
    end
    object OUqueryEntry: TIntegerField
      FieldName = 'Entry'
    end
    object OUqueryReceiptNumber: TStringField
      FieldName = 'ReceiptNumber'
      Size = 10
    end
    object OUqueryAccountCode: TFloatField
      FieldName = 'AccountCode'
    end
    object OUqueryArea: TStringField
      FieldName = 'Area'
      FixedChar = True
      Size = 3
    end
    object OUqueryBook: TStringField
      FieldName = 'Book'
      FixedChar = True
      Size = 3
    end
    object OUquerySequence: TStringField
      FieldName = 'Sequence'
      Size = 4
    end
    object OUqueryAccountNumber: TStringField
      FieldName = 'AccountNumber'
      Size = 10
    end
    object OUqueryName: TStringField
      FieldName = 'Name'
      Size = 50
    end
    object OUqueryBillMonth: TStringField
      FieldName = 'BillMonth'
      Size = 4
    end
    object OUqueryTotalBill: TFloatField
      FieldName = 'TotalBill'
    end
    object OUqueryMembership: TFloatField
      FieldName = 'Membership'
    end
    object OUqueryPenalty: TFloatField
      FieldName = 'Penalty'
    end
    object OUquerySecurity: TFloatField
      FieldName = 'Security'
    end
    object OUqueryMeterDeposit: TFloatField
      FieldName = 'MeterDeposit'
    end
    object OUqueryTransformerRental: TFloatField
      FieldName = 'TransformerRental'
    end
    object OUquerySundries: TStringField
      FieldName = 'Sundries'
      Size = 15
    end
    object OUquerySundriesAmount: TFloatField
      FieldName = 'SundriesAmount'
    end
    object OUqueryUCNPCSD: TFloatField
      FieldName = 'UCNPCSD'
    end
    object OUqueryUCNPCSCC: TFloatField
      FieldName = 'UCNPCSCC'
    end
    object OUqueryUCDUSCC: TFloatField
      FieldName = 'UCDUSCC'
    end
    object OUqueryUCME: TFloatField
      FieldName = 'UCME'
    end
    object OUqueryUCETR: TFloatField
      FieldName = 'UCETR'
    end
    object OUqueryUCEC: TFloatField
      FieldName = 'UCEC'
    end
    object OUqueryUCCSR: TFloatField
      FieldName = 'UCCSR'
    end
    object OUqueryLoanCondo: TFloatField
      FieldName = 'LoanCondo'
    end
    object OUqueryTotal: TFloatField
      FieldName = 'Total'
    end
    object OUqueryCollectorCode: TStringField
      FieldName = 'CollectorCode'
      FixedChar = True
      Size = 3
    end
    object OUqueryDatePaid: TDateField
      FieldName = 'DatePaid'
    end
    object OUqueryDateRemitted: TDateField
      FieldName = 'DateRemitted'
    end
    object OUqueryEncoderCode: TStringField
      FieldName = 'EncoderCode'
      Size = 10
    end
    object OUqueryPosted: TStringField
      FieldName = 'Posted'
      FixedChar = True
      Size = 1
    end
    object OUqueryKilowattHour: TFloatField
      FieldName = 'KilowattHour'
    end
    object OUqueryAddress: TStringField
      FieldName = 'Address'
      Size = 15
    end
    object OUqueryOPDescription: TStringField
      FieldName = 'OPDescription'
      Size = 50
    end
    object OUqueryOPAmount: TFloatField
      FieldName = 'OPAmount'
    end
    object OUqueryTellerORNumber: TStringField
      FieldName = 'TellerORNumber'
      Size = 15
    end
    object OUqueryVATDiscAmt: TFloatField
      FieldName = 'VATDiscAmt'
    end
    object OUqueryVATDistDiscAmt: TFloatField
      FieldName = 'VATDistDiscAmt'
    end
    object OUqueryVATGenCoDiscAmt: TFloatField
      FieldName = 'VATGenCoDiscAmt'
    end
    object OUqueryVATTransCoDiscAmt: TFloatField
      FieldName = 'VATTransCoDiscAmt'
    end
    object OUqueryVATSystemLossDiscAmt: TFloatField
      FieldName = 'VATSystemLossDiscAmt'
    end
    object OUqueryVATDist: TFloatField
      FieldName = 'VATDist'
    end
    object OUqueryVATGenCO: TFloatField
      FieldName = 'VATGenCO'
    end
    object OUqueryVATTransCO: TFloatField
      FieldName = 'VATTransCO'
    end
    object OUqueryVATSystemLossGenCO: TFloatField
      FieldName = 'VATSystemLossGenCO'
    end
    object OUqueryVATSystemLossTransCO: TFloatField
      FieldName = 'VATSystemLossTransCO'
    end
    object OUqueryVAT: TFloatField
      FieldName = 'VAT'
    end
    object OUquerySystemLossCharge: TFloatField
      FieldName = 'SystemLossCharge'
    end
    object OUqueryPKVRAmount: TFloatField
      FieldName = 'PKVRAmount'
    end
    object OUquerySCDisc: TFloatField
      FieldName = 'SCDisc'
    end
    object OUqueryWRateCode: TStringField
      FieldName = 'WRateCode'
      Size = 1
    end
    object OUqueryRPTax: TFloatField
      FieldName = 'RPTax'
    end
    object OUqueryRateOrder: TStringField
      FieldName = 'RateOrder'
      Size = 6
    end
    object OUqueryBTax: TFloatField
      FieldName = 'BTax'
    end
    object OUqueryOtherSystemLossCostAdj: TFloatField
      FieldName = 'OtherSystemLossCostAdj'
    end
    object OUqueryOtherSeniorCitizenRateAdj: TFloatField
      FieldName = 'OtherSeniorCitizenRateAdj'
    end
    object OUqueryOtherGenRateAdj: TFloatField
      FieldName = 'OtherGenRateAdj'
    end
    object OUqueryOtherTransCostAdj: TFloatField
      FieldName = 'OtherTransCostAdj'
    end
    object OUqueryOtherTransDemandCostAdj: TFloatField
      FieldName = 'OtherTransDemandCostAdj'
    end
    object OUqueryOtherLifelineRateCostAdj: TFloatField
      FieldName = 'OtherLifelineRateCostAdj'
    end
  end
  object InsertOUcol: TMyQuery
    Connection = BillingData.MyConnection1
    SQL.Strings = (
      'insert into collection_ou('
      '   ReceiptNumber,'
      '   AccountCode,'
      '   Area,'
      '   Book,'
      '   Sequence,'
      '   AccountNumber,'
      '   Name,'
      '   BillMonth,'
      '   TotalBill,'
      '   DatePaid)'
      '  (Select '
      '    ReceiptNumber,'
      '    AccountCode,'
      '    Area,'
      '    Book,'
      '    Sequence,'
      '    AccountNumber,'
      '    Name,'
      '    BillMonth,'
      '    TotalBill,'
      '    DatePaid'
      '   from collection'
      
        '   where datepaid between '#39'2014-06-01'#39' and '#39'2014-06-30'#39' and -- :' +
        'datefrom and :dateto and'
      '      collectorcode <> '#39'PKV'#39' and'
      '      sundries is not null)')
    Left = 8
    Top = 464
  end
  object Collection: TMyQuery
    Connection = BillingData.MyConnection1
    SQL.Strings = (
      'select'
      '  c.area,'
      '  &kilowatthour'
      '  &mcc'
      '  &ucec '
      '  &ucme'
      '  &ucscc'
      '  &vatgenco '
      '  &vattransco'
      '  &vatdist'
      '  &vatsystemloss'
      '  &rptax'
      '  &OtherGen'
      '  &OtherTrans'
      '  &OtherTDemand'
      '  &OtherSysLoss'
      '  &OtherLifeline'
      '  &OtherSeniorCitizen'
      '  &ICCross'
      '  &Fitall'
      '  &PARec'
      'from collection c '
      'where c.datepaid between :datefrom and :dateto and'
      '      c.collectorcode <> '#39'PKV'#39' and'
      '      c.sundries is not null'
      'group by area')
    Left = 40
    Top = 97
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'datefrom'
      end
      item
        DataType = ftUnknown
        Name = 'dateto'
      end>
    MacroData = <
      item
        Name = 'kilowatthour'
        Value = ' sum(cast(ifnull(kilowatthour,0) as decimal(10,1))) amount'#13#10
        Active = False
      end
      item
        Name = 'mcc'
        Value = '  sum(ifnull(c.security,0)) amount'#13#10
        Active = False
      end
      item
        Name = 'ucec'
        Value = '  sum(ifnull(c.ucec,0)) amount'#13#10
        Active = False
      end
      item
        Name = 'ucme'
        Value = '  sum(ifnull(c.ucme,0)) amount'#13#10
        Active = False
      end
      item
        Name = 'ucscc'
        Value = '  sum(ifnull(c.ucnpcscc,0)) amount'#13#10
        Active = False
      end
      item
        Name = 'vatgenco'
        Value = 'sum(ifnull(c.vatgenco,0)+ ifnull(c.VATGenCoDiscAmt,0)) amount'#13#10
        Active = False
      end
      item
        Name = 'vattransco'
        Value = 
          'sum(ifnull(c.vattransco,0)+ ifnull(c.VATTransCODiscAmt,0)) amoun' +
          't'#13#10
        Active = False
      end
      item
        Name = 'vatdist'
        Value = 'sum(ifnull(c.vatdist+c.vatdistdiscamt,0)) amount'#13#10
        Active = False
      end
      item
        Name = 'vatsystemloss'
        Value = 
          'sum(ifnull(c.vatsystemlossgenco,0)+ ifnull(c.VATSystemLossDiscAm' +
          't,0)) amount'#13#10
        Active = False
      end
      item
        Name = 'rptax'
        Value = 'sum(ifnull(c.rptax,0))  amount'
        Active = False
      end
      item
        Name = 'OtherGen'
        Value = 'sum(ifnull(c.OtherGenRateAdj,0))  amount'
        Active = False
      end
      item
        Name = 'OtherTrans'
        Value = 'sum(ifnull(c.OtherTransCostAdj,0))  amount'
        Active = False
      end
      item
        Name = 'OtherTDemand'
        Value = ' sum(ifnull(c.OtherTransDemandCostAdj,0))  amount'
        Active = False
      end
      item
        Name = 'OtherSysLoss'
        Value = ' sum(ifnull(c.OtherSystemLossCostAdj,0))  amount'
        Active = False
      end
      item
        Name = 'OtherLifeline'
        Value = 'sum(ifnull(c.OtherLifelineRateCostAdj,0))  amount'
        Active = False
      end
      item
        Name = 'OtherSeniorCitizen'
        Value = ' sum(ifnull(c.OtherSeniorCitizenRateAdj,0))  amount'
        Active = False
      end
      item
        Name = 'ICCross'
        Value = ' sum(ifnull(c.ICCrossSubsidyCharge,0))  amount'
        Active = False
      end
      item
        Name = 'Fitall'
        Value = ' sum(ifnull(c.Fitall,0))  amount'
        Active = False
      end
      item
        Name = 'PARec'
        Value = 'sum(ifnull(c.PARec,0))  amount'
        Active = False
      end>
    object Collectionarea: TStringField
      FieldName = 'area'
      FixedChar = True
      Size = 3
    end
    object Collectionamount: TFloatField
      FieldName = 'amount'
    end
  end
end
