object CopyRatesForm: TCopyRatesForm
  Left = 208
  Top = 431
  Width = 411
  Height = 158
  Caption = 'Copy Rates'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 403
    Height = 131
    Align = alClient
    BevelOuter = bvLowered
    Caption = 'Panel1'
    TabOrder = 0
    object Label1: TLabel
      Left = 11
      Top = 11
      Width = 242
      Height = 22
      Alignment = taCenter
      AutoSize = False
      Caption = 'Copy Rates from Bill Month'
      Color = clBtnShadow
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label2: TLabel
      Left = 11
      Top = 39
      Width = 242
      Height = 22
      Alignment = taCenter
      AutoSize = False
      Caption = 'Save the Rates to Bill Month'
      Color = clBtnShadow
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object SourceBillMonth: TEdit
      Left = 252
      Top = 11
      Width = 137
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object TargetBillMonth: TEdit
      Left = 252
      Top = 39
      Width = 137
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object OK: TPDJSillyLabel
      Left = 208
      Top = 80
      Width = 85
      Height = 26
      Cursor = 1
      AlwaysSpectrum = True
      Version = 
        'Version 2.00, Copyright '#169' 2000-2001 by Peric, E-mail: pericddn@p' +
        'tt.yu'
      ColorLine = clBtnShadow
      ColorSpectrum = clBtnShadow
      Caption = '&Ok'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      Color = clWhite
      ParentColor = False
      TabOrder = 2
      OnClick = OKClick
      ParentFont = False
    end
    object Cancel: TPDJSillyLabel
      Left = 303
      Top = 80
      Width = 85
      Height = 26
      Cursor = 1
      AlwaysSpectrum = True
      Version = 
        'Version 2.00, Copyright '#169' 2000-2001 by Peric, E-mail: pericddn@p' +
        'tt.yu'
      ColorLine = clBtnShadow
      ColorSpectrum = clBtnShadow
      Caption = '&Cancel'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      Color = clWhite
      ParentColor = False
      TabOrder = 3
      OnClick = CancelClick
      ParentFont = False
    end
  end
  object MRateLocal: TTable
    DatabaseName = 'Coop'
    TableName = 'MeterRate.DB'
    Left = 20
    Top = 72
    object MRateLocalEntry: TAutoIncField
      FieldName = 'Entry'
      ReadOnly = True
    end
    object MRateLocalMBillMonth: TStringField
      FieldName = 'MBillMonth'
      Size = 4
    end
    object MRateLocalRateCode: TStringField
      FieldName = 'RateCode'
      Size = 1
    end
    object MRateLocalRemarks: TStringField
      FieldName = 'Remarks'
      Size = 40
    end
    object MRateLocalGenSysRate: TFloatField
      FieldName = 'GenSysRate'
    end
    object MRateLocalHostCommRate: TFloatField
      FieldName = 'HostCommRate'
    end
    object MRateLocalFOREXRate: TFloatField
      FieldName = 'FOREXRate'
    end
    object MRateLocalTCDemandRate: TFloatField
      FieldName = 'TCDemandRate'
    end
    object MRateLocalTCSystemRate: TFloatField
      FieldName = 'TCSystemRate'
    end
    object MRateLocalSystemLossRate: TFloatField
      FieldName = 'SystemLossRate'
    end
    object MRateLocalDCDemandRate: TFloatField
      FieldName = 'DCDemandRate'
    end
    object MRateLocalDCSystemRate: TFloatField
      FieldName = 'DCSystemRate'
    end
    object MRateLocalSCRetailCustRate: TFloatField
      FieldName = 'SCRetailCustRate'
    end
    object MRateLocalSCSupplySysRate: TFloatField
      FieldName = 'SCSupplySysRate'
    end
    object MRateLocalMCRetailCustRate: TFloatField
      FieldName = 'MCRetailCustRate'
    end
    object MRateLocalMCSysRate: TFloatField
      FieldName = 'MCSysRate'
    end
    object MRateLocalUCNPCStrandedDebtsRate: TFloatField
      FieldName = 'UCNPCStrandedDebtsRate'
    end
    object MRateLocalUCNPCStrandedContCostRate: TFloatField
      FieldName = 'UCNPCStrandedContCostRate'
    end
    object MRateLocalUCDUStrandedContCostRate: TFloatField
      FieldName = 'UCDUStrandedContCostRate'
    end
    object MRateLocalUCMERate: TFloatField
      FieldName = 'UCMERate'
    end
    object MRateLocalUCEqTaxesAndRoyaltiesRate: TFloatField
      FieldName = 'UCEqTaxesAndRoyaltiesRate'
    end
    object MRateLocalUCECRate: TFloatField
      FieldName = 'UCECRate'
    end
    object MRateLocalUCCrossSubsidyRemovalRate: TFloatField
      FieldName = 'UCCrossSubsidyRemovalRate'
    end
    object MRateLocalICCrossSubsidyRate: TFloatField
      FieldName = 'ICCrossSubsidyRate'
    end
    object MRateLocalPARARate: TFloatField
      FieldName = 'PARARate'
    end
    object MRateLocalLifelineSubsidyRate: TFloatField
      FieldName = 'LifelineSubsidyRate'
    end
    object MRateLocalLoanCondo: TFloatField
      FieldName = 'LoanCondo'
    end
    object MRateLocalGram: TFloatField
      FieldName = 'Gram'
    end
  end
end
