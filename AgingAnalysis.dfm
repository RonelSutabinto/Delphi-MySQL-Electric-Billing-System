object AgingAnalysisForm: TAgingAnalysisForm
  Left = 416
  Top = 298
  BorderStyle = bsDialog
  Caption = 'Print Aging Analysis'
  ClientHeight = 131
  ClientWidth = 313
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
    Width = 313
    Height = 131
    Align = alClient
    BevelInner = bvLowered
    BorderWidth = 3
    TabOrder = 0
    object Label14: TLabel
      Left = 27
      Top = 15
      Width = 119
      Height = 21
      Alignment = taCenter
      AutoSize = False
      Caption = 'District'
      Color = clBtnShadow
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label27: TLabel
      Left = 27
      Top = 39
      Width = 119
      Height = 21
      Alignment = taCenter
      AutoSize = False
      Caption = 'Route'
      Color = clBtnShadow
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label29: TLabel
      Left = 27
      Top = 63
      Width = 119
      Height = 21
      Alignment = taCenter
      AutoSize = False
      Caption = 'Bill Month'
      Color = clBtnShadow
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object AgingArea: TEdit
      Left = 148
      Top = 15
      Width = 136
      Height = 21
      TabOrder = 0
    end
    object PDJSillyLabel11: TPDJSillyLabel
      Left = 163
      Top = 95
      Width = 82
      Height = 21
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
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Color = clWhite
      ParentColor = False
      TabOrder = 4
      OnClick = PDJSillyLabel11Click
      ParentFont = False
    end
    object AgingBook: TEdit
      Left = 148
      Top = 39
      Width = 136
      Height = 21
      TabOrder = 1
    end
    object PDJSillyLabel12: TPDJSillyLabel
      Left = 67
      Top = 96
      Width = 82
      Height = 20
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
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Color = clWhite
      ParentColor = False
      TabOrder = 3
      OnClick = PDJSillyLabel12Click
      ParentFont = False
    end
    object AgingBillMonth: TEdit
      Left = 148
      Top = 63
      Width = 136
      Height = 21
      TabOrder = 2
    end
  end
  object UnPaidBills: TTable
    DatabaseName = 'Coop'
    TableName = 'UnpaidBills.DB'
    Left = 8
    Top = 88
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
    Left = 32
    Top = 88
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
    Left = 248
    Top = 96
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
    Left = 280
    Top = 96
  end
end
