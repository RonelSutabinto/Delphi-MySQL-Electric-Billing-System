object Form1: TForm1
  Left = 109
  Top = 94
  Width = 544
  Height = 339
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
    Width = 536
    Height = 257
    Align = alTop
    DataSource = BillingData.UnPBSource
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Area'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Book'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Date'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Name'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BillMonth'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Document'
        Title.Alignment = taCenter
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 448
    Top = 272
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
  end
end
