object AgingAnalysisSummaryForm: TAgingAnalysisSummaryForm
  Left = 578
  Top = 123
  BorderStyle = bsDialog
  Caption = 'Print Aging Analysis Summary By Town'
  ClientHeight = 179
  ClientWidth = 355
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 355
    Height = 179
    Align = alClient
    BevelInner = bvLowered
    BorderWidth = 3
    TabOrder = 0
    object Label14: TLabel
      Left = 27
      Top = 27
      Width = 125
      Height = 30
      Alignment = taCenter
      AutoSize = False
      Caption = 'District'
      Color = clBtnShadow
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
    end
    object Label29: TLabel
      Left = 27
      Top = 75
      Width = 125
      Height = 30
      Alignment = taCenter
      AutoSize = False
      Caption = 'Bill Month'
      Color = clBtnShadow
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
    end
    object AgingArea: TEdit
      Left = 152
      Top = 27
      Width = 177
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object PDJSillyLabel11: TPDJSillyLabel
      Left = 183
      Top = 123
      Width = 90
      Height = 30
      Cursor = 1
      AlwaysSpectrum = True
      Version = 
        'Version 2.00, Copyright '#169' 2000-2001 by Peric, E-mail: pericddn@p' +
        'tt.yu'
      ColorLine = clBtnShadow
      ColorSpectrum = clBtnShadow
      Caption = '&Close'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      Color = clWhite
      ParentColor = False
      TabOrder = 3
      OnClick = PDJSillyLabel11Click
      ParentFont = False
    end
    object PDJSillyLabel12: TPDJSillyLabel
      Left = 83
      Top = 124
      Width = 90
      Height = 30
      Cursor = 1
      AlwaysSpectrum = True
      Version = 
        'Version 2.00, Copyright '#169' 2000-2001 by Peric, E-mail: pericddn@p' +
        'tt.yu'
      ColorLine = clBtnShadow
      ColorSpectrum = clBtnShadow
      Caption = '&Print'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      Color = clWhite
      ParentColor = False
      TabOrder = 2
      OnClick = PDJSillyLabel12Click
      ParentFont = False
    end
    object AgingBillMonth: TEdit
      Left = 152
      Top = 75
      Width = 177
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
  end
  object UnPaidBills: TTable
    DatabaseName = 'Coop'
    TableName = 'UnpaidBills.DB'
    Left = 20
    Top = 92
    object UnPaidBillsCode: TFloatField
      FieldName = 'Code'
    end
    object UnPaidBillsAccountNumber: TStringField
      FieldName = 'AccountNumber'
      Size = 10
    end
    object UnPaidBillsRateCode: TStringField
      FieldName = 'RateCode'
      Size = 2
    end
    object UnPaidBillsBillMonth: TStringField
      FieldName = 'BillMonth'
      Size = 4
    end
    object UnPaidBillsDate: TDateField
      FieldName = 'Date'
    end
    object UnPaidBillsAmount: TCurrencyField
      FieldName = 'Amount'
    end
  end
  object Vicinity: TTable
    DatabaseName = 'Coop'
    TableName = 'Vicinity.db'
    Left = 44
    Top = 92
    object VicinityArea: TStringField
      FieldName = 'Area'
      Size = 3
    end
    object VicinityBook: TStringField
      FieldName = 'Book'
      Size = 3
    end
    object VicinityAddress: TStringField
      FieldName = 'Address'
      Size = 50
    end
  end
  object Master: TTable
    DatabaseName = 'Coop'
    IndexName = 'MasterAccountNumber'
    TableName = 'Master.DB'
    Left = 12
    Top = 136
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
    object MasterAccountNumber: TStringField
      FieldName = 'AccountNumber'
      Size = 10
    end
    object MasterName: TStringField
      FieldName = 'Name'
      Size = 50
    end
    object MasterRateCode: TStringField
      FieldName = 'RateCode'
      Size = 1
    end
  end
  object MasterSource: TDataSource
    DataSet = Master
    Left = 44
    Top = 136
  end
end
