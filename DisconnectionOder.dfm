object DisconnectionOrderForm: TDisconnectionOrderForm
  Left = 97
  Top = 98
  Width = 834
  Height = 548
  ActiveControl = EditReceiptNumber
  BorderWidth = 3
  Caption = 'Disconnection Order Form'
  Color = clBtnFace
  Constraints.MinHeight = 548
  Constraints.MinWidth = 834
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 820
    Height = 508
    Align = alClient
    BevelOuter = bvNone
    BorderStyle = bsSingle
    TabOrder = 0
    DesignSize = (
      816
      504)
    object Gradient1: TGradient
      Left = 0
      Top = 0
      Width = 816
      Height = 504
      Align = alClient
    end
    object Label1: TLabel
      Left = 11
      Top = 35
      Width = 110
      Height = 25
      Alignment = taCenter
      AutoSize = False
      Caption = 'Receipt / OEBR'
      Color = clBtnShadow
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
    end
    object Area: TLabel
      Left = 11
      Top = 3
      Width = 62
      Height = 25
      Alignment = taCenter
      AutoSize = False
      Color = clBtnShadow
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
    end
    object Book: TLabel
      Left = 75
      Top = 3
      Width = 62
      Height = 25
      Alignment = taCenter
      AutoSize = False
      Color = clBtnShadow
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
    end
    object Address: TLabel
      Left = 140
      Top = 3
      Width = 337
      Height = 25
      Alignment = taCenter
      AutoSize = False
      Color = clBtnShadow
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
    end
    object BillMonth: TLabel
      Left = 479
      Top = 3
      Width = 110
      Height = 25
      Alignment = taCenter
      AutoSize = False
      Color = clBtnShadow
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
    end
    object Label2: TLabel
      Left = 291
      Top = 35
      Width = 110
      Height = 25
      Alignment = taCenter
      AutoSize = False
      Caption = 'Remarks'
      Color = clBtnShadow
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
    end
    object DiscoBillsGrid: TDBGrid
      Left = 8
      Top = 64
      Width = 800
      Height = 395
      Anchors = [akLeft, akTop, akRight, akBottom]
      DataSource = BillingData.DiscoOrderSource
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
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
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RateCode'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Name'
          Width = 209
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BillMonth'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BillNumber'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MeterSerial'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Reading'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Amount'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Remarks'
          Visible = True
        end>
    end
    object EditReceiptNumber: TEdit
      Left = 118
      Top = 35
      Width = 159
      Height = 25
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnKeyPress = EditReceiptNumberKeyPress
    end
    object Print: TPDJSillyLabel
      Left = 597
      Top = 1
      Width = 212
      Height = 28
      Cursor = 1
      AlwaysSpectrum = True
      Version = 
        'Version 2.00, Copyright '#169' 2000-2001 by Peric, E-mail: pericddn@p' +
        'tt.yu'
      ColorLine = clBtnShadow
      ColorSpectrum = clBtnShadow
      Caption = '&Disconnection Order'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Color = clWhite
      ParentColor = False
      TabOrder = 2
      OnClick = PrintClick
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 404
      Top = 34
      Width = 277
      Height = 25
      DataField = 'Remarks'
      DataSource = BillingData.DiscoOrderSource
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnKeyPress = DBEdit1KeyPress
    end
  end
end
