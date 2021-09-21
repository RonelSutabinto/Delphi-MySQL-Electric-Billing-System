object BillingPowerBillQueryForm: TBillingPowerBillQueryForm
  Left = 123
  Top = 56
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsDialog
  BorderWidth = 3
  Caption = 'Bill Printing Query'
  ClientHeight = 304
  ClientWidth = 337
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clNavy
  Font.Height = -19
  Font.Name = 'Abadi MT Condensed Light'
  Font.Style = [fsBold]
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 22
  object Label5: TLabel
    Left = 267
    Top = 142
    Width = 33
    Height = 19
    Caption = 'Area'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 337
    Height = 304
    Align = alClient
    BevelOuter = bvNone
    BorderStyle = bsSingle
    TabOrder = 0
    object Label3: TLabel
      Left = 179
      Top = 25
      Width = 127
      Height = 19
      Alignment = taCenter
      AutoSize = False
      Caption = 'Bills to Print'
      Color = clBtnShadow
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label1: TLabel
      Left = 26
      Top = 25
      Width = 127
      Height = 19
      Alignment = taCenter
      AutoSize = False
      Caption = 'OEBR Number'
      Color = clBtnShadow
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label2: TLabel
      Left = 26
      Top = 82
      Width = 127
      Height = 19
      Alignment = taCenter
      AutoSize = False
      Caption = 'Start Account'
      Color = clBtnShadow
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label6: TLabel
      Left = 179
      Top = 82
      Width = 127
      Height = 19
      Alignment = taCenter
      AutoSize = False
      Caption = 'Due Date'
      Color = clBtnShadow
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Bevel1: TBevel
      Left = 15
      Top = 16
      Width = 303
      Height = 123
    end
    object EditBillstoPrint: TEdit
      Left = 179
      Top = 45
      Width = 127
      Height = 27
      BevelKind = bkSoft
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object BitBtn1: TBitBtn
      Left = 28
      Top = 151
      Width = 126
      Height = 25
      Caption = 'Print'
      Default = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ModalResult = 1
      ParentFont = False
      TabOrder = 4
      OnClick = BitBtn1Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
    end
    object BitBtn2: TBitBtn
      Left = 182
      Top = 151
      Width = 125
      Height = 25
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = BitBtn2Click
      Kind = bkClose
    end
    object EditBillNumber: TEdit
      Left = 26
      Top = 45
      Width = 127
      Height = 27
      BevelKind = bkSoft
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object EditSequence: TEdit
      Left = 26
      Top = 102
      Width = 127
      Height = 27
      BevelKind = bkSoft
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnChange = EditSequenceChange
    end
    object DueDate: TMaskEdit
      Left = 179
      Top = 102
      Width = 126
      Height = 27
      BevelKind = bkSoft
      EditMask = '!99/99/00;1;_'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 8
      ParentFont = False
      TabOrder = 3
      Text = '  /  /  '
    end
    object DBGrid1: TDBGrid
      Left = 0
      Top = 184
      Width = 333
      Height = 116
      Align = alBottom
      DataSource = BillingData.BillSource
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 6
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clNavy
      TitleFont.Height = -15
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Area'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Book'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 28
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Sequence'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Seq'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 31
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AccountNumber'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Caption = 'Account #'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 56
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Name'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 158
          Visible = True
        end>
    end
  end
end
