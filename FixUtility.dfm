object FixUtilityForm: TFixUtilityForm
  Left = 19
  Top = 255
  Width = 750
  Height = 560
  Caption = 'Fix Utility'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Master: TTable
    DatabaseName = 'PAGSANJAN'
    TableName = 'Master.db'
    Left = 16
    Top = 8
  end
  object AR: TTable
    DatabaseName = 'PAGSANJAN'
    IndexName = 'doc'
    MasterFields = 'OEBRNumber'
    MasterSource = MasterSource
    TableName = 'ARLedger.db'
    Left = 56
    Top = 8
  end
  object MasterSource: TDataSource
    DataSet = Master
    Left = 16
    Top = 48
  end
  object ARSource: TDataSource
    DataSet = AR
    Left = 56
    Top = 48
  end
end
