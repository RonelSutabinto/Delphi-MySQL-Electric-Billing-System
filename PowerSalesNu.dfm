object frmPowerSalesNu: TfrmPowerSalesNu
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Power Sales'
  ClientHeight = 336
  ClientWidth = 344
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 340
    Height = 327
    Align = alCustom
    BevelInner = bvLowered
    BevelWidth = 3
    Constraints.MinHeight = 265
    Constraints.MinWidth = 308
    TabOrder = 0
    object pLateBill: TPanel
      Left = 6
      Top = 41
      Width = 328
      Height = 59
      Align = alTop
      Color = 16755370
      ParentBackground = False
      TabOrder = 0
      object Label1: TLabel
        Left = 123
        Top = 4
        Width = 84
        Height = 16
        Alignment = taCenter
        Caption = 'Coverage Date'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object dtpDateFrom: TDateTimePicker
        Left = 54
        Top = 25
        Width = 100
        Height = 21
        Date = 40941.706271261570000000
        Time = 40941.706271261570000000
        TabOrder = 0
      end
      object dtpDateTo: TDateTimePicker
        Left = 176
        Top = 25
        Width = 100
        Height = 21
        Date = 40941.706308310180000000
        Time = 40941.706308310180000000
        TabOrder = 1
      end
    end
    object pCurrentBill: TPanel
      Left = 6
      Top = 100
      Width = 328
      Height = 59
      Align = alTop
      TabOrder = 1
      object Label2: TLabel
        Left = 127
        Top = 6
        Width = 72
        Height = 16
        Caption = 'Billing Month'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object eBillMonth: TEdit
        Left = 66
        Top = 25
        Width = 185
        Height = 21
        TabOrder = 0
        OnChange = eBillMonthChange
      end
    end
    object pSwitcher: TPanel
      Left = 6
      Top = 6
      Width = 328
      Height = 35
      Align = alTop
      Color = 15365376
      ParentBackground = False
      TabOrder = 2
      object rbCurrent: TRadioButton
        Left = 86
        Top = 7
        Width = 58
        Height = 17
        Caption = 'Current'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TabStop = True
        OnClick = rbLateClick
      end
      object rbLate: TRadioButton
        Left = 198
        Top = 7
        Width = 53
        Height = 17
        Caption = 'Late'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = rbLateClick
      end
    end
    object Panel2: TPanel
      Left = 6
      Top = 159
      Width = 328
      Height = 41
      Align = alTop
      TabOrder = 3
      ExplicitLeft = 9
      ExplicitTop = 157
      object rbSummary: TRadioButton
        Left = 49
        Top = 10
        Width = 65
        Height = 17
        Caption = 'Summary'
        Checked = True
        TabOrder = 0
        TabStop = True
        OnClick = rbSubsidiaryClick
      end
      object rbUnbundled: TRadioButton
        Left = 125
        Top = 10
        Width = 70
        Height = 17
        Caption = 'Unbundled'
        TabOrder = 1
        OnClick = rbSubsidiaryClick
      end
      object rbSubsidiary: TRadioButton
        Left = 206
        Top = 10
        Width = 70
        Height = 17
        Caption = 'Subsidiary'
        Enabled = False
        TabOrder = 2
        OnClick = rbSubsidiaryClick
      end
    end
    object Panel3: TPanel
      Left = 6
      Top = 200
      Width = 328
      Height = 53
      Align = alTop
      TabOrder = 4
      object Label3: TLabel
        Left = 136
        Top = 4
        Width = 23
        Height = 13
        Caption = 'Area'
      end
      object eArea: TEdit
        Left = 66
        Top = 25
        Width = 185
        Height = 21
        TabOrder = 0
        OnChange = eBillMonthChange
      end
    end
    object Panel4: TPanel
      Left = 6
      Top = 253
      Width = 328
      Height = 31
      Align = alTop
      Caption = 'Print'
      TabOrder = 5
      object NxButton1: TNxButton
        Left = 1
        Top = 1
        Width = 326
        Height = 29
        Align = alClient
        Caption = 'PRINT'
        Glyph.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000000000000000
          00000000000000000000FFFFFF13FBFBFBFFF5F5F5FFF5F5F5FFF5F5F5FFF5F5
          F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5
          F5FFFBFBFBFFFFFFFF12FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
          00000000000000000000FFFFFF59EDEDEDFFCECECEFFD9D9D9FFD9D9D9FFD9D9
          D9FFD9D9D9FFD9D9D9FFD9D9D9FFD1D1D1FFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
          CCFFEEEEEEFFFFFFFF55FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
          00000000000000000000FFFFFF44F1F1F1FFCFCFCFFFDADADAFFDADADAFFDADA
          DAFFDADADAFFDADADAFFDADADAFFD2D2D2FFD0D0D0FFD0D0D0FFD0D0D0FFCCCC
          CCFFF2F2F2FFFFFFFF3FFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF38FFFF
          FFA1FFFFFFACFFFFFFACFFFFFFA5F6F6F6FFD1D1D1FFE0E0E0FFE0E0E0FFE0E0
          E0FFE0E0E0FFE0E0E0FFE0E0E0FFE0E0E0FFE0E0E0FFE0E0E0FFE0E0E0FFCCCC
          CCFFF7F7F7FFFFFFFFA8FFFFFFACFFFFFFACFFFFFF9FFFFFFF36FEFEFEFF7373
          73FF6A6A6AFF6A6A6AFF6F6F6FFFFAFAFAFFD0D0D0FFE4E4E4FFE4E4E4FFE4E4
          E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFD1D1D1FFCCCCCCFFCCCC
          CCFFFBFBFBFF6D6D6DFF6A6A6AFF6A6A6AFF757575FFFFFFFF9FFCFCFCFF2222
          22FF222222FF222222FF222222FFF6F6F6FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5
          E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5
          E5FFF4F4F4FF222222FF222222FF222222FF222222FFFCFCFCFFFCFCFCFF2222
          22FF222222FF222222FF222222FFB5B5B5FF828282FF828282FF828282FF8282
          82FF828282FF828282FF828282FF828282FF828282FF828282FF828282FF8282
          82FFB4B4B4FF222222FF222222FF222222FF222222FFFCFCFCFFFCFCFCFF2222
          22FF222222FF222222FF222222FF898989FF222222FF222222FF222222FF2222
          22FF222222FF222222FF222222FF222222FF222222FF222222FF222222FF2222
          22FF898989FF222222FF222222FF222222FF222222FFFCFCFCFFFCFCFCFF2222
          22FF222222FF222222FF222222FF949494FF898989FF898989FF898989FF8989
          89FF898989FF898989FF898989FF898989FF898989FF898989FF898989FF8989
          89FF939393FF222222FF656565FFEEEEEEFFEEEEEEFFFFFFFF96FCFCFCFF2222
          22FF222222FF222222FF222222FF222222FF222222FF222222FF222222FF2222
          22FF222222FF222222FF222222FF222222FF222222FF222222FF222222FF2222
          22FF222222FF222222FF232323FF252525FF252525FFFCFCFCFFFCFCFCFF2222
          22FF222222FF222222FF222222FF222222FF222222FF222222FF222222FF2222
          22FF222222FF222222FF222222FF222222FF222222FF222222FF222222FF2222
          22FF222222FF222222FF222222FF222222FF222222FFFCFCFCFFFCFCFCFF2222
          22FF222222FF222222FF222222FF222222FF222222FF222222FF222222FF2222
          22FF222222FF222222FF222222FF222222FF222222FF222222FF222222FF2222
          22FF222222FF222222FF222222FF222222FF222222FFFCFCFCFFFEFEFEFF2A2A
          2AFF222222FF222222FF222222FF222222FF222222FF222222FF222222FF2222
          22FF222222FF222222FF222222FF222222FF222222FF222222FF222222FF2222
          22FF222222FF222222FF222222FF222222FF2C2C2CFFFEFEFEFFFFFFFFAE6868
          68FF222222FF222222FF222222FF222222FF383838FF464646FF464646FF4646
          46FF464646FF464646FF464646FF464646FF464646FF464646FF464646FF3939
          39FF222222FF222222FF222222FF222222FF6C6C6CFFFFFFFFAAFFFFFF60ACAC
          ACFF222222FF222222FF222222FF4C4C4CFFEDEDEDFFDCDCDCFFDCDCDCFFDCDC
          DCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFECEC
          ECFF4B4B4BFF222222FF222222FF222222FFAFAFAFFFFFFFFF5CFFFFFF01FEFE
          FEFFE8E8E8FFE7E7E7FFE1E1E1FF6A6A6AFFEBEBEBFFCCCCCCFFCCCCCCFFCCCC
          CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFEBEB
          EBFF6A6A6AFFE1E1E1FFE7E7E7FFE8E8E8FFFEFEFEFFFFFFFF0100000000FFFF
          FF01FFFFFF1BFFFFFF1CF8F8F8FF6A6A6AFFEBEBEBFFCCCCCCFFCCCCCCFFCCCC
          CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFEBEB
          EBFF6A6A6AFFF8F8F8FFFFFFFF1CFFFFFF1BFFFFFF01FFFFFF00000000000000
          000000000000FFFFFF07F9F9F9FF757575FFEBEBEBFFCCCCCCFFCCCCCCFFCCCC
          CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFEBEB
          EBFF757575FFF9F9F9FFFFFFFF07FFFFFF00FFFFFF00FFFFFF00000000000000
          00000000000000000000FFFFFF35FFFFFF9EEBEBEBFFCCCCCCFFCCCCCCFFCCCC
          CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFEBEB
          EBFFFFFFFF9EFFFFFF35FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
          0000000000000000000000000000FFFFFF64EBEBEBFFCCCCCCFFCCCCCCFFCCCC
          CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFEBEB
          EBFFFFFFFF64FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
          0000000000000000000000000000FFFFFF64EBEBEBFFCCCCCCFFCCCCCCFFCCCC
          CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFEBEB
          EBFFFFFFFF64FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
          0000000000000000000000000000FFFFFF64EBEBEBFFCCCCCCFFCCCCCCFFCCCC
          CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFEBEB
          EBFFFFFFFF64FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
          0000000000000000000000000000FFFFFF64EBEBEBFFCCCCCCFFCCCCCCFFCCCC
          CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFEBEB
          EBFFFFFFFF64FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
          0000000000000000000000000000FFFFFF15FBFBFBFFF4F4F4FFF4F4F4FFF4F4
          F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFFBFB
          FBFFFFFFFF15FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        TabOrder = 0
        Transparent = True
        OnClick = NxButton1Click
      end
    end
    object Panel6: TPanel
      Left = 6
      Top = 284
      Width = 328
      Height = 30
      Align = alTop
      Caption = 'Print'
      TabOrder = 6
      object NxButton2: TNxButton
        Left = 1
        Top = 1
        Width = 326
        Height = 28
        Align = alClient
        Caption = 'Signatories Config'
        Glyph.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          20000000000000090000130B0000130B00000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00F8000000F8000000F8000000F8000000F8000000F8000000F8000000F80000
          00F8000000F8000000F8000000F8000000F8000000F8000000F8000000F80000
          00F8000000F8000000F800000000000000000000000000000000000000000000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF00000000000000000000000000000000000000000000
          00FF000000FF0000000800000008000000080000000800000008000000080000
          0008000000080000000800000008000000080000000800000008000000080000
          0008000000FF000000FF00000000000000000000000000000000000000000000
          00FF000000FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000FF000000FF00000000000000000000000000000000000000000000
          00FF000000FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000FF000000FF00000000000000000000000000000000000000000000
          00FF000000FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000FF000000FF00000000000000000000000000000000000000000000
          00FF000000FF0000000000000000000000000000000000000000000000000000
          00280000006F0000002A00000000000000000000000000000000000000000000
          0000000000FF000000FF00000000000000000000000000000000000000000000
          00FF000000FF0000000000000000000000000000000000000000000000000000
          003F000000FF000000FF00000090000000000000000000000000000000000000
          0000000000FF000000FF00000000000000000000000000000000000000000000
          00FF000000FF0000000000000000000000000000000000000000000000000000
          0039000000FF000000FF000000FF000000580000000000000000000000000000
          0000000000FF000000FF00000000000000000000000000000000000000000000
          00FF000000FF0000000000000000000000000000000000000000000000000000
          0003000000BB000000FF000000FF000000F40000002C00000000000000000000
          0000000000FF000000FF00000000000000000000000000000000000000000000
          00FF000000FF0000000000000000000000000000000000000000000000000000
          000000000014000000E1000000FF000000FF000000DA0000000E000000000000
          0000000000FF000000FF00000000000000000000000000000000000000000000
          00FF000000FF0000000000000000000000000000000000000000000000000000
          00000000000000000035000000F8000000FF000000FF000000B0000000010000
          0000000000FF000000FF00000000000000000000000000000000000000000000
          00FF000000FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000066000000FF000000FF000000FF0000007A0000
          0000000000E6000000FF00000000000000000000000000000000000000000000
          00FF000000FF0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000009D000000FF000000FF000000FD0000
          00440000003B000000FA00000000000000000000000000000000000000000000
          00FF000000FF0000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000008000000CC000000FF000000FF0000
          00EB0000001E0000006C00000000000000000000000000000000000000000000
          00FF000000FF0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000020000000ED000000FF0000
          00FF000000CA0000000700000000000000000000000000000000000000000000
          00FF000000FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000047000000FD0000
          00FF000000FF0000009B00000000000000000000000000000000000000000000
          00FF000000FF000000F8000000F8000000F8000000F8000000F8000000F80000
          00F8000000F8000000F8000000F8000000F8000000CD000000080000007C0000
          00FF000000FF000000FF00000062000000000000000000000000000000000000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF0000009A000000010000
          00B2000000FF000000FF000000F4000000140000000000000000000000000000
          0008000000080000000800000008000000080000000800000008000000080000
          0008000000080000000800000008000000080000000800000007000000000000
          0010000000DC000000EA0000006A000000B50000001000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000290000006E000000F2000000FF0000004300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000058000000F1000000B20000000B00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        TabOrder = 0
        OnClick = NxButton2Click
      end
    end
  end
  object Panel7: TPanel
    Left = 343
    Top = 8
    Width = 427
    Height = 265
    BevelInner = bvLowered
    BevelWidth = 3
    TabOrder = 2
    Visible = False
    object Label4: TLabel
      Left = 18
      Top = 14
      Width = 59
      Height = 13
      Caption = 'Prepared By'
    end
    object Position: TLabel
      Left = 18
      Top = 38
      Width = 37
      Height = 13
      Caption = 'Position'
    end
    object Label5: TLabel
      Left = 18
      Top = 63
      Width = 56
      Height = 13
      Caption = 'Checked By'
    end
    object Label6: TLabel
      Left = 18
      Top = 88
      Width = 37
      Height = 13
      Caption = 'Position'
    end
    object Label7: TLabel
      Left = 18
      Top = 113
      Width = 51
      Height = 13
      Caption = 'Verified By'
    end
    object Label8: TLabel
      Left = 18
      Top = 138
      Width = 37
      Height = 13
      Caption = 'Position'
    end
    object Label9: TLabel
      Left = 18
      Top = 163
      Width = 56
      Height = 13
      Caption = 'Certified By'
    end
    object Label10: TLabel
      Left = 18
      Top = 188
      Width = 37
      Height = 13
      Caption = 'Position'
    end
    object Label11: TLabel
      Left = 18
      Top = 213
      Width = 57
      Height = 13
      Caption = 'Attested By'
    end
    object Label12: TLabel
      Left = 18
      Top = 238
      Width = 37
      Height = 13
      Caption = 'Position'
    end
    object DBEdit1: TDBEdit
      Left = 83
      Top = 11
      Width = 311
      Height = 21
      CharCase = ecUpperCase
      DataField = 'preparedby'
      DataSource = dspsSignatories
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 83
      Top = 35
      Width = 311
      Height = 21
      DataField = 'preparedpos'
      DataSource = dspsSignatories
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 83
      Top = 60
      Width = 311
      Height = 21
      CharCase = ecUpperCase
      DataField = 'checkby'
      DataSource = dspsSignatories
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 83
      Top = 87
      Width = 311
      Height = 21
      DataField = 'checkpos'
      DataSource = dspsSignatories
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 83
      Top = 110
      Width = 311
      Height = 21
      CharCase = ecUpperCase
      DataField = 'verifiedby'
      DataSource = dspsSignatories
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 83
      Top = 135
      Width = 311
      Height = 21
      DataField = 'verifiedpos'
      DataSource = dspsSignatories
      TabOrder = 5
    end
    object DBEdit7: TDBEdit
      Left = 83
      Top = 160
      Width = 311
      Height = 21
      CharCase = ecUpperCase
      DataField = 'certifiedby'
      DataSource = dspsSignatories
      TabOrder = 6
    end
    object DBEdit8: TDBEdit
      Left = 83
      Top = 185
      Width = 311
      Height = 21
      DataField = 'certifiedpos'
      DataSource = dspsSignatories
      TabOrder = 7
    end
    object DBEdit9: TDBEdit
      Left = 83
      Top = 210
      Width = 311
      Height = 21
      CharCase = ecUpperCase
      DataField = 'attestedby'
      DataSource = dspsSignatories
      TabOrder = 8
    end
    object DBEdit10: TDBEdit
      Left = 83
      Top = 235
      Width = 311
      Height = 21
      DataField = 'attestedpos'
      DataSource = dspsSignatories
      TabOrder = 9
    end
    object Button1: TButton
      Left = 397
      Top = 6
      Width = 24
      Height = 253
      Align = alRight
      Caption = 'D  O  N  E'
      TabOrder = 10
      WordWrap = True
      OnClick = Button1Click
    end
  end
  object Panel5: TPanel
    Left = 608
    Top = 386
    Width = 1256
    Height = 689
    BevelInner = bvRaised
    BevelWidth = 5
    Caption = 'Panel5'
    TabOrder = 1
    Visible = False
    object PageControl1: TPageControl
      Left = 10
      Top = 10
      Width = 1236
      Height = 669
      ActivePage = tsLateSummary
      Align = alClient
      TabOrder = 0
      object tsCurrentSummary: TTabSheet
        Caption = 'tsCurrentSummary'
        object qrCurrentSummary: TQuickRep
          Left = 233
          Top = 36
          Width = 1498
          Height = 979
          DataSet = qPowerSales
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
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
          Page.PaperSize = FanfoldGerLegal
          Page.Continuous = False
          Page.Values = (
            127.000000000000000000
            2159.000000000000000000
            127.000000000000000000
            3302.000000000000000000
            63.500000000000000000
            63.500000000000000000
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
          PrinterSettings.MemoryLimit = 1000000
          PrinterSettings.PrintQuality = 0
          PrinterSettings.Collate = 0
          PrinterSettings.ColorOption = 0
          PrintIfEmpty = True
          SnapToGrid = True
          Units = Inches
          Zoom = 120
          PrevFormStyle = fsNormal
          PreviewInitialState = wsMaximized
          PrevInitialZoom = qrZoomToWidth
          PreviewDefaultSaveType = stQRP
          PreviewLeft = 0
          PreviewTop = 0
          object ColumnHeaderBand1: TQRBand
            Left = 29
            Top = 149
            Width = 1440
            Height = 54
            Frame.DrawTop = True
            Frame.DrawLeft = True
            Frame.DrawRight = True
            AlignToBottom = False
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              119.062500000000000000
              3175.000000000000000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbColumnHeader
            object QRLabel8: TQRLabel
              Left = 5
              Top = 18
              Width = 24
              Height = 17
              Size.Values = (
                37.482638888888890000
                11.024305555555560000
                39.687500000000000000
                52.916666666666670000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taLeftJustify
              AlignToBand = False
              Caption = 'Area'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape1: TQRShape
              Tag = 1000
              Left = 36
              Top = 0
              Width = 2
              Height = 36
              Size.Values = (
                79.375000000000000000
                79.375000000000000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel9: TQRLabel
              Left = 54
              Top = 18
              Width = 60
              Height = 17
              Size.Values = (
                37.482638888888890000
                119.062500000000000000
                39.687500000000000000
                132.291666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taLeftJustify
              AlignToBand = False
              Caption = 'Municipality'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape2: TQRShape
              Tag = 1000
              Left = 131
              Top = 0
              Width = 2
              Height = 36
              Size.Values = (
                79.375000000000000000
                288.395833333333300000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape3: TQRShape
              Left = 134
              Top = 16
              Width = 1304
              Height = 2
              Size.Values = (
                5.291666666666667000
                296.333333333333300000
                34.395833333333330000
                2876.020833333333000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsHorLine
              VertAdjust = 0
            end
            object QRLabel10: TQRLabel
              Left = 134
              Top = 18
              Width = 62
              Height = 29
              Size.Values = (
                63.500000000000000000
                296.333333333333300000
                39.687500000000000000
                137.583333333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'No. of Consumers'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape4: TQRShape
              Left = 197
              Top = 18
              Width = 2
              Height = 34
              Size.Values = (
                74.083333333333320000
                433.916666666666700000
                39.687500000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel12: TQRLabel
              Left = 200
              Top = 18
              Width = 52
              Height = 29
              Size.Values = (
                63.500000000000000000
                441.854166666666700000
                39.687500000000000000
                113.770833333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'Minimum Bills'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape5: TQRShape
              Left = 252
              Top = 18
              Width = 2
              Height = 34
              Size.Values = (
                74.083333333333320000
                555.625000000000000000
                39.687500000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel13: TQRLabel
              Left = 256
              Top = 18
              Width = 49
              Height = 29
              Size.Values = (
                63.500000000000000000
                563.562500000000000000
                39.687500000000000000
                108.479166666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'Minimum KWHr'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape6: TQRShape
              Left = 305
              Top = 18
              Width = 2
              Height = 34
              Size.Values = (
                74.083333333333320000
                672.041666666666800000
                39.687500000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel14: TQRLabel
              Left = 308
              Top = 26
              Width = 64
              Height = 16
              Size.Values = (
                34.395833333333330000
                679.979166666666800000
                58.208333333333320000
                140.229166666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'KWHr'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape7: TQRShape
              Left = 372
              Top = 18
              Width = 2
              Height = 34
              Size.Values = (
                74.083333333333320000
                820.208333333333200000
                39.687500000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel15: TQRLabel
              Left = 389
              Top = 26
              Width = 74
              Height = 16
              Size.Values = (
                34.395833333333330000
                857.250000000000000000
                58.208333333333320000
                164.041666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'Amount'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape9: TQRShape
              Tag = 1000
              Left = 474
              Top = 0
              Width = 2
              Height = 36
              Size.Values = (
                79.375000000000000000
                1045.104166666667000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel16: TQRLabel
              Left = 546
              Top = 26
              Width = 64
              Height = 16
              Size.Values = (
                34.395833333333330000
                1203.854166666667000000
                58.208333333333320000
                140.229166666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'KWHr'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape8: TQRShape
              Left = 610
              Top = 18
              Width = 2
              Height = 34
              Size.Values = (
                74.083333333333320000
                1344.083333333333000000
                39.687500000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel17: TQRLabel
              Left = 625
              Top = 26
              Width = 74
              Height = 16
              Size.Values = (
                34.395833333333330000
                1378.479166666667000000
                58.208333333333320000
                164.041666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'Amount'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape10: TQRShape
              Tag = 1000
              Left = 713
              Top = 0
              Width = 2
              Height = 36
              Size.Values = (
                79.375000000000000000
                1571.625000000000000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel18: TQRLabel
              Left = 479
              Top = 18
              Width = 62
              Height = 29
              Size.Values = (
                63.500000000000000000
                1055.687500000000000000
                39.687500000000000000
                137.583333333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'No. of Consumers'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape11: TQRShape
              Left = 542
              Top = 18
              Width = 2
              Height = 34
              Size.Values = (
                74.083333333333320000
                1195.916666666667000000
                39.687500000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel19: TQRLabel
              Left = 788
              Top = 26
              Width = 64
              Height = 16
              Size.Values = (
                34.395833333333330000
                1738.312500000000000000
                58.208333333333320000
                140.229166666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'KWHr'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape12: TQRShape
              Left = 856
              Top = 18
              Width = 2
              Height = 34
              Size.Values = (
                74.083333333333320000
                1886.479166666667000000
                39.687500000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel20: TQRLabel
              Left = 949
              Top = 26
              Width = 74
              Height = 16
              Size.Values = (
                34.395833333333330000
                2092.854166666667000000
                58.208333333333320000
                164.041666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'Amount'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape13: TQRShape
              Tag = 1000
              Left = 1038
              Top = 0
              Width = 2
              Height = 36
              Size.Values = (
                79.375000000000000000
                2288.645833333333000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel21: TQRLabel
              Left = 716
              Top = 18
              Width = 62
              Height = 29
              Size.Values = (
                63.500000000000000000
                1579.562500000000000000
                39.687500000000000000
                137.583333333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'No. of Consumers'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape14: TQRShape
              Left = 782
              Top = 18
              Width = 2
              Height = 34
              Size.Values = (
                74.083333333333320000
                1725.083333333333000000
                39.687500000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel11: TQRLabel
              Left = 862
              Top = 26
              Width = 64
              Height = 16
              Size.Values = (
                34.395833333333330000
                1899.708333333333000000
                58.208333333333320000
                140.229166666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'KW Dmd.'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape15: TQRShape
              Left = 931
              Top = 18
              Width = 2
              Height = 34
              Size.Values = (
                74.083333333333320000
                2053.166666666667000000
                39.687500000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel22: TQRLabel
              Left = 1199
              Top = 26
              Width = 64
              Height = 18
              Size.Values = (
                39.687500000000000000
                2643.187500000000000000
                58.208333333333320000
                140.229166666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'KWHr'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape16: TQRShape
              Left = 1266
              Top = 18
              Width = 2
              Height = 34
              Size.Values = (
                74.083333333333320000
                2791.354166666667000000
                39.687500000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel23: TQRLabel
              Left = 1360
              Top = 26
              Width = 74
              Height = 18
              Size.Values = (
                39.687500000000000000
                2997.729166666667000000
                58.208333333333320000
                164.041666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'Amount'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel24: TQRLabel
              Left = 1040
              Top = 18
              Width = 74
              Height = 29
              Size.Values = (
                63.500000000000000000
                2293.937500000000000000
                39.687500000000000000
                164.041666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'No. of Consumers'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape18: TQRShape
              Left = 1116
              Top = 18
              Width = 2
              Height = 34
              Size.Values = (
                74.083333333333320000
                2460.625000000000000000
                39.687500000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel25: TQRLabel
              Left = 1272
              Top = 26
              Width = 64
              Height = 18
              Size.Values = (
                39.687500000000000000
                2804.583333333333000000
                58.208333333333320000
                140.229166666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'KW Dmd.'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape19: TQRShape
              Left = 1342
              Top = 18
              Width = 2
              Height = 34
              Size.Values = (
                74.083333333333320000
                2958.041666666667000000
                39.687500000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel26: TQRLabel
              Left = 1127
              Top = 18
              Width = 52
              Height = 29
              Size.Values = (
                63.500000000000000000
                2484.437500000000000000
                39.687500000000000000
                113.770833333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'Minimum Bills'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape17: TQRShape
              Left = 1184
              Top = 18
              Width = 2
              Height = 34
              Size.Values = (
                74.083333333333320000
                2611.437500000000000000
                39.687500000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel27: TQRLabel
              Left = 132
              Top = 1
              Width = 343
              Height = 16
              Size.Values = (
                34.395833333333330000
                291.041666666666700000
                2.645833333333333000
                756.708333333333200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'Residential'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel28: TQRLabel
              Left = 475
              Top = 1
              Width = 239
              Height = 16
              Size.Values = (
                34.395833333333330000
                1047.750000000000000000
                2.645833333333333000
                526.520833333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'Low Voltage'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel29: TQRLabel
              Left = 715
              Top = 1
              Width = 324
              Height = 16
              Size.Values = (
                34.395833333333330000
                1576.916666666667000000
                2.645833333333333000
                714.375000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'High Voltage'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel30: TQRLabel
              Left = 1039
              Top = 1
              Width = 398
              Height = 16
              Size.Values = (
                34.395833333333330000
                2291.291666666667000000
                2.645833333333333000
                878.416666666666800000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'TOTAL'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
          end
          object DetailBand1: TQRBand
            Left = 29
            Top = 203
            Width = 1440
            Height = 36
            Frame.DrawTop = True
            Frame.DrawLeft = True
            Frame.DrawRight = True
            AlignToBottom = False
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              79.375000000000000000
              3175.000000000000000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbDetail
            object QRDBText1: TQRDBText
              Left = 2
              Top = 10
              Width = 36
              Height = 15
              Size.Values = (
                33.072916666666670000
                4.409722222222222000
                22.048611111111110000
                79.375000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSales
              DataField = 'Area'
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText2: TQRDBText
              Left = 38
              Top = 10
              Width = 94
              Height = 15
              Size.Values = (
                33.072916666666670000
                83.784722222222220000
                22.048611111111110000
                207.256944444444400000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSales
              DataField = 'Municipality'
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText3: TQRDBText
              Left = 132
              Top = 10
              Width = 65
              Height = 15
              Size.Values = (
                33.072916666666670000
                291.041666666666700000
                22.048611111111110000
                143.315972222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSales
              DataField = 'resCount'
              Mask = '###,##0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText4: TQRDBText
              Left = 200
              Top = 10
              Width = 52
              Height = 15
              Size.Values = (
                33.072916666666670000
                440.972222222222200000
                22.048611111111110000
                114.652777777777800000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSales
              DataField = 'resLLCount'
              Mask = '###,##0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText5: TQRDBText
              Left = 254
              Top = 10
              Width = 51
              Height = 15
              Size.Values = (
                33.072916666666670000
                560.034722222222200000
                22.048611111111110000
                112.447916666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSales
              DataField = 'resLLKwhr'
              Mask = '###,##0.0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText6: TQRDBText
              Left = 308
              Top = 10
              Width = 65
              Height = 15
              Size.Values = (
                33.072916666666670000
                679.097222222222200000
                22.048611111111110000
                143.315972222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSales
              DataField = 'resKwhr'
              Mask = '###,###,##0.0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText7: TQRDBText
              Left = 374
              Top = 10
              Width = 101
              Height = 15
              Size.Values = (
                33.072916666666670000
                824.618055555555600000
                22.048611111111110000
                222.690972222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSales
              DataField = 'resAmount'
              Mask = '###,###,##0.00 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText8: TQRDBText
              Left = 475
              Top = 10
              Width = 68
              Height = 15
              Size.Values = (
                33.072916666666670000
                1047.309027777778000000
                22.048611111111110000
                149.930555555555600000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSales
              DataField = 'LVCount'
              Mask = '###,##0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText9: TQRDBText
              Left = 544
              Top = 10
              Width = 65
              Height = 15
              Size.Values = (
                33.072916666666670000
                1199.444444444444000000
                22.048611111111110000
                143.315972222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSales
              DataField = 'LVKwhr'
              Mask = '###,##0.0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText10: TQRDBText
              Left = 610
              Top = 10
              Width = 102
              Height = 15
              Size.Values = (
                33.072916666666670000
                1344.965277777778000000
                22.048611111111110000
                224.895833333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSales
              DataField = 'LVAmount'
              Mask = '###,###,##0.00 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText11: TQRDBText
              Left = 933
              Top = 10
              Width = 105
              Height = 15
              Size.Values = (
                33.072916666666670000
                2057.135416666667000000
                22.048611111111110000
                231.510416666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSales
              DataField = 'HVAmount'
              Mask = '###,###,##0.00 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText12: TQRDBText
              Left = 785
              Top = 10
              Width = 70
              Height = 15
              Size.Values = (
                33.072916666666670000
                1730.815972222222000000
                22.048611111111110000
                154.340277777777800000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSales
              DataField = 'HVKwhr'
              Mask = '###,##0.0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText13: TQRDBText
              Left = 716
              Top = 10
              Width = 68
              Height = 15
              Size.Values = (
                33.072916666666670000
                1578.680555555556000000
                22.048611111111110000
                149.930555555555600000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSales
              DataField = 'HVCount'
              Mask = '###,##0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText14: TQRDBText
              Left = 857
              Top = 10
              Width = 74
              Height = 15
              Size.Values = (
                33.072916666666670000
                1889.565972222222000000
                22.048611111111110000
                163.159722222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSales
              DataField = 'HVKwhrd'
              Mask = '###,##0.0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText15: TQRDBText
              Left = 1343
              Top = 10
              Width = 94
              Height = 15
              Size.Values = (
                33.072916666666670000
                2961.128472222222000000
                22.048611111111110000
                207.256944444444400000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSales
              DataField = 'TAmount'
              Mask = '###,###,##0.00 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText16: TQRDBText
              Left = 1186
              Top = 10
              Width = 79
              Height = 15
              Size.Values = (
                33.072916666666670000
                2614.965277777778000000
                22.048611111111110000
                174.184027777777800000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSales
              DataField = 'TKwhr'
              Mask = '###,##0.0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText17: TQRDBText
              Left = 1118
              Top = 10
              Width = 68
              Height = 15
              Size.Values = (
                33.072916666666670000
                2465.034722222222000000
                22.048611111111110000
                149.930555555555600000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSales
              DataField = 'TLLCount'
              Mask = '###,###,##0.00 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText18: TQRDBText
              Left = 1040
              Top = 10
              Width = 77
              Height = 15
              Size.Values = (
                33.072916666666670000
                2293.055555555556000000
                22.048611111111110000
                169.774305555555600000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSales
              DataField = 'TCount'
              Mask = '###,##0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText19: TQRDBText
              Left = 1267
              Top = 10
              Width = 74
              Height = 15
              Size.Values = (
                33.072916666666670000
                2793.559027777778000000
                22.048611111111110000
                163.159722222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSales
              DataField = 'TKwhrd'
              Mask = '###,##0.0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRShape20: TQRShape
              Tag = 1000
              Left = 36
              Top = 0
              Width = 3
              Height = 33
              Size.Values = (
                72.760416666666680000
                79.375000000000000000
                0.000000000000000000
                6.614583333333332000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape21: TQRShape
              Tag = 1000
              Left = 131
              Top = 0
              Width = 3
              Height = 33
              Size.Values = (
                72.760416666666680000
                288.836805555555600000
                0.000000000000000000
                6.614583333333332000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape22: TQRShape
              Tag = 1000
              Left = 197
              Top = 0
              Width = 3
              Height = 33
              Size.Values = (
                72.760416666666680000
                434.357638888888900000
                0.000000000000000000
                6.614583333333332000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape23: TQRShape
              Tag = 1000
              Left = 252
              Top = 0
              Width = 3
              Height = 33
              Size.Values = (
                72.760416666666680000
                555.625000000000000000
                0.000000000000000000
                6.614583333333332000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape24: TQRShape
              Tag = 1000
              Left = 305
              Top = 0
              Width = 3
              Height = 33
              Size.Values = (
                72.760416666666680000
                672.482638888889000000
                0.000000000000000000
                6.614583333333332000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape25: TQRShape
              Tag = 1000
              Left = 372
              Top = 0
              Width = 3
              Height = 33
              Size.Values = (
                72.760416666666680000
                820.208333333333200000
                0.000000000000000000
                6.614583333333332000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape26: TQRShape
              Tag = 1000
              Left = 474
              Top = 0
              Width = 3
              Height = 33
              Size.Values = (
                72.760416666666680000
                1045.104166666667000000
                0.000000000000000000
                6.614583333333332000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape27: TQRShape
              Tag = 1000
              Left = 609
              Top = 0
              Width = 3
              Height = 33
              Size.Values = (
                72.760416666666680000
                1342.760416666667000000
                0.000000000000000000
                6.614583333333332000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape28: TQRShape
              Tag = 1000
              Left = 713
              Top = 0
              Width = 3
              Height = 33
              Size.Values = (
                72.760416666666680000
                1572.065972222222000000
                0.000000000000000000
                6.614583333333332000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape29: TQRShape
              Tag = 1000
              Left = 543
              Top = 0
              Width = 3
              Height = 33
              Size.Values = (
                72.760416666666680000
                1197.239583333333000000
                0.000000000000000000
                6.614583333333332000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape30: TQRShape
              Tag = 1000
              Left = 855
              Top = 0
              Width = 3
              Height = 33
              Size.Values = (
                72.760416666666680000
                1885.156250000000000000
                0.000000000000000000
                6.614583333333332000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape31: TQRShape
              Tag = 1000
              Left = 1038
              Top = 0
              Width = 2
              Height = 33
              Size.Values = (
                72.760416666666680000
                2288.645833333333000000
                0.000000000000000000
                4.409722222222222000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape32: TQRShape
              Tag = 1000
              Left = 783
              Top = 0
              Width = 3
              Height = 33
              Size.Values = (
                72.760416666666680000
                1726.406250000000000000
                0.000000000000000000
                6.614583333333332000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape33: TQRShape
              Tag = 1000
              Left = 931
              Top = 0
              Width = 2
              Height = 33
              Size.Values = (
                72.760416666666680000
                2052.725694444444000000
                0.000000000000000000
                4.409722222222222000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape34: TQRShape
              Tag = 1000
              Left = 1266
              Top = 0
              Width = 2
              Height = 33
              Size.Values = (
                72.760416666666680000
                2791.354166666667000000
                0.000000000000000000
                4.409722222222222000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape35: TQRShape
              Tag = 1000
              Left = 1116
              Top = 0
              Width = 2
              Height = 33
              Size.Values = (
                72.760416666666680000
                2460.625000000000000000
                0.000000000000000000
                4.409722222222222000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape36: TQRShape
              Tag = 1000
              Left = 1342
              Top = 0
              Width = 2
              Height = 33
              Size.Values = (
                72.760416666666680000
                2958.923611111111000000
                0.000000000000000000
                4.409722222222222000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape37: TQRShape
              Tag = 1000
              Left = 1184
              Top = 0
              Width = 2
              Height = 33
              Size.Values = (
                72.760416666666680000
                2610.555555555556000000
                0.000000000000000000
                4.409722222222222000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
          end
          object SummaryBand1: TQRBand
            Left = 29
            Top = 239
            Width = 1440
            Height = 38
            Frame.DrawTop = True
            Frame.DrawBottom = True
            Frame.DrawLeft = True
            Frame.DrawRight = True
            AlignToBottom = False
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              83.784722222222220000
              3175.000000000000000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbSummary
            object QRShape39: TQRShape
              Tag = 1000
              Left = 131
              Top = 0
              Width = 3
              Height = 35
              Size.Values = (
                77.170138888888900000
                288.836805555555600000
                0.000000000000000000
                6.614583333333332000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape40: TQRShape
              Tag = 1000
              Left = 197
              Top = 0
              Width = 3
              Height = 35
              Size.Values = (
                77.170138888888900000
                434.357638888888900000
                0.000000000000000000
                6.614583333333332000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape41: TQRShape
              Tag = 1000
              Left = 252
              Top = 0
              Width = 3
              Height = 35
              Size.Values = (
                77.170138888888900000
                555.625000000000000000
                0.000000000000000000
                6.614583333333332000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape42: TQRShape
              Tag = 1000
              Left = 305
              Top = 0
              Width = 3
              Height = 35
              Size.Values = (
                77.170138888888900000
                672.482638888889000000
                0.000000000000000000
                6.614583333333332000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape43: TQRShape
              Tag = 1000
              Left = 372
              Top = 0
              Width = 3
              Height = 35
              Size.Values = (
                77.170138888888900000
                820.208333333333200000
                0.000000000000000000
                6.614583333333332000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape44: TQRShape
              Tag = 1000
              Left = 474
              Top = 0
              Width = 3
              Height = 35
              Size.Values = (
                77.170138888888900000
                1045.104166666667000000
                0.000000000000000000
                6.614583333333332000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape45: TQRShape
              Tag = 1000
              Left = 609
              Top = 0
              Width = 3
              Height = 35
              Size.Values = (
                77.170138888888900000
                1342.760416666667000000
                0.000000000000000000
                6.614583333333332000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape46: TQRShape
              Tag = 1000
              Left = 713
              Top = 0
              Width = 3
              Height = 35
              Size.Values = (
                77.170138888888900000
                1572.065972222222000000
                0.000000000000000000
                6.614583333333332000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape47: TQRShape
              Tag = 1000
              Left = 543
              Top = 0
              Width = 3
              Height = 35
              Size.Values = (
                77.170138888888900000
                1197.239583333333000000
                0.000000000000000000
                6.614583333333332000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape48: TQRShape
              Tag = 1000
              Left = 855
              Top = 0
              Width = 3
              Height = 35
              Size.Values = (
                77.170138888888900000
                1885.156250000000000000
                0.000000000000000000
                6.614583333333332000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape49: TQRShape
              Tag = 1000
              Left = 1038
              Top = 0
              Width = 3
              Height = 35
              Size.Values = (
                77.170138888888900000
                2288.645833333333000000
                0.000000000000000000
                6.614583333333332000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape50: TQRShape
              Tag = 1000
              Left = 783
              Top = 0
              Width = 3
              Height = 35
              Size.Values = (
                77.170138888888900000
                1726.406250000000000000
                0.000000000000000000
                6.614583333333332000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape51: TQRShape
              Tag = 1000
              Left = 931
              Top = 0
              Width = 3
              Height = 35
              Size.Values = (
                77.170138888888900000
                2052.725694444444000000
                0.000000000000000000
                6.614583333333332000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape52: TQRShape
              Tag = 1000
              Left = 1266
              Top = 0
              Width = 3
              Height = 35
              Size.Values = (
                77.170138888888900000
                2791.354166666667000000
                0.000000000000000000
                6.614583333333332000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape53: TQRShape
              Tag = 1000
              Left = 1116
              Top = 0
              Width = 3
              Height = 35
              Size.Values = (
                77.170138888888900000
                2460.625000000000000000
                0.000000000000000000
                6.614583333333332000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape54: TQRShape
              Tag = 1000
              Left = 1341
              Top = 0
              Width = 3
              Height = 35
              Size.Values = (
                77.170138888888900000
                2956.718750000000000000
                0.000000000000000000
                6.614583333333332000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape55: TQRShape
              Tag = 1000
              Left = 1185
              Top = 0
              Width = 3
              Height = 35
              Size.Values = (
                77.170138888888900000
                2612.760416666667000000
                0.000000000000000000
                6.614583333333332000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRExpr1: TQRExpr
              Left = 133
              Top = 10
              Width = 65
              Height = 15
              Size.Values = (
                33.072916666666670000
                293.246527777777800000
                22.048611111111110000
                143.315972222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(qPowerSales.resCount)'
              Mask = '#,###.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr2: TQRExpr
              Left = 200
              Top = 10
              Width = 52
              Height = 15
              Size.Values = (
                33.072916666666670000
                440.972222222222200000
                22.048611111111110000
                114.652777777777800000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(qPowerSales.resLLCount)'
              Mask = '#,###.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr3: TQRExpr
              Left = 475
              Top = 10
              Width = 68
              Height = 15
              Size.Values = (
                33.072916666666670000
                1047.309027777778000000
                22.048611111111110000
                149.930555555555600000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(qPowerSales.LVCount)'
              Mask = '#,###.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr4: TQRExpr
              Left = 716
              Top = 10
              Width = 68
              Height = 15
              Size.Values = (
                33.072916666666670000
                1578.680555555556000000
                22.048611111111110000
                149.930555555555600000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(qPowerSales.HVCount)'
              Mask = '#,###.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr5: TQRExpr
              Left = 1040
              Top = 10
              Width = 77
              Height = 15
              Size.Values = (
                33.072916666666670000
                2293.055555555556000000
                22.048611111111110000
                169.774305555555600000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(qPowerSales.TCount)'
              Mask = '#,###.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr6: TQRExpr
              Left = 1118
              Top = 10
              Width = 68
              Height = 15
              Size.Values = (
                33.072916666666670000
                2465.034722222222000000
                22.048611111111110000
                149.930555555555600000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(qPowerSales.TLLCount)'
              Mask = '#,###.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr7: TQRExpr
              Left = 254
              Top = 10
              Width = 51
              Height = 15
              Size.Values = (
                33.072916666666670000
                560.034722222222200000
                22.048611111111110000
                112.447916666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(qPowerSales.resLLKwhr)'
              Mask = '#,###.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr8: TQRExpr
              Left = 308
              Top = 10
              Width = 65
              Height = 15
              Size.Values = (
                33.072916666666670000
                679.097222222222200000
                22.048611111111110000
                143.315972222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(qPowerSales.resKwhr)'
              Mask = '#,###.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr9: TQRExpr
              Left = 546
              Top = 10
              Width = 63
              Height = 15
              Size.Values = (
                33.072916666666670000
                1203.854166666667000000
                22.048611111111110000
                138.906250000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(qPowerSales.LVKwhr)'
              Mask = '#,###.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr10: TQRExpr
              Left = 785
              Top = 10
              Width = 70
              Height = 15
              Size.Values = (
                33.072916666666670000
                1730.815972222222000000
                22.048611111111110000
                154.340277777777800000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(qPowerSales.HVKwhr)'
              Mask = '#,###.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr11: TQRExpr
              Left = 857
              Top = 10
              Width = 74
              Height = 15
              Size.Values = (
                33.072916666666670000
                1889.565972222222000000
                22.048611111111110000
                163.159722222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(qPowerSales.HVKwhrd)'
              Mask = '#,###.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr12: TQRExpr
              Left = 1267
              Top = 10
              Width = 74
              Height = 15
              Size.Values = (
                33.072916666666670000
                2793.559027777778000000
                22.048611111111110000
                163.159722222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(qPowerSales.TKwhrd)'
              Mask = '#,###.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr13: TQRExpr
              Left = 1186
              Top = 10
              Width = 79
              Height = 15
              Size.Values = (
                33.072916666666670000
                2614.965277777778000000
                22.048611111111110000
                174.184027777777800000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(qPowerSales.TKwhr)'
              Mask = '#,###.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr14: TQRExpr
              Left = 374
              Top = 10
              Width = 101
              Height = 15
              Size.Values = (
                33.072916666666670000
                824.618055555555600000
                22.048611111111110000
                222.690972222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(qPowerSales.resAmount)'
              Mask = '#,###.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr15: TQRExpr
              Left = 610
              Top = 10
              Width = 102
              Height = 15
              Size.Values = (
                33.072916666666670000
                1344.965277777778000000
                22.048611111111110000
                224.895833333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(qPowerSales.LVAmount)'
              Mask = '#,###.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr16: TQRExpr
              Left = 933
              Top = 10
              Width = 105
              Height = 15
              Size.Values = (
                33.072916666666670000
                2057.135416666667000000
                22.048611111111110000
                231.510416666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(qPowerSales.HVAmount)'
              Mask = '#,###.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr17: TQRExpr
              Left = 1343
              Top = 10
              Width = 94
              Height = 15
              Size.Values = (
                33.072916666666670000
                2961.128472222222000000
                22.048611111111110000
                207.256944444444400000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(qPowerSales.TAmount)'
              Mask = '#,###.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel31: TQRLabel
              Left = 54
              Top = 1
              Width = 35
              Height = 17
              Size.Values = (
                37.482638888888890000
                119.062500000000000000
                2.204861111111111000
                77.170138888888900000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taLeftJustify
              AlignToBand = False
              Caption = 'TOTAL'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
          end
          object QRBand21: TQRBand
            Left = 29
            Top = 58
            Width = 1440
            Height = 91
            AlignToBottom = False
            BeforePrint = QRBand21BeforePrint
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              200.642361111111100000
              3175.000000000000000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbTitle
            object QRLabel2: TQRLabel
              Left = 506
              Top = 6
              Width = 428
              Height = 20
              Size.Values = (
                44.097222222222220000
                1115.659722222222000000
                13.229166666666670000
                943.680555555555600000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = True
              Caption = 'ZAMBOANGA DEL NORTE ELECTRIC COOPERATIVE, INC.'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 10
            end
            object qrlCSFDMonth: TQRLabel
              Left = 678
              Top = 72
              Width = 83
              Height = 18
              Size.Values = (
                39.687500000000000000
                1494.895833333333000000
                158.750000000000000000
                183.003472222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = True
              Caption = 'qrlCSFDMonth'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRLabel6: TQRLabel
              Left = 649
              Top = 54
              Width = 142
              Height = 18
              Size.Values = (
                39.687500000000000000
                1430.954861111111000000
                119.062500000000000000
                313.090277777777800000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = True
              Caption = 'POWER SALES REPORT'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRLabel7: TQRLabel
              Left = 633
              Top = 29
              Width = 173
              Height = 18
              Size.Values = (
                39.687500000000000000
                1395.677083333333000000
                63.940972222222220000
                381.440972222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = True
              Caption = 'General Luna St., Dipolog City'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
          end
          object QRChildBand1: TQRChildBand
            Left = 29
            Top = 277
            Width = 1440
            Height = 269
            AlignToBottom = False
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              593.107638888888900000
              3175.000000000000000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            ParentBand = SummaryBand1
            PrintOrder = cboAfterParent
            object QRLabel5: TQRLabel
              Left = 20
              Top = 20
              Width = 85
              Height = 20
              Size.Values = (
                44.097222222222220000
                44.097222222222220000
                44.097222222222220000
                187.413194444444400000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taLeftJustify
              AlignToBand = False
              Caption = 'Prepared by'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 10
            end
            object QRLabel83: TQRLabel
              Left = 566
              Top = 20
              Width = 84
              Height = 20
              Size.Values = (
                44.097222222222220000
                1247.951388888889000000
                44.097222222222220000
                185.208333333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taLeftJustify
              AlignToBand = False
              Caption = 'Checked by'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 10
            end
            object QRLabel109: TQRLabel
              Left = 1024
              Top = 20
              Width = 74
              Height = 20
              Size.Values = (
                44.097222222222220000
                2257.777777777778000000
                44.097222222222220000
                163.159722222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taLeftJustify
              AlignToBand = False
              Caption = 'Verified by'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 10
            end
            object QRLabel137: TQRLabel
              Left = 262
              Top = 142
              Width = 113
              Height = 20
              Size.Values = (
                44.097222222222220000
                577.673611111111000000
                313.090277777777800000
                249.149305555555600000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taLeftJustify
              AlignToBand = False
              Caption = 'Certified Correct'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 10
            end
            object QRLabel138: TQRLabel
              Left = 842
              Top = 142
              Width = 82
              Height = 20
              Size.Values = (
                44.097222222222220000
                1856.493055555556000000
                313.090277777777800000
                180.798611111111100000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taLeftJustify
              AlignToBand = False
              Caption = 'Attested by'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 10
            end
            object QRDBText111: TQRDBText
              Left = 74
              Top = 72
              Width = 353
              Height = 20
              Size.Values = (
                44.979166666666670000
                164.041666666666700000
                158.750000000000000000
                777.875000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = psSignatories
              DataField = 'preparedby'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 10
            end
            object QRDBText112: TQRDBText
              Left = 74
              Top = 96
              Width = 353
              Height = 20
              Size.Values = (
                44.979166666666670000
                164.041666666666700000
                211.666666666666700000
                777.875000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = psSignatories
              DataField = 'preparedpos'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 10
            end
            object QRDBText113: TQRDBText
              Left = 614
              Top = 72
              Width = 353
              Height = 20
              Size.Values = (
                44.979166666666670000
                1354.666666666667000000
                158.750000000000000000
                777.875000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = psSignatories
              DataField = 'checkby'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 10
            end
            object QRDBText114: TQRDBText
              Left = 614
              Top = 96
              Width = 353
              Height = 20
              Size.Values = (
                44.979166666666670000
                1354.666666666667000000
                211.666666666666700000
                777.875000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = psSignatories
              DataField = 'checkpos'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 10
            end
            object QRDBText115: TQRDBText
              Left = 1060
              Top = 72
              Width = 353
              Height = 20
              Size.Values = (
                44.979166666666670000
                2336.270833333333000000
                158.750000000000000000
                777.875000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = psSignatories
              DataField = 'verifiedby'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 10
            end
            object QRDBText116: TQRDBText
              Left = 1060
              Top = 96
              Width = 353
              Height = 20
              Size.Values = (
                44.979166666666670000
                2336.270833333333000000
                211.666666666666700000
                777.875000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = psSignatories
              DataField = 'verifiedpos'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 10
            end
            object QRDBText117: TQRDBText
              Left = 340
              Top = 204
              Width = 353
              Height = 20
              Size.Values = (
                44.979166666666670000
                748.770833333333200000
                449.791666666666700000
                777.875000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = psSignatories
              DataField = 'certifiedby'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 10
            end
            object QRDBText118: TQRDBText
              Left = 340
              Top = 228
              Width = 353
              Height = 20
              Size.Values = (
                44.979166666666670000
                748.770833333333200000
                502.708333333333300000
                777.875000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = psSignatories
              DataField = 'certifiedpos'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 10
            end
            object QRDBText119: TQRDBText
              Left = 880
              Top = 204
              Width = 353
              Height = 20
              Size.Values = (
                44.979166666666670000
                1939.395833333333000000
                449.791666666666700000
                777.875000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = psSignatories
              DataField = 'attestedby'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 10
            end
            object QRDBText120: TQRDBText
              Left = 880
              Top = 228
              Width = 353
              Height = 20
              Size.Values = (
                44.979166666666670000
                1939.395833333333000000
                502.708333333333300000
                777.875000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = psSignatories
              DataField = 'attestedpos'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 10
            end
          end
        end
      end
      object tsCurrentUnbundled: TTabSheet
        Caption = 'tsCurrentUnbundled'
        ImageIndex = 1
        object qrCurrentUnbundled: TQuickRep
          Left = 179
          Top = 57
          Width = 1248
          Height = 816
          DataSet = qPowerSales
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
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
          Page.PaperSize = FanfoldGerLegal
          Page.Continuous = False
          Page.Values = (
            63.500000000000000000
            2159.000000000000000000
            63.500000000000000000
            3302.000000000000000000
            63.500000000000000000
            63.500000000000000000
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
          PrinterSettings.MemoryLimit = 1000000
          PrinterSettings.PrintQuality = 0
          PrinterSettings.Collate = 0
          PrinterSettings.ColorOption = 0
          PrintIfEmpty = True
          SnapToGrid = True
          Units = Inches
          Zoom = 100
          PrevFormStyle = fsNormal
          PreviewInitialState = wsMaximized
          PrevInitialZoom = qrZoomToWidth
          PreviewDefaultSaveType = stQRP
          PreviewLeft = 0
          PreviewTop = 0
          object QRBand1: TQRBand
            Left = 24
            Top = 100
            Width = 1200
            Height = 45
            Frame.DrawTop = True
            Frame.DrawLeft = True
            Frame.DrawRight = True
            AlignToBottom = False
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              119.062500000000000000
              3175.000000000000000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbColumnHeader
            object QRLabel33: TQRLabel
              Left = 57
              Top = 15
              Width = 36
              Height = 14
              Size.Values = (
                37.041666666666670000
                150.812500000000000000
                39.687500000000000000
                95.250000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taLeftJustify
              AlignToBand = False
              Caption = 'Charges'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape56: TQRShape
              Tag = 1000
              Left = 155
              Top = 0
              Width = 2
              Height = 30
              Size.Values = (
                79.375000000000000000
                410.104166666666700000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape57: TQRShape
              Left = 156
              Top = 13
              Width = 998
              Height = 2
              Size.Values = (
                5.291666666666667000
                412.750000000000000000
                34.395833333333330000
                2640.541666666667000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsHorLine
              VertAdjust = 0
            end
            object QRLabel34: TQRLabel
              Left = 158
              Top = 15
              Width = 43
              Height = 24
              Size.Values = (
                63.500000000000000000
                418.041666666666700000
                39.687500000000000000
                113.770833333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'No. of Consumers'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 6
            end
            object QRShape58: TQRShape
              Left = 201
              Top = 15
              Width = 2
              Height = 28
              Size.Values = (
                74.083333333333320000
                531.812500000000000000
                39.687500000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel35: TQRLabel
              Left = 204
              Top = 15
              Width = 43
              Height = 24
              Size.Values = (
                63.500000000000000000
                539.750000000000000000
                39.687500000000000000
                113.770833333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'Minimum Bills'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape59: TQRShape
              Left = 247
              Top = 15
              Width = 2
              Height = 28
              Size.Values = (
                74.083333333333320000
                653.520833333333200000
                39.687500000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel36: TQRLabel
              Left = 250
              Top = 15
              Width = 41
              Height = 24
              Size.Values = (
                63.500000000000000000
                661.458333333333200000
                39.687500000000000000
                108.479166666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'Minimum KWHr'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape60: TQRShape
              Left = 291
              Top = 15
              Width = 2
              Height = 28
              Size.Values = (
                74.083333333333320000
                769.937500000000000000
                39.687500000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel37: TQRLabel
              Left = 294
              Top = 22
              Width = 53
              Height = 13
              Size.Values = (
                34.395833333333330000
                777.875000000000000000
                58.208333333333320000
                140.229166666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'KWHr'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape61: TQRShape
              Left = 347
              Top = 15
              Width = 2
              Height = 28
              Size.Values = (
                74.083333333333320000
                918.104166666666800000
                39.687500000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel38: TQRLabel
              Left = 355
              Top = 22
              Width = 62
              Height = 13
              Size.Values = (
                34.395833333333330000
                939.270833333333200000
                58.208333333333320000
                164.041666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'Amount'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape62: TQRShape
              Tag = 1000
              Left = 420
              Top = 0
              Width = 2
              Height = 30
              Size.Values = (
                79.375000000000000000
                1111.250000000000000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel39: TQRLabel
              Left = 468
              Top = 22
              Width = 53
              Height = 13
              Size.Values = (
                34.395833333333330000
                1238.250000000000000000
                58.208333333333320000
                140.229166666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'KWHr'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape63: TQRShape
              Left = 521
              Top = 15
              Width = 2
              Height = 28
              Size.Values = (
                74.083333333333320000
                1378.479166666667000000
                39.687500000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel40: TQRLabel
              Left = 523
              Top = 22
              Width = 74
              Height = 13
              Size.Values = (
                34.395833333333330000
                1383.770833333333000000
                58.208333333333320000
                195.791666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'Amount'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape64: TQRShape
              Tag = 1000
              Left = 596
              Top = 0
              Width = 2
              Height = 30
              Size.Values = (
                79.375000000000000000
                1576.916666666667000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel41: TQRLabel
              Left = 422
              Top = 15
              Width = 43
              Height = 24
              Size.Values = (
                63.500000000000000000
                1116.541666666667000000
                39.687500000000000000
                113.770833333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'No. of Consumers'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 6
            end
            object QRShape65: TQRShape
              Left = 465
              Top = 15
              Width = 2
              Height = 28
              Size.Values = (
                74.083333333333320000
                1230.312500000000000000
                39.687500000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel42: TQRLabel
              Left = 655
              Top = 22
              Width = 53
              Height = 13
              Size.Values = (
                34.395833333333330000
                1733.020833333333000000
                58.208333333333320000
                140.229166666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'KWHr'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape66: TQRShape
              Left = 711
              Top = 15
              Width = 2
              Height = 28
              Size.Values = (
                74.083333333333320000
                1881.187500000000000000
                39.687500000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel43: TQRLabel
              Left = 777
              Top = 22
              Width = 74
              Height = 13
              Size.Values = (
                34.395833333333330000
                2055.812500000000000000
                58.208333333333320000
                195.791666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'Amount'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape67: TQRShape
              Tag = 1000
              Left = 851
              Top = 0
              Width = 2
              Height = 30
              Size.Values = (
                79.375000000000000000
                2251.604166666667000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel44: TQRLabel
              Left = 598
              Top = 15
              Width = 52
              Height = 24
              Size.Values = (
                63.500000000000000000
                1582.208333333333000000
                39.687500000000000000
                137.583333333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'No. of Consumers'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 6
            end
            object QRShape68: TQRShape
              Left = 650
              Top = 15
              Width = 2
              Height = 28
              Size.Values = (
                74.083333333333320000
                1719.791666666667000000
                39.687500000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel45: TQRLabel
              Left = 716
              Top = 22
              Width = 53
              Height = 13
              Size.Values = (
                34.395833333333330000
                1894.416666666667000000
                58.208333333333320000
                140.229166666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'KW Dmd.'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape69: TQRShape
              Left = 774
              Top = 15
              Width = 2
              Height = 28
              Size.Values = (
                74.083333333333320000
                2047.875000000000000000
                39.687500000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel46: TQRLabel
              Left = 966
              Top = 22
              Width = 53
              Height = 15
              Size.Values = (
                39.687500000000000000
                2555.875000000000000000
                58.208333333333320000
                140.229166666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'KWHr'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape70: TQRShape
              Left = 1021
              Top = 15
              Width = 2
              Height = 28
              Size.Values = (
                74.083333333333320000
                2701.395833333333000000
                39.687500000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel47: TQRLabel
              Left = 1088
              Top = 22
              Width = 62
              Height = 15
              Size.Values = (
                39.687500000000000000
                2878.666666666667000000
                58.208333333333320000
                164.041666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'Amount'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel48: TQRLabel
              Left = 853
              Top = 15
              Width = 43
              Height = 24
              Size.Values = (
                63.500000000000000000
                2256.895833333333000000
                39.687500000000000000
                113.770833333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'No. of Consumers'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 6
            end
            object QRShape71: TQRShape
              Left = 896
              Top = 15
              Width = 2
              Height = 28
              Size.Values = (
                74.083333333333320000
                2370.666666666667000000
                39.687500000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel49: TQRLabel
              Left = 1026
              Top = 22
              Width = 53
              Height = 15
              Size.Values = (
                39.687500000000000000
                2714.625000000000000000
                58.208333333333320000
                140.229166666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'KW Dmd.'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape72: TQRShape
              Left = 1084
              Top = 15
              Width = 2
              Height = 28
              Size.Values = (
                74.083333333333320000
                2868.083333333333000000
                39.687500000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel50: TQRLabel
              Left = 906
              Top = 15
              Width = 43
              Height = 24
              Size.Values = (
                63.500000000000000000
                2397.125000000000000000
                39.687500000000000000
                113.770833333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'Minimum Bills'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape73: TQRShape
              Left = 954
              Top = 15
              Width = 2
              Height = 28
              Size.Values = (
                74.083333333333320000
                2524.125000000000000000
                39.687500000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel51: TQRLabel
              Left = 156
              Top = 1
              Width = 264
              Height = 13
              Size.Values = (
                34.395833333333330000
                412.750000000000000000
                2.645833333333333000
                698.500000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'Residential'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel52: TQRLabel
              Left = 423
              Top = 1
              Width = 174
              Height = 13
              Size.Values = (
                34.395833333333330000
                1119.187500000000000000
                2.645833333333333000
                460.375000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'Low Voltage'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel53: TQRLabel
              Left = 597
              Top = 1
              Width = 282
              Height = 13
              Size.Values = (
                34.395833333333330000
                1579.562500000000000000
                2.645833333333333000
                746.125000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'High Voltage'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel54: TQRLabel
              Left = 878
              Top = 1
              Width = 276
              Height = 13
              Size.Values = (
                34.395833333333330000
                2323.041666666667000000
                2.645833333333333000
                730.250000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'TOTAL'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape159: TQRShape
              Tag = 1000
              Left = 1153
              Top = 1
              Width = 2
              Height = 30
              Size.Values = (
                79.375000000000000000
                3050.645833333333000000
                2.645833333333333000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel86: TQRLabel
              Left = 1155
              Top = 5
              Width = 43
              Height = 37
              Size.Values = (
                97.895833333333320000
                3055.937500000000000000
                13.229166666666670000
                113.770833333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = '% Revenue Sales'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
          end
          object QRBand2: TQRBand
            Left = 24
            Top = 145
            Width = 1200
            Height = 12
            Frame.DrawTop = True
            Frame.DrawLeft = True
            Frame.DrawRight = True
            AlignToBottom = False
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              31.750000000000000000
              3175.000000000000000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbDetail
            object QRShape75: TQRShape
              Tag = 1000
              Left = 155
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                56.696428571428570000
                410.104166666666700000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape76: TQRShape
              Tag = 1000
              Left = 201
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                55.562500000000000000
                531.812500000000000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape77: TQRShape
              Tag = 1000
              Left = 247
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                55.562500000000000000
                653.520833333333200000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape78: TQRShape
              Tag = 1000
              Left = 291
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                55.562500000000000000
                769.937500000000000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape79: TQRShape
              Tag = 1000
              Left = 347
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                55.562500000000000000
                918.104166666666800000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape80: TQRShape
              Tag = 1000
              Left = 420
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                55.562500000000000000
                1111.250000000000000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape81: TQRShape
              Tag = 1000
              Left = 521
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                55.562500000000000000
                1378.479166666667000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape82: TQRShape
              Tag = 1000
              Left = 596
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                55.562500000000000000
                1576.916666666667000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape83: TQRShape
              Tag = 1000
              Left = 465
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                55.562500000000000000
                1230.312500000000000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape84: TQRShape
              Tag = 1000
              Left = 711
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                55.562500000000000000
                1881.187500000000000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape85: TQRShape
              Tag = 1000
              Left = 851
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                55.562500000000000000
                2251.604166666667000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape86: TQRShape
              Tag = 1000
              Left = 650
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                55.562500000000000000
                1719.791666666667000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape87: TQRShape
              Tag = 1000
              Left = 774
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                55.562500000000000000
                2047.875000000000000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape88: TQRShape
              Tag = 1000
              Left = 1021
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                55.562500000000000000
                2701.395833333333000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape89: TQRShape
              Tag = 1000
              Left = 896
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                55.562500000000000000
                2370.666666666667000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape90: TQRShape
              Tag = 1000
              Left = 1084
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                55.562500000000000000
                2868.083333333333000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape91: TQRShape
              Tag = 1000
              Left = 954
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                55.562500000000000000
                2524.125000000000000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRDBText21: TQRDBText
              Left = 2
              Top = 1
              Width = 154
              Height = 13
              Size.Values = (
                34.395833333333330000
                5.291666666666667000
                2.645833333333333000
                407.458333333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSales
              DataField = 'desc'
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText22: TQRDBText
              Left = 156
              Top = 1
              Width = 45
              Height = 13
              Size.Values = (
                34.395833333333330000
                412.750000000000000000
                2.645833333333333000
                119.062500000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSales
              DataField = 'resBills'
              Mask = '###,##0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText23: TQRDBText
              Left = 202
              Top = 1
              Width = 44
              Height = 13
              Size.Values = (
                34.395833333333330000
                534.458333333333300000
                2.645833333333333000
                116.416666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSales
              DataField = 'resLLBills'
              Mask = '###,##0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText24: TQRDBText
              Left = 248
              Top = 1
              Width = 43
              Height = 13
              Size.Values = (
                34.395833333333330000
                656.166666666666800000
                2.645833333333333000
                113.770833333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSales
              DataField = 'resLLKwhr'
              Mask = '###,##0.0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText25: TQRDBText
              Left = 292
              Top = 1
              Width = 54
              Height = 13
              Size.Values = (
                34.395833333333330000
                772.583333333333200000
                2.645833333333333000
                142.875000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSales
              DataField = 'resKwhr'
              Mask = '###,###,##0.0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText26: TQRDBText
              Left = 348
              Top = 1
              Width = 72
              Height = 13
              Size.Values = (
                34.395833333333330000
                920.750000000000000000
                2.645833333333333000
                190.500000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSales
              DataField = 'RES'
              Mask = '###,###,##0.00 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText27: TQRDBText
              Left = 422
              Top = 1
              Width = 43
              Height = 13
              Size.Values = (
                34.395833333333330000
                1116.541666666667000000
                2.645833333333333000
                113.770833333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSales
              DataField = 'LVBills'
              Mask = '###,##0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText28: TQRDBText
              Left = 468
              Top = 1
              Width = 54
              Height = 13
              Size.Values = (
                34.395833333333330000
                1238.250000000000000000
                2.645833333333333000
                142.875000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSales
              DataField = 'LVKwhr'
              Mask = '###,##0.0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText29: TQRDBText
              Left = 523
              Top = 1
              Width = 74
              Height = 13
              Size.Values = (
                34.395833333333330000
                1383.770833333333000000
                2.645833333333333000
                195.791666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSales
              DataField = 'LV'
              Mask = '###,###,##0.00 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText30: TQRDBText
              Left = 775
              Top = 1
              Width = 76
              Height = 13
              Size.Values = (
                34.395833333333330000
                2050.520833333333000000
                2.645833333333333000
                201.083333333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSales
              DataField = 'HV'
              Mask = '###,###,##0.00 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText31: TQRDBText
              Left = 652
              Top = 1
              Width = 59
              Height = 13
              Size.Values = (
                34.395833333333330000
                1725.083333333333000000
                2.645833333333333000
                156.104166666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSales
              DataField = 'HVKwhr'
              Mask = '###,##0.0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText32: TQRDBText
              Left = 598
              Top = 1
              Width = 52
              Height = 13
              Size.Values = (
                34.395833333333330000
                1582.208333333333000000
                2.645833333333333000
                137.583333333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSales
              DataField = 'HVBills'
              Mask = '###,##0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText33: TQRDBText
              Left = 712
              Top = 1
              Width = 61
              Height = 13
              Size.Values = (
                34.395833333333330000
                1883.833333333333000000
                2.645833333333333000
                161.395833333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSales
              DataField = 'HVKwhrd'
              Mask = '###,##0.0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText34: TQRDBText
              Left = 1086
              Top = 1
              Width = 68
              Height = 13
              Size.Values = (
                34.395833333333330000
                2873.375000000000000000
                2.645833333333333000
                179.916666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSales
              DataField = 'TotalAmount'
              Mask = '###,###,##0.00 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText35: TQRDBText
              Left = 955
              Top = 1
              Width = 66
              Height = 13
              Size.Values = (
                34.395833333333330000
                2526.770833333333000000
                2.645833333333333000
                174.625000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSales
              DataField = 'TotalKwhr'
              Mask = '###,##0.0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText36: TQRDBText
              Left = 898
              Top = 1
              Width = 56
              Height = 13
              Size.Values = (
                34.395833333333330000
                2375.958333333333000000
                2.645833333333333000
                148.166666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSales
              DataField = 'resLLBills'
              Mask = '###,###,##0.00 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText37: TQRDBText
              Left = 853
              Top = 1
              Width = 43
              Height = 13
              Size.Values = (
                34.395833333333330000
                2256.895833333333000000
                2.645833333333333000
                113.770833333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSales
              DataField = 'numBills'
              Mask = '###,##0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText38: TQRDBText
              Left = 1023
              Top = 1
              Width = 61
              Height = 13
              Size.Values = (
                34.395833333333330000
                2706.687500000000000000
                2.645833333333333000
                161.395833333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSales
              DataField = 'TotalKwhrD'
              Mask = '###,##0.0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRShape160: TQRShape
              Tag = 1000
              Left = 1153
              Top = 0
              Width = 2
              Height = 12
              Size.Values = (
                31.750000000000000000
                3050.645833333333000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
          end
          object QRBand3: TQRBand
            Left = 24
            Top = 157
            Width = 1200
            Height = 12
            Frame.DrawTop = True
            Frame.DrawBottom = True
            Frame.DrawLeft = True
            Frame.DrawRight = True
            AlignToBottom = False
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              31.750000000000000000
              3175.000000000000000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbSummary
            object QRShape92: TQRShape
              Tag = 1000
              Left = 155
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.898809523809520000
                410.104166666666700000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape93: TQRShape
              Tag = 1000
              Left = 201
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.520833333333330000
                531.812500000000000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape94: TQRShape
              Tag = 1000
              Left = 247
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.520833333333330000
                653.520833333333200000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape95: TQRShape
              Tag = 1000
              Left = 291
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.520833333333330000
                769.937500000000000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape96: TQRShape
              Tag = 1000
              Left = 347
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.520833333333330000
                918.104166666666800000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape97: TQRShape
              Tag = 1000
              Left = 420
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.520833333333330000
                1111.250000000000000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape98: TQRShape
              Tag = 1000
              Left = 521
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.520833333333330000
                1378.479166666667000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape99: TQRShape
              Tag = 1000
              Left = 596
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.520833333333330000
                1576.916666666667000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape100: TQRShape
              Tag = 1000
              Left = 465
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.520833333333330000
                1230.312500000000000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape101: TQRShape
              Tag = 1000
              Left = 711
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.520833333333330000
                1881.187500000000000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape102: TQRShape
              Tag = 1000
              Left = 851
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.520833333333330000
                2251.604166666667000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape103: TQRShape
              Tag = 1000
              Left = 650
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.520833333333330000
                1719.791666666667000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape104: TQRShape
              Tag = 1000
              Left = 774
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.520833333333330000
                2047.875000000000000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape105: TQRShape
              Tag = 1000
              Left = 1021
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.520833333333330000
                2701.395833333333000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape106: TQRShape
              Tag = 1000
              Left = 896
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.520833333333330000
                2370.666666666667000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape107: TQRShape
              Tag = 1000
              Left = 1084
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.520833333333330000
                2868.083333333333000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape108: TQRShape
              Tag = 1000
              Left = 954
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.520833333333330000
                2524.125000000000000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRExpr31: TQRExpr
              Left = 348
              Top = 1
              Width = 72
              Height = 13
              Size.Values = (
                34.395833333333330000
                920.750000000000000000
                2.645833333333333000
                190.500000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(qPowerSales.RES2)'
              Mask = '###,###,##0.00 '
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr32: TQRExpr
              Left = 523
              Top = 1
              Width = 74
              Height = 13
              Size.Values = (
                34.395833333333330000
                1383.770833333333000000
                2.645833333333333000
                195.791666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(qPowerSales.LV2)'
              Mask = '###,###,##0.00 '
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr33: TQRExpr
              Left = 775
              Top = 1
              Width = 76
              Height = 13
              Size.Values = (
                34.395833333333330000
                2050.520833333333000000
                2.645833333333333000
                201.083333333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(qPowerSales.HV2)'
              Mask = '###,###,##0.00 '
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr34: TQRExpr
              Left = 1087
              Top = -1
              Width = 68
              Height = 13
              Size.Values = (
                34.395833333333330000
                2876.020833333333000000
                -2.645833333333333000
                179.916666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(qPowerSales.TotalAmount2) '
              Mask = '###,###,##0.00 '
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel55: TQRLabel
              Left = 61
              Top = 1
              Width = 29
              Height = 14
              Size.Values = (
                37.041666666666670000
                161.395833333333300000
                2.645833333333333000
                76.729166666666670000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taLeftJustify
              AlignToBand = False
              Caption = 'TOTAL'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape161: TQRShape
              Tag = 1000
              Left = 1153
              Top = 0
              Width = 2
              Height = 12
              Size.Values = (
                31.750000000000000000
                3050.645833333333000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
          end
          object QRBand4: TQRBand
            Left = 24
            Top = 24
            Width = 1200
            Height = 76
            AlignToBottom = False
            BeforePrint = QRBand4BeforePrint
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              201.083333333333300000
              3175.000000000000000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbTitle
            object QRLabel56: TQRLabel
              Left = 421
              Top = 5
              Width = 357
              Height = 17
              Size.Values = (
                44.979166666666670000
                1113.895833333333000000
                13.229166666666670000
                944.562500000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = True
              Caption = 'ZAMBOANGA DEL NORTE ELECTRIC COOPERATIVE, INC.'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 10
            end
            object qrlCUFDMonth: TQRLabel
              Left = 576
              Top = 60
              Width = 48
              Height = 15
              Size.Values = (
                39.687500000000000000
                1524.000000000000000000
                158.750000000000000000
                127.000000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = True
              Caption = 'QRLabel1'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRLabel58: TQRLabel
              Left = 509
              Top = 45
              Width = 182
              Height = 15
              Size.Values = (
                39.687500000000000000
                1346.729166666667000000
                119.062500000000000000
                481.541666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = True
              Caption = 'UNBUNDLED POWER SALES REPORT'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRLabel59: TQRLabel
              Left = 528
              Top = 24
              Width = 144
              Height = 15
              Size.Values = (
                39.687500000000000000
                1397.000000000000000000
                63.500000000000000000
                381.000000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = True
              Caption = 'General Luna St., Dipolog City'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
          end
        end
      end
      object tsCurrentSubsidiary: TTabSheet
        Caption = 'tsCurrentSubsidiary'
        ImageIndex = 2
        object qrCurrentSubsidiary: TQuickRep
          Left = -128
          Top = 23
          Width = 1248
          Height = 816
          DataSet = qPowerSales
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
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
          Page.PaperSize = FanfoldGerLegal
          Page.Continuous = False
          Page.Values = (
            63.500000000000000000
            2159.000000000000000000
            63.500000000000000000
            3302.000000000000000000
            63.500000000000000000
            63.500000000000000000
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
          PrinterSettings.MemoryLimit = 1000000
          PrinterSettings.PrintQuality = 0
          PrinterSettings.Collate = 0
          PrinterSettings.ColorOption = 0
          PrintIfEmpty = False
          SnapToGrid = True
          Units = Inches
          Zoom = 100
          PrevFormStyle = fsNormal
          PreviewInitialState = wsMaximized
          PrevInitialZoom = qrZoomToWidth
          PreviewDefaultSaveType = stQRP
          PreviewLeft = 0
          PreviewTop = 0
          object QRBand5: TQRBand
            Left = 24
            Top = 109
            Width = 1200
            Height = 45
            Frame.DrawTop = True
            Frame.DrawLeft = True
            Frame.DrawRight = True
            AlignToBottom = False
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              119.062500000000000000
              3175.000000000000000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbColumnHeader
            object QRLabel32: TQRLabel
              Left = 57
              Top = 15
              Width = 36
              Height = 14
              Size.Values = (
                37.041666666666670000
                150.812500000000000000
                39.687500000000000000
                95.250000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taLeftJustify
              AlignToBand = False
              Caption = 'Charges'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape38: TQRShape
              Tag = 1000
              Left = 155
              Top = 0
              Width = 2
              Height = 30
              Size.Values = (
                79.375000000000000000
                410.104166666666700000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape74: TQRShape
              Left = 156
              Top = 13
              Width = 1043
              Height = 2
              Size.Values = (
                5.291666666666667000
                412.750000000000000000
                34.395833333333330000
                2759.604166666667000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsHorLine
              VertAdjust = 0
            end
            object QRLabel60: TQRLabel
              Left = 158
              Top = 15
              Width = 52
              Height = 24
              Size.Values = (
                64.255952380952380000
                417.663690476190500000
                39.687500000000000000
                137.961309523809500000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'No. of Consumers'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape109: TQRShape
              Left = 210
              Top = 15
              Width = 2
              Height = 28
              Size.Values = (
                73.705357142857140000
                555.625000000000000000
                39.687500000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel61: TQRLabel
              Left = 213
              Top = 15
              Width = 43
              Height = 24
              Size.Values = (
                64.255952380952380000
                563.184523809523800000
                39.687500000000000000
                113.392857142857100000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'Minimum Bills'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape110: TQRShape
              Left = 256
              Top = 15
              Width = 2
              Height = 28
              Size.Values = (
                73.705357142857140000
                676.577380952381100000
                39.687500000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel62: TQRLabel
              Left = 259
              Top = 15
              Width = 41
              Height = 24
              Size.Values = (
                64.255952380952380000
                684.136904761904800000
                39.687500000000000000
                107.723214285714300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'Minimum KWHr'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape111: TQRShape
              Left = 300
              Top = 15
              Width = 2
              Height = 28
              Size.Values = (
                73.705357142857140000
                793.750000000000000000
                39.687500000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel63: TQRLabel
              Left = 303
              Top = 22
              Width = 53
              Height = 13
              Size.Values = (
                34.017857142857140000
                801.309523809523800000
                58.586309523809520000
                139.851190476190500000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'KWHr'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape112: TQRShape
              Left = 356
              Top = 15
              Width = 2
              Height = 28
              Size.Values = (
                73.705357142857140000
                941.160714285714300000
                39.687500000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel64: TQRLabel
              Left = 364
              Top = 22
              Width = 62
              Height = 13
              Size.Values = (
                34.017857142857140000
                963.839285714285700000
                58.586309523809520000
                164.419642857142900000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'Amount'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape113: TQRShape
              Tag = 1000
              Left = 429
              Top = 2
              Width = 2
              Height = 30
              Size.Values = (
                79.375000000000000000
                1135.062500000000000000
                5.291666666666667000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel65: TQRLabel
              Left = 489
              Top = 22
              Width = 53
              Height = 13
              Size.Values = (
                34.017857142857140000
                1294.568452380952000000
                58.586309523809520000
                139.851190476190500000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'KWHr'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape114: TQRShape
              Left = 542
              Top = 15
              Width = 2
              Height = 28
              Size.Values = (
                73.705357142857140000
                1434.419642857143000000
                39.687500000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel66: TQRLabel
              Left = 544
              Top = 22
              Width = 62
              Height = 13
              Size.Values = (
                34.017857142857140000
                1438.199404761905000000
                58.586309523809520000
                164.419642857142900000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'Amount'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape115: TQRShape
              Tag = 1000
              Left = 617
              Top = 0
              Width = 2
              Height = 30
              Size.Values = (
                79.375000000000000000
                1632.857142857143000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel67: TQRLabel
              Left = 434
              Top = 15
              Width = 52
              Height = 24
              Size.Values = (
                64.255952380952380000
                1147.157738095238000000
                39.687500000000000000
                137.961309523809500000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'No. of Consumers'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape116: TQRShape
              Left = 486
              Top = 15
              Width = 2
              Height = 28
              Size.Values = (
                73.705357142857140000
                1287.008928571429000000
                39.687500000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel68: TQRLabel
              Left = 680
              Top = 22
              Width = 53
              Height = 13
              Size.Values = (
                34.017857142857140000
                1799.166666666667000000
                58.586309523809520000
                139.851190476190500000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'KWHr'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape117: TQRShape
              Left = 736
              Top = 15
              Width = 2
              Height = 28
              Size.Values = (
                73.705357142857140000
                1946.577380952381000000
                39.687500000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel69: TQRLabel
              Left = 802
              Top = 22
              Width = 62
              Height = 13
              Size.Values = (
                34.017857142857140000
                2122.336309523810000000
                58.586309523809520000
                164.419642857142900000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'Amount'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape118: TQRShape
              Tag = 1000
              Left = 876
              Top = 0
              Width = 2
              Height = 30
              Size.Values = (
                79.375000000000000000
                2318.883928571429000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel70: TQRLabel
              Left = 620
              Top = 15
              Width = 52
              Height = 24
              Size.Values = (
                64.255952380952380000
                1640.416666666667000000
                39.687500000000000000
                137.961309523809500000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'No. of Consumers'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape119: TQRShape
              Left = 675
              Top = 15
              Width = 2
              Height = 28
              Size.Values = (
                73.705357142857140000
                1785.937500000000000000
                39.687500000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel71: TQRLabel
              Left = 741
              Top = 22
              Width = 53
              Height = 13
              Size.Values = (
                34.017857142857140000
                1959.806547619048000000
                58.586309523809520000
                139.851190476190500000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'KW Dmd.'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape120: TQRShape
              Left = 799
              Top = 15
              Width = 2
              Height = 28
              Size.Values = (
                73.705357142857140000
                2112.886904761905000000
                39.687500000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel72: TQRLabel
              Left = 1011
              Top = 22
              Width = 53
              Height = 15
              Size.Values = (
                39.687500000000000000
                2674.181547619048000000
                58.586309523809520000
                139.851190476190500000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'KWHr'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape121: TQRShape
              Left = 1066
              Top = 15
              Width = 2
              Height = 28
              Size.Values = (
                73.705357142857140000
                2821.592261904762000000
                39.687500000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel73: TQRLabel
              Left = 1133
              Top = 22
              Width = 62
              Height = 15
              Size.Values = (
                39.687500000000000000
                2997.729166666667000000
                58.208333333333320000
                164.041666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'Amount'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel74: TQRLabel
              Left = 879
              Top = 15
              Width = 62
              Height = 24
              Size.Values = (
                64.255952380952380000
                2324.553571428571000000
                39.687500000000000000
                164.419642857142900000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'No. of Consumers'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape122: TQRShape
              Left = 941
              Top = 15
              Width = 2
              Height = 28
              Size.Values = (
                73.705357142857140000
                2490.863095238095000000
                39.687500000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel75: TQRLabel
              Left = 1071
              Top = 22
              Width = 53
              Height = 15
              Size.Values = (
                39.687500000000000000
                2834.821428571429000000
                58.586309523809520000
                139.851190476190500000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'KW Dmd.'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape123: TQRShape
              Left = 1129
              Top = 15
              Width = 2
              Height = 28
              Size.Values = (
                73.705357142857140000
                2987.901785714286000000
                39.687500000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel76: TQRLabel
              Left = 951
              Top = 15
              Width = 43
              Height = 24
              Size.Values = (
                64.255952380952380000
                2515.431547619048000000
                39.687500000000000000
                113.392857142857100000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'Minimum Bills'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape124: TQRShape
              Left = 999
              Top = 15
              Width = 2
              Height = 28
              Size.Values = (
                73.705357142857140000
                2642.053571428571000000
                39.687500000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel77: TQRLabel
              Left = 156
              Top = 1
              Width = 274
              Height = 13
              Size.Values = (
                34.395833333333330000
                412.750000000000000000
                2.645833333333333000
                724.958333333333200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'Residential'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel78: TQRLabel
              Left = 431
              Top = 1
              Width = 186
              Height = 13
              Size.Values = (
                34.395833333333330000
                1140.354166666667000000
                2.645833333333333000
                492.125000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'Low Voltage'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel79: TQRLabel
              Left = 619
              Top = 1
              Width = 259
              Height = 13
              Size.Values = (
                34.395833333333330000
                1637.770833333333000000
                2.645833333333333000
                685.270833333333200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'High Voltage'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel80: TQRLabel
              Left = 878
              Top = 1
              Width = 321
              Height = 13
              Size.Values = (
                34.395833333333330000
                2323.041666666667000000
                2.645833333333333000
                849.312500000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'TOTAL'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
          end
          object QRBand6: TQRBand
            Left = 24
            Top = 154
            Width = 1200
            Height = 12
            Frame.DrawTop = True
            Frame.DrawLeft = True
            Frame.DrawRight = True
            AlignToBottom = False
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              31.750000000000000000
              3175.000000000000000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbDetail
            object QRShape125: TQRShape
              Tag = 1000
              Left = 161
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                55.562500000000000000
                425.979166666666700000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape126: TQRShape
              Tag = 1000
              Left = 210
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                56.696428571428570000
                555.625000000000000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape127: TQRShape
              Tag = 1000
              Left = 256
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                56.696428571428570000
                676.577380952381100000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape128: TQRShape
              Tag = 1000
              Left = 300
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                56.696428571428570000
                793.750000000000000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape129: TQRShape
              Tag = 1000
              Left = 356
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                56.696428571428570000
                941.160714285714300000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape130: TQRShape
              Tag = 1000
              Left = 429
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                56.696428571428570000
                1135.818452380952000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape131: TQRShape
              Tag = 1000
              Left = 542
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                56.696428571428570000
                1434.419642857143000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape132: TQRShape
              Tag = 1000
              Left = 617
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                56.696428571428570000
                1632.857142857143000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape133: TQRShape
              Tag = 1000
              Left = 486
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                56.696428571428570000
                1287.008928571429000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape134: TQRShape
              Tag = 1000
              Left = 736
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                56.696428571428570000
                1946.577380952381000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape135: TQRShape
              Tag = 1000
              Left = 876
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                54.806547619047620000
                2318.883928571429000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape136: TQRShape
              Tag = 1000
              Left = 675
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                56.696428571428570000
                1785.937500000000000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape137: TQRShape
              Tag = 1000
              Left = 799
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                54.806547619047620000
                2112.886904761905000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape138: TQRShape
              Tag = 1000
              Left = 1066
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                54.806547619047620000
                2821.592261904762000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape139: TQRShape
              Tag = 1000
              Left = 941
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                54.806547619047620000
                2490.863095238095000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape140: TQRShape
              Tag = 1000
              Left = 1129
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                54.806547619047620000
                2987.901785714286000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape141: TQRShape
              Tag = 1000
              Left = 999
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                54.806547619047620000
                2642.053571428571000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRDBText20: TQRDBText
              Left = 1
              Top = 1
              Width = 154
              Height = 13
              Size.Values = (
                34.395833333333330000
                2.645833333333333000
                2.645833333333333000
                407.458333333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSales
              DataField = 'desc'
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText39: TQRDBText
              Left = 156
              Top = 1
              Width = 54
              Height = 13
              Size.Values = (
                34.395833333333330000
                412.750000000000000000
                2.645833333333333000
                142.875000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSales
              DataField = 'resBills'
              Mask = '#,###.#0'
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText40: TQRDBText
              Left = 211
              Top = 1
              Width = 44
              Height = 13
              Size.Values = (
                34.395833333333330000
                558.270833333333300000
                2.645833333333333000
                116.416666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSales
              DataField = 'resLLBills'
              Mask = '###,##0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText41: TQRDBText
              Left = 257
              Top = 1
              Width = 43
              Height = 13
              Size.Values = (
                34.395833333333330000
                679.979166666666800000
                2.645833333333333000
                113.770833333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSales
              DataField = 'resLLKwhr'
              Mask = '###,##0.0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText42: TQRDBText
              Left = 301
              Top = 1
              Width = 54
              Height = 13
              Size.Values = (
                34.395833333333330000
                796.395833333333200000
                2.645833333333333000
                142.875000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSales
              DataField = 'resKwhr'
              Mask = '###,###,##0.0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText43: TQRDBText
              Left = 357
              Top = 1
              Width = 72
              Height = 13
              Size.Values = (
                34.395833333333330000
                944.562500000000000000
                2.645833333333333000
                190.500000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSales
              DataField = 'RES'
              Mask = '#,###.#0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText44: TQRDBText
              Left = 431
              Top = 1
              Width = 56
              Height = 13
              Size.Values = (
                34.395833333333330000
                1140.354166666667000000
                2.645833333333333000
                148.166666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSales
              DataField = 'LVBills'
              Mask = '###,##0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText45: TQRDBText
              Left = 489
              Top = 1
              Width = 54
              Height = 13
              Size.Values = (
                34.395833333333330000
                1293.812500000000000000
                2.645833333333333000
                142.875000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSales
              DataField = 'LVKwhr'
              Mask = '###,##0.0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText46: TQRDBText
              Left = 544
              Top = 1
              Width = 74
              Height = 13
              Size.Values = (
                34.395833333333330000
                1439.333333333333000000
                2.645833333333333000
                195.791666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSales
              DataField = 'LV'
              Mask = '###,###,##0.00 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText47: TQRDBText
              Left = 800
              Top = 1
              Width = 76
              Height = 13
              Size.Values = (
                34.395833333333330000
                2116.666666666667000000
                2.645833333333333000
                201.083333333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSales
              DataField = 'HV'
              Mask = '###,###,##0.00 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText48: TQRDBText
              Left = 677
              Top = 1
              Width = 59
              Height = 13
              Size.Values = (
                34.395833333333330000
                1791.229166666667000000
                2.645833333333333000
                156.104166666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSales
              DataField = 'HVKwhr'
              Mask = '###,##0.0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText49: TQRDBText
              Left = 619
              Top = 1
              Width = 56
              Height = 13
              Size.Values = (
                34.395833333333330000
                1637.770833333333000000
                2.645833333333333000
                148.166666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSales
              DataField = 'HVBills'
              Mask = '###,##0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText50: TQRDBText
              Left = 737
              Top = 1
              Width = 61
              Height = 13
              Size.Values = (
                34.395833333333330000
                1949.979166666667000000
                2.645833333333333000
                161.395833333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSales
              DataField = 'HVKwhrd'
              Mask = '###,##0.0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText51: TQRDBText
              Left = 1131
              Top = 1
              Width = 68
              Height = 13
              Size.Values = (
                34.395833333333330000
                2992.437500000000000000
                2.645833333333333000
                179.916666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSales
              DataField = 'TotalAmount'
              Mask = '###,###,##0.00 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText52: TQRDBText
              Left = 1000
              Top = 1
              Width = 66
              Height = 13
              Size.Values = (
                34.395833333333330000
                2645.833333333333000000
                2.645833333333333000
                174.625000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSales
              DataField = 'TotalKwhr'
              Mask = '###,##0.0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText53: TQRDBText
              Left = 943
              Top = 1
              Width = 56
              Height = 13
              Size.Values = (
                34.395833333333330000
                2495.020833333333000000
                2.645833333333333000
                148.166666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSales
              DataField = 'resLLBills'
              Mask = '###,###,##0.00 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText54: TQRDBText
              Left = 878
              Top = 1
              Width = 64
              Height = 13
              Size.Values = (
                34.395833333333330000
                2323.041666666667000000
                2.645833333333333000
                169.333333333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSales
              DataField = 'numBills'
              Mask = '###,##0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText55: TQRDBText
              Left = 1068
              Top = 1
              Width = 61
              Height = 13
              Size.Values = (
                34.395833333333330000
                2825.750000000000000000
                2.645833333333333000
                161.395833333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSales
              DataField = 'TotalKwhrD'
              Mask = '###,##0.0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
          end
          object QRBand7: TQRBand
            Left = 24
            Top = 166
            Width = 1200
            Height = 12
            Frame.DrawTop = True
            Frame.DrawBottom = True
            Frame.DrawLeft = True
            Frame.DrawRight = True
            AlignToBottom = False
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              31.750000000000000000
              3175.000000000000000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbSummary
            object QRShape142: TQRShape
              Tag = 1000
              Left = 155
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.898809523809520000
                410.104166666666700000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape143: TQRShape
              Tag = 1000
              Left = 210
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.898809523809520000
                555.625000000000000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape144: TQRShape
              Tag = 1000
              Left = 256
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.898809523809520000
                676.577380952381100000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape145: TQRShape
              Tag = 1000
              Left = 300
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.898809523809520000
                793.750000000000000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape146: TQRShape
              Tag = 1000
              Left = 356
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.898809523809520000
                941.160714285714300000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape147: TQRShape
              Tag = 1000
              Left = 429
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.898809523809520000
                1135.818452380952000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape148: TQRShape
              Tag = 1000
              Left = 542
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.898809523809520000
                1434.419642857143000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape149: TQRShape
              Tag = 1000
              Left = 617
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.898809523809520000
                1632.857142857143000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape150: TQRShape
              Tag = 1000
              Left = 486
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.898809523809520000
                1287.008928571429000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape151: TQRShape
              Tag = 1000
              Left = 736
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.898809523809520000
                1946.577380952381000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape152: TQRShape
              Tag = 1000
              Left = 876
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.898809523809520000
                2318.883928571429000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape153: TQRShape
              Tag = 1000
              Left = 675
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.898809523809520000
                1785.937500000000000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape154: TQRShape
              Tag = 1000
              Left = 799
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.898809523809520000
                2112.886904761905000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape155: TQRShape
              Tag = 1000
              Left = 1066
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.898809523809520000
                2821.592261904762000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape156: TQRShape
              Tag = 1000
              Left = 941
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.898809523809520000
                2490.863095238095000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape157: TQRShape
              Tag = 1000
              Left = 1129
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.898809523809520000
                2987.901785714286000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape158: TQRShape
              Tag = 1000
              Left = 999
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.898809523809520000
                2642.053571428571000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRExpr18: TQRExpr
              Left = 357
              Top = 1
              Width = 72
              Height = 13
              Size.Values = (
                34.395833333333330000
                944.562500000000000000
                2.645833333333333000
                190.500000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(qpowersales.res2)'
              Mask = '###,###,##0.00 '
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr19: TQRExpr
              Left = 544
              Top = 1
              Width = 74
              Height = 13
              Size.Values = (
                34.395833333333330000
                1439.333333333333000000
                2.645833333333333000
                195.791666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(qPowerSales.LV2)'
              Mask = '###,###,##0.00 '
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr20: TQRExpr
              Left = 800
              Top = 1
              Width = 76
              Height = 13
              Size.Values = (
                34.395833333333330000
                2116.666666666667000000
                2.645833333333333000
                201.083333333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(qPowerSales.HV2)'
              Mask = '###,###,##0.00 '
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr21: TQRExpr
              Left = 1131
              Top = 1
              Width = 68
              Height = 13
              Size.Values = (
                34.395833333333330000
                2992.437500000000000000
                2.645833333333333000
                179.916666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(qPowerSales.TotalAmount2)'
              Mask = '###,###,##0.00 '
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel81: TQRLabel
              Left = 61
              Top = 1
              Width = 29
              Height = 14
              Size.Values = (
                37.041666666666670000
                161.395833333333300000
                2.645833333333333000
                76.729166666666670000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taLeftJustify
              AlignToBand = False
              Caption = 'TOTAL'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
          end
          object QRBand8: TQRBand
            Left = 24
            Top = 24
            Width = 1200
            Height = 85
            AlignToBottom = False
            BeforePrint = QRBand8BeforePrint
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              224.895833333333300000
              3175.000000000000000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbTitle
            object QRLabel82: TQRLabel
              Left = 421
              Top = 5
              Width = 357
              Height = 17
              Size.Values = (
                44.979166666666670000
                1113.895833333333000000
                13.229166666666670000
                944.562500000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = True
              Caption = 'ZAMBOANGA DEL NORTE ELECTRIC COOPERATIVE, INC.'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 10
            end
            object qrlCSuFDMonth: TQRLabel
              Left = 576
              Top = 72
              Width = 48
              Height = 15
              Size.Values = (
                39.687500000000000000
                1524.000000000000000000
                190.500000000000000000
                127.000000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = True
              Caption = 'QRLabel1'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRLabel84: TQRLabel
              Left = 528
              Top = 45
              Width = 143
              Height = 15
              Size.Values = (
                39.687500000000000000
                1397.000000000000000000
                119.062500000000000000
                378.354166666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = True
              Caption = 'SUBSIDIARY SALES REPORT'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRLabel85: TQRLabel
              Left = 528
              Top = 24
              Width = 144
              Height = 15
              Size.Values = (
                39.687500000000000000
                1397.000000000000000000
                63.500000000000000000
                381.000000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = True
              Caption = 'General Luna St., Dipolog City'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object qrlCSuMunicipality: TQRLabel
              Left = 528
              Top = 59
              Width = 143
              Height = 15
              Size.Values = (
                39.687500000000000000
                1397.000000000000000000
                156.104166666666700000
                378.354166666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = True
              Caption = 'SUBSIDIARY SALES REPORT'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
          end
        end
      end
      object tsLateSummary: TTabSheet
        Caption = 'tsLateSummary'
        ImageIndex = 3
        object qrLateSummary: TQuickRep
          Left = -105
          Top = -14
          Width = 1747
          Height = 1142
          DataSet = qPowerSalesLate
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
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
          Page.PaperSize = FanfoldGerLegal
          Page.Continuous = False
          Page.Values = (
            127.000000000000000000
            2159.000000000000000000
            127.000000000000000000
            3302.000000000000000000
            63.500000000000000000
            63.500000000000000000
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
          PrinterSettings.MemoryLimit = 1000000
          PrinterSettings.PrintQuality = 0
          PrinterSettings.Collate = 0
          PrinterSettings.ColorOption = 0
          PrintIfEmpty = True
          SnapToGrid = True
          Units = Inches
          Zoom = 140
          PrevFormStyle = fsNormal
          PreviewInitialState = wsMaximized
          PrevInitialZoom = qrZoomToWidth
          PreviewDefaultSaveType = stQRP
          PreviewLeft = 0
          PreviewTop = 0
          object QRBand17: TQRBand
            Left = 34
            Top = 173
            Width = 1680
            Height = 63
            Frame.DrawTop = True
            Frame.DrawLeft = True
            Frame.DrawRight = True
            AlignToBottom = False
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              119.062500000000000000
              3175.000000000000000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbColumnHeader
            object QRLabel139: TQRLabel
              Left = 6
              Top = 21
              Width = 28
              Height = 20
              Size.Values = (
                37.797619047619050000
                11.339285714285710000
                39.687500000000000000
                52.916666666666670000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taLeftJustify
              AlignToBand = False
              Caption = 'Area'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape269: TQRShape
              Tag = 1000
              Left = 42
              Top = 0
              Width = 3
              Height = 42
              Size.Values = (
                79.375000000000000000
                79.375000000000000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel140: TQRLabel
              Left = 63
              Top = 21
              Width = 70
              Height = 20
              Size.Values = (
                37.797619047619050000
                119.062500000000000000
                39.687500000000000000
                132.291666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taLeftJustify
              AlignToBand = False
              Caption = 'Municipality'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape270: TQRShape
              Tag = 1000
              Left = 153
              Top = 0
              Width = 3
              Height = 42
              Size.Values = (
                79.375000000000000000
                288.395833333333300000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape271: TQRShape
              Left = 157
              Top = 18
              Width = 1522
              Height = 3
              Size.Values = (
                5.291666666666667000
                296.333333333333300000
                34.395833333333330000
                2876.020833333333000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsHorLine
              VertAdjust = 0
            end
            object QRLabel141: TQRLabel
              Left = 157
              Top = 21
              Width = 73
              Height = 34
              Size.Values = (
                63.500000000000000000
                296.333333333333300000
                39.687500000000000000
                137.583333333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'No. of Consumers'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape272: TQRShape
              Left = 230
              Top = 21
              Width = 3
              Height = 39
              Size.Values = (
                74.083333333333320000
                433.916666666666700000
                39.687500000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel142: TQRLabel
              Left = 234
              Top = 21
              Width = 60
              Height = 34
              Size.Values = (
                63.500000000000000000
                441.854166666666700000
                39.687500000000000000
                113.770833333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'Minimum Bills'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape273: TQRShape
              Left = 294
              Top = 21
              Width = 3
              Height = 39
              Size.Values = (
                74.083333333333320000
                555.625000000000000000
                39.687500000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel143: TQRLabel
              Left = 298
              Top = 21
              Width = 57
              Height = 34
              Size.Values = (
                63.500000000000000000
                563.562500000000000000
                39.687500000000000000
                108.479166666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'Minimum KWHr'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape274: TQRShape
              Left = 356
              Top = 21
              Width = 3
              Height = 39
              Size.Values = (
                74.083333333333320000
                672.041666666666800000
                39.687500000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel144: TQRLabel
              Left = 360
              Top = 31
              Width = 74
              Height = 18
              Size.Values = (
                34.395833333333330000
                679.979166666666800000
                58.208333333333320000
                140.229166666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'KWHr'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape275: TQRShape
              Left = 434
              Top = 21
              Width = 3
              Height = 39
              Size.Values = (
                74.083333333333320000
                820.208333333333200000
                39.687500000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel145: TQRLabel
              Left = 454
              Top = 31
              Width = 87
              Height = 18
              Size.Values = (
                34.395833333333330000
                857.250000000000000000
                58.208333333333320000
                164.041666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'Amount'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape276: TQRShape
              Tag = 1000
              Left = 553
              Top = 0
              Width = 3
              Height = 42
              Size.Values = (
                79.375000000000000000
                1045.104166666667000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel146: TQRLabel
              Left = 637
              Top = 31
              Width = 74
              Height = 18
              Size.Values = (
                34.395833333333330000
                1203.854166666667000000
                58.208333333333320000
                140.229166666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'KWHr'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape277: TQRShape
              Left = 711
              Top = 21
              Width = 3
              Height = 39
              Size.Values = (
                74.083333333333320000
                1344.083333333333000000
                39.687500000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel147: TQRLabel
              Left = 729
              Top = 31
              Width = 87
              Height = 18
              Size.Values = (
                34.395833333333330000
                1378.479166666667000000
                58.208333333333320000
                164.041666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'Amount'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape278: TQRShape
              Tag = 1000
              Left = 832
              Top = 0
              Width = 3
              Height = 42
              Size.Values = (
                79.375000000000000000
                1571.625000000000000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel148: TQRLabel
              Left = 559
              Top = 21
              Width = 73
              Height = 34
              Size.Values = (
                63.500000000000000000
                1055.687500000000000000
                39.687500000000000000
                137.583333333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'No. of Consumers'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape279: TQRShape
              Left = 633
              Top = 21
              Width = 3
              Height = 39
              Size.Values = (
                74.083333333333320000
                1195.916666666667000000
                39.687500000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel149: TQRLabel
              Left = 920
              Top = 31
              Width = 74
              Height = 18
              Size.Values = (
                34.395833333333330000
                1738.312500000000000000
                58.208333333333320000
                140.229166666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'KWHr'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape280: TQRShape
              Left = 998
              Top = 21
              Width = 3
              Height = 39
              Size.Values = (
                74.083333333333320000
                1886.479166666667000000
                39.687500000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel150: TQRLabel
              Left = 1107
              Top = 31
              Width = 87
              Height = 18
              Size.Values = (
                34.395833333333330000
                2092.854166666667000000
                58.208333333333320000
                164.041666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'Amount'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape281: TQRShape
              Tag = 1000
              Left = 1211
              Top = 0
              Width = 3
              Height = 42
              Size.Values = (
                79.375000000000000000
                2288.645833333333000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel151: TQRLabel
              Left = 836
              Top = 21
              Width = 73
              Height = 34
              Size.Values = (
                63.500000000000000000
                1579.562500000000000000
                39.687500000000000000
                137.583333333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'No. of Consumers'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape282: TQRShape
              Left = 913
              Top = 21
              Width = 3
              Height = 39
              Size.Values = (
                74.083333333333320000
                1725.083333333333000000
                39.687500000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel152: TQRLabel
              Left = 1005
              Top = 31
              Width = 74
              Height = 18
              Size.Values = (
                34.395833333333330000
                1899.708333333333000000
                58.208333333333320000
                140.229166666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'KW Dmd.'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape283: TQRShape
              Left = 1086
              Top = 21
              Width = 3
              Height = 39
              Size.Values = (
                74.083333333333320000
                2053.166666666667000000
                39.687500000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel153: TQRLabel
              Left = 1399
              Top = 31
              Width = 74
              Height = 21
              Size.Values = (
                39.687500000000000000
                2643.187500000000000000
                58.208333333333320000
                140.229166666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'KWHr'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape284: TQRShape
              Left = 1477
              Top = 21
              Width = 3
              Height = 39
              Size.Values = (
                74.083333333333320000
                2791.354166666667000000
                39.687500000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel154: TQRLabel
              Left = 1586
              Top = 31
              Width = 87
              Height = 21
              Size.Values = (
                39.687500000000000000
                2997.729166666667000000
                58.208333333333320000
                164.041666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'Amount'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel155: TQRLabel
              Left = 1214
              Top = 21
              Width = 87
              Height = 34
              Size.Values = (
                63.500000000000000000
                2293.937500000000000000
                39.687500000000000000
                164.041666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'No. of Consumers'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape285: TQRShape
              Left = 1302
              Top = 21
              Width = 3
              Height = 39
              Size.Values = (
                74.083333333333320000
                2460.625000000000000000
                39.687500000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel156: TQRLabel
              Left = 1484
              Top = 31
              Width = 74
              Height = 21
              Size.Values = (
                39.687500000000000000
                2804.583333333333000000
                58.208333333333320000
                140.229166666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'KW Dmd.'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape286: TQRShape
              Left = 1565
              Top = 21
              Width = 3
              Height = 39
              Size.Values = (
                74.083333333333320000
                2958.041666666667000000
                39.687500000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel157: TQRLabel
              Left = 1315
              Top = 21
              Width = 60
              Height = 34
              Size.Values = (
                63.500000000000000000
                2484.437500000000000000
                39.687500000000000000
                113.770833333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'Minimum Bills'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape287: TQRShape
              Left = 1382
              Top = 21
              Width = 3
              Height = 39
              Size.Values = (
                74.083333333333320000
                2611.437500000000000000
                39.687500000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel158: TQRLabel
              Left = 154
              Top = 1
              Width = 400
              Height = 17
              Size.Values = (
                32.127976190476190000
                291.041666666666700000
                1.889880952380952000
                755.952380952381100000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'Residential'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel159: TQRLabel
              Left = 555
              Top = 1
              Width = 278
              Height = 17
              Size.Values = (
                32.127976190476190000
                1048.883928571429000000
                1.889880952380952000
                525.386904761904800000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'Low Voltage'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel160: TQRLabel
              Left = 834
              Top = 1
              Width = 378
              Height = 17
              Size.Values = (
                32.127976190476190000
                1576.160714285714000000
                1.889880952380952000
                714.375000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'High Voltage'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel161: TQRLabel
              Left = 1213
              Top = 1
              Width = 465
              Height = 17
              Size.Values = (
                32.127976190476190000
                2292.425595238095000000
                1.889880952380952000
                878.794642857142900000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'TOTAL'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
          end
          object QRBand18: TQRBand
            Left = 34
            Top = 236
            Width = 1680
            Height = 18
            Frame.DrawTop = True
            Frame.DrawLeft = True
            Frame.DrawRight = True
            AlignToBottom = False
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              34.017857142857140000
              3175.000000000000000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbDetail
            object QRShape288: TQRShape
              Tag = 1000
              Left = 42
              Top = 0
              Width = 3
              Height = 30
              Size.Values = (
                56.696428571428570000
                79.375000000000000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape289: TQRShape
              Tag = 1000
              Left = 153
              Top = 0
              Width = 3
              Height = 30
              Size.Values = (
                56.696428571428570000
                289.151785714285700000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape290: TQRShape
              Tag = 1000
              Left = 230
              Top = 0
              Width = 3
              Height = 30
              Size.Values = (
                56.696428571428570000
                434.672619047619000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape291: TQRShape
              Tag = 1000
              Left = 294
              Top = 0
              Width = 3
              Height = 30
              Size.Values = (
                56.696428571428570000
                555.625000000000000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape292: TQRShape
              Tag = 1000
              Left = 356
              Top = 0
              Width = 3
              Height = 30
              Size.Values = (
                56.696428571428570000
                672.797619047618900000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape293: TQRShape
              Tag = 1000
              Left = 434
              Top = 0
              Width = 3
              Height = 30
              Size.Values = (
                56.696428571428570000
                820.208333333333200000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape294: TQRShape
              Tag = 1000
              Left = 553
              Top = 0
              Width = 3
              Height = 30
              Size.Values = (
                56.696428571428570000
                1045.104166666667000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape295: TQRShape
              Tag = 1000
              Left = 711
              Top = 0
              Width = 3
              Height = 30
              Size.Values = (
                56.696428571428570000
                1343.705357142857000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape296: TQRShape
              Tag = 1000
              Left = 832
              Top = 0
              Width = 3
              Height = 30
              Size.Values = (
                56.696428571428570000
                1572.380952380952000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape297: TQRShape
              Tag = 1000
              Left = 633
              Top = 0
              Width = 3
              Height = 30
              Size.Values = (
                56.696428571428570000
                1196.294642857143000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape298: TQRShape
              Tag = 1000
              Left = 998
              Top = 0
              Width = 3
              Height = 30
              Size.Values = (
                56.696428571428570000
                1886.101190476190000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape299: TQRShape
              Tag = 1000
              Left = 1211
              Top = 0
              Width = 3
              Height = 29
              Size.Values = (
                55.562500000000000000
                2288.645833333333000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape300: TQRShape
              Tag = 1000
              Left = 913
              Top = 0
              Width = 3
              Height = 30
              Size.Values = (
                56.696428571428570000
                1725.461309523810000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape301: TQRShape
              Tag = 1000
              Left = 1086
              Top = 0
              Width = 3
              Height = 29
              Size.Values = (
                55.562500000000000000
                2053.166666666667000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape302: TQRShape
              Tag = 1000
              Left = 1477
              Top = 0
              Width = 3
              Height = 29
              Size.Values = (
                55.562500000000000000
                2791.354166666667000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape303: TQRShape
              Tag = 1000
              Left = 1302
              Top = 0
              Width = 3
              Height = 29
              Size.Values = (
                55.562500000000000000
                2460.625000000000000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape304: TQRShape
              Tag = 1000
              Left = 1565
              Top = 0
              Width = 3
              Height = 29
              Size.Values = (
                55.562500000000000000
                2958.041666666667000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape305: TQRShape
              Tag = 1000
              Left = 1382
              Top = 0
              Width = 3
              Height = 29
              Size.Values = (
                55.562500000000000000
                2611.437500000000000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRDBText92: TQRDBText
              Left = 1
              Top = 1
              Width = 42
              Height = 18
              Size.Values = (
                34.017857142857140000
                1.889880952380952000
                1.889880952380952000
                79.375000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSalesLate
              DataField = 'Area'
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText93: TQRDBText
              Left = 44
              Top = 1
              Width = 110
              Height = 18
              Size.Values = (
                34.017857142857140000
                83.154761904761890000
                1.889880952380952000
                207.886904761904800000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSalesLate
              DataField = 'Municipality'
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText94: TQRDBText
              Left = 155
              Top = 1
              Width = 75
              Height = 18
              Size.Values = (
                34.017857142857140000
                292.931547619047600000
                1.889880952380952000
                141.741071428571400000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSalesLate
              DataField = 'resCount'
              Mask = '###,##0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText95: TQRDBText
              Left = 232
              Top = 1
              Width = 62
              Height = 18
              Size.Values = (
                34.017857142857140000
                438.452380952381000000
                1.889880952380952000
                117.172619047619000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSalesLate
              DataField = 'resLLCount'
              Mask = '###,##0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText96: TQRDBText
              Left = 296
              Top = 1
              Width = 60
              Height = 18
              Size.Values = (
                34.017857142857140000
                559.404761904761900000
                1.889880952380952000
                113.392857142857100000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSalesLate
              DataField = 'resLLKwhr'
              Mask = '###,##0.0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText97: TQRDBText
              Left = 358
              Top = 1
              Width = 76
              Height = 18
              Size.Values = (
                34.017857142857140000
                676.577380952381100000
                1.889880952380952000
                143.630952380952400000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSalesLate
              DataField = 'resKwhr'
              Mask = '###,###,##0.0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText98: TQRDBText
              Left = 436
              Top = 1
              Width = 117
              Height = 18
              Size.Values = (
                34.017857142857140000
                823.988095238095200000
                1.889880952380952000
                221.116071428571400000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSalesLate
              DataField = 'resAmount'
              Mask = '###,###,##0.00 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText99: TQRDBText
              Left = 555
              Top = 1
              Width = 78
              Height = 18
              Size.Values = (
                34.017857142857140000
                1048.883928571429000000
                1.889880952380952000
                147.410714285714300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSalesLate
              DataField = 'LVCount'
              Mask = '###,##0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText100: TQRDBText
              Left = 636
              Top = 1
              Width = 75
              Height = 18
              Size.Values = (
                34.017857142857140000
                1201.964285714286000000
                1.889880952380952000
                141.741071428571400000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSalesLate
              DataField = 'LVKwhr'
              Mask = '###,##0.0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText101: TQRDBText
              Left = 713
              Top = 1
              Width = 119
              Height = 18
              Size.Values = (
                34.017857142857140000
                1347.485119047619000000
                1.889880952380952000
                224.895833333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSalesLate
              DataField = 'LVAmount'
              Mask = '###,###,##0.00 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText102: TQRDBText
              Left = 1088
              Top = 1
              Width = 123
              Height = 18
              Size.Values = (
                34.017857142857140000
                2056.190476190476000000
                1.889880952380952000
                232.455357142857100000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSalesLate
              DataField = 'HVAmount'
              Mask = '###,###,##0.00 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText103: TQRDBText
              Left = 916
              Top = 1
              Width = 82
              Height = 18
              Size.Values = (
                34.017857142857140000
                1731.130952380952000000
                1.889880952380952000
                154.970238095238100000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSalesLate
              DataField = 'HVKwhr'
              Mask = '###,##0.0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText104: TQRDBText
              Left = 834
              Top = 1
              Width = 79
              Height = 18
              Size.Values = (
                34.017857142857140000
                1576.160714285714000000
                1.889880952380952000
                149.300595238095200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSalesLate
              DataField = 'HVCount'
              Mask = '###,##0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText105: TQRDBText
              Left = 1000
              Top = 1
              Width = 86
              Height = 18
              Size.Values = (
                34.017857142857140000
                1889.880952380952000000
                1.889880952380952000
                162.529761904761900000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSalesLate
              DataField = 'HVKwhrd'
              Mask = '###,##0.0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText106: TQRDBText
              Left = 1567
              Top = 1
              Width = 111
              Height = 18
              Size.Values = (
                34.017857142857140000
                2961.443452380952000000
                1.889880952380952000
                209.776785714285700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSalesLate
              DataField = 'TAmount'
              Mask = '###,###,##0.00 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText107: TQRDBText
              Left = 1384
              Top = 1
              Width = 93
              Height = 18
              Size.Values = (
                34.017857142857140000
                2615.595238095238000000
                1.889880952380952000
                175.758928571428600000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSalesLate
              DataField = 'TKwhr'
              Mask = '###,##0.0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText108: TQRDBText
              Left = 1304
              Top = 1
              Width = 78
              Height = 18
              Size.Values = (
                34.017857142857140000
                2464.404761904762000000
                1.889880952380952000
                147.410714285714300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSalesLate
              DataField = 'TLLCount'
              Mask = '###,###,##0.00 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText109: TQRDBText
              Left = 1213
              Top = 1
              Width = 89
              Height = 18
              Size.Values = (
                34.017857142857140000
                2292.425595238095000000
                1.889880952380952000
                168.199404761904800000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSalesLate
              DataField = 'TCount'
              Mask = '###,##0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText110: TQRDBText
              Left = 1479
              Top = 1
              Width = 86
              Height = 18
              Size.Values = (
                34.017857142857140000
                2795.133928571429000000
                1.889880952380952000
                162.529761904761900000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSalesLate
              DataField = 'TKwhrd'
              Mask = '###,##0.0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
          end
          object QRBand19: TQRBand
            Left = 34
            Top = 254
            Width = 1680
            Height = 18
            Frame.DrawTop = True
            Frame.DrawBottom = True
            Frame.DrawLeft = True
            Frame.DrawRight = True
            AlignToBottom = False
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              34.017857142857140000
              3175.000000000000000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbSummary
            object QRShape306: TQRShape
              Tag = 1000
              Left = 153
              Top = 0
              Width = 3
              Height = 10
              Size.Values = (
                18.898809523809520000
                289.151785714285700000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape307: TQRShape
              Tag = 1000
              Left = 230
              Top = 0
              Width = 3
              Height = 10
              Size.Values = (
                18.898809523809520000
                434.672619047619000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape308: TQRShape
              Tag = 1000
              Left = 294
              Top = 0
              Width = 3
              Height = 10
              Size.Values = (
                18.898809523809520000
                555.625000000000000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape309: TQRShape
              Tag = 1000
              Left = 356
              Top = 0
              Width = 3
              Height = 10
              Size.Values = (
                18.898809523809520000
                672.797619047618900000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape310: TQRShape
              Tag = 1000
              Left = 434
              Top = 0
              Width = 3
              Height = 10
              Size.Values = (
                18.898809523809520000
                820.208333333333200000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape311: TQRShape
              Tag = 1000
              Left = 553
              Top = 0
              Width = 3
              Height = 10
              Size.Values = (
                18.898809523809520000
                1045.104166666667000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape312: TQRShape
              Tag = 1000
              Left = 711
              Top = 0
              Width = 3
              Height = 10
              Size.Values = (
                18.898809523809520000
                1343.705357142857000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape313: TQRShape
              Tag = 1000
              Left = 832
              Top = 0
              Width = 3
              Height = 10
              Size.Values = (
                18.898809523809520000
                1572.380952380952000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape314: TQRShape
              Tag = 1000
              Left = 633
              Top = 0
              Width = 3
              Height = 10
              Size.Values = (
                18.898809523809520000
                1196.294642857143000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape315: TQRShape
              Tag = 1000
              Left = 998
              Top = 0
              Width = 3
              Height = 10
              Size.Values = (
                18.898809523809520000
                1886.101190476190000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape316: TQRShape
              Tag = 1000
              Left = 1211
              Top = 0
              Width = 3
              Height = 10
              Size.Values = (
                18.898809523809520000
                2288.645833333333000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape317: TQRShape
              Tag = 1000
              Left = 913
              Top = 0
              Width = 3
              Height = 10
              Size.Values = (
                18.898809523809520000
                1725.461309523810000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape318: TQRShape
              Tag = 1000
              Left = 1086
              Top = 0
              Width = 3
              Height = 10
              Size.Values = (
                18.898809523809520000
                2052.410714285714000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape319: TQRShape
              Tag = 1000
              Left = 1477
              Top = 0
              Width = 3
              Height = 10
              Size.Values = (
                18.898809523809520000
                2791.354166666667000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape320: TQRShape
              Tag = 1000
              Left = 1302
              Top = 0
              Width = 3
              Height = 10
              Size.Values = (
                18.898809523809520000
                2460.625000000000000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape321: TQRShape
              Tag = 1000
              Left = 1565
              Top = 0
              Width = 3
              Height = 10
              Size.Values = (
                18.898809523809520000
                2957.663690476190000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape322: TQRShape
              Tag = 1000
              Left = 1382
              Top = 0
              Width = 3
              Height = 10
              Size.Values = (
                18.898809523809520000
                2611.815476190476000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRExpr30: TQRExpr
              Left = 151
              Top = 1
              Width = 75
              Height = 17
              Size.Values = (
                32.127976190476190000
                285.372023809523800000
                1.889880952380952000
                141.741071428571400000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(qPowerSalesLate.resCount)'
              Mask = '#,###.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr35: TQRExpr
              Left = 232
              Top = 1
              Width = 62
              Height = 17
              Size.Values = (
                32.127976190476190000
                438.452380952381000000
                1.889880952380952000
                117.172619047619000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(qPowerSalesLate.resLLCount)'
              Mask = '#,###.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr36: TQRExpr
              Left = 555
              Top = 1
              Width = 78
              Height = 17
              Size.Values = (
                32.127976190476190000
                1048.883928571429000000
                1.889880952380952000
                147.410714285714300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(qPowerSalesLate.LVCount)'
              Mask = '#,###.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr37: TQRExpr
              Left = 834
              Top = 1
              Width = 79
              Height = 17
              Size.Values = (
                32.127976190476190000
                1576.160714285714000000
                1.889880952380952000
                149.300595238095200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(qPowerSalesLate.HVCount)'
              Mask = '#,###.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr38: TQRExpr
              Left = 1213
              Top = 1
              Width = 89
              Height = 17
              Size.Values = (
                32.127976190476190000
                2292.425595238095000000
                1.889880952380952000
                168.199404761904800000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(qPowerSalesLate.TCount)'
              Mask = '#,###.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr39: TQRExpr
              Left = 1304
              Top = 1
              Width = 78
              Height = 17
              Size.Values = (
                32.127976190476190000
                2464.404761904762000000
                1.889880952380952000
                147.410714285714300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(qPowerSalesLate.TLLCount)'
              Mask = '#,###.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr40: TQRExpr
              Left = 296
              Top = 1
              Width = 60
              Height = 17
              Size.Values = (
                32.127976190476190000
                559.404761904761900000
                1.889880952380952000
                113.392857142857100000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(qPowerSalesLate.resLLKwhr)'
              Mask = '#,###.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr41: TQRExpr
              Left = 358
              Top = 1
              Width = 76
              Height = 17
              Size.Values = (
                32.127976190476190000
                676.577380952381100000
                1.889880952380952000
                143.630952380952400000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(qPowerSalesLate.resKwhr)'
              Mask = '#,###.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr42: TQRExpr
              Left = 637
              Top = 1
              Width = 74
              Height = 17
              Size.Values = (
                32.127976190476190000
                1203.854166666667000000
                1.889880952380952000
                139.851190476190500000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(qPowerSalesLate.LVKwhr)'
              Mask = '#,###.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr43: TQRExpr
              Left = 916
              Top = 1
              Width = 82
              Height = 17
              Size.Values = (
                32.127976190476190000
                1731.130952380952000000
                1.889880952380952000
                154.970238095238100000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(qPowerSalesLate.HVKwhr)'
              Mask = '#,###.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr44: TQRExpr
              Left = 1000
              Top = 1
              Width = 86
              Height = 17
              Size.Values = (
                32.127976190476190000
                1889.880952380952000000
                1.889880952380952000
                162.529761904761900000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(qPowerSalesLate.HVKwhrd)'
              Mask = '#,###.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr45: TQRExpr
              Left = 1479
              Top = 1
              Width = 86
              Height = 17
              Size.Values = (
                32.127976190476190000
                2795.133928571429000000
                1.889880952380952000
                162.529761904761900000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(qPowerSalesLate.TKwhrd)'
              Mask = '#,###.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr46: TQRExpr
              Left = 1384
              Top = 1
              Width = 93
              Height = 17
              Size.Values = (
                32.127976190476190000
                2615.595238095238000000
                1.889880952380952000
                175.758928571428600000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(qPowerSalesLate.TKwhr)'
              Mask = '#,###.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr47: TQRExpr
              Left = 436
              Top = 1
              Width = 117
              Height = 17
              Size.Values = (
                32.127976190476190000
                823.988095238095200000
                1.889880952380952000
                221.116071428571400000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(qPowerSalesLate.resAmount)'
              Mask = '#,###.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr48: TQRExpr
              Left = 713
              Top = 1
              Width = 119
              Height = 17
              Size.Values = (
                32.127976190476190000
                1347.485119047619000000
                1.889880952380952000
                224.895833333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(qPowerSalesLate.LVAmount)'
              Mask = '#,###.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr49: TQRExpr
              Left = 1088
              Top = 1
              Width = 123
              Height = 17
              Size.Values = (
                32.127976190476190000
                2056.190476190476000000
                1.889880952380952000
                232.455357142857100000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(qPowerSalesLate.HVAmount)'
              Mask = '#,###.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr50: TQRExpr
              Left = 1567
              Top = 1
              Width = 111
              Height = 17
              Size.Values = (
                32.127976190476190000
                2961.443452380952000000
                1.889880952380952000
                209.776785714285700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(qPowerSalesLate.TAmount)'
              Mask = '#,###.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel162: TQRLabel
              Left = 63
              Top = 0
              Width = 41
              Height = 20
              Size.Values = (
                37.797619047619050000
                119.062500000000000000
                0.000000000000000000
                77.485119047619050000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taLeftJustify
              AlignToBand = False
              Caption = 'TOTAL'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
          end
          object QRBand20: TQRBand
            Left = 34
            Top = 67
            Width = 1680
            Height = 106
            AlignToBottom = False
            BeforePrint = QRBand20BeforePrint
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              200.327380952381000000
              3175.000000000000000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbTitle
            object QRLabel163: TQRLabel
              Left = 590
              Top = 7
              Width = 500
              Height = 23
              Size.Values = (
                43.467261904761900000
                1115.029761904762000000
                13.229166666666670000
                944.940476190476200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = True
              Caption = 'ZAMBOANGA DEL NORTE ELECTRIC COOPERATIVE, INC.'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 10
            end
            object qrlLSFDMonth: TQRLabel
              Left = 806
              Top = 84
              Width = 67
              Height = 21
              Size.Values = (
                39.687500000000000000
                1523.244047619048000000
                158.750000000000000000
                126.622023809523800000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = True
              Caption = 'QRLabel1'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRLabel165: TQRLabel
              Left = 710
              Top = 63
              Width = 260
              Height = 21
              Size.Values = (
                39.687500000000000000
                1341.815476190476000000
                119.062500000000000000
                491.369047619047600000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = True
              Caption = 'POWER SALES REPORT (LATE BILLS)'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRLabel166: TQRLabel
              Left = 739
              Top = 34
              Width = 202
              Height = 21
              Size.Values = (
                39.687500000000000000
                1396.622023809524000000
                64.255952380952380000
                381.755952380952400000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = True
              Caption = 'General Luna St., Dipolog City'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
          end
          object QRChildBand2: TQRChildBand
            Left = 34
            Top = 272
            Width = 1680
            Height = 313
            AlignToBottom = False
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              591.532738095238100000
              3175.000000000000000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            ParentBand = QRBand19
            PrintOrder = cboAfterParent
            object QRLabel164: TQRLabel
              Left = 24
              Top = 24
              Width = 99
              Height = 24
              Size.Values = (
                45.357142857142860000
                45.357142857142860000
                45.357142857142860000
                187.098214285714300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taLeftJustify
              AlignToBand = False
              Caption = 'Prepared by'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 10
            end
            object QRLabel167: TQRLabel
              Left = 662
              Top = 24
              Width = 98
              Height = 24
              Size.Values = (
                45.357142857142860000
                1251.101190476190000000
                45.357142857142860000
                185.208333333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taLeftJustify
              AlignToBand = False
              Caption = 'Checked by'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 10
            end
            object QRLabel168: TQRLabel
              Left = 1194
              Top = 24
              Width = 87
              Height = 24
              Size.Values = (
                45.357142857142860000
                2256.517857142857000000
                45.357142857142860000
                164.419642857142900000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taLeftJustify
              AlignToBand = False
              Caption = 'Verified by'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 10
            end
            object QRLabel169: TQRLabel
              Left = 304
              Top = 164
              Width = 132
              Height = 24
              Size.Values = (
                45.357142857142860000
                574.523809523809500000
                309.940476190476200000
                249.464285714285700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taLeftJustify
              AlignToBand = False
              Caption = 'Certified Correct'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 10
            end
            object QRLabel170: TQRLabel
              Left = 984
              Top = 164
              Width = 95
              Height = 24
              Size.Values = (
                45.357142857142860000
                1859.642857142857000000
                309.940476190476200000
                179.538690476190500000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taLeftJustify
              AlignToBand = False
              Caption = 'Attested by'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 10
            end
            object QRDBText121: TQRDBText
              Left = 87
              Top = 84
              Width = 411
              Height = 23
              Size.Values = (
                42.994791666666670000
                165.364583333333300000
                158.750000000000000000
                777.213541666666800000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = psSignatories
              DataField = 'preparedby'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 10
            end
            object QRDBText122: TQRDBText
              Left = 87
              Top = 112
              Width = 411
              Height = 23
              Size.Values = (
                42.994791666666670000
                165.364583333333300000
                211.666666666666700000
                777.213541666666800000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = psSignatories
              DataField = 'preparedpos'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 10
            end
            object QRDBText123: TQRDBText
              Left = 717
              Top = 84
              Width = 411
              Height = 23
              Size.Values = (
                42.994791666666670000
                1355.989583333333000000
                158.750000000000000000
                777.213541666666800000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = psSignatories
              DataField = 'checkby'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 10
            end
            object QRDBText124: TQRDBText
              Left = 717
              Top = 112
              Width = 411
              Height = 23
              Size.Values = (
                42.994791666666670000
                1355.989583333333000000
                211.666666666666700000
                777.213541666666800000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = psSignatories
              DataField = 'checkpos'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 10
            end
            object QRDBText125: TQRDBText
              Left = 1236
              Top = 84
              Width = 411
              Height = 23
              Size.Values = (
                42.994791666666670000
                2334.947916666667000000
                158.750000000000000000
                777.213541666666800000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = psSignatories
              DataField = 'verifiedby'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 10
            end
            object QRDBText126: TQRDBText
              Left = 1236
              Top = 112
              Width = 411
              Height = 23
              Size.Values = (
                42.994791666666670000
                2334.947916666667000000
                211.666666666666700000
                777.213541666666800000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = psSignatories
              DataField = 'verifiedpos'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 10
            end
            object QRDBText127: TQRDBText
              Left = 396
              Top = 238
              Width = 411
              Height = 23
              Size.Values = (
                42.994791666666670000
                747.447916666666800000
                449.791666666666700000
                777.213541666666800000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = psSignatories
              DataField = 'certifiedby'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 10
            end
            object QRDBText128: TQRDBText
              Left = 396
              Top = 266
              Width = 411
              Height = 23
              Size.Values = (
                42.994791666666670000
                747.447916666666800000
                502.708333333333300000
                777.213541666666800000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = psSignatories
              DataField = 'certifiedpos'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 10
            end
            object QRDBText129: TQRDBText
              Left = 1026
              Top = 238
              Width = 411
              Height = 23
              Size.Values = (
                42.994791666666670000
                1938.072916666667000000
                449.791666666666700000
                777.213541666666800000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = psSignatories
              DataField = 'attestedby'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 10
            end
            object QRDBText130: TQRDBText
              Left = 1026
              Top = 266
              Width = 411
              Height = 23
              Size.Values = (
                42.994791666666670000
                1938.072916666667000000
                502.708333333333300000
                777.213541666666800000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = psSignatories
              DataField = 'attestedpos'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 10
            end
          end
        end
      end
      object tsLateUnbundled: TTabSheet
        Caption = 'tsLateUnbundled'
        ImageIndex = 4
        object qrLateUnbundled: TQuickRep
          Left = 40
          Top = 59
          Width = 1248
          Height = 816
          DataSet = qPowerSalesLate
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
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
          Page.PaperSize = FanfoldGerLegal
          Page.Continuous = False
          Page.Values = (
            63.500000000000000000
            2159.000000000000000000
            63.500000000000000000
            3302.000000000000000000
            63.500000000000000000
            63.500000000000000000
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
          PrinterSettings.MemoryLimit = 1000000
          PrinterSettings.PrintQuality = 0
          PrinterSettings.Collate = 0
          PrinterSettings.ColorOption = 0
          PrintIfEmpty = True
          SnapToGrid = True
          Units = Inches
          Zoom = 100
          PrevFormStyle = fsNormal
          PreviewInitialState = wsMaximized
          PrevInitialZoom = qrZoomToWidth
          PreviewDefaultSaveType = stQRP
          PreviewLeft = 0
          PreviewTop = 0
          object QRBand9: TQRBand
            Left = 24
            Top = 100
            Width = 1200
            Height = 45
            Frame.DrawTop = True
            Frame.DrawLeft = True
            Frame.DrawRight = True
            AlignToBottom = False
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              119.062500000000000000
              3175.000000000000000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbColumnHeader
            object QRLabel1: TQRLabel
              Left = 57
              Top = 15
              Width = 36
              Height = 14
              Size.Values = (
                37.041666666666670000
                150.812500000000000000
                39.687500000000000000
                95.250000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taLeftJustify
              AlignToBand = False
              Caption = 'Charges'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape162: TQRShape
              Tag = 1000
              Left = 155
              Top = 0
              Width = 2
              Height = 30
              Size.Values = (
                79.375000000000000000
                410.104166666666700000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape163: TQRShape
              Left = 156
              Top = 13
              Width = 998
              Height = 2
              Size.Values = (
                5.291666666666667000
                412.750000000000000000
                34.395833333333330000
                2640.541666666667000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsHorLine
              VertAdjust = 0
            end
            object QRLabel3: TQRLabel
              Left = 158
              Top = 15
              Width = 43
              Height = 24
              Size.Values = (
                63.500000000000000000
                418.041666666666700000
                39.687500000000000000
                113.770833333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'No. of Consumers'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 6
            end
            object QRShape164: TQRShape
              Left = 201
              Top = 15
              Width = 2
              Height = 28
              Size.Values = (
                74.083333333333320000
                531.812500000000000000
                39.687500000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel4: TQRLabel
              Left = 204
              Top = 15
              Width = 43
              Height = 24
              Size.Values = (
                63.500000000000000000
                539.750000000000000000
                39.687500000000000000
                113.770833333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'Minimum Bills'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape165: TQRShape
              Left = 247
              Top = 15
              Width = 2
              Height = 28
              Size.Values = (
                74.083333333333320000
                653.520833333333200000
                39.687500000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel87: TQRLabel
              Left = 250
              Top = 15
              Width = 41
              Height = 24
              Size.Values = (
                63.500000000000000000
                661.458333333333200000
                39.687500000000000000
                108.479166666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'Minimum KWHr'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape166: TQRShape
              Left = 291
              Top = 15
              Width = 2
              Height = 28
              Size.Values = (
                74.083333333333320000
                769.937500000000000000
                39.687500000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel88: TQRLabel
              Left = 294
              Top = 22
              Width = 53
              Height = 13
              Size.Values = (
                34.395833333333330000
                777.875000000000000000
                58.208333333333320000
                140.229166666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'KWHr'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape167: TQRShape
              Left = 347
              Top = 15
              Width = 2
              Height = 28
              Size.Values = (
                74.083333333333320000
                918.104166666666800000
                39.687500000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel89: TQRLabel
              Left = 355
              Top = 22
              Width = 62
              Height = 13
              Size.Values = (
                34.395833333333330000
                939.270833333333200000
                58.208333333333320000
                164.041666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'Amount'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape168: TQRShape
              Tag = 1000
              Left = 420
              Top = 0
              Width = 2
              Height = 30
              Size.Values = (
                79.375000000000000000
                1111.250000000000000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel90: TQRLabel
              Left = 468
              Top = 22
              Width = 53
              Height = 13
              Size.Values = (
                34.395833333333330000
                1238.250000000000000000
                58.208333333333320000
                140.229166666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'KWHr'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape169: TQRShape
              Left = 521
              Top = 15
              Width = 2
              Height = 28
              Size.Values = (
                74.083333333333320000
                1378.479166666667000000
                39.687500000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel91: TQRLabel
              Left = 523
              Top = 22
              Width = 74
              Height = 13
              Size.Values = (
                34.395833333333330000
                1383.770833333333000000
                58.208333333333320000
                195.791666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'Amount'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape170: TQRShape
              Tag = 1000
              Left = 596
              Top = 0
              Width = 2
              Height = 30
              Size.Values = (
                79.375000000000000000
                1576.916666666667000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel92: TQRLabel
              Left = 422
              Top = 15
              Width = 43
              Height = 24
              Size.Values = (
                63.500000000000000000
                1116.541666666667000000
                39.687500000000000000
                113.770833333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'No. of Consumers'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 6
            end
            object QRShape171: TQRShape
              Left = 465
              Top = 15
              Width = 2
              Height = 28
              Size.Values = (
                74.083333333333320000
                1230.312500000000000000
                39.687500000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel93: TQRLabel
              Left = 655
              Top = 22
              Width = 53
              Height = 13
              Size.Values = (
                34.395833333333330000
                1733.020833333333000000
                58.208333333333320000
                140.229166666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'KWHr'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape172: TQRShape
              Left = 711
              Top = 15
              Width = 2
              Height = 28
              Size.Values = (
                74.083333333333320000
                1881.187500000000000000
                39.687500000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel94: TQRLabel
              Left = 777
              Top = 22
              Width = 74
              Height = 13
              Size.Values = (
                34.395833333333330000
                2055.812500000000000000
                58.208333333333320000
                195.791666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'Amount'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape173: TQRShape
              Tag = 1000
              Left = 851
              Top = 0
              Width = 2
              Height = 30
              Size.Values = (
                79.375000000000000000
                2251.604166666667000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel95: TQRLabel
              Left = 598
              Top = 15
              Width = 52
              Height = 24
              Size.Values = (
                63.500000000000000000
                1582.208333333333000000
                39.687500000000000000
                137.583333333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'No. of Consumers'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 6
            end
            object QRShape174: TQRShape
              Left = 650
              Top = 15
              Width = 2
              Height = 28
              Size.Values = (
                74.083333333333320000
                1719.791666666667000000
                39.687500000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel96: TQRLabel
              Left = 716
              Top = 22
              Width = 53
              Height = 13
              Size.Values = (
                34.395833333333330000
                1894.416666666667000000
                58.208333333333320000
                140.229166666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'KW Dmd.'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape175: TQRShape
              Left = 774
              Top = 15
              Width = 2
              Height = 28
              Size.Values = (
                74.083333333333320000
                2047.875000000000000000
                39.687500000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel97: TQRLabel
              Left = 966
              Top = 22
              Width = 53
              Height = 15
              Size.Values = (
                39.687500000000000000
                2555.875000000000000000
                58.208333333333320000
                140.229166666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'KWHr'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape176: TQRShape
              Left = 1021
              Top = 15
              Width = 2
              Height = 28
              Size.Values = (
                74.083333333333320000
                2701.395833333333000000
                39.687500000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel98: TQRLabel
              Left = 1088
              Top = 22
              Width = 62
              Height = 15
              Size.Values = (
                39.687500000000000000
                2878.666666666667000000
                58.208333333333320000
                164.041666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'Amount'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel99: TQRLabel
              Left = 853
              Top = 15
              Width = 43
              Height = 24
              Size.Values = (
                63.500000000000000000
                2256.895833333333000000
                39.687500000000000000
                113.770833333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'No. of Consumers'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 6
            end
            object QRShape177: TQRShape
              Left = 896
              Top = 15
              Width = 2
              Height = 28
              Size.Values = (
                74.083333333333320000
                2370.666666666667000000
                39.687500000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel100: TQRLabel
              Left = 1026
              Top = 22
              Width = 53
              Height = 15
              Size.Values = (
                39.687500000000000000
                2714.625000000000000000
                58.208333333333320000
                140.229166666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'KW Dmd.'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape178: TQRShape
              Left = 1084
              Top = 15
              Width = 2
              Height = 28
              Size.Values = (
                74.083333333333320000
                2868.083333333333000000
                39.687500000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel101: TQRLabel
              Left = 906
              Top = 15
              Width = 43
              Height = 24
              Size.Values = (
                63.500000000000000000
                2397.125000000000000000
                39.687500000000000000
                113.770833333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'Minimum Bills'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape179: TQRShape
              Left = 954
              Top = 15
              Width = 2
              Height = 28
              Size.Values = (
                74.083333333333320000
                2524.125000000000000000
                39.687500000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel102: TQRLabel
              Left = 156
              Top = 1
              Width = 264
              Height = 13
              Size.Values = (
                34.395833333333330000
                412.750000000000000000
                2.645833333333333000
                698.500000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'Residential'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel103: TQRLabel
              Left = 423
              Top = 1
              Width = 174
              Height = 13
              Size.Values = (
                34.395833333333330000
                1119.187500000000000000
                2.645833333333333000
                460.375000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'Low Voltage'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel104: TQRLabel
              Left = 597
              Top = 1
              Width = 282
              Height = 13
              Size.Values = (
                34.395833333333330000
                1579.562500000000000000
                2.645833333333333000
                746.125000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'High Voltage'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel105: TQRLabel
              Left = 878
              Top = 1
              Width = 276
              Height = 13
              Size.Values = (
                34.395833333333330000
                2323.041666666667000000
                2.645833333333333000
                730.250000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'TOTAL'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape180: TQRShape
              Tag = 1000
              Left = 1153
              Top = 1
              Width = 2
              Height = 30
              Size.Values = (
                79.375000000000000000
                3050.645833333333000000
                2.645833333333333000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel106: TQRLabel
              Left = 1155
              Top = 5
              Width = 43
              Height = 37
              Size.Values = (
                97.895833333333320000
                3055.937500000000000000
                13.229166666666670000
                113.770833333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = '% Revenue Sales'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
          end
          object QRBand10: TQRBand
            Left = 24
            Top = 145
            Width = 1200
            Height = 12
            Frame.DrawTop = True
            Frame.DrawLeft = True
            Frame.DrawRight = True
            AlignToBottom = False
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              31.750000000000000000
              3175.000000000000000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbDetail
            object QRShape181: TQRShape
              Tag = 1000
              Left = 155
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                56.696428571428570000
                410.104166666666700000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape182: TQRShape
              Tag = 1000
              Left = 201
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                55.562500000000000000
                531.812500000000000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape183: TQRShape
              Tag = 1000
              Left = 247
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                55.562500000000000000
                653.520833333333200000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape184: TQRShape
              Tag = 1000
              Left = 291
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                55.562500000000000000
                769.937500000000000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape185: TQRShape
              Tag = 1000
              Left = 347
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                55.562500000000000000
                918.104166666666800000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape186: TQRShape
              Tag = 1000
              Left = 420
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                55.562500000000000000
                1111.250000000000000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape187: TQRShape
              Tag = 1000
              Left = 521
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                55.562500000000000000
                1378.479166666667000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape188: TQRShape
              Tag = 1000
              Left = 596
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                55.562500000000000000
                1576.916666666667000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape189: TQRShape
              Tag = 1000
              Left = 465
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                55.562500000000000000
                1230.312500000000000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape190: TQRShape
              Tag = 1000
              Left = 711
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                55.562500000000000000
                1881.187500000000000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape191: TQRShape
              Tag = 1000
              Left = 851
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                55.562500000000000000
                2251.604166666667000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape192: TQRShape
              Tag = 1000
              Left = 650
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                55.562500000000000000
                1719.791666666667000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape193: TQRShape
              Tag = 1000
              Left = 774
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                55.562500000000000000
                2047.875000000000000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape194: TQRShape
              Tag = 1000
              Left = 1021
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                55.562500000000000000
                2701.395833333333000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape195: TQRShape
              Tag = 1000
              Left = 896
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                55.562500000000000000
                2370.666666666667000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape196: TQRShape
              Tag = 1000
              Left = 1084
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                55.562500000000000000
                2868.083333333333000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape197: TQRShape
              Tag = 1000
              Left = 954
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                55.562500000000000000
                2524.125000000000000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRDBText56: TQRDBText
              Left = 1
              Top = 1
              Width = 154
              Height = 13
              Size.Values = (
                34.395833333333330000
                2.645833333333333000
                2.645833333333333000
                407.458333333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSalesLate
              DataField = 'desc'
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText57: TQRDBText
              Left = 156
              Top = 1
              Width = 45
              Height = 13
              Size.Values = (
                34.395833333333330000
                412.750000000000000000
                2.645833333333333000
                119.062500000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSalesLate
              DataField = 'resBills'
              Mask = '###,##0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText58: TQRDBText
              Left = 202
              Top = 1
              Width = 44
              Height = 13
              Size.Values = (
                34.395833333333330000
                534.458333333333300000
                2.645833333333333000
                116.416666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSalesLate
              DataField = 'resLLBills'
              Mask = '###,##0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText59: TQRDBText
              Left = 248
              Top = 1
              Width = 43
              Height = 13
              Size.Values = (
                34.395833333333330000
                656.166666666666800000
                2.645833333333333000
                113.770833333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSalesLate
              DataField = 'resLLKwhr'
              Mask = '###,##0.0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText60: TQRDBText
              Left = 292
              Top = 1
              Width = 54
              Height = 13
              Size.Values = (
                34.395833333333330000
                772.583333333333200000
                2.645833333333333000
                142.875000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSalesLate
              DataField = 'resKwhr'
              Mask = '###,###,##0.0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText61: TQRDBText
              Left = 348
              Top = 1
              Width = 72
              Height = 13
              Size.Values = (
                34.395833333333330000
                920.750000000000000000
                2.645833333333333000
                190.500000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSalesLate
              DataField = 'RES'
              Mask = '###,###,##0.00 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText62: TQRDBText
              Left = 422
              Top = 1
              Width = 43
              Height = 13
              Size.Values = (
                34.395833333333330000
                1116.541666666667000000
                2.645833333333333000
                113.770833333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSalesLate
              DataField = 'LVBills'
              Mask = '###,##0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText63: TQRDBText
              Left = 468
              Top = 1
              Width = 54
              Height = 13
              Size.Values = (
                34.395833333333330000
                1238.250000000000000000
                2.645833333333333000
                142.875000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSalesLate
              DataField = 'LVKwhr'
              Mask = '###,##0.0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText64: TQRDBText
              Left = 523
              Top = 1
              Width = 74
              Height = 13
              Size.Values = (
                34.395833333333330000
                1383.770833333333000000
                2.645833333333333000
                195.791666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSalesLate
              DataField = 'LV'
              Mask = '###,###,##0.00 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText65: TQRDBText
              Left = 775
              Top = 1
              Width = 76
              Height = 13
              Size.Values = (
                34.395833333333330000
                2050.520833333333000000
                2.645833333333333000
                201.083333333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSalesLate
              DataField = 'HV'
              Mask = '###,###,##0.00 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText66: TQRDBText
              Left = 652
              Top = 1
              Width = 59
              Height = 13
              Size.Values = (
                34.395833333333330000
                1725.083333333333000000
                2.645833333333333000
                156.104166666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSalesLate
              DataField = 'HVKwhr'
              Mask = '###,##0.0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText67: TQRDBText
              Left = 598
              Top = 1
              Width = 52
              Height = 13
              Size.Values = (
                34.395833333333330000
                1582.208333333333000000
                2.645833333333333000
                137.583333333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSalesLate
              DataField = 'HVBills'
              Mask = '###,##0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText68: TQRDBText
              Left = 712
              Top = 1
              Width = 61
              Height = 13
              Size.Values = (
                34.395833333333330000
                1883.833333333333000000
                2.645833333333333000
                161.395833333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSalesLate
              DataField = 'HVKwhrd'
              Mask = '###,##0.0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText69: TQRDBText
              Left = 1086
              Top = 1
              Width = 68
              Height = 13
              Size.Values = (
                34.395833333333330000
                2873.375000000000000000
                2.645833333333333000
                179.916666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSalesLate
              DataField = 'TotalAmount'
              Mask = '###,###,##0.00 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText70: TQRDBText
              Left = 955
              Top = 1
              Width = 66
              Height = 13
              Size.Values = (
                34.395833333333330000
                2526.770833333333000000
                2.645833333333333000
                174.625000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSalesLate
              DataField = 'TotalKwhr'
              Mask = '###,##0.0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText71: TQRDBText
              Left = 898
              Top = 1
              Width = 56
              Height = 13
              Size.Values = (
                34.395833333333330000
                2375.958333333333000000
                2.645833333333333000
                148.166666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSalesLate
              DataField = 'resLLBills'
              Mask = '###,###,##0.00 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText72: TQRDBText
              Left = 853
              Top = 1
              Width = 43
              Height = 13
              Size.Values = (
                34.395833333333330000
                2256.895833333333000000
                2.645833333333333000
                113.770833333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSalesLate
              DataField = 'numBills'
              Mask = '###,##0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText73: TQRDBText
              Left = 1023
              Top = 1
              Width = 61
              Height = 13
              Size.Values = (
                34.395833333333330000
                2706.687500000000000000
                2.645833333333333000
                161.395833333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSalesLate
              DataField = 'TotalKwhrD'
              Mask = '###,##0.0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRShape198: TQRShape
              Tag = 1000
              Left = 1153
              Top = 0
              Width = 2
              Height = 12
              Size.Values = (
                31.750000000000000000
                3050.645833333333000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
          end
          object QRBand11: TQRBand
            Left = 24
            Top = 157
            Width = 1200
            Height = 12
            Frame.DrawTop = True
            Frame.DrawBottom = True
            Frame.DrawLeft = True
            Frame.DrawRight = True
            AlignToBottom = False
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              31.750000000000000000
              3175.000000000000000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbSummary
            object QRShape199: TQRShape
              Tag = 1000
              Left = 155
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.898809523809520000
                410.104166666666700000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape200: TQRShape
              Tag = 1000
              Left = 201
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.520833333333330000
                531.812500000000000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape201: TQRShape
              Tag = 1000
              Left = 247
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.520833333333330000
                653.520833333333200000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape202: TQRShape
              Tag = 1000
              Left = 291
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.520833333333330000
                769.937500000000000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape203: TQRShape
              Tag = 1000
              Left = 347
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.520833333333330000
                918.104166666666800000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape204: TQRShape
              Tag = 1000
              Left = 420
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.520833333333330000
                1111.250000000000000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape205: TQRShape
              Tag = 1000
              Left = 521
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.520833333333330000
                1378.479166666667000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape206: TQRShape
              Tag = 1000
              Left = 596
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.520833333333330000
                1576.916666666667000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape207: TQRShape
              Tag = 1000
              Left = 465
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.520833333333330000
                1230.312500000000000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape208: TQRShape
              Tag = 1000
              Left = 711
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.520833333333330000
                1881.187500000000000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape209: TQRShape
              Tag = 1000
              Left = 851
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.520833333333330000
                2251.604166666667000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape210: TQRShape
              Tag = 1000
              Left = 650
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.520833333333330000
                1719.791666666667000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape211: TQRShape
              Tag = 1000
              Left = 774
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.520833333333330000
                2047.875000000000000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape212: TQRShape
              Tag = 1000
              Left = 1021
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.520833333333330000
                2701.395833333333000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape213: TQRShape
              Tag = 1000
              Left = 896
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.520833333333330000
                2370.666666666667000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape214: TQRShape
              Tag = 1000
              Left = 1084
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.520833333333330000
                2868.083333333333000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape215: TQRShape
              Tag = 1000
              Left = 954
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.520833333333330000
                2524.125000000000000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRExpr22: TQRExpr
              Left = 348
              Top = 1
              Width = 72
              Height = 13
              Size.Values = (
                34.395833333333330000
                920.750000000000000000
                2.645833333333333000
                190.500000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(qPowerSalesLate.RES)'
              Mask = '###,###,##0.00 '
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr23: TQRExpr
              Left = 523
              Top = 1
              Width = 74
              Height = 13
              Size.Values = (
                34.395833333333330000
                1383.770833333333000000
                2.645833333333333000
                195.791666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(qPowerSalesLate.LV)'
              Mask = '###,###,##0.00 '
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr24: TQRExpr
              Left = 775
              Top = 1
              Width = 76
              Height = 13
              Size.Values = (
                34.395833333333330000
                2050.520833333333000000
                2.645833333333333000
                201.083333333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(qPowerSalesLate.HV)'
              Mask = '###,###,##0.00 '
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr25: TQRExpr
              Left = 1086
              Top = 1
              Width = 68
              Height = 13
              Size.Values = (
                34.395833333333330000
                2873.375000000000000000
                2.645833333333333000
                179.916666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(qPowerSalesLate.TotalAmount) '
              Mask = '###,###,##0.00 '
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel107: TQRLabel
              Left = 61
              Top = 1
              Width = 29
              Height = 14
              Size.Values = (
                37.041666666666670000
                161.395833333333300000
                2.645833333333333000
                76.729166666666670000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taLeftJustify
              AlignToBand = False
              Caption = 'TOTAL'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape216: TQRShape
              Tag = 1000
              Left = 1153
              Top = 0
              Width = 2
              Height = 12
              Size.Values = (
                31.750000000000000000
                3050.645833333333000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
          end
          object QRBand12: TQRBand
            Left = 24
            Top = 24
            Width = 1200
            Height = 76
            AlignToBottom = False
            BeforePrint = QRBand12BeforePrint
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              201.083333333333300000
              3175.000000000000000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbTitle
            object QRLabel108: TQRLabel
              Left = 421
              Top = 5
              Width = 357
              Height = 17
              Size.Values = (
                44.979166666666670000
                1113.895833333333000000
                13.229166666666670000
                944.562500000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = True
              Caption = 'ZAMBOANGA DEL NORTE ELECTRIC COOPERATIVE, INC.'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 10
            end
            object qrlLUFDMonth: TQRLabel
              Left = -16
              Top = 60
              Width = 48
              Height = 15
              Size.Values = (
                39.687500000000000000
                1524.000000000000000000
                158.750000000000000000
                127.000000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = True
              Caption = 'QRLabel1'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRLabel110: TQRLabel
              Left = 476
              Top = 45
              Width = 247
              Height = 15
              Size.Values = (
                39.687500000000000000
                1259.416666666667000000
                119.062500000000000000
                653.520833333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = True
              Caption = 'UNBUNDLED POWER SALES REPORT (LATEBILLS)'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRLabel111: TQRLabel
              Left = -64
              Top = 24
              Width = 144
              Height = 15
              Size.Values = (
                39.687500000000000000
                1397.000000000000000000
                63.500000000000000000
                381.000000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = True
              Caption = 'General Luna St., Dipolog City'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
          end
        end
      end
      object tsLateSubsidiary: TTabSheet
        Caption = 'tsLateSubsidiary'
        ImageIndex = 5
        object qrLateSubsidiary: TQuickRep
          Left = -6
          Top = 11
          Width = 1248
          Height = 816
          DataSet = qPowerSalesLate
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
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
          Page.PaperSize = FanfoldGerLegal
          Page.Continuous = False
          Page.Values = (
            63.500000000000000000
            2159.000000000000000000
            63.500000000000000000
            3302.000000000000000000
            63.500000000000000000
            63.500000000000000000
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
          PrinterSettings.MemoryLimit = 1000000
          PrinterSettings.PrintQuality = 0
          PrinterSettings.Collate = 0
          PrinterSettings.ColorOption = 0
          PrintIfEmpty = True
          SnapToGrid = True
          Units = Inches
          Zoom = 100
          PrevFormStyle = fsNormal
          PreviewInitialState = wsMaximized
          PrevInitialZoom = qrZoomToWidth
          PreviewDefaultSaveType = stQRP
          PreviewLeft = 0
          PreviewTop = 0
          object QRBand13: TQRBand
            Left = 24
            Top = 109
            Width = 1200
            Height = 45
            Frame.DrawTop = True
            Frame.DrawLeft = True
            Frame.DrawRight = True
            AlignToBottom = False
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              119.062500000000000000
              3175.000000000000000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbColumnHeader
            object QRLabel112: TQRLabel
              Left = 57
              Top = 15
              Width = 36
              Height = 14
              Size.Values = (
                37.041666666666670000
                150.812500000000000000
                39.687500000000000000
                95.250000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taLeftJustify
              AlignToBand = False
              Caption = 'Charges'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape217: TQRShape
              Tag = 1000
              Left = 155
              Top = 0
              Width = 2
              Height = 30
              Size.Values = (
                79.375000000000000000
                410.104166666666700000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape218: TQRShape
              Left = 156
              Top = 13
              Width = 1043
              Height = 2
              Size.Values = (
                5.291666666666667000
                412.750000000000000000
                34.395833333333330000
                2759.604166666667000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsHorLine
              VertAdjust = 0
            end
            object QRLabel113: TQRLabel
              Left = 158
              Top = 15
              Width = 52
              Height = 24
              Size.Values = (
                64.255952380952380000
                417.663690476190500000
                39.687500000000000000
                137.961309523809500000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'No. of Consumers'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape219: TQRShape
              Left = 210
              Top = 15
              Width = 2
              Height = 28
              Size.Values = (
                73.705357142857140000
                555.625000000000000000
                39.687500000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel114: TQRLabel
              Left = 213
              Top = 15
              Width = 43
              Height = 24
              Size.Values = (
                64.255952380952380000
                563.184523809523800000
                39.687500000000000000
                113.392857142857100000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'Minimum Bills'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape220: TQRShape
              Left = 256
              Top = 15
              Width = 2
              Height = 28
              Size.Values = (
                73.705357142857140000
                676.577380952381100000
                39.687500000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel115: TQRLabel
              Left = 259
              Top = 15
              Width = 41
              Height = 24
              Size.Values = (
                64.255952380952380000
                684.136904761904800000
                39.687500000000000000
                107.723214285714300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'Minimum KWHr'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape221: TQRShape
              Left = 300
              Top = 15
              Width = 2
              Height = 28
              Size.Values = (
                73.705357142857140000
                793.750000000000000000
                39.687500000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel116: TQRLabel
              Left = 303
              Top = 22
              Width = 53
              Height = 13
              Size.Values = (
                34.017857142857140000
                801.309523809523800000
                58.586309523809520000
                139.851190476190500000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'KWHr'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape222: TQRShape
              Left = 356
              Top = 15
              Width = 2
              Height = 28
              Size.Values = (
                73.705357142857140000
                941.160714285714300000
                39.687500000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel117: TQRLabel
              Left = 364
              Top = 22
              Width = 62
              Height = 13
              Size.Values = (
                34.017857142857140000
                963.839285714285700000
                58.586309523809520000
                164.419642857142900000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'Amount'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape223: TQRShape
              Tag = 1000
              Left = 429
              Top = 0
              Width = 2
              Height = 30
              Size.Values = (
                79.375000000000000000
                1135.818452380952000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel118: TQRLabel
              Left = 489
              Top = 22
              Width = 53
              Height = 13
              Size.Values = (
                34.017857142857140000
                1294.568452380952000000
                58.586309523809520000
                139.851190476190500000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'KWHr'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape224: TQRShape
              Left = 542
              Top = 15
              Width = 2
              Height = 28
              Size.Values = (
                73.705357142857140000
                1434.419642857143000000
                39.687500000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel119: TQRLabel
              Left = 544
              Top = 22
              Width = 62
              Height = 13
              Size.Values = (
                34.017857142857140000
                1438.199404761905000000
                58.586309523809520000
                164.419642857142900000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'Amount'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape225: TQRShape
              Tag = 1000
              Left = 617
              Top = 0
              Width = 2
              Height = 30
              Size.Values = (
                79.375000000000000000
                1632.857142857143000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel120: TQRLabel
              Left = 434
              Top = 15
              Width = 52
              Height = 24
              Size.Values = (
                64.255952380952380000
                1147.157738095238000000
                39.687500000000000000
                137.961309523809500000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'No. of Consumers'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape226: TQRShape
              Left = 486
              Top = 15
              Width = 2
              Height = 28
              Size.Values = (
                73.705357142857140000
                1287.008928571429000000
                39.687500000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel121: TQRLabel
              Left = 680
              Top = 22
              Width = 53
              Height = 13
              Size.Values = (
                34.017857142857140000
                1799.166666666667000000
                58.586309523809520000
                139.851190476190500000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'KWHr'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape227: TQRShape
              Left = 736
              Top = 15
              Width = 2
              Height = 28
              Size.Values = (
                73.705357142857140000
                1946.577380952381000000
                39.687500000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel122: TQRLabel
              Left = 802
              Top = 22
              Width = 62
              Height = 13
              Size.Values = (
                34.017857142857140000
                2122.336309523810000000
                58.586309523809520000
                164.419642857142900000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'Amount'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape228: TQRShape
              Tag = 1000
              Left = 876
              Top = 0
              Width = 2
              Height = 30
              Size.Values = (
                79.375000000000000000
                2318.883928571429000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel123: TQRLabel
              Left = 620
              Top = 15
              Width = 52
              Height = 24
              Size.Values = (
                64.255952380952380000
                1640.416666666667000000
                39.687500000000000000
                137.961309523809500000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'No. of Consumers'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape229: TQRShape
              Left = 675
              Top = 15
              Width = 2
              Height = 28
              Size.Values = (
                73.705357142857140000
                1785.937500000000000000
                39.687500000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel124: TQRLabel
              Left = 741
              Top = 22
              Width = 53
              Height = 13
              Size.Values = (
                34.017857142857140000
                1959.806547619048000000
                58.586309523809520000
                139.851190476190500000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'KW Dmd.'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape230: TQRShape
              Left = 799
              Top = 15
              Width = 2
              Height = 28
              Size.Values = (
                73.705357142857140000
                2112.886904761905000000
                39.687500000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel125: TQRLabel
              Left = 1011
              Top = 22
              Width = 53
              Height = 15
              Size.Values = (
                39.687500000000000000
                2674.181547619048000000
                58.586309523809520000
                139.851190476190500000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'KWHr'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape231: TQRShape
              Left = 1066
              Top = 15
              Width = 2
              Height = 28
              Size.Values = (
                73.705357142857140000
                2821.592261904762000000
                39.687500000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel126: TQRLabel
              Left = 1133
              Top = 22
              Width = 62
              Height = 15
              Size.Values = (
                39.687500000000000000
                2997.729166666667000000
                58.208333333333320000
                164.041666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'Amount'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel127: TQRLabel
              Left = 879
              Top = 15
              Width = 62
              Height = 24
              Size.Values = (
                64.255952380952380000
                2324.553571428571000000
                39.687500000000000000
                164.419642857142900000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'No. of Consumers'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape232: TQRShape
              Left = 941
              Top = 15
              Width = 2
              Height = 28
              Size.Values = (
                73.705357142857140000
                2490.863095238095000000
                39.687500000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel128: TQRLabel
              Left = 1071
              Top = 22
              Width = 53
              Height = 15
              Size.Values = (
                39.687500000000000000
                2834.821428571429000000
                58.586309523809520000
                139.851190476190500000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'KW Dmd.'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape233: TQRShape
              Left = 1129
              Top = 15
              Width = 2
              Height = 28
              Size.Values = (
                73.705357142857140000
                2987.901785714286000000
                39.687500000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel129: TQRLabel
              Left = 951
              Top = 15
              Width = 43
              Height = 24
              Size.Values = (
                64.255952380952380000
                2515.431547619048000000
                39.687500000000000000
                113.392857142857100000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'Minimum Bills'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape234: TQRShape
              Left = 999
              Top = 15
              Width = 2
              Height = 28
              Size.Values = (
                73.705357142857140000
                2642.053571428571000000
                39.687500000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel130: TQRLabel
              Left = 156
              Top = 1
              Width = 274
              Height = 13
              Size.Values = (
                34.395833333333330000
                412.750000000000000000
                2.645833333333333000
                724.958333333333200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'Residential'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel131: TQRLabel
              Left = 431
              Top = 1
              Width = 186
              Height = 13
              Size.Values = (
                34.395833333333330000
                1140.354166666667000000
                2.645833333333333000
                492.125000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'Low Voltage'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel132: TQRLabel
              Left = 619
              Top = 1
              Width = 259
              Height = 13
              Size.Values = (
                34.395833333333330000
                1637.770833333333000000
                2.645833333333333000
                685.270833333333200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'High Voltage'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel133: TQRLabel
              Left = 878
              Top = 1
              Width = 321
              Height = 13
              Size.Values = (
                34.395833333333330000
                2323.041666666667000000
                2.645833333333333000
                849.312500000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'TOTAL'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
          end
          object QRBand14: TQRBand
            Left = 24
            Top = 154
            Width = 1200
            Height = 12
            Frame.DrawTop = True
            Frame.DrawLeft = True
            Frame.DrawRight = True
            AlignToBottom = False
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              31.750000000000000000
              3175.000000000000000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbDetail
            object QRShape235: TQRShape
              Tag = 1000
              Left = 155
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                56.696428571428570000
                410.104166666666700000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape236: TQRShape
              Tag = 1000
              Left = 210
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                56.696428571428570000
                555.625000000000000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape237: TQRShape
              Tag = 1000
              Left = 256
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                56.696428571428570000
                676.577380952381100000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape238: TQRShape
              Tag = 1000
              Left = 300
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                56.696428571428570000
                793.750000000000000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape239: TQRShape
              Tag = 1000
              Left = 356
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                56.696428571428570000
                941.160714285714300000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape240: TQRShape
              Tag = 1000
              Left = 429
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                56.696428571428570000
                1135.818452380952000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape241: TQRShape
              Tag = 1000
              Left = 542
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                56.696428571428570000
                1434.419642857143000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape242: TQRShape
              Tag = 1000
              Left = 617
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                56.696428571428570000
                1632.857142857143000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape243: TQRShape
              Tag = 1000
              Left = 486
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                56.696428571428570000
                1287.008928571429000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape244: TQRShape
              Tag = 1000
              Left = 736
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                56.696428571428570000
                1946.577380952381000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape245: TQRShape
              Tag = 1000
              Left = 876
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                54.806547619047620000
                2318.883928571429000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape246: TQRShape
              Tag = 1000
              Left = 675
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                56.696428571428570000
                1785.937500000000000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape247: TQRShape
              Tag = 1000
              Left = 799
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                54.806547619047620000
                2112.886904761905000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape248: TQRShape
              Tag = 1000
              Left = 1066
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                54.806547619047620000
                2821.592261904762000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape249: TQRShape
              Tag = 1000
              Left = 941
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                54.806547619047620000
                2490.863095238095000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape250: TQRShape
              Tag = 1000
              Left = 1129
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                54.806547619047620000
                2987.901785714286000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape251: TQRShape
              Tag = 1000
              Left = 999
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                54.806547619047620000
                2642.053571428571000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRDBText74: TQRDBText
              Left = 1
              Top = 1
              Width = 154
              Height = 13
              Size.Values = (
                34.395833333333330000
                2.645833333333333000
                2.645833333333333000
                407.458333333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSalesLate
              DataField = 'desc'
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText75: TQRDBText
              Left = 156
              Top = 1
              Width = 54
              Height = 13
              Size.Values = (
                34.395833333333330000
                412.750000000000000000
                2.645833333333333000
                142.875000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSalesLate
              DataField = 'resBills'
              Mask = '###,##0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText76: TQRDBText
              Left = 211
              Top = 1
              Width = 44
              Height = 13
              Size.Values = (
                34.395833333333330000
                558.270833333333300000
                2.645833333333333000
                116.416666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSalesLate
              DataField = 'resLLBills'
              Mask = '###,##0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText77: TQRDBText
              Left = 257
              Top = 1
              Width = 43
              Height = 13
              Size.Values = (
                34.395833333333330000
                679.979166666666800000
                2.645833333333333000
                113.770833333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSalesLate
              DataField = 'resLLKwhr'
              Mask = '###,##0.0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText78: TQRDBText
              Left = 301
              Top = 1
              Width = 54
              Height = 13
              Size.Values = (
                34.395833333333330000
                796.395833333333200000
                2.645833333333333000
                142.875000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSalesLate
              DataField = 'resKwhr'
              Mask = '###,###,##0.0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText79: TQRDBText
              Left = 357
              Top = 1
              Width = 72
              Height = 13
              Size.Values = (
                34.395833333333330000
                944.562500000000000000
                2.645833333333333000
                190.500000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSalesLate
              DataField = 'RES'
              Mask = '###,###,##0.00 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText80: TQRDBText
              Left = 431
              Top = 1
              Width = 56
              Height = 13
              Size.Values = (
                34.395833333333330000
                1140.354166666667000000
                2.645833333333333000
                148.166666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSalesLate
              DataField = 'LVBills'
              Mask = '###,##0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText81: TQRDBText
              Left = 489
              Top = 1
              Width = 54
              Height = 13
              Size.Values = (
                34.395833333333330000
                1293.812500000000000000
                2.645833333333333000
                142.875000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSalesLate
              DataField = 'LVKwhr'
              Mask = '###,##0.0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText82: TQRDBText
              Left = 544
              Top = 1
              Width = 74
              Height = 13
              Size.Values = (
                34.395833333333330000
                1439.333333333333000000
                2.645833333333333000
                195.791666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSalesLate
              DataField = 'LV'
              Mask = '###,###,##0.00 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText83: TQRDBText
              Left = 800
              Top = 1
              Width = 76
              Height = 13
              Size.Values = (
                34.395833333333330000
                2116.666666666667000000
                2.645833333333333000
                201.083333333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSalesLate
              DataField = 'HV'
              Mask = '###,###,##0.00 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText84: TQRDBText
              Left = 677
              Top = 1
              Width = 59
              Height = 13
              Size.Values = (
                34.395833333333330000
                1791.229166666667000000
                2.645833333333333000
                156.104166666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSalesLate
              DataField = 'HVKwhr'
              Mask = '###,##0.0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText85: TQRDBText
              Left = 619
              Top = 1
              Width = 56
              Height = 13
              Size.Values = (
                34.395833333333330000
                1637.770833333333000000
                2.645833333333333000
                148.166666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSalesLate
              DataField = 'HVBills'
              Mask = '###,##0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText86: TQRDBText
              Left = 737
              Top = 1
              Width = 61
              Height = 13
              Size.Values = (
                34.395833333333330000
                1949.979166666667000000
                2.645833333333333000
                161.395833333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSalesLate
              DataField = 'HVKwhrd'
              Mask = '###,##0.0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText87: TQRDBText
              Left = 1131
              Top = 1
              Width = 68
              Height = 13
              Size.Values = (
                34.395833333333330000
                2992.437500000000000000
                2.645833333333333000
                179.916666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSalesLate
              DataField = 'TotalAmount'
              Mask = '###,###,##0.00 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText88: TQRDBText
              Left = 1000
              Top = 1
              Width = 66
              Height = 13
              Size.Values = (
                34.395833333333330000
                2645.833333333333000000
                2.645833333333333000
                174.625000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSalesLate
              DataField = 'TotalKwhr'
              Mask = '###,##0.0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText89: TQRDBText
              Left = 943
              Top = 1
              Width = 56
              Height = 13
              Size.Values = (
                34.395833333333330000
                2495.020833333333000000
                2.645833333333333000
                148.166666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSalesLate
              DataField = 'resLLBills'
              Mask = '###,###,##0.00 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText90: TQRDBText
              Left = 878
              Top = 1
              Width = 64
              Height = 13
              Size.Values = (
                34.395833333333330000
                2323.041666666667000000
                2.645833333333333000
                169.333333333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSalesLate
              DataField = 'numBills'
              Mask = '###,##0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText91: TQRDBText
              Left = 1068
              Top = 1
              Width = 61
              Height = 13
              Size.Values = (
                34.395833333333330000
                2825.750000000000000000
                2.645833333333333000
                161.395833333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSalesLate
              DataField = 'TotalKwhrD'
              Mask = '###,##0.0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
          end
          object QRBand15: TQRBand
            Left = 24
            Top = 166
            Width = 1200
            Height = 12
            Frame.DrawTop = True
            Frame.DrawBottom = True
            Frame.DrawLeft = True
            Frame.DrawRight = True
            AlignToBottom = False
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              31.750000000000000000
              3175.000000000000000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbSummary
            object QRShape252: TQRShape
              Tag = 1000
              Left = 155
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.898809523809520000
                410.104166666666700000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape253: TQRShape
              Tag = 1000
              Left = 210
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.898809523809520000
                555.625000000000000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape254: TQRShape
              Tag = 1000
              Left = 256
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.898809523809520000
                676.577380952381100000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape255: TQRShape
              Tag = 1000
              Left = 300
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.898809523809520000
                793.750000000000000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape256: TQRShape
              Tag = 1000
              Left = 356
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.898809523809520000
                941.160714285714300000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape257: TQRShape
              Tag = 1000
              Left = 429
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.898809523809520000
                1135.818452380952000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape258: TQRShape
              Tag = 1000
              Left = 542
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.898809523809520000
                1434.419642857143000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape259: TQRShape
              Tag = 1000
              Left = 617
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.898809523809520000
                1632.857142857143000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape260: TQRShape
              Tag = 1000
              Left = 486
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.898809523809520000
                1287.008928571429000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape261: TQRShape
              Tag = 1000
              Left = 736
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.898809523809520000
                1946.577380952381000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape262: TQRShape
              Tag = 1000
              Left = 876
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.898809523809520000
                2318.883928571429000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape263: TQRShape
              Tag = 1000
              Left = 675
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.898809523809520000
                1785.937500000000000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape264: TQRShape
              Tag = 1000
              Left = 799
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.898809523809520000
                2112.886904761905000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape265: TQRShape
              Tag = 1000
              Left = 1066
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.898809523809520000
                2821.592261904762000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape266: TQRShape
              Tag = 1000
              Left = 941
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.898809523809520000
                2490.863095238095000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape267: TQRShape
              Tag = 1000
              Left = 1129
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.898809523809520000
                2987.901785714286000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape268: TQRShape
              Tag = 1000
              Left = 999
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.898809523809520000
                2642.053571428571000000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRExpr26: TQRExpr
              Left = 357
              Top = 1
              Width = 72
              Height = 13
              Size.Values = (
                34.395833333333330000
                944.562500000000000000
                2.645833333333333000
                190.500000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(qPowerSalesLate.RES)'
              Mask = '###,###,##0.00 '
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr27: TQRExpr
              Left = 544
              Top = 1
              Width = 74
              Height = 13
              Size.Values = (
                34.395833333333330000
                1439.333333333333000000
                2.645833333333333000
                195.791666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(qPowerSalesLate.LV)'
              Mask = '###,###,##0.00 '
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr28: TQRExpr
              Left = 800
              Top = 1
              Width = 76
              Height = 13
              Size.Values = (
                34.395833333333330000
                2116.666666666667000000
                2.645833333333333000
                201.083333333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(qPowerSalesLate.HV)'
              Mask = '###,###,##0.00 '
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr29: TQRExpr
              Left = 1131
              Top = 1
              Width = 68
              Height = 13
              Size.Values = (
                34.395833333333330000
                2992.437500000000000000
                2.645833333333333000
                179.916666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(qPowerSalesLate.TotalAmount)'
              Mask = '###,###,##0.00 '
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel134: TQRLabel
              Left = 61
              Top = 1
              Width = 29
              Height = 14
              Size.Values = (
                37.041666666666670000
                161.395833333333300000
                2.645833333333333000
                76.729166666666670000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taLeftJustify
              AlignToBand = False
              Caption = 'TOTAL'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
          end
          object QRBand16: TQRBand
            Left = 24
            Top = 24
            Width = 1200
            Height = 85
            AlignToBottom = False
            BeforePrint = QRBand16BeforePrint
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              224.895833333333300000
              3175.000000000000000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbTitle
            object QRLabel57: TQRLabel
              Left = 421
              Top = 5
              Width = 357
              Height = 17
              Size.Values = (
                44.979166666666670000
                1113.895833333333000000
                13.229166666666670000
                944.562500000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = True
              Caption = 'ZAMBOANGA DEL NORTE ELECTRIC COOPERATIVE, INC.'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 10
            end
            object qrlLSuFDMonth: TQRLabel
              Left = -16
              Top = 72
              Width = 48
              Height = 15
              Size.Values = (
                39.687500000000000000
                1524.000000000000000000
                190.500000000000000000
                127.000000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = True
              Caption = 'QRLabel1'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRLabel135: TQRLabel
              Left = 496
              Top = 45
              Width = 208
              Height = 15
              Size.Values = (
                39.687500000000000000
                1312.333333333333000000
                119.062500000000000000
                550.333333333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = True
              Caption = 'SUBSIDIARY SALES REPORT (LATEBILLS)'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRLabel136: TQRLabel
              Left = -64
              Top = 24
              Width = 144
              Height = 15
              Size.Values = (
                39.687500000000000000
                1397.000000000000000000
                63.500000000000000000
                381.000000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = True
              Caption = 'General Luna St., Dipolog City'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object qrlLSuMunicipality: TQRLabel
              Left = 528
              Top = 59
              Width = 143
              Height = 15
              Size.Values = (
                39.687500000000000000
                1397.000000000000000000
                156.104166666666700000
                378.354166666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = True
              Caption = 'SUBSIDIARY SALES REPORT'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
          end
        end
      end
      object TabSheet1: TTabSheet
        Caption = 'PowerSalesBreakdown'
        ImageIndex = 6
        object qrPowerSalesBD: TQuickRep
          Left = 223
          Top = -117
          Width = 1498
          Height = 979
          DataSet = qupowersalesbd
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
          Options = []
          Page.Columns = 1
          Page.Orientation = poLandscape
          Page.PaperSize = FanfoldGerLegal
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
          PrinterSettings.MemoryLimit = 1000000
          PrinterSettings.PrintQuality = 0
          PrinterSettings.Collate = 0
          PrinterSettings.ColorOption = 0
          PrintIfEmpty = False
          SnapToGrid = True
          Units = Inches
          Zoom = 120
          PrevFormStyle = fsNormal
          PreviewInitialState = wsMaximized
          PrevInitialZoom = qrZoomToFit
          PreviewDefaultSaveType = stQRP
          PreviewLeft = 0
          PreviewTop = 0
          StartNewPageInComposite = True
          object QRBand22: TQRBand
            Left = 58
            Top = 58
            Width = 1383
            Height = 102
            Frame.DrawBottom = True
            AlignToBottom = False
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              224.895833333333300000
              3049.322916666667000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbTitle
            object QRLabel171: TQRLabel
              Left = 477
              Top = 6
              Width = 428
              Height = 20
              Size.Values = (
                44.097222222222220000
                1051.718750000000000000
                13.229166666666670000
                943.680555555555600000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = True
              Caption = 'ZAMBOANGA DEL NORTE ELECTRIC COOPERATIVE, INC.'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 10
            end
            object QRLabel174: TQRLabel
              Left = 605
              Top = 29
              Width = 173
              Height = 18
              Size.Values = (
                39.687500000000000000
                1333.940972222222000000
                63.940972222222220000
                381.440972222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = True
              Caption = 'General Luna St., Dipolog City'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
          end
          object QRBand23: TQRBand
            Left = 58
            Top = 210
            Width = 1383
            Height = 36
            Frame.DrawTop = True
            Frame.DrawLeft = True
            Frame.DrawRight = True
            AlignToBottom = False
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              79.375000000000000000
              3049.322916666667000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbDetail
            object QRDBText132: TQRDBText
              Left = 0
              Top = 1
              Width = 96
              Height = 15
              Size.Values = (
                33.072916666666670000
                0.000000000000000000
                2.204861111111111000
                211.666666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qupowersalesbd
              DataField = 'Environmental'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Mask = '#,###.#0'
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRShape342: TQRShape
              Left = 179
              Top = 0
              Width = 3
              Height = 34
              Size.Values = (
                74.965277777777780000
                394.670138888888900000
                0.000000000000000000
                6.614583333333332000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRDBText133: TQRDBText
              Left = 101
              Top = 1
              Width = 76
              Height = 15
              Size.Values = (
                33.072916666666670000
                222.690972222222200000
                2.204861111111111000
                167.569444444444400000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qupowersalesbd
              DataField = 'Missionary'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Mask = '#,###.#0'
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText134: TQRDBText
              Left = 184
              Top = 2
              Width = 79
              Height = 15
              Size.Values = (
                33.072916666666670000
                405.694444444444400000
                4.409722222222222000
                174.184027777777800000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qupowersalesbd
              DataField = 'distribution'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Mask = '#,###.#0'
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRShape343: TQRShape
              Left = 264
              Top = -1
              Width = 3
              Height = 35
              Size.Values = (
                77.170138888888900000
                582.083333333333200000
                -2.204861111111111000
                6.614583333333332000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape344: TQRShape
              Left = 350
              Top = 0
              Width = 3
              Height = 34
              Size.Values = (
                74.965277777777780000
                771.701388888889000000
                0.000000000000000000
                6.614583333333332000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape345: TQRShape
              Left = 426
              Top = 0
              Width = 3
              Height = 34
              Size.Values = (
                74.965277777777780000
                939.270833333333200000
                0.000000000000000000
                6.614583333333332000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape346: TQRShape
              Left = 521
              Top = 0
              Width = 3
              Height = 34
              Size.Values = (
                74.965277777777780000
                1148.732638888889000000
                0.000000000000000000
                6.614583333333332000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape347: TQRShape
              Left = 584
              Top = 1
              Width = 3
              Height = 33
              Size.Values = (
                72.760416666666680000
                1287.638888888889000000
                2.204861111111111000
                6.614583333333332000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape348: TQRShape
              Left = 666
              Top = 1
              Width = 2
              Height = 33
              Size.Values = (
                72.760416666666680000
                1468.437500000000000000
                2.204861111111111000
                4.409722222222222000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape349: TQRShape
              Left = 746
              Top = -1
              Width = 3
              Height = 35
              Size.Values = (
                77.170138888888900000
                1644.826388888889000000
                -2.204861111111111000
                6.614583333333332000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape350: TQRShape
              Left = 839
              Top = 0
              Width = 3
              Height = 34
              Size.Values = (
                74.965277777777780000
                1849.878472222222000000
                0.000000000000000000
                6.614583333333332000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape351: TQRShape
              Left = 922
              Top = 2
              Width = 3
              Height = 33
              Size.Values = (
                72.760416666666680000
                2032.881944444444000000
                4.409722222222222000
                6.614583333333332000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape352: TQRShape
              Left = 1014
              Top = 1
              Width = 3
              Height = 33
              Size.Values = (
                72.760416666666680000
                2235.729166666667000000
                2.204861111111111000
                6.614583333333332000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape353: TQRShape
              Left = 1094
              Top = 2
              Width = 3
              Height = 33
              Size.Values = (
                72.760416666666680000
                2412.118055555556000000
                4.409722222222222000
                6.614583333333332000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape354: TQRShape
              Left = 1170
              Top = 0
              Width = 3
              Height = 34
              Size.Values = (
                74.965277777777780000
                2579.687500000000000000
                0.000000000000000000
                6.614583333333332000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRDBText135: TQRDBText
              Left = 269
              Top = 1
              Width = 77
              Height = 15
              Size.Values = (
                33.072916666666670000
                593.107638888889000000
                2.204861111111111000
                169.774305555555600000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qupowersalesbd
              DataField = 'Genco'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Mask = '#,###.#0'
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText136: TQRDBText
              Left = 354
              Top = 1
              Width = 66
              Height = 15
              Size.Values = (
                33.072916666666670000
                780.520833333333200000
                2.204861111111111000
                145.520833333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qupowersalesbd
              DataField = 'Transco'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Mask = '#,###.#0'
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText137: TQRDBText
              Left = 432
              Top = 1
              Width = 86
              Height = 15
              Size.Values = (
                33.072916666666670000
                952.500000000000000000
                2.204861111111111000
                189.618055555555600000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qupowersalesbd
              DataField = 'Sysloss'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Mask = '#,###.#0'
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText138: TQRDBText
              Left = 524
              Top = 1
              Width = 57
              Height = 15
              Size.Values = (
                33.072916666666670000
                1155.347222222222000000
                2.204861111111111000
                125.677083333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qupowersalesbd
              DataField = 'pantawid'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Mask = '#,###.#0'
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText139: TQRDBText
              Left = 590
              Top = 1
              Width = 73
              Height = 15
              Size.Values = (
                33.072916666666670000
                1300.868055555556000000
                2.204861111111111000
                160.954861111111100000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qupowersalesbd
              DataField = 'Vatdisc'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Mask = '#,###.#0'
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText140: TQRDBText
              Left = 670
              Top = 1
              Width = 74
              Height = 15
              Size.Values = (
                33.072916666666670000
                1477.256944444444000000
                2.204861111111111000
                163.159722222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qupowersalesbd
              DataField = 'EVATNet'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Mask = '#,###.#0'
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText141: TQRDBText
              Left = 757
              Top = 1
              Width = 75
              Height = 15
              Size.Values = (
                33.072916666666670000
                1669.079861111111000000
                2.204861111111111000
                165.364583333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qupowersalesbd
              DataField = 'OTcharges'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Mask = '#,###.#0'
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText142: TQRDBText
              Left = 847
              Top = 1
              Width = 70
              Height = 15
              Size.Values = (
                33.072916666666670000
                1867.517361111111000000
                2.204861111111111000
                154.340277777777800000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qupowersalesbd
              DataField = 'RFSC'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Mask = '#,###.#0'
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText143: TQRDBText
              Left = 1024
              Top = 2
              Width = 65
              Height = 15
              Size.Values = (
                33.072916666666670000
                2257.777777777778000000
                4.409722222222222000
                143.315972222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qupowersalesbd
              DataField = 'SCDisc'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Mask = '#,###.#0'
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText144: TQRDBText
              Left = 1103
              Top = 2
              Width = 62
              Height = 15
              Size.Values = (
                33.072916666666670000
                2431.961805555556000000
                4.409722222222222000
                136.701388888888900000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qupowersalesbd
              DataField = 'SCSubs'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Mask = '#,###.#0'
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText131: TQRDBText
              Left = 1176
              Top = 1
              Width = 75
              Height = 15
              Size.Values = (
                33.072916666666670000
                2592.916666666667000000
                2.204861111111111000
                165.364583333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qupowersalesbd
              DataField = 'Syscharge'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Mask = '#,###.#0'
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRShape324: TQRShape
              Left = 179
              Top = -59
              Width = 3
              Height = 33
              Size.Values = (
                72.760416666666680000
                394.670138888888900000
                -130.086805555555600000
                6.614583333333332000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape337: TQRShape
              Left = 97
              Top = 1
              Width = 3
              Height = 34
              Size.Values = (
                74.965277777777780000
                213.871527777777800000
                2.204861111111111000
                6.614583333333332000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRDBText145: TQRDBText
              Left = 1269
              Top = 2
              Width = 103
              Height = 15
              Size.Values = (
                33.072916666666670000
                2797.968750000000000000
                4.409722222222222000
                227.100694444444400000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qupowersalesbd
              DataField = 'UchargesTotal'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Mask = '#,###.#0'
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText146: TQRDBText
              Left = 101
              Top = 17
              Width = 76
              Height = 15
              Size.Values = (
                33.072916666666670000
                222.690972222222200000
                37.482638888888890000
                167.569444444444400000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qupowersalesbd
              DataField = 'scc'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Mask = '#,###.#0'
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRShape357: TQRShape
              Left = 1257
              Top = 0
              Width = 3
              Height = 34
              Size.Values = (
                74.965277777777780000
                2771.510416666667000000
                0.000000000000000000
                6.614583333333332000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRDBText147: TQRDBText
              Left = 934
              Top = 2
              Width = 74
              Height = 15
              Size.Values = (
                33.072916666666670000
                2059.340277777778000000
                4.409722222222222000
                163.159722222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qupowersalesbd
              DataField = 'Fitall'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Mask = '#,###.#0'
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText215: TQRDBText
              Left = -1
              Top = 17
              Width = 96
              Height = 15
              Size.Values = (
                33.072916666666670000
                -2.204861111111111000
                37.482638888888890000
                211.666666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qupowersalesbd
              DataField = 'ucsd'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Mask = '#,###.#0'
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
          end
          object QRBand25: TQRBand
            Left = 58
            Top = 246
            Width = 1383
            Height = 38
            Frame.DrawTop = True
            Frame.DrawBottom = True
            Frame.DrawLeft = True
            Frame.DrawRight = True
            AlignToBottom = False
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              83.784722222222220000
              3049.322916666667000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbGroupFooter
            object QRExpr52: TQRExpr
              Left = 8
              Top = 3
              Width = 87
              Height = 15
              Size.Values = (
                33.072916666666670000
                17.638888888888890000
                6.614583333333332000
                191.822916666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(quPowerSalesBD.Environmental)'
              Mask = '#,###.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr53: TQRExpr
              Left = 101
              Top = 3
              Width = 77
              Height = 15
              Size.Values = (
                33.072916666666670000
                222.690972222222200000
                6.614583333333332000
                169.774305555555600000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(quPowerSalesBD.Missionary)'
              Mask = '#,###.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr54: TQRExpr
              Left = 183
              Top = 3
              Width = 79
              Height = 15
              Size.Values = (
                33.072916666666670000
                403.489583333333300000
                6.614583333333332000
                174.184027777777800000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(quPowerSalesBD.Distribution)'
              Mask = '#,###.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr55: TQRExpr
              Left = 265
              Top = 4
              Width = 81
              Height = 15
              Size.Values = (
                33.072916666666670000
                584.288194444444400000
                8.819444444444444000
                178.593750000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(quPowerSalesBD.Genco)'
              Mask = '#,###.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr56: TQRExpr
              Left = 351
              Top = 3
              Width = 69
              Height = 16
              Size.Values = (
                35.277777777777780000
                773.906250000000000000
                6.614583333333332000
                152.135416666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(quPowerSalesBD.Transco)'
              Mask = '#,###.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr57: TQRExpr
              Left = 432
              Top = 3
              Width = 86
              Height = 16
              Size.Values = (
                35.277777777777780000
                952.500000000000000000
                6.614583333333332000
                189.618055555555600000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(quPowerSalesBD.Sysloss)'
              Mask = '#,###.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr58: TQRExpr
              Left = 523
              Top = 3
              Width = 58
              Height = 16
              Size.Values = (
                35.277777777777780000
                1153.142361111111000000
                6.614583333333332000
                127.881944444444400000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(quPowerSalesBD.Pantawid)'
              Mask = '#,###.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr59: TQRExpr
              Left = 584
              Top = 3
              Width = 77
              Height = 16
              Size.Values = (
                35.277777777777780000
                1287.638888888889000000
                6.614583333333332000
                169.774305555555600000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(quPowerSalesBD.Vatdisc)'
              Mask = '#,###.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr60: TQRExpr
              Left = 665
              Top = 3
              Width = 77
              Height = 16
              Size.Values = (
                35.277777777777780000
                1466.232638888889000000
                6.614583333333332000
                169.774305555555600000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(quPowerSalesBD.EVATNet)'
              Mask = '#,###.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr61: TQRExpr
              Left = 757
              Top = 3
              Width = 75
              Height = 16
              Size.Values = (
                35.277777777777780000
                1669.079861111111000000
                6.614583333333332000
                165.364583333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(quPowerSalesBD.OTCharges)'
              Mask = '#,###.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr62: TQRExpr
              Left = 847
              Top = 3
              Width = 70
              Height = 16
              Size.Values = (
                35.277777777777780000
                1867.517361111111000000
                6.614583333333332000
                154.340277777777800000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(quPowerSalesBD.RFSC)'
              Mask = '#,###.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr63: TQRExpr
              Left = 1024
              Top = 3
              Width = 65
              Height = 16
              Size.Values = (
                35.277777777777780000
                2257.777777777778000000
                6.614583333333332000
                143.315972222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(quPowerSalesBD.Scdisc)'
              Mask = '#,###.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr64: TQRExpr
              Left = 1102
              Top = 3
              Width = 62
              Height = 16
              Size.Values = (
                35.277777777777780000
                2429.756944444444000000
                6.614583333333332000
                136.701388888888900000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(quPowerSalesBD.ScSubs)'
              Mask = '#,###.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr65: TQRExpr
              Left = 1281
              Top = 6
              Width = 91
              Height = 16
              Size.Values = (
                35.277777777777780000
                2824.427083333333000000
                13.229166666666670000
                200.642361111111100000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(quPowerSalesBD.UchargesTotal)'
              Mask = '#,###.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr51: TQRExpr
              Left = 1176
              Top = 3
              Width = 75
              Height = 16
              Size.Values = (
                35.277777777777780000
                2592.916666666667000000
                6.614583333333332000
                165.364583333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(quPowerSalesBD.Syscharge)'
              Mask = '#,###.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr66: TQRExpr
              Left = 101
              Top = 19
              Width = 77
              Height = 15
              Size.Values = (
                33.072916666666670000
                222.690972222222200000
                41.892361111111110000
                169.774305555555600000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(quPowerSalesBD.scc)'
              Mask = '#,###.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr67: TQRExpr
              Left = 940
              Top = 3
              Width = 68
              Height = 16
              Size.Values = (
                35.277777777777780000
                2072.569444444444000000
                6.614583333333332000
                149.930555555555600000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(quPowerSalesBD.Fitall)'
              Mask = '#,###.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr118: TQRExpr
              Left = 8
              Top = 19
              Width = 87
              Height = 15
              Size.Values = (
                33.072916666666670000
                17.638888888888890000
                41.892361111111110000
                191.822916666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(quPowerSalesBD.ucsd)'
              Mask = '#,###.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
          end
          object QRGroup1: TQRGroup
            Left = 58
            Top = 160
            Width = 1383
            Height = 50
            Frame.DrawLeft = True
            Frame.DrawRight = True
            AlignToBottom = False
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              110.243055555555600000
              3049.322916666667000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            FooterBand = QRBand25
            Master = qrPowerSalesBD
            ReprintOnNewPage = False
            object QRLabel176: TQRLabel
              Left = 524
              Top = 9
              Width = 62
              Height = 35
              Size.Values = (
                77.170138888888900000
                1155.347222222222000000
                19.843750000000000000
                136.701388888888900000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Caption = 'PANTAWID RECOVERY'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel173: TQRLabel
              Left = 22
              Top = 1
              Width = 122
              Height = 17
              Size.Values = (
                37.482638888888890000
                48.506944444444440000
                2.204861111111111000
                268.993055555555600000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              Caption = 'UNIVERSAL CHARGES'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel175: TQRLabel
              Left = 284
              Top = 1
              Width = 166
              Height = 17
              Size.Values = (
                37.482638888888890000
                626.180555555555600000
                2.204861111111111000
                366.006944444444400000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              Caption = 'EXPANDED VALUE ADDED TAX'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel177: TQRLabel
              Left = 591
              Top = 5
              Width = 59
              Height = 17
              Size.Values = (
                37.482638888888890000
                1303.072916666667000000
                11.024305555555560000
                130.086805555555600000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              Caption = 'EVAT DISC'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel178: TQRLabel
              Left = 684
              Top = 5
              Width = 53
              Height = 17
              Size.Values = (
                37.482638888888890000
                1508.125000000000000000
                11.024305555555560000
                116.857638888888900000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              Caption = 'EVAT NET'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel179: TQRLabel
              Left = 766
              Top = 5
              Width = 61
              Height = 30
              Size.Values = (
                66.145833333333320000
                1688.923611111111000000
                11.024305555555560000
                134.496527777777800000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Caption = 'OTHER CHARGES'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel180: TQRLabel
              Left = 873
              Top = 10
              Width = 32
              Height = 17
              Size.Values = (
                37.482638888888890000
                1924.843750000000000000
                22.048611111111110000
                70.555555555555560000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              Caption = 'RFSC'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel181: TQRLabel
              Left = 936
              Top = 6
              Width = 75
              Height = 42
              Size.Values = (
                92.604166666666680000
                2063.750000000000000000
                13.229166666666670000
                165.364583333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Caption = 'FEED-IN TARIFF ALLOWANCE'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel182: TQRLabel
              Left = 1023
              Top = 4
              Width = 62
              Height = 39
              Size.Values = (
                85.989583333333320000
                2255.572916666667000000
                8.819444444444444000
                136.701388888888900000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Caption = 'SENIOR CITIZEN DISCOUNT'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel183: TQRLabel
              Left = 1113
              Top = 4
              Width = 54
              Height = 39
              Size.Values = (
                85.989583333333320000
                2454.010416666667000000
                8.819444444444444000
                119.062500000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Caption = 'SENIOR CITIZEN SUBSIDY'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape325: TQRShape
              Tag = 1000
              Left = 179
              Top = 1
              Width = 3
              Height = 26
              Size.Values = (
                57.326388888888890000
                394.670138888888900000
                2.204861111111111000
                6.614583333333332000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape326: TQRShape
              Tag = 1000
              Left = 521
              Top = -2
              Width = 3
              Height = 49
              Size.Values = (
                108.038194444444400000
                1148.732638888889000000
                -4.409722222222222000
                6.614583333333332000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape327: TQRShape
              Tag = 1000
              Left = 584
              Top = 1
              Width = 3
              Height = 45
              Size.Values = (
                99.218750000000000000
                1287.638888888889000000
                2.204861111111111000
                6.614583333333332000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape328: TQRShape
              Tag = 1000
              Left = 666
              Top = 1
              Width = 3
              Height = 26
              Size.Values = (
                57.326388888888890000
                1468.437500000000000000
                2.204861111111111000
                6.614583333333332000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape329: TQRShape
              Tag = 1000
              Left = 746
              Top = 1
              Width = 3
              Height = 26
              Size.Values = (
                57.326388888888890000
                1644.826388888889000000
                2.204861111111111000
                6.614583333333332000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape330: TQRShape
              Tag = 1000
              Left = 839
              Top = 0
              Width = 3
              Height = 48
              Size.Values = (
                105.833333333333300000
                1849.878472222222000000
                0.000000000000000000
                6.614583333333332000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape331: TQRShape
              Tag = 1000
              Left = 921
              Top = 6
              Width = 5
              Height = 39
              Size.Values = (
                85.989583333333320000
                2030.677083333333000000
                13.229166666666670000
                11.024305555555560000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape332: TQRShape
              Tag = 1000
              Left = 1014
              Top = 6
              Width = 3
              Height = 39
              Size.Values = (
                85.989583333333320000
                2235.729166666667000000
                13.229166666666670000
                6.614583333333332000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape333: TQRShape
              Tag = 1000
              Left = 1094
              Top = 2
              Width = 3
              Height = 44
              Size.Values = (
                97.013888888888900000
                2412.118055555556000000
                4.409722222222222000
                6.614583333333332000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape334: TQRShape
              Tag = 1000
              Left = 1170
              Top = 2
              Width = 3
              Height = 42
              Size.Values = (
                92.604166666666680000
                2579.687500000000000000
                4.409722222222222000
                6.614583333333332000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape335: TQRShape
              Tag = 1000
              Left = 1
              Top = 13
              Width = 521
              Height = 12
              Size.Values = (
                26.458333333333330000
                2.204861111111111000
                28.663194444444440000
                1148.732638888889000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsHorLine
              VertAdjust = 0
            end
            object QRShape336: TQRShape
              Tag = 1000
              Left = 585
              Top = 16
              Width = 163
              Height = 12
              Size.Values = (
                26.458333333333330000
                1289.843750000000000000
                35.277777777777780000
                359.392361111111100000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsHorLine
              VertAdjust = 0
            end
            object QRLabel184: TQRLabel
              Left = 1301
              Top = 10
              Width = 69
              Height = 36
              Size.Values = (
                79.375000000000000000
                2868.524305555556000000
                22.048611111111110000
                152.135416666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Caption = 'TOTAL'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel186: TQRLabel
              Left = 107
              Top = 20
              Width = 72
              Height = 15
              Size.Values = (
                33.072916666666670000
                235.920138888888900000
                44.097222222222220000
                158.750000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              Caption = 'MISSIONARY'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel187: TQRLabel
              Left = 182
              Top = 20
              Width = 80
              Height = 15
              Size.Values = (
                33.072916666666670000
                401.284722222222200000
                44.097222222222220000
                176.388888888888900000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              Caption = 'DISTRIBUTION'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel188: TQRLabel
              Left = 284
              Top = 20
              Width = 42
              Height = 15
              Size.Values = (
                33.072916666666670000
                626.180555555555600000
                44.097222222222220000
                92.604166666666670000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              Caption = 'GENCO'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel189: TQRLabel
              Left = 358
              Top = 20
              Width = 55
              Height = 15
              Size.Values = (
                33.072916666666670000
                789.340277777777800000
                44.097222222222220000
                121.267361111111100000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              Caption = 'TRANSCO'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel190: TQRLabel
              Left = 435
              Top = 22
              Width = 78
              Height = 15
              Size.Values = (
                33.072916666666670000
                959.114583333333300000
                48.506944444444440000
                171.979166666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              Caption = 'SYSTEM LOSS'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape338: TQRShape
              Left = 264
              Top = 20
              Width = 3
              Height = 43
              Size.Values = (
                94.809027777777780000
                582.083333333333200000
                44.097222222222220000
                6.614583333333332000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape339: TQRShape
              Left = 350
              Top = 20
              Width = 3
              Height = 45
              Size.Values = (
                99.218750000000000000
                771.701388888889000000
                44.097222222222220000
                6.614583333333332000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape340: TQRShape
              Left = 426
              Top = 19
              Width = 3
              Height = 46
              Size.Values = (
                101.423611111111100000
                939.270833333333200000
                41.892361111111110000
                6.614583333333332000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel191: TQRLabel
              Left = 587
              Top = 28
              Width = 80
              Height = 15
              Size.Values = (
                33.072916666666670000
                1294.253472222222000000
                61.736111111111110000
                176.388888888888900000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              Caption = 'DISTRIBUTION'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel172: TQRLabel
              Left = 1188
              Top = 4
              Width = 63
              Height = 39
              Size.Values = (
                85.989583333333320000
                2619.375000000000000000
                8.819444444444444000
                138.906250000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Caption = 'SYSTEM LOSS CHARGE'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape323: TQRShape
              Tag = 1000
              Left = 1257
              Top = 4
              Width = 3
              Height = 41
              Size.Values = (
                90.399305555555560000
                2771.510416666667000000
                8.819444444444444000
                6.614583333333332000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel194: TQRLabel
              Left = 151
              Top = 33
              Width = 25
              Height = 17
              Size.Values = (
                37.482638888888890000
                332.934027777777800000
                72.760416666666670000
                55.121527777777780000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              Caption = 'SCC'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel185: TQRLabel
              Left = 3
              Top = 20
              Width = 96
              Height = 15
              Size.Values = (
                33.072916666666670000
                6.614583333333333000
                44.097222222222220000
                211.666666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              Caption = 'ENVIRONMENTAL'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel192: TQRLabel
              Left = 668
              Top = 28
              Width = 80
              Height = 15
              Size.Values = (
                33.072916666666670000
                1472.847222222222000000
                61.736111111111110000
                176.388888888888900000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              Caption = 'DISTRIBUTION'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel290: TQRLabel
              Left = 8
              Top = 34
              Width = 90
              Height = 17
              Size.Values = (
                37.482638888888890000
                17.638888888888890000
                74.965277777777780000
                198.437500000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              Caption = 'STRAND. DEBTS'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape463: TQRShape
              Left = 179
              Top = 20
              Width = 3
              Height = 43
              Size.Values = (
                94.809027777777780000
                394.670138888888900000
                44.097222222222220000
                6.614583333333333000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape464: TQRShape
              Left = 97
              Top = 20
              Width = 3
              Height = 43
              Size.Values = (
                94.809027777777780000
                213.871527777777800000
                44.097222222222220000
                6.614583333333333000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'OC Report'
        ImageIndex = 7
        object qrOTC: TQuickRep
          AlignWithMargins = True
          Left = -37
          Top = 53
          Width = 1498
          Height = 979
          DataSet = qupowersalesbd
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
          Options = []
          Page.Columns = 1
          Page.Orientation = poLandscape
          Page.PaperSize = FanfoldGerLegal
          Page.Continuous = False
          Page.Values = (
            127.000000000000000000
            2159.000000000000000000
            127.000000000000000000
            3302.000000000000000000
            190.500000000000000000
            190.500000000000000000
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
          PrinterSettings.MemoryLimit = 1000000
          PrinterSettings.PrintQuality = 0
          PrinterSettings.Collate = 0
          PrinterSettings.ColorOption = 0
          PrintIfEmpty = False
          SnapToGrid = True
          Units = Inches
          Zoom = 120
          PrevFormStyle = fsNormal
          PreviewInitialState = wsMaximized
          PrevInitialZoom = qrZoomToFit
          PreviewDefaultSaveType = stQRP
          PreviewLeft = 0
          PreviewTop = 0
          StartNewPageInComposite = True
          object QRBand32: TQRBand
            Left = 86
            Top = 58
            Width = 1325
            Height = 87
            Margins.Left = 5
            Margins.Right = 5
            AlignToBottom = False
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              191.822916666666700000
              2921.440972222222000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbTitle
            object QRLabel196: TQRLabel
              Left = 448
              Top = 6
              Width = 428
              Height = 20
              Size.Values = (
                44.097222222222220000
                987.777777777777800000
                13.229166666666670000
                943.680555555555600000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = True
              Caption = 'ZAMBOANGA DEL NORTE ELECTRIC COOPERATIVE, INC.'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 10
            end
            object QRLabel204: TQRLabel
              Left = 576
              Top = 29
              Width = 173
              Height = 18
              Size.Values = (
                39.687500000000000000
                1270.000000000000000000
                63.940972222222220000
                381.440972222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = True
              Caption = 'General Luna St., Dipolog City'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRShape466: TQRShape
              Left = 1140
              Top = 93
              Width = 3
              Height = 20
              Size.Values = (
                44.097222222222220000
                2513.541666666667000000
                205.052083333333300000
                6.614583333333333000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
          end
          object QRGroup3: TQRGroup
            Left = 86
            Top = 145
            Width = 1325
            Height = 31
            Frame.DrawTop = True
            Frame.DrawBottom = True
            Frame.DrawLeft = True
            Frame.DrawRight = True
            AlignToBottom = False
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              68.350694444444440000
              2921.440972222222000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            Master = qrOTC
            ReprintOnNewPage = False
            object QRLabel232: TQRLabel
              Left = 3
              Top = 2
              Width = 40
              Height = 26
              Frame.DrawRight = True
              Size.Values = (
                57.326388888888890000
                6.614583333333332000
                4.409722222222222000
                88.194444444444440000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Caption = 'AREA      .'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel233: TQRLabel
              Left = 41
              Top = 2
              Width = 171
              Height = 28
              Size.Values = (
                61.736111111111100000
                90.399305555555560000
                4.409722222222222000
                377.031250000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              BiDiMode = bdRightToLeftReadingOnly
              ParentBiDiMode = False
              Caption = '   MUNICIPALITY'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape423: TQRShape
              Left = 213
              Top = 0
              Width = 5
              Height = 45
              Size.Values = (
                99.218750000000000000
                469.635416666666700000
                0.000000000000000000
                11.024305555555560000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel238: TQRLabel
              Left = 217
              Top = 2
              Width = 94
              Height = 28
              Frame.DrawRight = True
              Size.Values = (
                61.736111111111100000
                478.454861111111100000
                4.409722222222222000
                207.256944444444400000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Caption = 'REAL Property TAX'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel239: TQRLabel
              Left = 309
              Top = 2
              Width = 91
              Height = 28
              Frame.DrawRight = True
              Size.Values = (
                61.736111111111100000
                681.302083333333200000
                4.409722222222222000
                200.642361111111100000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Caption = 'GENERATION SysCharge O/U'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel240: TQRLabel
              Left = 398
              Top = 2
              Width = 90
              Height = 28
              Frame.DrawRight = True
              Size.Values = (
                61.736111111111100000
                877.534722222222200000
                4.409722222222222000
                198.437500000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Caption = 'TRANSMISSION SysCharge O/U'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel241: TQRLabel
              Left = 486
              Top = 2
              Width = 91
              Height = 28
              Frame.DrawRight = True
              Size.Values = (
                61.736111111111100000
                1071.562500000000000000
                4.409722222222222000
                200.642361111111100000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Caption = 'SYSTEM LOSS Charge O/U'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel242: TQRLabel
              Left = 575
              Top = 2
              Width = 98
              Height = 28
              Frame.DrawRight = True
              Size.Values = (
                61.736111111111100000
                1267.795138888889000000
                4.409722222222222000
                216.076388888888900000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Caption = 'TRANS DEMAND Charge O/U'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel243: TQRLabel
              Left = 671
              Top = 1
              Width = 92
              Height = 28
              Frame.DrawRight = True
              Size.Values = (
                61.736111111111110000
                1479.461805555556000000
                2.204861111111111000
                202.847222222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Caption = 'LIFELINE Rate O/U'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel244: TQRLabel
              Left = 761
              Top = 2
              Width = 92
              Height = 28
              Frame.DrawRight = True
              Size.Values = (
                61.736111111111100000
                1677.899305555556000000
                4.409722222222222000
                202.847222222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Caption = 'SENIOR CITIZEN O/U'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel245: TQRLabel
              Left = 851
              Top = 2
              Width = 86
              Height = 28
              Size.Values = (
                61.736111111111110000
                1876.336805555556000000
                4.409722222222222000
                189.618055555555600000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Caption = 'INTERCLASS Cross Adj.'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel246: TQRLabel
              Left = 1124
              Top = 4
              Width = 81
              Height = 23
              Size.Values = (
                50.711805555555560000
                2478.263888888889000000
                8.819444444444444000
                178.593750000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Caption = '  TOTAL    '
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel195: TQRLabel
              Left = 936
              Top = 6
              Width = 80
              Height = 20
              Size.Values = (
                44.097222222222220000
                2063.750000000000000000
                13.229166666666670000
                176.388888888888900000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Caption = 'PAR Recovery'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel291: TQRLabel
              Left = 1241
              Top = 5
              Width = 79
              Height = 22
              Size.Values = (
                48.506944444444440000
                2736.232638888889000000
                11.024305555555560000
                174.184027777777800000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Caption = 'GRAND TOTAL'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape467: TQRShape
              Left = 933
              Top = 0
              Width = 4
              Height = 40
              Size.Values = (
                88.194444444444440000
                2057.135416666667000000
                0.000000000000000000
                8.819444444444444000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape468: TQRShape
              Left = 1018
              Top = -1
              Width = 4
              Height = 43
              Size.Values = (
                94.809027777777780000
                2244.548611111111000000
                -2.204861111111111000
                8.819444444444444000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape469: TQRShape
              Left = 1210
              Top = 0
              Width = 4
              Height = 41
              Size.Values = (
                90.399305555555560000
                2667.881944444444000000
                0.000000000000000000
                8.819444444444444000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel292: TQRLabel
              Left = 1023
              Top = 2
              Width = 80
              Height = 26
              Size.Values = (
                57.326388888888890000
                2255.572916666667000000
                4.409722222222222000
                176.388888888888900000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Caption = 'GRAM & ICERA DAA'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape470: TQRShape
              Left = 1105
              Top = -1
              Width = 4
              Height = 44
              Size.Values = (
                97.013888888888890000
                2436.371527777778000000
                -2.204861111111111000
                8.819444444444444000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
          end
          object QRBand34: TQRBand
            Left = 86
            Top = 176
            Width = 1325
            Height = 18
            Frame.DrawTop = True
            Frame.DrawLeft = True
            Frame.DrawRight = True
            AlignToBottom = False
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              39.687500000000000000
              2921.440972222222000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbDetail
            object QRDBText172: TQRDBText
              Left = 5
              Top = 1
              Width = 34
              Height = 15
              Size.Values = (
                33.072916666666670000
                11.024305555555560000
                2.204861111111111000
                74.965277777777780000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qupowersalesbd
              DataField = 'Area'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText173: TQRDBText
              Left = 46
              Top = 1
              Width = 165
              Height = 15
              Margins.Left = 4
              Size.Values = (
                33.072916666666670000
                101.423611111111100000
                2.204861111111111000
                363.802083333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qupowersalesbd
              DataField = 'Municipality'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText179: TQRDBText
              Left = 220
              Top = 1
              Width = 80
              Height = 15
              Size.Values = (
                33.072916666666670000
                485.069444444444400000
                2.204861111111111000
                176.388888888888900000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qupowersalesbd
              DataField = 'RPTaxes'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Mask = '###,##0.#0'
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText180: TQRDBText
              Left = 319
              Top = 1
              Width = 72
              Height = 15
              Size.Values = (
                33.072916666666670000
                703.350694444444400000
                2.204861111111111000
                158.750000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qupowersalesbd
              DataField = 'OtherGenSysAdj'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Mask = '###,##0.#0'
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText181: TQRDBText
              Left = 408
              Top = 2
              Width = 72
              Height = 15
              Size.Values = (
                33.072916666666670000
                899.583333333333200000
                4.409722222222222000
                158.750000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qupowersalesbd
              DataField = 'OtherTransAdj'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Mask = '###,##0.#0'
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText182: TQRDBText
              Left = 495
              Top = 1
              Width = 72
              Height = 15
              Size.Values = (
                33.072916666666670000
                1091.406250000000000000
                2.204861111111111000
                158.750000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qupowersalesbd
              DataField = 'OtherSysLossAdj'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Mask = '###,##0.#0'
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText183: TQRDBText
              Left = 586
              Top = 1
              Width = 74
              Height = 15
              Size.Values = (
                33.072916666666670000
                1292.048611111111000000
                2.204861111111111000
                163.159722222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qupowersalesbd
              DataField = 'OtherTCDemandAdj'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Mask = '###,##0.#0'
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText184: TQRDBText
              Left = 677
              Top = 1
              Width = 74
              Height = 15
              Size.Values = (
                33.072916666666670000
                1492.690972222222000000
                2.204861111111111000
                163.159722222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qupowersalesbd
              DataField = 'OtherLifelineAdj'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Mask = '###,##0.#0'
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText185: TQRDBText
              Left = 768
              Top = 1
              Width = 74
              Height = 15
              Size.Values = (
                33.072916666666670000
                1693.333333333333000000
                2.204861111111111000
                163.159722222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qupowersalesbd
              DataField = 'OtherSeniorCtznAdj'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Mask = '###,##0.#0'
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText186: TQRDBText
              Left = 856
              Top = 1
              Width = 74
              Height = 15
              Size.Values = (
                33.072916666666670000
                1887.361111111111000000
                2.204861111111111000
                163.159722222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qupowersalesbd
              DataField = 'ICCrossSub'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Mask = '###,##0.#0'
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText187: TQRDBText
              Left = 1116
              Top = 1
              Width = 90
              Height = 15
              Size.Values = (
                33.072916666666670000
                2460.625000000000000000
                2.204861111111111000
                198.437500000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qupowersalesbd
              DataField = 'riOUtotal'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Mask = '###,##0.#0'
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRShape341: TQRShape
              Left = 215
              Top = -1
              Width = 3
              Height = 22
              Size.Values = (
                48.506944444444440000
                474.045138888888900000
                -2.204861111111111000
                6.614583333333332000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape356: TQRShape
              Left = 40
              Top = -1
              Width = 3
              Height = 22
              Size.Values = (
                48.506944444444440000
                88.194444444444440000
                -2.204861111111111000
                6.614583333333332000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape359: TQRShape
              Left = 308
              Top = -1
              Width = 3
              Height = 22
              Size.Values = (
                48.506944444444440000
                679.097222222222200000
                -2.204861111111111000
                6.614583333333332000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape361: TQRShape
              Left = 397
              Top = 0
              Width = 3
              Height = 22
              Size.Values = (
                48.506944444444440000
                875.329861111111000000
                0.000000000000000000
                6.614583333333332000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape365: TQRShape
              Left = 486
              Top = 0
              Width = 3
              Height = 22
              Size.Values = (
                48.506944444444440000
                1071.562500000000000000
                0.000000000000000000
                6.614583333333332000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape369: TQRShape
              Left = 575
              Top = -1
              Width = 3
              Height = 22
              Size.Values = (
                48.506944444444440000
                1267.795138888889000000
                -2.204861111111111000
                6.614583333333332000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape371: TQRShape
              Left = 670
              Top = -1
              Width = 3
              Height = 22
              Size.Values = (
                48.506944444444440000
                1477.256944444444000000
                -2.204861111111111000
                6.614583333333332000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape387: TQRShape
              Left = 760
              Top = -1
              Width = 3
              Height = 22
              Size.Values = (
                48.506944444444440000
                1675.694444444444000000
                -2.204861111111111000
                6.614583333333332000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape421: TQRShape
              Left = 850
              Top = -1
              Width = 3
              Height = 22
              Size.Values = (
                48.506944444444440000
                1874.131944444444000000
                -2.204861111111111000
                6.614583333333332000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape422: TQRShape
              Left = 934
              Top = -1
              Width = 3
              Height = 22
              Size.Values = (
                48.506944444444440000
                2059.340277777778000000
                -2.204861111111111000
                6.614583333333333000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape355: TQRShape
              Left = 1019
              Top = -1
              Width = 3
              Height = 22
              Size.Values = (
                48.506944444444440000
                2246.753472222222000000
                -2.204861111111111000
                6.614583333333333000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRDBText216: TQRDBText
              Left = 939
              Top = 2
              Width = 74
              Height = 15
              Size.Values = (
                33.072916666666670000
                2070.364583333333000000
                4.409722222222222000
                163.159722222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qupowersalesbd
              DataField = 'PARec'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Mask = '###,##0.#0'
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRShape465: TQRShape
              Left = 1211
              Top = -2
              Width = 3
              Height = 22
              Size.Values = (
                48.506944444444440000
                2670.086805555556000000
                -4.409722222222222000
                6.614583333333333000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRDBText217: TQRDBText
              Left = 1220
              Top = 2
              Width = 100
              Height = 15
              Size.Values = (
                33.072916666666670000
                2689.930555555556000000
                4.409722222222222000
                220.486111111111100000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qupowersalesbd
              DataField = 'Gtotal'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Mask = '#,###.#0'
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText218: TQRDBText
              Left = 1028
              Top = 2
              Width = 74
              Height = 15
              Size.Values = (
                33.072916666666670000
                2266.597222222222000000
                4.409722222222222000
                163.159722222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qupowersalesbd
              DataField = 'gram'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Mask = '###,##0.#0'
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRShape471: TQRShape
              Left = 1106
              Top = -1
              Width = 3
              Height = 22
              Size.Values = (
                48.506944444444440000
                2438.576388888889000000
                -2.204861111111111000
                6.614583333333333000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
          end
          object QRBand35: TQRBand
            Left = 86
            Top = 194
            Width = 1325
            Height = 32
            Frame.DrawTop = True
            Frame.DrawBottom = True
            Frame.DrawLeft = True
            Frame.DrawRight = True
            AlignToBottom = False
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              70.555555555555560000
              2921.440972222222000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbSummary
            object QRExpr92: TQRExpr
              Left = 1118
              Top = 6
              Width = 87
              Height = 15
              Size.Values = (
                33.072916666666670000
                2465.034722222222000000
                13.229166666666670000
                191.822916666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(quPowerSalesBD.riOUtotal)'
              Mask = '###,##0.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel247: TQRLabel
              Left = 77
              Top = 6
              Width = 43
              Height = 20
              Size.Values = (
                44.097222222222220000
                169.774305555555600000
                13.229166666666670000
                94.809027777777780000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Caption = 'TOTAL'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr79: TQRExpr
              Left = 226
              Top = 6
              Width = 76
              Height = 15
              Size.Values = (
                33.072916666666670000
                498.298611111111100000
                13.229166666666670000
                167.569444444444400000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(quPowerSalesBD.RPTaxes)'
              Mask = '###,##0.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr88: TQRExpr
              Left = 854
              Top = 5
              Width = 76
              Height = 15
              Size.Values = (
                33.072916666666670000
                1882.951388888889000000
                11.024305555555560000
                167.569444444444400000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(quPowerSalesBD.ICCrossSub)'
              Mask = '###,##0.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr87: TQRExpr
              Left = 766
              Top = 5
              Width = 76
              Height = 15
              Size.Values = (
                33.072916666666670000
                1688.923611111111000000
                11.024305555555560000
                167.569444444444400000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(quPowerSalesBD.OtherSeniorCtznAdj)'
              Mask = '###,##0.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr86: TQRExpr
              Left = 675
              Top = 5
              Width = 76
              Height = 15
              Size.Values = (
                33.072916666666670000
                1488.281250000000000000
                11.024305555555560000
                167.569444444444400000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(quPowerSalesBD.OtherLifelineAdj)'
              Mask = '###,##0.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr85: TQRExpr
              Left = 583
              Top = 6
              Width = 76
              Height = 15
              Size.Values = (
                33.072916666666670000
                1285.434027777778000000
                13.229166666666670000
                167.569444444444400000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(quPowerSalesBD.OtherTCDemandAdj)'
              Mask = '###,##0.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr82: TQRExpr
              Left = 314
              Top = 5
              Width = 76
              Height = 15
              Size.Values = (
                33.072916666666670000
                692.326388888889000000
                11.024305555555560000
                167.569444444444400000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(quPowerSalesBD.OtherGenSysAdj)'
              Mask = '###,##0.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr83: TQRExpr
              Left = 405
              Top = 5
              Width = 76
              Height = 15
              Size.Values = (
                33.072916666666670000
                892.968750000000000000
                11.024305555555560000
                167.569444444444400000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(quPowerSalesBD.OtherTransAdj)'
              Mask = '###,##0.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr84: TQRExpr
              Left = 491
              Top = 5
              Width = 76
              Height = 15
              Size.Values = (
                33.072916666666670000
                1082.586805555556000000
                11.024305555555560000
                167.569444444444400000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(quPowerSalesBD.OtherSysLossAdj)'
              Mask = '###,##0.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr119: TQRExpr
              Left = 937
              Top = 4
              Width = 76
              Height = 15
              Size.Values = (
                33.072916666666670000
                2065.954861111111000000
                8.819444444444444000
                167.569444444444400000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(quPowerSalesBD.PARec)'
              Mask = '###,##0.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr120: TQRExpr
              Left = 1211
              Top = 5
              Width = 109
              Height = 15
              Size.Values = (
                33.072916666666670000
                2670.086805555556000000
                11.024305555555560000
                240.329861111111100000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(quPowerSalesBD.Gtotal)'
              Mask = '###,##0.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr121: TQRExpr
              Left = 1026
              Top = 4
              Width = 76
              Height = 15
              Size.Values = (
                33.072916666666670000
                2262.187500000000000000
                8.819444444444444000
                167.569444444444400000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(quPowerSalesBD.gram)'
              Mask = '###,##0.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
          end
        end
        object qrOTC2: TQuickRep
          Left = 253
          Top = 382
          Width = 1498
          Height = 979
          DataSet = qupowersalesbd
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
          Options = []
          Page.Columns = 1
          Page.Orientation = poLandscape
          Page.PaperSize = FanfoldGerLegal
          Page.Continuous = False
          Page.Values = (
            127.000000000000000000
            2159.000000000000000000
            127.000000000000000000
            3302.000000000000000000
            127.000000000000000000
            1447.800000000000000000
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
          PrinterSettings.MemoryLimit = 1000000
          PrinterSettings.PrintQuality = 0
          PrinterSettings.Collate = 0
          PrinterSettings.ColorOption = 0
          PrintIfEmpty = False
          SnapToGrid = True
          Units = Inches
          Zoom = 120
          PrevFormStyle = fsNormal
          PreviewInitialState = wsMaximized
          PrevInitialZoom = qrZoom100
          PreviewDefaultSaveType = stQRP
          PreviewLeft = 0
          PreviewTop = 0
          StartNewPageInComposite = True
          object QRBand24: TQRBand
            Left = 58
            Top = 58
            Width = 784
            Height = 103
            AlignToBottom = False
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              227.100694444444400000
              1728.611111111111000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbTitle
            object QRLabel193: TQRLabel
              Left = 281
              Top = 6
              Width = 221
              Height = 20
              Size.Values = (
                44.097222222222220000
                619.565972222222200000
                13.229166666666670000
                487.274305555555600000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = True
              Caption = 'OTHER CHARGES SUMMARY'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 10
            end
          end
          object QRBand26: TQRBand
            Left = 58
            Top = 209
            Width = 784
            Height = 18
            Frame.DrawTop = True
            AlignToBottom = False
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              39.687500000000000000
              1728.611111111111000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbDetail
            object QRDBText148: TQRDBText
              Left = 27
              Top = 0
              Width = 88
              Height = 15
              Size.Values = (
                33.072916666666670000
                59.531250000000000000
                0.000000000000000000
                194.027777777777800000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qupowersalesbd
              DataField = 'PF'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Mask = '#,###.#0'
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRShape367: TQRShape
              Left = 121
              Top = -5
              Width = 3
              Height = 20
              Size.Values = (
                44.097222222222220000
                266.788194444444400000
                -11.024305555555560000
                6.614583333333332000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRDBText149: TQRDBText
              Left = 142
              Top = -1
              Width = 88
              Height = 15
              Size.Values = (
                33.072916666666670000
                313.090277777777800000
                -2.204861111111111000
                194.027777777777800000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qupowersalesbd
              DataField = 'XRF'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Mask = '#,###.#0'
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText151: TQRDBText
              Left = 520
              Top = -1
              Width = 88
              Height = 15
              Size.Values = (
                33.072916666666670000
                1146.527777777778000000
                -2.204861111111111000
                194.027777777777800000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qupowersalesbd
              DataField = 'OTCharges'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Mask = '#,###.#0'
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText152: TQRDBText
              Left = 261
              Top = 0
              Width = 88
              Height = 15
              Size.Values = (
                33.072916666666670000
                575.468750000000000000
                0.000000000000000000
                194.027777777777800000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qupowersalesbd
              DataField = 'BACKBILL'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Mask = '#,###.#0'
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText153: TQRDBText
              Left = 398
              Top = -1
              Width = 88
              Height = 15
              Size.Values = (
                33.072916666666670000
                877.534722222222200000
                -2.204861111111111000
                194.027777777777800000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qupowersalesbd
              DataField = 'VAT'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Mask = '#,###.#0'
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
          end
          object QRBand27: TQRBand
            Left = 58
            Top = 227
            Width = 784
            Height = 22
            Frame.DrawTop = True
            Frame.DrawBottom = True
            AlignToBottom = False
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              48.506944444444440000
              1728.611111111111000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbGroupFooter
            object QRExpr68: TQRExpr
              Left = 23
              Top = 3
              Width = 92
              Height = 15
              Size.Values = (
                33.072916666666670000
                50.711805555555560000
                6.614583333333332000
                202.847222222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(quPowerSalesBD.PF)'
              Mask = '#,###.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr69: TQRExpr
              Left = 143
              Top = 3
              Width = 87
              Height = 15
              Size.Values = (
                33.072916666666670000
                315.295138888888900000
                6.614583333333332000
                191.822916666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(quPowerSalesBD.XRF)'
              Mask = '#,###.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr70: TQRExpr
              Left = 262
              Top = 3
              Width = 87
              Height = 15
              Size.Values = (
                33.072916666666670000
                577.673611111111000000
                6.614583333333332000
                191.822916666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(quPowerSalesBD.BACKBILL)'
              Mask = '#,###.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr72: TQRExpr
              Left = 521
              Top = 3
              Width = 87
              Height = 15
              Size.Values = (
                33.072916666666670000
                1148.732638888889000000
                6.614583333333332000
                191.822916666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(quPowerSalesBD.otcharges)'
              Mask = '#,###.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr74: TQRExpr
              Left = 398
              Top = 3
              Width = 87
              Height = 15
              Size.Values = (
                33.072916666666670000
                877.534722222222200000
                6.614583333333332000
                191.822916666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(quPowerSalesBD.VAT)'
              Mask = '#,###.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
          end
          object QRGroup2: TQRGroup
            Left = 58
            Top = 161
            Width = 784
            Height = 48
            AlignToBottom = False
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              105.833333333333300000
              1728.611111111111000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            FooterBand = QRBand27
            Master = qrOTC2
            ReprintOnNewPage = False
            object QRLabel197: TQRLabel
              Left = 11
              Top = 6
              Width = 107
              Height = 35
              Size.Values = (
                77.170138888888900000
                24.253472222222220000
                13.229166666666670000
                235.920138888888900000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Caption = 'INSTALLMENT BACK BILLING / PF'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel198: TQRLabel
              Left = 131
              Top = 6
              Width = 103
              Height = 32
              Size.Values = (
                70.555555555555560000
                288.836805555555600000
                13.229166666666670000
                227.100694444444400000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Caption = 'TRANSFORMER REFUND'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape424: TQRShape
              Tag = 1000
              Left = 371
              Top = 7
              Width = 3
              Height = 30
              Size.Values = (
                66.145833333333320000
                818.003472222222200000
                15.434027777777780000
                6.614583333333332000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel199: TQRLabel
              Left = 512
              Top = 6
              Width = 93
              Height = 23
              Size.Values = (
                50.711805555555560000
                1128.888888888889000000
                13.229166666666670000
                205.052083333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Caption = 'TOTAL'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel200: TQRLabel
              Left = 254
              Top = 3
              Width = 105
              Height = 39
              Size.Values = (
                85.989583333333320000
                560.034722222222200000
                6.614583333333332000
                231.510416666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Caption = 'INSTALLMENT BACK BILLING'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel201: TQRLabel
              Left = 389
              Top = 3
              Width = 96
              Height = 39
              Size.Values = (
                85.989583333333320000
                857.690972222222200000
                6.614583333333332000
                211.666666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Caption = 'VAT BALANCE'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape425: TQRShape
              Tag = 1000
              Left = 245
              Top = 12
              Width = 3
              Height = 26
              Size.Values = (
                57.326388888888890000
                540.190972222222200000
                26.458333333333330000
                6.614583333333332000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape426: TQRShape
              Tag = 1000
              Left = 501
              Top = 7
              Width = 3
              Height = 26
              Size.Values = (
                57.326388888888890000
                1104.635416666667000000
                15.434027777777780000
                6.614583333333332000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape405: TQRShape
              Tag = 1000
              Left = 122
              Top = 11
              Width = 3
              Height = 26
              Size.Values = (
                57.326388888888890000
                268.993055555555600000
                24.253472222222220000
                6.614583333333332000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
          end
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Pilferage'
        ImageIndex = 8
        object qrpilferage: TQuickRep
          Left = 130
          Top = 41
          Width = 1248
          Height = 816
          DataSet = qPowerSalesLate
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
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
          Page.PaperSize = FanfoldGerLegal
          Page.Continuous = False
          Page.Values = (
            63.500000000000000000
            2159.000000000000000000
            63.500000000000000000
            3302.000000000000000000
            63.500000000000000000
            63.500000000000000000
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
          PrinterSettings.MemoryLimit = 1000000
          PrinterSettings.PrintQuality = 0
          PrinterSettings.Collate = 0
          PrinterSettings.ColorOption = 0
          PrintIfEmpty = True
          SnapToGrid = True
          Units = Inches
          Zoom = 100
          PrevFormStyle = fsNormal
          PreviewInitialState = wsMaximized
          PrevInitialZoom = qrZoomToWidth
          PreviewDefaultSaveType = stQRP
          PreviewLeft = 0
          PreviewTop = 0
          object QRBand28: TQRBand
            Left = 24
            Top = 100
            Width = 1200
            Height = 45
            Frame.DrawTop = True
            Frame.DrawLeft = True
            Frame.DrawRight = True
            AlignToBottom = False
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              119.062500000000000000
              3175.000000000000000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbColumnHeader
            object QRLabel202: TQRLabel
              Left = 57
              Top = 15
              Width = 36
              Height = 14
              Size.Values = (
                37.041666666666670000
                150.812500000000000000
                39.687500000000000000
                95.250000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taLeftJustify
              AlignToBand = False
              Caption = 'Charges'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape362: TQRShape
              Tag = 1000
              Left = 155
              Top = 0
              Width = 2
              Height = 30
              Size.Values = (
                79.375000000000000000
                410.104166666666700000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape363: TQRShape
              Left = 156
              Top = 13
              Width = 998
              Height = 2
              Size.Values = (
                5.291666666666667000
                412.750000000000000000
                34.395833333333330000
                2640.541666666667000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsHorLine
              VertAdjust = 0
            end
            object QRLabel203: TQRLabel
              Left = 158
              Top = 15
              Width = 43
              Height = 24
              Size.Values = (
                63.500000000000000000
                418.041666666666700000
                39.687500000000000000
                113.770833333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'No. of Consumers'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 6
            end
            object QRShape364: TQRShape
              Left = 201
              Top = 15
              Width = 2
              Height = 28
              Size.Values = (
                74.083333333333320000
                531.812500000000000000
                39.687500000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel205: TQRLabel
              Left = 217
              Top = 15
              Width = 41
              Height = 24
              Size.Values = (
                63.500000000000000000
                574.145833333333300000
                39.687500000000000000
                108.479166666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'Minimum KWHr'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape366: TQRShape
              Left = 275
              Top = 15
              Width = 2
              Height = 28
              Size.Values = (
                74.083333333333320000
                727.604166666666800000
                39.687500000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel206: TQRLabel
              Left = 294
              Top = 22
              Width = 53
              Height = 13
              Size.Values = (
                34.395833333333330000
                777.875000000000000000
                58.208333333333320000
                140.229166666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'KWHr'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape368: TQRShape
              Left = 347
              Top = 15
              Width = 2
              Height = 28
              Size.Values = (
                74.083333333333320000
                918.104166666666800000
                39.687500000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel207: TQRLabel
              Left = 355
              Top = 22
              Width = 62
              Height = 13
              Size.Values = (
                34.395833333333330000
                939.270833333333200000
                58.208333333333320000
                164.041666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'Amount'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape372: TQRShape
              Tag = 1000
              Left = 420
              Top = 0
              Width = 2
              Height = 30
              Size.Values = (
                79.375000000000000000
                1111.250000000000000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel208: TQRLabel
              Left = 468
              Top = 22
              Width = 53
              Height = 13
              Size.Values = (
                34.395833333333330000
                1238.250000000000000000
                58.208333333333320000
                140.229166666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'KWHr'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape373: TQRShape
              Left = 521
              Top = 15
              Width = 2
              Height = 28
              Size.Values = (
                74.083333333333320000
                1378.479166666667000000
                39.687500000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel209: TQRLabel
              Left = 523
              Top = 22
              Width = 74
              Height = 13
              Size.Values = (
                34.395833333333330000
                1383.770833333333000000
                58.208333333333320000
                195.791666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'Amount'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape374: TQRShape
              Tag = 1000
              Left = 596
              Top = 0
              Width = 2
              Height = 30
              Size.Values = (
                79.375000000000000000
                1576.916666666667000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel210: TQRLabel
              Left = 422
              Top = 15
              Width = 43
              Height = 24
              Size.Values = (
                63.500000000000000000
                1116.541666666667000000
                39.687500000000000000
                113.770833333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'No. of Consumers'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 6
            end
            object QRShape375: TQRShape
              Left = 465
              Top = 15
              Width = 2
              Height = 28
              Size.Values = (
                74.083333333333320000
                1230.312500000000000000
                39.687500000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel211: TQRLabel
              Left = 655
              Top = 22
              Width = 53
              Height = 13
              Size.Values = (
                34.395833333333330000
                1733.020833333333000000
                58.208333333333320000
                140.229166666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'KWHr'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape376: TQRShape
              Left = 711
              Top = 15
              Width = 2
              Height = 28
              Size.Values = (
                74.083333333333320000
                1881.187500000000000000
                39.687500000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel212: TQRLabel
              Left = 777
              Top = 22
              Width = 74
              Height = 13
              Size.Values = (
                34.395833333333330000
                2055.812500000000000000
                58.208333333333320000
                195.791666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'Amount'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape377: TQRShape
              Tag = 1000
              Left = 851
              Top = 0
              Width = 2
              Height = 30
              Size.Values = (
                79.375000000000000000
                2251.604166666667000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel213: TQRLabel
              Left = 598
              Top = 15
              Width = 52
              Height = 24
              Size.Values = (
                63.500000000000000000
                1582.208333333333000000
                39.687500000000000000
                137.583333333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'No. of Consumers'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 6
            end
            object QRShape378: TQRShape
              Left = 650
              Top = 15
              Width = 2
              Height = 28
              Size.Values = (
                74.083333333333320000
                1719.791666666667000000
                39.687500000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel214: TQRLabel
              Left = 716
              Top = 22
              Width = 53
              Height = 13
              Size.Values = (
                34.395833333333330000
                1894.416666666667000000
                58.208333333333320000
                140.229166666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'KW Dmd.'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape379: TQRShape
              Left = 774
              Top = 15
              Width = 2
              Height = 28
              Size.Values = (
                74.083333333333320000
                2047.875000000000000000
                39.687500000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel215: TQRLabel
              Left = 966
              Top = 22
              Width = 53
              Height = 15
              Size.Values = (
                39.687500000000000000
                2555.875000000000000000
                58.208333333333320000
                140.229166666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'KWHr'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape380: TQRShape
              Left = 1021
              Top = 15
              Width = 2
              Height = 28
              Size.Values = (
                74.083333333333320000
                2701.395833333333000000
                39.687500000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel216: TQRLabel
              Left = 1088
              Top = 22
              Width = 62
              Height = 15
              Size.Values = (
                39.687500000000000000
                2878.666666666667000000
                58.208333333333320000
                164.041666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'Amount'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel217: TQRLabel
              Left = 853
              Top = 15
              Width = 43
              Height = 24
              Size.Values = (
                63.500000000000000000
                2256.895833333333000000
                39.687500000000000000
                113.770833333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'No. of Consumers'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 6
            end
            object QRShape381: TQRShape
              Left = 896
              Top = 15
              Width = 2
              Height = 28
              Size.Values = (
                74.083333333333320000
                2370.666666666667000000
                39.687500000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel218: TQRLabel
              Left = 1026
              Top = 22
              Width = 53
              Height = 15
              Size.Values = (
                39.687500000000000000
                2714.625000000000000000
                58.208333333333320000
                140.229166666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'KW Dmd.'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape382: TQRShape
              Left = 1084
              Top = 15
              Width = 2
              Height = 28
              Size.Values = (
                74.083333333333320000
                2868.083333333333000000
                39.687500000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel219: TQRLabel
              Left = 906
              Top = 15
              Width = 43
              Height = 24
              Size.Values = (
                63.500000000000000000
                2397.125000000000000000
                39.687500000000000000
                113.770833333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'Minimum Bills'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape383: TQRShape
              Left = 954
              Top = 15
              Width = 2
              Height = 28
              Size.Values = (
                74.083333333333320000
                2524.125000000000000000
                39.687500000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel220: TQRLabel
              Left = 156
              Top = 1
              Width = 264
              Height = 13
              Size.Values = (
                34.395833333333330000
                412.750000000000000000
                2.645833333333333000
                698.500000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'Residential'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel221: TQRLabel
              Left = 423
              Top = 1
              Width = 174
              Height = 13
              Size.Values = (
                34.395833333333330000
                1119.187500000000000000
                2.645833333333333000
                460.375000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'Low Voltage'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel222: TQRLabel
              Left = 597
              Top = 1
              Width = 282
              Height = 13
              Size.Values = (
                34.395833333333330000
                1579.562500000000000000
                2.645833333333333000
                746.125000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'High Voltage'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel223: TQRLabel
              Left = 878
              Top = 1
              Width = 276
              Height = 13
              Size.Values = (
                34.395833333333330000
                2323.041666666667000000
                2.645833333333333000
                730.250000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = 'TOTAL'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape384: TQRShape
              Tag = 1000
              Left = 1153
              Top = 1
              Width = 2
              Height = 30
              Size.Values = (
                79.375000000000000000
                3050.645833333333000000
                2.645833333333333000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel224: TQRLabel
              Left = 1155
              Top = 5
              Width = 43
              Height = 37
              Size.Values = (
                97.895833333333320000
                3055.937500000000000000
                13.229166666666670000
                113.770833333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Caption = '% Revenue Sales'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
          end
          object QRBand29: TQRBand
            Left = 24
            Top = 145
            Width = 1200
            Height = 12
            Frame.DrawTop = True
            Frame.DrawLeft = True
            Frame.DrawRight = True
            AlignToBottom = False
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              31.750000000000000000
              3175.000000000000000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbDetail
            object QRShape385: TQRShape
              Tag = 1000
              Left = 155
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                56.696428571428570000
                410.104166666666700000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape386: TQRShape
              Tag = 1000
              Left = 201
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                55.562500000000000000
                531.812500000000000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape388: TQRShape
              Tag = 1000
              Left = 275
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                55.562500000000000000
                727.604166666666800000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape389: TQRShape
              Tag = 1000
              Left = 347
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                55.562500000000000000
                918.104166666666800000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape390: TQRShape
              Tag = 1000
              Left = 420
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                55.562500000000000000
                1111.250000000000000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape391: TQRShape
              Tag = 1000
              Left = 521
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                55.562500000000000000
                1378.479166666667000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape392: TQRShape
              Tag = 1000
              Left = 596
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                55.562500000000000000
                1576.916666666667000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape393: TQRShape
              Tag = 1000
              Left = 465
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                55.562500000000000000
                1230.312500000000000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape394: TQRShape
              Tag = 1000
              Left = 711
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                55.562500000000000000
                1881.187500000000000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape395: TQRShape
              Tag = 1000
              Left = 851
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                55.562500000000000000
                2251.604166666667000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape396: TQRShape
              Tag = 1000
              Left = 650
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                55.562500000000000000
                1719.791666666667000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape397: TQRShape
              Tag = 1000
              Left = 774
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                55.562500000000000000
                2047.875000000000000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape398: TQRShape
              Tag = 1000
              Left = 1021
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                55.562500000000000000
                2701.395833333333000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape399: TQRShape
              Tag = 1000
              Left = 896
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                55.562500000000000000
                2370.666666666667000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape400: TQRShape
              Tag = 1000
              Left = 1084
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                55.562500000000000000
                2868.083333333333000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape401: TQRShape
              Tag = 1000
              Left = 954
              Top = 0
              Width = 2
              Height = 21
              Size.Values = (
                55.562500000000000000
                2524.125000000000000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRDBText154: TQRDBText
              Left = 1
              Top = 1
              Width = 154
              Height = 13
              Size.Values = (
                34.395833333333330000
                2.645833333333333000
                2.645833333333333000
                407.458333333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSalesLate
              DataField = 'desc'
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText155: TQRDBText
              Left = 156
              Top = 1
              Width = 45
              Height = 13
              Size.Values = (
                34.395833333333330000
                412.750000000000000000
                2.645833333333333000
                119.062500000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSalesLate
              DataField = 'resBills'
              Mask = '###,##0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText157: TQRDBText
              Left = 229
              Top = 1
              Width = 43
              Height = 13
              Size.Values = (
                34.395833333333330000
                605.895833333333200000
                2.645833333333333000
                113.770833333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSalesLate
              DataField = 'resLLKwhr'
              Mask = '###,##0.0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText158: TQRDBText
              Left = 290
              Top = 1
              Width = 54
              Height = 13
              Size.Values = (
                34.395833333333330000
                767.291666666666800000
                2.645833333333333000
                142.875000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSalesLate
              DataField = 'resKwhr'
              Mask = '###,###,##0.0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText159: TQRDBText
              Left = 348
              Top = 1
              Width = 72
              Height = 13
              Size.Values = (
                34.395833333333330000
                920.750000000000000000
                2.645833333333333000
                190.500000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSalesLate
              DataField = 'RES'
              Mask = '###,###,##0.00 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText160: TQRDBText
              Left = 422
              Top = 1
              Width = 43
              Height = 13
              Size.Values = (
                34.395833333333330000
                1116.541666666667000000
                2.645833333333333000
                113.770833333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSalesLate
              DataField = 'LVBills'
              Mask = '###,##0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText161: TQRDBText
              Left = 468
              Top = 1
              Width = 54
              Height = 13
              Size.Values = (
                34.395833333333330000
                1238.250000000000000000
                2.645833333333333000
                142.875000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSalesLate
              DataField = 'LVKwhr'
              Mask = '###,##0.0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText162: TQRDBText
              Left = 523
              Top = 1
              Width = 74
              Height = 13
              Size.Values = (
                34.395833333333330000
                1383.770833333333000000
                2.645833333333333000
                195.791666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSalesLate
              DataField = 'LV'
              Mask = '###,###,##0.00 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText163: TQRDBText
              Left = 775
              Top = 1
              Width = 76
              Height = 13
              Size.Values = (
                34.395833333333330000
                2050.520833333333000000
                2.645833333333333000
                201.083333333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSalesLate
              DataField = 'HV'
              Mask = '###,###,##0.00 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText164: TQRDBText
              Left = 652
              Top = 1
              Width = 59
              Height = 13
              Size.Values = (
                34.395833333333330000
                1725.083333333333000000
                2.645833333333333000
                156.104166666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSalesLate
              DataField = 'HVKwhr'
              Mask = '###,##0.0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText165: TQRDBText
              Left = 598
              Top = 1
              Width = 52
              Height = 13
              Size.Values = (
                34.395833333333330000
                1582.208333333333000000
                2.645833333333333000
                137.583333333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSalesLate
              DataField = 'HVBills'
              Mask = '###,##0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText166: TQRDBText
              Left = 712
              Top = 1
              Width = 61
              Height = 13
              Size.Values = (
                34.395833333333330000
                1883.833333333333000000
                2.645833333333333000
                161.395833333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSalesLate
              DataField = 'HVKwhrd'
              Mask = '###,##0.0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText167: TQRDBText
              Left = 1086
              Top = 1
              Width = 68
              Height = 13
              Size.Values = (
                34.395833333333330000
                2873.375000000000000000
                2.645833333333333000
                179.916666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSalesLate
              DataField = 'TotalAmount'
              Mask = '###,###,##0.00 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText168: TQRDBText
              Left = 955
              Top = 1
              Width = 66
              Height = 13
              Size.Values = (
                34.395833333333330000
                2526.770833333333000000
                2.645833333333333000
                174.625000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSalesLate
              DataField = 'TotalKwhr'
              Mask = '###,##0.0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText169: TQRDBText
              Left = 898
              Top = 1
              Width = 56
              Height = 13
              Size.Values = (
                34.395833333333330000
                2375.958333333333000000
                2.645833333333333000
                148.166666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSalesLate
              DataField = 'resLLBills'
              Mask = '###,###,##0.00 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText170: TQRDBText
              Left = 853
              Top = 1
              Width = 43
              Height = 13
              Size.Values = (
                34.395833333333330000
                2256.895833333333000000
                2.645833333333333000
                113.770833333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSalesLate
              DataField = 'numBills'
              Mask = '###,##0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText171: TQRDBText
              Left = 1023
              Top = 1
              Width = 61
              Height = 13
              Size.Values = (
                34.395833333333330000
                2706.687500000000000000
                2.645833333333333000
                161.395833333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qPowerSalesLate
              DataField = 'TotalKwhrD'
              Mask = '###,##0.0 '
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRShape402: TQRShape
              Tag = 1000
              Left = 1153
              Top = 0
              Width = 2
              Height = 12
              Size.Values = (
                31.750000000000000000
                3050.645833333333000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
          end
          object QRBand30: TQRBand
            Left = 24
            Top = 157
            Width = 1200
            Height = 16
            Frame.DrawTop = True
            Frame.DrawBottom = True
            Frame.DrawLeft = True
            Frame.DrawRight = True
            AlignToBottom = False
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              42.333333333333330000
              3175.000000000000000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbSummary
            object QRShape403: TQRShape
              Tag = 1000
              Left = 155
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.898809523809520000
                410.104166666666700000
                0.000000000000000000
                5.669642857142857000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape404: TQRShape
              Tag = 1000
              Left = 201
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.520833333333330000
                531.812500000000000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape406: TQRShape
              Tag = 1000
              Left = 275
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.520833333333330000
                727.604166666666800000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape407: TQRShape
              Tag = 1000
              Left = 347
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.520833333333330000
                918.104166666666800000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape408: TQRShape
              Tag = 1000
              Left = 420
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.520833333333330000
                1111.250000000000000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape409: TQRShape
              Tag = 1000
              Left = 521
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.520833333333330000
                1378.479166666667000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape410: TQRShape
              Tag = 1000
              Left = 596
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.520833333333330000
                1576.916666666667000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape411: TQRShape
              Tag = 1000
              Left = 465
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.520833333333330000
                1230.312500000000000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape412: TQRShape
              Tag = 1000
              Left = 711
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.520833333333330000
                1881.187500000000000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape413: TQRShape
              Tag = 1000
              Left = 851
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.520833333333330000
                2251.604166666667000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape414: TQRShape
              Tag = 1000
              Left = 650
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.520833333333330000
                1719.791666666667000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape415: TQRShape
              Tag = 1000
              Left = 774
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.520833333333330000
                2047.875000000000000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape416: TQRShape
              Tag = 1000
              Left = 1021
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.520833333333330000
                2701.395833333333000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape417: TQRShape
              Tag = 1000
              Left = 896
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.520833333333330000
                2370.666666666667000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape418: TQRShape
              Tag = 1000
              Left = 1084
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.520833333333330000
                2868.083333333333000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape419: TQRShape
              Tag = 1000
              Left = 954
              Top = 0
              Width = 2
              Height = 7
              Size.Values = (
                18.520833333333330000
                2524.125000000000000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRExpr71: TQRExpr
              Left = 348
              Top = 1
              Width = 72
              Height = 13
              Size.Values = (
                34.395833333333330000
                920.750000000000000000
                2.645833333333333000
                190.500000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(qPowerSalesLate.RES)'
              Mask = '###,###,##0.00 '
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr75: TQRExpr
              Left = 523
              Top = 1
              Width = 74
              Height = 13
              Size.Values = (
                34.395833333333330000
                1383.770833333333000000
                2.645833333333333000
                195.791666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(qPowerSalesLate.LV)'
              Mask = '###,###,##0.00 '
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr76: TQRExpr
              Left = 775
              Top = 1
              Width = 76
              Height = 13
              Size.Values = (
                34.395833333333330000
                2050.520833333333000000
                2.645833333333333000
                201.083333333333300000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(qPowerSalesLate.HV)'
              Mask = '###,###,##0.00 '
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr77: TQRExpr
              Left = 1086
              Top = 1
              Width = 68
              Height = 13
              Size.Values = (
                34.395833333333330000
                2873.375000000000000000
                2.645833333333333000
                179.916666666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(qPowerSalesLate.TotalAmount) '
              Mask = '###,###,##0.00 '
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel225: TQRLabel
              Left = 61
              Top = 1
              Width = 29
              Height = 14
              Size.Values = (
                37.041666666666670000
                161.395833333333300000
                2.645833333333333000
                76.729166666666680000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taLeftJustify
              AlignToBand = False
              Caption = 'TOTAL'
              Color = clWhite
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape420: TQRShape
              Tag = 1000
              Left = 1153
              Top = 0
              Width = 2
              Height = 12
              Size.Values = (
                31.750000000000000000
                3050.645833333333000000
                0.000000000000000000
                5.291666666666667000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
          end
          object QRBand31: TQRBand
            Left = 24
            Top = 24
            Width = 1200
            Height = 76
            AlignToBottom = False
            BeforePrint = QRBand12BeforePrint
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              201.083333333333300000
              3175.000000000000000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbTitle
            object QRLabel226: TQRLabel
              Left = 421
              Top = 5
              Width = 357
              Height = 17
              Size.Values = (
                44.979166666666670000
                1113.895833333333000000
                13.229166666666670000
                944.562500000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = True
              Caption = 'ZAMBOANGA DEL NORTE ELECTRIC COOPERATIVE, INC.'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 10
            end
            object QRLabel227: TQRLabel
              Left = -16
              Top = 60
              Width = 48
              Height = 15
              Size.Values = (
                39.687500000000000000
                1524.000000000000000000
                158.750000000000000000
                127.000000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = True
              Caption = 'QRLabel1'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRLabel228: TQRLabel
              Left = -106
              Top = 45
              Width = 228
              Height = 15
              Size.Values = (
                39.687500000000000000
                1285.875000000000000000
                119.062500000000000000
                603.250000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = True
              Caption = 'UNBUNDLED PILFERAGE REPORT (LATEBILLS)'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRLabel229: TQRLabel
              Left = -64
              Top = 24
              Width = 144
              Height = 15
              Size.Values = (
                39.687500000000000000
                1397.000000000000000000
                63.500000000000000000
                381.000000000000000000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = True
              Caption = 'General Luna St., Dipolog City'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
          end
        end
      end
      object TabSheet4: TTabSheet
        Caption = 'TabSheet4'
        ImageIndex = 9
        object QuickRep1: TQuickRep
          AlignWithMargins = True
          Left = 703
          Top = 80
          Width = 1498
          Height = 979
          DataSet = qupowersalesbd
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
          Options = []
          Page.Columns = 1
          Page.Orientation = poLandscape
          Page.PaperSize = FanfoldGerLegal
          Page.Continuous = False
          Page.Values = (
            127.000000000000000000
            2159.000000000000000000
            127.000000000000000000
            3302.000000000000000000
            381.000000000000000000
            254.000000000000000000
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
          PrinterSettings.MemoryLimit = 1000000
          PrinterSettings.PrintQuality = 0
          PrinterSettings.Collate = 0
          PrinterSettings.ColorOption = 0
          PrintIfEmpty = False
          SnapToGrid = True
          Units = Inches
          Zoom = 120
          PrevFormStyle = fsNormal
          PreviewInitialState = wsMaximized
          PrevInitialZoom = qrZoomToFit
          PreviewDefaultSaveType = stQRP
          PreviewLeft = 0
          PreviewTop = 0
          StartNewPageInComposite = True
          object QRBand33: TQRBand
            Left = 173
            Top = 58
            Width = 1210
            Height = 104
            Margins.Left = 5
            Margins.Right = 5
            AlignToBottom = False
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              229.305555555555600000
              2667.881944444444000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbTitle
            object QRLabel230: TQRLabel
              Left = 391
              Top = 6
              Width = 428
              Height = 20
              Size.Values = (
                44.097222222222220000
                862.100694444444400000
                13.229166666666670000
                943.680555555555600000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = True
              Caption = 'ZAMBOANGA DEL NORTE ELECTRIC COOPERATIVE, INC.'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 10
            end
            object QRLabel231: TQRLabel
              Left = 518
              Top = 29
              Width = 173
              Height = 18
              Size.Values = (
                39.687500000000000000
                1142.118055555556000000
                63.940972222222220000
                381.440972222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = True
              Caption = 'General Luna St., Dipolog City'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRLabel234: TQRLabel
              Left = 2
              Top = 80
              Width = 340
              Height = 23
              Frame.DrawTop = True
              Frame.DrawRight = True
              Size.Values = (
                50.711805555555560000
                4.409722222222222000
                176.388888888888900000
                749.652777777777800000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Caption = 'REAL Property TAX'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape358: TQRShape
              Left = 40
              Top = 82
              Width = 3
              Height = 22
              Size.Values = (
                48.506944444444440000
                88.194444444444440000
                180.798611111111100000
                6.614583333333332000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape360: TQRShape
              Left = -1
              Top = 82
              Width = 3
              Height = 22
              Size.Values = (
                48.506944444444440000
                -2.204861111111111000
                180.798611111111100000
                6.614583333333332000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel235: TQRLabel
              Left = 340
              Top = 80
              Width = 301
              Height = 23
              Frame.DrawTop = True
              Frame.DrawRight = True
              Size.Values = (
                50.711805555555560000
                749.652777777777800000
                176.388888888888900000
                663.663194444444400000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Caption = 'GENERATION SysCharge O/U'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel236: TQRLabel
              Left = 639
              Top = 80
              Width = 301
              Height = 23
              Frame.DrawTop = True
              Frame.DrawRight = True
              Size.Values = (
                50.711805555555560000
                1408.906250000000000000
                176.388888888888900000
                663.663194444444400000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Caption = 'TRANSMISSION SysCharge O/U'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel237: TQRLabel
              Left = 938
              Top = 80
              Width = 301
              Height = 23
              Frame.DrawTop = True
              Size.Values = (
                50.711805555555560000
                2068.159722222222000000
                176.388888888888900000
                663.663194444444400000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Caption = 'SYSTEM LOSS Charge O/U'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape440: TQRShape
              Left = 1240
              Top = 82
              Width = 3
              Height = 22
              Size.Values = (
                48.506944444444440000
                2734.027777777778000000
                180.798611111111100000
                6.614583333333332000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
          end
          object QRGroup4: TQRGroup
            Left = 173
            Top = 162
            Width = 1210
            Height = 20
            Frame.DrawTop = True
            Frame.DrawBottom = True
            Frame.DrawLeft = True
            AlignToBottom = False
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              44.097222222222220000
              2667.881944444444000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            Master = QuickRep1
            ReprintOnNewPage = False
            object QRLabel248: TQRLabel
              Left = 3
              Top = 2
              Width = 40
              Height = 23
              Frame.DrawRight = True
              Size.Values = (
                50.711805555555560000
                6.614583333333332000
                4.409722222222222000
                88.194444444444440000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Caption = 'AREA      .'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel249: TQRLabel
              Left = 41
              Top = 1
              Width = 76
              Height = 23
              Frame.DrawRight = True
              Size.Values = (
                50.711805555555560000
                90.399305555555560000
                2.204861111111111000
                167.569444444444400000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Caption = 'Res.'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel250: TQRLabel
              Left = 115
              Top = 2
              Width = 76
              Height = 23
              Frame.DrawRight = True
              Size.Values = (
                50.711805555555560000
                253.559027777777800000
                4.409722222222222000
                167.569444444444400000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Caption = 'Low'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel251: TQRLabel
              Left = 189
              Top = 2
              Width = 76
              Height = 23
              Frame.DrawRight = True
              Size.Values = (
                50.711805555555560000
                416.718750000000000000
                4.409722222222222000
                167.569444444444400000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Caption = 'High'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel252: TQRLabel
              Left = 263
              Top = 2
              Width = 80
              Height = 23
              Frame.DrawRight = True
              Size.Values = (
                50.711805555555560000
                579.878472222222200000
                4.409722222222222000
                176.388888888888900000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Caption = '  TOTAL    '
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel253: TQRLabel
              Left = 341
              Top = 1
              Width = 76
              Height = 23
              Frame.DrawRight = True
              Size.Values = (
                50.711805555555560000
                751.857638888889000000
                2.204861111111111000
                167.569444444444400000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Caption = 'Res.'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel254: TQRLabel
              Left = 415
              Top = 2
              Width = 76
              Height = 23
              Frame.DrawRight = True
              Size.Values = (
                50.711805555555560000
                915.017361111111000000
                4.409722222222222000
                167.569444444444400000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Caption = 'Low'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel255: TQRLabel
              Left = 489
              Top = 2
              Width = 76
              Height = 23
              Frame.DrawRight = True
              Size.Values = (
                50.711805555555560000
                1078.177083333333000000
                4.409722222222222000
                167.569444444444400000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Caption = 'High'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel257: TQRLabel
              Left = 563
              Top = 2
              Width = 80
              Height = 23
              Frame.DrawRight = True
              Size.Values = (
                50.711805555555560000
                1241.336805555556000000
                4.409722222222222000
                176.388888888888900000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Caption = '  TOTAL    '
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel258: TQRLabel
              Left = 641
              Top = 3
              Width = 76
              Height = 23
              Frame.DrawRight = True
              Size.Values = (
                50.711805555555560000
                1413.315972222222000000
                6.614583333333332000
                167.569444444444400000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Caption = 'Res.'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel259: TQRLabel
              Left = 715
              Top = 4
              Width = 76
              Height = 23
              Frame.DrawRight = True
              Size.Values = (
                50.711805555555560000
                1576.475694444444000000
                8.819444444444444000
                167.569444444444400000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Caption = 'Low'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel260: TQRLabel
              Left = 789
              Top = 4
              Width = 76
              Height = 23
              Frame.DrawRight = True
              Size.Values = (
                50.711805555555560000
                1739.635416666667000000
                8.819444444444444000
                167.569444444444400000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Caption = 'High'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel261: TQRLabel
              Left = 863
              Top = 4
              Width = 80
              Height = 23
              Frame.DrawRight = True
              Size.Values = (
                50.711805555555560000
                1902.795138888889000000
                8.819444444444444000
                176.388888888888900000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Caption = '  TOTAL    '
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel262: TQRLabel
              Left = 941
              Top = 2
              Width = 76
              Height = 23
              Frame.DrawRight = True
              Size.Values = (
                50.711805555555560000
                2074.774305555556000000
                4.409722222222222000
                167.569444444444400000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Caption = 'Res.'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel263: TQRLabel
              Left = 1015
              Top = 3
              Width = 76
              Height = 23
              Frame.DrawRight = True
              Size.Values = (
                50.711805555555560000
                2237.934027777778000000
                6.614583333333332000
                167.569444444444400000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Caption = 'Low'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel264: TQRLabel
              Left = 1089
              Top = 3
              Width = 76
              Height = 23
              Frame.DrawRight = True
              Size.Values = (
                50.711805555555560000
                2401.093750000000000000
                6.614583333333332000
                167.569444444444400000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Caption = 'High'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel265: TQRLabel
              Left = 1163
              Top = 3
              Width = 80
              Height = 23
              Frame.DrawRight = True
              Size.Values = (
                50.711805555555560000
                2564.253472222222000000
                6.614583333333332000
                176.388888888888900000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Caption = '  TOTAL    '
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
          end
          object QRBand36: TQRBand
            Left = 173
            Top = 182
            Width = 1210
            Height = 18
            Frame.DrawTop = True
            Frame.DrawLeft = True
            AlignToBottom = False
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              39.687500000000000000
              2667.881944444444000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbDetail
            object QRDBText150: TQRDBText
              Left = 5
              Top = 1
              Width = 34
              Height = 15
              Size.Values = (
                33.072916666666670000
                11.024305555555560000
                2.204861111111111000
                74.965277777777780000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qupowersalesbd
              DataField = 'Area'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText156: TQRDBText
              Left = 45
              Top = 2
              Width = 65
              Height = 15
              Size.Values = (
                33.072916666666670000
                99.218750000000000000
                4.409722222222222000
                143.315972222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qupowersalesbd
              DataField = 'RPTaxes_R'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Mask = '###,##0.#0'
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRShape370: TQRShape
              Left = 40
              Top = -1
              Width = 3
              Height = 22
              Size.Values = (
                48.506944444444440000
                88.194444444444440000
                -2.204861111111111000
                6.614583333333332000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape427: TQRShape
              Left = 114
              Top = -4
              Width = 3
              Height = 22
              Size.Values = (
                48.506944444444440000
                251.354166666666700000
                -8.819444444444444000
                6.614583333333332000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRDBText174: TQRDBText
              Left = 121
              Top = 2
              Width = 65
              Height = 15
              Size.Values = (
                33.072916666666670000
                266.788194444444400000
                4.409722222222222000
                143.315972222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qupowersalesbd
              DataField = 'RPTaxes_L'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Mask = '###,##0.#0'
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRShape428: TQRShape
              Left = 189
              Top = -4
              Width = 2
              Height = 22
              Size.Values = (
                48.506944444444440000
                416.718750000000000000
                -8.819444444444444000
                4.409722222222222000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRDBText175: TQRDBText
              Left = 194
              Top = 2
              Width = 65
              Height = 15
              Size.Values = (
                33.072916666666670000
                427.743055555555600000
                4.409722222222222000
                143.315972222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qupowersalesbd
              DataField = 'RPTaxes_H'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Mask = '###,##0.#0'
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRShape429: TQRShape
              Left = 262
              Top = -4
              Width = 2
              Height = 22
              Size.Values = (
                48.506944444444440000
                577.673611111111000000
                -8.819444444444444000
                4.409722222222222000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRDBText176: TQRDBText
              Left = 272
              Top = 2
              Width = 65
              Height = 15
              Size.Values = (
                33.072916666666670000
                599.722222222222200000
                4.409722222222222000
                143.315972222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qupowersalesbd
              DataField = 'RPTaxes'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Mask = '###,##0.#0'
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRShape430: TQRShape
              Left = 340
              Top = -4
              Width = 2
              Height = 22
              Size.Values = (
                48.506944444444440000
                749.652777777777800000
                -8.819444444444444000
                4.409722222222222000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRDBText177: TQRDBText
              Left = 346
              Top = 2
              Width = 65
              Height = 15
              Size.Values = (
                33.072916666666670000
                762.881944444444400000
                4.409722222222222000
                143.315972222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qupowersalesbd
              DataField = 'OtherGenSysAdj_R'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Mask = '###,##0.#0'
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRShape431: TQRShape
              Left = 415
              Top = -4
              Width = 3
              Height = 22
              Size.Values = (
                48.506944444444440000
                915.017361111111000000
                -8.819444444444444000
                6.614583333333332000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRDBText178: TQRDBText
              Left = 419
              Top = 2
              Width = 65
              Height = 15
              Size.Values = (
                33.072916666666670000
                923.836805555555600000
                4.409722222222222000
                143.315972222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qupowersalesbd
              DataField = 'OtherGenSysAdj_L'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Mask = '###,##0.#0'
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText188: TQRDBText
              Left = 495
              Top = 2
              Width = 65
              Height = 15
              Size.Values = (
                33.072916666666670000
                1091.406250000000000000
                4.409722222222222000
                143.315972222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qupowersalesbd
              DataField = 'OtherGenSysAdj_H'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Mask = '###,##0.#0'
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText189: TQRDBText
              Left = 573
              Top = 2
              Width = 65
              Height = 15
              Size.Values = (
                33.072916666666670000
                1263.385416666667000000
                4.409722222222222000
                143.315972222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qupowersalesbd
              DataField = 'OtherGenSysAdj'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Mask = '###,##0.#0'
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRShape432: TQRShape
              Left = 641
              Top = 2
              Width = 2
              Height = 18
              Size.Values = (
                39.687500000000000000
                1413.315972222222000000
                4.409722222222222000
                4.409722222222222000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRDBText190: TQRDBText
              Left = 644
              Top = 2
              Width = 65
              Height = 15
              Size.Values = (
                33.072916666666670000
                1419.930555555556000000
                4.409722222222222000
                143.315972222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qupowersalesbd
              DataField = 'OtherTransAdj_R'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Mask = '###,##0.#0'
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText191: TQRDBText
              Left = 720
              Top = 2
              Width = 65
              Height = 15
              Size.Values = (
                33.072916666666670000
                1587.500000000000000000
                4.409722222222222000
                143.315972222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qupowersalesbd
              DataField = 'OtherTransAdj_L'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Mask = '###,##0.#0'
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRShape433: TQRShape
              Left = 713
              Top = -4
              Width = 3
              Height = 22
              Size.Values = (
                48.506944444444440000
                1572.065972222222000000
                -8.819444444444444000
                6.614583333333332000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape434: TQRShape
              Left = 788
              Top = -4
              Width = 2
              Height = 22
              Size.Values = (
                48.506944444444440000
                1737.430555555556000000
                -8.819444444444444000
                4.409722222222222000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRDBText192: TQRDBText
              Left = 792
              Top = 2
              Width = 65
              Height = 15
              Size.Values = (
                33.072916666666670000
                1746.250000000000000000
                4.409722222222222000
                143.315972222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qupowersalesbd
              DataField = 'OtherTransAdj_H'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Mask = '###,##0.#0'
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRShape435: TQRShape
              Left = 861
              Top = -4
              Width = 2
              Height = 22
              Size.Values = (
                48.506944444444440000
                1898.385416666667000000
                -8.819444444444444000
                4.409722222222222000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRDBText193: TQRDBText
              Left = 871
              Top = 2
              Width = 65
              Height = 15
              Size.Values = (
                33.072916666666670000
                1920.434027777778000000
                4.409722222222222000
                143.315972222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qupowersalesbd
              DataField = 'OtherTransAdj'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Mask = '###,##0.#0'
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText194: TQRDBText
              Left = 942
              Top = 2
              Width = 65
              Height = 15
              Size.Values = (
                33.072916666666670000
                2076.979166666667000000
                4.409722222222222000
                143.315972222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qupowersalesbd
              DataField = 'OtherSysLossAdj_R'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Mask = '###,##0.#0'
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRShape436: TQRShape
              Left = 939
              Top = 2
              Width = 2
              Height = 18
              Size.Values = (
                39.687500000000000000
                2070.364583333333000000
                4.409722222222222000
                4.409722222222222000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape437: TQRShape
              Left = 1013
              Top = -4
              Width = 3
              Height = 22
              Size.Values = (
                48.506944444444440000
                2233.524305555556000000
                -8.819444444444444000
                6.614583333333332000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRDBText195: TQRDBText
              Left = 1020
              Top = 2
              Width = 65
              Height = 15
              Size.Values = (
                33.072916666666670000
                2248.958333333333000000
                4.409722222222222000
                143.315972222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qupowersalesbd
              DataField = 'OtherSysLossAdj_L'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Mask = '###,##0.#0'
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRShape438: TQRShape
              Left = 1088
              Top = -4
              Width = 2
              Height = 22
              Size.Values = (
                48.506944444444440000
                2398.888888888889000000
                -8.819444444444444000
                4.409722222222222000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRDBText196: TQRDBText
              Left = 1093
              Top = 2
              Width = 65
              Height = 15
              Size.Values = (
                33.072916666666670000
                2409.913194444444000000
                4.409722222222222000
                143.315972222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qupowersalesbd
              DataField = 'OtherSysLossAdj_H'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Mask = '###,##0.#0'
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRShape439: TQRShape
              Left = 1161
              Top = -4
              Width = 2
              Height = 22
              Size.Values = (
                48.506944444444440000
                2559.843750000000000000
                -8.819444444444444000
                4.409722222222222000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRDBText197: TQRDBText
              Left = 1169
              Top = 2
              Width = 67
              Height = 15
              Size.Values = (
                33.072916666666670000
                2577.482638888889000000
                4.409722222222222000
                147.725694444444400000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qupowersalesbd
              DataField = 'OtherSysLossAdj'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Mask = '###,##0.#0'
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRShape441: TQRShape
              Left = 1240
              Top = 0
              Width = 2
              Height = 22
              Size.Values = (
                48.506944444444440000
                2734.027777777778000000
                0.000000000000000000
                4.409722222222222000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
          end
          object QRBand37: TQRBand
            Left = 173
            Top = 200
            Width = 1210
            Height = 28
            Frame.DrawTop = True
            Frame.DrawBottom = True
            Frame.DrawLeft = True
            AlignToBottom = False
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              61.736111111111110000
              2667.881944444444000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbSummary
            object QRLabel256: TQRLabel
              Left = 4
              Top = 4
              Width = 43
              Height = 20
              Size.Values = (
                44.097222222222220000
                8.819444444444444000
                8.819444444444444000
                94.809027777777780000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Caption = 'TOTAL'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr94: TQRExpr
              Left = 45
              Top = 3
              Width = 65
              Height = 15
              Size.Values = (
                33.072916666666670000
                99.218750000000000000
                6.614583333333332000
                143.315972222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(quPowerSalesBD.RPTaxes_R)'
              Mask = '###,##0.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr95: TQRExpr
              Left = 121
              Top = 3
              Width = 65
              Height = 15
              Size.Values = (
                33.072916666666670000
                266.788194444444400000
                6.614583333333332000
                143.315972222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(quPowerSalesBD.RPTaxes_L)'
              Mask = '###,##0.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr96: TQRExpr
              Left = 194
              Top = 3
              Width = 65
              Height = 15
              Size.Values = (
                33.072916666666670000
                427.743055555555600000
                6.614583333333332000
                143.315972222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(quPowerSalesBD.RPTaxes_H)'
              Mask = '###,##0.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr97: TQRExpr
              Left = 272
              Top = 5
              Width = 65
              Height = 15
              Size.Values = (
                33.072916666666670000
                599.722222222222200000
                11.024305555555560000
                143.315972222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(quPowerSalesBD.RPTaxes)'
              Mask = '###,##0.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr98: TQRExpr
              Left = 347
              Top = 5
              Width = 65
              Height = 15
              Size.Values = (
                33.072916666666670000
                765.086805555555600000
                11.024305555555560000
                143.315972222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(quPowerSalesBD.OtherGenSysAdj_R)'
              Mask = '###,##0.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr99: TQRExpr
              Left = 419
              Top = 5
              Width = 65
              Height = 15
              Size.Values = (
                33.072916666666670000
                923.836805555555600000
                11.024305555555560000
                143.315972222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(quPowerSalesBD.OtherGenSysAdj_L)'
              Mask = '###,##0.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr100: TQRExpr
              Left = 493
              Top = 5
              Width = 68
              Height = 15
              Size.Values = (
                33.072916666666670000
                1086.996527777778000000
                11.024305555555560000
                149.930555555555600000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(quPowerSalesBD.OtherGenSysAdj_H)'
              Mask = '###,##0.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr101: TQRExpr
              Left = 574
              Top = 5
              Width = 65
              Height = 15
              Size.Values = (
                33.072916666666670000
                1265.590277777778000000
                11.024305555555560000
                143.315972222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(quPowerSalesBD.OtherGenSysAdj)'
              Mask = '###,##0.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr110: TQRExpr
              Left = 647
              Top = 5
              Width = 65
              Height = 15
              Size.Values = (
                33.072916666666670000
                1426.545138888889000000
                11.024305555555560000
                143.315972222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(quPowerSalesBD.OtherTransAdj_R)'
              Mask = '###,##0.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr111: TQRExpr
              Left = 722
              Top = 5
              Width = 65
              Height = 15
              Size.Values = (
                33.072916666666670000
                1591.909722222222000000
                11.024305555555560000
                143.315972222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(quPowerSalesBD.OtherTransAdj_L)'
              Mask = '###,##0.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr112: TQRExpr
              Left = 796
              Top = 5
              Width = 65
              Height = 15
              Size.Values = (
                33.072916666666670000
                1755.069444444444000000
                11.024305555555560000
                143.315972222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(quPowerSalesBD.OtherTransAdj_H)'
              Mask = '###,##0.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr113: TQRExpr
              Left = 874
              Top = 5
              Width = 65
              Height = 15
              Size.Values = (
                33.072916666666670000
                1927.048611111111000000
                11.024305555555560000
                143.315972222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(quPowerSalesBD.OtherTransAdj)'
              Mask = '###,##0.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr114: TQRExpr
              Left = 946
              Top = 5
              Width = 65
              Height = 15
              Size.Values = (
                33.072916666666670000
                2085.798611111111000000
                11.024305555555560000
                143.315972222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(quPowerSalesBD.OtherSysLossAdj_R)'
              Mask = '###,##0.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr115: TQRExpr
              Left = 1022
              Top = 5
              Width = 65
              Height = 15
              Size.Values = (
                33.072916666666670000
                2253.368055555556000000
                11.024305555555560000
                143.315972222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(quPowerSalesBD.OtherSysLossAdj_L)'
              Mask = '###,##0.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr116: TQRExpr
              Left = 1095
              Top = 5
              Width = 65
              Height = 15
              Size.Values = (
                33.072916666666670000
                2414.322916666667000000
                11.024305555555560000
                143.315972222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(quPowerSalesBD.OtherSysLossAdj_H)'
              Mask = '###,##0.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr117: TQRExpr
              Left = 1171
              Top = 3
              Width = 65
              Height = 20
              Size.Values = (
                44.097222222222220000
                2581.892361111111000000
                6.614583333333332000
                143.315972222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(quPowerSalesBD.OtherSysLossAdj)'
              Mask = '###,##0.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape442: TQRShape
              Left = 1241
              Top = 1
              Width = 2
              Height = 22
              Size.Values = (
                48.506944444444440000
                2736.232638888889000000
                2.204861111111111000
                4.409722222222222000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
          end
        end
        object QuickRep2: TQuickRep
          Tag = 1
          AlignWithMargins = True
          Left = 252
          Top = 23
          Width = 1498
          Height = 979
          DataSet = qupowersalesbd
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
          Options = []
          Page.Columns = 1
          Page.Orientation = poLandscape
          Page.PaperSize = FanfoldGerLegal
          Page.Continuous = False
          Page.Values = (
            127.000000000000000000
            2159.000000000000000000
            127.000000000000000000
            3302.000000000000000000
            279.400000000000000000
            279.400000000000000000
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
          PrinterSettings.MemoryLimit = 1000000
          PrinterSettings.PrintQuality = 0
          PrinterSettings.Collate = 0
          PrinterSettings.ColorOption = 0
          PrintIfEmpty = False
          SnapToGrid = True
          Units = Inches
          Zoom = 120
          PrevFormStyle = fsNormal
          PreviewInitialState = wsMaximized
          PrevInitialZoom = qrZoomToFit
          PreviewDefaultSaveType = stQRP
          PreviewLeft = 0
          PreviewTop = 0
          StartNewPageInComposite = True
          object QRBand38: TQRBand
            Left = 127
            Top = 58
            Width = 1245
            Height = 104
            Margins.Left = 5
            Margins.Right = 5
            AlignToBottom = False
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              229.305555555555600000
              2745.052083333333000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbTitle
            object QRLabel266: TQRLabel
              Left = 408
              Top = 6
              Width = 428
              Height = 20
              Size.Values = (
                44.097222222222220000
                899.583333333333300000
                13.229166666666670000
                943.680555555555600000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = True
              Caption = 'ZAMBOANGA DEL NORTE ELECTRIC COOPERATIVE, INC.'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 10
            end
            object QRLabel267: TQRLabel
              Left = 536
              Top = 29
              Width = 173
              Height = 18
              Size.Values = (
                39.687500000000000000
                1181.805555555556000000
                63.940972222222220000
                381.440972222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = True
              Caption = 'General Luna St., Dipolog City'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 8
            end
            object QRLabel268: TQRLabel
              Left = 2
              Top = 80
              Width = 340
              Height = 23
              Frame.DrawTop = True
              Frame.DrawRight = True
              Size.Values = (
                50.711805555555560000
                4.409722222222222000
                176.388888888888900000
                749.652777777777800000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Caption = 'TRANS DEMAND Charge O/U'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape443: TQRShape
              Left = 40
              Top = 82
              Width = 3
              Height = 22
              Size.Values = (
                48.506944444444440000
                88.194444444444440000
                180.798611111111100000
                6.614583333333332000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape444: TQRShape
              Left = -1
              Top = 82
              Width = 3
              Height = 22
              Size.Values = (
                48.506944444444440000
                -2.204861111111111000
                180.798611111111100000
                6.614583333333332000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel269: TQRLabel
              Left = 340
              Top = 80
              Width = 301
              Height = 23
              Frame.DrawTop = True
              Frame.DrawRight = True
              Size.Values = (
                50.711805555555560000
                749.652777777777800000
                176.388888888888900000
                663.663194444444400000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Caption = 'LIFELINE Rate O/U'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel270: TQRLabel
              Left = 639
              Top = 80
              Width = 301
              Height = 23
              Frame.DrawTop = True
              Frame.DrawRight = True
              Size.Values = (
                50.711805555555560000
                1408.906250000000000000
                176.388888888888900000
                663.663194444444400000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Caption = 'GRAM & ICERA DAA'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel271: TQRLabel
              Left = 938
              Top = 80
              Width = 301
              Height = 23
              Frame.DrawTop = True
              Size.Values = (
                50.711805555555560000
                2068.159722222222000000
                176.388888888888900000
                663.663194444444400000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Caption = 'INTERCLASS Cross Adjustment'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape445: TQRShape
              Left = 1240
              Top = 82
              Width = 3
              Height = 26
              Size.Values = (
                57.326388888888890000
                2734.027777777778000000
                180.798611111111100000
                6.614583333333332000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
          end
          object QRGroup5: TQRGroup
            Left = 127
            Top = 162
            Width = 1245
            Height = 20
            Frame.DrawTop = True
            Frame.DrawBottom = True
            Frame.DrawLeft = True
            AlignToBottom = False
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              44.097222222222220000
              2745.052083333333000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            Master = QuickRep2
            ReprintOnNewPage = False
            object QRLabel272: TQRLabel
              Left = 3
              Top = 2
              Width = 40
              Height = 23
              Frame.DrawRight = True
              Size.Values = (
                50.711805555555560000
                6.614583333333332000
                4.409722222222222000
                88.194444444444440000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Caption = 'AREA      .'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel273: TQRLabel
              Left = 41
              Top = 1
              Width = 76
              Height = 23
              Frame.DrawRight = True
              Size.Values = (
                50.711805555555560000
                90.399305555555560000
                2.204861111111111000
                167.569444444444400000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Caption = 'Res.'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel274: TQRLabel
              Left = 115
              Top = 2
              Width = 76
              Height = 23
              Frame.DrawRight = True
              Size.Values = (
                50.711805555555560000
                253.559027777777800000
                4.409722222222222000
                167.569444444444400000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Caption = 'Low'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel275: TQRLabel
              Left = 189
              Top = 2
              Width = 76
              Height = 23
              Frame.DrawRight = True
              Size.Values = (
                50.711805555555560000
                416.718750000000000000
                4.409722222222222000
                167.569444444444400000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Caption = 'High'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel276: TQRLabel
              Left = 263
              Top = 2
              Width = 80
              Height = 23
              Frame.DrawRight = True
              Size.Values = (
                50.711805555555560000
                579.878472222222200000
                4.409722222222222000
                176.388888888888900000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Caption = '  TOTAL    '
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel277: TQRLabel
              Left = 341
              Top = 1
              Width = 76
              Height = 23
              Frame.DrawRight = True
              Size.Values = (
                50.711805555555560000
                751.857638888889000000
                2.204861111111111000
                167.569444444444400000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Caption = 'Res.'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel278: TQRLabel
              Left = 415
              Top = 2
              Width = 76
              Height = 23
              Frame.DrawRight = True
              Size.Values = (
                50.711805555555560000
                915.017361111111000000
                4.409722222222222000
                167.569444444444400000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Caption = 'Low'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel279: TQRLabel
              Left = 489
              Top = 2
              Width = 76
              Height = 23
              Frame.DrawRight = True
              Size.Values = (
                50.711805555555560000
                1078.177083333333000000
                4.409722222222222000
                167.569444444444400000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Caption = 'High'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel280: TQRLabel
              Left = 563
              Top = 2
              Width = 80
              Height = 23
              Frame.DrawRight = True
              Size.Values = (
                50.711805555555560000
                1241.336805555556000000
                4.409722222222222000
                176.388888888888900000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Caption = '  TOTAL    '
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel281: TQRLabel
              Left = 641
              Top = 3
              Width = 76
              Height = 23
              Frame.DrawRight = True
              Size.Values = (
                50.711805555555560000
                1413.315972222222000000
                6.614583333333332000
                167.569444444444400000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Caption = 'Res.'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel282: TQRLabel
              Left = 715
              Top = 4
              Width = 76
              Height = 23
              Frame.DrawRight = True
              Size.Values = (
                50.711805555555560000
                1576.475694444444000000
                8.819444444444444000
                167.569444444444400000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Caption = 'Low'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel283: TQRLabel
              Left = 789
              Top = 4
              Width = 76
              Height = 23
              Frame.DrawRight = True
              Size.Values = (
                50.711805555555560000
                1739.635416666667000000
                8.819444444444444000
                167.569444444444400000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Caption = 'High'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel284: TQRLabel
              Left = 863
              Top = 4
              Width = 80
              Height = 23
              Frame.DrawRight = True
              Size.Values = (
                50.711805555555560000
                1902.795138888889000000
                8.819444444444444000
                176.388888888888900000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Caption = '  TOTAL    '
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel285: TQRLabel
              Left = 941
              Top = 2
              Width = 76
              Height = 23
              Frame.DrawRight = True
              Size.Values = (
                50.711805555555560000
                2074.774305555556000000
                4.409722222222222000
                167.569444444444400000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Caption = 'Res.'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel286: TQRLabel
              Left = 1015
              Top = 3
              Width = 76
              Height = 23
              Frame.DrawRight = True
              Size.Values = (
                50.711805555555560000
                2237.934027777778000000
                6.614583333333332000
                167.569444444444400000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Caption = 'Low'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel287: TQRLabel
              Left = 1089
              Top = 3
              Width = 76
              Height = 23
              Frame.DrawRight = True
              Size.Values = (
                50.711805555555560000
                2401.093750000000000000
                6.614583333333332000
                167.569444444444400000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Caption = 'High'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRLabel288: TQRLabel
              Left = 1170
              Top = 3
              Width = 74
              Height = 23
              Size.Values = (
                50.711805555555560000
                2579.687500000000000000
                6.614583333333332000
                163.159722222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Caption = '  TOTAL    '
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRPShape3: TQRPShape
              Left = 1164
              Top = 1
              Width = 78
              Height = 1
              Size.Values = (
                2.204861111111111000
                2566.458333333333000000
                2.204861111111111000
                171.979166666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrpsRectangle
              VertAdjust = 0
              FixBottomPosition = False
              StretchHeightWithBand = False
            end
            object QRShape462: TQRShape
              Left = 1241
              Top = -1
              Width = 3
              Height = 42
              Size.Values = (
                92.604166666666680000
                2736.232638888889000000
                -2.204861111111111000
                6.614583333333332000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRPShape4: TQRPShape
              Left = 1164
              Top = 1
              Width = 78
              Height = 1
              Size.Values = (
                2.204861111111111000
                2566.458333333333000000
                2.204861111111111000
                171.979166666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrpsRectangle
              VertAdjust = 0
              FixBottomPosition = False
              StretchHeightWithBand = False
            end
          end
          object QRBand39: TQRBand
            Left = 127
            Top = 182
            Width = 1245
            Height = 18
            Frame.DrawTop = True
            Frame.DrawLeft = True
            AlignToBottom = False
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              39.687500000000000000
              2745.052083333333000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbDetail
            object QRDBText198: TQRDBText
              Left = 5
              Top = 1
              Width = 34
              Height = 15
              Size.Values = (
                33.072916666666670000
                11.024305555555560000
                2.204861111111111000
                74.965277777777780000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qupowersalesbd
              DataField = 'Area'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText199: TQRDBText
              Left = 45
              Top = 2
              Width = 65
              Height = 15
              Size.Values = (
                33.072916666666670000
                99.218750000000000000
                4.409722222222222000
                143.315972222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qupowersalesbd
              DataField = 'OtherTCDemandAdj_R'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Mask = '###,##0.#0'
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRShape446: TQRShape
              Left = 40
              Top = -1
              Width = 3
              Height = 22
              Size.Values = (
                48.506944444444440000
                88.194444444444440000
                -2.204861111111111000
                6.614583333333332000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape447: TQRShape
              Left = 114
              Top = -4
              Width = 3
              Height = 22
              Size.Values = (
                48.506944444444440000
                251.354166666666700000
                -8.819444444444444000
                6.614583333333332000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRDBText200: TQRDBText
              Left = 121
              Top = 2
              Width = 65
              Height = 15
              Size.Values = (
                33.072916666666670000
                266.788194444444400000
                4.409722222222222000
                143.315972222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qupowersalesbd
              DataField = 'OtherTCDemandAdj_L'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Mask = '###,##0.#0'
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRShape448: TQRShape
              Left = 189
              Top = -4
              Width = 2
              Height = 22
              Size.Values = (
                48.506944444444440000
                416.718750000000000000
                -8.819444444444444000
                4.409722222222222000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRDBText201: TQRDBText
              Left = 194
              Top = 2
              Width = 65
              Height = 15
              Size.Values = (
                33.072916666666670000
                427.743055555555600000
                4.409722222222222000
                143.315972222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qupowersalesbd
              DataField = 'OtherTCDemandAdj_H'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Mask = '###,##0.#0'
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRShape449: TQRShape
              Left = 262
              Top = -4
              Width = 2
              Height = 22
              Size.Values = (
                48.506944444444440000
                577.673611111111000000
                -8.819444444444444000
                4.409722222222222000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRDBText202: TQRDBText
              Left = 272
              Top = 2
              Width = 65
              Height = 15
              Size.Values = (
                33.072916666666670000
                599.722222222222200000
                4.409722222222222000
                143.315972222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qupowersalesbd
              DataField = 'OtherTCDemandAdj'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Mask = '###,##0.#0'
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRShape450: TQRShape
              Left = 340
              Top = -4
              Width = 2
              Height = 22
              Size.Values = (
                48.506944444444440000
                749.652777777777800000
                -8.819444444444444000
                4.409722222222222000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRDBText203: TQRDBText
              Left = 346
              Top = 2
              Width = 65
              Height = 15
              Size.Values = (
                33.072916666666670000
                762.881944444444400000
                4.409722222222222000
                143.315972222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qupowersalesbd
              DataField = 'OtherLifelineAdj_R'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Mask = '###,##0.#0'
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRShape451: TQRShape
              Left = 415
              Top = -4
              Width = 3
              Height = 22
              Size.Values = (
                48.506944444444440000
                915.017361111111000000
                -8.819444444444444000
                6.614583333333332000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRDBText204: TQRDBText
              Left = 419
              Top = 2
              Width = 65
              Height = 15
              Size.Values = (
                33.072916666666670000
                923.836805555555600000
                4.409722222222222000
                143.315972222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qupowersalesbd
              DataField = 'OtherLifelineAdj_L'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Mask = '###,##0.#0'
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText205: TQRDBText
              Left = 495
              Top = 2
              Width = 65
              Height = 15
              Size.Values = (
                33.072916666666670000
                1091.406250000000000000
                4.409722222222222000
                143.315972222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qupowersalesbd
              DataField = 'OtherLifelineAdj_H'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Mask = '###,##0.#0'
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText206: TQRDBText
              Left = 573
              Top = 2
              Width = 65
              Height = 15
              Size.Values = (
                33.072916666666670000
                1263.385416666667000000
                4.409722222222222000
                143.315972222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qupowersalesbd
              DataField = 'OtherLifelineAdj'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Mask = '###,##0.#0'
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRShape452: TQRShape
              Left = 641
              Top = 2
              Width = 2
              Height = 18
              Size.Values = (
                39.687500000000000000
                1413.315972222222000000
                4.409722222222222000
                4.409722222222222000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRDBText207: TQRDBText
              Left = 644
              Top = 2
              Width = 65
              Height = 15
              Size.Values = (
                33.072916666666670000
                1419.930555555556000000
                4.409722222222222000
                143.315972222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qupowersalesbd
              DataField = 'gram_R'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Mask = '###,##0.#0'
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText208: TQRDBText
              Left = 720
              Top = 2
              Width = 65
              Height = 15
              Size.Values = (
                33.072916666666670000
                1587.500000000000000000
                4.409722222222222000
                143.315972222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qupowersalesbd
              DataField = 'gram_L'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Mask = '###,##0.#0'
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRShape453: TQRShape
              Left = 713
              Top = -4
              Width = 3
              Height = 22
              Size.Values = (
                48.506944444444440000
                1572.065972222222000000
                -8.819444444444444000
                6.614583333333332000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape454: TQRShape
              Left = 788
              Top = -4
              Width = 2
              Height = 22
              Size.Values = (
                48.506944444444440000
                1737.430555555556000000
                -8.819444444444444000
                4.409722222222222000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRDBText209: TQRDBText
              Left = 792
              Top = 2
              Width = 65
              Height = 15
              Size.Values = (
                33.072916666666670000
                1746.250000000000000000
                4.409722222222222000
                143.315972222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qupowersalesbd
              DataField = 'gram_H'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Mask = '###,##0.#0'
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRShape455: TQRShape
              Left = 861
              Top = -4
              Width = 2
              Height = 22
              Size.Values = (
                48.506944444444440000
                1898.385416666667000000
                -8.819444444444444000
                4.409722222222222000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRDBText210: TQRDBText
              Left = 871
              Top = 2
              Width = 65
              Height = 15
              Size.Values = (
                33.072916666666670000
                1920.434027777778000000
                4.409722222222222000
                143.315972222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qupowersalesbd
              DataField = 'gram'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Mask = '###,##0.#0'
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRDBText211: TQRDBText
              Left = 942
              Top = 2
              Width = 65
              Height = 15
              Size.Values = (
                33.072916666666670000
                2076.979166666667000000
                4.409722222222222000
                143.315972222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qupowersalesbd
              DataField = 'ICCrossSub_R'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Mask = '###,##0.#0'
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRShape456: TQRShape
              Left = 939
              Top = 2
              Width = 2
              Height = 18
              Size.Values = (
                39.687500000000000000
                2070.364583333333000000
                4.409722222222222000
                4.409722222222222000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape457: TQRShape
              Left = 1013
              Top = -4
              Width = 3
              Height = 22
              Size.Values = (
                48.506944444444440000
                2233.524305555556000000
                -8.819444444444444000
                6.614583333333332000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRDBText212: TQRDBText
              Left = 1020
              Top = 2
              Width = 65
              Height = 15
              Size.Values = (
                33.072916666666670000
                2248.958333333333000000
                4.409722222222222000
                143.315972222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qupowersalesbd
              DataField = 'ICCrossSub_L'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Mask = '###,##0.#0'
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRShape458: TQRShape
              Left = 1088
              Top = -4
              Width = 2
              Height = 22
              Size.Values = (
                48.506944444444440000
                2398.888888888889000000
                -8.819444444444444000
                4.409722222222222000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRDBText213: TQRDBText
              Left = 1093
              Top = 2
              Width = 65
              Height = 15
              Size.Values = (
                33.072916666666670000
                2409.913194444444000000
                4.409722222222222000
                143.315972222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qupowersalesbd
              DataField = 'ICCrossSub_H'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Mask = '###,##0.#0'
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRShape459: TQRShape
              Left = 1161
              Top = -4
              Width = 2
              Height = 22
              Size.Values = (
                48.506944444444440000
                2559.843750000000000000
                -8.819444444444444000
                4.409722222222222000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRDBText214: TQRDBText
              Left = 1169
              Top = 2
              Width = 67
              Height = 15
              Size.Values = (
                33.072916666666670000
                2577.482638888889000000
                4.409722222222222000
                147.725694444444400000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              DataSet = qupowersalesbd
              DataField = 'ICCrossSub'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Mask = '###,##0.#0'
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FullJustify = False
              MaxBreakChars = 0
              FontSize = 7
            end
            object QRShape460: TQRShape
              Left = 1241
              Top = 0
              Width = 2
              Height = 22
              Size.Values = (
                48.506944444444440000
                2736.232638888889000000
                0.000000000000000000
                4.409722222222222000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRPShape2: TQRPShape
              Left = 1164
              Top = 17
              Width = 78
              Height = 1
              Size.Values = (
                2.204861111111111000
                2566.458333333333000000
                37.482638888888890000
                171.979166666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrpsRectangle
              VertAdjust = 0
              FixBottomPosition = False
              StretchHeightWithBand = False
            end
          end
          object QRBand40: TQRBand
            Left = 127
            Top = 200
            Width = 1245
            Height = 28
            Frame.DrawTop = True
            Frame.DrawBottom = True
            Frame.DrawLeft = True
            AlignToBottom = False
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              61.736111111111110000
              2745.052083333333000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbSummary
            object QRLabel289: TQRLabel
              Left = 4
              Top = 4
              Width = 43
              Height = 20
              Size.Values = (
                44.097222222222220000
                8.819444444444444000
                8.819444444444444000
                94.809027777777780000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Caption = 'TOTAL'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr73: TQRExpr
              Left = 45
              Top = 3
              Width = 65
              Height = 15
              Size.Values = (
                33.072916666666670000
                99.218750000000000000
                6.614583333333332000
                143.315972222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(quPowerSalesBD.OtherTCDemandAdj_R)'
              Mask = '###,##0.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr78: TQRExpr
              Left = 121
              Top = 3
              Width = 65
              Height = 15
              Size.Values = (
                33.072916666666670000
                266.788194444444400000
                6.614583333333332000
                143.315972222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(quPowerSalesBD.OtherTCDemandAdj_L)'
              Mask = '###,##0.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr80: TQRExpr
              Left = 194
              Top = 3
              Width = 65
              Height = 15
              Size.Values = (
                33.072916666666670000
                427.743055555555600000
                6.614583333333332000
                143.315972222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(quPowerSalesBD.OtherTCDemandAdj_H)'
              Mask = '###,##0.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr81: TQRExpr
              Left = 272
              Top = 5
              Width = 65
              Height = 15
              Size.Values = (
                33.072916666666670000
                599.722222222222200000
                11.024305555555560000
                143.315972222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(quPowerSalesBD.OtherTCDemandAdj)'
              Mask = '###,##0.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr89: TQRExpr
              Left = 347
              Top = 5
              Width = 65
              Height = 15
              Size.Values = (
                33.072916666666670000
                765.086805555555600000
                11.024305555555560000
                143.315972222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(quPowerSalesBD.OtherLifelineAdj_R)'
              Mask = '###,##0.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr90: TQRExpr
              Left = 419
              Top = 5
              Width = 65
              Height = 15
              Size.Values = (
                33.072916666666670000
                923.836805555555600000
                11.024305555555560000
                143.315972222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(quPowerSalesBD.OtherLifelineAdj_L)'
              Mask = '###,##0.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr91: TQRExpr
              Left = 493
              Top = 5
              Width = 68
              Height = 15
              Size.Values = (
                33.072916666666670000
                1086.996527777778000000
                11.024305555555560000
                149.930555555555600000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(quPowerSalesBD.OtherLifelineAdj_H)'
              Mask = '###,##0.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr93: TQRExpr
              Left = 574
              Top = 5
              Width = 65
              Height = 15
              Size.Values = (
                33.072916666666670000
                1265.590277777778000000
                11.024305555555560000
                143.315972222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(quPowerSalesBD.OtherLifelineAdj)'
              Mask = '###,##0.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr102: TQRExpr
              Left = 649
              Top = 5
              Width = 65
              Height = 15
              Size.Values = (
                33.072916666666670000
                1430.954861111111000000
                11.024305555555560000
                143.315972222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(quPowerSalesBD.gram_R)'
              Mask = '###,##0.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr103: TQRExpr
              Left = 722
              Top = 5
              Width = 65
              Height = 15
              Size.Values = (
                33.072916666666670000
                1591.909722222222000000
                11.024305555555560000
                143.315972222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(quPowerSalesBD.gram_L)'
              Mask = '###,##0.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr104: TQRExpr
              Left = 796
              Top = 5
              Width = 65
              Height = 15
              Size.Values = (
                33.072916666666670000
                1755.069444444444000000
                11.024305555555560000
                143.315972222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(quPowerSalesBD.gram_H)'
              Mask = '###,##0.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr105: TQRExpr
              Left = 874
              Top = 5
              Width = 65
              Height = 15
              Size.Values = (
                33.072916666666670000
                1927.048611111111000000
                11.024305555555560000
                143.315972222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(quPowerSalesBD.gram)'
              Mask = '###,##0.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr106: TQRExpr
              Left = 942
              Top = 5
              Width = 65
              Height = 15
              Size.Values = (
                33.072916666666670000
                2076.979166666667000000
                11.024305555555560000
                143.315972222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(quPowerSalesBD.ICCrossSub_R)'
              Mask = '###,##0.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr107: TQRExpr
              Left = 1022
              Top = 5
              Width = 65
              Height = 15
              Size.Values = (
                33.072916666666670000
                2253.368055555556000000
                11.024305555555560000
                143.315972222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(quPowerSalesBD.ICCrossSub_L)'
              Mask = '###,##0.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr108: TQRExpr
              Left = 1095
              Top = 5
              Width = 65
              Height = 15
              Size.Values = (
                33.072916666666670000
                2414.322916666667000000
                11.024305555555560000
                143.315972222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(quPowerSalesBD.ICCrossSub_H)'
              Mask = '###,##0.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRExpr109: TQRExpr
              Left = 1171
              Top = 3
              Width = 65
              Height = 20
              Size.Values = (
                44.097222222222220000
                2581.892361111111000000
                6.614583333333332000
                143.315972222222200000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = False
              Transparent = False
              Expression = 'SUM(quPowerSalesBD.ICCrossSub)'
              Mask = '###,##0.#0'
              ExportAs = exptText
              WrapStyle = BreakOnSpaces
              FontSize = 7
            end
            object QRShape461: TQRShape
              Left = 1241
              Top = 1
              Width = 2
              Height = 22
              Size.Values = (
                48.506944444444440000
                2736.232638888889000000
                2.204861111111111000
                4.409722222222222000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRPShape1: TQRPShape
              Left = 1164
              Top = 25
              Width = 78
              Height = 1
              Size.Values = (
                2.204861111111111000
                2566.458333333333000000
                55.121527777777780000
                171.979166666666700000)
              XLColumn = 0
              XLNumFormat = nfGeneral
              Shape = qrpsRectangle
              VertAdjust = 0
              FixBottomPosition = False
              StretchHeightWithBand = False
            end
          end
        end
      end
    end
  end
  object qPowerSales: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'call powersales(:BM,:RT,:A,:DF,:DT)')
    Left = 104
    Top = 112
    ParamData = <
      item
        DataType = ftString
        Name = 'BM'
        Value = '1011'
      end
      item
        DataType = ftInteger
        Name = 'RT'
        Value = 3
      end
      item
        DataType = ftString
        Name = 'A'
        Value = '005'
      end
      item
        DataType = ftUnknown
        Name = 'DF'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DT'
        Value = nil
      end>
  end
  object qPowerSalesLate: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'call powersalesLate(:DF,:DT,:RT,:A)')
    Left = 392
    Top = 88
    ParamData = <
      item
        DataType = ftString
        Name = 'DF'
        Value = '2011-10-01'
      end
      item
        DataType = ftString
        Name = 'DT'
        Value = '2011-10-31'
      end
      item
        DataType = ftInteger
        Name = 'RT'
        Value = 3
      end
      item
        DataType = ftString
        Name = 'A'
        Value = '005'
      end>
  end
  object psSignatories: TMyTable
    TableName = 'powersalessignatories'
    Connection = MyConnection1
    Left = 408
    Top = 168
    object psSignatoriespreparedby: TStringField
      FieldName = 'preparedby'
      Size = 50
    end
    object psSignatoriespreparedpos: TStringField
      FieldName = 'preparedpos'
      Size = 50
    end
    object psSignatoriescheckby: TStringField
      FieldName = 'checkby'
      Size = 50
    end
    object psSignatoriescheckpos: TStringField
      FieldName = 'checkpos'
      Size = 50
    end
    object psSignatoriesverifiedby: TStringField
      FieldName = 'verifiedby'
      Size = 50
    end
    object psSignatoriesverifiedpos: TStringField
      FieldName = 'verifiedpos'
      Size = 50
    end
    object psSignatoriescertifiedby: TStringField
      FieldName = 'certifiedby'
      Size = 50
    end
    object psSignatoriescertifiedpos: TStringField
      FieldName = 'certifiedpos'
      Size = 50
    end
    object psSignatoriesattestedby: TStringField
      FieldName = 'attestedby'
      Size = 50
    end
    object psSignatoriesattestedpos: TStringField
      FieldName = 'attestedpos'
      Size = 50
    end
  end
  object dspsSignatories: TMyDataSource
    DataSet = psSignatories
    Left = 352
    Top = 336
  end
  object QRPDFFilter1: TQRPDFFilter
    CompressionOn = False
    TextEncoding = AnsiEncoding
    Codepage = '1252'
    Left = 408
    Top = 72
  end
  object MyConnection1: TMyConnection
    Username = '19zan72'
    LoginPrompt = False
    Left = 408
    Top = 120
    EncryptedPassword = '8FFF9EFF8CFF9CFF9EFF93FF85FF9EFF91FF'
  end
  object QRCompositeReport1: TQRCompositeReport
    OnAddReports = QRCompositeReport1AddReports
    Options = []
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
    PrinterSettings.MemoryLimit = 1000000
    PrinterSettings.PrintQuality = 0
    PrinterSettings.Collate = 0
    PrinterSettings.ColorOption = 0
    PrinterSettings.Orientation = poLandscape
    PrinterSettings.PaperSize = FanfoldGerLegal
    PageCount = 0
    Left = 200
    Top = 128
  end
  object qupowersalesbd: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      ' call powersalesBD(:BM,:RT,:A,:DF,:DT)'
      '/*Select b.*,'
      '       b.OtherGenRateAdj OtherGenSysAdj,'
      '       b.OtherTransCostAdj OtherTransAdj,'
      '       b.OtherSystemLossCostAdj OtherSysLossAdj,'
      '       b.OtherLifelineRateCostAdj OtherLifelineAdj,'
      '       b.OtherSeniorCitizenRateAdj OtherSeniorCtznAdj,'
      '       b.OtherTransDemandCostAdj OtherTCDemandAdj,'
      '       b.RPTax RPTaxes,'
      '       b.ICCrossSubsidyCharge ICCrossSub,'
      ''
      '       b.OtherGenRateAdj OtherGenSysAdj_R,'
      '       b.OtherTransCostAdj OtherTransAdj_R,'
      '       b.OtherSystemLossCostAdj OtherSysLossAdj_R,'
      '       b.OtherLifelineRateCostAdj OtherLifelineAdj_R,'
      '       b.OtherSeniorCitizenRateAdj OtherSeniorCtznAdj_R,'
      '       b.OtherTransDemandCostAdj OtherTCDemandAdj_R,'
      '       b.RPTax RPTaxes_R,'
      '       b.ICCrossSubsidyCharge ICCrossSub_R,'
      '       b.gram gram_R,'
      ''
      '       b.OtherGenRateAdj OtherGenSysAdj_L,'
      '       b.OtherTransCostAdj OtherTransAdj_L,'
      '       b.OtherSystemLossCostAdj OtherSysLossAdj_L,'
      '       b.OtherLifelineRateCostAdj OtherLifelineAdj_L,'
      '       b.OtherSeniorCitizenRateAdj OtherSeniorCtznAdj_L,'
      '       b.OtherTransDemandCostAdj OtherTCDemandAdj_L,'
      '       b.RPTax RPTaxes_L,'
      '       b.ICCrossSubsidyCharge ICCrossSub_L,'
      '       b.gram gram_L,'
      ''
      '       b.OtherGenRateAdj OtherGenSysAdj_H,'
      '       b.OtherTransCostAdj OtherTransAdj_H,'
      '       b.OtherSystemLossCostAdj OtherSysLossAdj_H,'
      '       b.OtherLifelineRateCostAdj OtherLifelineAdj_H,'
      '       b.OtherSeniorCitizenRateAdj OtherSeniorCtznAdj_H,'
      '       b.OtherTransDemandCostAdj OtherTCDemandAdj_H,'
      '       b.RPTax RPTaxes_H,'
      '       b.ICCrossSubsidyCharge ICCrossSub_H,'
      '       b.gram gram_H, '
      '     '
      '        b.RPTax UchargesTotal,'
      '        B.PARec '
      '        '
      ' from billhistory b where billmonth ='#39'0614'#39
      '*/')
    OnCalcFields = qupowersalesbdCalcFields
    Left = 264
    Top = 40
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'BM'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'RT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'A'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DF'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DT'
        Value = nil
      end>
    object qupowersalesbdOTCharges: TFloatField
      FieldName = 'OTCharges'
    end
    object qupowersalesbdArea: TStringField
      FieldName = 'Area'
      FixedChar = True
      Size = 3
    end
    object qupowersalesbdMunicipality: TStringField
      FieldName = 'Municipality'
      Size = 16
    end
    object qupowersalesbdEnvironmental: TFloatField
      FieldName = 'Environmental'
    end
    object qupowersalesbdMissionary: TFloatField
      FieldName = 'Missionary'
    end
    object qupowersalesbdDistribution: TFloatField
      FieldName = 'Distribution'
    end
    object qupowersalesbdGenco: TFloatField
      FieldName = 'Genco'
    end
    object qupowersalesbdTransco: TFloatField
      FieldName = 'Transco'
    end
    object qupowersalesbdSysloss: TFloatField
      FieldName = 'Sysloss'
    end
    object qupowersalesbdPantawid: TFloatField
      FieldName = 'Pantawid'
    end
    object qupowersalesbdVatDisc: TFloatField
      FieldName = 'VatDisc'
    end
    object qupowersalesbdEVATNet: TFloatField
      FieldName = 'EVATNet'
    end
    object qupowersalesbdRFSC: TFloatField
      FieldName = 'RFSC'
    end
    object qupowersalesbdSCDisc: TFloatField
      FieldName = 'SCDisc'
    end
    object qupowersalesbdSCSubs: TFloatField
      FieldName = 'SCSubs'
    end
    object qupowersalesbdTAmount: TFloatField
      FieldName = 'TAmount'
    end
    object qupowersalesbdSyscharge: TFloatField
      FieldName = 'Syscharge'
    end
    object qupowersalesbdPF: TFloatField
      FieldName = 'PF'
    end
    object qupowersalesbdXRF: TFloatField
      FieldName = 'XRF'
    end
    object qupowersalesbdVat: TFloatField
      FieldName = 'Vat'
    end
    object qupowersalesbdBACKBILL: TFloatField
      FieldName = 'BACKBILL'
    end
    object qupowersalesbdGtotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Gtotal'
      Calculated = True
    end
    object qupowersalesbdscc: TFloatField
      FieldName = 'scc'
    end
    object qupowersalesbdOtherGenSysAdj: TFloatField
      FieldName = 'OtherGenSysAdj'
    end
    object qupowersalesbdOtherTransAdj: TFloatField
      FieldName = 'OtherTransAdj'
    end
    object qupowersalesbdOtherSysLossAdj: TFloatField
      FieldName = 'OtherSysLossAdj'
    end
    object qupowersalesbdOtherLifelineAdj: TFloatField
      FieldName = 'OtherLifelineAdj'
    end
    object qupowersalesbdOtherSeniorCtznAdj: TFloatField
      FieldName = 'OtherSeniorCtznAdj'
    end
    object qupowersalesbdOtherTCDemandAdj: TFloatField
      FieldName = 'OtherTCDemandAdj'
    end
    object qupowersalesbdRPTaxes: TFloatField
      FieldName = 'RPTaxes'
    end
    object qupowersalesbdICCrossSub: TFloatField
      FieldName = 'ICCrossSub'
    end
    object qupowersalesbdriOUtotal: TFloatField
      FieldName = 'riOUtotal'
    end
    object qupowersalesbdUchargesTotal: TFloatField
      FieldName = 'UchargesTotal'
    end
    object qupowersalesbdOtherGenSysAdj_R: TFloatField
      FieldName = 'OtherGenSysAdj_R'
    end
    object qupowersalesbdOtherTransAdj_R: TFloatField
      FieldName = 'OtherTransAdj_R'
    end
    object qupowersalesbdOtherSysLossAdj_R: TFloatField
      FieldName = 'OtherSysLossAdj_R'
    end
    object qupowersalesbdOtherLifelineAdj_R: TFloatField
      FieldName = 'OtherLifelineAdj_R'
    end
    object qupowersalesbdOtherSeniorCtznAdj_R: TFloatField
      FieldName = 'OtherSeniorCtznAdj_R'
    end
    object qupowersalesbdOtherTCDemandAdj_R: TFloatField
      FieldName = 'OtherTCDemandAdj_R'
    end
    object qupowersalesbdRPTaxes_R: TFloatField
      FieldName = 'RPTaxes_R'
    end
    object qupowersalesbdICCrossSub_R: TFloatField
      FieldName = 'ICCrossSub_R'
    end
    object qupowersalesbdOtherGenSysAdj_L: TFloatField
      FieldName = 'OtherGenSysAdj_L'
    end
    object qupowersalesbdOtherTransAdj_L: TFloatField
      FieldName = 'OtherTransAdj_L'
    end
    object qupowersalesbdOtherSysLossAdj_L: TFloatField
      FieldName = 'OtherSysLossAdj_L'
    end
    object qupowersalesbdOtherLifelineAdj_L: TFloatField
      FieldName = 'OtherLifelineAdj_L'
    end
    object qupowersalesbdOtherSeniorCtznAdj_L: TFloatField
      FieldName = 'OtherSeniorCtznAdj_L'
    end
    object qupowersalesbdOtherTCDemandAdj_L: TFloatField
      FieldName = 'OtherTCDemandAdj_L'
    end
    object qupowersalesbdRPTaxes_L: TFloatField
      FieldName = 'RPTaxes_L'
    end
    object qupowersalesbdICCrossSub_L: TFloatField
      FieldName = 'ICCrossSub_L'
    end
    object qupowersalesbdOtherGenSysAdj_H: TFloatField
      FieldName = 'OtherGenSysAdj_H'
    end
    object qupowersalesbdOtherTransAdj_H: TFloatField
      FieldName = 'OtherTransAdj_H'
    end
    object qupowersalesbdOtherSysLossAdj_H: TFloatField
      FieldName = 'OtherSysLossAdj_H'
    end
    object qupowersalesbdOtherLifelineAdj_H: TFloatField
      FieldName = 'OtherLifelineAdj_H'
    end
    object qupowersalesbdOtherSeniorCtznAdj_H: TFloatField
      FieldName = 'OtherSeniorCtznAdj_H'
    end
    object qupowersalesbdOtherTCDemandAdj_H: TFloatField
      FieldName = 'OtherTCDemandAdj_H'
    end
    object qupowersalesbdRPTaxes_H: TFloatField
      FieldName = 'RPTaxes_H'
    end
    object qupowersalesbdICCrossSub_H: TFloatField
      FieldName = 'ICCrossSub_H'
    end
    object qupowersalesbdFitall: TFloatField
      FieldName = 'Fitall'
    end
    object qupowersalesbdPARec: TFloatField
      FieldName = 'PARec'
    end
    object qupowersalesbducsd: TFloatField
      FieldName = 'ucsd'
    end
    object qupowersalesbdgram: TFloatField
      FieldName = 'gram'
    end
    object qupowersalesbdgram_R: TFloatField
      FieldName = 'gram_R'
    end
    object qupowersalesbdgram_L: TFloatField
      FieldName = 'gram_L'
    end
    object qupowersalesbdgram_H: TFloatField
      FieldName = 'gram_H'
    end
  end
  object QRCompositeReport2: TQRCompositeReport
    OnAddReports = QRCompositeReport2AddReports
    Options = []
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
    PrinterSettings.MemoryLimit = 1000000
    PrinterSettings.PrintQuality = 0
    PrinterSettings.Collate = 0
    PrinterSettings.ColorOption = 0
    PrinterSettings.Orientation = poLandscape
    PrinterSettings.PaperSize = FanfoldGerLegal
    PageCount = 0
    Left = 272
    Top = 120
  end
end
