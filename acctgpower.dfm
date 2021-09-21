object SalesForm: TSalesForm
  Left = 341
  Top = 88
  BorderStyle = bsToolWindow
  Caption = 'ASCII Upload to Accounting Sales Interface'
  ClientHeight = 420
  ClientWidth = 565
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object NxLabel6: TNxLabel
    Left = 16
    Top = 8
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
  object NxLabel1: TNxLabel
    Left = 104
    Top = 8
    Width = 53
    Height = 13
    Caption = 'Area Office'
    HorizontalPosition = hpLeft
    InnerHorizontal = True
    InnerVertical = False
    InnerMargins.Horizontal = 0
    InnerMargins.Vertical = 2
    VerticalPosition = vpTop
  end
  object GroupBox1: TGroupBox
    Left = 16
    Top = 46
    Width = 209
    Height = 69
    Caption = 'Late Bills Period Covered '
    TabOrder = 0
    object NxLabel2: TNxLabel
      Left = 38
      Top = 20
      Width = 20
      Height = 13
      Caption = 'from'
      HorizontalPosition = hpLeft
      InnerHorizontal = True
      InnerVertical = False
      InnerMargins.Horizontal = 0
      InnerMargins.Vertical = 2
      VerticalPosition = vpTop
    end
    object NxLabel3: TNxLabel
      Left = 49
      Top = 44
      Width = 9
      Height = 13
      Caption = 'to'
      HorizontalPosition = hpLeft
      InnerHorizontal = True
      InnerVertical = False
      InnerMargins.Horizontal = 0
      InnerMargins.Vertical = 2
      VerticalPosition = vpTop
    end
    object LateBillsFrom: TNxDatePicker
      Left = 65
      Top = 16
      Width = 107
      Height = 21
      TabOrder = 0
      Text = '7/12/2010'
      HideFocus = False
      Date = 40371.000000000000000000
      NoneCaption = 'None'
      TodayCaption = 'Today'
    end
    object LateBillsTo: TNxDatePicker
      Left = 65
      Top = 41
      Width = 107
      Height = 21
      TabOrder = 1
      Text = '7/12/2010'
      HideFocus = False
      Date = 40371.000000000000000000
      NoneCaption = 'None'
      TodayCaption = 'Today'
    end
  end
  object GroupBox2: TGroupBox
    Left = 16
    Top = 188
    Width = 209
    Height = 86
    Caption = 'Adjustment Period Covered '
    TabOrder = 1
    object NxLabel4: TNxLabel
      Left = 38
      Top = 20
      Width = 20
      Height = 13
      Caption = 'from'
      HorizontalPosition = hpLeft
      InnerHorizontal = True
      InnerVertical = False
      InnerMargins.Horizontal = 0
      InnerMargins.Vertical = 2
      VerticalPosition = vpTop
    end
    object NxLabel5: TNxLabel
      Left = 49
      Top = 44
      Width = 9
      Height = 13
      Caption = 'to'
      HorizontalPosition = hpLeft
      InnerHorizontal = True
      InnerVertical = False
      InnerMargins.Horizontal = 0
      InnerMargins.Vertical = 2
      VerticalPosition = vpTop
    end
    object AdjFrom: TNxDatePicker
      Left = 65
      Top = 16
      Width = 107
      Height = 21
      TabOrder = 0
      Text = '7/12/2010'
      HideFocus = False
      Date = 40371.000000000000000000
      NoneCaption = 'None'
      TodayCaption = 'Today'
    end
    object AdjTo: TNxDatePicker
      Left = 65
      Top = 41
      Width = 107
      Height = 21
      TabOrder = 1
      Text = '7/12/2010'
      HideFocus = False
      Date = 40371.000000000000000000
      NoneCaption = 'None'
      TodayCaption = 'Today'
    end
  end
  object BillMonth: TNxEdit
    Left = 17
    Top = 24
    Width = 77
    Height = 21
    TabOrder = 2
  end
  object NxMemo1: TNxMemo
    Left = 243
    Top = 8
    Width = 316
    Height = 404
    TabOrder = 3
  end
  object GroupBox3: TGroupBox
    Left = 16
    Top = 117
    Width = 209
    Height = 71
    Caption = 'Pilferage Period Covered '
    TabOrder = 4
    object NxLabel7: TNxLabel
      Left = 38
      Top = 21
      Width = 20
      Height = 13
      Caption = 'from'
      HorizontalPosition = hpLeft
      InnerHorizontal = True
      InnerVertical = False
      InnerMargins.Horizontal = 0
      InnerMargins.Vertical = 2
      VerticalPosition = vpTop
    end
    object NxLabel8: TNxLabel
      Left = 49
      Top = 45
      Width = 9
      Height = 13
      Caption = 'to'
      HorizontalPosition = hpLeft
      InnerHorizontal = True
      InnerVertical = False
      InnerMargins.Horizontal = 0
      InnerMargins.Vertical = 2
      VerticalPosition = vpTop
    end
    object PilferFrom: TNxDatePicker
      Left = 65
      Top = 17
      Width = 107
      Height = 21
      TabOrder = 0
      Text = '7/12/2010'
      HideFocus = False
      Date = 40371.000000000000000000
      NoneCaption = 'None'
      TodayCaption = 'Today'
    end
    object Pilferto: TNxDatePicker
      Left = 65
      Top = 42
      Width = 107
      Height = 21
      TabOrder = 1
      Text = '7/12/2010'
      HideFocus = False
      Date = 40371.000000000000000000
      NoneCaption = 'None'
      TodayCaption = 'Today'
    end
  end
  object AreaOffice: TNxComboBox
    Left = 103
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 6
    HideFocus = False
    AutoCompleteDelay = 0
    Items.Strings = (
      'DIPOLOG'
      'PINAN'
      'SINDANGAN'
      'LILOY')
  end
  object RadioGroup1: TRadioGroup
    Left = 27
    Top = 277
    Width = 185
    Height = 43
    Caption = 'Transfer Option'
    Columns = 2
    Ctl3D = True
    ItemIndex = 0
    Items.Strings = (
      'ASCII'
      'Online')
    ParentCtl3D = False
    TabOrder = 7
    OnClick = RadioGroup1Click
  end
  object NxLinkLabel1: TNxLinkLabel
    Left = 27
    Top = 373
    Width = 117
    Height = 15
    Caption = 'Sales Account Chart'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    HoverColor = clRed
    ParentFont = False
    TextDistance = 2
    VertSpacing = 2
    OnClick = NxLinkLabel1Click
  end
  object NxLinkLabel2: TNxLinkLabel
    Left = 27
    Top = 394
    Width = 79
    Height = 15
    Caption = 'Data Transfer'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    HoverColor = clRed
    ParentFont = False
    TextDistance = 2
    VertSpacing = 2
    OnClick = NxLinkLabel2Click
  end
  object NxLinkLabel3: TNxLinkLabel
    Left = 180
    Top = 373
    Width = 32
    Height = 15
    Caption = 'Close'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    HoverColor = clRed
    ParentFont = False
    TextDistance = 2
    VertSpacing = 2
    OnClick = NxLinkLabel3Click
  end
  object RadioGroup2: TRadioGroup
    Left = 27
    Top = 324
    Width = 185
    Height = 43
    Caption = 'Transfer Mode'
    Columns = 2
    Ctl3D = True
    ItemIndex = 0
    Items.Strings = (
      'Upload'
      'Download')
    ParentCtl3D = False
    TabOrder = 11
    OnClick = RadioGroup1Click
  end
  object SalesChartPanel: TNxHeaderPanel
    Left = 304
    Top = 90
    Width = 533
    Height = 349
    Caption = 'Account Definition'
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -11
    HeaderFont.Name = 'MS Sans Serif'
    HeaderFont.Style = []
    ParentHeaderFont = False
    TabOrder = 5
    Visible = False
    FullWidth = 533
    object GroupBox4: TGroupBox
      Left = 4
      Top = 32
      Width = 257
      Height = 309
      Caption = 'Debit Entries'
      TabOrder = 0
      object Label1: TLabel
        Left = 46
        Top = 24
        Width = 70
        Height = 13
        Alignment = taRightJustify
        Caption = 'Consumer A/R'
        FocusControl = DBEdit1
      end
      object Label3: TLabel
        Left = 70
        Top = 48
        Width = 46
        Height = 13
        Alignment = taRightJustify
        Caption = 'A/R MCC'
        FocusControl = DBEdit3
      end
      object Label5: TLabel
        Left = 17
        Top = 72
        Width = 99
        Height = 13
        Alignment = taRightJustify
        Caption = 'A/R VAT Distribution'
        FocusControl = DBEdit5
      end
      object Label6: TLabel
        Left = 29
        Top = 97
        Width = 87
        Height = 13
        Alignment = taRightJustify
        Caption = 'A/R VAT TransCo'
        FocusControl = DBEdit6
      end
      object Label7: TLabel
        Left = 44
        Top = 121
        Width = 72
        Height = 13
        Alignment = taRightJustify
        Caption = 'A/R VatGenCo'
        FocusControl = DBEdit7
      end
      object Label8: TLabel
        Left = 10
        Top = 145
        Width = 106
        Height = 13
        Alignment = taRightJustify
        Caption = 'A/R VAT System Loss'
        FocusControl = DBEdit8
      end
      object Label9: TLabel
        Left = 64
        Top = 169
        Width = 52
        Height = 13
        Alignment = taRightJustify
        Caption = 'A/R UCEC'
        FocusControl = DBEdit9
      end
      object Label10: TLabel
        Left = 62
        Top = 193
        Width = 54
        Height = 13
        Alignment = taRightJustify
        Caption = 'A/R UCME'
        FocusControl = DBEdit10
      end
      object Label11: TLabel
        Left = 50
        Top = 240
        Width = 66
        Height = 13
        Alignment = taRightJustify
        Caption = 'VAT Discount'
        FocusControl = DBEdit11
      end
      object Label4: TLabel
        Left = 57
        Top = 216
        Width = 59
        Height = 13
        Alignment = taRightJustify
        Caption = 'A/R UCSCC'
        FocusControl = DBEdit10
      end
      object DBEdit1: TDBEdit
        Left = 121
        Top = 22
        Width = 125
        Height = 21
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'ConsAR'
        DataSource = DataSource1
        TabOrder = 0
        OnKeyPress = DBEdit1KeyPress
      end
      object DBEdit3: TDBEdit
        Left = 121
        Top = 45
        Width = 125
        Height = 21
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'ConsARMCC'
        DataSource = DataSource1
        TabOrder = 1
        OnKeyPress = DBEdit1KeyPress
      end
      object DBEdit5: TDBEdit
        Left = 121
        Top = 69
        Width = 125
        Height = 21
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'ARVatDist'
        DataSource = DataSource1
        TabOrder = 2
        OnKeyPress = DBEdit1KeyPress
      end
      object DBEdit6: TDBEdit
        Left = 121
        Top = 93
        Width = 125
        Height = 21
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'ARVatTransCo'
        DataSource = DataSource1
        TabOrder = 3
        OnKeyPress = DBEdit1KeyPress
      end
      object DBEdit7: TDBEdit
        Left = 121
        Top = 117
        Width = 125
        Height = 21
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'ARVatGenCo'
        DataSource = DataSource1
        TabOrder = 4
        OnKeyPress = DBEdit1KeyPress
      end
      object DBEdit8: TDBEdit
        Left = 121
        Top = 141
        Width = 125
        Height = 21
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'ARVatSystemLoss'
        DataSource = DataSource1
        TabOrder = 5
        OnKeyPress = DBEdit1KeyPress
      end
      object DBEdit9: TDBEdit
        Left = 121
        Top = 165
        Width = 125
        Height = 21
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'ARUCEC'
        DataSource = DataSource1
        TabOrder = 6
        OnKeyPress = DBEdit1KeyPress
      end
      object DBEdit10: TDBEdit
        Left = 121
        Top = 189
        Width = 125
        Height = 21
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'ARUCME'
        DataSource = DataSource1
        TabOrder = 7
        OnKeyPress = DBEdit1KeyPress
      end
      object DBEdit11: TDBEdit
        Left = 121
        Top = 237
        Width = 125
        Height = 21
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'FinaVat'
        DataSource = DataSource1
        TabOrder = 9
        OnKeyPress = DBEdit1KeyPress
      end
      object NxButton4: TNxButton
        Left = 24
        Top = 272
        Width = 97
        Caption = 'Save'
        TabOrder = 10
        OnClick = NxButton4Click
      end
      object NxButton5: TNxButton
        Left = 128
        Top = 272
        Width = 97
        Caption = 'Cancel'
        TabOrder = 11
        OnClick = NxButton5Click
      end
      object DBEdit4: TDBEdit
        Left = 121
        Top = 213
        Width = 125
        Height = 21
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'ARUCSCC'
        DataSource = DataSource1
        TabOrder = 8
        OnKeyPress = DBEdit1KeyPress
      end
    end
    object GroupBox5: TGroupBox
      Left = 266
      Top = 32
      Width = 257
      Height = 309
      Caption = 'Credit Entries'
      TabOrder = 1
      object Label12: TLabel
        Left = 35
        Top = 25
        Width = 81
        Height = 13
        Alignment = taRightJustify
        Caption = 'Sales Residential'
        FocusControl = DBEdit12
      end
      object Label13: TLabel
        Left = 28
        Top = 48
        Width = 88
        Height = 13
        Alignment = taRightJustify
        Caption = 'Sales Low Voltage'
        FocusControl = DBEdit13
      end
      object Label14: TLabel
        Left = 26
        Top = 71
        Width = 90
        Height = 13
        Alignment = taRightJustify
        Caption = 'Sales High Voltage'
        FocusControl = DBEdit14
      end
      object Label18: TLabel
        Left = 11
        Top = 94
        Width = 105
        Height = 13
        Alignment = taRightJustify
        Caption = 'Miscellaneous Income'
        FocusControl = DBEdit18
      end
      object Label19: TLabel
        Left = 10
        Top = 117
        Width = 106
        Height = 13
        Alignment = taRightJustify
        Caption = 'Member'#39's Cont. Capex'
        FocusControl = DBEdit19
      end
      object Label20: TLabel
        Left = 23
        Top = 140
        Width = 93
        Height = 13
        Alignment = taRightJustify
        Caption = 'A/P Vat Distribution'
        FocusControl = DBEdit20
      end
      object Label21: TLabel
        Left = 31
        Top = 163
        Width = 85
        Height = 13
        Alignment = taRightJustify
        Caption = 'A/P VAT Transco'
        FocusControl = DBEdit21
      end
      object Label22: TLabel
        Left = 38
        Top = 186
        Width = 78
        Height = 13
        Alignment = taRightJustify
        Caption = 'A/P VAT Genco'
        FocusControl = DBEdit22
      end
      object Label23: TLabel
        Left = 11
        Top = 209
        Width = 105
        Height = 13
        Alignment = taRightJustify
        Caption = 'A/P VAT System Loss'
        FocusControl = DBEdit23
      end
      object Label24: TLabel
        Left = 65
        Top = 232
        Width = 51
        Height = 13
        Alignment = taRightJustify
        Caption = 'A/P UCEC'
        FocusControl = DBEdit24
      end
      object Label25: TLabel
        Left = 63
        Top = 256
        Width = 53
        Height = 13
        Alignment = taRightJustify
        Caption = 'A/P UCME'
        FocusControl = DBEdit25
      end
      object Label2: TLabel
        Left = 58
        Top = 279
        Width = 58
        Height = 13
        Alignment = taRightJustify
        Caption = 'A/P UCSCC'
        FocusControl = DBEdit25
      end
      object DBEdit12: TDBEdit
        Left = 121
        Top = 22
        Width = 125
        Height = 21
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'SalesRes'
        DataSource = DataSource1
        TabOrder = 0
        OnKeyPress = DBEdit1KeyPress
      end
      object DBEdit13: TDBEdit
        Left = 122
        Top = 45
        Width = 125
        Height = 21
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'SalesComm'
        DataSource = DataSource1
        TabOrder = 1
        OnKeyPress = DBEdit1KeyPress
      end
      object DBEdit14: TDBEdit
        Left = 121
        Top = 68
        Width = 125
        Height = 21
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'SalesInd'
        DataSource = DataSource1
        TabOrder = 2
        OnKeyPress = DBEdit1KeyPress
      end
      object DBEdit18: TDBEdit
        Left = 121
        Top = 91
        Width = 125
        Height = 21
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'SalesPen'
        DataSource = DataSource1
        TabOrder = 3
        OnKeyPress = DBEdit1KeyPress
      end
      object DBEdit19: TDBEdit
        Left = 121
        Top = 114
        Width = 125
        Height = 21
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'SalesMCC'
        DataSource = DataSource1
        TabOrder = 4
        OnKeyPress = DBEdit1KeyPress
      end
      object DBEdit20: TDBEdit
        Left = 121
        Top = 137
        Width = 125
        Height = 21
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'SalesVatDist'
        DataSource = DataSource1
        TabOrder = 5
        OnKeyPress = DBEdit1KeyPress
      end
      object DBEdit21: TDBEdit
        Left = 121
        Top = 160
        Width = 125
        Height = 21
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'SalesVatTransco'
        DataSource = DataSource1
        TabOrder = 6
        OnKeyPress = DBEdit1KeyPress
      end
      object DBEdit22: TDBEdit
        Left = 121
        Top = 183
        Width = 125
        Height = 21
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'SalesVatGenco'
        DataSource = DataSource1
        TabOrder = 7
        OnKeyPress = DBEdit1KeyPress
      end
      object DBEdit23: TDBEdit
        Left = 121
        Top = 206
        Width = 125
        Height = 21
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'SalesVatSystemLoss'
        DataSource = DataSource1
        TabOrder = 8
        OnKeyPress = DBEdit1KeyPress
      end
      object DBEdit24: TDBEdit
        Left = 121
        Top = 229
        Width = 125
        Height = 21
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'SalesUCEC'
        DataSource = DataSource1
        TabOrder = 9
        OnKeyPress = DBEdit1KeyPress
      end
      object DBEdit25: TDBEdit
        Left = 121
        Top = 252
        Width = 125
        Height = 21
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'SalesUCME'
        DataSource = DataSource1
        TabOrder = 10
        OnKeyPress = DBEdit1KeyPress
      end
      object DBEdit2: TDBEdit
        Left = 121
        Top = 275
        Width = 125
        Height = 21
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'SalesUCSCC'
        DataSource = DataSource1
        TabOrder = 11
        OnKeyPress = DBEdit1KeyPress
      end
    end
  end
  object Sales: TMyQuery
    Connection = BillingData.MyConnection1
    SQL.Strings = (
      
        'select accountcode, sum(ifnull(debit,0)) as debit, sum(ifnull(cr' +
        'edit,0)) as credit from'
      '('
      'select :araccount as accountcode,'
      '       sum(ifnull(totalbill,0) - ( ifnull(vatgenco,0)+'
      '                                   ifnull(vattransco,0)+'
      '                                   ifnull(vatsystemlossgenco,0)+'
      '                                   ifnull(vatdist,0)+'
      '                                   ifnull(ucec,0)+'
      '                                   ifnull(ucme,0)+'
      
        '                                   ifnull(ucnpcstrandedcontcost,' +
        '0)+'
      
        '                                   ifnull(mcc,0))) - ifnull(:OCB' +
        'illing,0) as debit,'
      ''
      '       0 as credit'
      
        'from billhistory where billmonth = :billmonth  /* Current Month ' +
        'AR */'
      ''
      'union'
      ''
      'select :araccount as accountcode,'
      '       sum(ifnull(totalbill,0)-(ifnull(vatgenco,0)+'
      '                                ifnull(vattransco,0)+'
      '                                ifnull(vatsystemlossgenco,0)+'
      '                                ifnull(vatdist,0)+'
      '                                ifnull(ucec,0)+'
      '                                ifnull(ucme,0)+'
      '                                ifnull(ucnpcstrandedcontcost,0)+'
      '                                ifnull(mcc,0))) as debit,'
      '       0 as credit'
      
        'from Latebillhistory where billdate between :LateBillDatefrom an' +
        'd :LateBillDateTo'
      ''
      'union'
      ''
      'select :ARAccount as accountcode,'
      '       sum(ifnull(totalbill,0)-(ifnull(vatgenco,0)+'
      '                                ifnull(vattransco,0)+'
      '                                ifnull(vatsystemlossgenco,0)+'
      '                                ifnull(vatdist,0)+'
      '                                ifnull(ucec,0)+'
      '                                ifnull(ucme,0)+'
      '                                ifnull(ucnpcstrandedcontcost,0)+'
      '                                ifnull(mcc,0))) debit,'
      '       0 as credit'
      
        'from pilferbill where billdate between :pfdatefrom and :pfdateto' +
        ' and postingcode = '#39'2'#39'/* Pilferage AR */'
      ''
      'union'
      ''
      'select :ARMCC as accountcode,'
      '       sum(ifnull(mcc,0)) debit,'
      '       0 as credit'
      
        'from BillHistory where billmonth = :billmonth /* Current Month A' +
        'R MCC */'
      ''
      'union'
      ''
      'select :ARMCC as accountcode,'
      '       sum(ifnull(mcc,0)) debit,'
      '       0 as credit'
      
        'from Latebillhistory where billdate between :LateBillDatefrom an' +
        'd :LateBillDateTo  /* LateBills AR MCC */'
      ''
      'union'
      ''
      'select :ARMCC as accountcode,'
      '       sum(ifnull(mcc,0)) debit,'
      '       0 as credit'
      
        'from pilferbill where billdate between :pfdatefrom and :pfdateto' +
        ' and postingcode = '#39'2'#39' /* Pilferage AR MCC */'
      ''
      'union'
      ''
      'select :ARVATGenco as accountcode,'
      '       sum(ifnull(VatGenco,0)) debit,'
      '       0 as credit'
      
        'from BillHistory where billmonth = :billmonth /* Current Month A' +
        'R VATGenco */'
      ''
      'union'
      ''
      'select :ARVATGenco as accountcode,'
      '       sum(ifnull(VatGenco,0)) debit,'
      '       0 as credit'
      
        'from LateBillHistory where billdate between :LateBillDatefrom an' +
        'd :LateBillDateTo /* Current Month AR VATGenco */'
      ''
      'union'
      ''
      'select :ARVATGenco as accountcode,'
      '       sum(ifnull(VatGenco,0)) debit, '
      '       0 as credit'
      
        'from pilferbill where billdate between :pfdatefrom and :pfdateto' +
        ' and postingcode = '#39'2'#39' /* Pilferage AR VATGenco */'
      ''
      'union'
      ''
      'select :ARVATTransco as accountcode,'
      '       sum(ifnull(VatTransco,0)) debit,'
      '       0 as credit'
      
        'from BillHistory where billmonth = :billmonth /* Current Month A' +
        'R VATTransco */'
      ''
      'union'
      ''
      'select :ARVATTransco as accountcode,'
      '       sum(ifnull(VatTransco,0)) debit,'
      '       0 as credit'
      
        'from LateBillHistory where billdate between :LateBillDatefrom an' +
        'd :LateBillDateTo /* LateBill AR VAT Transco */'
      ''
      'union'
      ''
      'select :ARVATTransco as accountcode,'
      '       sum(ifnull(VatTransco,0)) debit, '
      '       0 as credit'
      
        'from pilferbill where billdate between :pfdatefrom and :pfdateto' +
        ' and postingcode = '#39'2'#39' /* Pilferage AR VATTrsnsco */'
      ''
      'union'
      ''
      'select :ARVATDist as accountcode,'
      '       sum(ifnull(VatDist,0)+ifnull(VatDiscAmt,0)) debit,'
      '       0 as credit'
      
        'from BillHistory where billmonth = :billmonth /* Current Month A' +
        'R VAT Distribution */'
      ''
      'union'
      ''
      'select :ARVATDist as accountcode,'
      '       sum(ifnull(VatDist,0)+ifnull(VatDiscAmt,0)) debit,'
      '       0 as credit'
      
        'from LateBillHistory where billdate between :LateBillDatefrom an' +
        'd :LateBillDateTo /* LateBill AR VAT Distribution */'
      ''
      'union'
      ''
      'select :ARVATDist as accountcode,'
      '       sum(ifnull(VatDist,0)+ifnull(VatDiscAmt,0)) debit,'
      '       0 as credit'
      
        'from pilferbill where billdate between :pfdatefrom and :pfdateto' +
        ' and postingcode = '#39'2'#39' /* Pilferage AR VAT Distribution */'
      ''
      'union'
      ''
      'select :ARVATSystemLoss as accountcode,'
      '       sum(ifnull(VatSystemLossGenCo,0)) debit,'
      '       0 as credit'
      
        'from BillHistory where billmonth = :billmonth /* Current Month A' +
        'R VAT System Loss */'
      ''
      'union'
      ''
      'select :ARVATSystemLoss as accountcode,'
      '       sum(ifnull(VatSystemLossGenCO,0)) debit,'
      '       0 as credit'
      
        'from LateBillHistory where billdate between :LateBillDatefrom an' +
        'd :LateBillDateTo /* LateBill AR VAT System Loss */'
      ''
      'union'
      ''
      'select :ARVATSystemLoss as accountcode,'
      '       sum(ifnull(VatSystemLossGenCo,0)) debit, '
      '       0 as credit'
      
        'from pilferbill where billdate between :pfdatefrom and :pfdateto' +
        ' and postingcode = '#39'2'#39' /* Pilferage AR VAT System Loss */'
      ''
      'union'
      ''
      'select :ARUCEC as accountcode,'
      '       sum(ifnull(UCEC,0)) debit,'
      '       0 as credit'
      
        'from BillHistory where billmonth = :billmonth /* Current Month A' +
        'R UCEC */'
      ''
      'union'
      ''
      'select :ARUCEC as accountcode,'
      '       sum(ifnull(UCEC,0)) debit,'
      '       0 as credit'
      
        'from LateBillHistory where billdate between :LateBillDatefrom an' +
        'd :LateBillDateTo /* LateBill AR UCEC */'
      ''
      'union'
      ''
      'select :ARUCEC as accountcode,'
      '       sum(ifnull(UCEC,0)) debit,'
      '       0 as credit'
      
        'from pilferbill where billdate between :pfdatefrom and :pfdateto' +
        ' and postingcode = '#39'2'#39' /* Pilferage AR UCEC */'
      ''
      'union'
      ''
      'select :ARUCME as accountcode,'
      '       sum(ifnull(UCME,0)) debit,'
      '       0 as credit'
      
        'from BillHistory where billmonth = :billmonth /* Current Month A' +
        'R UCME */'
      ''
      'union'
      ''
      'select :ARUCME as accountcode,'
      '       sum(ifnull(UCME,0)) debit,'
      '       0 as credit'
      
        'from LateBillHistory where billdate between :LateBillDatefrom an' +
        'd :LateBillDateTo /* LateBill AR UCME */'
      ''
      'union'
      ''
      'select :ARUCME as accountcode,'
      '       sum(ifnull(UCME,0)) debit,'
      '       0 as credit'
      
        'from pilferbill where billdate between :pfdatefrom and :pfdateto' +
        ' and postingcode = '#39'2'#39' /* Pilferage AR UCME */'
      ''
      'union'
      ''
      'select :ARUCSCC as accountcode,'
      '       sum(ifnull(UCNPCStrandedContCost,0)) debit,'
      '       0 as credit'
      
        'from BillHistory where billmonth = :billmonth /* Current Month A' +
        'R UCSCC */'
      ''
      'union'
      ''
      'select :ARUCSCC as accountcode,'
      '       sum(ifnull(UCNPCStrandedContCost,0)) debit,'
      '       0 as credit'
      
        'from LateBillHistory where billdate between :LateBillDatefrom an' +
        'd :LateBillDateTo /* LateBill AR UCSCC */'
      ''
      'union'
      ''
      'select :ARUCSCC as accountcode,'
      '       sum(ifnull(UCNPCStrandedContCost,0)) debit,'
      '       0 as credit'
      
        'from pilferbill where billdate between :pfdatefrom and :pfdateto' +
        ' and postingcode = '#39'2'#39' /* Pilferage AR UCSCC */'
      ''
      'union'
      ''
      'select :ARVATDisc as accountcode,'
      '       sum(ifnull(VATDiscAmt*-1,0)) debit,'
      '       0 as credit'
      
        'from BillHistory where billmonth = :billmonth /* Current Month A' +
        'R Final VAT */'
      ''
      'union'
      ''
      'select :ARVATDisc as accountcode,'
      '       sum(ifnull(VATDiscAmt*-1,0)) debit,'
      '       0 as credit'
      
        'from LateBillHistory where billdate between :LateBillDatefrom an' +
        'd :LateBillDateTo /* LateBill Final VAT */'
      ''
      'union'
      ''
      'select :ARVATDisc as accountcode,'
      '       sum(ifnull(VATDiscAmt*-1,0)) debit,'
      '       0 as credit'
      
        'from pilferbill where billdate between :pfdatefrom and :pfdateto' +
        ' and postingcode = '#39'2'#39' /* Pilferage Final VAT */'
      ''
      'union'
      ''
      
        'SELECT substring(ocm.debitaccountcode,1,10) as debitaccountcode,' +
        ' '
      '       sum(ifnull(ocl.amount,0)) debit, '
      '       0 as credit'
      'FROM zaneco.ocledger ocl'
      
        'left join zaneco.ocdetail ocd on (ocl.idocdetail = ocd.idocdetai' +
        'l)'
      
        'left join zaneco.ocmaster ocm on (ocd.idocmaster = ocm.idocmaste' +
        'r)'
      '  where ocl.billmonth = :BillMonth'
      'group by debitaccountcode'
      '  '
      'union'
      ''
      'select :SalesAccountRes as accountcode,'
      '       0 as debit,'
      '       sum(ifnull(totalbill,0)-(ifnull(vatgenco,0)+'
      '                                ifnull(vattransco,0)+'
      '                                ifnull(vatsystemlossgenco,0)+'
      '                                ifnull(vatdist,0)+'
      '                                ifnull(ucec,0)+'
      '                                ifnull(ucme,0)+'
      '                                ifnull(UCNPCStrandedContCost,0)+'
      
        '                                ifnull(mcc,0)))-ifnull(:OCBillin' +
        'gR,0) as credit'
      
        'from billhistory where billmonth = :billmonth and wratecode = '#39'R' +
        #39' /* Sales Residential Current*/'
      ''
      'union'
      ''
      'select :SalesAccountRes as accountcode,'
      '       0 as debit,'
      '       sum(ifnull(totalbill,0)-(ifnull(vatgenco,0)+'
      '                                ifnull(vattransco,0)+'
      '                                ifnull(vatsystemlossgenco,0)+'
      '                                ifnull(vatdist,0)+'
      '                                ifnull(ucec,0)+'
      '                                ifnull(ucme,0)+'
      '                                ifnull(UCNPCStrandedContCost,0)+'
      '                                ifnull(mcc,0))) as credit'
      
        'from Latebillhistory where billdate between :LateBillDatefrom an' +
        'd :LateBillDateTo and wratecode = '#39'R'#39' /* Sales Residential Late ' +
        'Bills */'
      ''
      'union'
      ''
      'select :SalesAccountRes as accountcode,'
      '       0 as debit,'
      '       sum(ifnull(p.totalbill,0)-(ifnull(p.vatgenco,0)+'
      '                                  ifnull(p.vattransco,0)+'
      
        '                                  ifnull(p.vatsystemlossgenco,0)' +
        '+'
      '                                  ifnull(p.vatdist,0)+'
      '                                  ifnull(p.ucec,0)+'
      '                                  ifnull(p.ucme,0)+'
      
        '                                  ifnull(p.UCNPCStrandedContCost' +
        ',0)+'
      '                                  ifnull(p.mcc,0))) as credit'
      'from PilferBill P'
      'left join master on (p.code = master.code)'
      
        'where p.billdate between :PFDatefrom and :PFDateTo and master.wr' +
        'atecode = '#39'R'#39' and postingcode = '#39'2'#39' /* Sales Pilferage Residenti' +
        'al */'
      ''
      'union'
      ''
      'select :SalesLowVoltage as accountcode,'
      '       0 as debit,'
      '       sum(ifnull(totalbill,0)-(ifnull(vatgenco,0)+'
      '                                ifnull(vattransco,0)+'
      '                                ifnull(vatsystemlossgenco,0)+'
      '                                ifnull(vatdist,0)+'
      '                                ifnull(ucec,0)+'
      '                                ifnull(ucme,0)+'
      '                                ifnull(UCNPCStrandedContCost,0)+'
      
        '                                ifnull(mcc,0)))-ifnull(:OCBillin' +
        'gL,0) as credit'
      
        'from billhistory where billmonth = :billmonth and wratecode = '#39'L' +
        #39' /* Sales Low Voltage */'
      ''
      'union'
      ''
      'select :SalesLowVoltage as accountcode,'
      '       0 as debit,'
      '       sum(ifnull(totalbill,0)-(ifnull(vatgenco,0)+'
      '                                ifnull(vattransco,0)+'
      '                                ifnull(vatsystemlossgenco,0)+'
      '                                ifnull(vatdist,0)+'
      '                                ifnull(ucec,0)+'
      '                                ifnull(ucme,0)+'
      '                                ifnull(UCNPCStrandedContCost,0)+'
      '                                ifnull(mcc,0))) as credit'
      
        'from Latebillhistory where billdate between :LateBillDatefrom an' +
        'd :LateBillDateTo and wratecode = '#39'L'#39' /* Sales Low Voltage */'
      ''
      'union'
      ' '
      'select :SalesLowVoltage as accountcode,'
      '       0 as debit,'
      '       sum(ifnull(p.totalbill,0)-(ifnull(p.vatgenco,0)+'
      '                                  ifnull(p.vattransco,0)+'
      
        '                                  ifnull(p.vatsystemlossgenco,0)' +
        '+'
      '                                  ifnull(p.vatdist,0)+'
      '                                  ifnull(p.ucec,0)+'
      '                                  ifnull(p.ucme,0)+'
      
        '                                  ifnull(p.UCNPCStrandedContCost' +
        ',0)+'
      '                                  ifnull(p.mcc,0))) as credit'
      'from PilferBill P'
      'left join master on (p.code = master.code)'
      
        'where p.billdate between :PFDatefrom and :PFDateTo and master.wr' +
        'atecode = '#39'L'#39' and postingcode = '#39'2'#39' /* Sales Pilferage Low Volta' +
        'ge */'
      ''
      'union'
      ''
      'select :SalesHighVoltage as accountcode,'
      '       0 as debit,'
      '       sum(ifnull(totalbill,0)-(ifnull(vatgenco,0)+'
      '                                ifnull(vattransco,0)+'
      '                                ifnull(vatsystemlossgenco,0)+'
      '                                ifnull(vatdist,0)+'
      '                                ifnull(ucec,0)+'
      '                                ifnull(ucme,0)+'
      '                                ifnull(UCNPCStrandedContCost,0)+'
      
        '                                ifnull(mcc,0)))-ifnull(:OCBillin' +
        'gH,0) as credit'
      
        'from billhistory where billmonth = :billmonth and wratecode = '#39'H' +
        #39' /* Sales High Voltage */'
      ''
      'union'
      ''
      'select :SalesHighVoltage as accountcode,'
      '       0 as debit,'
      '       sum(ifnull(totalbill,0)-(ifnull(vatgenco,0)+'
      '                                ifnull(vattransco,0)+'
      '                                ifnull(vatsystemlossgenco,0)+'
      '                                ifnull(vatdist,0)+'
      '                                ifnull(ucec,0)+'
      '                                ifnull(ucme,0)+'
      '                                ifnull(UCNPCStrandedContCost,0)+'
      '                                ifnull(mcc,0))) as credit'
      
        'from Latebillhistory where billdate between :LateBillDatefrom an' +
        'd :LateBillDateTo and wratecode = '#39'H'#39' /* Sales High Voltage */'
      ''
      'union'
      ''
      'select :SalesHighVoltage as accountcode,'
      '       0 as debit,'
      '       sum(ifnull(p.totalbill,0)-(ifnull(p.vatgenco,0)+'
      '                                  ifnull(p.vattransco,0)+'
      
        '                                  ifnull(p.vatsystemlossgenco,0)' +
        '+'
      '                                  ifnull(p.vatdist,0)+'
      '                                  ifnull(p.ucec,0)+'
      '                                  ifnull(p.ucme,0)+'
      
        '                                  ifnull(p.UCNPCStrandedContCost' +
        ',0)+'
      '                                  ifnull(p.mcc,0))) as credit'
      'from PilferBill P'
      'left join master on (p.code = master.code)'
      
        'where p.billdate between :PFDatefrom and :PFDateTo and master.wr' +
        'atecode = '#39'H'#39' and postingcode = '#39'2'#39' /* Sales Pilferage High Volt' +
        'age */'
      ''
      'union'
      ''
      'select :SalesMCC as accountcode,'
      '       0 as debit,'
      '       sum(ifnull(MCC,0)) as credit'
      
        'from billhistory where billmonth = :billmonth /* Sales MCC Curre' +
        'nt*/'
      ''
      'union'
      ''
      'select :SalesMCC as accountcode,'
      '       0 as debit,'
      '       sum(ifnull(MCC,0)) as credit'
      
        'from Latebillhistory where billdate between :LateBillDatefrom an' +
        'd :LateBillDateTo /* Sales MCC Late Bills */'
      ''
      'union'
      ''
      'select :SalesMCC as accountcode,'
      '       0 as debit,'
      '       sum(ifnull(MCC,0)) as credit'
      
        'from PilferBill where billdate between :PFDatefrom and :PFDateTo' +
        ' and postingcode = '#39'2'#39' /* Sales MCC Pilferage */'
      ''
      'union'
      ''
      'select :SalesAPVATDist as accountcode,'
      '       0 as debit,'
      '       sum(ifnull(VATDist,0)) as credit'
      
        'from billhistory where billmonth = :billmonth /* Sales AP VAT Di' +
        'st Current*/'
      ''
      'union'
      ''
      'select :SalesAPVATDist as accountcode,'
      '       0 as debit,'
      '       sum(ifnull(VATDist,0)) as credit'
      
        'from Latebillhistory where billdate between :LateBillDatefrom an' +
        'd :LateBillDateTo /* Sales AP VAT Dist Late Bills */'
      ''
      'union'
      ''
      'select :SalesAPVATDist as accountcode,'
      '       0 as debit,'
      '       sum(ifnull(VATDist,0)) as credit'
      
        'from PilferBill where billdate between :PFDatefrom and :PFDateTo' +
        ' and postingcode = '#39'2'#39' /* Sales AP VAT Distribution Pilferage */'
      ''
      'union'
      ''
      'select :SalesAPVATTransco as accountcode,'
      '       0 as debit,'
      '       sum(ifnull(VATTransco,0)) as credit'
      
        'from billhistory where billmonth = :billmonth /* Sales AP VAT Tr' +
        'ansco Current*/'
      ''
      'union'
      ''
      'select :SalesAPVATTransco as accountcode,'
      '       0 as debit,'
      '       sum(ifnull(VATTransco,0)) as credit'
      
        'from Latebillhistory where billdate between :LateBillDatefrom an' +
        'd :LateBillDateTo /* Sales AP VAT Transco Late Bills */'
      ''
      'union'
      ''
      'select :SalesAPVATTransco as accountcode,'
      '       0 as debit,'
      '       sum(ifnull(VATTransco,0)) as credit'
      
        'from PilferBill where billdate between :PFDatefrom and :PFDateTo' +
        ' and postingcode = '#39'2'#39' /* Sales AP VAT Transco Pilferage */'
      ''
      'union '
      ''
      'select :SalesAPVATGenCo as accountcode,'
      '       0 as debit,'
      '       sum(ifnull(VATGenco,0)) as credit'
      
        'from billhistory where billmonth = :billmonth /* Sales AP VAT Ge' +
        'nco Current*/'
      ''
      'union'
      ''
      'select :SalesAPVATGenco as accountcode,'
      '       0 as debit,'
      '       sum(ifnull(VATGenco,0)) as credit'
      
        'from Latebillhistory where billdate between :LateBillDatefrom an' +
        'd :LateBillDateTo /* Sales AP VAT Genco Late Bills */'
      ''
      'union'
      ''
      'select :SalesAPVATGenco as accountcode,'
      '       0 as debit,'
      '       sum(ifnull(VATGenco,0)) as credit'
      
        'from PilferBill where billdate between :PFDatefrom and :PFDateTo' +
        ' and postingcode = '#39'2'#39' /* Sales AP VAT Genco Pilferage */'
      ''
      'union '
      ''
      'select :SalesAPVATSystemLossGenCo as accountcode,'
      '       0 as debit,'
      '       sum(ifnull(VATSystemLossGenco,0)) as credit'
      
        'from billhistory where billmonth = :billmonth /* Sales AP VAT Sy' +
        'stem Loss Current*/'
      ''
      'union'
      ''
      'select :SalesAPVATSystemLossGenCo as accountcode,'
      '       0 as debit,'
      '       sum(ifnull(VATSystemLossGenco,0)) as credit'
      
        'from Latebillhistory where billdate between :LateBillDatefrom an' +
        'd :LateBillDateTo /* Sales AP VAT System Loss Late Bills */'
      ''
      'union'
      ''
      'select :SalesAPVATSystemLossGenCo as accountcode,'
      '       0 as debit,'
      '       sum(ifnull(VATSystemLossGenco,0)) as credit'
      
        'from PilferBill where billdate between :PFDatefrom and :PFDateTo' +
        ' and postingcode = '#39'2'#39' /* Sales AP VAT System Loss Pilferage */'
      ''
      'union'
      ''
      'select :SalesAPUCEC as accountcode,'
      '       0 as debit,'
      '       sum(ifnull(UCEC,0)) as credit'
      
        'from billhistory where billmonth = :billmonth /* Sales AP UCEC C' +
        'urrent*/'
      ''
      'union'
      ''
      'select :SalesAPUCEC as accountcode,'
      '       0 as debit,'
      '       sum(ifnull(UCEC,0)) as credit'
      
        'from Latebillhistory where billdate between :LateBillDatefrom an' +
        'd :LateBillDateTo /* Sales AP UCEC Late Bills */'
      ''
      'union'
      ''
      'select :SalesAPUCEC as accountcode,'
      '       0 as debit,'
      '       sum(ifnull(UCEC,0)) as credit'
      
        'from PilferBill where billdate between :PFDatefrom and :PFDateTo' +
        ' and postingcode = '#39'2'#39' /* Sales AP UCEC Pilferage */'
      ''
      'union'
      ''
      'select :SalesAPUCME as accountcode,'
      '       0 as debit,'
      '       sum(ifnull(UCME,0)) as credit'
      
        'from billhistory where billmonth = :billmonth /* Sales AP UCME C' +
        'urrent*/'
      ''
      'union'
      ''
      'select :SalesAPUCME as accountcode,'
      '       0 as debit,'
      '       sum(ifnull(UCME,0)) as credit'
      
        'from Latebillhistory where billdate between :LateBillDatefrom an' +
        'd :LateBillDateTo /* Sales AP UCME Late Bills */'
      ''
      'union'
      ''
      'select :SalesAPUCME as accountcode,'
      '       0 as debit,'
      '       sum(ifnull(UCME,0)) as credit'
      
        'from PilferBill where billdate between :PFDatefrom and :PFDateTo' +
        ' and postingcode = '#39'2'#39' /* Sales AP UCME Pilferage */'
      ''
      'union'
      ''
      'select :SalesAPUCSCC as accountcode,'
      '       0 as debit,'
      '       sum(ifnull(UCNPCStrandedContCost,0)) as credit'
      
        'from billhistory where billmonth = :billmonth /* Sales AP UC SCC' +
        ' Current*/'
      ''
      'union'
      ''
      'select :SalesAPUCSCC as accountcode,'
      '       0 as debit,'
      '       sum(ifnull(UCNPCStrandedContCost,0)) as credit'
      
        'from Latebillhistory where billdate between :LateBillDatefrom an' +
        'd :LateBillDateTo /* Sales AP UCSCC Late Bills */'
      ''
      'union'
      ''
      'select :SalesAPUCSCC as accountcode,'
      '       0 as debit,'
      '       sum(ifnull(UCNPCStrandedContCost,0)) as credit'
      
        'from PilferBill where billdate between :PFDatefrom and :PFDateTo' +
        ' and postingcode = '#39'2'#39' /* Sales AP UC SCC Pilferage */'
      ''
      'union'
      ''
      'SELECT substring(ocm.accountcode,1,10) as accountcode, '
      '        0 as debit,'
      '        sum(ocl.amount) as  credit'
      'FROM zaneco.ocledger ocl'
      
        'left join zaneco.ocdetail ocd on (ocl.idocdetail = ocd.idocdetai' +
        'l)'
      
        'left join zaneco.ocmaster ocm on (ocd.idocmaster = ocm.idocmaste' +
        'r)'
      '  where ocl.billmonth = :BillMonth'
      'group by AccountCode'
      ''
      ') mysaleschart'
      'group by accountcode'
      'order by accountcode')
    Left = 396
    Top = 10
    ParamData = <
      item
        DataType = ftString
        Name = 'araccount'
        Value = ''
      end
      item
        DataType = ftUnknown
        Name = 'ocbilling'
        Value = nil
      end
      item
        DataType = ftString
        Name = 'billmonth'
        Value = ''
      end
      item
        DataType = ftString
        Name = 'araccount'
        Value = ''
      end
      item
        DataType = ftUnknown
        Name = 'LateBillDatefrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'LateBillDateTo'
        Value = nil
      end
      item
        DataType = ftString
        Name = 'ARAccount'
        Value = ''
      end
      item
        DataType = ftUnknown
        Name = 'pfdatefrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'pfdateto'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ARMCC'
        Value = nil
      end
      item
        DataType = ftString
        Name = 'billmonth'
        Value = ''
      end
      item
        DataType = ftUnknown
        Name = 'ARMCC'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'LateBillDatefrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'LateBillDateTo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ARMCC'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'pfdatefrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'pfdateto'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ARVATGenco'
        Value = nil
      end
      item
        DataType = ftString
        Name = 'billmonth'
        Value = ''
      end
      item
        DataType = ftUnknown
        Name = 'ARVATGenco'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'LateBillDatefrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'LateBillDateTo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ARVATGenco'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'pfdatefrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'pfdateto'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ARVATTransco'
        Value = nil
      end
      item
        DataType = ftString
        Name = 'billmonth'
        Value = ''
      end
      item
        DataType = ftUnknown
        Name = 'ARVATTransco'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'LateBillDatefrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'LateBillDateTo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ARVATTransco'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'pfdatefrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'pfdateto'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ARVATDist'
        Value = nil
      end
      item
        DataType = ftString
        Name = 'billmonth'
        Value = ''
      end
      item
        DataType = ftUnknown
        Name = 'ARVATDist'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'LateBillDatefrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'LateBillDateTo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ARVATDist'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'pfdatefrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'pfdateto'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ARVATSystemLoss'
        Value = nil
      end
      item
        DataType = ftString
        Name = 'billmonth'
        Value = ''
      end
      item
        DataType = ftUnknown
        Name = 'ARVATSystemLoss'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'LateBillDatefrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'LateBillDateTo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ARVATSystemLoss'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'pfdatefrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'pfdateto'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ARUCEC'
        Value = nil
      end
      item
        DataType = ftString
        Name = 'billmonth'
        Value = ''
      end
      item
        DataType = ftUnknown
        Name = 'ARUCEC'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'LateBillDatefrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'LateBillDateTo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ARUCEC'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'pfdatefrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'pfdateto'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ARUCME'
        Value = nil
      end
      item
        DataType = ftString
        Name = 'billmonth'
        Value = ''
      end
      item
        DataType = ftUnknown
        Name = 'ARUCME'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'LateBillDatefrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'LateBillDateTo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ARUCME'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'pfdatefrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'pfdateto'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ARUCSCC'
        Value = nil
      end
      item
        DataType = ftString
        Name = 'billmonth'
        Value = ''
      end
      item
        DataType = ftUnknown
        Name = 'ARUCSCC'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'LateBillDatefrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'LateBillDateTo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ARUCSCC'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'pfdatefrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'pfdateto'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ARVATDisc'
        Value = nil
      end
      item
        DataType = ftString
        Name = 'billmonth'
        Value = ''
      end
      item
        DataType = ftUnknown
        Name = 'ARVATDisc'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'LateBillDatefrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'LateBillDateTo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ARVATDisc'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'pfdatefrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'pfdateto'
        Value = nil
      end
      item
        DataType = ftString
        Name = 'BillMonth'
        Value = ''
      end
      item
        DataType = ftUnknown
        Name = 'SalesAccountRes'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'OCBillingR'
        Value = nil
      end
      item
        DataType = ftString
        Name = 'billmonth'
        Value = ''
      end
      item
        DataType = ftUnknown
        Name = 'SalesAccountRes'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'LateBillDatefrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'LateBillDateTo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'SalesAccountRes'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PFDatefrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PFDateTo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'SalesLowVoltage'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'OCBillingL'
        Value = nil
      end
      item
        DataType = ftString
        Name = 'billmonth'
        Value = ''
      end
      item
        DataType = ftUnknown
        Name = 'SalesLowVoltage'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'LateBillDatefrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'LateBillDateTo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'SalesLowVoltage'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PFDatefrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PFDateTo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'SalesHighVoltage'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'OCBillingH'
        Value = nil
      end
      item
        DataType = ftString
        Name = 'billmonth'
        Value = ''
      end
      item
        DataType = ftUnknown
        Name = 'SalesHighVoltage'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'LateBillDatefrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'LateBillDateTo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'SalesHighVoltage'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PFDatefrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PFDateTo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'SalesMCC'
        Value = nil
      end
      item
        DataType = ftString
        Name = 'billmonth'
        Value = ''
      end
      item
        DataType = ftUnknown
        Name = 'SalesMCC'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'LateBillDatefrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'LateBillDateTo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'SalesMCC'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PFDatefrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PFDateTo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'SalesAPVATDist'
        Value = nil
      end
      item
        DataType = ftString
        Name = 'billmonth'
        Value = ''
      end
      item
        DataType = ftUnknown
        Name = 'SalesAPVATDist'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'LateBillDatefrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'LateBillDateTo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'SalesAPVATDist'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PFDatefrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PFDateTo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'SalesAPVATTransco'
        Value = nil
      end
      item
        DataType = ftString
        Name = 'billmonth'
        Value = ''
      end
      item
        DataType = ftUnknown
        Name = 'SalesAPVATTransco'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'LateBillDatefrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'LateBillDateTo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'SalesAPVATTransco'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PFDatefrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PFDateTo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'SalesAPVATGenCo'
        Value = nil
      end
      item
        DataType = ftString
        Name = 'billmonth'
        Value = ''
      end
      item
        DataType = ftUnknown
        Name = 'SalesAPVATGenco'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'LateBillDatefrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'LateBillDateTo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'SalesAPVATGenco'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PFDatefrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PFDateTo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'SalesAPVATSystemLossGenCo'
        Value = nil
      end
      item
        DataType = ftString
        Name = 'billmonth'
        Value = ''
      end
      item
        DataType = ftUnknown
        Name = 'SalesAPVATSystemLossGenCo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'LateBillDatefrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'LateBillDateTo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'SalesAPVATSystemLossGenCo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PFDatefrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PFDateTo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'SalesAPUCEC'
        Value = nil
      end
      item
        DataType = ftString
        Name = 'billmonth'
        Value = ''
      end
      item
        DataType = ftUnknown
        Name = 'SalesAPUCEC'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'LateBillDatefrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'LateBillDateTo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'SalesAPUCEC'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PFDatefrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PFDateTo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'SalesAPUCME'
        Value = nil
      end
      item
        DataType = ftString
        Name = 'billmonth'
        Value = ''
      end
      item
        DataType = ftUnknown
        Name = 'SalesAPUCME'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'LateBillDatefrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'LateBillDateTo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'SalesAPUCME'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PFDatefrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PFDateTo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'SalesAPUCSCC'
        Value = nil
      end
      item
        DataType = ftString
        Name = 'billmonth'
        Value = ''
      end
      item
        DataType = ftUnknown
        Name = 'SalesAPUCSCC'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'LateBillDatefrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'LateBillDateTo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'SalesAPUCSCC'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PFDatefrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PFDateTo'
        Value = nil
      end
      item
        DataType = ftString
        Name = 'BillMonth'
        Value = ''
      end>
    object Salesaccountcode: TStringField
      FieldName = 'accountcode'
      FixedChar = True
      Size = 65530
    end
    object Salesdebit: TFloatField
      FieldName = 'debit'
      currency = True
    end
    object Salescredit: TFloatField
      FieldName = 'credit'
      currency = True
    end
  end
  object CreateSales: TMyQuery
    Connection = BillingData.MyConnection1
    SQL.Strings = (
      'ALTER TABLE `zaneco`.`saleschart` '
      ' ADD COLUMN `ARUCSCC` VARCHAR(20) AFTER `TransformerAR`,'
      ' ADD COLUMN `SalesUCSCC` VARCHAR(20) AFTER `ARUCSCC`;')
    Left = 396
    Top = 58
  end
  object SC: TMyQuery
    Connection = BillingData.MyConnection1
    SQL.Strings = (
      'select * from saleschart')
    Left = 396
    Top = 106
    object SCidsaleschart: TLongWordField
      FieldName = 'idsaleschart'
    end
    object SCConsAR: TStringField
      FieldName = 'ConsAR'
    end
    object SCConsARPilfer: TStringField
      FieldName = 'ConsARPilfer'
    end
    object SCConsARMCC: TStringField
      FieldName = 'ConsARMCC'
    end
    object SCConsARPilferPen: TStringField
      FieldName = 'ConsARPilferPen'
    end
    object SCARVatDist: TStringField
      FieldName = 'ARVatDist'
    end
    object SCARVatTransCo: TStringField
      FieldName = 'ARVatTransCo'
    end
    object SCARVatGenCo: TStringField
      FieldName = 'ARVatGenCo'
    end
    object SCARVatSystemLoss: TStringField
      FieldName = 'ARVatSystemLoss'
    end
    object SCARUCEC: TStringField
      FieldName = 'ARUCEC'
    end
    object SCARUCME: TStringField
      FieldName = 'ARUCME'
    end
    object SCFinaVat: TStringField
      FieldName = 'FinaVat'
    end
    object SCSalesRes: TStringField
      FieldName = 'SalesRes'
    end
    object SCSalesComm: TStringField
      FieldName = 'SalesComm'
    end
    object SCSalesInd: TStringField
      FieldName = 'SalesInd'
    end
    object SCSalesSL: TStringField
      FieldName = 'SalesSL'
    end
    object SCSalesPub: TStringField
      FieldName = 'SalesPub'
    end
    object SCSalesPilfer: TStringField
      FieldName = 'SalesPilfer'
    end
    object SCSalesPen: TStringField
      FieldName = 'SalesPen'
    end
    object SCSalesMCC: TStringField
      FieldName = 'SalesMCC'
    end
    object SCSalesVatDist: TStringField
      FieldName = 'SalesVatDist'
    end
    object SCSalesVatTransco: TStringField
      FieldName = 'SalesVatTransco'
    end
    object SCSalesVatGenco: TStringField
      FieldName = 'SalesVatGenco'
    end
    object SCSalesVatSystemLoss: TStringField
      FieldName = 'SalesVatSystemLoss'
    end
    object SCSalesUCEC: TStringField
      FieldName = 'SalesUCEC'
    end
    object SCSalesUCME: TStringField
      FieldName = 'SalesUCME'
    end
    object SCTransformerAR: TStringField
      FieldName = 'TransformerAR'
    end
    object SCARUCSCC: TStringField
      FieldName = 'ARUCSCC'
    end
    object SCSalesUCSCC: TStringField
      FieldName = 'SalesUCSCC'
    end
  end
  object DataSource1: TDataSource
    DataSet = SC
    Left = 396
    Top = 153
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '.fle'
    Filter = 'Sales Data File|*.sle'
    Left = 396
    Top = 201
  end
  object Adj: TMyQuery
    Connection = BillingData.MyConnection1
    SQL.Strings = (
      
        'select accountcode, sum(ifnull(debit,0)) as debit, sum(ifnull(cr' +
        'edit,0)) as credit from'
      '('
      ''
      '(select :araccount as accountcode,'
      
        '       sum((ifnull(abtotalbill,0)-ifnull(totalbill,0))-((ifnull(' +
        'abvatgenco,0)-ifnull(vatgenco,0))+'
      
        '                                                        (ifnull(' +
        'abvattransco,0)-ifnull(vattransco,0))+'
      
        '                                                        (ifnull(' +
        'abvatsystemlossgenco,0)-ifnull(vatsystemlossgenco,0))+'
      
        '                                                        (ifnull(' +
        'abvatdist,0)-ifnull(vatdist,0))+'
      
        '                                                        (ifnull(' +
        'abucec,0)-ifnull(ucec,0))+'
      
        '                                                        (ifnull(' +
        'abucme,0)-ifnull(ucme,0))+'
      
        '                                                        (ifnull(' +
        'abmcc,0)-ifnull(mcc,0)) )) as debit,'
      '       0 as credit'
      
        'from Adjustment where AdjDate between :AdjDatefrom and :AdjDateT' +
        'o ) /* Adjustment per Area */'
      ''
      'union'
      ''
      '(select :ARMCC as accountcode,'
      '       sum(ifnull(abmcc,0)-ifnull(mcc,0)) debit,'
      '       0 as credit'
      
        'from Adjustment where AdjDate between :AdjDatefrom and :AdjDateT' +
        'o ) /* Adjustment AR MCC */'
      ''
      'union'
      ''
      '(select :ARVATGenco as accountcode,'
      '       sum(ifnull(ABVatGenco,0)-ifnull(VatGenco,0)) debit,'
      '       0 as credit'
      
        'from Adjustment where AdjDate between :AdjDatefrom and :AdjDateT' +
        'o) /* Adjustment AR VATGenco */'
      ''
      'union'
      ''
      '(select :ARVATTransco as accountcode,'
      '       sum(ifnull(ABVatTransco,0)-ifnull(VatTransco,0)) debit,'
      '       0 as credit'
      
        'from Adjustment where AdjDate between :AdjDatefrom and :AdjDateT' +
        'o) /* Adj AR VAT Transco */'
      ''
      'union'
      ''
      '(select :ARVATDist as accountcode,'
      
        '       sum((ifnull(ABVatDist,0)-ifnull(VatDist,0))+(ifnull(ABVat' +
        'DiscAmt,0)-ifnull(VatDiscAmt,0))) debit,'
      '       0 as credit'
      
        'from Adjustment where AdjDate between :AdjDatefrom and :AdjDateT' +
        'o) /* Adj AR VAT Distribution */'
      ''
      'union'
      ''
      '(select :ARVATSystemLoss as accountcode,'
      
        '       sum((ifnull(ABVatSystemLossGenCO,0)-ifnull(VatSystemLossG' +
        'enCO,0))) debit,'
      '       0 as credit'
      
        'from Adjustment where AdjDate between :AdjDatefrom and :AdjDateT' +
        'o) /* Adj AR VAT System Loss */'
      ''
      'union'
      ''
      '(select :ARUCEC as accountcode,'
      '       sum(ifnull(ABUCEC,0)-ifnull(UCEC,0)) debit,'
      '       0 as credit'
      
        'from Adjustment where AdjDate between :AdjDatefrom and :AdjDateT' +
        'o) /* Adj AR UCEC */'
      ''
      'union'
      ''
      '(select :ARUCME as accountcode,'
      '       sum(ifnull(ABUCME,0)-ifnull(UCME,0)) debit,'
      '       0 as credit'
      
        'from Adjustment where AdjDate between :AdjDatefrom and :AdjDateT' +
        'o) /* Adj AR UCME */'
      ''
      'union'
      ''
      '(select :ARVATDisc as accountcode,'
      
        '       sum((ifnull(ABVATDiscAmt*-1,0)-ifnull(VATDiscAmt*-1,0))) ' +
        'debit,'
      '       0 as credit'
      
        'from Adjustment where AdjDate between :AdjDatefrom and :AdjDateT' +
        'o) /* Adj Final VAT */'
      ''
      'union'
      ''
      '(select :SalesAccountRes as accountcode,'
      '       0 as debit,'
      
        '       sum((ifnull(abtotalbill,0)-ifnull(totalbill,0))-((ifnull(' +
        'abvatgenco,0)-ifnull(vatgenco,0))+'
      
        '                                                        (ifnull(' +
        'abvattransco,0)-ifnull(vattransco,0))+'
      
        '                                                        (ifnull(' +
        'abvatsystemlossgenco,0)-ifnull(vatsystemlossgenco,0))+'
      
        '                                                        (ifnull(' +
        'abvatdist,0)-ifnull(vatdist,0))+'
      
        '                                                        (ifnull(' +
        'abucec,0)-ifnull(ucec,0))+'
      
        '                                                        (ifnull(' +
        'abucme,0)-ifnull(ucme,0))+'
      
        '                                                        (ifnull(' +
        'abmcc,0)-ifnull(mcc,0)) )) as credit'
      
        'from Adjustment where AdjDate between :AdjDatefrom and :AdjDateT' +
        'o and ratecode = '#39'R'#39') /* Sales Residentia */'
      ''
      'union'
      ''
      '(select :SalesLowVoltage as accountcode,'
      '       0 as debit,'
      
        '       sum((ifnull(abtotalbill,0)-ifnull(totalbill,0))-((ifnull(' +
        'abvatgenco,0)-ifnull(vatgenco,0))+'
      
        '                                                        (ifnull(' +
        'abvattransco,0)-ifnull(vattransco,0))+'
      
        '                                                        (ifnull(' +
        'abvatsystemlossgenco,0)-ifnull(vatsystemlossgenco,0))+'
      
        '                                                        (ifnull(' +
        'abvatdist,0)-ifnull(vatdist,0))+'
      
        '                                                        (ifnull(' +
        'abucec,0)-ifnull(ucec,0))+'
      
        '                                                        (ifnull(' +
        'abucme,0)-ifnull(ucme,0))+'
      
        '                                                        (ifnull(' +
        'abmcc,0)-ifnull(mcc,0)) )) as credit'
      
        'from Adjustment where AdjDate between :AdjDatefrom and :AdjDateT' +
        'o and ratecode = '#39'L'#39') /* Sales Low Voltage */'
      ''
      'union'
      ''
      '(select :SalesHighVoltage as accountcode,'
      '       0 as debit,'
      
        '       sum((ifnull(abtotalbill,0)-ifnull(totalbill,0))-((ifnull(' +
        'abvatgenco,0)-ifnull(vatgenco,0))+'
      
        '                                                        (ifnull(' +
        'abvattransco,0)-ifnull(vattransco,0))+'
      
        '                                                        (ifnull(' +
        'abvatsystemlossgenco,0)-ifnull(vatsystemlossgenco,0))+'
      
        '                                                        (ifnull(' +
        'abvatdist,0)-ifnull(vatdist,0))+'
      
        '                                                        (ifnull(' +
        'abucec,0)-ifnull(ucec,0))+'
      
        '                                                        (ifnull(' +
        'abucme,0)-ifnull(ucme,0))+'
      
        '                                                        (ifnull(' +
        'abmcc,0)-ifnull(mcc,0)) )) as credit'
      
        'from Adjustment where AdjDate between :AdjDatefrom and :AdjDateT' +
        'o and ratecode = '#39'H'#39') /* Sales High Voltage */'
      ''
      'union'
      ''
      '(select :SalesMCC as accountcode,'
      '       0 as debit,'
      '       sum(ifnull(ABMCC,0)-ifnull(MCC,0)) as credit'
      
        'from Adjustment where AdjDate between :AdjDatefrom and :AdjDateT' +
        'o) /* Sales MCC Late Bills */'
      ''
      'union'
      ''
      '(select :SalesAPVATDist as accountcode,'
      '       0 as debit,'
      '       sum(ifnull(ABVATDist,0)-ifnull(VATDist,0)) as credit'
      
        'from Adjustment where AdjDate between :AdjDatefrom and :AdjDateT' +
        'o) /* Sales AP VAT Dist Late Bills */'
      ''
      'union'
      ''
      '(select :SalesAPVATTransco as accountcode,'
      '       0 as debit,'
      
        '       sum(ifnull(ABVATTransco,0)-ifnull(VATTransco,0)) as credi' +
        't'
      
        'from Adjustment where AdjDate between :AdjDatefrom and :AdjDateT' +
        'o) /* Sales AP VAT Transco Late Bills */'
      ''
      'union'
      ''
      '(select :SalesAPVATGenco as accountcode,'
      '       0 as debit,'
      '       sum(ifnull(ABVATGenco,0)-ifnull(VATGenco,0)) as credit'
      
        'from Adjustment where AdjDate between :AdjDatefrom and :AdjDateT' +
        'o) /* Sales AP VAT Genco Late Bills */'
      ''
      'union'
      ''
      '(select :SalesAPVATSystemLossGenCo as accountcode,'
      '       0 as debit,'
      
        '       sum(ifnull(ABVATSystemLossGenco,0)-ifnull(VATSystemLossGe' +
        'nco,0)) as credit'
      
        'from Adjustment where AdjDate between :AdjDatefrom and :AdjDateT' +
        'o) /* Sales AP VAT System Loss Late Bills */'
      ''
      'union'
      ''
      '(select :SalesAPUCEC as accountcode,'
      '       0 as debit,'
      '       sum(ifnull(ABUCEC,0)-ifnull(UCEC,0)) as credit'
      
        'from Adjustment where AdjDate between :AdjDatefrom and :AdjDateT' +
        'o) /* Sales AP UCEC Late Bills */'
      ''
      'union'
      ''
      '(select :SalesAPUCME as accountcode,'
      '       0 as debit,'
      '       sum(ifnull(ABUCME,0)-ifnull(UCME,0)) as credit'
      
        'from Adjustment where AdjDate between :AdjDatefrom and :AdjDateT' +
        'o) /* Sales AP UCME Late Bills */'
      ''
      ') saleschart'
      'group by accountcode'
      'order by accountcode')
    Left = 396
    Top = 248
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'araccount'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'AdjDatefrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'AdjDateTo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ARMCC'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'AdjDatefrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'AdjDateTo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ARVATGenco'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'AdjDatefrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'AdjDateTo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ARVATTransco'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'AdjDatefrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'AdjDateTo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ARVATDist'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'AdjDatefrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'AdjDateTo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ARVATSystemLoss'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'AdjDatefrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'AdjDateTo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ARUCEC'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'AdjDatefrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'AdjDateTo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ARUCME'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'AdjDatefrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'AdjDateTo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ARVATDisc'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'AdjDatefrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'AdjDateTo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'SalesAccountRes'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'AdjDatefrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'AdjDateTo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'SalesLowVoltage'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'AdjDatefrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'AdjDateTo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'SalesHighVoltage'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'AdjDatefrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'AdjDateTo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'SalesMCC'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'AdjDatefrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'AdjDateTo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'SalesAPVATDist'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'AdjDatefrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'AdjDateTo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'SalesAPVATTransco'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'AdjDatefrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'AdjDateTo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'SalesAPVATGenCo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'AdjDatefrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'AdjDateTo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'SalesAPVATSystemLossGenCo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'AdjDatefrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'AdjDateTo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'SalesAPUCEC'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'AdjDatefrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'AdjDateTo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'SalesAPUCME'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'AdjDatefrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'AdjDateTo'
        Value = nil
      end>
    object Adjaccountcode: TStringField
      FieldName = 'accountcode'
      FixedChar = True
      Size = 65530
    end
    object Adjdebit: TFloatField
      FieldName = 'debit'
      currency = True
    end
    object Adjcredit: TFloatField
      FieldName = 'credit'
      currency = True
    end
  end
  object InsertAccountCode: TMyQuery
    Connection = BillingData.MyConnection1
    SQL.Strings = (
      
        'ALTER TABLE `zaneco`.`saleschart` ADD COLUMN `TransformerAR` VAR' +
        'CHAR(20) AFTER `SalesUCME`;')
    Left = 396
    Top = 296
  end
  object GetAccount: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'select * from chart where accountcode = :accountcode')
    Left = 496
    Top = 200
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'accountcode'
        Value = nil
      end>
    object GetAccountidchart: TLargeintField
      FieldName = 'idchart'
    end
    object GetAccountaccountcode: TStringField
      FieldName = 'accountcode'
    end
    object GetAccountaccountname: TStringField
      FieldName = 'accountname'
      Size = 70
    end
    object GetAccountaccounttype: TStringField
      FieldName = 'accounttype'
      Size = 10
    end
    object GetAccountaccountledgertype: TStringField
      FieldName = 'accountledgertype'
      Size = 5
    end
    object GetAccountBalAsOf: TFloatField
      FieldName = 'BalAsOf'
    end
    object GetAccountBalPeriodCovered: TFloatField
      FieldName = 'BalPeriodCovered'
    end
    object GetAccountIndent: TLargeintField
      FieldName = 'Indent'
    end
    object GetAccountcategory: TStringField
      FieldName = 'category'
      Size = 30
    end
    object GetAccountidGL: TLargeintField
      FieldName = 'idGL'
    end
    object GetAccountcstatus: TBooleanField
      FieldName = 'cstatus'
    end
    object GetAccountacctRepTitle: TStringField
      FieldName = 'acctRepTitle'
      Size = 15
    end
    object GetAccountidCashDepType: TLargeintField
      FieldName = 'idCashDepType'
    end
  end
  object MyQuery1: TMyQuery
    Connection = MyConnection1
    Left = 496
    Top = 296
  end
  object JVCheck: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'select * from journalvoucher '
      'where jvdescription = :jvdescription')
    Left = 496
    Top = 248
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'jvdescription'
        Value = nil
      end>
  end
  object JVUpdate: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'select * from JournalVoucher')
    Left = 496
    Top = 105
    object JVUpdateidJournalVoucher: TLargeintField
      FieldName = 'idJournalVoucher'
    end
    object JVUpdatejvDate: TDateField
      FieldName = 'jvDate'
    end
    object JVUpdatejvDescription: TMemoField
      FieldName = 'jvDescription'
      BlobType = ftMemo
    end
    object JVUpdatejvNumber: TStringField
      FieldName = 'jvNumber'
      Size = 15
    end
    object JVUpdatepassword: TStringField
      FieldName = 'password'
      Size = 45
    end
    object JVUpdateiddoctype: TLargeintField
      FieldName = 'iddoctype'
    end
    object JVUpdatejvrecon: TBooleanField
      FieldName = 'jvrecon'
    end
    object JVUpdateflag: TStringField
      FieldName = 'flag'
      Size = 45
    end
    object JVUpdateisbalanced: TBooleanField
      FieldName = 'isbalanced'
    end
    object JVUpdateJVAmount: TFloatField
      FieldName = 'JVAmount'
    end
    object JVUpdateRemarks: TStringField
      FieldName = 'Remarks'
      Size = 45
    end
  end
  object SalesCheck: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'select * from sales '
      'where salesdescription = :salesdescription')
    Left = 496
    Top = 153
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'salesdescription'
        Value = nil
      end>
  end
  object JournalUpdate: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'insert into journal'
      ' (accountcode,'
      '  accountname,'
      '  documentdate,'
      '  documenttype,'
      '  documentnumber,'
      '  debit,'
      '  credit)'
      'values'
      ' (:accountcode,'
      '  :accountname,'
      '  :documentdate,'
      '  :documenttype,'
      '  :documentnumber,'
      '  :debit,'
      '  :credit)')
    Left = 496
    Top = 57
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'accountcode'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'accountname'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'documentdate'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'documenttype'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'documentnumber'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'debit'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'credit'
        Value = nil
      end>
  end
  object SalesUpdate: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'select * from Sales')
    Left = 496
    Top = 10
    object SalesUpdateidsales: TLargeintField
      FieldName = 'idsales'
    end
    object SalesUpdatesalesdate: TDateField
      FieldName = 'salesdate'
    end
    object SalesUpdatesalesdescription: TStringField
      FieldName = 'salesdescription'
      Size = 50
    end
    object SalesUpdatesalesamount: TFloatField
      FieldName = 'salesamount'
    end
    object SalesUpdatesalesnumber: TStringField
      FieldName = 'salesnumber'
      Size = 10
    end
  end
  object MyConnection1: TMyConnection
    Username = '19zan72'
    LoginPrompt = False
    Left = 492
    Top = 357
    EncryptedPassword = '8FFF9EFF8CFF9CFF9EFF93FF85FF9EFF91FF'
  end
end
