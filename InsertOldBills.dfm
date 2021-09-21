object frmInsertOldBills: TfrmInsertOldBills
  Left = 205
  Top = 203
  ActiveControl = txtAcctNum
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsDialog
  Caption = 'Insert Old Bills'
  ClientHeight = 264
  ClientWidth = 631
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 631
    Height = 264
    Align = alClient
    BevelInner = bvLowered
    BevelOuter = bvNone
    BevelWidth = 2
    BorderWidth = 1
    TabOrder = 0
    object Label1: TLabel
      Left = 66
      Top = 20
      Width = 106
      Height = 27
      Alignment = taCenter
      AutoSize = False
      Caption = 'Account #'
      Color = clBtnShadow
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindow
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
    end
    object Label2: TLabel
      Left = 66
      Top = 52
      Width = 106
      Height = 27
      Alignment = taCenter
      AutoSize = False
      Caption = 'Bill Month'
      Color = clBtnShadow
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindow
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
    end
    object Label3: TLabel
      Left = 32
      Top = 84
      Width = 140
      Height = 27
      Alignment = taCenter
      AutoSize = False
      Caption = 'Bill/Reciept #'
      Color = clBtnShadow
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindow
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
    end
    object Label4: TLabel
      Left = 32
      Top = 116
      Width = 140
      Height = 27
      Alignment = taCenter
      AutoSize = False
      Caption = 'Present Reading'
      Color = clBtnShadow
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindow
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
    end
    object Label5: TLabel
      Left = 32
      Top = 148
      Width = 140
      Height = 27
      Alignment = taCenter
      AutoSize = False
      Caption = 'Previous Reading'
      Color = clBtnShadow
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindow
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
    end
    object Label6: TLabel
      Left = 32
      Top = 180
      Width = 140
      Height = 27
      Alignment = taCenter
      AutoSize = False
      Caption = 'KilowattHour'
      Color = clBtnShadow
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindow
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
    end
    object Label7: TLabel
      Left = 304
      Top = 20
      Width = 193
      Height = 27
      Alignment = taCenter
      AutoSize = False
      Caption = 'Transformer Rental'
      Color = clBtnShadow
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindow
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
    end
    object Label8: TLabel
      Left = 304
      Top = 52
      Width = 193
      Height = 27
      Alignment = taCenter
      AutoSize = False
      Caption = 'Environmental Charge'
      Color = clBtnShadow
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindow
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
    end
    object Label9: TLabel
      Left = 304
      Top = 84
      Width = 193
      Height = 27
      Alignment = taCenter
      AutoSize = False
      Caption = 'Universal Charge'
      Color = clBtnShadow
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindow
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
    end
    object Label10: TLabel
      Left = 304
      Top = 116
      Width = 193
      Height = 27
      Alignment = taCenter
      AutoSize = False
      Caption = 'Bill Date'
      Color = clBtnShadow
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindow
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
    end
    object Label11: TLabel
      Left = 304
      Top = 148
      Width = 193
      Height = 27
      Alignment = taCenter
      AutoSize = False
      Caption = 'Amount'
      Color = clBtnShadow
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindow
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
    end
    object txtAcctNum: TEdit
      Left = 171
      Top = 20
      Width = 106
      Height = 27
      BevelInner = bvNone
      BevelOuter = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object txtBillMonth: TEdit
      Left = 171
      Top = 52
      Width = 106
      Height = 27
      BevelInner = bvNone
      BevelOuter = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object txtPresRead: TEdit
      Left = 171
      Top = 116
      Width = 106
      Height = 27
      BevelInner = bvNone
      BevelOuter = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object txtPrevRead: TEdit
      Left = 171
      Top = 148
      Width = 106
      Height = 27
      BevelInner = bvNone
      BevelOuter = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object txtKWH: TEdit
      Left = 171
      Top = 180
      Width = 106
      Height = 27
      BevelInner = bvNone
      BevelOuter = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
    object txtTransformerRental: TEdit
      Left = 495
      Top = 20
      Width = 106
      Height = 27
      BevelInner = bvNone
      BevelOuter = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
    end
    object txtDocument: TEdit
      Left = 171
      Top = 84
      Width = 106
      Height = 27
      BevelInner = bvNone
      BevelOuter = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object txtUCEC: TEdit
      Left = 495
      Top = 52
      Width = 106
      Height = 27
      BevelInner = bvNone
      BevelOuter = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
    end
    object txtUCME: TEdit
      Left = 495
      Top = 84
      Width = 106
      Height = 27
      BevelInner = bvNone
      BevelOuter = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
    end
    object dtBillDate: TDateTimePicker
      Left = 496
      Top = 116
      Width = 106
      Height = 27
      Date = 38064.640695671300000000
      Time = 38064.640695671300000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
    end
    object btnInsert: TPDJSillyLabel
      Left = 416
      Top = 202
      Width = 89
      Height = 35
      Cursor = 1
      AlwaysSpectrum = True
      Version = 
        'Version 2.00, Copyright '#169' 2000-2001 by Peric, E-mail: pericddn@p' +
        'tt.yu'
      ColorLine = clBtnShadow
      ColorLineFocus = clWhite
      ColorSpectrum = clBtnShadow
      Caption = '&Insert'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      Color = clWhite
      ParentColor = False
      TabOrder = 11
      OnClick = btnInsertClick
      ParentFont = False
    end
    object btnCancel: TPDJSillyLabel
      Left = 512
      Top = 202
      Width = 89
      Height = 35
      Cursor = 1
      AlwaysSpectrum = True
      Version = 
        'Version 2.00, Copyright '#169' 2000-2001 by Peric, E-mail: pericddn@p' +
        'tt.yu'
      ColorLine = clBtnShadow
      ColorLineFocus = clWhite
      ColorSpectrum = clBtnShadow
      Caption = '&Cancel'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      Color = clWhite
      ParentColor = False
      TabOrder = 12
      OnClick = btnCancelClick
      ParentFont = False
    end
    object txtAmount: TEdit
      Left = 495
      Top = 148
      Width = 106
      Height = 27
      BevelInner = bvNone
      BevelOuter = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
    end
  end
  object Master: TTable
    DatabaseName = 'Coop'
    TableName = 'Master.DB'
    Left = 304
    Top = 188
    object MasterCode: TAutoIncField
      FieldName = 'Code'
      ReadOnly = True
    end
    object MasterArea: TStringField
      FieldName = 'Area'
      Size = 3
    end
    object MasterBook: TStringField
      FieldName = 'Book'
      Size = 3
    end
    object MasterSequence: TStringField
      FieldName = 'Sequence'
      Size = 4
    end
    object MasterAccountNumber: TStringField
      FieldName = 'AccountNumber'
      Size = 10
    end
    object MasterName: TStringField
      FieldName = 'Name'
      Size = 50
    end
    object MasterAddress: TStringField
      FieldName = 'Address'
      Size = 50
    end
    object MasterRateCode: TStringField
      FieldName = 'RateCode'
      Size = 1
    end
    object MasterConsCode: TStringField
      FieldName = 'ConsCode'
      Size = 1
    end
    object MasterConnCode: TStringField
      FieldName = 'ConnCode'
      Size = 1
    end
    object MasterTransformer: TStringField
      FieldName = 'Transformer'
    end
    object MasterMeterBrand: TStringField
      FieldName = 'MeterBrand'
      Size = 10
    end
    object MasterSerial: TStringField
      FieldName = 'Serial'
    end
    object MasterMultiplier: TFloatField
      FieldName = 'Multiplier'
    end
    object MasterNewConnectionDate: TDateField
      FieldName = 'NewConnectionDate'
    end
    object MasterReconnectionDate: TDateField
      FieldName = 'ReconnectionDate'
    end
    object MasterDisconnectionDate: TDateField
      FieldName = 'DisconnectionDate'
    end
    object MasterPreviousReadingDate: TDateField
      FieldName = 'PreviousReadingDate'
    end
    object MasterPresentReadingDate: TDateField
      FieldName = 'PresentReadingDate'
    end
    object MasterPreviousReadingKWH: TCurrencyField
      FieldName = 'PreviousReadingKWH'
    end
    object MasterPresentReadingKWH: TCurrencyField
      FieldName = 'PresentReadingKWH'
    end
    object MasterDiff: TCurrencyField
      FieldName = 'Diff'
    end
    object MasterDemand: TCurrencyField
      FieldName = 'Demand'
    end
    object MasterFlatRateWattage: TCurrencyField
      FieldName = 'FlatRateWattage'
    end
    object MasterFeedBackCode: TStringField
      FieldName = 'FeedBackCode'
      Size = 2
    end
    object MasterCM: TStringField
      FieldName = 'CM'
      Size = 1
    end
    object MasterCMMultiplier: TCurrencyField
      FieldName = 'CMMultiplier'
    end
    object MasterCMPreviousReadingKWH: TCurrencyField
      FieldName = 'CMPreviousReadingKWH'
    end
    object MasterCMPresentReadingKWH: TCurrencyField
      FieldName = 'CMPresentReadingKWH'
    end
    object MasterCMKilowattHour: TCurrencyField
      FieldName = 'CMKilowattHour'
    end
    object MasterCMDemand: TCurrencyField
      FieldName = 'CMDemand'
    end
    object MasterKilowattHour: TCurrencyField
      FieldName = 'KilowattHour'
    end
    object MasterKilowattUsed: TCurrencyField
      FieldName = 'KilowattUsed'
    end
    object MasterGenSysCharge: TCurrencyField
      FieldName = 'GenSysCharge'
    end
    object MasterHostCommCharge: TCurrencyField
      FieldName = 'HostCommCharge'
    end
    object MasterForexCharge: TCurrencyField
      FieldName = 'ForexCharge'
    end
    object MasterTCDemandCharge: TCurrencyField
      FieldName = 'TCDemandCharge'
    end
    object MasterTCTransSystemCharge: TCurrencyField
      FieldName = 'TCTransSystemCharge'
    end
    object MasterSystemLossCharge: TCurrencyField
      FieldName = 'SystemLossCharge'
    end
    object MasterDCDemandCharge: TCurrencyField
      FieldName = 'DCDemandCharge'
    end
    object MasterDCDistributionCharge: TCurrencyField
      FieldName = 'DCDistributionCharge'
    end
    object MasterSCRetCustCharge: TCurrencyField
      FieldName = 'SCRetCustCharge'
    end
    object MasterSCSupplySysCharge: TCurrencyField
      FieldName = 'SCSupplySysCharge'
    end
    object MasterMCRetailCustCharge: TCurrencyField
      FieldName = 'MCRetailCustCharge'
    end
    object MasterMCSystemCharge: TCurrencyField
      FieldName = 'MCSystemCharge'
    end
    object MasterUCNPCStrandedDebts: TCurrencyField
      FieldName = 'UCNPCStrandedDebts'
    end
    object MasterUCNPCStrandedContCost: TCurrencyField
      FieldName = 'UCNPCStrandedContCost'
    end
    object MasterUCDUStrandedContCost: TCurrencyField
      FieldName = 'UCDUStrandedContCost'
    end
    object MasterUCME: TCurrencyField
      FieldName = 'UCME'
    end
    object MasterUCEqTaxesAndRoyalties: TCurrencyField
      FieldName = 'UCEqTaxesAndRoyalties'
    end
    object MasterUCEC: TCurrencyField
      FieldName = 'UCEC'
    end
    object MasterUCCrossSubRemoval: TCurrencyField
      FieldName = 'UCCrossSubRemoval'
    end
    object MasterICCrossSubsidyCharge: TCurrencyField
      FieldName = 'ICCrossSubsidyCharge'
    end
    object MasterPowerActRateRed: TCurrencyField
      FieldName = 'PowerActRateRed'
    end
    object MasterLifelineDiscSubs: TCurrencyField
      FieldName = 'LifelineDiscSubs'
    end
    object MasterLoanCondo: TCurrencyField
      FieldName = 'LoanCondo'
    end
    object MasterTransformerRental: TCurrencyField
      FieldName = 'TransformerRental'
    end
    object MasterOCCode1: TStringField
      FieldName = 'OCCode1'
      Size = 10
    end
    object MasterOCAmount1: TCurrencyField
      FieldName = 'OCAmount1'
    end
    object MasterOCMo1: TFloatField
      FieldName = 'OCMo1'
    end
    object MasterOCTotal1: TCurrencyField
      FieldName = 'OCTotal1'
    end
    object MasterOCCode2: TStringField
      FieldName = 'OCCode2'
      Size = 10
    end
    object MasterOCAmount2: TCurrencyField
      FieldName = 'OCAmount2'
    end
    object MasterOCMo2: TFloatField
      FieldName = 'OCMo2'
    end
    object MasterOCTotal2: TCurrencyField
      FieldName = 'OCTotal2'
    end
    object MasterOCCode3: TStringField
      FieldName = 'OCCode3'
      Size = 10
    end
    object MasterOCAmount3: TCurrencyField
      FieldName = 'OCAmount3'
    end
    object MasterOCMo3: TFloatField
      FieldName = 'OCMo3'
    end
    object MasterOCTotal3: TFloatField
      FieldName = 'OCTotal3'
    end
    object MasterTotalBill: TCurrencyField
      FieldName = 'TotalBill'
    end
    object MasterBillNumber: TStringField
      FieldName = 'BillNumber'
      Size = 15
    end
    object MasterOEBRNumber: TStringField
      FieldName = 'OEBRNumber'
      Size = 10
    end
    object MasterBillMonth: TStringField
      FieldName = 'BillMonth'
      Size = 4
    end
    object MasterPoleNumber: TStringField
      FieldName = 'PoleNumber'
      Size = 10
    end
    object MasterFeederNumber: TStringField
      FieldName = 'FeederNumber'
      Size = 10
    end
    object MasterAge30: TCurrencyField
      FieldName = 'Age30'
    end
    object MasterAge60: TCurrencyField
      FieldName = 'Age60'
    end
    object MasterAge90: TCurrencyField
      FieldName = 'Age90'
    end
    object MasterAge120: TCurrencyField
      FieldName = 'Age120'
    end
    object MasterAgeOver120: TCurrencyField
      FieldName = 'AgeOver120'
    end
    object MasterAgeTotal: TCurrencyField
      FieldName = 'AgeTotal'
    end
    object MasterTotalPayments: TCurrencyField
      FieldName = 'TotalPayments'
    end
    object MasterARBalance: TCurrencyField
      FieldName = 'ARBalance'
    end
  end
  object AR: TTable
    DatabaseName = 'Coop'
    TableName = 'ARLedger.DB'
    Left = 336
    Top = 188
  end
  object UnPB: TTable
    DatabaseName = 'Coop'
    TableName = 'UnpaidBills.DB'
    Left = 368
    Top = 188
  end
end
