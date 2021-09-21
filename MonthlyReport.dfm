object MonthlyRprt: TMonthlyRprt
  Left = 71
  Top = 133
  BiDiMode = bdLeftToRight
  BorderStyle = bsDialog
  Caption = 'Monthly Report'
  ClientHeight = 368
  ClientWidth = 418
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object NxHeaderPanel1: TNxHeaderPanel
    Left = 8
    Top = 8
    Width = 401
    Height = 233
    Caption = 'Bond Paper'
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -11
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = [fsBold]
    ParentHeaderFont = False
    TabOrder = 0
    FullWidth = 401
    object DsFancyButton1: TDsFancyButton
      Left = 7
      Top = 36
      Width = 178
      Height = 25
      Color = clBtnFace
      Caption = 'Unbundled Power Sales Report'
      FancyEffects.FrameStyle = fmGradient
      FancyEffects.FrameWidth = 6
      FancyEffects.HoverColor = clBlue
      FancyEffects.Shape = btnRectangle
      FancyEffects.CornerRadius = 3
      FancyEffects.TextStyle = txLowered
      Glyphs.GlyphStyle = gsNormal
      Glyphs.Layout = lyLeft
      Glyphs.Number = 1
      Glyphs.Distance = 0
      OnClick = DsFancyButton1Click
    end
    object DsFancyButton2: TDsFancyButton
      Left = 7
      Top = 67
      Width = 178
      Height = 25
      Color = clBtnFace
      Caption = 'Senior Citizen Report'
      FancyEffects.FrameStyle = fmGradient
      FancyEffects.FrameWidth = 6
      FancyEffects.HoverColor = clBlue
      FancyEffects.Shape = btnRectangle
      FancyEffects.CornerRadius = 3
      FancyEffects.TextStyle = txLowered
      Glyphs.GlyphStyle = gsNormal
      Glyphs.Layout = lyLeft
      Glyphs.Number = 1
      Glyphs.Distance = 0
      OnClick = DsFancyButton2Click
    end
    object DsFancyButton3: TDsFancyButton
      Left = 7
      Top = 98
      Width = 178
      Height = 25
      Color = clBtnFace
      Caption = 'Month End Summaries'
      FancyEffects.FrameStyle = fmGradient
      FancyEffects.FrameWidth = 6
      FancyEffects.HoverColor = clBlue
      FancyEffects.Shape = btnRectangle
      FancyEffects.CornerRadius = 3
      FancyEffects.TextStyle = txLowered
      Glyphs.GlyphStyle = gsNormal
      Glyphs.Layout = lyLeft
      Glyphs.Number = 1
      Glyphs.Distance = 0
      OnClick = DsFancyButton3Click
    end
    object DsFancyButton4: TDsFancyButton
      Left = 7
      Top = 129
      Width = 178
      Height = 24
      Color = clBtnFace
      Caption = 'Coll. EVAT and Net Coll. Summary'
      FancyEffects.FrameStyle = fmGradient
      FancyEffects.FrameWidth = 6
      FancyEffects.HoverColor = clBlue
      FancyEffects.Shape = btnRectangle
      FancyEffects.CornerRadius = 3
      FancyEffects.TextStyle = txLowered
      Glyphs.GlyphStyle = gsNormal
      Glyphs.Layout = lyLeft
      Glyphs.Number = 1
      Glyphs.Distance = 0
      OnClick = DsFancyButton4Click
    end
    object DsFancyButton5: TDsFancyButton
      Left = 7
      Top = 159
      Width = 178
      Height = 25
      Color = clBtnFace
      Caption = 'Disconnected Consumers Summary'
      FancyEffects.FrameStyle = fmGradient
      FancyEffects.FrameWidth = 6
      FancyEffects.HoverColor = clBlue
      FancyEffects.Shape = btnRectangle
      FancyEffects.CornerRadius = 3
      FancyEffects.TextStyle = txLowered
      Glyphs.GlyphStyle = gsNormal
      Glyphs.Layout = lyLeft
      Glyphs.Number = 1
      Glyphs.Distance = 0
      OnClick = DsFancyButton5Click
    end
    object DsFancyButton6: TDsFancyButton
      Left = 7
      Top = 190
      Width = 178
      Height = 25
      Color = clBtnFace
      Caption = 'Other Charges Billing Summary'
      FancyEffects.FrameStyle = fmGradient
      FancyEffects.FrameWidth = 6
      FancyEffects.HoverColor = clBlue
      FancyEffects.Shape = btnRectangle
      FancyEffects.CornerRadius = 3
      FancyEffects.TextStyle = txLowered
      Glyphs.GlyphStyle = gsNormal
      Glyphs.Layout = lyLeft
      Glyphs.Number = 1
      Glyphs.Distance = 0
      OnClick = DsFancyButton6Click
    end
    object DsFancyButton11: TDsFancyButton
      Left = 207
      Top = 67
      Width = 178
      Height = 25
      Color = clBtnFace
      Caption = 'Unbundled Collection'
      FancyEffects.FrameStyle = fmGradient
      FancyEffects.FrameWidth = 6
      FancyEffects.HoverColor = clBlue
      FancyEffects.Shape = btnRectangle
      FancyEffects.CornerRadius = 3
      FancyEffects.TextStyle = txLowered
      Glyphs.GlyphStyle = gsNormal
      Glyphs.Layout = lyLeft
      Glyphs.Number = 1
      Glyphs.Distance = 0
      OnClick = DsFancyButton11Click
    end
    object DsFancyButton12: TDsFancyButton
      Left = 207
      Top = 98
      Width = 178
      Height = 25
      Color = clBtnFace
      Caption = 'Unbundled Adjustment'
      FancyEffects.FrameStyle = fmGradient
      FancyEffects.FrameWidth = 6
      FancyEffects.HoverColor = clBlue
      FancyEffects.Shape = btnRectangle
      FancyEffects.CornerRadius = 3
      FancyEffects.TextStyle = txLowered
      Glyphs.GlyphStyle = gsNormal
      Glyphs.Layout = lyLeft
      Glyphs.Number = 1
      Glyphs.Distance = 0
      OnClick = DsFancyButton12Click
    end
    object DsFancyButton13: TDsFancyButton
      Left = 207
      Top = 128
      Width = 178
      Height = 25
      Color = clBtnFace
      Caption = 'Unbundled Unpaid Bills '
      FancyEffects.FrameStyle = fmGradient
      FancyEffects.FrameWidth = 6
      FancyEffects.HoverColor = clBlue
      FancyEffects.Shape = btnRectangle
      FancyEffects.CornerRadius = 3
      FancyEffects.TextStyle = txLowered
      Glyphs.GlyphStyle = gsNormal
      Glyphs.Layout = lyLeft
      Glyphs.Number = 1
      Glyphs.Distance = 0
      OnClick = DsFancyButton13Click
    end
    object DsFancyButton10: TDsFancyButton
      Left = 207
      Top = 36
      Width = 177
      Height = 25
      Color = clBtnFace
      Caption = 'Adjustment Summary'
      FancyEffects.FrameStyle = fmGradient
      FancyEffects.FrameWidth = 6
      FancyEffects.HoverColor = clBlue
      FancyEffects.Shape = btnRectangle
      FancyEffects.CornerRadius = 3
      FancyEffects.TextStyle = txLowered
      Glyphs.GlyphStyle = gsNormal
      Glyphs.Layout = lyLeft
      Glyphs.Number = 1
      Glyphs.Distance = 0
      OnClick = DsFancyButton10Click
    end
    object DsFancyButton14: TDsFancyButton
      Left = 207
      Top = 158
      Width = 178
      Height = 25
      Color = clBtnFace
      Caption = 'GRAM / ICERA DAA'
      FancyEffects.FrameStyle = fmGradient
      FancyEffects.FrameWidth = 6
      FancyEffects.HoverColor = clBlue
      FancyEffects.Shape = btnRectangle
      FancyEffects.CornerRadius = 3
      FancyEffects.TextStyle = txLowered
      Glyphs.GlyphStyle = gsNormal
      Glyphs.Layout = lyLeft
      Glyphs.Number = 1
      Glyphs.Distance = 0
      OnClick = DsFancyButton14Click
    end
    object DsFancyButton15: TDsFancyButton
      Left = 207
      Top = 189
      Width = 178
      Height = 25
      Color = clBtnFace
      Caption = 'Latebillhistory Records'
      FancyEffects.FrameStyle = fmGradient
      FancyEffects.FrameWidth = 6
      FancyEffects.HoverColor = clBlue
      FancyEffects.Shape = btnRectangle
      FancyEffects.CornerRadius = 3
      FancyEffects.TextStyle = txLowered
      Glyphs.GlyphStyle = gsNormal
      Glyphs.Layout = lyLeft
      Glyphs.Number = 1
      Glyphs.Distance = 0
      OnClick = DsFancyButton15Click
    end
  end
  object NxHeaderPanel2: TNxHeaderPanel
    Left = 8
    Top = 242
    Width = 401
    Height = 111
    Caption = 'Continous Form'
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -11
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = [fsBold]
    ParentHeaderFont = False
    TabOrder = 1
    FullWidth = 401
    object DsFancyButton7: TDsFancyButton
      Left = 7
      Top = 40
      Width = 178
      Height = 25
      Color = clBtnFace
      Caption = 'Coll. Summary / Advance Coll.Rep.'
      FancyEffects.FrameStyle = fmGradient
      FancyEffects.FrameWidth = 6
      FancyEffects.HoverColor = clBlue
      FancyEffects.Shape = btnRectangle
      FancyEffects.CornerRadius = 3
      FancyEffects.TextStyle = txLowered
      Glyphs.GlyphStyle = gsNormal
      Glyphs.Layout = lyLeft
      Glyphs.Number = 1
      Glyphs.Distance = 0
      OnClick = DsFancyButton7Click
    end
    object DsFancyButton8: TDsFancyButton
      Left = 7
      Top = 71
      Width = 178
      Height = 25
      Color = clBtnFace
      Caption = 'Monthly Frequency Report'
      FancyEffects.FrameStyle = fmGradient
      FancyEffects.FrameWidth = 6
      FancyEffects.HoverColor = clBlue
      FancyEffects.Shape = btnRectangle
      FancyEffects.CornerRadius = 3
      FancyEffects.TextStyle = txLowered
      Glyphs.GlyphStyle = gsNormal
      Glyphs.Layout = lyLeft
      Glyphs.Number = 1
      Glyphs.Distance = 0
      OnClick = DsFancyButton8Click
    end
    object DsFancyButton9: TDsFancyButton
      Left = 207
      Top = 40
      Width = 178
      Height = 25
      Color = clBtnFace
      Caption = 'Unpaid Bills Detailed List'
      FancyEffects.FrameStyle = fmGradient
      FancyEffects.FrameWidth = 6
      FancyEffects.HoverColor = clBlue
      FancyEffects.Shape = btnRectangle
      FancyEffects.CornerRadius = 3
      FancyEffects.TextStyle = txLowered
      Glyphs.GlyphStyle = gsNormal
      Glyphs.Layout = lyLeft
      Glyphs.Number = 1
      Glyphs.Distance = 0
      OnClick = DsFancyButton9Click
    end
  end
end
