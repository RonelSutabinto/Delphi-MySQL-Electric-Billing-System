object latebillhistoryFrm: TlatebillhistoryFrm
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'latebillhistoryFrm'
  ClientHeight = 216
  ClientWidth = 257
  Color = clNavy
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWhite
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Padding.Left = 3
  Padding.Top = 3
  Padding.Right = 3
  Padding.Bottom = 3
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object AdvPanel1: TAdvPanel
    Left = 3
    Top = 3
    Width = 251
    Height = 210
    Align = alClient
    BevelOuter = bvNone
    Color = 16644337
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 7485192
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    UseDockManager = True
    Version = '2.3.0.0'
    BorderColor = 16637593
    Caption.Color = 16644337
    Caption.ColorTo = 16576469
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clBlack
    Caption.Font.Height = -11
    Caption.Font.Name = 'Tahoma'
    Caption.Font.Style = []
    Caption.GradientDirection = gdVertical
    Caption.Indent = 2
    Caption.ShadeLight = 255
    CollapsColor = clNone
    CollapsDelay = 0
    ColorTo = 16576469
    ShadowColor = clBlack
    ShadowOffset = 0
    StatusBar.BorderColor = 16637593
    StatusBar.BorderStyle = bsSingle
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = 7485192
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    StatusBar.Color = 16644337
    StatusBar.ColorTo = 16576469
    StatusBar.GradientDirection = gdVertical
    Styler = AdvPanelStyler1
    Text = ''
    FullHeight = 200
    object Label1: TLabel
      Left = 24
      Top = 44
      Width = 99
      Height = 14
      Caption = 'Posted Date From'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 7485192
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 24
      Top = 96
      Width = 87
      Height = 14
      Caption = 'Posted Date To'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 7485192
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object datefrom_dp: TAdvSmoothDatePicker
      Left = 24
      Top = 64
      Width = 200
      Height = 21
      Flat = False
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Lookup.Separator = ';'
      Color = clWindow
      Enabled = True
      ReadOnly = False
      TabOrder = 0
      Text = '6/11/2021'
      Visible = True
      Version = '2.2.0.0'
      ButtonStyle = bsDropDown
      ButtonWidth = 16
      Etched = False
      Glyph.Data = {
        DA020000424DDA0200000000000036000000280000000D0000000D0000000100
        200000000000A402000000000000000000000000000000000000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F00000000000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000000000000000000000000000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F0000000000000000000000000000000000000000000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F0000000000000000000000000000000
        0000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000}
      HideCalendarAfterSelection = True
      Calendar.Fill.Color = 15984090
      Calendar.Fill.ColorTo = 15785680
      Calendar.Fill.ColorMirror = clNone
      Calendar.Fill.ColorMirrorTo = clNone
      Calendar.Fill.GradientType = gtVertical
      Calendar.Fill.GradientMirrorType = gtSolid
      Calendar.Fill.BorderColor = clNone
      Calendar.Fill.Rounding = 0
      Calendar.Fill.ShadowOffset = 0
      Calendar.Fill.Glow = gmNone
      Calendar.Animation = True
      Calendar.ShowCurrentDate = True
      Calendar.DateAppearance.DateFont.Charset = DEFAULT_CHARSET
      Calendar.DateAppearance.DateFont.Color = clBlack
      Calendar.DateAppearance.DateFont.Height = -11
      Calendar.DateAppearance.DateFont.Name = 'Tahoma'
      Calendar.DateAppearance.DateFont.Style = []
      Calendar.DateAppearance.DateFill.Color = 16773091
      Calendar.DateAppearance.DateFill.ColorTo = 16768452
      Calendar.DateAppearance.DateFill.ColorMirror = 16765357
      Calendar.DateAppearance.DateFill.ColorMirrorTo = 16767936
      Calendar.DateAppearance.DateFill.GradientType = gtVertical
      Calendar.DateAppearance.DateFill.GradientMirrorType = gtVertical
      Calendar.DateAppearance.DateFill.BorderColor = clNone
      Calendar.DateAppearance.DateFill.Rounding = 0
      Calendar.DateAppearance.DateFill.ShadowOffset = 0
      Calendar.DateAppearance.DateFill.Glow = gmNone
      Calendar.DateAppearance.DayOfWeekFont.Charset = DEFAULT_CHARSET
      Calendar.DateAppearance.DayOfWeekFont.Color = clBlack
      Calendar.DateAppearance.DayOfWeekFont.Height = -11
      Calendar.DateAppearance.DayOfWeekFont.Name = 'Tahoma'
      Calendar.DateAppearance.DayOfWeekFont.Style = []
      Calendar.DateAppearance.DayOfWeekFill.Color = 15984090
      Calendar.DateAppearance.DayOfWeekFill.ColorTo = 15785680
      Calendar.DateAppearance.DayOfWeekFill.ColorMirror = clNone
      Calendar.DateAppearance.DayOfWeekFill.ColorMirrorTo = clNone
      Calendar.DateAppearance.DayOfWeekFill.GradientType = gtVertical
      Calendar.DateAppearance.DayOfWeekFill.GradientMirrorType = gtSolid
      Calendar.DateAppearance.DayOfWeekFill.BorderColor = clNone
      Calendar.DateAppearance.DayOfWeekFill.Rounding = 0
      Calendar.DateAppearance.DayOfWeekFill.ShadowOffset = 0
      Calendar.DateAppearance.DayOfWeekFill.Glow = gmNone
      Calendar.DateAppearance.SelectedDateFont.Charset = DEFAULT_CHARSET
      Calendar.DateAppearance.SelectedDateFont.Color = clBlack
      Calendar.DateAppearance.SelectedDateFont.Height = -11
      Calendar.DateAppearance.SelectedDateFont.Name = 'Tahoma'
      Calendar.DateAppearance.SelectedDateFont.Style = []
      Calendar.DateAppearance.SelectedDateFill.Color = 11196927
      Calendar.DateAppearance.SelectedDateFill.ColorTo = 7257087
      Calendar.DateAppearance.SelectedDateFill.ColorMirror = 4370174
      Calendar.DateAppearance.SelectedDateFill.ColorMirrorTo = 8053246
      Calendar.DateAppearance.SelectedDateFill.GradientType = gtVertical
      Calendar.DateAppearance.SelectedDateFill.GradientMirrorType = gtVertical
      Calendar.DateAppearance.SelectedDateFill.BorderColor = 4370174
      Calendar.DateAppearance.SelectedDateFill.Rounding = 0
      Calendar.DateAppearance.SelectedDateFill.ShadowOffset = 0
      Calendar.DateAppearance.SelectedDateFill.Glow = gmNone
      Calendar.DateAppearance.CurrentDateFont.Charset = DEFAULT_CHARSET
      Calendar.DateAppearance.CurrentDateFont.Color = clBlack
      Calendar.DateAppearance.CurrentDateFont.Height = -11
      Calendar.DateAppearance.CurrentDateFont.Name = 'Tahoma'
      Calendar.DateAppearance.CurrentDateFont.Style = []
      Calendar.DateAppearance.CurrentDateFill.Color = 7778289
      Calendar.DateAppearance.CurrentDateFill.ColorTo = 4296947
      Calendar.DateAppearance.CurrentDateFill.ColorMirror = 946929
      Calendar.DateAppearance.CurrentDateFill.ColorMirrorTo = 5021693
      Calendar.DateAppearance.CurrentDateFill.GradientType = gtVertical
      Calendar.DateAppearance.CurrentDateFill.GradientMirrorType = gtVertical
      Calendar.DateAppearance.CurrentDateFill.BorderColor = 4548219
      Calendar.DateAppearance.CurrentDateFill.Rounding = 0
      Calendar.DateAppearance.CurrentDateFill.ShadowOffset = 0
      Calendar.DateAppearance.CurrentDateFill.Glow = gmNone
      Calendar.DateAppearance.WeekendFill.Color = 16773091
      Calendar.DateAppearance.WeekendFill.ColorTo = 16768452
      Calendar.DateAppearance.WeekendFill.ColorMirror = 16765357
      Calendar.DateAppearance.WeekendFill.ColorMirrorTo = 16767936
      Calendar.DateAppearance.WeekendFill.GradientType = gtVertical
      Calendar.DateAppearance.WeekendFill.GradientMirrorType = gtVertical
      Calendar.DateAppearance.WeekendFill.BorderColor = clNone
      Calendar.DateAppearance.WeekendFill.Rounding = 0
      Calendar.DateAppearance.WeekendFill.ShadowOffset = 0
      Calendar.DateAppearance.WeekendFill.Glow = gmNone
      Calendar.DateAppearance.WeekendFont.Charset = DEFAULT_CHARSET
      Calendar.DateAppearance.WeekendFont.Color = clBlack
      Calendar.DateAppearance.WeekendFont.Height = -11
      Calendar.DateAppearance.WeekendFont.Name = 'Tahoma'
      Calendar.DateAppearance.WeekendFont.Style = []
      Calendar.DateAppearance.HoverDateFont.Charset = DEFAULT_CHARSET
      Calendar.DateAppearance.HoverDateFont.Color = clBlack
      Calendar.DateAppearance.HoverDateFont.Height = -11
      Calendar.DateAppearance.HoverDateFont.Name = 'Tahoma'
      Calendar.DateAppearance.HoverDateFont.Style = []
      Calendar.DateAppearance.HoverDateFill.Color = 15465983
      Calendar.DateAppearance.HoverDateFill.ColorTo = 11332863
      Calendar.DateAppearance.HoverDateFill.ColorMirror = 5888767
      Calendar.DateAppearance.HoverDateFill.ColorMirrorTo = 10807807
      Calendar.DateAppearance.HoverDateFill.GradientType = gtVertical
      Calendar.DateAppearance.HoverDateFill.GradientMirrorType = gtVertical
      Calendar.DateAppearance.HoverDateFill.BorderColor = 10079963
      Calendar.DateAppearance.HoverDateFill.Rounding = 0
      Calendar.DateAppearance.HoverDateFill.ShadowOffset = 0
      Calendar.DateAppearance.HoverDateFill.Glow = gmNone
      Calendar.DateAppearance.MonthDateFont.Charset = DEFAULT_CHARSET
      Calendar.DateAppearance.MonthDateFont.Color = clBlack
      Calendar.DateAppearance.MonthDateFont.Height = -11
      Calendar.DateAppearance.MonthDateFont.Name = 'Tahoma'
      Calendar.DateAppearance.MonthDateFont.Style = []
      Calendar.DateAppearance.YearDateFont.Charset = DEFAULT_CHARSET
      Calendar.DateAppearance.YearDateFont.Color = clBlack
      Calendar.DateAppearance.YearDateFont.Height = -11
      Calendar.DateAppearance.YearDateFont.Name = 'Tahoma'
      Calendar.DateAppearance.YearDateFont.Style = []
      Calendar.DateAppearance.WeekNumbers.Font.Charset = DEFAULT_CHARSET
      Calendar.DateAppearance.WeekNumbers.Font.Color = clWindowText
      Calendar.DateAppearance.WeekNumbers.Font.Height = -11
      Calendar.DateAppearance.WeekNumbers.Font.Name = 'Tahoma'
      Calendar.DateAppearance.WeekNumbers.Font.Style = []
      Calendar.DateAppearance.WeekNumbers.Fill.Color = 15984090
      Calendar.DateAppearance.WeekNumbers.Fill.ColorTo = 15785680
      Calendar.DateAppearance.WeekNumbers.Fill.ColorMirror = clNone
      Calendar.DateAppearance.WeekNumbers.Fill.ColorMirrorTo = clNone
      Calendar.DateAppearance.WeekNumbers.Fill.GradientType = gtVertical
      Calendar.DateAppearance.WeekNumbers.Fill.GradientMirrorType = gtSolid
      Calendar.DateAppearance.WeekNumbers.Fill.BorderColor = clNone
      Calendar.DateAppearance.WeekNumbers.Fill.Rounding = 0
      Calendar.DateAppearance.WeekNumbers.Fill.ShadowOffset = 0
      Calendar.DateAppearance.WeekNumbers.Fill.Glow = gmNone
      Calendar.DateAppearance.DisabledDateFont.Charset = DEFAULT_CHARSET
      Calendar.DateAppearance.DisabledDateFont.Color = clGray
      Calendar.DateAppearance.DisabledDateFont.Height = -11
      Calendar.DateAppearance.DisabledDateFont.Name = 'Tahoma'
      Calendar.DateAppearance.DisabledDateFont.Style = []
      Calendar.DateAppearance.DisabledDateFill.Color = 15921906
      Calendar.DateAppearance.DisabledDateFill.ColorTo = 11974326
      Calendar.DateAppearance.DisabledDateFill.ColorMirror = 11974326
      Calendar.DateAppearance.DisabledDateFill.ColorMirrorTo = 15921906
      Calendar.DateAppearance.DisabledDateFill.GradientType = gtVertical
      Calendar.DateAppearance.DisabledDateFill.GradientMirrorType = gtVertical
      Calendar.DateAppearance.DisabledDateFill.BorderColor = clNone
      Calendar.DateAppearance.DisabledDateFill.Rounding = 0
      Calendar.DateAppearance.DisabledDateFill.ShadowOffset = 0
      Calendar.DateAppearance.DisabledDateFill.Glow = gmNone
      Calendar.DateAppearance.DateBeforeFill.Color = clNone
      Calendar.DateAppearance.DateBeforeFill.ColorMirror = clNone
      Calendar.DateAppearance.DateBeforeFill.ColorMirrorTo = clNone
      Calendar.DateAppearance.DateBeforeFill.GradientType = gtVertical
      Calendar.DateAppearance.DateBeforeFill.GradientMirrorType = gtSolid
      Calendar.DateAppearance.DateBeforeFill.BorderColor = clNone
      Calendar.DateAppearance.DateBeforeFill.Rounding = 0
      Calendar.DateAppearance.DateBeforeFill.ShadowOffset = 0
      Calendar.DateAppearance.DateBeforeFill.Glow = gmNone
      Calendar.DateAppearance.DateAfterFill.Color = clNone
      Calendar.DateAppearance.DateAfterFill.ColorMirror = clNone
      Calendar.DateAppearance.DateAfterFill.ColorMirrorTo = clNone
      Calendar.DateAppearance.DateAfterFill.GradientType = gtVertical
      Calendar.DateAppearance.DateAfterFill.GradientMirrorType = gtSolid
      Calendar.DateAppearance.DateAfterFill.BorderColor = clNone
      Calendar.DateAppearance.DateAfterFill.Rounding = 0
      Calendar.DateAppearance.DateAfterFill.ShadowOffset = 0
      Calendar.DateAppearance.DateAfterFill.Glow = gmNone
      Calendar.DateAppearance.DateBeforeFont.Charset = DEFAULT_CHARSET
      Calendar.DateAppearance.DateBeforeFont.Color = clSilver
      Calendar.DateAppearance.DateBeforeFont.Height = -11
      Calendar.DateAppearance.DateBeforeFont.Name = 'Tahoma'
      Calendar.DateAppearance.DateBeforeFont.Style = []
      Calendar.DateAppearance.DateAfterFont.Charset = DEFAULT_CHARSET
      Calendar.DateAppearance.DateAfterFont.Color = clSilver
      Calendar.DateAppearance.DateAfterFont.Height = -11
      Calendar.DateAppearance.DateAfterFont.Name = 'Tahoma'
      Calendar.DateAppearance.DateAfterFont.Style = []
      Calendar.StatusAppearance.Fill.Color = clRed
      Calendar.StatusAppearance.Fill.ColorMirror = clNone
      Calendar.StatusAppearance.Fill.ColorMirrorTo = clNone
      Calendar.StatusAppearance.Fill.GradientType = gtSolid
      Calendar.StatusAppearance.Fill.GradientMirrorType = gtSolid
      Calendar.StatusAppearance.Fill.BorderColor = clGray
      Calendar.StatusAppearance.Fill.Rounding = 0
      Calendar.StatusAppearance.Fill.ShadowOffset = 0
      Calendar.StatusAppearance.Fill.Glow = gmNone
      Calendar.StatusAppearance.Font.Charset = DEFAULT_CHARSET
      Calendar.StatusAppearance.Font.Color = clWhite
      Calendar.StatusAppearance.Font.Height = -11
      Calendar.StatusAppearance.Font.Name = 'Tahoma'
      Calendar.StatusAppearance.Font.Style = []
      Calendar.Footer.Fill.Color = 16773091
      Calendar.Footer.Fill.ColorTo = 16765615
      Calendar.Footer.Fill.ColorMirror = clNone
      Calendar.Footer.Fill.ColorMirrorTo = clNone
      Calendar.Footer.Fill.GradientType = gtVertical
      Calendar.Footer.Fill.GradientMirrorType = gtSolid
      Calendar.Footer.Fill.BorderColor = 16765615
      Calendar.Footer.Fill.Rounding = 0
      Calendar.Footer.Fill.ShadowOffset = 0
      Calendar.Footer.Fill.Glow = gmNone
      Calendar.Footer.Font.Charset = DEFAULT_CHARSET
      Calendar.Footer.Font.Color = 7485192
      Calendar.Footer.Font.Height = -11
      Calendar.Footer.Font.Name = 'Tahoma'
      Calendar.Footer.Font.Style = []
      Calendar.Header.Fill.Color = 16773091
      Calendar.Header.Fill.ColorTo = 16765615
      Calendar.Header.Fill.ColorMirror = clNone
      Calendar.Header.Fill.ColorMirrorTo = clNone
      Calendar.Header.Fill.GradientType = gtVertical
      Calendar.Header.Fill.GradientMirrorType = gtSolid
      Calendar.Header.Fill.BorderColor = 16765615
      Calendar.Header.Fill.Rounding = 0
      Calendar.Header.Fill.ShadowOffset = 0
      Calendar.Header.Fill.Glow = gmNone
      Calendar.Header.ArrowColor = 7485192
      Calendar.Header.Font.Charset = DEFAULT_CHARSET
      Calendar.Header.Font.Color = 7485192
      Calendar.Header.Font.Height = -11
      Calendar.Header.Font.Name = 'Tahoma'
      Calendar.Header.Font.Style = []
      Calendar.Width = 257
      Calendar.Height = 249
      Calendar.ShowHint = False
      Date = 44358.000000000000000000
    end
    object dateto_dp: TAdvSmoothDatePicker
      Left = 24
      Top = 115
      Width = 200
      Height = 21
      Flat = False
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Lookup.Separator = ';'
      Color = clWindow
      Enabled = True
      ReadOnly = False
      TabOrder = 1
      Text = '6/11/2021'
      Visible = True
      Version = '2.2.0.0'
      ButtonStyle = bsDropDown
      ButtonWidth = 16
      Etched = False
      Glyph.Data = {
        DA020000424DDA0200000000000036000000280000000D0000000D0000000100
        200000000000A402000000000000000000000000000000000000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F00000000000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000000000000000000000000000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F0000000000000000000000000000000000000000000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F0000000000000000000000000000000
        0000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000}
      HideCalendarAfterSelection = True
      Calendar.Fill.Color = 15984090
      Calendar.Fill.ColorTo = 15785680
      Calendar.Fill.ColorMirror = clNone
      Calendar.Fill.ColorMirrorTo = clNone
      Calendar.Fill.GradientType = gtVertical
      Calendar.Fill.GradientMirrorType = gtSolid
      Calendar.Fill.BorderColor = clNone
      Calendar.Fill.Rounding = 0
      Calendar.Fill.ShadowOffset = 0
      Calendar.Fill.Glow = gmNone
      Calendar.Animation = True
      Calendar.ShowCurrentDate = True
      Calendar.DateAppearance.DateFont.Charset = DEFAULT_CHARSET
      Calendar.DateAppearance.DateFont.Color = clBlack
      Calendar.DateAppearance.DateFont.Height = -11
      Calendar.DateAppearance.DateFont.Name = 'Tahoma'
      Calendar.DateAppearance.DateFont.Style = []
      Calendar.DateAppearance.DateFill.Color = 16773091
      Calendar.DateAppearance.DateFill.ColorTo = 16768452
      Calendar.DateAppearance.DateFill.ColorMirror = 16765357
      Calendar.DateAppearance.DateFill.ColorMirrorTo = 16767936
      Calendar.DateAppearance.DateFill.GradientType = gtVertical
      Calendar.DateAppearance.DateFill.GradientMirrorType = gtVertical
      Calendar.DateAppearance.DateFill.BorderColor = clNone
      Calendar.DateAppearance.DateFill.Rounding = 0
      Calendar.DateAppearance.DateFill.ShadowOffset = 0
      Calendar.DateAppearance.DateFill.Glow = gmNone
      Calendar.DateAppearance.DayOfWeekFont.Charset = DEFAULT_CHARSET
      Calendar.DateAppearance.DayOfWeekFont.Color = clBlack
      Calendar.DateAppearance.DayOfWeekFont.Height = -11
      Calendar.DateAppearance.DayOfWeekFont.Name = 'Tahoma'
      Calendar.DateAppearance.DayOfWeekFont.Style = []
      Calendar.DateAppearance.DayOfWeekFill.Color = 15984090
      Calendar.DateAppearance.DayOfWeekFill.ColorTo = 15785680
      Calendar.DateAppearance.DayOfWeekFill.ColorMirror = clNone
      Calendar.DateAppearance.DayOfWeekFill.ColorMirrorTo = clNone
      Calendar.DateAppearance.DayOfWeekFill.GradientType = gtVertical
      Calendar.DateAppearance.DayOfWeekFill.GradientMirrorType = gtSolid
      Calendar.DateAppearance.DayOfWeekFill.BorderColor = clNone
      Calendar.DateAppearance.DayOfWeekFill.Rounding = 0
      Calendar.DateAppearance.DayOfWeekFill.ShadowOffset = 0
      Calendar.DateAppearance.DayOfWeekFill.Glow = gmNone
      Calendar.DateAppearance.SelectedDateFont.Charset = DEFAULT_CHARSET
      Calendar.DateAppearance.SelectedDateFont.Color = clBlack
      Calendar.DateAppearance.SelectedDateFont.Height = -11
      Calendar.DateAppearance.SelectedDateFont.Name = 'Tahoma'
      Calendar.DateAppearance.SelectedDateFont.Style = []
      Calendar.DateAppearance.SelectedDateFill.Color = 11196927
      Calendar.DateAppearance.SelectedDateFill.ColorTo = 7257087
      Calendar.DateAppearance.SelectedDateFill.ColorMirror = 4370174
      Calendar.DateAppearance.SelectedDateFill.ColorMirrorTo = 8053246
      Calendar.DateAppearance.SelectedDateFill.GradientType = gtVertical
      Calendar.DateAppearance.SelectedDateFill.GradientMirrorType = gtVertical
      Calendar.DateAppearance.SelectedDateFill.BorderColor = 4370174
      Calendar.DateAppearance.SelectedDateFill.Rounding = 0
      Calendar.DateAppearance.SelectedDateFill.ShadowOffset = 0
      Calendar.DateAppearance.SelectedDateFill.Glow = gmNone
      Calendar.DateAppearance.CurrentDateFont.Charset = DEFAULT_CHARSET
      Calendar.DateAppearance.CurrentDateFont.Color = clBlack
      Calendar.DateAppearance.CurrentDateFont.Height = -11
      Calendar.DateAppearance.CurrentDateFont.Name = 'Tahoma'
      Calendar.DateAppearance.CurrentDateFont.Style = []
      Calendar.DateAppearance.CurrentDateFill.Color = 7778289
      Calendar.DateAppearance.CurrentDateFill.ColorTo = 4296947
      Calendar.DateAppearance.CurrentDateFill.ColorMirror = 946929
      Calendar.DateAppearance.CurrentDateFill.ColorMirrorTo = 5021693
      Calendar.DateAppearance.CurrentDateFill.GradientType = gtVertical
      Calendar.DateAppearance.CurrentDateFill.GradientMirrorType = gtVertical
      Calendar.DateAppearance.CurrentDateFill.BorderColor = 4548219
      Calendar.DateAppearance.CurrentDateFill.Rounding = 0
      Calendar.DateAppearance.CurrentDateFill.ShadowOffset = 0
      Calendar.DateAppearance.CurrentDateFill.Glow = gmNone
      Calendar.DateAppearance.WeekendFill.Color = 16773091
      Calendar.DateAppearance.WeekendFill.ColorTo = 16768452
      Calendar.DateAppearance.WeekendFill.ColorMirror = 16765357
      Calendar.DateAppearance.WeekendFill.ColorMirrorTo = 16767936
      Calendar.DateAppearance.WeekendFill.GradientType = gtVertical
      Calendar.DateAppearance.WeekendFill.GradientMirrorType = gtVertical
      Calendar.DateAppearance.WeekendFill.BorderColor = clNone
      Calendar.DateAppearance.WeekendFill.Rounding = 0
      Calendar.DateAppearance.WeekendFill.ShadowOffset = 0
      Calendar.DateAppearance.WeekendFill.Glow = gmNone
      Calendar.DateAppearance.WeekendFont.Charset = DEFAULT_CHARSET
      Calendar.DateAppearance.WeekendFont.Color = clBlack
      Calendar.DateAppearance.WeekendFont.Height = -11
      Calendar.DateAppearance.WeekendFont.Name = 'Tahoma'
      Calendar.DateAppearance.WeekendFont.Style = []
      Calendar.DateAppearance.HoverDateFont.Charset = DEFAULT_CHARSET
      Calendar.DateAppearance.HoverDateFont.Color = clBlack
      Calendar.DateAppearance.HoverDateFont.Height = -11
      Calendar.DateAppearance.HoverDateFont.Name = 'Tahoma'
      Calendar.DateAppearance.HoverDateFont.Style = []
      Calendar.DateAppearance.HoverDateFill.Color = 15465983
      Calendar.DateAppearance.HoverDateFill.ColorTo = 11332863
      Calendar.DateAppearance.HoverDateFill.ColorMirror = 5888767
      Calendar.DateAppearance.HoverDateFill.ColorMirrorTo = 10807807
      Calendar.DateAppearance.HoverDateFill.GradientType = gtVertical
      Calendar.DateAppearance.HoverDateFill.GradientMirrorType = gtVertical
      Calendar.DateAppearance.HoverDateFill.BorderColor = 10079963
      Calendar.DateAppearance.HoverDateFill.Rounding = 0
      Calendar.DateAppearance.HoverDateFill.ShadowOffset = 0
      Calendar.DateAppearance.HoverDateFill.Glow = gmNone
      Calendar.DateAppearance.MonthDateFont.Charset = DEFAULT_CHARSET
      Calendar.DateAppearance.MonthDateFont.Color = clBlack
      Calendar.DateAppearance.MonthDateFont.Height = -11
      Calendar.DateAppearance.MonthDateFont.Name = 'Tahoma'
      Calendar.DateAppearance.MonthDateFont.Style = []
      Calendar.DateAppearance.YearDateFont.Charset = DEFAULT_CHARSET
      Calendar.DateAppearance.YearDateFont.Color = clBlack
      Calendar.DateAppearance.YearDateFont.Height = -11
      Calendar.DateAppearance.YearDateFont.Name = 'Tahoma'
      Calendar.DateAppearance.YearDateFont.Style = []
      Calendar.DateAppearance.WeekNumbers.Font.Charset = DEFAULT_CHARSET
      Calendar.DateAppearance.WeekNumbers.Font.Color = clWindowText
      Calendar.DateAppearance.WeekNumbers.Font.Height = -11
      Calendar.DateAppearance.WeekNumbers.Font.Name = 'Tahoma'
      Calendar.DateAppearance.WeekNumbers.Font.Style = []
      Calendar.DateAppearance.WeekNumbers.Fill.Color = 15984090
      Calendar.DateAppearance.WeekNumbers.Fill.ColorTo = 15785680
      Calendar.DateAppearance.WeekNumbers.Fill.ColorMirror = clNone
      Calendar.DateAppearance.WeekNumbers.Fill.ColorMirrorTo = clNone
      Calendar.DateAppearance.WeekNumbers.Fill.GradientType = gtVertical
      Calendar.DateAppearance.WeekNumbers.Fill.GradientMirrorType = gtSolid
      Calendar.DateAppearance.WeekNumbers.Fill.BorderColor = clNone
      Calendar.DateAppearance.WeekNumbers.Fill.Rounding = 0
      Calendar.DateAppearance.WeekNumbers.Fill.ShadowOffset = 0
      Calendar.DateAppearance.WeekNumbers.Fill.Glow = gmNone
      Calendar.DateAppearance.DisabledDateFont.Charset = DEFAULT_CHARSET
      Calendar.DateAppearance.DisabledDateFont.Color = clGray
      Calendar.DateAppearance.DisabledDateFont.Height = -11
      Calendar.DateAppearance.DisabledDateFont.Name = 'Tahoma'
      Calendar.DateAppearance.DisabledDateFont.Style = []
      Calendar.DateAppearance.DisabledDateFill.Color = 15921906
      Calendar.DateAppearance.DisabledDateFill.ColorTo = 11974326
      Calendar.DateAppearance.DisabledDateFill.ColorMirror = 11974326
      Calendar.DateAppearance.DisabledDateFill.ColorMirrorTo = 15921906
      Calendar.DateAppearance.DisabledDateFill.GradientType = gtVertical
      Calendar.DateAppearance.DisabledDateFill.GradientMirrorType = gtVertical
      Calendar.DateAppearance.DisabledDateFill.BorderColor = clNone
      Calendar.DateAppearance.DisabledDateFill.Rounding = 0
      Calendar.DateAppearance.DisabledDateFill.ShadowOffset = 0
      Calendar.DateAppearance.DisabledDateFill.Glow = gmNone
      Calendar.DateAppearance.DateBeforeFill.Color = clNone
      Calendar.DateAppearance.DateBeforeFill.ColorMirror = clNone
      Calendar.DateAppearance.DateBeforeFill.ColorMirrorTo = clNone
      Calendar.DateAppearance.DateBeforeFill.GradientType = gtVertical
      Calendar.DateAppearance.DateBeforeFill.GradientMirrorType = gtSolid
      Calendar.DateAppearance.DateBeforeFill.BorderColor = clNone
      Calendar.DateAppearance.DateBeforeFill.Rounding = 0
      Calendar.DateAppearance.DateBeforeFill.ShadowOffset = 0
      Calendar.DateAppearance.DateBeforeFill.Glow = gmNone
      Calendar.DateAppearance.DateAfterFill.Color = clNone
      Calendar.DateAppearance.DateAfterFill.ColorMirror = clNone
      Calendar.DateAppearance.DateAfterFill.ColorMirrorTo = clNone
      Calendar.DateAppearance.DateAfterFill.GradientType = gtVertical
      Calendar.DateAppearance.DateAfterFill.GradientMirrorType = gtSolid
      Calendar.DateAppearance.DateAfterFill.BorderColor = clNone
      Calendar.DateAppearance.DateAfterFill.Rounding = 0
      Calendar.DateAppearance.DateAfterFill.ShadowOffset = 0
      Calendar.DateAppearance.DateAfterFill.Glow = gmNone
      Calendar.DateAppearance.DateBeforeFont.Charset = DEFAULT_CHARSET
      Calendar.DateAppearance.DateBeforeFont.Color = clSilver
      Calendar.DateAppearance.DateBeforeFont.Height = -11
      Calendar.DateAppearance.DateBeforeFont.Name = 'Tahoma'
      Calendar.DateAppearance.DateBeforeFont.Style = []
      Calendar.DateAppearance.DateAfterFont.Charset = DEFAULT_CHARSET
      Calendar.DateAppearance.DateAfterFont.Color = clSilver
      Calendar.DateAppearance.DateAfterFont.Height = -11
      Calendar.DateAppearance.DateAfterFont.Name = 'Tahoma'
      Calendar.DateAppearance.DateAfterFont.Style = []
      Calendar.StatusAppearance.Fill.Color = clRed
      Calendar.StatusAppearance.Fill.ColorMirror = clNone
      Calendar.StatusAppearance.Fill.ColorMirrorTo = clNone
      Calendar.StatusAppearance.Fill.GradientType = gtSolid
      Calendar.StatusAppearance.Fill.GradientMirrorType = gtSolid
      Calendar.StatusAppearance.Fill.BorderColor = clGray
      Calendar.StatusAppearance.Fill.Rounding = 0
      Calendar.StatusAppearance.Fill.ShadowOffset = 0
      Calendar.StatusAppearance.Fill.Glow = gmNone
      Calendar.StatusAppearance.Font.Charset = DEFAULT_CHARSET
      Calendar.StatusAppearance.Font.Color = clWhite
      Calendar.StatusAppearance.Font.Height = -11
      Calendar.StatusAppearance.Font.Name = 'Tahoma'
      Calendar.StatusAppearance.Font.Style = []
      Calendar.Footer.Fill.Color = 16773091
      Calendar.Footer.Fill.ColorTo = 16765615
      Calendar.Footer.Fill.ColorMirror = clNone
      Calendar.Footer.Fill.ColorMirrorTo = clNone
      Calendar.Footer.Fill.GradientType = gtVertical
      Calendar.Footer.Fill.GradientMirrorType = gtSolid
      Calendar.Footer.Fill.BorderColor = 16765615
      Calendar.Footer.Fill.Rounding = 0
      Calendar.Footer.Fill.ShadowOffset = 0
      Calendar.Footer.Fill.Glow = gmNone
      Calendar.Footer.Font.Charset = DEFAULT_CHARSET
      Calendar.Footer.Font.Color = 7485192
      Calendar.Footer.Font.Height = -11
      Calendar.Footer.Font.Name = 'Tahoma'
      Calendar.Footer.Font.Style = []
      Calendar.Header.Fill.Color = 16773091
      Calendar.Header.Fill.ColorTo = 16765615
      Calendar.Header.Fill.ColorMirror = clNone
      Calendar.Header.Fill.ColorMirrorTo = clNone
      Calendar.Header.Fill.GradientType = gtVertical
      Calendar.Header.Fill.GradientMirrorType = gtSolid
      Calendar.Header.Fill.BorderColor = 16765615
      Calendar.Header.Fill.Rounding = 0
      Calendar.Header.Fill.ShadowOffset = 0
      Calendar.Header.Fill.Glow = gmNone
      Calendar.Header.ArrowColor = 7485192
      Calendar.Header.Font.Charset = DEFAULT_CHARSET
      Calendar.Header.Font.Color = 7485192
      Calendar.Header.Font.Height = -11
      Calendar.Header.Font.Name = 'Tahoma'
      Calendar.Header.Font.Style = []
      Calendar.Width = 257
      Calendar.Height = 249
      Calendar.ShowHint = False
      Date = 44358.000000000000000000
    end
    object preview_btn: TNxButton
      Left = 24
      Top = 158
      Width = 97
      Height = 30
      Cursor = crHandPoint
      Caption = '&Preview   '
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = 7485192
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000074120000741200000000000000000000FFFFFFFFFFFF
        FFFFFFE7E6E5646058403B313F3A303F3A303F3A303F3A303F3A303F3A303F3A
        30555048CECDCAFFFFFFFFFFFFFFFFFFFFFFFFE8E8E7D5D4D2D5D4D2D5D4D2D5
        D4D2D5D4D2D5D4D2D5D4D2D4D3D1A9A7A2443F35646058FFFFFFFFFFFFDDDCDA
        716E665F5A535F5A535F5A535F5A535F5A535F5A535F5A535E5C5484807AF3F3
        F293918B555247FFFFFFFFFFFF68645C403B317E7B748A86808A86808A86808A
        86808A86808A86806A645D3F3A30999791AEACA7555247FFFFFFFFFFFF524F46
        A5A29EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE68645D8480
        7BAEACA7555247FFFFFFFFFFFF524F46C3C1BEC3C1BE84807A84807A84807A84
        807A84807A84807AE3E2E187837C84807AAEACA7555247FFFFFFFFFFFF524F46
        C3C1BEF9F9F9F0F0EFF0F0EFF0F0EFF0F0EFF0F0EFF0F0EFFDFDFD87837C8480
        7AAEACA7555247FFFFFFFFFFFF524F46C3C1BEC9C7C593908A93908A93908A93
        908A93908A93908AE5E4E387837C84807AAEACA7555247FFFFFFFFFFFF524F46
        C3C1BEE7E6E5CCCAC8CCCAC8CCCAC8CCCAC8CCCAC8CCCAC8F4F3F387837C8480
        7AAEACA7555247FFFFFFFFFFFF524F46C3C1BEDCDBDABAB8B4BAB8B4BAB8B4BA
        B8B4BAB8B4BAB8B4EEEDEC87837C84807AAEACA7555247FFFFFFFFFFFF524F46
        C3C1BED2D1CEA5A29EA5A29EA5A29EA5A29EA5A29EA5A29EE9E9E787837C8480
        7AAEACA7555247FFFFFFFFFFFF524F46C3C1BEF0F0EFDEDDDBDEDDDBDEDDDBDE
        DDDBDEDDDBDEDDDBF8F8F887837C84807AAEACA755534AFFFFFFFFFFFF524F46
        C3C1BEFFFFFFFFFFFFDAD9D784807A84807A84807A84807AE3E2E187837C8480
        7AAEACA76B675EFFFFFFFFFFFF524F46ADABA7FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF706B6584807ACAC8C5DDDCDAFFFFFFFFFFFF5F5A53
        454239908E889C99949C99949C99949C99949C99949C99947D79733F3A30908D
        87FFFFFFFFFFFFFFFFFFFFFFFFC7C6C3504B423F3A303F3A303F3A303F3A303F
        3A303F3A303F3A303F3A305E5C54E6E6E4FFFFFFFFFFFFFFFFFF}
      ParentColor = False
      ParentFont = False
      TabOrder = 2
      Transparent = True
      OnClick = preview_btnClick
    end
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 251
      Height = 32
      Align = alTop
      BevelOuter = bvNone
      Color = clHighlight
      Ctl3D = False
      ParentBackground = False
      ParentCtl3D = False
      TabOrder = 3
      object Label3: TLabel
        Left = 12
        Top = 8
        Width = 140
        Height = 14
        Caption = 'Latebillhistory Records'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object close_btn: TNxButton
      Left = 127
      Top = 158
      Width = 97
      Height = 30
      Cursor = crHandPoint
      Caption = 'Close'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = 7485192
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E3F2FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF1114957979C0FFFFFFFFFFFFFFFFFFFFFFFF7676BE7676BEFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7676C0112CBF121CA27676C0FF
        FFFFFFFFFF7676C0121DA2111DA47374BEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        7879C3131EA61432C31432C2121EA57576C17576C1121EA51432C21432C3121F
        A67576C1FFFFFFFFFFFFFFFFFFFFFFFF787AC63C44B41E40CB1C3ECB1C3ECB1C
        3DCA1C3DCA1C3ECB1C3ECB677CDB3A41B37577C5FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF7577C7667FDD2246CF2045CF2045CF2045CF2045CF2347D03942B6777A
        C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF313EB9264DD3244DD424
        4DD4244DD4244DD4254DD3777ACAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF182BB72953D82954D92954D92954D92954D92953D87478CBFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7478CD2D5BDC2D5CDD2D5CDD2F
        5EDD2F5DDD2D5CDD2D5CDD192DB97478CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        7378CF1A31BF3163E23163E23365E27495EA7193EA3364E23163E23162E11A2F
        BE7378CFFFFFFFFFFFFFFFFFFFDDDEF4212CB96F94EC356AE6376CE67699ED3B
        4AC54050C87397ED376BE6356AE67397ED1E29B7E3E4F6FFFFFFFFFFFFFFFFFF
        FFFFFF7076D38DACF33C4CCA767BD5FFFFFFFFFFFF7379D44354CD4354CD7076
        D3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFE212EC0767CD6FFFFFFFF
        FFFFFFFFFFFFFFFF767CD6767CD6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFDDDEF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ParentColor = False
      ParentFont = False
      TabOrder = 4
      Transparent = True
      OnClick = close_btnClick
    end
  end
  object AdvPanelStyler1: TAdvPanelStyler
    Tag = 0
    Settings.AnchorHint = False
    Settings.BevelInner = bvNone
    Settings.BevelOuter = bvNone
    Settings.BevelWidth = 1
    Settings.BorderColor = 16637593
    Settings.BorderShadow = False
    Settings.BorderStyle = bsNone
    Settings.BorderWidth = 0
    Settings.CanMove = False
    Settings.CanSize = False
    Settings.Caption.Color = 16644337
    Settings.Caption.ColorTo = 16576469
    Settings.Caption.Font.Charset = DEFAULT_CHARSET
    Settings.Caption.Font.Color = clBlack
    Settings.Caption.Font.Height = -11
    Settings.Caption.Font.Name = 'Tahoma'
    Settings.Caption.Font.Style = []
    Settings.Caption.GradientDirection = gdVertical
    Settings.Caption.Indent = 2
    Settings.Caption.ShadeLight = 255
    Settings.Collaps = False
    Settings.CollapsColor = clNone
    Settings.CollapsDelay = 0
    Settings.CollapsSteps = 0
    Settings.Color = 16644337
    Settings.ColorTo = 16576469
    Settings.ColorMirror = clNone
    Settings.ColorMirrorTo = clNone
    Settings.Cursor = crDefault
    Settings.Font.Charset = DEFAULT_CHARSET
    Settings.Font.Color = 7485192
    Settings.Font.Height = -11
    Settings.Font.Name = 'Tahoma'
    Settings.Font.Style = []
    Settings.FixedTop = False
    Settings.FixedLeft = False
    Settings.FixedHeight = False
    Settings.FixedWidth = False
    Settings.Height = 120
    Settings.Hover = False
    Settings.HoverColor = clNone
    Settings.HoverFontColor = clNone
    Settings.Indent = 0
    Settings.ShadowColor = clBlack
    Settings.ShadowOffset = 0
    Settings.ShowHint = False
    Settings.ShowMoveCursor = False
    Settings.StatusBar.BorderColor = 16637593
    Settings.StatusBar.BorderStyle = bsSingle
    Settings.StatusBar.Font.Charset = DEFAULT_CHARSET
    Settings.StatusBar.Font.Color = 7485192
    Settings.StatusBar.Font.Height = -11
    Settings.StatusBar.Font.Name = 'Tahoma'
    Settings.StatusBar.Font.Style = []
    Settings.StatusBar.Color = 16644337
    Settings.StatusBar.ColorTo = 16576469
    Settings.StatusBar.GradientDirection = gdVertical
    Settings.TextVAlign = tvaTop
    Settings.TopIndent = 0
    Settings.URLColor = clBlue
    Settings.Width = 0
    Style = psWindowsVista
    Left = 65528
    Top = 392
  end
  object report_frx: TfrxReport
    Version = '5.3.16'
    DotMatrixReport = False
    EngineOptions.DoublePass = True
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44358.385255671300000000
    ReportOptions.LastChange = 44358.385255671300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 219
    Top = 35
    Datasets = <
      item
        DataSet = latebillhistory_frxDS
        DataSetName = 'latebillhistory'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 7.000000000000000000
      RightMargin = 7.000000000000000000
      TopMargin = 7.000000000000000000
      BottomMargin = 7.000000000000000000
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 120.944960000000000000
        Top = 18.897650000000000000
        Width = 1069.606990000000000000
        object Memo1: TfrxMemoView
          Align = baLeft
          Top = 27.118120000000000000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'LIST OF LATEBILLHISTORY')
        end
        object Memo2: TfrxMemoView
          Align = baLeft
          Top = 47.795300000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Posted Date Covered:')
        end
        object Memo3: TfrxMemoView
          Align = baLeft
          Top = 3.779530000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Page')
        end
        object SysMemo1: TfrxSysMemoView
          Align = baLeft
          Left = 37.795300000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[PAGE#]')
        end
        object Memo4: TfrxMemoView
          Left = 3.559060000000000000
          Top = 80.708720000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Date Posted')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 91.606370000000000000
          Top = 80.708720000000000000
          Width = 45.354360000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Bill Month')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 140.417440000000000000
          Top = 80.708720000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Account No.')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 231.905690000000000000
          Top = 80.708720000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Name')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 525.393940000000000000
          Top = 80.590600000000000000
          Width = 90.708720000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Prev. Reading Date')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 618.661720000000000000
          Top = 79.811070000000000000
          Width = 90.708720000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Pres. Reading Date')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 712.149970000000000000
          Top = 81.370130000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Prev. KWhr')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 792.756340000000000000
          Top = 80.590600000000000000
          Width = 83.149660000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Pres. KWhr')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 892.244590000000000000
          Top = 80.590600000000000000
          Width = 60.472480000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'KWhr')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 970.016390000000000000
          Top = 80.590600000000000000
          Width = 98.267780000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Amount Billed')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 74.811070000000000000
          Width = 1292.599260000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line2: TfrxLineView
          Top = 119.385900000000000000
          Width = 1292.599260000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo15: TfrxMemoView
          Left = 476.945270000000000000
          Top = 79.370130000000000000
          Width = 45.354360000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Cons. Type')
          ParentFont = False
        end
        object latebillhistorydateperiod: TfrxMemoView
          Align = baLeft
          Left = 139.842610000000000000
          Top = 48.133890000000000000
          Width = 283.464750000000000000
          Height = 18.897650000000000000
          DataField = 'dateperiod'
          DataSet = latebillhistory_frxDS
          DataSetName = 'latebillhistory'
          Memo.UTF8W = (
            '[latebillhistory."dateperiod"]')
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Fill.BackColor = clGradientInactiveCaption
        Height = 26.456710000000000000
        Top = 200.315090000000000000
        Width = 1069.606990000000000000
        Condition = 'latebillhistory."BillMonth"'
        KeepTogether = True
        object Memo14: TfrxMemoView
          Left = 7.559060000000000000
          Top = 3.779530000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Billing Month :')
          ParentFont = False
        end
        object latebillhistorybillingmonth: TfrxMemoView
          Left = 94.488250000000000000
          Top = 3.779530000000000000
          Width = 298.582870000000000000
          Height = 18.897650000000000000
          DataField = 'billingmonth'
          DataSet = latebillhistory_frxDS
          DataSetName = 'latebillhistory'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[latebillhistory."billingmonth"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 26.456692910000000000
        Top = 249.448980000000000000
        Width = 1069.606990000000000000
        DataSet = latebillhistory_frxDS
        DataSetName = 'latebillhistory'
        RowCount = 0
        Stretched = True
        object latebillhistoryBillDate1: TfrxMemoView
          Left = 3.559060000000000000
          Top = 3.779530000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'BillDate'
          DataSet = latebillhistory_frxDS
          DataSetName = 'latebillhistory'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[latebillhistory."BillDate"]')
          ParentFont = False
        end
        object latebillhistoryBillMonth2: TfrxMemoView
          Left = 92.606370000000000000
          Top = 3.779530000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          DataField = 'BillMonth'
          DataSet = latebillhistory_frxDS
          DataSetName = 'latebillhistory'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[latebillhistory."BillMonth"]')
          ParentFont = False
        end
        object latebillhistoryAccountNumber1: TfrxMemoView
          Left = 144.196970000000000000
          Top = 3.779530000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'AccountNumber'
          DataSet = latebillhistory_frxDS
          DataSetName = 'latebillhistory'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[latebillhistory."AccountNumber"]')
          ParentFont = False
        end
        object latebillhistoryName1: TfrxMemoView
          Left = 234.700990000000000000
          Top = 3.779530000000000000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          DataField = 'Name'
          DataSet = latebillhistory_frxDS
          DataSetName = 'latebillhistory'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[latebillhistory."Name"]')
          ParentFont = False
        end
        object latebillhistoryWRateCode1: TfrxMemoView
          Left = 475.724800000000000000
          Top = 3.779530000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          DataField = 'WRateCode'
          DataSet = latebillhistory_frxDS
          DataSetName = 'latebillhistory'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[latebillhistory."WRateCode"]')
          ParentFont = False
        end
        object latebillhistoryPreviousReadingDate1: TfrxMemoView
          Left = 528.094930000000000000
          Top = 3.779530000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataField = 'PreviousReadingDate'
          DataSet = latebillhistory_frxDS
          DataSetName = 'latebillhistory'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[latebillhistory."PreviousReadingDate"]')
          ParentFont = False
        end
        object latebillhistoryPresentReadingDate1: TfrxMemoView
          Left = 620.921770000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'PresentReadingDate'
          DataSet = latebillhistory_frxDS
          DataSetName = 'latebillhistory'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[latebillhistory."PresentReadingDate"]')
          ParentFont = False
        end
        object latebillhistoryPreviousReadingKWH1: TfrxMemoView
          Left = 705.630490000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'PreviousReadingKWH'
          DataSet = latebillhistory_frxDS
          DataSetName = 'latebillhistory'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[latebillhistory."PreviousReadingKWH"]')
          ParentFont = False
        end
        object latebillhistoryPresentReadingKWH1: TfrxMemoView
          Left = 794.118740000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'PresentReadingKWH'
          DataSet = latebillhistory_frxDS
          DataSetName = 'latebillhistory'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[latebillhistory."PresentReadingKWH"]')
          ParentFont = False
        end
        object latebillhistoryKilowattHour1: TfrxMemoView
          Left = 878.827460000000000000
          Top = 3.779530000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'KilowattHour'
          DataSet = latebillhistory_frxDS
          DataSetName = 'latebillhistory'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[latebillhistory."KilowattHour"]')
          ParentFont = False
        end
        object latebillhistoryTotalBill1: TfrxMemoView
          Left = 960.095240000000000000
          Top = 3.779530000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'TotalBill'
          DataSet = latebillhistory_frxDS
          DataSetName = 'latebillhistory'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[latebillhistory."TotalBill"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 34.015770000000000000
        Top = 298.582870000000000000
        Width = 1069.606990000000000000
        object SysMemo2: TfrxSysMemoView
          Left = 963.315710000000000000
          Top = 6.779530000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<latebillhistory."TotalBill">,MasterData1)]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Width = 1292.599260000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo16: TfrxMemoView
          Left = 795.118740000000000000
          Top = 7.559060000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'TOTAL ')
          ParentFont = False
        end
        object SysMemo4: TfrxSysMemoView
          Left = 872.047930000000000000
          Top = 7.559060000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<latebillhistory."KilowattHour">,MasterData1)]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 34.015770000000000000
        Top = 393.071120000000000000
        Width = 1069.606990000000000000
        object SysMemo3: TfrxSysMemoView
          Left = 959.315710000000000000
          Top = 5.559060000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<latebillhistory."TotalBill">,MasterData1)]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 740.984850000000000000
          Top = 6.338590000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'GRAND TOTAL ')
          ParentFont = False
        end
        object SysMemo5: TfrxSysMemoView
          Left = 871.268400000000000000
          Top = 7.000000000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<latebillhistory."KilowattHour">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object latebillhistoryQ: TMyQuery
    Connection = BillingData.MyConnection1
    SQL.Strings = (
      'Select '
      '  DATE_FORMAT(STR_TO_DATE(concat('#39'20'#39','
      '                                 SUBSTRING(l.billmonth,3,2),'#39','#39','
      '                                 SUBSTRING(l.billmonth,1,2),'#39','#39','
      
        '                                 '#39'1'#39') , "%Y,%m,%d"),"%M, %Y") as' +
        ' billingmonth,'
      '  l.*,'
      
        '  concat( :datefrom,'#39' to '#39', :dateto) as dateperiod from latebill' +
        'history l where l.billdate between :datefrom and :dateto'
      'order by l.billmonth,l.billdate,l.accountnumber')
    Left = 168
    Top = 32
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'datefrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'dateto'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'datefrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'dateto'
        Value = nil
      end>
    object latebillhistoryQentry: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'entry'
      Origin = 'l.entry'
    end
    object latebillhistoryQCode: TFloatField
      FieldName = 'Code'
      Origin = 'l.Code'
    end
    object latebillhistoryQArea: TStringField
      FieldName = 'Area'
      Origin = 'l.Area'
      FixedChar = True
      Size = 3
    end
    object latebillhistoryQBook: TStringField
      FieldName = 'Book'
      Origin = 'l.Book'
      FixedChar = True
      Size = 3
    end
    object latebillhistoryQSequence: TStringField
      FieldName = 'Sequence'
      Origin = 'l.Sequence'
      Size = 4
    end
    object latebillhistoryQAccountNumber: TStringField
      FieldName = 'AccountNumber'
      Origin = 'l.AccountNumber'
      Size = 10
    end
    object latebillhistoryQName: TStringField
      FieldName = 'Name'
      Origin = 'l.Name'
      Size = 50
    end
    object latebillhistoryQAddress: TStringField
      FieldName = 'Address'
      Origin = 'l.Address'
      Size = 30
    end
    object latebillhistoryQRateCode: TStringField
      FieldName = 'RateCode'
      Origin = 'l.RateCode'
      FixedChar = True
      Size = 1
    end
    object latebillhistoryQSerial: TStringField
      FieldName = 'Serial'
      Origin = 'l.Serial'
    end
    object latebillhistoryQMultiplier: TFloatField
      FieldName = 'Multiplier'
      Origin = 'l.Multiplier'
    end
    object latebillhistoryQPreviousReadingDate: TDateField
      FieldName = 'PreviousReadingDate'
      Origin = 'l.PreviousReadingDate'
    end
    object latebillhistoryQPresentReadingDate: TDateField
      FieldName = 'PresentReadingDate'
      Origin = 'l.PresentReadingDate'
    end
    object latebillhistoryQPreviousReadingKWH: TFloatField
      FieldName = 'PreviousReadingKWH'
      Origin = 'l.PreviousReadingKWH'
    end
    object latebillhistoryQPresentReadingKWH: TFloatField
      FieldName = 'PresentReadingKWH'
      Origin = 'l.PresentReadingKWH'
    end
    object latebillhistoryQDiff: TFloatField
      FieldName = 'Diff'
      Origin = 'l.Diff'
    end
    object latebillhistoryQDemand: TFloatField
      FieldName = 'Demand'
      Origin = 'l.Demand'
    end
    object latebillhistoryQFlatRateWattage: TFloatField
      FieldName = 'FlatRateWattage'
      Origin = 'l.FlatRateWattage'
    end
    object latebillhistoryQFeedBackCode: TStringField
      FieldName = 'FeedBackCode'
      Origin = 'l.FeedBackCode'
      FixedChar = True
      Size = 2
    end
    object latebillhistoryQCM: TStringField
      FieldName = 'CM'
      Origin = 'l.CM'
      FixedChar = True
      Size = 1
    end
    object latebillhistoryQCMMultiplier: TFloatField
      FieldName = 'CMMultiplier'
      Origin = 'l.CMMultiplier'
    end
    object latebillhistoryQCMPreviousReadingKWH: TFloatField
      FieldName = 'CMPreviousReadingKWH'
      Origin = 'l.CMPreviousReadingKWH'
    end
    object latebillhistoryQCMPresentReadingKWH: TFloatField
      FieldName = 'CMPresentReadingKWH'
      Origin = 'l.CMPresentReadingKWH'
    end
    object latebillhistoryQCMKilowattHour: TFloatField
      FieldName = 'CMKilowattHour'
      Origin = 'l.CMKilowattHour'
    end
    object latebillhistoryQCMDemand: TFloatField
      FieldName = 'CMDemand'
      Origin = 'l.CMDemand'
    end
    object latebillhistoryQKilowattHour: TFloatField
      FieldName = 'KilowattHour'
      Origin = 'l.KilowattHour'
    end
    object latebillhistoryQKilowattUsed: TFloatField
      FieldName = 'KilowattUsed'
      Origin = 'l.KilowattUsed'
    end
    object latebillhistoryQGenSysCharge: TFloatField
      FieldName = 'GenSysCharge'
      Origin = 'l.GenSysCharge'
    end
    object latebillhistoryQHostCommCharge: TFloatField
      FieldName = 'HostCommCharge'
      Origin = 'l.HostCommCharge'
    end
    object latebillhistoryQForexCharge: TFloatField
      FieldName = 'ForexCharge'
      Origin = 'l.ForexCharge'
    end
    object latebillhistoryQTCDemandCharge: TFloatField
      FieldName = 'TCDemandCharge'
      Origin = 'l.TCDemandCharge'
    end
    object latebillhistoryQTCTransSystemCharge: TFloatField
      FieldName = 'TCTransSystemCharge'
      Origin = 'l.TCTransSystemCharge'
    end
    object latebillhistoryQSystemLossCharge: TFloatField
      FieldName = 'SystemLossCharge'
      Origin = 'l.SystemLossCharge'
    end
    object latebillhistoryQDCDemandCharge: TFloatField
      FieldName = 'DCDemandCharge'
      Origin = 'l.DCDemandCharge'
    end
    object latebillhistoryQDCDistributionCharge: TFloatField
      FieldName = 'DCDistributionCharge'
      Origin = 'l.DCDistributionCharge'
    end
    object latebillhistoryQSCRetCustCharge: TFloatField
      FieldName = 'SCRetCustCharge'
      Origin = 'l.SCRetCustCharge'
    end
    object latebillhistoryQSCSupplySysCharge: TFloatField
      FieldName = 'SCSupplySysCharge'
      Origin = 'l.SCSupplySysCharge'
    end
    object latebillhistoryQMCRetailCustCharge: TFloatField
      FieldName = 'MCRetailCustCharge'
      Origin = 'l.MCRetailCustCharge'
    end
    object latebillhistoryQMCSystemCharge: TFloatField
      FieldName = 'MCSystemCharge'
      Origin = 'l.MCSystemCharge'
    end
    object latebillhistoryQUCNPCStrandedDebts: TFloatField
      FieldName = 'UCNPCStrandedDebts'
      Origin = 'l.UCNPCStrandedDebts'
    end
    object latebillhistoryQUCNPCStrandedContCost: TFloatField
      FieldName = 'UCNPCStrandedContCost'
      Origin = 'l.UCNPCStrandedContCost'
    end
    object latebillhistoryQUCDUStrandedContCost: TFloatField
      FieldName = 'UCDUStrandedContCost'
      Origin = 'l.UCDUStrandedContCost'
    end
    object latebillhistoryQUCME: TFloatField
      FieldName = 'UCME'
      Origin = 'l.UCME'
    end
    object latebillhistoryQUCEqTaxesAndRoyalties: TFloatField
      FieldName = 'UCEqTaxesAndRoyalties'
      Origin = 'l.UCEqTaxesAndRoyalties'
    end
    object latebillhistoryQUCEC: TFloatField
      FieldName = 'UCEC'
      Origin = 'l.UCEC'
    end
    object latebillhistoryQUCCrossSubRemoval: TFloatField
      FieldName = 'UCCrossSubRemoval'
      Origin = 'l.UCCrossSubRemoval'
    end
    object latebillhistoryQICCrossSubsidyCharge: TFloatField
      FieldName = 'ICCrossSubsidyCharge'
      Origin = 'l.ICCrossSubsidyCharge'
    end
    object latebillhistoryQPowerActRateRed: TFloatField
      FieldName = 'PowerActRateRed'
      Origin = 'l.PowerActRateRed'
    end
    object latebillhistoryQLifelineDiscSubs: TFloatField
      FieldName = 'LifelineDiscSubs'
      Origin = 'l.LifelineDiscSubs'
    end
    object latebillhistoryQLoanCondo: TFloatField
      FieldName = 'LoanCondo'
      Origin = 'l.LoanCondo'
    end
    object latebillhistoryQgram: TFloatField
      FieldName = 'gram'
      Origin = 'l.gram'
    end
    object latebillhistoryQTransformerRental: TFloatField
      FieldName = 'TransformerRental'
      Origin = 'l.TransformerRental'
    end
    object latebillhistoryQOCCode1: TStringField
      FieldName = 'OCCode1'
      Origin = 'l.OCCode1'
      Size = 10
    end
    object latebillhistoryQOCAmount1: TFloatField
      FieldName = 'OCAmount1'
      Origin = 'l.OCAmount1'
    end
    object latebillhistoryQOCMo1: TFloatField
      FieldName = 'OCMo1'
      Origin = 'l.OCMo1'
    end
    object latebillhistoryQOCTotal1: TFloatField
      FieldName = 'OCTotal1'
      Origin = 'l.OCTotal1'
    end
    object latebillhistoryQOCCode2: TStringField
      FieldName = 'OCCode2'
      Origin = 'l.OCCode2'
      Size = 10
    end
    object latebillhistoryQOCAmount2: TFloatField
      FieldName = 'OCAmount2'
      Origin = 'l.OCAmount2'
    end
    object latebillhistoryQOCMo2: TFloatField
      FieldName = 'OCMo2'
      Origin = 'l.OCMo2'
    end
    object latebillhistoryQOCTotal2: TFloatField
      FieldName = 'OCTotal2'
      Origin = 'l.OCTotal2'
    end
    object latebillhistoryQOCCode3: TStringField
      FieldName = 'OCCode3'
      Origin = 'l.OCCode3'
      Size = 10
    end
    object latebillhistoryQOCAmount3: TFloatField
      FieldName = 'OCAmount3'
      Origin = 'l.OCAmount3'
    end
    object latebillhistoryQOCMo3: TFloatField
      FieldName = 'OCMo3'
      Origin = 'l.OCMo3'
    end
    object latebillhistoryQOCTotal3: TFloatField
      FieldName = 'OCTotal3'
      Origin = 'l.OCTotal3'
    end
    object latebillhistoryQTotalBill: TFloatField
      FieldName = 'TotalBill'
      Origin = 'l.TotalBill'
    end
    object latebillhistoryQBillNumber: TStringField
      FieldName = 'BillNumber'
      Origin = 'l.BillNumber'
      Size = 15
    end
    object latebillhistoryQOEBRNumber: TStringField
      FieldName = 'OEBRNumber'
      Origin = 'l.OEBRNumber'
      Size = 10
    end
    object latebillhistoryQBillMonth: TStringField
      FieldName = 'BillMonth'
      Origin = 'l.BillMonth'
      Size = 4
    end
    object latebillhistoryQBillDate: TDateField
      FieldName = 'BillDate'
      Origin = 'l.BillDate'
    end
    object latebillhistoryQstatuscode: TStringField
      FieldName = 'statuscode'
      Origin = 'l.statuscode'
      FixedChar = True
      Size = 1
    end
    object latebillhistoryQLCCustMo: TFloatField
      FieldName = 'LCCustMo'
      Origin = 'l.LCCustMo'
    end
    object latebillhistoryQPrevYearAdjPowerCost: TFloatField
      FieldName = 'PrevYearAdjPowerCost'
      Origin = 'l.PrevYearAdjPowerCost'
    end
    object latebillhistoryQSysLossUnderRecov: TFloatField
      FieldName = 'SysLossUnderRecov'
      Origin = 'l.SysLossUnderRecov'
    end
    object latebillhistoryQVATDisc: TFloatField
      FieldName = 'VATDisc'
      Origin = 'l.VATDisc'
    end
    object latebillhistoryQVATDiscAmt: TFloatField
      FieldName = 'VATDiscAmt'
      Origin = 'l.VATDiscAmt'
    end
    object latebillhistoryQVATDistDiscAmt: TFloatField
      FieldName = 'VATDistDiscAmt'
      Origin = 'l.VATDistDiscAmt'
    end
    object latebillhistoryQVATGenCoDiscAmt: TFloatField
      FieldName = 'VATGenCoDiscAmt'
      Origin = 'l.VATGenCoDiscAmt'
    end
    object latebillhistoryQVATTransCoDiscAmt: TFloatField
      FieldName = 'VATTransCoDiscAmt'
      Origin = 'l.VATTransCoDiscAmt'
    end
    object latebillhistoryQVATSystemLossDiscAmt: TFloatField
      FieldName = 'VATSystemLossDiscAmt'
      Origin = 'l.VATSystemLossDiscAmt'
    end
    object latebillhistoryQVATDist: TFloatField
      FieldName = 'VATDist'
      Origin = 'l.VATDist'
    end
    object latebillhistoryQVATGenCO: TFloatField
      FieldName = 'VATGenCO'
      Origin = 'l.VATGenCO'
    end
    object latebillhistoryQVATTransCO: TFloatField
      FieldName = 'VATTransCO'
      Origin = 'l.VATTransCO'
    end
    object latebillhistoryQVATSystemLossGenCO: TFloatField
      FieldName = 'VATSystemLossGenCO'
      Origin = 'l.VATSystemLossGenCO'
    end
    object latebillhistoryQVATSystemLossTransCO: TFloatField
      FieldName = 'VATSystemLossTransCO'
      Origin = 'l.VATSystemLossTransCO'
    end
    object latebillhistoryQVATparec: TFloatField
      FieldName = 'VATparec'
      Origin = 'l.VATparec'
    end
    object latebillhistoryQVATmcc: TFloatField
      FieldName = 'VATmcc'
      Origin = 'l.VATmcc'
    end
    object latebillhistoryQVAT: TFloatField
      FieldName = 'VAT'
      Origin = 'l.VAT'
    end
    object latebillhistoryQAdjAmountBalance: TFloatField
      FieldName = 'AdjAmountBalance'
      Origin = 'l.AdjAmountBalance'
    end
    object latebillhistoryQAdjAmountApplied: TFloatField
      FieldName = 'AdjAmountApplied'
      Origin = 'l.AdjAmountApplied'
    end
    object latebillhistoryQReadTime: TStringField
      FieldName = 'ReadTime'
      Origin = 'l.ReadTime'
      Size = 10
    end
    object latebillhistoryQDiffBillPerKwhr: TFloatField
      FieldName = 'DiffBillPerKwhr'
      Origin = 'l.DiffBillPerKwhr'
    end
    object latebillhistoryQDiffBillPerKW: TFloatField
      FieldName = 'DiffBillPerKW'
      Origin = 'l.DiffBillPerKW'
    end
    object latebillhistoryQDiffBillPerCust: TFloatField
      FieldName = 'DiffBillPerCust'
      Origin = 'l.DiffBillPerCust'
    end
    object latebillhistoryQMCC: TFloatField
      FieldName = 'MCC'
      Origin = 'l.MCC'
    end
    object latebillhistoryQPKVROebrNumber: TStringField
      FieldName = 'PKVROebrNumber'
      Origin = 'l.PKVROebrNumber'
    end
    object latebillhistoryQPKVRBillMonth: TStringField
      FieldName = 'PKVRBillMonth'
      Origin = 'l.PKVRBillMonth'
      Size = 4
    end
    object latebillhistoryQPKVRAmount: TFloatField
      FieldName = 'PKVRAmount'
      Origin = 'l.PKVRAmount'
    end
    object latebillhistoryQTransSysAncRefund: TFloatField
      FieldName = 'TransSysAncRefund'
      Origin = 'l.TransSysAncRefund'
    end
    object latebillhistoryQTransDemAncRefund: TFloatField
      FieldName = 'TransDemAncRefund'
      Origin = 'l.TransDemAncRefund'
    end
    object latebillhistoryQVATTransAncRefund: TFloatField
      FieldName = 'VATTransAncRefund'
      Origin = 'l.VATTransAncRefund'
    end
    object latebillhistoryQSCDisc: TFloatField
      FieldName = 'SCDisc'
      Origin = 'l.SCDisc'
    end
    object latebillhistoryQWRateCode: TStringField
      FieldName = 'WRateCode'
      Origin = 'l.WRateCode'
      Size = 1
    end
    object latebillhistoryQSCAmt4Disc: TFloatField
      FieldName = 'SCAmt4Disc'
      Origin = 'l.SCAmt4Disc'
    end
    object latebillhistoryQcbook: TStringField
      FieldName = 'cbook'
      Origin = 'l.cbook'
      Size = 6
    end
    object latebillhistoryQRPTax: TFloatField
      FieldName = 'RPTax'
      Origin = 'l.RPTax'
    end
    object latebillhistoryQRateOrder: TStringField
      FieldName = 'RateOrder'
      Origin = 'l.RateOrder'
      Size = 6
    end
    object latebillhistoryQBTax: TFloatField
      FieldName = 'BTax'
      Origin = 'l.BTax'
    end
    object latebillhistoryQOtherGenRateAdj: TFloatField
      FieldName = 'OtherGenRateAdj'
      Origin = 'l.OtherGenRateAdj'
    end
    object latebillhistoryQOtherTransCostAdj: TFloatField
      FieldName = 'OtherTransCostAdj'
      Origin = 'l.OtherTransCostAdj'
    end
    object latebillhistoryQOtherTransDemandCostAdj: TFloatField
      FieldName = 'OtherTransDemandCostAdj'
      Origin = 'l.OtherTransDemandCostAdj'
    end
    object latebillhistoryQOtherSystemLossCostAdj: TFloatField
      FieldName = 'OtherSystemLossCostAdj'
      Origin = 'l.OtherSystemLossCostAdj'
    end
    object latebillhistoryQOtherLifelineRateCostAdj: TFloatField
      FieldName = 'OtherLifelineRateCostAdj'
      Origin = 'l.OtherLifelineRateCostAdj'
    end
    object latebillhistoryQOtherSeniorCitizenRateAdj: TFloatField
      FieldName = 'OtherSeniorCitizenRateAdj'
      Origin = 'l.OtherSeniorCitizenRateAdj'
    end
    object latebillhistoryQFitall: TFloatField
      FieldName = 'Fitall'
      Origin = 'l.Fitall'
    end
    object latebillhistoryQreferenceAtmNo: TStringField
      FieldName = 'referenceAtmNo'
      Origin = 'l.referenceAtmNo'
      Size = 16
    end
    object latebillhistoryQPARec: TFloatField
      FieldName = 'PARec'
      Origin = 'l.PARec'
    end
    object latebillhistoryQdateperiod: TStringField
      FieldName = 'dateperiod'
      Origin = 'dateperiod'
      Size = 4
    end
    object latebillhistoryQbillingmonth: TStringField
      FieldName = 'billingmonth'
      Size = 70
    end
  end
  object latebillhistory_frxDS: TfrxDBDataset
    UserName = 'latebillhistory'
    CloseDataSource = False
    FieldAliases.Strings = (
      'entry=entry'
      'Code=Code'
      'Area=Area'
      'Book=Book'
      'Sequence=Sequence'
      'AccountNumber=AccountNumber'
      'Name=Name'
      'Address=Address'
      'RateCode=RateCode'
      'Serial=Serial'
      'Multiplier=Multiplier'
      'PreviousReadingDate=PreviousReadingDate'
      'PresentReadingDate=PresentReadingDate'
      'PreviousReadingKWH=PreviousReadingKWH'
      'PresentReadingKWH=PresentReadingKWH'
      'Diff=Diff'
      'Demand=Demand'
      'FlatRateWattage=FlatRateWattage'
      'FeedBackCode=FeedBackCode'
      'CM=CM'
      'CMMultiplier=CMMultiplier'
      'CMPreviousReadingKWH=CMPreviousReadingKWH'
      'CMPresentReadingKWH=CMPresentReadingKWH'
      'CMKilowattHour=CMKilowattHour'
      'CMDemand=CMDemand'
      'KilowattHour=KilowattHour'
      'KilowattUsed=KilowattUsed'
      'GenSysCharge=GenSysCharge'
      'HostCommCharge=HostCommCharge'
      'ForexCharge=ForexCharge'
      'TCDemandCharge=TCDemandCharge'
      'TCTransSystemCharge=TCTransSystemCharge'
      'SystemLossCharge=SystemLossCharge'
      'DCDemandCharge=DCDemandCharge'
      'DCDistributionCharge=DCDistributionCharge'
      'SCRetCustCharge=SCRetCustCharge'
      'SCSupplySysCharge=SCSupplySysCharge'
      'MCRetailCustCharge=MCRetailCustCharge'
      'MCSystemCharge=MCSystemCharge'
      'UCNPCStrandedDebts=UCNPCStrandedDebts'
      'UCNPCStrandedContCost=UCNPCStrandedContCost'
      'UCDUStrandedContCost=UCDUStrandedContCost'
      'UCME=UCME'
      'UCEqTaxesAndRoyalties=UCEqTaxesAndRoyalties'
      'UCEC=UCEC'
      'UCCrossSubRemoval=UCCrossSubRemoval'
      'ICCrossSubsidyCharge=ICCrossSubsidyCharge'
      'PowerActRateRed=PowerActRateRed'
      'LifelineDiscSubs=LifelineDiscSubs'
      'LoanCondo=LoanCondo'
      'gram=gram'
      'TransformerRental=TransformerRental'
      'OCCode1=OCCode1'
      'OCAmount1=OCAmount1'
      'OCMo1=OCMo1'
      'OCTotal1=OCTotal1'
      'OCCode2=OCCode2'
      'OCAmount2=OCAmount2'
      'OCMo2=OCMo2'
      'OCTotal2=OCTotal2'
      'OCCode3=OCCode3'
      'OCAmount3=OCAmount3'
      'OCMo3=OCMo3'
      'OCTotal3=OCTotal3'
      'TotalBill=TotalBill'
      'BillNumber=BillNumber'
      'OEBRNumber=OEBRNumber'
      'BillMonth=BillMonth'
      'BillDate=BillDate'
      'statuscode=statuscode'
      'LCCustMo=LCCustMo'
      'PrevYearAdjPowerCost=PrevYearAdjPowerCost'
      'SysLossUnderRecov=SysLossUnderRecov'
      'VATDisc=VATDisc'
      'VATDiscAmt=VATDiscAmt'
      'VATDistDiscAmt=VATDistDiscAmt'
      'VATGenCoDiscAmt=VATGenCoDiscAmt'
      'VATTransCoDiscAmt=VATTransCoDiscAmt'
      'VATSystemLossDiscAmt=VATSystemLossDiscAmt'
      'VATDist=VATDist'
      'VATGenCO=VATGenCO'
      'VATTransCO=VATTransCO'
      'VATSystemLossGenCO=VATSystemLossGenCO'
      'VATSystemLossTransCO=VATSystemLossTransCO'
      'VATparec=VATparec'
      'VATmcc=VATmcc'
      'VAT=VAT'
      'AdjAmountBalance=AdjAmountBalance'
      'AdjAmountApplied=AdjAmountApplied'
      'ReadTime=ReadTime'
      'DiffBillPerKwhr=DiffBillPerKwhr'
      'DiffBillPerKW=DiffBillPerKW'
      'DiffBillPerCust=DiffBillPerCust'
      'MCC=MCC'
      'PKVROebrNumber=PKVROebrNumber'
      'PKVRBillMonth=PKVRBillMonth'
      'PKVRAmount=PKVRAmount'
      'TransSysAncRefund=TransSysAncRefund'
      'TransDemAncRefund=TransDemAncRefund'
      'VATTransAncRefund=VATTransAncRefund'
      'SCDisc=SCDisc'
      'WRateCode=WRateCode'
      'SCAmt4Disc=SCAmt4Disc'
      'cbook=cbook'
      'RPTax=RPTax'
      'RateOrder=RateOrder'
      'BTax=BTax'
      'OtherGenRateAdj=OtherGenRateAdj'
      'OtherTransCostAdj=OtherTransCostAdj'
      'OtherTransDemandCostAdj=OtherTransDemandCostAdj'
      'OtherSystemLossCostAdj=OtherSystemLossCostAdj'
      'OtherLifelineRateCostAdj=OtherLifelineRateCostAdj'
      'OtherSeniorCitizenRateAdj=OtherSeniorCitizenRateAdj'
      'Fitall=Fitall'
      'referenceAtmNo=referenceAtmNo'
      'PARec=PARec'
      'dateperiod=dateperiod'
      'billingmonth=billingmonth')
    DataSet = latebillhistoryQ
    BCDToCurrency = False
    Left = 171
    Top = 75
  end
end
