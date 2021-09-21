object DisconnectionOrderFilterForm: TDisconnectionOrderFilterForm
  Left = 313
  Top = 280
  BorderStyle = bsDialog
  BorderWidth = 3
  Caption = 'Disconnection Order Filter'
  ClientHeight = 213
  ClientWidth = 390
  Color = clBtnFace
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
    Width = 390
    Height = 213
    Align = alClient
    BevelOuter = bvNone
    BorderStyle = bsSingle
    TabOrder = 0
    object PDJRotoLabel1: TPDJRotoLabel
      Left = 0
      Top = 0
      Width = 386
      Height = 21
      Text3D = True
      Angle = ag0
      Caption = 'Disconnection Order Filter'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBtnText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Color = clBtnShadow
      ParentColor = False
      Align = alTop
    end
    object Label3: TLabel
      Left = 18
      Top = 111
      Width = 147
      Height = 27
      Alignment = taCenter
      AutoSize = False
      Caption = 'Bill Month (mmyy)'
      Color = clBtnShadow
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
    end
    object Label1: TLabel
      Left = 18
      Top = 37
      Width = 147
      Height = 27
      Alignment = taCenter
      AutoSize = False
      Caption = 'Area'
      Color = clBtnShadow
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
    end
    object Label2: TLabel
      Left = 18
      Top = 74
      Width = 147
      Height = 27
      Alignment = taCenter
      AutoSize = False
      Caption = 'Book'
      Color = clBtnShadow
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
    end
    object Area: TEdit
      Left = 165
      Top = 37
      Width = 200
      Height = 27
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Book: TEdit
      Left = 165
      Top = 74
      Width = 200
      Height = 27
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object BMonth: TEdit
      Left = 165
      Top = 111
      Width = 200
      Height = 27
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object Cancel: TPDJSillyLabel
      Left = 198
      Top = 165
      Width = 105
      Height = 24
      Cursor = 1
      AlwaysSpectrum = True
      Version = 
        'Version 2.00, Copyright '#169' 2000-2001 by Peric, E-mail: pericddn@p' +
        'tt.yu'
      ColorLine = clBtnShadow
      ColorLineFocus = clBtnShadow
      ColorSpectrum = clBtnShadow
      Caption = '&Cancel'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      Color = clWhite
      ParentColor = False
      TabOrder = 4
      OnClick = CancelClick
      ParentFont = False
    end
    object SetFilter: TPDJSillyLabel
      Left = 78
      Top = 165
      Width = 105
      Height = 24
      Cursor = 1
      AlwaysSpectrum = True
      Version = 
        'Version 2.00, Copyright '#169' 2000-2001 by Peric, E-mail: pericddn@p' +
        'tt.yu'
      ColorLine = clBtnShadow
      ColorLineFocus = clBtnShadow
      ColorSpectrum = clBtnShadow
      Caption = '&Set Filter'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      Color = clWhite
      ParentColor = False
      TabOrder = 3
      OnClick = SetFilterClick
      ParentFont = False
    end
  end
end
