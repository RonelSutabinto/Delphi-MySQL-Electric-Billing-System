object gramFrm: TgramFrm
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'gramFrm'
  ClientHeight = 127
  ClientWidth = 295
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 18
    Top = 50
    Width = 51
    Height = 16
    Caption = 'BillMonth'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object AdvPanel1: TAdvPanel
    Left = 0
    Top = 0
    Width = 295
    Height = 30
    Align = alTop
    BevelOuter = bvNone
    Color = 16760962
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    UseDockManager = True
    Version = '2.3.0.0'
    BorderColor = clGray
    BorderShadow = True
    Caption.Color = clHighlight
    Caption.ColorTo = clBlue
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clWindowText
    Caption.Font.Height = -11
    Caption.Font.Name = 'Tahoma'
    Caption.Font.Style = []
    Caption.Indent = 2
    CollapsColor = clBtnFace
    CollapsDelay = 0
    ColorTo = 16768185
    ShadowColor = clBlack
    ShadowOffset = 0
    StatusBar.BorderColor = clSilver
    StatusBar.BorderStyle = bsSingle
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = clBlack
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    StatusBar.Color = 14938354
    StatusBar.ColorTo = clWhite
    Text = ''
    FullHeight = 200
    object Label1: TLabel
      Left = 10
      Top = 7
      Width = 224
      Height = 16
      Caption = 'Gram / ICERA DAA Power Sales Report'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object AdvSmoothButton1: TAdvSmoothButton
      Left = 258
      Top = 3
      Width = 32
      Height = 24
      Appearance.PictureAlignment = taCenter
      Appearance.Font.Charset = DEFAULT_CHARSET
      Appearance.Font.Color = clBlack
      Appearance.Font.Height = -13
      Appearance.Font.Name = 'Tahoma'
      Appearance.Font.Style = [fsBold]
      Appearance.Spacing = 1
      Appearance.Rounding = 2
      Status.Caption = '0'
      Status.Appearance.Fill.Color = clRed
      Status.Appearance.Fill.ColorMirror = clNone
      Status.Appearance.Fill.ColorMirrorTo = clNone
      Status.Appearance.Fill.GradientType = gtSolid
      Status.Appearance.Fill.GradientMirrorType = gtSolid
      Status.Appearance.Fill.BorderColor = clGray
      Status.Appearance.Fill.Rounding = 0
      Status.Appearance.Fill.ShadowOffset = 0
      Status.Appearance.Fill.Glow = gmNone
      Status.Appearance.Font.Charset = DEFAULT_CHARSET
      Status.Appearance.Font.Color = clWhite
      Status.Appearance.Font.Height = -11
      Status.Appearance.Font.Name = 'Tahoma'
      Status.Appearance.Font.Style = []
      Bevel = False
      BevelColor = clBlack
      Color = 8404992
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000000473424954080808087C086488000000097048597300000B1300000B
        1301009A9C180000014C49444154388DC592CF6AC24010C6BF4D45425B25EC4D
        8808E696431EA1410FA5D0225ED487F46F3DD44B8BD052DACB3E42A09243F1E4
        45644761B7A78475137A754EBB33F3FBF86676814BC7957909C3F0B65EAF77A3
        28FAD96C36CAAA556BB5DA7DB3D9FCDD6EB7A72CEF983011AD01ACD2349D8661
        583561229A31C65EF6FBFD5BA3D1B8CE6A2C3B0441F0006095DDB5D64BD77507
        00404433008F86A16E9224EB3307BEEFBF6AAD97B932633D29E5584A39B1E079
        9224EF0507995529E59831D62B5B1880B9E779232144BE036677FC235280CF46
        B0A220AC942AE44A4720A22980A7B266A5D482733E345D38163CB3E0B9526A91
        373B4E7FB7DB4DE238AE140488A8036BDB9EE78D38E743A5D4736E99B15E9AA6
        770581C3E1F0A1B5FE366121C4490871E29C0F8C27FE3C1E8F5F6523228AA29B
        76BBDD85F5C501208EE34A10049D56ABE596C2178B3FFDBC909FF29B00430000
        000049454E44AE426082}
      DisabledColor = 8404992
      TabOrder = 0
      ShowFocus = False
      Version = '2.0.1.0'
      OnClick = AdvSmoothButton1Click
    end
  end
  object Edit1: TEdit
    Left = 75
    Top = 46
    Width = 182
    Height = 22
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object AdvSmoothButton2: TAdvSmoothButton
    Left = 75
    Top = 74
    Width = 182
    Height = 31
    Appearance.PictureAlignment = taCenter
    Appearance.Font.Charset = DEFAULT_CHARSET
    Appearance.Font.Color = clBlack
    Appearance.Font.Height = -13
    Appearance.Font.Name = 'Tahoma'
    Appearance.Font.Style = [fsBold]
    Appearance.Spacing = 1
    Appearance.Rounding = 2
    Status.Caption = '0'
    Status.Appearance.Fill.Color = clRed
    Status.Appearance.Fill.ColorMirror = clNone
    Status.Appearance.Fill.ColorMirrorTo = clNone
    Status.Appearance.Fill.GradientType = gtSolid
    Status.Appearance.Fill.GradientMirrorType = gtSolid
    Status.Appearance.Fill.BorderColor = clGray
    Status.Appearance.Fill.Rounding = 0
    Status.Appearance.Fill.ShadowOffset = 0
    Status.Appearance.Fill.Glow = gmNone
    Status.Appearance.Font.Charset = DEFAULT_CHARSET
    Status.Appearance.Font.Color = clWhite
    Status.Appearance.Font.Height = -11
    Status.Appearance.Font.Name = 'Tahoma'
    Status.Appearance.Font.Style = []
    Bevel = False
    BevelColor = clBlack
    Caption = 'Preview'
    Color = 8404992
    ParentFont = False
    DisabledColor = 8404992
    TabOrder = 2
    ShowFocus = False
    Version = '2.0.1.0'
    OnClick = AdvSmoothButton2Click
  end
  object gramQ: TMyQuery
    Connection = BillingData.MyConnection1
    SQL.Strings = (
      'Select '
      ''
      ' b.Area,'
      '          case b.Area'
      '            when '#39'001'#39' then '#39'RIZAL'#39
      '            when '#39'002'#39' then '#39'SIBUTAD'#39
      '            when '#39'003'#39' then '#39'MUTIA'#39
      '            when '#39'004'#39' then '#39'LA LIBERTAD'#39
      '            when '#39'005'#39' then '#39'SERGIO OSME'#209'A'#39
      '            when '#39'006'#39' then '#39'DAPITAN'#39
      '            when '#39'007'#39' then '#39'PI'#209'AN'#39
      '            when '#39'008'#39' then '#39'POLANCO'#39
      '            when '#39'009'#39' then '#39'DIPOLOG NORTH'#39
      '            when '#39'010'#39' then '#39'DIPOLOG SOUTH'#39
      '            when '#39'011'#39' then '#39'KATIPUNAN'#39
      '            when '#39'012'#39' then '#39'ROXAS'#39
      '            when '#39'013'#39' then '#39'MANUKAN'#39
      '            when '#39'014'#39' then '#39'JOSE DALMAN'#39
      '            when '#39'015'#39' then '#39'SINDANGAN'#39
      '            when '#39'016'#39' then '#39'LEON  POSTIGO'#39
      '            when '#39'017'#39' then '#39'SIAYAN'#39
      '            when '#39'018'#39' then '#39'SALUG'#39
      '            when '#39'019'#39' then '#39'LILOY'#39
      '            when '#39'020'#39' then '#39'LABASON'#39
      '            when '#39'021'#39' then '#39'TAMPILISAN'#39
      '            when '#39'022'#39' then '#39'GODOD'#39
      '            when '#39'023'#39' then '#39'GUTALAC'#39
      '            when '#39'024'#39' then '#39'DAPITAN / PI'#209'AN'#39
      '            when '#39'025'#39' then '#39'KALAWIT'#39
      '            else '#39#39
      '         end Municipality,'
      ' b.BillMonth,'
      ' concat ('#39'BillMonth : '#39',b.billmonth) bmonth,'
      ' sum(if(b.wratecode='#39'H'#39',b.KilowattHour,0.00)) kwhr_H,'
      ' sum(if(b.wratecode='#39'L'#39',b.KilowattHour,0.00)) kwhr_L,'
      ' sum(if(b.wratecode='#39'R'#39',b.KilowattHour,0.00)) kwhr_R,'
      ' '
      ' sum(if(b.wratecode='#39'H'#39',1,0)) cntr_H,'
      ' sum(if(b.wratecode='#39'L'#39',1,0)) cntr_L,'
      ' sum(if(b.wratecode='#39'R'#39',1,0)) cntr_R,'
      ' '
      ' sum(if(b.wratecode='#39'H'#39',ifnull(b.gram,0),0.00)) gram_H,'
      ' sum(if(b.wratecode='#39'L'#39',ifnull(b.gram,0),0.00)) gram_L,'
      ' sum(if(b.wratecode='#39'R'#39',ifnull(b.gram,0),0.00)) gram_R,'
      ' '
      ''
      ' sum(if(b.wratecode='#39'H'#39',1,0))+'
      ' sum(if(b.wratecode='#39'L'#39',1,0))+'
      ' sum(if(b.wratecode='#39'R'#39',1,0)) cntr,'
      ''
      ' sum(if(b.wratecode='#39'H'#39',ifnull(b.gram,0),0.00))+'
      ' sum(if(b.wratecode='#39'L'#39',ifnull(b.gram,0),0.00))+'
      ' sum(if(b.wratecode='#39'R'#39',ifnull(b.gram,0),0.00)) gram'
      ' '
      ' '
      'from billhistory b'
      'right join master m on m.code=b.code and m.isgram=1'
      'where b.billmonth = :bmonth'
      'group by b.Area')
    Left = 16
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'bmonth'
        Value = nil
      end>
    object gramQArea: TStringField
      FieldName = 'Area'
      Origin = 'b.Area'
      FixedChar = True
      Size = 3
    end
    object gramQMunicipality: TStringField
      FieldName = 'Municipality'
      Origin = 'Municipality'
      Size = 15
    end
    object gramQBillMonth: TStringField
      FieldName = 'BillMonth'
      Origin = 'b.BillMonth'
      Size = 4
    end
    object gramQkwhr_H: TFloatField
      FieldName = 'kwhr_H'
      Origin = 'kwhr_H'
    end
    object gramQkwhr_L: TFloatField
      FieldName = 'kwhr_L'
      Origin = 'kwhr_L'
    end
    object gramQkwhr_R: TFloatField
      FieldName = 'kwhr_R'
      Origin = 'kwhr_R'
    end
    object gramQcntr_H: TFloatField
      FieldName = 'cntr_H'
      Origin = 'cntr_H'
    end
    object gramQcntr_L: TFloatField
      FieldName = 'cntr_L'
      Origin = 'cntr_L'
    end
    object gramQcntr_R: TFloatField
      FieldName = 'cntr_R'
      Origin = 'cntr_R'
    end
    object gramQgram_H: TFloatField
      FieldName = 'gram_H'
      Origin = 'gram_H'
    end
    object gramQgram_L: TFloatField
      FieldName = 'gram_L'
      Origin = 'gram_L'
    end
    object gramQgram_R: TFloatField
      FieldName = 'gram_R'
      Origin = 'gram_R'
    end
    object gramQbmonth: TStringField
      FieldName = 'bmonth'
      Origin = 'bmonth'
      Size = 16
    end
    object gramQcntr: TFloatField
      FieldName = 'cntr'
      Origin = 'cntr'
    end
    object gramQgram: TFloatField
      FieldName = 'gram'
      Origin = 'gram'
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'gram'
    CloseDataSource = False
    FieldAliases.Strings = (
      'Area=Area'
      'Municipality=Municipality'
      'BillMonth=BillMonth'
      'kwhr_H=kwhr_H'
      'kwhr_L=kwhr_L'
      'kwhr_R=kwhr_R'
      'cntr_H=cntr_H'
      'cntr_L=cntr_L'
      'cntr_R=cntr_R'
      'gram_H=gram_H'
      'gram_L=gram_L'
      'gram_R=gram_R'
      'bmonth=bmonth'
      'cntr=cntr'
      'gram=gram')
    DataSet = gramQ
    BCDToCurrency = False
    Left = 16
    Top = 40
  end
  object frxReport1: TfrxReport
    Version = '5.3.16'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43354.397505069400000000
    ReportOptions.LastChange = 43354.397505069400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 88
    Top = 48
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'gram'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 7.500000000000000000
      BottomMargin = 7.500000000000000000
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 149.669291340000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo26: TfrxMemoView
          Left = 440.425480000000000000
          Top = 124.724490000000000000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Kwhr')
          ParentFont = False
        end
        object Shape1: TfrxShapeView
          Left = 1.000000000000000000
          Top = 98.267780000000000000
          Width = 1058.268400000000000000
          Height = 49.133890000000000000
        end
        object Memo1: TfrxMemoView
          Align = baCenter
          Left = 313.700990000000000000
          Top = 2.559060000000000000
          Width = 419.527830000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'ZAMBOANGA DEL NORTE ELECTRIC COOP., INC.')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Align = baCenter
          Left = 313.700990000000000000
          Top = 24.456710000000000000
          Width = 419.527830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Summary of GRAM & ICERA DAA  Power Sales')
          ParentFont = False
        end
        object frxDBDataset1BillMonth: TfrxMemoView
          Align = baCenter
          Left = 338.267935000000000000
          Top = 56.692950000000000000
          Width = 370.393940000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'gram'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[gram."bmonth"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 6.338590000000000000
          Top = 117.165430000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Area')
        end
        object Memo4: TfrxMemoView
          Left = 45.031540000000000000
          Top = 117.165430000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Municipality')
        end
        object Memo5: TfrxMemoView
          Left = 235.787570000000000000
          Top = 100.826840000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Higher Voltage')
        end
        object Memo6: TfrxMemoView
          Left = 175.551330000000000000
          Top = 123.504020000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'No.Bills')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 309.173470000000000000
          Top = 124.504020000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Amount')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 460.189240000000000000
          Top = 100.826840000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Low Voltage')
        end
        object Memo9: TfrxMemoView
          Left = 387.953000000000000000
          Top = 123.504020000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'No.Bills')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 517.913730000000000000
          Top = 123.504020000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Amount')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 682.079160000000000000
          Top = 100.826840000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Residential')
        end
        object Memo12: TfrxMemoView
          Left = 607.283860000000000000
          Top = 123.504020000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'No.Bills')
        end
        object Memo13: TfrxMemoView
          Left = 731.346940000000000000
          Top = 124.504020000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Amount')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 825.110700000000000000
          Top = 125.504020000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'No. Bills')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 971.276130000000000000
          Top = 125.724490000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Amount')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 880.992580000000000000
          Top = 102.047310000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 41.795300000000000000
          Top = 98.267780000000000000
          Height = 49.133890000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line2: TfrxLineView
          Left = 178.858380000000000000
          Top = 98.267780000000000000
          Height = 49.133890000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line3: TfrxLineView
          Left = 387.700990000000000000
          Top = 98.488250000000000000
          Height = 49.133890000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line4: TfrxLineView
          Left = 603.811380000000000000
          Top = 98.267780000000000000
          Height = 49.133890000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line5: TfrxLineView
          Left = 821.669760000000000000
          Top = 98.267780000000000000
          Height = 49.133890000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line6: TfrxLineView
          Left = 178.637910000000000000
          Top = 120.944960000000000000
          Width = 880.630490000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line7: TfrxLineView
          Left = 227.551330000000000000
          Top = 120.724490000000000000
          Height = 26.456710000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line8: TfrxLineView
          Left = 439.614410000000000000
          Top = 120.944960000000000000
          Height = 26.456710000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line9: TfrxLineView
          Left = 521.307360000000000000
          Top = 120.944960000000000000
          Height = 26.456710000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line10: TfrxLineView
          Left = 658.709030000000000000
          Top = 120.944960000000000000
          Height = 26.456710000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo24: TfrxMemoView
          Left = 232.771800000000000000
          Top = 123.944960000000000000
          Width = 71.811023622047200000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Kwhr')
          ParentFont = False
        end
        object Line13: TfrxLineView
          Left = 305.921460000000000000
          Top = 120.944960000000000000
          Height = 26.456710000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo28: TfrxMemoView
          Left = 655.740570000000000000
          Top = 124.724490000000000000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Kwhr')
          ParentFont = False
        end
        object Line14: TfrxLineView
          Left = 739.653990000000000000
          Top = 120.944960000000000000
          Height = 26.456710000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo29: TfrxMemoView
          Left = 886.276130000000000000
          Top = 125.724490000000000000
          Width = 64.251963620000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Kwhr')
          ParentFont = False
        end
        object Line15: TfrxLineView
          Left = 958.559680000000000000
          Top = 120.724490000000000000
          Height = 26.456710000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line16: TfrxLineView
          Left = 882.630490000000000000
          Top = 120.944960000000000000
          Height = 26.456710000000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Top = 230.551330000000000000
        Width = 1046.929810000000000000
        DataSet = frxDBDataset1
        DataSetName = 'gram'
        RowCount = 0
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Height = 45.354360000000000000
        Top = 253.228510000000000000
        Width = 1046.929810000000000000
        DataSet = frxDBDataset1
        DataSetName = 'gram'
        RowCount = 0
        object gramArea: TfrxMemoView
          Left = 2.779530000000000000
          Top = 5.779530000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DataField = 'Area'
          DataSet = frxDBDataset1
          DataSetName = 'gram'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[gram."Area"]')
          ParentFont = False
        end
        object gramMunicipality: TfrxMemoView
          Left = 44.354360000000000000
          Top = 5.779530000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          DataField = 'Municipality'
          DataSet = frxDBDataset1
          DataSetName = 'gram'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[gram."Municipality"]')
          ParentFont = False
        end
        object gramcntr_H: TfrxMemoView
          Left = 184.858380000000000000
          Top = 5.559060000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'gram'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[gram."cntr_H"]')
          ParentFont = False
        end
        object gramgram_H: TfrxMemoView
          Left = 308.464750000000000000
          Top = 5.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'gram_H'
          DataSet = frxDBDataset1
          DataSetName = 'gram'
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[gram."gram_H"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 395.393940000000000000
          Top = 5.779530000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'gram'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[gram."cntr_L"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 523.559370000000000000
          Top = 6.000000000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'gram'
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[gram."gram_L"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 612.268090000000000000
          Top = 5.338590000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'gram'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[gram."cntr_R"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 743.874460000000000000
          Top = 5.559060000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'gram'
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[gram."gram_R"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 831.465060000000000000
          Top = 5.338590000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'gram'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[gram."cntr"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 966.630490000000000000
          Top = 5.559060000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'gram'
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[gram."gram"]')
          ParentFont = False
        end
        object Line11: TfrxLineView
          Top = 34.236240000000000000
          Width = 1054.488870000000000000
          Color = clBlack
          Diagonal = True
        end
        object gramkwhr_H: TfrxMemoView
          Left = 228.551330000000000000
          Top = 5.779530000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'gram'
          DisplayFormat.FormatStr = '########0.0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[gram."kwhr_H"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 444.307360000000000000
          Top = 5.779530000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'gram'
          DisplayFormat.FormatStr = '########0.0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[gram."kwhr_L"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 663.961040000000000000
          Top = 5.559060000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'gram'
          DisplayFormat.FormatStr = '########0.0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[gram."kwhr_R"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 884.158010000000000000
          Top = 5.559060000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'gram'
          DisplayFormat.FormatStr = '########0.0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[gram."kwhr_R"]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 37.795300000000000000
        Top = 359.055350000000000000
        Width = 1046.929810000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 176.519790000000000000
          Top = 7.559060000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<gram."cntr_H">,DetailData1)]')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          Left = 309.464750000000000000
          Top = 7.559060000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<gram."gram_H">,DetailData1)]')
          ParentFont = False
        end
        object SysMemo3: TfrxSysMemoView
          Left = 390.953000000000000000
          Top = 8.779530000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<gram."cntr_L">,DetailData1)]')
          ParentFont = False
        end
        object SysMemo4: TfrxSysMemoView
          Left = 525.677490000000000000
          Top = 8.559060000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<gram."gram_L">,DetailData1)]')
          ParentFont = False
        end
        object SysMemo5: TfrxSysMemoView
          Left = 608.653990000000000000
          Top = 8.779530000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<gram."cntr_R">,DetailData1)]')
          ParentFont = False
        end
        object SysMemo6: TfrxSysMemoView
          Left = 742.110700000000000000
          Top = 8.559060000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<gram."gram_R">,DetailData1)]')
          ParentFont = False
        end
        object SysMemo7: TfrxSysMemoView
          Left = 824.362710000000000000
          Top = 8.559060000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<gram."cntr">,DetailData1)]')
          ParentFont = False
        end
        object SysMemo8: TfrxSysMemoView
          Left = 962.307670000000000000
          Top = 8.779530000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<gram."gram">,DetailData1)]')
          ParentFont = False
        end
        object Line12: TfrxLineView
          Top = 35.015770000000000000
          Width = 1054.488870000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo23: TfrxMemoView
          Left = 7.559060000000000000
          Top = 3.779530000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
        object SysMemo9: TfrxSysMemoView
          Left = 229.551330000000000000
          Top = 7.559060000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '########0.0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<gram."kwhr_H">,DetailData1)]')
          ParentFont = False
        end
        object SysMemo10: TfrxSysMemoView
          Left = 445.102660000000000000
          Top = 8.559060000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '########0.0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<gram."kwhr_L">,DetailData1)]')
          ParentFont = False
        end
        object SysMemo11: TfrxSysMemoView
          Left = 662.622450000000000000
          Top = 8.559060000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '########0.0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<gram."kwhr_R">,DetailData1)]')
          ParentFont = False
        end
        object SysMemo12: TfrxSysMemoView
          Left = 880.937540000000000000
          Top = 8.559060000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '########0.0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<gram."kwhr_R">,DetailData1)]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 75.590600000000000000
        Top = 419.527830000000000000
        Width = 1046.929810000000000000
        object Memo52: TfrxMemoView
          Left = 37.795300000000000000
          Top = 11.338590000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Prepared by:')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Left = 457.921460000000000000
          Top = 14.897650000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Checked by:')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          Left = 849.590910000000000000
          Top = 14.897650000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Noted by:')
          ParentFont = False
        end
      end
    end
  end
end
