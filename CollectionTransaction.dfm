object BillMenuForm: TBillMenuForm
  Left = -4
  Top = -4
  Width = 806
  Height = 608
  Align = alTop
  BorderWidth = 3
  Caption = 'Billing System'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = BcBarMainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 798
    Height = 562
    Align = alClient
    BevelOuter = bvNone
    BorderStyle = bsSingle
    TabOrder = 0
    object Gradient1: TGradient
      Left = 0
      Top = 0
      Width = 794
      Height = 558
      Align = alClient
      ColorEnd = clBtnShadow
      Reverse = True
      Rotation = -100
      Style = gsDiamond
    end
  end
  object PrinterSetupDialog1: TPrinterSetupDialog
    Left = 40
    Top = 8
  end
  object ApplicationEvents1: TApplicationEvents
    OnException = ApplicationEvents1Exception
    Left = 72
    Top = 8
  end
  object BcBarMainMenu1: TBcBarMainMenu
    BiDiMode = bdLeftToRight
    OwnerDraw = True
    ParentBiDiMode = False
    Bar.GradientStart = clSkyBlue
    Bar.Space = 5
    Bar.BarCaption.Font.Charset = DEFAULT_CHARSET
    Bar.BarCaption.Font.Color = clWhite
    Bar.BarCaption.Font.Height = -15
    Bar.BarCaption.Font.Name = 'Tahoma'
    Bar.BarCaption.Font.Style = [fsBold, fsItalic]
    Bar.BarCaption.Caption = 'Flexi Billing System'
    Bar.BarCaption.Alignment = vaMiddle
    Separators.Fade = True
    Separators.Font.Charset = ANSI_CHARSET
    Separators.Font.Color = clWindowText
    Separators.Font.Height = -15
    Separators.Font.Name = 'Tahoma'
    Separators.Font.Style = []
    MenuFont.Charset = ANSI_CHARSET
    MenuFont.Color = clWindowText
    MenuFont.Height = -15
    MenuFont.Name = 'Tahoma'
    MenuFont.Style = []
    MenuStyle = msWindowsXP
    Left = 8
    Top = 8
    object Transaction1: TMenuItem
      Caption = '&Transaction'
      object Collection1: TMenuItem
        Caption = '&Collectors / Tellers Collection Data Entry'
        ShortCut = 112
        OnClick = Collection1Click
      end
      object PostedCollection1: TMenuItem
        Caption = '&Encoders Collection Posting'
        ShortCut = 113
        OnClick = PostedCollection1Click
      end
      object Adjustment1: TMenuItem
        Caption = '&Adjustment'
        ShortCut = 114
        OnClick = Adjustment1Click
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object Reconnection1: TMenuItem
        Caption = '&Reconnection'
        ShortCut = 115
        OnClick = Reconnection1Click
      end
      object Disconnection1: TMenuItem
        Caption = '&Disconnection'
        ShortCut = 116
        OnClick = Disconnection1Click
      end
      object ChangeMeter1: TMenuItem
        Caption = 'C&hange Meter'
        ShortCut = 117
        OnClick = ChangeMeter1Click
      end
      object ChangeName1: TMenuItem
        Caption = 'Cha&nge Name'
        ShortCut = 118
        OnClick = ChangeName1Click
      end
      object TransferArea1: TMenuItem
        Caption = '&Transfer Area'
        ShortCut = 119
        OnClick = TransferArea1Click
      end
      object N6: TMenuItem
        Caption = '-'
      end
      object ReferenceList1: TMenuItem
        Caption = 'Reference List '
        ShortCut = 120
        OnClick = ReferenceList1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Exit1: TMenuItem
        Caption = 'Exit'
      end
    end
  end
end
