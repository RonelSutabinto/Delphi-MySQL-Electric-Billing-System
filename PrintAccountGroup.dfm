object PrintAccountGroupForm: TPrintAccountGroupForm
  Left = 83
  Top = 289
  ActiveControl = BillMonth
  BorderStyle = bsDialog
  Caption = 'Print Account Group '
  ClientHeight = 111
  ClientWidth = 301
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 19
    Top = 19
    Width = 130
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
  end
  object BillMonth: TEdit
    Left = 148
    Top = 19
    Width = 137
    Height = 31
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object Print: TPDJSillyLabel
    Left = 76
    Top = 72
    Width = 101
    Height = 25
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
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    Color = clWhite
    ParentColor = False
    TabOrder = 1
    OnClick = PrintClick
    ParentFont = False
  end
  object Cancel: TPDJSillyLabel
    Left = 184
    Top = 72
    Width = 101
    Height = 25
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
    TabOrder = 2
    OnClick = CancelClick
    ParentFont = False
  end
end
