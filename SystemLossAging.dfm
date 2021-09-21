object SystemLossAgingForm: TSystemLossAgingForm
  Left = 264
  Top = 126
  Width = 366
  Height = 303
  BorderIcons = [biSystemMenu]
  Caption = 'System Loss Charge Aging'
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object NxLabel1: TNxLabel
    Left = 24
    Top = 24
    Width = 54
    Height = 13
    Caption = 'Cutoff Date'
    HorizontalPosition = hpLeft
    InnerHorizontal = True
    InnerVertical = False
    InnerMargins.Horizontal = 0
    InnerMargins.Vertical = 2
    VerticalPosition = vpTop
  end
  object NxDatePicker1: TNxDatePicker
    Left = 88
    Top = 20
    Width = 113
    Height = 21
    TabOrder = 0
    Text = '02/21/2009'
    HideFocus = False
    Date = 39865.000000000000000000
    NoneCaption = 'None'
    TodayCaption = 'Today'
  end
  object NxMemo1: TNxMemo
    Left = 24
    Top = 54
    Width = 176
    Height = 185
    Lines.Strings = (
      'Unpaidbills is a live table that is '
      'constantly updated if other online '
      'applications are running, which '
      'means you will get different results '
      'everytime you run this aging.'
      ''
      'It is recommended that you run this '
      'aging when there is no '
      'operation.')
    TabOrder = 1
  end
  object NxButton1: TNxButton
    Left = 212
    Top = 19
    Width = 127
    Caption = 'Print Preview'
    TabOrder = 2
  end
  object NxButton2: TNxButton
    Left = 212
    Top = 218
    Width = 127
    Caption = 'Close'
    TabOrder = 3
  end
  object SysLossAge: TMyQuery
    Left = 216
    Top = 48
  end
end
