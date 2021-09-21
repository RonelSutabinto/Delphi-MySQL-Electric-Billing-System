object Form1: TForm1
  Left = 114
  Top = 110
  Width = 620
  Height = 447
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 612
    Height = 185
    Align = alTop
    DataSource = BillingData.MasterSource
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Code'
        Visible = True
      end
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
        FieldName = 'Sequence'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AccountNumber'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Name'
        Width = 159
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OEBRNumber'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BillMonth'
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 0
    Top = 185
    Width = 612
    Height = 163
    Align = alTop
    DataSource = BillingData.ARSource
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Code'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Date'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Document'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BillMonth'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Reading'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'KilowattHour'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Debit'
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 24
    Top = 376
    Width = 75
    Height = 25
    Caption = 'Set Filter'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 120
    Top = 376
    Width = 75
    Height = 25
    Caption = 'Remove Filter'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 216
    Top = 376
    Width = 75
    Height = 25
    Caption = 'Find OEBR'
    TabOrder = 4
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 304
    Top = 376
    Width = 75
    Height = 25
    Caption = 'Fix Code'
    TabOrder = 5
    OnClick = Button4Click
  end
end
