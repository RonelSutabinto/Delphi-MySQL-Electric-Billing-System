object BillingData: TBillingData
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 513
  Width = 839
  object MasterSource: TDataSource
    DataSet = Master
    Left = 41
    Top = 56
  end
  object ARSource: TDataSource
    DataSet = AR
    Left = 144
    Top = 56
  end
  object CollectionSource: TDataSource
    DataSet = Collection
    Left = 248
    Top = 56
  end
  object AdjSource: TDataSource
    DataSet = Adj
    Left = 352
    Top = 56
  end
  object MRateSource: TDataSource
    DataSet = MRate
    Left = 41
    Top = 153
  end
  object VicinitySource: TDataSource
    DataSet = Vicinity
    Left = 144
    Top = 153
  end
  object FlatRate: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'select * from flatrate')
    FetchAll = False
    Left = 248
    Top = 104
    object FlatRateCode: TFloatField
      FieldName = 'Code'
    end
    object FlatRateUnitCode: TStringField
      FieldName = 'UnitCode'
      Size = 10
    end
    object FlatRateDescription: TStringField
      FieldName = 'Description'
      Size = 50
    end
    object FlatRatePieces: TFloatField
      FieldName = 'Pieces'
    end
    object FlatRateKilowattHourPerUnit: TCurrencyField
      FieldName = 'KilowattHourPerUnit'
    end
    object FlatRateTotalKilowattHour: TCurrencyField
      FieldName = 'TotalKilowattHour'
    end
  end
  object FlatRateSource: TDataSource
    DataSet = FlatRate
    Left = 248
    Top = 153
  end
  object FlatRateIndex: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'select * from FlatRateIndex')
    FetchAll = False
    Left = 352
    Top = 104
    object FlatRateIndexCode: TStringField
      FieldName = 'Code'
      Size = 10
    end
    object FlatRateIndexDescription: TStringField
      FieldName = 'Description'
      Size = 50
    end
    object FlatRateIndexKilowattHour: TCurrencyField
      FieldName = 'KilowattHour'
    end
  end
  object FlatRateIndexSource: TDataSource
    DataSet = FlatRateIndex
    Left = 352
    Top = 153
  end
  object Memo: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'select * from memo')
    FetchAll = False
    Left = 41
    Top = 201
    object MemoEntry: TAutoIncField
      FieldName = 'Entry'
      ReadOnly = True
    end
    object MemoDate: TDateField
      FieldName = 'Date'
    end
    object MemoCode: TFloatField
      FieldName = 'Code'
    end
    object MemoArea: TStringField
      FieldName = 'Area'
      Size = 3
    end
    object MemoBook: TStringField
      FieldName = 'Book'
      Size = 3
    end
    object MemoSequence: TStringField
      FieldName = 'Sequence'
      Size = 4
    end
    object MemoAccountNumber: TStringField
      FieldName = 'AccountNumber'
      Size = 10
    end
    object MemoName: TStringField
      FieldName = 'Name'
      Size = 50
    end
    object MemoParticular: TStringField
      FieldName = 'Particular'
      Size = 50
    end
    object MemoDebit: TCurrencyField
      FieldName = 'Debit'
    end
    object MemoCredit: TCurrencyField
      FieldName = 'Credit'
    end
    object MemoBillMonth: TStringField
      FieldName = 'BillMonth'
      Size = 4
    end
    object MemoPosted: TStringField
      FieldName = 'Posted'
      Size = 1
    end
  end
  object MemoSource: TDataSource
    DataSet = Memo
    Left = 41
    Top = 250
  end
  object DiscoSource: TDataSource
    DataSet = Disco
    Left = 144
    Top = 250
  end
  object ReconSource: TDataSource
    DataSet = Recon
    Left = 248
    Top = 250
  end
  object ChangeMeterSource: TDataSource
    DataSet = ChangeMeter
    Left = 352
    Top = 250
  end
  object Collector: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'select * from Collector')
    FetchAll = False
    Left = 248
    Top = 298
    object CollectorCollectorCode: TStringField
      FieldName = 'CollectorCode'
      Size = 10
    end
    object CollectorName: TStringField
      FieldName = 'Name'
      Size = 50
    end
    object CollectorPassword: TStringField
      FieldName = 'Password'
    end
    object CollectorUserType: TStringField
      FieldName = 'UserType'
      FixedChar = True
      Size = 1
    end
    object CollectorPicture: TBlobField
      FieldName = 'Picture'
    end
    object CollectorEntry: TIntegerField
      FieldName = 'Entry'
    end
    object CollectorORCount: TLongWordField
      FieldName = 'ORCount'
    end
    object CollectorAccountCode: TStringField
      FieldName = 'AccountCode'
      Size = 15
    end
    object CollectorEnrolled: TStringField
      FieldName = 'Enrolled'
      Size = 1
    end
    object CollectorEnrollDate: TDateField
      FieldName = 'EnrollDate'
    end
  end
  object CollectorSource: TDataSource
    DataSet = Collector
    Left = 248
    Top = 347
  end
  object Encoder: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'select * from Encoder')
    FetchAll = False
    Left = 352
    Top = 298
    object EncoderEncoderCode: TStringField
      FieldName = 'EncoderCode'
      Size = 10
    end
    object EncoderName: TStringField
      FieldName = 'Name'
      Size = 50
    end
  end
  object EncoderSource: TDataSource
    DataSet = Encoder
    Left = 352
    Top = 347
  end
  object ChangeNameSource: TDataSource
    DataSet = ChangeName
    Left = 41
    Top = 347
  end
  object TransferAreaSource: TDataSource
    DataSet = TransferArea
    Left = 144
    Top = 347
  end
  object BillSource: TDataSource
    DataSet = Bill
    Left = 456
    Top = 56
  end
  object BillNumberSource: TDataSource
    DataSet = BillNumber
    Left = 456
    Top = 153
  end
  object BillNumber: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'select * from BillNum')
    FetchAll = False
    Left = 456
    Top = 104
    object BillNumberBillNumber: TAutoIncField
      FieldName = 'BillNumber'
      ReadOnly = True
    end
    object BillNumberCode: TFloatField
      FieldName = 'Code'
    end
    object BillNumberArea: TStringField
      FieldName = 'Area'
      Size = 3
    end
    object BillNumberBook: TStringField
      FieldName = 'Book'
      Size = 3
    end
    object BillNumberSequence: TStringField
      FieldName = 'Sequence'
      Size = 4
    end
    object BillNumberAccountNumber: TStringField
      FieldName = 'AccountNumber'
      Size = 10
    end
    object BillNumberBillMonth: TStringField
      FieldName = 'BillMonth'
      Size = 4
    end
  end
  object SBBSource: TDataSource
    DataSet = SBBQuery
    Left = 41
    Top = 444
  end
  object SBASource: TDataSource
    DataSet = SBAQuery
    Left = 144
    Top = 444
  end
  object SBBQuery: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'SELECT billhistory.Area, '
      '       billhistory.Book,'
      '       vicinity.Address,'
      '       COUNT( AccountNumber ) TotalConsumer,'
      '       SUM( KilowattHour ) KilowattHour,'
      '       SUM( KilowattUsed ) KilowattUsed,'
      '       SUM( GenSysCharge ) GenSysCharge,'
      '       SUM( HostCommCharge ) HostCommCharge,'
      '       SUM( ForexCharge ) ForexCharge,'
      '       SUM( TCDemandCharge ) TCDemandCharge,'
      '       SUM( TCTransSystemCharge ) TCTransSystemCharge,'
      '       SUM( SystemLossCharge ) SystemLossCharge,'
      '       SUM( DCDemandCharge ) DCDemandCharge,'
      '       SUM( DCDistributionCharge ) DCDistributionCharge,'
      '       SUM( SCRetCustCharge ) SCRetCustCharge,'
      '       SUM( SCSupplySysCharge ) SCSupplySysCharge,'
      '       SUM( MCRetailCustCharge ) MCRetailCustCharge,'
      '       SUM( MCSystemCharge ) MCSystemCharge,'
      '       SUM( UCNPCStrandedDebts ) UCNPCStrandedDebts,'
      '       SUM( UCNPCStrandedContCost ) UCNPCStrandedContCost,'
      '       SUM( UCDUStrandedContCost ) UCDUStrandedContCost,'
      '       SUM( UCME ) UCME,'
      '       SUM( UCEqTaxesAndRoyalties ) UCEqTaxesAndRoyalties, '
      '       SUM( UCEC ) UCEC,'
      '       SUM( UCCrossSubRemoval ) UCCrossSubRemoval, '
      '       SUM( ICCrossSubsidyCharge ) ICCrossSubsidyCharge, '
      '       SUM( PowerActRateRed ) PowerActRateRed, '
      '       SUM( LifelineDiscSubs ) LifelineDiscSubs,'
      '       SUM( LoanCondo ) LoanCondo,'
      
        '       SUM( If (TransformerRental is not null, TransformerRental' +
        ', 0) ) TransformerRental,'
      
        '       SUM( If (OCAmount1 is not null, OCAmount1, 0) ) OCAmount1' +
        ','
      
        '       SUM( If (OCAmount2 is not null, OCAmount2, 0) ) OCAmount2' +
        ','
      
        '       SUM( If (OCAmount3 is not null, OCAmount3, 0) ) OCAmount3' +
        ','
      '       SUM( TotalBill ) TotalBill,'
      '       SUM( LCCustMo ) LCCustMo,'
      '       SUM( PrevYearAdjPowerCost ) PrevYearAdjPowerCost,'
      '       SUM( SysLossUnderRecov ) SysLossUnderRecov,'
      '       SUM( VAT ) VAT,'
      '       SUM( VATDist ) VATDist,'
      '       SUM( VATGenCO ) VATGenCO,'
      '       SUM( VATTransCO ) VATTransCO,'
      '       SUM( VATSystemLossGenCO ) VATSystemLossGenCO,'
      '       SUM( VATSystemLossTransCO ) VATSystemLossTransCO,'
      
        '       SUM( TotalBill - (if (TransformerRental is not null, Tran' +
        'sformerRental, 0) + '
      
        '                         If (OCAmount1 is not null, OCAmount1, 0' +
        ') + '
      
        '                         If (OCAmount2 is not null, OCAmount2, 0' +
        ') + '
      
        '                         If (OCAmount3 is not null, OCAmount3, 0' +
        ') + '
      '                         UCNPCStrandedDebts + '
      '                         UCNPCStrandedContCost + '
      '                         UCDUStrandedContCost + '
      '                         UCME + '
      '                         UCEqTaxesAndRoyalties + '
      '                         UCEC + '
      '                         VAT )) TotalPower'
      'FROM billhistory'
      
        'Join vicinity on (billhistory.area = vicinity.area and billhisto' +
        'ry.book = vicinity.book)'
      '   where billmonth = :BillMonth and'
      '   RateCode IN ('#39'R'#39', '#39'C'#39', '#39'I'#39', '#39'S'#39', '#39'B'#39', '#39'P'#39') and'
      '   billhistory.area between '#39'001'#39' and '#39'025'#39
      'GROUP BY Area, Book'
      'ORDER BY Area, Book')
    FetchAll = False
    Left = 41
    Top = 395
    ParamData = <
      item
        DataType = ftString
        Name = 'BillMonth'
        Value = ''
      end>
    object SBBQueryArea: TStringField
      FieldName = 'Area'
      FixedChar = True
      Size = 3
    end
    object SBBQueryBook: TStringField
      FieldName = 'Book'
      FixedChar = True
      Size = 3
    end
    object SBBQueryAddress: TStringField
      FieldName = 'Address'
      Size = 50
    end
    object SBBQueryTotalConsumer: TLargeintField
      FieldName = 'TotalConsumer'
    end
    object SBBQueryKilowattHour: TFloatField
      FieldName = 'KilowattHour'
    end
    object SBBQueryKilowattUsed: TFloatField
      FieldName = 'KilowattUsed'
    end
    object SBBQueryGenSysCharge: TFloatField
      FieldName = 'GenSysCharge'
      currency = True
    end
    object SBBQueryHostCommCharge: TFloatField
      FieldName = 'HostCommCharge'
      currency = True
    end
    object SBBQueryForexCharge: TFloatField
      FieldName = 'ForexCharge'
      currency = True
    end
    object SBBQueryTCDemandCharge: TFloatField
      FieldName = 'TCDemandCharge'
      currency = True
    end
    object SBBQueryTCTransSystemCharge: TFloatField
      FieldName = 'TCTransSystemCharge'
      currency = True
    end
    object SBBQuerySystemLossCharge: TFloatField
      FieldName = 'SystemLossCharge'
      currency = True
    end
    object SBBQueryDCDemandCharge: TFloatField
      FieldName = 'DCDemandCharge'
      currency = True
    end
    object SBBQueryDCDistributionCharge: TFloatField
      FieldName = 'DCDistributionCharge'
      currency = True
    end
    object SBBQuerySCRetCustCharge: TFloatField
      FieldName = 'SCRetCustCharge'
      currency = True
    end
    object SBBQuerySCSupplySysCharge: TFloatField
      FieldName = 'SCSupplySysCharge'
      currency = True
    end
    object SBBQueryMCRetailCustCharge: TFloatField
      FieldName = 'MCRetailCustCharge'
      currency = True
    end
    object SBBQueryMCSystemCharge: TFloatField
      FieldName = 'MCSystemCharge'
      currency = True
    end
    object SBBQueryUCNPCStrandedDebts: TFloatField
      FieldName = 'UCNPCStrandedDebts'
      currency = True
    end
    object SBBQueryUCNPCStrandedContCost: TFloatField
      FieldName = 'UCNPCStrandedContCost'
      currency = True
    end
    object SBBQueryUCDUStrandedContCost: TFloatField
      FieldName = 'UCDUStrandedContCost'
      currency = True
    end
    object SBBQueryUCME: TFloatField
      FieldName = 'UCME'
      currency = True
    end
    object SBBQueryUCEqTaxesAndRoyalties: TFloatField
      FieldName = 'UCEqTaxesAndRoyalties'
      currency = True
    end
    object SBBQueryUCEC: TFloatField
      FieldName = 'UCEC'
      currency = True
    end
    object SBBQueryUCCrossSubRemoval: TFloatField
      FieldName = 'UCCrossSubRemoval'
      currency = True
    end
    object SBBQueryICCrossSubsidyCharge: TFloatField
      FieldName = 'ICCrossSubsidyCharge'
      currency = True
    end
    object SBBQueryPowerActRateRed: TFloatField
      FieldName = 'PowerActRateRed'
      currency = True
    end
    object SBBQueryLifelineDiscSubs: TFloatField
      FieldName = 'LifelineDiscSubs'
      currency = True
    end
    object SBBQueryLoanCondo: TFloatField
      FieldName = 'LoanCondo'
      currency = True
    end
    object SBBQueryTransformerRental: TFloatField
      FieldName = 'TransformerRental'
      currency = True
    end
    object SBBQueryOCAmount1: TFloatField
      FieldName = 'OCAmount1'
      currency = True
    end
    object SBBQueryOCAmount2: TFloatField
      FieldName = 'OCAmount2'
      currency = True
    end
    object SBBQueryOCAmount3: TFloatField
      FieldName = 'OCAmount3'
      currency = True
    end
    object SBBQueryTotalBill: TFloatField
      FieldName = 'TotalBill'
      currency = True
    end
    object SBBQueryLCCustMo: TFloatField
      FieldName = 'LCCustMo'
      currency = True
    end
    object SBBQueryVAT: TFloatField
      FieldName = 'VAT'
      currency = True
    end
    object SBBQueryVATDist: TFloatField
      FieldName = 'VATDist'
      currency = True
    end
    object SBBQueryVATGenCO: TFloatField
      FieldName = 'VATGenCO'
      currency = True
    end
    object SBBQueryVATTransCO: TFloatField
      FieldName = 'VATTransCO'
      currency = True
    end
    object SBBQueryVATSystemLossGenCO: TFloatField
      FieldName = 'VATSystemLossGenCO'
      currency = True
    end
    object SBBQueryVATSystemLossTransCO: TFloatField
      FieldName = 'VATSystemLossTransCO'
      currency = True
    end
    object SBBQueryTotalPower: TFloatField
      FieldName = 'TotalPower'
      currency = True
    end
    object SBBQueryPrevYearAdjPowerCost: TFloatField
      FieldName = 'PrevYearAdjPowerCost'
      currency = True
    end
    object SBBQuerySysLossUnderRecov: TFloatField
      FieldName = 'SysLossUnderRecov'
      currency = True
    end
  end
  object BM: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'select * from BM')
    FetchAll = False
    Left = 456
    Top = 298
    object BMEntry: TAutoIncField
      FieldName = 'Entry'
      ReadOnly = True
    end
    object BMBillMonth: TStringField
      FieldName = 'BillMonth'
      Size = 4
    end
  end
  object BMSource: TDataSource
    DataSet = BM
    Left = 456
    Top = 347
  end
  object SBAQuery: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'SELECT Area, '
      '       case Area '
      '        when '#39'001'#39' then '#39'RIZAL'#39
      '        when '#39'002'#39' then '#39'SIBUTAD'#39
      '        when '#39'003'#39' then '#39'MUTIA'#39
      '        when '#39'004'#39' then '#39'LA LIBERTAD'#39
      '        when '#39'005'#39' then '#39'SERGIO OSME'#209'A'#39
      '        when '#39'006'#39' then '#39'DAPITAN'#39
      '        when '#39'007'#39' then '#39'PI'#209'AN'#39
      '        when '#39'008'#39' then '#39'POLANCO'#39
      '        when '#39'009'#39' then '#39'DIPOLOG NORTH'#39
      '        when '#39'010'#39' then '#39'DIPOLOG SOUTH'#39
      '        when '#39'011'#39' then '#39'KATIPUNAN'#39
      '        when '#39'012'#39' then '#39'ROXAS'#39
      '        when '#39'013'#39' then '#39'MANUKAN'#39
      '        when '#39'014'#39' then '#39'JOSE DALMAN'#39
      '        when '#39'015'#39' then '#39'SINDANGAN'#39
      '        when '#39'016'#39' then '#39'LEON B. POSTIGO'#39
      '        when '#39'017'#39' then '#39'SIAYAN'#39
      '        when '#39'018'#39' then '#39'SALUG'#39
      '        when '#39'019'#39' then '#39'LILOY'#39
      '        when '#39'020'#39' then '#39'LABASON'#39
      '        when '#39'021'#39' then '#39'TAMPILISAN'#39
      '        when '#39'022'#39' then '#39'GODOD'#39
      '        when '#39'023'#39' then '#39'GUTALAC'#39
      '        when '#39'024'#39' then '#39'DAPITAN / PI'#209'AN'#39
      '        when '#39'025'#39' then '#39'KALAWIT'#39
      '        else '#39#39' '
      '       end '
      '       as address,'
      '       COUNT( AccountNumber ) TotalConsumer,'
      '       SUM( KilowattHour ) KilowattHour,'
      '       SUM( KilowattUsed ) KilowattUsed,'
      '       SUM( GenSysCharge ) GenSysCharge,'
      '       SUM( HostCommCharge ) HostCommCharge,'
      '       SUM( ForexCharge ) ForexCharge,'
      '       SUM( TCDemandCharge ) TCDemandCharge,'
      '       SUM( TCTransSystemCharge ) TCTransSystemCharge,'
      '       SUM( SystemLossCharge ) SystemLossCharge,'
      '       SUM( DCDemandCharge ) DCDemandCharge,'
      '       SUM( DCDistributionCharge ) DCDistributionCharge,'
      '       SUM( SCRetCustCharge ) SCRetCustCharge,'
      '       SUM( SCSupplySysCharge ) SCSupplySysCharge,'
      '       SUM( MCRetailCustCharge ) MCRetailCustCharge,'
      '       SUM( MCSystemCharge ) MCSystemCharge,'
      '       SUM( UCNPCStrandedDebts ) UCNPCStrandedDebts,'
      '       SUM( UCNPCStrandedContCost ) UCNPCStrandedContCost,'
      '       SUM( UCDUStrandedContCost ) UCDUStrandedContCost,'
      '       SUM( UCME ) UCME,'
      '       SUM( UCEqTaxesAndRoyalties ) UCEqTaxesAndRoyalties, '
      '       SUM( UCEC ) UCEC,'
      '       SUM( UCCrossSubRemoval ) UCCrossSubRemoval, '
      '       SUM( ICCrossSubsidyCharge ) ICCrossSubsidyCharge, '
      '       SUM( PowerActRateRed ) PowerActRateRed, '
      '       SUM( LifelineDiscSubs ) LifelineDiscSubs,'
      '       SUM( LoanCondo ) LoanCondo,'
      
        '       SUM( if (TransformerRental is not null, TransformerRental' +
        ', 0) ) TransformerRental,'
      
        '       SUM( If (OCAmount1 is not null, OCAmount1, 0) ) OCAmount1' +
        ','
      
        '       SUM( If (OCAmount2 is not null, OCAmount2, 0) ) OCAmount2' +
        ','
      
        '       SUM( If (OCAmount3 is not null, OCAmount3, 0) ) OCAmount3' +
        ','
      '       SUM( TotalBill ) TotalBill,'
      '       SUM( LCCustMo ) LCCustMo,'
      '       SUM( PrevYearAdjPowerCost ) PrevYearAdjPowerCost,'
      '       SUM( SysLossUnderRecov ) SysLossUnderRecov,'
      '       SUM( VAT ) VAT,'
      '       SUM( VATDist ) VATDist,'
      '       SUM( VATGenCO ) VATGenCO,'
      '       SUM( VATTransCO ) VATTransCO,'
      '       SUM( VATSystemLossGenCO ) VATSystemLossGenCO,'
      '       SUM( VATSystemLossTransCO ) VATSystemLossTransCO,'
      
        '       COUNT( if(ratecode = '#39'R'#39' and kilowatthour <= 15,accountnu' +
        'mber,null)) minimumbills,'
      
        '       SUM( if(ratecode = '#39'R'#39' and kilowatthour <= 15,kilowatthou' +
        'r,null)) minimumkilowatthour,'
      
        '       SUM( TotalBill - (if (TransformerRental is not null, Tran' +
        'sformerRental, 0) + '
      
        '                         If (OCAmount1 is not null, OCAmount1, 0' +
        ') + '
      
        '                         If (OCAmount2 is not null, OCAmount2, 0' +
        ') + '
      
        '                         If (OCAmount3 is not null, OCAmount3, 0' +
        ') + '
      '                         UCNPCStrandedDebts + '
      '                         UCNPCStrandedContCost + '
      '                         UCDUStrandedContCost + '
      '                         UCME + '
      '                         UCEqTaxesAndRoyalties + '
      '                         UCEC + '
      '                         VAT )) TotalPower'
      'FROM billhistory'
      '   where billmonth = :BillMonth and'
      '   RateCode IN ('#39'R'#39', '#39'C'#39', '#39'I'#39', '#39'S'#39', '#39'B'#39', '#39'P'#39') and'
      '   area between '#39'001'#39' and '#39'025'#39
      'GROUP BY Area'
      'ORDER BY Area')
    FetchAll = False
    Left = 144
    Top = 395
    ParamData = <
      item
        DataType = ftString
        Name = 'BillMonth'
        Value = '0808'
      end>
    object SBAQueryArea: TStringField
      FieldName = 'Area'
      Origin = 'billhistory.Area'
      FixedChar = True
      Size = 3
    end
    object SBAQueryaddress: TStringField
      FieldName = 'address'
      Origin = '.address'
      FixedChar = True
      Size = 15
    end
    object SBAQueryTotalConsumer: TLargeintField
      FieldName = 'TotalConsumer'
      Origin = '.TotalConsumer'
    end
    object SBAQueryKilowattHour: TFloatField
      FieldName = 'KilowattHour'
      Origin = '.KilowattHour'
    end
    object SBAQueryKilowattUsed: TFloatField
      FieldName = 'KilowattUsed'
      Origin = '.KilowattUsed'
    end
    object SBAQueryGenSysCharge: TFloatField
      FieldName = 'GenSysCharge'
      Origin = '.GenSysCharge'
      currency = True
    end
    object SBAQueryHostCommCharge: TFloatField
      FieldName = 'HostCommCharge'
      Origin = '.HostCommCharge'
      currency = True
    end
    object SBAQueryForexCharge: TFloatField
      FieldName = 'ForexCharge'
      Origin = '.ForexCharge'
      currency = True
    end
    object SBAQueryTCDemandCharge: TFloatField
      FieldName = 'TCDemandCharge'
      Origin = '.TCDemandCharge'
      currency = True
    end
    object SBAQueryTCTransSystemCharge: TFloatField
      FieldName = 'TCTransSystemCharge'
      Origin = '.TCTransSystemCharge'
      currency = True
    end
    object SBAQuerySystemLossCharge: TFloatField
      FieldName = 'SystemLossCharge'
      Origin = '.SystemLossCharge'
      currency = True
    end
    object SBAQueryDCDemandCharge: TFloatField
      FieldName = 'DCDemandCharge'
      Origin = '.DCDemandCharge'
      currency = True
    end
    object SBAQueryDCDistributionCharge: TFloatField
      FieldName = 'DCDistributionCharge'
      Origin = '.DCDistributionCharge'
      currency = True
    end
    object SBAQuerySCRetCustCharge: TFloatField
      FieldName = 'SCRetCustCharge'
      Origin = '.SCRetCustCharge'
      currency = True
    end
    object SBAQuerySCSupplySysCharge: TFloatField
      FieldName = 'SCSupplySysCharge'
      Origin = '.SCSupplySysCharge'
      currency = True
    end
    object SBAQueryMCRetailCustCharge: TFloatField
      FieldName = 'MCRetailCustCharge'
      Origin = '.MCRetailCustCharge'
      currency = True
    end
    object SBAQueryMCSystemCharge: TFloatField
      FieldName = 'MCSystemCharge'
      Origin = '.MCSystemCharge'
      currency = True
    end
    object SBAQueryUCNPCStrandedDebts: TFloatField
      FieldName = 'UCNPCStrandedDebts'
      Origin = '.UCNPCStrandedDebts'
      currency = True
    end
    object SBAQueryUCNPCStrandedContCost: TFloatField
      FieldName = 'UCNPCStrandedContCost'
      Origin = '.UCNPCStrandedContCost'
      currency = True
    end
    object SBAQueryUCDUStrandedContCost: TFloatField
      FieldName = 'UCDUStrandedContCost'
      Origin = '.UCDUStrandedContCost'
      currency = True
    end
    object SBAQueryUCME: TFloatField
      FieldName = 'UCME'
      Origin = '.UCME'
      currency = True
    end
    object SBAQueryUCEqTaxesAndRoyalties: TFloatField
      FieldName = 'UCEqTaxesAndRoyalties'
      Origin = '.UCEqTaxesAndRoyalties'
      currency = True
    end
    object SBAQueryUCEC: TFloatField
      FieldName = 'UCEC'
      Origin = '.UCEC'
      currency = True
    end
    object SBAQueryUCCrossSubRemoval: TFloatField
      FieldName = 'UCCrossSubRemoval'
      Origin = '.UCCrossSubRemoval'
      currency = True
    end
    object SBAQueryICCrossSubsidyCharge: TFloatField
      FieldName = 'ICCrossSubsidyCharge'
      Origin = '.ICCrossSubsidyCharge'
      currency = True
    end
    object SBAQueryPowerActRateRed: TFloatField
      FieldName = 'PowerActRateRed'
      Origin = '.PowerActRateRed'
      currency = True
    end
    object SBAQueryLifelineDiscSubs: TFloatField
      FieldName = 'LifelineDiscSubs'
      Origin = '.LifelineDiscSubs'
      currency = True
    end
    object SBAQueryLoanCondo: TFloatField
      FieldName = 'LoanCondo'
      Origin = '.LoanCondo'
      currency = True
    end
    object SBAQueryTransformerRental: TFloatField
      FieldName = 'TransformerRental'
      Origin = '.TransformerRental'
      currency = True
    end
    object SBAQueryOCAmount1: TFloatField
      FieldName = 'OCAmount1'
      Origin = '.OCAmount1'
      currency = True
    end
    object SBAQueryOCAmount2: TFloatField
      FieldName = 'OCAmount2'
      Origin = '.OCAmount2'
      currency = True
    end
    object SBAQueryOCAmount3: TFloatField
      FieldName = 'OCAmount3'
      Origin = '.OCAmount3'
      currency = True
    end
    object SBAQueryTotalBill: TFloatField
      FieldName = 'TotalBill'
      Origin = '.TotalBill'
      currency = True
    end
    object SBAQueryLCCustMo: TFloatField
      FieldName = 'LCCustMo'
      Origin = '.LCCustMo'
      currency = True
    end
    object SBAQueryVAT: TFloatField
      FieldName = 'VAT'
      Origin = '.VAT'
      currency = True
    end
    object SBAQueryVATDist: TFloatField
      FieldName = 'VATDist'
      Origin = '.VATDist'
      currency = True
    end
    object SBAQueryVATGenCO: TFloatField
      FieldName = 'VATGenCO'
      Origin = '.VATGenCO'
      currency = True
    end
    object SBAQueryVATTransCO: TFloatField
      FieldName = 'VATTransCO'
      Origin = '.VATTransCO'
      currency = True
    end
    object SBAQueryVATSystemLossGenCO: TFloatField
      FieldName = 'VATSystemLossGenCO'
      Origin = '.VATSystemLossGenCO'
      currency = True
    end
    object SBAQueryVATSystemLossTransCO: TFloatField
      FieldName = 'VATSystemLossTransCO'
      Origin = '.VATSystemLossTransCO'
      currency = True
    end
    object SBAQueryminimumbills: TLargeintField
      FieldName = 'minimumbills'
      Origin = '.minimumbills'
    end
    object SBAQueryminimumkilowatthour: TFloatField
      FieldName = 'minimumkilowatthour'
      Origin = '.minimumkilowatthour'
      currency = True
    end
    object SBAQueryTotalPower: TFloatField
      FieldName = 'TotalPower'
      Origin = '.TotalPower'
      currency = True
    end
    object SBAQueryPrevYearAdjPowerCost: TFloatField
      FieldName = 'PrevYearAdjPowerCost'
      Origin = '.PrevYearAdjPowerCost'
      currency = True
    end
    object SBAQuerySysLossUnderRecov: TFloatField
      FieldName = 'SysLossUnderRecov'
      Origin = '.SysLossUnderRecov'
      currency = True
    end
  end
  object SBADetailSource: TDataSource
    DataSet = SBADetailQuery
    Left = 248
    Top = 444
  end
  object SBADetailQuery: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'SELECT Area, '
      '       RateCode,'
      '       case RateCode '
      '        when '#39'R'#39' then '#39'1. Residential'#39
      '        when '#39'C'#39' then '#39'2. Commercial'#39
      '        when '#39'I'#39' then '#39'3. Industrial'#39
      '        when '#39'S'#39' then '#39'4. Street Lights'#39
      '        when '#39'B'#39' then '#39'5. BAPA'#39
      '        when '#39'P'#39' then '#39'6. Public Building'#39
      '        else '#39#39' '
      '       end '
      '       as ConsumerType,'
      '       COUNT( AccountNumber ) TotalConsumer,'
      '       SUM( KilowattHour ) KilowattHour,'
      '       SUM( KilowattUsed ) KilowattUsed,'
      '       SUM( GenSysCharge ) GenSysCharge,'
      '       SUM( HostCommCharge ) HostCommCharge,'
      '       SUM( ForexCharge ) ForexCharge,'
      '       SUM( TCDemandCharge ) TCDemandCharge,'
      '       SUM( TCTransSystemCharge ) TCTransSystemCharge,'
      '       SUM( SystemLossCharge ) SystemLossCharge,'
      '       SUM( DCDemandCharge ) DCDemandCharge,'
      '       SUM( DCDistributionCharge ) DCDistributionCharge,'
      '       SUM( SCRetCustCharge ) SCRetCustCharge,'
      '       SUM( SCSupplySysCharge ) SCSupplySysCharge,'
      '       SUM( MCRetailCustCharge ) MCRetailCustCharge,'
      '       SUM( MCSystemCharge ) MCSystemCharge,'
      '       SUM( UCNPCStrandedDebts ) UCNPCStrandedDebts,'
      '       SUM( UCNPCStrandedContCost ) UCNPCStrandedContCost,'
      '       SUM( UCDUStrandedContCost ) UCDUStrandedContCost,'
      '       SUM( UCME ) UCME,'
      '       SUM( UCEqTaxesAndRoyalties ) UCEqTaxesAndRoyalties, '
      '       SUM( UCEC ) UCEC,'
      '       SUM( UCCrossSubRemoval ) UCCrossSubRemoval, '
      '       SUM( ICCrossSubsidyCharge ) ICCrossSubsidyCharge, '
      '       SUM( PowerActRateRed ) PowerActRateRed, '
      '       SUM( LifelineDiscSubs ) LifelineDiscSubs,'
      '       SUM( LoanCondo ) LoanCondo,'
      
        '       SUM( if (TransformerRental is not null, TransformerRental' +
        ', 0) ) TransformerRental,'
      
        '       SUM( If (OCAmount1 is not null, OCAmount1, 0) ) OCAmount1' +
        ','
      
        '       SUM( If (OCAmount2 is not null, OCAmount2, 0) ) OCAmount2' +
        ','
      
        '       SUM( If (OCAmount3 is not null, OCAmount3, 0) ) OCAmount3' +
        ','
      '       SUM( TotalBill ) TotalBill,'
      '       SUM( LCCustMo ) LCCustMo,'
      '       SUM( PrevYearAdjPowerCost ) PrevYearAdjPowerCost,'
      '       SUM( SysLossUnderRecov ) SysLossUnderRecov,'
      '       SUM( VAT ) VAT,'
      '       SUM( VATDist ) VATDist,'
      '       SUM( VATGenCO ) VATGenCO,'
      '       SUM( VATTransCO ) VATTransCO,'
      '       SUM( VATSystemLossGenCO ) VATSystemLossGenCO,'
      '       SUM( VATSystemLossTransCO ) VATSystemLossTransCO,'
      
        '       SUM( TotalBill - (if (TransformerRental is not null, Tran' +
        'sformerRental, 0) + '
      
        '                         If (OCAmount1 is not null, OCAmount1, 0' +
        ') + '
      
        '                         If (OCAmount2 is not null, OCAmount2, 0' +
        ') + '
      
        '                         If (OCAmount3 is not null, OCAmount3, 0' +
        ') + '
      '                         UCNPCStrandedDebts + '
      '                         UCNPCStrandedContCost + '
      '                         UCDUStrandedContCost + '
      '                         UCME + '
      '                         UCEqTaxesAndRoyalties + '
      '                         UCEC + '
      '                         VAT )) TotalPower'
      'FROM billhistory'
      '   where billmonth = :BillMonth and'
      '   RateCode IN ('#39'R'#39', '#39'C'#39', '#39'I'#39', '#39'S'#39', '#39'B'#39', '#39'P'#39') and'
      '   area between '#39'001'#39' and '#39'025'#39
      'GROUP BY Area, RateCode'
      'ORDER BY ConsumerType')
    MasterSource = SBASource
    MasterFields = 'Area'
    DetailFields = 'Area'
    FetchAll = False
    Left = 248
    Top = 395
    ParamData = <
      item
        DataType = ftString
        Name = 'BillMonth'
        Value = ''
      end
      item
        DataType = ftUnknown
        Name = 'Area'
        Value = nil
      end>
    object SBADetailQueryArea: TStringField
      FieldName = 'Area'
      FixedChar = True
      Size = 3
    end
    object SBADetailQueryRateCode: TStringField
      FieldName = 'RateCode'
      FixedChar = True
      Size = 1
    end
    object SBADetailQueryConsumerType: TStringField
      FieldName = 'ConsumerType'
      FixedChar = True
      Size = 18
    end
    object SBADetailQueryTotalConsumer: TLargeintField
      FieldName = 'TotalConsumer'
    end
    object SBADetailQueryKilowattHour: TFloatField
      FieldName = 'KilowattHour'
    end
    object SBADetailQueryKilowattUsed: TFloatField
      FieldName = 'KilowattUsed'
    end
    object SBADetailQueryGenSysCharge: TFloatField
      FieldName = 'GenSysCharge'
      currency = True
    end
    object SBADetailQueryHostCommCharge: TFloatField
      FieldName = 'HostCommCharge'
      currency = True
    end
    object SBADetailQueryForexCharge: TFloatField
      FieldName = 'ForexCharge'
      currency = True
    end
    object SBADetailQueryTCDemandCharge: TFloatField
      FieldName = 'TCDemandCharge'
      currency = True
    end
    object SBADetailQueryTCTransSystemCharge: TFloatField
      FieldName = 'TCTransSystemCharge'
      currency = True
    end
    object SBADetailQuerySystemLossCharge: TFloatField
      FieldName = 'SystemLossCharge'
      currency = True
    end
    object SBADetailQueryDCDemandCharge: TFloatField
      FieldName = 'DCDemandCharge'
      currency = True
    end
    object SBADetailQueryDCDistributionCharge: TFloatField
      FieldName = 'DCDistributionCharge'
      currency = True
    end
    object SBADetailQuerySCRetCustCharge: TFloatField
      FieldName = 'SCRetCustCharge'
      currency = True
    end
    object SBADetailQuerySCSupplySysCharge: TFloatField
      FieldName = 'SCSupplySysCharge'
      currency = True
    end
    object SBADetailQueryMCRetailCustCharge: TFloatField
      FieldName = 'MCRetailCustCharge'
      currency = True
    end
    object SBADetailQueryMCSystemCharge: TFloatField
      FieldName = 'MCSystemCharge'
      currency = True
    end
    object SBADetailQueryUCNPCStrandedDebts: TFloatField
      FieldName = 'UCNPCStrandedDebts'
      currency = True
    end
    object SBADetailQueryUCNPCStrandedContCost: TFloatField
      FieldName = 'UCNPCStrandedContCost'
      currency = True
    end
    object SBADetailQueryUCDUStrandedContCost: TFloatField
      FieldName = 'UCDUStrandedContCost'
      currency = True
    end
    object SBADetailQueryUCME: TFloatField
      FieldName = 'UCME'
      currency = True
    end
    object SBADetailQueryUCEqTaxesAndRoyalties: TFloatField
      FieldName = 'UCEqTaxesAndRoyalties'
      currency = True
    end
    object SBADetailQueryUCEC: TFloatField
      FieldName = 'UCEC'
      currency = True
    end
    object SBADetailQueryUCCrossSubRemoval: TFloatField
      FieldName = 'UCCrossSubRemoval'
      currency = True
    end
    object SBADetailQueryICCrossSubsidyCharge: TFloatField
      FieldName = 'ICCrossSubsidyCharge'
      currency = True
    end
    object SBADetailQueryPowerActRateRed: TFloatField
      FieldName = 'PowerActRateRed'
      currency = True
    end
    object SBADetailQueryLifelineDiscSubs: TFloatField
      FieldName = 'LifelineDiscSubs'
      currency = True
    end
    object SBADetailQueryLoanCondo: TFloatField
      FieldName = 'LoanCondo'
      currency = True
    end
    object SBADetailQueryTransformerRental: TFloatField
      FieldName = 'TransformerRental'
      currency = True
    end
    object SBADetailQueryOCAmount1: TFloatField
      FieldName = 'OCAmount1'
      currency = True
    end
    object SBADetailQueryOCAmount2: TFloatField
      FieldName = 'OCAmount2'
      currency = True
    end
    object SBADetailQueryOCAmount3: TFloatField
      FieldName = 'OCAmount3'
      currency = True
    end
    object SBADetailQueryTotalBill: TFloatField
      FieldName = 'TotalBill'
      currency = True
    end
    object SBADetailQueryLCCustMo: TFloatField
      FieldName = 'LCCustMo'
      currency = True
    end
    object SBADetailQueryPrevYearAdjPowerCost: TFloatField
      FieldName = 'PrevYearAdjPowerCost'
      currency = True
    end
    object SBADetailQuerySysLossUnderRecov: TFloatField
      FieldName = 'SysLossUnderRecov'
      currency = True
    end
    object SBADetailQueryVAT: TFloatField
      FieldName = 'VAT'
      currency = True
    end
    object SBADetailQueryVATDist: TFloatField
      FieldName = 'VATDist'
      currency = True
    end
    object SBADetailQueryVATGenCO: TFloatField
      FieldName = 'VATGenCO'
      currency = True
    end
    object SBADetailQueryVATTransCO: TFloatField
      FieldName = 'VATTransCO'
      currency = True
    end
    object SBADetailQueryVATSystemLossGenCO: TFloatField
      FieldName = 'VATSystemLossGenCO'
      currency = True
    end
    object SBADetailQueryVATSystemLossTransCO: TFloatField
      FieldName = 'VATSystemLossTransCO'
      currency = True
    end
    object SBADetailQueryTotalPower: TFloatField
      FieldName = 'TotalPower'
      currency = True
    end
  end
  object UnPB: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'select * from UnpaidBills')
    BeforeDelete = UnPBBeforeDelete
    FetchAll = False
    Left = 560
    Top = 104
    object UnPBDocument: TStringField
      FieldName = 'Document'
      Size = 15
    end
    object UnPBCode: TFloatField
      FieldName = 'Code'
    end
    object UnPBArea: TStringField
      FieldName = 'Area'
      FixedChar = True
      Size = 3
    end
    object UnPBBook: TStringField
      FieldName = 'Book'
      FixedChar = True
      Size = 3
    end
    object UnPBAccountNumber: TStringField
      FieldName = 'AccountNumber'
      Size = 10
    end
    object UnPBDate: TDateField
      FieldName = 'Date'
    end
    object UnPBName: TStringField
      FieldName = 'Name'
      Size = 30
    end
    object UnPBBillMonth: TStringField
      FieldName = 'BillMonth'
      Size = 4
    end
    object UnPBDeleteRemarks: TStringField
      FieldName = 'DeleteRemarks'
      Size = 30
    end
    object UnPBRateCode: TStringField
      FieldName = 'RateCode'
      FixedChar = True
      Size = 2
    end
    object UnPBReading: TFloatField
      FieldName = 'Reading'
    end
    object UnPBKilowattHour: TFloatField
      FieldName = 'KilowattHour'
    end
    object UnPBAmount: TFloatField
      FieldName = 'Amount'
      currency = True
    end
    object UnPBUCNPCSD: TFloatField
      FieldName = 'UCNPCSD'
      currency = True
    end
    object UnPBUCNPCSCC: TFloatField
      FieldName = 'UCNPCSCC'
      currency = True
    end
    object UnPBUCDUSCC: TFloatField
      FieldName = 'UCDUSCC'
      currency = True
    end
    object UnPBUCME: TFloatField
      FieldName = 'UCME'
      currency = True
    end
    object UnPBUCETR: TFloatField
      FieldName = 'UCETR'
      currency = True
    end
    object UnPBUCEC: TFloatField
      FieldName = 'UCEC'
      currency = True
    end
    object UnPBUCCSR: TFloatField
      FieldName = 'UCCSR'
      currency = True
    end
    object UnPBTransformerRental: TFloatField
      FieldName = 'TransformerRental'
      currency = True
    end
    object UnPBVATDiscAmt: TFloatField
      FieldName = 'VATDiscAmt'
      currency = True
    end
    object UnPBVATDistDiscAmt: TFloatField
      FieldName = 'VATDistDiscAmt'
      currency = True
    end
    object UnPBVATGenCoDiscAmt: TFloatField
      FieldName = 'VATGenCoDiscAmt'
      currency = True
    end
    object UnPBVATTransCoDiscAmt: TFloatField
      FieldName = 'VATTransCoDiscAmt'
      currency = True
    end
    object UnPBVATSystemLossDiscAmt: TFloatField
      FieldName = 'VATSystemLossDiscAmt'
      currency = True
    end
    object UnPBVATDist: TFloatField
      FieldName = 'VATDist'
      currency = True
    end
    object UnPBVATGenCO: TFloatField
      FieldName = 'VATGenCO'
      currency = True
    end
    object UnPBVATTransCO: TFloatField
      FieldName = 'VATTransCO'
      currency = True
    end
    object UnPBVATSystemLossGenCO: TFloatField
      FieldName = 'VATSystemLossGenCO'
      currency = True
    end
    object UnPBVATSystemLossTransCO: TFloatField
      FieldName = 'VATSystemLossTransCO'
      currency = True
    end
    object UnPBVAT: TFloatField
      FieldName = 'VAT'
      currency = True
    end
    object UnPBSystemLossCharge: TFloatField
      FieldName = 'SystemLossCharge'
      currency = True
    end
    object UnPBPKVRAmount: TFloatField
      FieldName = 'PKVRAmount'
      currency = True
    end
    object UnPBOEBRNumber: TStringField
      FieldName = 'OEBRNumber'
      Size = 15
    end
    object UnPBSCDisc: TFloatField
      FieldName = 'SCDisc'
    end
    object UnPBWRateCode: TStringField
      FieldName = 'WRateCode'
      Size = 1
    end
    object UnPBRPTax: TFloatField
      FieldName = 'RPTax'
    end
    object UnPBRateOrder: TStringField
      FieldName = 'RateOrder'
      Size = 6
    end
    object UnPBOtherGenRateAdj: TFloatField
      FieldName = 'OtherGenRateAdj'
    end
    object UnPBOtherTransCostAdj: TFloatField
      FieldName = 'OtherTransCostAdj'
    end
    object UnPBOtherTransDemandCostAdj: TFloatField
      FieldName = 'OtherTransDemandCostAdj'
    end
    object UnPBOtherSystemLossCostAdj: TFloatField
      FieldName = 'OtherSystemLossCostAdj'
    end
    object UnPBOtherLifelineRateCostAdj: TFloatField
      FieldName = 'OtherLifelineRateCostAdj'
    end
    object UnPBOtherSeniorCitizenRateAdj: TFloatField
      FieldName = 'OtherSeniorCitizenRateAdj'
    end
    object UnPBICCrossSubsidyCharge: TFloatField
      FieldName = 'ICCrossSubsidyCharge'
    end
    object UnPBFitall: TFloatField
      FieldName = 'Fitall'
    end
    object UnPBPARec: TFloatField
      FieldName = 'PARec'
    end
  end
  object UnPBSource: TDataSource
    DataSet = UnPB
    Left = 560
    Top = 153
  end
  object RCSource: TDataSource
    DataSet = RC
    Left = 456
    Top = 250
  end
  object PBillSource: TDataSource
    DataSet = PBill
    Left = 560
    Top = 56
  end
  object CollSummQuery: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'SELECT DatePaid, '
      '       DateRemitted, '
      '       EncoderCode, '
      '       CollectorCode, '
      '       Sundries, '
      '       SUM( Total ) TotalAmount, '
      '       COUNT( AccountNumber ) TotalAccounts, '
      '       Posted'
      'FROM Collection'
      'GROUP BY DatePaid, '
      '         DateRemitted, '
      '         EncoderCode, '
      '         CollectorCode, '
      '         Sundries, '
      '         Posted'
      'ORDER BY DatePaid')
    FetchAll = False
    Left = 560
    Top = 347
    object CollSummQueryDatePaid: TDateField
      FieldName = 'DatePaid'
    end
    object CollSummQueryDateRemitted: TDateField
      FieldName = 'DateRemitted'
    end
    object CollSummQueryEncoderCode: TStringField
      FieldName = 'EncoderCode'
      Size = 10
    end
    object CollSummQueryCollectorCode: TStringField
      FieldName = 'CollectorCode'
      FixedChar = True
      Size = 3
    end
    object CollSummQuerySundries: TStringField
      FieldName = 'Sundries'
      Size = 15
    end
    object CollSummQueryTotalAmount: TFloatField
      FieldName = 'TotalAmount'
      currency = True
    end
    object CollSummQueryTotalAccounts: TLargeintField
      FieldName = 'TotalAccounts'
    end
    object CollSummQueryPosted: TStringField
      FieldName = 'Posted'
      FixedChar = True
      Size = 1
    end
  end
  object UQ: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'SELECT u.Area, '
      '       u.Book, '
      '       u.BillMonth, '
      '       u.WRateCode,'
      '       COUNT( u.AccountNumber ) TotalAccount, '
      '       SUM( u.Amount ) TotalAmount, '
      '       ifnull(sum(l.Amount),0) OCAmount,'
      '       SUM( u.UCNPCSD ) TUCNPCSD, '
      '       SUM( u.UCNPCSCC ) TUCNPCSCC, '
      '       SUM( u.UCDUSCC ) TUCDUSCC, '
      '       SUM( u.UCME ) TUCME, '
      '       SUM( u.UCETR ) TUCETR, '
      '       SUM( u.UCEC ) TUCEC, '
      '       SUM( u.UCCSR) TUCCSR,'
      '       SUM( u.SystemLossCharge ) TSystemLossCharge,'
      
        '       SUM( IfNull(u.VATGenco,0) + IfNull(u.VATGencoDiscAmt,0)) ' +
        'VATGenco,'
      
        '       SUM( IfNull(u.VATTransco,0) + IfNull(u.VATTransco,0)) VAT' +
        'Transco,'
      
        '       SUM( IfNull(u.VATSystemLossGenco,0) + IfNull(u.VATSystemL' +
        'ossDiscAmt,0)) VATSystemLoss,'
      
        '       SUM( IfNull(u.VATDist,0) + IfNull(u.VATDistDiscAmt,0)) VA' +
        'TDist,'
      ''
      
        '       sum(if(ifnull(b.mcc,0)=0,ifnull(lb.mcc,0),ifnull(b.mcc,0)' +
        ') ) mcc,       '
      '       sum(ifnull(u.fitall,0)) fitall,'
      '       sum(ifnull(u.parec,0)) par,'
      '       sum(ifnull(u.rptax,0)) rptax,'
      '       sum(ifnull(u.ICCrossSubsidyCharge,0)) iccs,'
      '       sum(ifnull(u.gram,0)) gram'
      'from unpaidbills u'
      'join master m on (m.code = u.code)'
      
        'left join ocledger l on (l.code = u.code and l.billmonth = u.bil' +
        'lmonth)'
      ''
      ' left join billhistory b on b.code = u.code and'
      '                           b.billmonth = u.billmonth'
      ' left join latebillhistory lb on lb.code = u.code and'
      '                           lb.billmonth = u.billmonth'
      'where m.code = u.code and'
      '      m.area like :area and'
      '      m.conncode like :conncode'
      'GROUP BY u.Area, u.Book, u.BillMonth, u.WRateCode')
    FetchAll = False
    Left = 664
    Top = 8
    ParamData = <
      item
        DataType = ftString
        Name = 'area'
        Value = ''
      end
      item
        DataType = ftUnknown
        Name = 'conncode'
        Value = nil
      end>
  end
  object CQ: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'SELECT c.Area, '
      '       c.Book, '
      '       c.BillMonth, '
      '       SUM( ifnull(c.TotalBill,0) ) TotalAmount, '
      '       COUNT( c.AccountNumber ) TotalAccount, '
      '       m.Wratecode,'
      '       SUM( ifnull(c.TransformerRental,0) ) TTransformerRental, '
      '       SUM( ifnull(c.UCNPCSD,0) ) TUCNPCSD, '
      '       SUM( ifnull(c.UCNPCSCC,0) ) TUCNPCSCC, '
      '       SUM( ifnull(c.UCDUSCC,0) ) TUCDUSCC, '
      '       SUM( ifnull(c.UCME,0) ) TUCME, '
      '       SUM( ifnull(c.UCETR,0) ) TUCETR, '
      '       SUM( ifnull(c.UCEC,0) ) TUCEC, '
      '       SUM( ifnull(c.VAT,0) ) TVAT'
      'FROM Collection c'
      'inner join master m on (m.code = c.accountcode)'
      '   where DatePaid between :datefrom and :dateto  '
      'GROUP BY c.Area, c.Book, c.BillMonth, m.wratecode'
      'ORDER BY c.Area, c.Book, c.BillMonth, m.wratecode')
    FetchAll = False
    Left = 664
    Top = 56
    ParamData = <
      item
        DataType = ftString
        Name = 'datefrom'
        Value = '2005/12/01'
      end
      item
        DataType = ftString
        Name = 'dateto'
        Value = '2005/12/31'
      end>
  end
  object D: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'select * from bufferdate')
    FetchAll = False
    Left = 664
    Top = 104
    object DDateFrom: TDateField
      FieldName = 'DateFrom'
    end
    object DDateTo: TDateField
      FieldName = 'DateTo'
    end
  end
  object Fr: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'select * from Frequency')
    FetchAll = False
    Left = 664
    Top = 153
    object FrEntry: TIntegerField
      FieldName = 'Entry'
    end
    object FrBillMonth: TStringField
      FieldName = 'BillMonth'
      Size = 4
    end
    object FrRangeFrom: TFloatField
      FieldName = 'RangeFrom'
      DisplayFormat = '#########0.0'
    end
    object FrRangeTo: TFloatField
      FieldName = 'RangeTo'
      DisplayFormat = '#########0.0'
    end
    object FrConsumers: TFloatField
      FieldName = 'Consumers'
    end
    object FrKilowattHour: TFloatField
      FieldName = 'KilowattHour'
      DisplayFormat = '#########0.0'
    end
    object FrAmount: TFloatField
      FieldName = 'Amount'
      currency = True
    end
  end
  object Ft: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'select * from FreqSql')
    FetchAll = False
    Left = 560
    Top = 201
    object FtEntry: TIntegerField
      FieldName = 'Entry'
    end
    object FtBillMonth: TStringField
      FieldName = 'BillMonth'
      Size = 4
    end
    object FtRangeFrom: TFloatField
      FieldName = 'RangeFrom'
    end
    object FtConsumer: TIntegerField
      FieldName = 'Consumer'
    end
    object FtKilowattHour: TFloatField
      FieldName = 'KilowattHour'
    end
    object FtRangeTo: TFloatField
      FieldName = 'RangeTo'
    end
  end
  object FrQ: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'Select '
      '       count(a.AccountNumber) TotalAccount, '
      '       sum(ifnull(a.KilowattHour,0)) TotalKWHR,'
      '       sum(ifnull(a.LifelineDiscSubs,0)) Amount       '
      'from'
      '('
      '(SELECT AccountNumber,'
      '       KilowattHour,'
      '       LifelineDiscSubs'
      'FROM BillHistory'
      'where billmonth = :billmonth and'
      '      KilowattHour between :fromkwhr and  :tokwhr and'
      '      wratecode like :ratecode)'
      'union'
      '(SELECT AccountNumber,'
      '       KilowattHour,'
      '       LifelineDiscSubs'
      'FROM lateBillHistory'
      'where billmonth = :billmonth and'
      '      KilowattHour between :fromkwhr and :tokwhr and'
      '      wratecode like :ratecode)'
      ') a')
    FetchAll = False
    Left = 560
    Top = 250
    ParamData = <
      item
        DataType = ftString
        Name = 'billmonth'
        Value = '0708'
      end
      item
        DataType = ftString
        Name = 'fromkwhr'
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'tokwhr'
        Value = '100'
      end
      item
        DataType = ftUnknown
        Name = 'ratecode'
        Value = nil
      end
      item
        DataType = ftString
        Name = 'billmonth'
        Value = '0708'
      end
      item
        DataType = ftString
        Name = 'fromkwhr'
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'tokwhr'
        Value = '100'
      end
      item
        DataType = ftUnknown
        Name = 'ratecode'
        Value = nil
      end>
    object FrQTotalAccount: TLargeintField
      FieldName = 'TotalAccount'
    end
    object FrQTotalKWHR: TFloatField
      FieldName = 'TotalKWHR'
    end
    object FrQAmount: TFloatField
      FieldName = 'Amount'
    end
  end
  object FrSource: TDataSource
    DataSet = Fr
    Left = 664
    Top = 201
  end
  object MasterFreq: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'select * from masterfrequency')
    FetchAll = False
    Left = 664
    Top = 249
    object MasterFreqEntry: TIntegerField
      FieldName = 'Entry'
    end
    object MasterFreqAccountnumber: TStringField
      FieldName = 'Accountnumber'
      Size = 10
    end
    object MasterFreqKilowatthour: TFloatField
      FieldName = 'Kilowatthour'
    end
  end
  object PRate: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'select m.* from meterrate m '
      'where mbillmonth = :billmonth')
    FetchAll = False
    Left = 560
    Top = 298
    ParamData = <
      item
        DataType = ftString
        Name = 'billmonth'
        Value = ''
      end>
    object PRateMBillMonth: TStringField
      FieldName = 'MBillMonth'
      Size = 4
    end
    object PRateRateCode: TStringField
      FieldName = 'RateCode'
      FixedChar = True
      Size = 1
    end
    object PRateRemarks: TStringField
      FieldName = 'Remarks'
      Size = 40
    end
    object PRateGenSysRate: TFloatField
      FieldName = 'GenSysRate'
    end
    object PRateHostCommRate: TFloatField
      FieldName = 'HostCommRate'
    end
    object PRateFOREXRate: TFloatField
      FieldName = 'FOREXRate'
    end
    object PRateTCDemandRate: TFloatField
      FieldName = 'TCDemandRate'
    end
    object PRateTCSystemRate: TFloatField
      FieldName = 'TCSystemRate'
    end
    object PRateSystemLossRate: TFloatField
      FieldName = 'SystemLossRate'
    end
    object PRateDCDemandRate: TFloatField
      FieldName = 'DCDemandRate'
    end
    object PRateDCSystemRate: TFloatField
      FieldName = 'DCSystemRate'
    end
    object PRateSCRetailCustRate: TFloatField
      FieldName = 'SCRetailCustRate'
    end
    object PRateSCSupplySysRate: TFloatField
      FieldName = 'SCSupplySysRate'
    end
    object PRateMCRetailCustRate: TFloatField
      FieldName = 'MCRetailCustRate'
    end
    object PRateMCSysRate: TFloatField
      FieldName = 'MCSysRate'
    end
    object PRateUCNPCStrandedDebtsRate: TFloatField
      FieldName = 'UCNPCStrandedDebtsRate'
    end
    object PRateUCNPCStrandedContCostRate: TFloatField
      FieldName = 'UCNPCStrandedContCostRate'
    end
    object PRateUCDUStrandedContCostRate: TFloatField
      FieldName = 'UCDUStrandedContCostRate'
    end
    object PRateUCMERate: TFloatField
      FieldName = 'UCMERate'
    end
    object PRateUCEqTaxesAndRoyaltiesRate: TFloatField
      FieldName = 'UCEqTaxesAndRoyaltiesRate'
    end
    object PRateUCECRate: TFloatField
      FieldName = 'UCECRate'
    end
    object PRateUCCrossSubsidyRemovalRate: TFloatField
      FieldName = 'UCCrossSubsidyRemovalRate'
    end
    object PRateICCrossSubsidyRate: TFloatField
      FieldName = 'ICCrossSubsidyRate'
    end
    object PRatePARARate: TFloatField
      FieldName = 'PARARate'
    end
    object PRateLifelineSubsidyRate: TFloatField
      FieldName = 'LifelineSubsidyRate'
    end
    object PRateLoanCondo: TFloatField
      FieldName = 'LoanCondo'
    end
    object PRateGram: TFloatField
      FieldName = 'Gram'
    end
    object PRateLCcustmo: TFloatField
      FieldName = 'LCcustmo'
    end
    object PRateVAT: TFloatField
      FieldName = 'VAT'
    end
    object PRateVATGenCo: TFloatField
      FieldName = 'VATGenCo'
    end
    object PRateVATTransCo: TFloatField
      FieldName = 'VATTransCo'
    end
    object PRateVATSystemLossGenCO: TFloatField
      FieldName = 'VATSystemLossGenCO'
    end
    object PRateVATSystemLossTransCO: TFloatField
      FieldName = 'VATSystemLossTransCO'
    end
    object PRateVATSystemLoss: TFloatField
      FieldName = 'VATSystemLoss'
    end
    object PRatePrevYearAdjPowerCost: TFloatField
      FieldName = 'PrevYearAdjPowerCost'
    end
    object PRateSysLossUnderRecov: TFloatField
      FieldName = 'SysLossUnderRecov'
    end
    object PRateDiffBillPerKwhr: TFloatField
      FieldName = 'DiffBillPerKwhr'
    end
    object PRateDIffBillPerKW: TFloatField
      FieldName = 'DIffBillPerKW'
    end
    object PRateDiffBillPerCust: TFloatField
      FieldName = 'DiffBillPerCust'
    end
    object PRateMCC: TFloatField
      FieldName = 'MCC'
    end
    object PRateDiffBillMonth: TStringField
      FieldName = 'DiffBillMonth'
      Size = 4
    end
    object PRateDiffBillApply: TStringField
      FieldName = 'DiffBillApply'
      Size = 1
    end
    object PRatePantawidApply: TStringField
      FieldName = 'PantawidApply'
      Size = 1
    end
    object PRateTransSysAncRefundTitle: TStringField
      FieldName = 'TransSysAncRefundTitle'
      Size = 30
    end
    object PRateTransSysAncRefund: TFloatField
      FieldName = 'TransSysAncRefund'
    end
    object PRateTransDemAncRefundTitle: TStringField
      FieldName = 'TransDemAncRefundTitle'
      Size = 30
    end
    object PRateTransDemAncRefund: TFloatField
      FieldName = 'TransDemAncRefund'
    end
    object PRateVATTransAncRefundTitle: TStringField
      FieldName = 'VATTransAncRefundTitle'
      Size = 30
    end
    object PRateVATTransAncRefund: TFloatField
      FieldName = 'VATTransAncRefund'
    end
    object PRateSCDiscApply: TStringField
      FieldName = 'SCDiscApply'
      Size = 1
    end
    object PRateWRateCode: TStringField
      FieldName = 'WRateCode'
      Size = 1
    end
    object PRateSCDiscPercent: TFloatField
      FieldName = 'SCDiscPercent'
    end
    object PRateSCDiscSubs: TFloatField
      FieldName = 'SCDiscSubs'
    end
    object PRatePantawidRecovApply: TStringField
      FieldName = 'PantawidRecovApply'
      Size = 1
    end
    object PRateWRSw: TStringField
      FieldName = 'WRSw'
      Size = 1
    end
    object PRateSCDiscKWHR: TLongWordField
      FieldName = 'SCDiscKWHR'
    end
  end
  object MyConnection1: TMyConnection
    Database = 'zaneco'
    Username = '19zan72'
    Server = 'server'
    LoginPrompt = False
    Left = 664
    Top = 298
    EncryptedPassword = '8FFF9EFF8CFF9CFF9EFF93FF85FF9EFF91FF'
  end
  object Master: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'select * from master')
    BeforeDelete = MasterBeforeDelete
    OnCalcFields = MasterCalcFields
    FetchAll = False
    Left = 41
    Top = 8
    object MasterCode: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'Code'
      Origin = 'master.Code'
    end
    object MasterArea: TStringField
      FieldName = 'Area'
      Origin = 'master.Area'
      FixedChar = True
      Size = 3
    end
    object MasterBook: TStringField
      FieldName = 'Book'
      Origin = 'master.Book'
      FixedChar = True
      Size = 3
    end
    object MasterSequence: TStringField
      FieldName = 'Sequence'
      Origin = 'master.Sequence'
      Size = 4
    end
    object MasterAccountNumber: TStringField
      FieldName = 'AccountNumber'
      Origin = 'master.AccountNumber'
      Size = 10
    end
    object MasterName: TStringField
      FieldName = 'Name'
      Origin = 'master.Name'
      Size = 50
    end
    object MasterAddress: TStringField
      FieldName = 'Address'
      Origin = 'master.Address'
      Size = 50
    end
    object MasterRateCode: TStringField
      FieldName = 'RateCode'
      Origin = 'master.RateCode'
      FixedChar = True
      Size = 1
    end
    object MasterConsCode: TStringField
      FieldName = 'ConsCode'
      Origin = 'master.ConsCode'
      FixedChar = True
      Size = 1
    end
    object MasterConnCode: TStringField
      FieldName = 'ConnCode'
      Origin = 'master.ConnCode'
      FixedChar = True
      Size = 1
    end
    object MasterTransformer: TStringField
      FieldName = 'Transformer'
      Origin = 'master.Transformer'
    end
    object MasterMeterBrand: TStringField
      FieldName = 'MeterBrand'
      Origin = 'master.MeterBrand'
      Size = 10
    end
    object MasterSerial: TStringField
      FieldName = 'Serial'
      Origin = 'master.Serial'
    end
    object MasterMultiplier: TFloatField
      FieldName = 'Multiplier'
      Origin = 'master.Multiplier'
    end
    object MasterNewConnectionDate: TDateField
      FieldName = 'NewConnectionDate'
      Origin = 'master.NewConnectionDate'
    end
    object MasterReconnectionDate: TDateField
      FieldName = 'ReconnectionDate'
      Origin = 'master.ReconnectionDate'
    end
    object MasterDisconnectionDate: TDateField
      FieldName = 'DisconnectionDate'
      Origin = 'master.DisconnectionDate'
    end
    object MasterPreviousReadingDate: TDateField
      FieldName = 'PreviousReadingDate'
      Origin = 'master.PreviousReadingDate'
    end
    object MasterPresentReadingDate: TDateField
      FieldName = 'PresentReadingDate'
      Origin = 'master.PresentReadingDate'
    end
    object MasterPreviousReadingKWH: TFloatField
      FieldName = 'PreviousReadingKWH'
      Origin = 'master.PreviousReadingKWH'
    end
    object MasterPresentReadingKWH: TFloatField
      FieldName = 'PresentReadingKWH'
      Origin = 'master.PresentReadingKWH'
    end
    object MasterDiff: TFloatField
      FieldName = 'Diff'
      Origin = 'master.Diff'
    end
    object MasterDemand: TFloatField
      FieldName = 'Demand'
      Origin = 'master.Demand'
    end
    object MasterFlatRateWattage: TFloatField
      FieldName = 'FlatRateWattage'
      Origin = 'master.FlatRateWattage'
    end
    object MasterFeedBackCode: TStringField
      FieldName = 'FeedBackCode'
      Origin = 'master.FeedBackCode'
      FixedChar = True
      Size = 2
    end
    object MasterCM: TStringField
      FieldName = 'CM'
      Origin = 'master.CM'
      FixedChar = True
      Size = 1
    end
    object MasterCMMultiplier: TFloatField
      FieldName = 'CMMultiplier'
      Origin = 'master.CMMultiplier'
    end
    object MasterCMPreviousReadingKWH: TFloatField
      FieldName = 'CMPreviousReadingKWH'
      Origin = 'master.CMPreviousReadingKWH'
    end
    object MasterCMPresentReadingKWH: TFloatField
      FieldName = 'CMPresentReadingKWH'
      Origin = 'master.CMPresentReadingKWH'
    end
    object MasterCMKilowattHour: TFloatField
      FieldName = 'CMKilowattHour'
      Origin = 'master.CMKilowattHour'
    end
    object MasterCMDemand: TFloatField
      FieldName = 'CMDemand'
      Origin = 'master.CMDemand'
    end
    object MasterKilowattHour: TFloatField
      FieldName = 'KilowattHour'
      Origin = 'master.KilowattHour'
    end
    object MasterKilowattUsed: TFloatField
      FieldName = 'KilowattUsed'
      Origin = 'master.KilowattUsed'
    end
    object MasterGenSysCharge: TFloatField
      FieldName = 'GenSysCharge'
      Origin = 'master.GenSysCharge'
      currency = True
    end
    object MasterHostCommCharge: TFloatField
      FieldName = 'HostCommCharge'
      Origin = 'master.HostCommCharge'
      currency = True
    end
    object MasterForexCharge: TFloatField
      FieldName = 'ForexCharge'
      Origin = 'master.ForexCharge'
      currency = True
    end
    object MasterTCDemandCharge: TFloatField
      FieldName = 'TCDemandCharge'
      Origin = 'master.TCDemandCharge'
      currency = True
    end
    object MasterTCTransSystemCharge: TFloatField
      FieldName = 'TCTransSystemCharge'
      Origin = 'master.TCTransSystemCharge'
      currency = True
    end
    object MasterSystemLossCharge: TFloatField
      FieldName = 'SystemLossCharge'
      Origin = 'master.SystemLossCharge'
      currency = True
    end
    object MasterDCDemandCharge: TFloatField
      FieldName = 'DCDemandCharge'
      Origin = 'master.DCDemandCharge'
      currency = True
    end
    object MasterDCDistributionCharge: TFloatField
      FieldName = 'DCDistributionCharge'
      Origin = 'master.DCDistributionCharge'
      currency = True
    end
    object MasterSCRetCustCharge: TFloatField
      FieldName = 'SCRetCustCharge'
      Origin = 'master.SCRetCustCharge'
      currency = True
    end
    object MasterSCSupplySysCharge: TFloatField
      FieldName = 'SCSupplySysCharge'
      Origin = 'master.SCSupplySysCharge'
      currency = True
    end
    object MasterMCRetailCustCharge: TFloatField
      FieldName = 'MCRetailCustCharge'
      Origin = 'master.MCRetailCustCharge'
      currency = True
    end
    object MasterMCSystemCharge: TFloatField
      FieldName = 'MCSystemCharge'
      Origin = 'master.MCSystemCharge'
      currency = True
    end
    object MasterUCNPCStrandedDebts: TFloatField
      FieldName = 'UCNPCStrandedDebts'
      Origin = 'master.UCNPCStrandedDebts'
      currency = True
    end
    object MasterUCNPCStrandedContCost: TFloatField
      FieldName = 'UCNPCStrandedContCost'
      Origin = 'master.UCNPCStrandedContCost'
      currency = True
    end
    object MasterUCDUStrandedContCost: TFloatField
      FieldName = 'UCDUStrandedContCost'
      Origin = 'master.UCDUStrandedContCost'
      currency = True
    end
    object MasterUCME: TFloatField
      FieldName = 'UCME'
      Origin = 'master.UCME'
      currency = True
    end
    object MasterUCEqTaxesAndRoyalties: TFloatField
      FieldName = 'UCEqTaxesAndRoyalties'
      Origin = 'master.UCEqTaxesAndRoyalties'
      currency = True
    end
    object MasterUCEC: TFloatField
      FieldName = 'UCEC'
      Origin = 'master.UCEC'
      currency = True
    end
    object MasterUCCrossSubRemoval: TFloatField
      FieldName = 'UCCrossSubRemoval'
      Origin = 'master.UCCrossSubRemoval'
      currency = True
    end
    object MasterICCrossSubsidyCharge: TFloatField
      FieldName = 'ICCrossSubsidyCharge'
      Origin = 'master.ICCrossSubsidyCharge'
      currency = True
    end
    object MasterPowerActRateRed: TFloatField
      FieldName = 'PowerActRateRed'
      Origin = 'master.PowerActRateRed'
      currency = True
    end
    object MasterLifelineDiscSubs: TFloatField
      FieldName = 'LifelineDiscSubs'
      Origin = 'master.LifelineDiscSubs'
      currency = True
    end
    object MasterLoanCondo: TFloatField
      FieldName = 'LoanCondo'
      Origin = 'master.LoanCondo'
      currency = True
    end
    object MasterTransformerRental: TFloatField
      FieldName = 'TransformerRental'
      Origin = 'master.TransformerRental'
      currency = True
    end
    object MasterOCCode1: TStringField
      FieldName = 'OCCode1'
      Origin = 'master.OCCode1'
      Size = 10
    end
    object MasterOCAmount1: TFloatField
      FieldName = 'OCAmount1'
      Origin = 'master.OCAmount1'
      currency = True
    end
    object MasterOCMo1: TFloatField
      FieldName = 'OCMo1'
      Origin = 'master.OCMo1'
      currency = True
    end
    object MasterOCTotal1: TFloatField
      FieldName = 'OCTotal1'
      Origin = 'master.OCTotal1'
      currency = True
    end
    object MasterOCCode2: TStringField
      FieldName = 'OCCode2'
      Origin = 'master.OCCode2'
      Size = 10
    end
    object MasterOCAmount2: TFloatField
      FieldName = 'OCAmount2'
      Origin = 'master.OCAmount2'
      currency = True
    end
    object MasterOCMo2: TFloatField
      FieldName = 'OCMo2'
      Origin = 'master.OCMo2'
      currency = True
    end
    object MasterOCTotal2: TFloatField
      FieldName = 'OCTotal2'
      Origin = 'master.OCTotal2'
      currency = True
    end
    object MasterOCCode3: TStringField
      FieldName = 'OCCode3'
      Origin = 'master.OCCode3'
      Size = 10
    end
    object MasterOCAmount3: TFloatField
      FieldName = 'OCAmount3'
      Origin = 'master.OCAmount3'
      currency = True
    end
    object MasterOCMo3: TFloatField
      FieldName = 'OCMo3'
      Origin = 'master.OCMo3'
      currency = True
    end
    object MasterOCTotal3: TFloatField
      FieldName = 'OCTotal3'
      Origin = 'master.OCTotal3'
      currency = True
    end
    object MasterTotalBill: TFloatField
      FieldName = 'TotalBill'
      Origin = 'master.TotalBill'
      currency = True
    end
    object MasterBillNumber: TStringField
      FieldName = 'BillNumber'
      Origin = 'master.BillNumber'
      Size = 15
    end
    object MasterOEBRNumber: TStringField
      FieldName = 'OEBRNumber'
      Origin = 'master.OEBRNumber'
      Size = 10
    end
    object MasterBillMonth: TStringField
      FieldName = 'BillMonth'
      Origin = 'master.BillMonth'
      Size = 4
    end
    object MasterDeleteRemarks: TStringField
      FieldName = 'DeleteRemarks'
      Origin = 'master.DeleteRemarks'
      Size = 30
    end
    object MasterPoleNumber: TStringField
      FieldName = 'PoleNumber'
      Origin = 'master.PoleNumber'
      Size = 10
    end
    object MasterFeederNumber: TStringField
      FieldName = 'FeederNumber'
      Origin = 'master.FeederNumber'
      Size = 10
    end
    object MasterAge30: TFloatField
      FieldName = 'Age30'
      Origin = 'master.Age30'
      currency = True
    end
    object MasterAge60: TFloatField
      FieldName = 'Age60'
      Origin = 'master.Age60'
      currency = True
    end
    object MasterAge90: TFloatField
      FieldName = 'Age90'
      Origin = 'master.Age90'
      currency = True
    end
    object MasterAge120: TFloatField
      FieldName = 'Age120'
      Origin = 'master.Age120'
      currency = True
    end
    object MasterAgeOver120: TFloatField
      FieldName = 'AgeOver120'
      Origin = 'master.AgeOver120'
      currency = True
    end
    object MasterAgeTotal: TFloatField
      FieldName = 'AgeTotal'
      Origin = 'master.AgeTotal'
      currency = True
    end
    object MasterTotalPayments: TFloatField
      FieldName = 'TotalPayments'
      Origin = 'master.TotalPayments'
      currency = True
    end
    object MasterARBalance: TFloatField
      FieldName = 'ARBalance'
      Origin = 'master.ARBalance'
      currency = True
    end
    object MasterLCCustMo: TFloatField
      FieldName = 'LCCustMo'
      Origin = 'master.LCCustMo'
      currency = True
    end
    object MasterPrevYearAdjPowerCost: TFloatField
      FieldName = 'PrevYearAdjPowerCost'
      Origin = 'master.PrevYearAdjPowerCost'
      currency = True
    end
    object MasterSysLossUnderRecov: TFloatField
      FieldName = 'SysLossUnderRecov'
      Origin = 'master.SysLossUnderRecov'
      currency = True
    end
    object MasterVATDisc: TFloatField
      FieldName = 'VATDisc'
      Origin = 'master.VATDisc'
    end
    object MasterVATDiscAmt: TFloatField
      FieldName = 'VATDiscAmt'
      Origin = 'master.VATDiscAmt'
      currency = True
    end
    object MasterVATDistDiscAmt: TFloatField
      FieldName = 'VATDistDiscAmt'
      Origin = 'master.VATDistDiscAmt'
      currency = True
    end
    object MasterVATGenCoDiscAmt: TFloatField
      FieldName = 'VATGenCoDiscAmt'
      Origin = 'master.VATGenCoDiscAmt'
      currency = True
    end
    object MasterVATTransCoDiscAmt: TFloatField
      FieldName = 'VATTransCoDiscAmt'
      Origin = 'master.VATTransCoDiscAmt'
      currency = True
    end
    object MasterVATSystemLossDiscAmt: TFloatField
      FieldName = 'VATSystemLossDiscAmt'
      Origin = 'master.VATSystemLossDiscAmt'
      currency = True
    end
    object MasterVATDist: TFloatField
      FieldName = 'VATDist'
      Origin = 'master.VATDist'
      currency = True
    end
    object MasterVATGenCO: TFloatField
      FieldName = 'VATGenCO'
      Origin = 'master.VATGenCO'
      currency = True
    end
    object MasterVATTransCO: TFloatField
      FieldName = 'VATTransCO'
      Origin = 'master.VATTransCO'
      currency = True
    end
    object MasterVATSystemLossGenCO: TFloatField
      FieldName = 'VATSystemLossGenCO'
      Origin = 'master.VATSystemLossGenCO'
      currency = True
    end
    object MasterVATSystemLossTransCO: TFloatField
      FieldName = 'VATSystemLossTransCO'
      Origin = 'master.VATSystemLossTransCO'
      currency = True
    end
    object MasterVAT: TFloatField
      FieldName = 'VAT'
      Origin = 'master.VAT'
      currency = True
    end
    object MasterXFormerQty: TIntegerField
      FieldName = 'XFormerQty'
      Origin = 'master.XFormerQty'
    end
    object MasterXFormerKVA: TStringField
      FieldName = 'XFormerKVA'
      Origin = 'master.XFormerKVA'
    end
    object MasterDiffBillPerKwhr: TFloatField
      FieldName = 'DiffBillPerKwhr'
    end
    object MasterDiffBillPerKW: TFloatField
      FieldName = 'DiffBillPerKW'
    end
    object MasterDiffBillPerCust: TFloatField
      FieldName = 'DiffBillPerCust'
    end
    object MasterMCC: TFloatField
      FieldName = 'MCC'
    end
    object MasterPKVROebrNumber: TStringField
      FieldName = 'PKVROebrNumber'
    end
    object MasterPKVRBillMonth: TStringField
      FieldName = 'PKVRBillMonth'
      Size = 4
    end
    object MasterPKVRAmount: TFloatField
      FieldName = 'PKVRAmount'
      currency = True
    end
    object MasterSCDisc: TFloatField
      FieldName = 'SCDisc'
    end
    object MasterWRateCode: TStringField
      FieldName = 'WRateCode'
      Size = 1
    end
    object MasterSCAmt4Disc: TFloatField
      FieldName = 'SCAmt4Disc'
    end
    object MasterSCInd: TStringField
      FieldKind = fkCalculated
      FieldName = 'SCInd'
      Calculated = True
    end
    object MasterDWLEN1: TFloatField
      FieldName = 'DWLEN1'
    end
    object MasterDWLEN2: TFloatField
      FieldName = 'DWLEN2'
    end
    object MasterCBook: TStringField
      FieldName = 'CBook'
      Size = 6
    end
    object MasterRPTax: TFloatField
      FieldName = 'RPTax'
    end
    object MasterBTax: TFloatField
      FieldName = 'BTax'
    end
    object MasterRateOrder: TStringField
      FieldName = 'RateOrder'
      Size = 6
    end
    object MasterOtherGenRateAdj: TFloatField
      FieldName = 'OtherGenRateAdj'
    end
    object MasterOtherTransCostAdj: TFloatField
      FieldName = 'OtherTransCostAdj'
    end
    object MasterOtherTransDemandCostAdj: TFloatField
      FieldName = 'OtherTransDemandCostAdj'
    end
    object MasterOtherSystemLossCostAdj: TFloatField
      FieldName = 'OtherSystemLossCostAdj'
    end
    object MasterOtherLifelineRateCostAdj: TFloatField
      FieldName = 'OtherLifelineRateCostAdj'
    end
    object MasterOtherSeniorCitizenRateAdj: TFloatField
      FieldName = 'OtherSeniorCitizenRateAdj'
    end
    object MasterisFixDemand: TIntegerField
      FieldName = 'isFixDemand'
    end
    object MasterPARec: TFloatField
      FieldName = 'PARec'
    end
    object MasterisGram: TBooleanField
      FieldName = 'isGram'
    end
  end
  object AR: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'select a.*,'
      
        '       @MyBalance := @MyBalance + (ifnull(A.debit,0)-ifnull(a.cr' +
        'edit,0)) mybal'
      'from arledger a, (select @myBalance := 0) b'
      'where a.code = :code order by a.date')
    BeforeDelete = ARBeforeDelete
    FetchAll = False
    Left = 144
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'code'
        Value = nil
      end>
    object ARCode: TFloatField
      FieldName = 'Code'
    end
    object ARDate: TDateField
      FieldName = 'Date'
    end
    object ARDocument: TStringField
      FieldName = 'Document'
      Size = 15
    end
    object ARBillMonth: TStringField
      FieldName = 'BillMonth'
      Size = 4
    end
    object ARReading: TFloatField
      FieldName = 'Reading'
    end
    object ARKilowattHour: TFloatField
      FieldName = 'KilowattHour'
    end
    object ARDebit: TFloatField
      FieldName = 'Debit'
      currency = True
    end
    object ARCredit: TFloatField
      FieldName = 'Credit'
      currency = True
    end
    object ARBalance: TFloatField
      FieldName = 'Balance'
      currency = True
    end
    object ARUCNPCSD: TFloatField
      FieldName = 'UCNPCSD'
      currency = True
    end
    object ARUCNPCSCC: TFloatField
      FieldName = 'UCNPCSCC'
      currency = True
    end
    object ARUCDUSCC: TFloatField
      FieldName = 'UCDUSCC'
      currency = True
    end
    object ARUCME: TFloatField
      FieldName = 'UCME'
      currency = True
    end
    object ARUCETR: TFloatField
      FieldName = 'UCETR'
      currency = True
    end
    object ARUCEC: TFloatField
      FieldName = 'UCEC'
      currency = True
    end
    object ARUCCSR: TFloatField
      FieldName = 'UCCSR'
      currency = True
    end
    object ARCollectorCode: TStringField
      FieldName = 'CollectorCode'
    end
    object ARDeleteRemarks: TStringField
      FieldName = 'DeleteRemarks'
      Size = 30
    end
    object ARVATDiscAmt: TFloatField
      FieldName = 'VATDiscAmt'
      currency = True
    end
    object ARVATDistDiscAmt: TFloatField
      FieldName = 'VATDistDiscAmt'
      currency = True
    end
    object ARVATGenCoDiscAmt: TFloatField
      FieldName = 'VATGenCoDiscAmt'
      currency = True
    end
    object ARVATTransCoDiscAmt: TFloatField
      FieldName = 'VATTransCoDiscAmt'
      currency = True
    end
    object ARVATSystemLossDiscAmt: TFloatField
      FieldName = 'VATSystemLossDiscAmt'
      currency = True
    end
    object ARVATDist: TFloatField
      FieldName = 'VATDist'
      currency = True
    end
    object ARVATGenCO: TFloatField
      FieldName = 'VATGenCO'
      currency = True
    end
    object ARVATTransCO: TFloatField
      FieldName = 'VATTransCO'
      currency = True
    end
    object ARVATSystemLossGenCO: TFloatField
      FieldName = 'VATSystemLossGenCO'
      currency = True
    end
    object ARVATSystemLossTransCO: TFloatField
      FieldName = 'VATSystemLossTransCO'
      currency = True
    end
    object ARVAT: TFloatField
      FieldName = 'VAT'
      currency = True
    end
    object ARmybal: TFloatField
      FieldName = 'mybal'
      currency = True
    end
  end
  object Collection: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'select * from collection'
      'where datepaid = :datepaid and'
      '      collectorcode = :collectorcode and'
      '      encodercode = :encodercode')
    BeforeDelete = CollectionBeforeDelete
    FetchAll = False
    Left = 248
    Top = 8
    ParamData = <
      item
        DataType = ftString
        Name = 'datepaid'
        Value = ''
      end
      item
        DataType = ftString
        Name = 'collectorcode'
        Value = ''
      end
      item
        DataType = ftString
        Name = 'encodercode'
        Value = ''
      end>
    object CollectionReceiptNumber: TStringField
      FieldName = 'ReceiptNumber'
      Size = 10
    end
    object CollectionAccountCode: TFloatField
      FieldName = 'AccountCode'
    end
    object CollectionArea: TStringField
      FieldName = 'Area'
      FixedChar = True
      Size = 3
    end
    object CollectionBook: TStringField
      FieldName = 'Book'
      FixedChar = True
      Size = 3
    end
    object CollectionSequence: TStringField
      FieldName = 'Sequence'
      Size = 4
    end
    object CollectionAccountNumber: TStringField
      FieldName = 'AccountNumber'
      Size = 10
    end
    object CollectionName: TStringField
      FieldName = 'Name'
      Size = 50
    end
    object CollectionBillMonth: TStringField
      FieldName = 'BillMonth'
      Size = 4
    end
    object CollectionTotalBill: TFloatField
      FieldName = 'TotalBill'
      currency = True
    end
    object CollectionMembership: TFloatField
      FieldName = 'Membership'
      currency = True
    end
    object CollectionPenalty: TFloatField
      FieldName = 'Penalty'
      currency = True
    end
    object CollectionSecurity: TFloatField
      FieldName = 'Security'
      currency = True
    end
    object CollectionMeterDeposit: TFloatField
      FieldName = 'MeterDeposit'
      currency = True
    end
    object CollectionTransformerRental: TFloatField
      FieldName = 'TransformerRental'
      currency = True
    end
    object CollectionSundries: TStringField
      FieldName = 'Sundries'
      Size = 15
    end
    object CollectionSundriesAmount: TFloatField
      FieldName = 'SundriesAmount'
      currency = True
    end
    object CollectionUCNPCSD: TFloatField
      FieldName = 'UCNPCSD'
      currency = True
    end
    object CollectionUCNPCSCC: TFloatField
      FieldName = 'UCNPCSCC'
      currency = True
    end
    object CollectionUCDUSCC: TFloatField
      FieldName = 'UCDUSCC'
      currency = True
    end
    object CollectionUCME: TFloatField
      FieldName = 'UCME'
      currency = True
    end
    object CollectionUCETR: TFloatField
      FieldName = 'UCETR'
      currency = True
    end
    object CollectionUCEC: TFloatField
      FieldName = 'UCEC'
      currency = True
    end
    object CollectionUCCSR: TFloatField
      FieldName = 'UCCSR'
      currency = True
    end
    object CollectionLoanCondo: TFloatField
      FieldName = 'LoanCondo'
      currency = True
    end
    object CollectionTotal: TFloatField
      FieldName = 'Total'
      currency = True
    end
    object CollectionCollectorCode: TStringField
      FieldName = 'CollectorCode'
      FixedChar = True
      Size = 3
    end
    object CollectionDatePaid: TDateField
      FieldName = 'DatePaid'
    end
    object CollectionDateRemitted: TDateField
      FieldName = 'DateRemitted'
    end
    object CollectionEncoderCode: TStringField
      FieldName = 'EncoderCode'
      Size = 10
    end
    object CollectionPosted: TStringField
      FieldName = 'Posted'
      FixedChar = True
      Size = 1
    end
    object CollectionKilowattHour: TFloatField
      FieldName = 'KilowattHour'
    end
    object CollectionAddress: TStringField
      FieldName = 'Address'
      Size = 15
    end
    object CollectionOPDescription: TStringField
      FieldName = 'OPDescription'
      Size = 50
    end
    object CollectionOPAmount: TFloatField
      FieldName = 'OPAmount'
      currency = True
    end
    object CollectionTellerORNumber: TStringField
      FieldName = 'TellerORNumber'
      Size = 15
    end
    object CollectionVATDiscAmt: TFloatField
      FieldName = 'VATDiscAmt'
      currency = True
    end
    object CollectionVATDistDiscAmt: TFloatField
      FieldName = 'VATDistDiscAmt'
      currency = True
    end
    object CollectionVATGenCoDiscAmt: TFloatField
      FieldName = 'VATGenCoDiscAmt'
      currency = True
    end
    object CollectionVATTransCoDiscAmt: TFloatField
      FieldName = 'VATTransCoDiscAmt'
      currency = True
    end
    object CollectionVATSystemLossDiscAmt: TFloatField
      FieldName = 'VATSystemLossDiscAmt'
      currency = True
    end
    object CollectionVATDist: TFloatField
      FieldName = 'VATDist'
      currency = True
    end
    object CollectionVATGenCO: TFloatField
      FieldName = 'VATGenCO'
      currency = True
    end
    object CollectionVATTransCO: TFloatField
      FieldName = 'VATTransCO'
      currency = True
    end
    object CollectionVATSystemLossGenCO: TFloatField
      FieldName = 'VATSystemLossGenCO'
      currency = True
    end
    object CollectionVATSystemLossTransCO: TFloatField
      FieldName = 'VATSystemLossTransCO'
      currency = True
    end
    object CollectionVAT: TFloatField
      FieldName = 'VAT'
      currency = True
    end
    object CollectionSystemLossCharge: TFloatField
      FieldName = 'SystemLossCharge'
    end
    object CollectionPKVRAmount: TFloatField
      FieldName = 'PKVRAmount'
    end
    object CollectionSCDisc: TFloatField
      FieldName = 'SCDisc'
    end
    object CollectionWRateCode: TStringField
      FieldName = 'WRateCode'
      Size = 1
    end
    object CollectionRPTax: TFloatField
      FieldName = 'RPTax'
    end
    object CollectionBTax: TFloatField
      FieldName = 'BTax'
    end
    object CollectionEntry: TIntegerField
      FieldName = 'Entry'
    end
    object CollectionRateOrder: TStringField
      FieldName = 'RateOrder'
      Size = 6
    end
  end
  object Adj: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'select * from adjustment order by entry desc')
    FetchAll = False
    Left = 352
    Top = 8
    object AdjCode: TFloatField
      FieldName = 'Code'
    end
    object AdjArea: TStringField
      FieldName = 'Area'
      FixedChar = True
      Size = 3
    end
    object AdjBook: TStringField
      FieldName = 'Book'
      FixedChar = True
      Size = 3
    end
    object AdjSequence: TStringField
      FieldName = 'Sequence'
      Size = 4
    end
    object AdjAccountNumber: TStringField
      FieldName = 'AccountNumber'
      Size = 10
    end
    object AdjName: TStringField
      FieldName = 'Name'
      Size = 50
    end
    object AdjAddress: TStringField
      FieldName = 'Address'
      Size = 50
    end
    object AdjBillMonth: TStringField
      FieldName = 'BillMonth'
      Size = 4
    end
    object AdjVATDisc: TFloatField
      FieldName = 'VATDisc'
    end
    object AdjABRateCode: TStringField
      FieldName = 'ABRateCode'
      FixedChar = True
      Size = 1
    end
    object AdjRateCode: TStringField
      FieldName = 'RateCode'
      FixedChar = True
      Size = 1
    end
    object AdjABMultiplier: TFloatField
      FieldName = 'ABMultiplier'
    end
    object AdjMultiplier: TFloatField
      FieldName = 'Multiplier'
    end
    object AdjABPreviousReadingKWH: TFloatField
      FieldName = 'ABPreviousReadingKWH'
    end
    object AdjPreviousReadingKWH: TFloatField
      FieldName = 'PreviousReadingKWH'
    end
    object AdjABPresentReadingKWH: TFloatField
      FieldName = 'ABPresentReadingKWH'
    end
    object AdjPresentReadingKWH: TFloatField
      FieldName = 'PresentReadingKWH'
    end
    object AdjABDiff: TFloatField
      FieldName = 'ABDiff'
    end
    object AdjDiff: TFloatField
      FieldName = 'Diff'
    end
    object AdjABDemand: TFloatField
      FieldName = 'ABDemand'
    end
    object AdjDemand: TFloatField
      FieldName = 'Demand'
    end
    object AdjABKilowattHour: TFloatField
      FieldName = 'ABKilowattHour'
    end
    object AdjKilowattHour: TFloatField
      FieldName = 'KilowattHour'
    end
    object AdjABKilowattUsed: TFloatField
      FieldName = 'ABKilowattUsed'
    end
    object AdjKilowattUsed: TFloatField
      FieldName = 'KilowattUsed'
    end
    object AdjABGenSysCharge: TFloatField
      FieldName = 'ABGenSysCharge'
      currency = True
    end
    object AdjGenSysCharge: TFloatField
      FieldName = 'GenSysCharge'
      currency = True
    end
    object AdjABHostCommCharge: TFloatField
      FieldName = 'ABHostCommCharge'
      currency = True
    end
    object AdjHostCommCharge: TFloatField
      FieldName = 'HostCommCharge'
      currency = True
    end
    object AdjABForexCharge: TFloatField
      FieldName = 'ABForexCharge'
      currency = True
    end
    object AdjForexCharge: TFloatField
      FieldName = 'ForexCharge'
      currency = True
    end
    object AdjABTCDemandCharge: TFloatField
      FieldName = 'ABTCDemandCharge'
      currency = True
    end
    object AdjTCDemandCharge: TFloatField
      FieldName = 'TCDemandCharge'
      currency = True
    end
    object AdjABTCTransSystemCharge: TFloatField
      FieldName = 'ABTCTransSystemCharge'
      currency = True
    end
    object AdjTCTransSystemCharge: TFloatField
      FieldName = 'TCTransSystemCharge'
      currency = True
    end
    object AdjABSystemLossCharge: TFloatField
      FieldName = 'ABSystemLossCharge'
      currency = True
    end
    object AdjSystemLossCharge: TFloatField
      FieldName = 'SystemLossCharge'
      currency = True
    end
    object AdjABDCDemandCharge: TFloatField
      FieldName = 'ABDCDemandCharge'
      currency = True
    end
    object AdjDCDemandCharge: TFloatField
      FieldName = 'DCDemandCharge'
      currency = True
    end
    object AdjABDCDistributionCharge: TFloatField
      FieldName = 'ABDCDistributionCharge'
      currency = True
    end
    object AdjDCDistributionCharge: TFloatField
      FieldName = 'DCDistributionCharge'
      currency = True
    end
    object AdjABSCRetCustCharge: TFloatField
      FieldName = 'ABSCRetCustCharge'
      currency = True
    end
    object AdjSCRetCustCharge: TFloatField
      FieldName = 'SCRetCustCharge'
      currency = True
    end
    object AdjABSCSupplySysCharge: TFloatField
      FieldName = 'ABSCSupplySysCharge'
      currency = True
    end
    object AdjSCSupplySysCharge: TFloatField
      FieldName = 'SCSupplySysCharge'
      currency = True
    end
    object AdjABMCRetailCustCharge: TFloatField
      FieldName = 'ABMCRetailCustCharge'
      currency = True
    end
    object AdjMCRetailCustCharge: TFloatField
      FieldName = 'MCRetailCustCharge'
      currency = True
    end
    object AdjABMCSystemCharge: TFloatField
      FieldName = 'ABMCSystemCharge'
      currency = True
    end
    object AdjMCSystemCharge: TFloatField
      FieldName = 'MCSystemCharge'
      currency = True
    end
    object AdjABUCNPCStrandedDebts: TFloatField
      FieldName = 'ABUCNPCStrandedDebts'
      currency = True
    end
    object AdjUCNPCStrandedDebts: TFloatField
      FieldName = 'UCNPCStrandedDebts'
      currency = True
    end
    object AdjABUCNPCStrandedContCost: TFloatField
      FieldName = 'ABUCNPCStrandedContCost'
      currency = True
    end
    object AdjUCNPCStrandedContCost: TFloatField
      FieldName = 'UCNPCStrandedContCost'
      currency = True
    end
    object AdjABUCDUStrandedContCost: TFloatField
      FieldName = 'ABUCDUStrandedContCost'
      currency = True
    end
    object AdjUCDUStrandedContCost: TFloatField
      FieldName = 'UCDUStrandedContCost'
      currency = True
    end
    object AdjABUCME: TFloatField
      FieldName = 'ABUCME'
      currency = True
    end
    object AdjUCME: TFloatField
      FieldName = 'UCME'
      currency = True
    end
    object AdjABUCEqTaxesAndRoyalities: TFloatField
      FieldName = 'ABUCEqTaxesAndRoyalities'
      currency = True
    end
    object AdjUCEqTaxesAndRoyalties: TFloatField
      FieldName = 'UCEqTaxesAndRoyalties'
      currency = True
    end
    object AdjABUCEC: TFloatField
      FieldName = 'ABUCEC'
      currency = True
    end
    object AdjUCEC: TFloatField
      FieldName = 'UCEC'
      currency = True
    end
    object AdjABUCCrossSubRemoval: TFloatField
      FieldName = 'ABUCCrossSubRemoval'
      currency = True
    end
    object AdjUCCrossSubRemoval: TFloatField
      FieldName = 'UCCrossSubRemoval'
      currency = True
    end
    object AdjABICCrossSubsidyCharge: TFloatField
      FieldName = 'ABICCrossSubsidyCharge'
      currency = True
    end
    object AdjICCrossSubsidyCharge: TFloatField
      FieldName = 'ICCrossSubsidyCharge'
      currency = True
    end
    object AdjABPowerActRateRed: TFloatField
      FieldName = 'ABPowerActRateRed'
      currency = True
    end
    object AdjPowerActRateRed: TFloatField
      FieldName = 'PowerActRateRed'
      currency = True
    end
    object AdjABLifelineDiscSubs: TFloatField
      FieldName = 'ABLifelineDiscSubs'
      currency = True
    end
    object AdjLifelineDiscSubs: TFloatField
      FieldName = 'LifelineDiscSubs'
      currency = True
    end
    object AdjABLoanCondo: TFloatField
      FieldName = 'ABLoanCondo'
      currency = True
    end
    object AdjLoanCondo: TFloatField
      FieldName = 'LoanCondo'
      currency = True
    end
    object AdjABTransformerRental: TFloatField
      FieldName = 'ABTransformerRental'
      currency = True
    end
    object AdjTransformerRental: TFloatField
      FieldName = 'TransformerRental'
      currency = True
    end
    object AdjABOCCode1: TStringField
      FieldName = 'ABOCCode1'
      Size = 10
    end
    object AdjOCCode1: TStringField
      FieldName = 'OCCode1'
      Size = 10
    end
    object AdjABOCAmount1: TFloatField
      FieldName = 'ABOCAmount1'
      currency = True
    end
    object AdjOCAmount1: TFloatField
      FieldName = 'OCAmount1'
      currency = True
    end
    object AdjABOCCode2: TStringField
      FieldName = 'ABOCCode2'
      Size = 10
    end
    object AdjOCCode2: TStringField
      FieldName = 'OCCode2'
      Size = 10
    end
    object AdjABOCAmount2: TFloatField
      FieldName = 'ABOCAmount2'
      currency = True
    end
    object AdjOCAmount2: TFloatField
      FieldName = 'OCAmount2'
      currency = True
    end
    object AdjABOCCode3: TStringField
      FieldName = 'ABOCCode3'
      Size = 10
    end
    object AdjOCCode3: TStringField
      FieldName = 'OCCode3'
      Size = 10
    end
    object AdjABOCAmount3: TFloatField
      FieldName = 'ABOCAmount3'
      currency = True
    end
    object AdjOCAmount3: TFloatField
      FieldName = 'OCAmount3'
      currency = True
    end
    object AdjABTotalBill: TFloatField
      FieldName = 'ABTotalBill'
      currency = True
    end
    object AdjTotalBill: TFloatField
      FieldName = 'TotalBill'
      currency = True
    end
    object AdjBillNumber: TStringField
      FieldName = 'BillNumber'
      Size = 15
    end
    object AdjABOEBRNumber: TStringField
      FieldName = 'ABOEBRNumber'
      Size = 10
    end
    object AdjOEBRNumber: TStringField
      FieldName = 'OEBRNumber'
      Size = 10
    end
    object AdjAdjDate: TDateField
      FieldName = 'AdjDate'
    end
    object AdjAdjustmentCode: TStringField
      FieldName = 'AdjustmentCode'
      Size = 30
    end
    object AdjPostCode: TStringField
      FieldName = 'PostCode'
      FixedChar = True
      Size = 1
    end
    object AdjABLCCustMo: TFloatField
      FieldName = 'ABLCCustMo'
      currency = True
    end
    object AdjLCCustMo: TFloatField
      FieldName = 'LCCustMo'
      currency = True
    end
    object AdjABPrevYearAdjPowerCost: TFloatField
      FieldName = 'ABPrevYearAdjPowerCost'
      currency = True
    end
    object AdjPrevYearAdjPowerCost: TFloatField
      FieldName = 'PrevYearAdjPowerCost'
      currency = True
    end
    object AdjABSysLossUnderRecov: TFloatField
      FieldName = 'ABSysLossUnderRecov'
      currency = True
    end
    object AdjSysLossUnderRecov: TFloatField
      FieldName = 'SysLossUnderRecov'
      currency = True
    end
    object AdjABVAT: TFloatField
      FieldName = 'ABVAT'
      currency = True
    end
    object AdjVAT: TFloatField
      FieldName = 'VAT'
      currency = True
    end
    object AdjABVatDiscAmt: TFloatField
      FieldName = 'ABVatDiscAmt'
      currency = True
    end
    object AdjVATDiscAmt: TFloatField
      FieldName = 'VATDiscAmt'
      currency = True
    end
    object AdjABVATDist: TFloatField
      FieldName = 'ABVATDist'
      currency = True
    end
    object AdjVATDist: TFloatField
      FieldName = 'VATDist'
      currency = True
    end
    object AdjABVATDistDiscAmt: TFloatField
      FieldName = 'ABVATDistDiscAmt'
      currency = True
    end
    object AdjVATDistDiscAmt: TFloatField
      FieldName = 'VATDistDiscAmt'
      currency = True
    end
    object AdjABVATGenCO: TFloatField
      FieldName = 'ABVATGenCO'
      currency = True
    end
    object AdjVATGEnCO: TFloatField
      FieldName = 'VATGEnCO'
      currency = True
    end
    object AdjABVATGenCODiscAmt: TFloatField
      FieldName = 'ABVATGenCODiscAmt'
      currency = True
    end
    object AdjVATGenCODiscAmt: TFloatField
      FieldName = 'VATGenCODiscAmt'
      currency = True
    end
    object AdjABVATTransCO: TFloatField
      FieldName = 'ABVATTransCO'
      currency = True
    end
    object AdjVATTransCO: TFloatField
      FieldName = 'VATTransCO'
      currency = True
    end
    object AdjABVATTranscoDiscAmt: TFloatField
      FieldName = 'ABVATTranscoDiscAmt'
      currency = True
    end
    object AdjVATTranscoDiscAmt: TFloatField
      FieldName = 'VATTranscoDiscAmt'
      currency = True
    end
    object AdjABVATSystemLossGenCO: TFloatField
      FieldName = 'ABVATSystemLossGenCO'
      currency = True
    end
    object AdjVATSystemLossGenCO: TFloatField
      FieldName = 'VATSystemLossGenCO'
      currency = True
    end
    object AdjABVATSystemLossDiscAmt: TFloatField
      FieldName = 'ABVATSystemLossDiscAmt'
      currency = True
    end
    object AdjVATSystemLossDiscAmt: TFloatField
      FieldName = 'VATSystemLossDiscAmt'
      currency = True
    end
    object AdjABVATSystemLossTransCO: TFloatField
      FieldName = 'ABVATSystemLossTransCO'
      currency = True
    end
    object AdjVATSystemLossTransCO: TFloatField
      FieldName = 'VATSystemLossTransCO'
      currency = True
    end
    object AdjPreviousReadingDate: TDateField
      FieldName = 'PreviousReadingDate'
    end
    object AdjPresentReadingDate: TDateField
      FieldName = 'PresentReadingDate'
    end
    object AdjABDiffBillPerKwhr: TFloatField
      FieldName = 'ABDiffBillPerKwhr'
    end
    object AdjDiffBillPerKwhr: TFloatField
      FieldName = 'DiffBillPerKwhr'
    end
    object AdjABDiffBillPerKw: TFloatField
      FieldName = 'ABDiffBillPerKw'
    end
    object AdjDiffBillPerKW: TFloatField
      FieldName = 'DiffBillPerKW'
    end
    object AdjABDiffBillPerCust: TFloatField
      FieldName = 'ABDiffBillPerCust'
    end
    object AdjDiffBillPerCust: TFloatField
      FieldName = 'DiffBillPerCust'
    end
    object AdjABMCC: TFloatField
      FieldName = 'ABMCC'
    end
    object AdjMCC: TFloatField
      FieldName = 'MCC'
    end
    object AdjPKVROebrNumber: TStringField
      FieldName = 'PKVROebrNumber'
    end
    object AdjPKVRBillMonth: TStringField
      FieldName = 'PKVRBillMonth'
      Size = 4
    end
    object AdjPKVRAmount: TFloatField
      FieldName = 'PKVRAmount'
      currency = True
    end
    object AdjABTransSysAncRefund: TFloatField
      FieldName = 'ABTransSysAncRefund'
      currency = True
    end
    object AdjTransSysAncRefund: TFloatField
      FieldName = 'TransSysAncRefund'
      currency = True
    end
    object AdjABTransDemAncRefund: TFloatField
      FieldName = 'ABTransDemAncRefund'
      currency = True
    end
    object AdjTransDemAncRefund: TFloatField
      FieldName = 'TransDemAncRefund'
      currency = True
    end
    object AdjABVATTransAncRefund: TFloatField
      FieldName = 'ABVATTransAncRefund'
      currency = True
    end
    object AdjVATTransAncRefund: TFloatField
      FieldName = 'VATTransAncRefund'
      currency = True
    end
    object AdjABSCDisc: TFloatField
      FieldName = 'ABSCDisc'
    end
    object AdjSCDisc: TFloatField
      FieldName = 'SCDisc'
    end
    object AdjSCAmt4Disc: TFloatField
      FieldName = 'SCAmt4Disc'
    end
    object AdjRPTax: TFloatField
      FieldName = 'RPTax'
    end
    object AdjEntry: TIntegerField
      FieldName = 'Entry'
    end
    object AdjRateOrder: TStringField
      FieldName = 'RateOrder'
      Size = 6
    end
    object AdjABRPTax: TFloatField
      FieldName = 'ABRPTax'
    end
    object AdjOtherTransDemandCostAdj: TFloatField
      FieldName = 'OtherTransDemandCostAdj'
    end
    object AdjOtherGenRateAdj: TFloatField
      FieldName = 'OtherGenRateAdj'
    end
    object AdjABOtherGenRateAdj: TFloatField
      FieldName = 'ABOtherGenRateAdj'
    end
    object AdjOtherTransCostAdj: TFloatField
      FieldName = 'OtherTransCostAdj'
    end
    object AdjABOtherTransCostAdj: TFloatField
      FieldName = 'ABOtherTransCostAdj'
    end
    object AdjABOtherTransDemandCostAdj: TFloatField
      FieldName = 'ABOtherTransDemandCostAdj'
    end
    object AdjOtherSystemLossCostAdj: TFloatField
      FieldName = 'OtherSystemLossCostAdj'
    end
    object AdjABOtherSystemLossCostAdj: TFloatField
      FieldName = 'ABOtherSystemLossCostAdj'
    end
    object AdjOtherLifelineRateCostAdj: TFloatField
      FieldName = 'OtherLifelineRateCostAdj'
    end
    object AdjABOtherLifelineRateCostAdj: TFloatField
      FieldName = 'ABOtherLifelineRateCostAdj'
    end
    object AdjOtherSeniorCitizenRateAdj: TFloatField
      FieldName = 'OtherSeniorCitizenRateAdj'
    end
    object AdjABOtherSeniorCitizenRateAdj: TFloatField
      FieldName = 'ABOtherSeniorCitizenRateAdj'
    end
    object AdjABFitAll: TFloatField
      FieldName = 'ABFitAll'
    end
    object AdjFitAll: TFloatField
      FieldName = 'FitAll'
    end
    object AdjreferenceAtmNo: TStringField
      FieldName = 'referenceAtmNo'
      Size = 16
    end
    object AdjABreferenceAtmNo: TStringField
      FieldName = 'ABreferenceAtmNo'
      Size = 16
    end
    object AdjCM: TStringField
      FieldName = 'CM'
      FixedChar = True
      Size = 1
    end
    object AdjCMMultiplier: TFloatField
      FieldName = 'CMMultiplier'
    end
    object AdjCMPreviousReadingKWH: TFloatField
      FieldName = 'CMPreviousReadingKWH'
    end
    object AdjCMPresentReadingKWH: TFloatField
      FieldName = 'CMPresentReadingKWH'
    end
    object AdjCMKilowattHour: TFloatField
      FieldName = 'CMKilowattHour'
    end
    object AdjCMDemand: TFloatField
      FieldName = 'CMDemand'
    end
    object AdjreferenceAdjNo: TStringField
      FieldName = 'referenceAdjNo'
      Size = 12
    end
    object AdjPARec: TFloatField
      FieldName = 'PARec'
    end
    object AdjABPARec: TFloatField
      FieldName = 'ABPARec'
    end
    object AdjVATparec: TFloatField
      FieldName = 'VATparec'
    end
    object AdjABVATparec: TFloatField
      FieldName = 'ABVATparec'
    end
    object AdjABVATmcc: TFloatField
      FieldName = 'ABVATmcc'
    end
    object AdjVATmcc: TFloatField
      FieldName = 'VATmcc'
    end
    object AdjABgram: TFloatField
      FieldName = 'ABgram'
    end
    object Adjgram: TFloatField
      FieldName = 'gram'
    end
    object AdjABBTax: TFloatField
      FieldName = 'ABBTax'
    end
    object AdjBTax: TFloatField
      FieldName = 'BTax'
    end
    object AdjisGram: TBooleanField
      FieldName = 'isGram'
    end
  end
  object PBill: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'select tempbill.*'
      'from tempbill'
      'order by tempbill.accountnumber')
    FetchRows = 1
    FetchAll = False
    Left = 560
    Top = 8
    object PBillCode: TFloatField
      FieldName = 'Code'
    end
    object PBillArea: TStringField
      FieldName = 'Area'
      FixedChar = True
      Size = 3
    end
    object PBillBook: TStringField
      FieldName = 'Book'
      FixedChar = True
      Size = 3
    end
    object PBillSequence: TStringField
      FieldName = 'Sequence'
      Size = 4
    end
    object PBillAccountNumber: TStringField
      FieldName = 'AccountNumber'
      Size = 10
    end
    object PBillName: TStringField
      FieldName = 'Name'
      Size = 30
    end
    object PBillAddress: TStringField
      FieldName = 'Address'
      Size = 30
    end
    object PBillRateCode: TStringField
      FieldName = 'RateCode'
      FixedChar = True
      Size = 1
    end
    object PBillSerial: TStringField
      FieldName = 'Serial'
      Size = 15
    end
    object PBillMultiplier: TFloatField
      FieldName = 'Multiplier'
    end
    object PBillPreviousReadingDate: TDateField
      FieldName = 'PreviousReadingDate'
    end
    object PBillPresentReadingDate: TDateField
      FieldName = 'PresentReadingDate'
    end
    object PBillPresentReadingKWH: TFloatField
      FieldName = 'PresentReadingKWH'
    end
    object PBillPreviousReadingKWH: TFloatField
      FieldName = 'PreviousReadingKWH'
    end
    object PBillDiff: TFloatField
      FieldName = 'Diff'
    end
    object PBillDemand: TFloatField
      FieldName = 'Demand'
    end
    object PBillFlatRateWattage: TFloatField
      FieldName = 'FlatRateWattage'
    end
    object PBillFeedBackCode: TStringField
      FieldName = 'FeedBackCode'
      FixedChar = True
      Size = 2
    end
    object PBillCM: TStringField
      FieldName = 'CM'
      FixedChar = True
      Size = 1
    end
    object PBillCMMultiplier: TFloatField
      FieldName = 'CMMultiplier'
    end
    object PBillCMPreviousReadingKWH: TFloatField
      FieldName = 'CMPreviousReadingKWH'
    end
    object PBillCMPresentReadingKWH: TFloatField
      FieldName = 'CMPresentReadingKWH'
    end
    object PBillCMKilowattHour: TFloatField
      FieldName = 'CMKilowattHour'
    end
    object PBillCMDemand: TFloatField
      FieldName = 'CMDemand'
    end
    object PBillKilowattHour: TFloatField
      FieldName = 'KilowattHour'
    end
    object PBillKilowattUsed: TFloatField
      FieldName = 'KilowattUsed'
    end
    object PBillGenSysCharge: TFloatField
      FieldName = 'GenSysCharge'
      currency = True
    end
    object PBillHostCommCharge: TFloatField
      FieldName = 'HostCommCharge'
      currency = True
    end
    object PBillForexCharge: TFloatField
      FieldName = 'ForexCharge'
      currency = True
    end
    object PBillTCDemandCharge: TFloatField
      FieldName = 'TCDemandCharge'
      currency = True
    end
    object PBillTCTransSystemCharge: TFloatField
      FieldName = 'TCTransSystemCharge'
      currency = True
    end
    object PBillSystemLossCharge: TFloatField
      FieldName = 'SystemLossCharge'
      currency = True
    end
    object PBillDCDemandCharge: TFloatField
      FieldName = 'DCDemandCharge'
      currency = True
    end
    object PBillDCDistributionCharge: TFloatField
      FieldName = 'DCDistributionCharge'
      currency = True
    end
    object PBillSCRetCustCharge: TFloatField
      FieldName = 'SCRetCustCharge'
      currency = True
    end
    object PBillSCSupplySysCharge: TFloatField
      FieldName = 'SCSupplySysCharge'
      currency = True
    end
    object PBillMCRetailCustCharge: TFloatField
      FieldName = 'MCRetailCustCharge'
      currency = True
    end
    object PBillMCSystemCharge: TFloatField
      FieldName = 'MCSystemCharge'
      currency = True
    end
    object PBillUCNPCStrandedDebts: TFloatField
      FieldName = 'UCNPCStrandedDebts'
      currency = True
    end
    object PBillUCNPCStrandedContCost: TFloatField
      FieldName = 'UCNPCStrandedContCost'
      currency = True
    end
    object PBillUCDUStrandedContCost: TFloatField
      FieldName = 'UCDUStrandedContCost'
      currency = True
    end
    object PBillUCME: TFloatField
      FieldName = 'UCME'
      currency = True
    end
    object PBillUCEqTaxesAndRoyalties: TFloatField
      FieldName = 'UCEqTaxesAndRoyalties'
      currency = True
    end
    object PBillUCEC: TFloatField
      FieldName = 'UCEC'
      currency = True
    end
    object PBillUCCrossSubRemoval: TFloatField
      FieldName = 'UCCrossSubRemoval'
      currency = True
    end
    object PBillICCrossSubsidyCharge: TFloatField
      FieldName = 'ICCrossSubsidyCharge'
      currency = True
    end
    object PBillPowerActRateRed: TFloatField
      FieldName = 'PowerActRateRed'
      currency = True
    end
    object PBillLifelineDiscSubs: TFloatField
      FieldName = 'LifelineDiscSubs'
      currency = True
    end
    object PBillLoanCondo: TFloatField
      FieldName = 'LoanCondo'
      currency = True
    end
    object PBillTransformerRental: TFloatField
      FieldName = 'TransformerRental'
      currency = True
    end
    object PBillOCAmount1: TFloatField
      FieldName = 'OCAmount1'
      currency = True
    end
    object PBillOCCode1: TStringField
      FieldName = 'OCCode1'
      Size = 10
    end
    object PBillOCMo1: TFloatField
      FieldName = 'OCMo1'
    end
    object PBillOCTotal1: TFloatField
      FieldName = 'OCTotal1'
      currency = True
    end
    object PBillOCCode2: TStringField
      FieldName = 'OCCode2'
      Size = 10
    end
    object PBillOCAmount2: TFloatField
      FieldName = 'OCAmount2'
      currency = True
    end
    object PBillOCMo2: TFloatField
      FieldName = 'OCMo2'
    end
    object PBillOCTotal2: TFloatField
      FieldName = 'OCTotal2'
      currency = True
    end
    object PBillOCCode3: TStringField
      FieldName = 'OCCode3'
      Size = 10
    end
    object PBillOCAmount3: TFloatField
      FieldName = 'OCAmount3'
      currency = True
    end
    object PBillOCMo3: TFloatField
      FieldName = 'OCMo3'
    end
    object PBillOCTotal3: TFloatField
      FieldName = 'OCTotal3'
      currency = True
    end
    object PBillTotalBill: TFloatField
      FieldName = 'TotalBill'
      currency = True
    end
    object PBillBillNumber: TStringField
      FieldName = 'BillNumber'
      Size = 15
    end
    object PBillOEBRNumber: TStringField
      FieldName = 'OEBRNumber'
      Size = 10
    end
    object PBillBillMonth: TStringField
      FieldName = 'BillMonth'
      Size = 4
    end
    object PBillBillDate: TDateField
      FieldName = 'BillDate'
    end
    object PBillStatusCode: TStringField
      FieldName = 'StatusCode'
      FixedChar = True
      Size = 1
    end
    object PBillLCCustMo: TFloatField
      FieldName = 'LCCustMo'
      currency = True
    end
    object PBillPrevYearAdjPowerCost: TFloatField
      FieldName = 'PrevYearAdjPowerCost'
      currency = True
    end
    object PBillSysLossUnderRecov: TFloatField
      FieldName = 'SysLossUnderRecov'
      currency = True
    end
    object PBillVATDiscAmt: TFloatField
      FieldName = 'VATDiscAmt'
      currency = True
    end
    object PBillVATDistDiscAmt: TFloatField
      FieldName = 'VATDistDiscAmt'
      currency = True
    end
    object PBillVATGenCoDiscAmt: TFloatField
      FieldName = 'VATGenCoDiscAmt'
      currency = True
    end
    object PBillVATTransCoDiscAmt: TFloatField
      FieldName = 'VATTransCoDiscAmt'
      currency = True
    end
    object PBillVATSystemLossDiscAmt: TFloatField
      FieldName = 'VATSystemLossDiscAmt'
      currency = True
    end
    object PBillVATDist: TFloatField
      FieldName = 'VATDist'
      currency = True
    end
    object PBillVATGenCO: TFloatField
      FieldName = 'VATGenCO'
      currency = True
    end
    object PBillVATTransCO: TFloatField
      FieldName = 'VATTransCO'
      currency = True
    end
    object PBillVATSystemLossGenCO: TFloatField
      FieldName = 'VATSystemLossGenCO'
      currency = True
    end
    object PBillVATSystemLossTransCO: TFloatField
      FieldName = 'VATSystemLossTransCO'
      currency = True
    end
    object PBillVAT: TFloatField
      FieldName = 'VAT'
      currency = True
    end
    object PBillVATDisc: TFloatField
      FieldName = 'VATDisc'
    end
    object PBillAdjAmountBalance: TFloatField
      FieldName = 'AdjAmountBalance'
      currency = True
    end
    object PBillAdjAmountApplied: TFloatField
      FieldName = 'AdjAmountApplied'
      currency = True
    end
    object PBillReadTime: TStringField
      FieldName = 'ReadTime'
      Size = 10
    end
    object PBillDiffBillPerKwhr: TFloatField
      FieldName = 'DiffBillPerKwhr'
    end
    object PBillDiffBillPerKW: TFloatField
      FieldName = 'DiffBillPerKW'
    end
    object PBillDiffBillPerCust: TFloatField
      FieldName = 'DiffBillPerCust'
    end
    object PBillMCC: TFloatField
      FieldName = 'MCC'
      currency = True
    end
    object PBillPKVROebrNumber: TStringField
      FieldName = 'PKVROebrNumber'
    end
    object PBillPKVRBillMonth: TStringField
      FieldName = 'PKVRBillMonth'
      Size = 4
    end
    object PBillPKVRAmount: TFloatField
      FieldName = 'PKVRAmount'
      currency = True
    end
    object PBillTransSysAncRefund: TFloatField
      FieldName = 'TransSysAncRefund'
      currency = True
    end
    object PBillTransDemAncRefund: TFloatField
      FieldName = 'TransDemAncRefund'
      currency = True
    end
    object PBillVATTransAncRefund: TFloatField
      FieldName = 'VATTransAncRefund'
      currency = True
    end
    object PBillSCDisc: TFloatField
      FieldName = 'SCDisc'
      currency = True
    end
    object PBillWRateCode: TStringField
      FieldName = 'WRateCode'
      Size = 1
    end
    object PBillSCAmt4Disc: TFloatField
      FieldName = 'SCAmt4Disc'
    end
    object PBillCBook: TStringField
      FieldName = 'CBook'
      Size = 6
    end
    object PBillRPTax: TFloatField
      FieldName = 'RPTax'
      currency = True
    end
    object PBillFitAll: TFloatField
      FieldName = 'FitAll'
      currency = True
    end
    object PBillreferenceAtmNo: TStringField
      FieldName = 'referenceAtmNo'
      Size = 16
    end
    object PBillPARec: TFloatField
      FieldName = 'PARec'
      currency = True
    end
    object PBillgram: TFloatField
      FieldName = 'gram'
      currency = True
    end
    object PBillOtherGenRateAdj: TFloatField
      FieldName = 'OtherGenRateAdj'
      currency = True
    end
    object PBillOtherTransCostAdj: TFloatField
      FieldName = 'OtherTransCostAdj'
      currency = True
    end
    object PBillOtherTransDemandCostAdj: TFloatField
      FieldName = 'OtherTransDemandCostAdj'
      currency = True
    end
    object PBillOtherSystemLossCostAdj: TFloatField
      FieldName = 'OtherSystemLossCostAdj'
      currency = True
    end
    object PBillOtherLifelineRateCostAdj: TFloatField
      FieldName = 'OtherLifelineRateCostAdj'
      currency = True
    end
    object PBillOtherSeniorCitizenRateAdj: TFloatField
      FieldName = 'OtherSeniorCitizenRateAdj'
      currency = True
    end
  end
  object MRate: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'select * from meterrate')
    FetchAll = False
    Left = 41
    Top = 104
    object MRateMBillMonth: TStringField
      FieldName = 'MBillMonth'
      Size = 4
    end
    object MRateRateCode: TStringField
      FieldName = 'RateCode'
      FixedChar = True
      Size = 1
    end
    object MRateRemarks: TStringField
      FieldName = 'Remarks'
      Size = 40
    end
    object MRateGenSysRate: TFloatField
      FieldName = 'GenSysRate'
      Precision = 6
    end
    object MRateHostCommRate: TFloatField
      FieldName = 'HostCommRate'
      Precision = 6
    end
    object MRateFOREXRate: TFloatField
      FieldName = 'FOREXRate'
      Precision = 6
    end
    object MRateTCSystemRate: TFloatField
      FieldName = 'TCSystemRate'
      Precision = 6
    end
    object MRateSystemLossRate: TFloatField
      FieldName = 'SystemLossRate'
      Precision = 6
    end
    object MRateDCDemandRate: TFloatField
      FieldName = 'DCDemandRate'
      Precision = 6
    end
    object MRateDCSystemRate: TFloatField
      FieldName = 'DCSystemRate'
      Precision = 6
    end
    object MRateSCRetailCustRate: TFloatField
      FieldName = 'SCRetailCustRate'
      Precision = 6
    end
    object MRateSCSupplySysRate: TFloatField
      FieldName = 'SCSupplySysRate'
      Precision = 6
    end
    object MRateMCRetailCustRate: TFloatField
      FieldName = 'MCRetailCustRate'
      Precision = 6
    end
    object MRateMCSysRate: TFloatField
      FieldName = 'MCSysRate'
      Precision = 6
    end
    object MRateUCNPCStrandedDebtsRate: TFloatField
      FieldName = 'UCNPCStrandedDebtsRate'
      Precision = 6
    end
    object MRateUCNPCStrandedContCostRate: TFloatField
      FieldName = 'UCNPCStrandedContCostRate'
      Precision = 6
    end
    object MRateUCDUStrandedContCostRate: TFloatField
      FieldName = 'UCDUStrandedContCostRate'
      Precision = 6
    end
    object MRateUCMERate: TFloatField
      FieldName = 'UCMERate'
      Precision = 6
    end
    object MRateUCEqTaxesAndRoyaltiesRate: TFloatField
      FieldName = 'UCEqTaxesAndRoyaltiesRate'
      Precision = 6
    end
    object MRateUCECRate: TFloatField
      FieldName = 'UCECRate'
      Precision = 6
    end
    object MRateUCCrossSubsidyRemovalRate: TFloatField
      FieldName = 'UCCrossSubsidyRemovalRate'
      Precision = 6
    end
    object MRateICCrossSubsidyRate: TFloatField
      FieldName = 'ICCrossSubsidyRate'
      Precision = 6
    end
    object MRatePARARate: TFloatField
      FieldName = 'PARARate'
      Precision = 6
    end
    object MRateLifelineSubsidyRate: TFloatField
      FieldName = 'LifelineSubsidyRate'
      Precision = 6
    end
    object MRateLoanCondo: TFloatField
      FieldName = 'LoanCondo'
      Precision = 6
    end
    object MRateGram: TFloatField
      FieldName = 'Gram'
      Precision = 6
    end
    object MRateLCcustmo: TFloatField
      FieldName = 'LCcustmo'
      Precision = 6
    end
    object MRateVAT: TFloatField
      FieldName = 'VAT'
      Precision = 6
    end
    object MRateVATGenCo: TFloatField
      FieldName = 'VATGenCo'
      Precision = 6
    end
    object MRateVATTransCo: TFloatField
      FieldName = 'VATTransCo'
      Precision = 6
    end
    object MRateVATSystemLossGenCO: TFloatField
      FieldName = 'VATSystemLossGenCO'
      Precision = 6
    end
    object MRateVATSystemLossTransCO: TFloatField
      FieldName = 'VATSystemLossTransCO'
      Precision = 6
    end
    object MRateVATSystemLoss: TFloatField
      FieldName = 'VATSystemLoss'
      Precision = 6
    end
    object MRatePrevYearAdjPowerCost: TFloatField
      FieldName = 'PrevYearAdjPowerCost'
      Precision = 6
    end
    object MRateSysLossUnderRecov: TFloatField
      FieldName = 'SysLossUnderRecov'
      Precision = 6
    end
    object MRateDiffBillPerKwhr: TFloatField
      FieldName = 'DiffBillPerKwhr'
    end
    object MRateDIffBillPerKW: TFloatField
      FieldName = 'DIffBillPerKW'
    end
    object MRateDiffBillPerCust: TFloatField
      FieldName = 'DiffBillPerCust'
    end
    object MRateMCC: TFloatField
      FieldName = 'MCC'
    end
    object MRateDiffBillMonth: TStringField
      FieldName = 'DiffBillMonth'
      Size = 4
    end
    object MRateDiffBillApply: TStringField
      FieldName = 'DiffBillApply'
      Size = 1
    end
    object MRatePantawidApply: TStringField
      FieldName = 'PantawidApply'
      Size = 1
    end
    object MRateTransSysAncRefundTitle: TStringField
      FieldName = 'TransSysAncRefundTitle'
      Size = 30
    end
    object MRateTransSysAncRefund: TFloatField
      FieldName = 'TransSysAncRefund'
    end
    object MRateTransDemAncRefundTitle: TStringField
      FieldName = 'TransDemAncRefundTitle'
      Size = 30
    end
    object MRateTransDemAncRefund: TFloatField
      FieldName = 'TransDemAncRefund'
    end
    object MRateVATTransAncRefundTitle: TStringField
      FieldName = 'VATTransAncRefundTitle'
      Size = 30
    end
    object MRateVATTransAncRefund: TFloatField
      FieldName = 'VATTransAncRefund'
    end
    object MRateSCDiscApply: TStringField
      FieldName = 'SCDiscApply'
      Size = 1
    end
    object MRateWRateCode: TStringField
      FieldName = 'WRateCode'
      Size = 1
    end
    object MRateSCDiscPercent: TFloatField
      FieldName = 'SCDiscPercent'
    end
    object MRateSCDiscSubs: TFloatField
      FieldName = 'SCDiscSubs'
    end
    object MRatePantawidRecovApply: TStringField
      FieldName = 'PantawidRecovApply'
      Size = 1
    end
    object MRateWRSw: TStringField
      FieldName = 'WRSw'
      Size = 1
    end
    object MRateSCDiscKWHR: TLongWordField
      FieldName = 'SCDiscKWHR'
    end
    object MRateOtherGenRateAdj: TFloatField
      FieldName = 'OtherGenRateAdj'
    end
    object MRateOtherTransCostAdj: TFloatField
      FieldName = 'OtherTransCostAdj'
    end
    object MRateOtherTransDemandCostAdj: TFloatField
      FieldName = 'OtherTransDemandCostAdj'
    end
    object MRateOtherSystemLossCostAdj: TFloatField
      FieldName = 'OtherSystemLossCostAdj'
    end
    object MRateOtherLifelineRateCostAdj: TFloatField
      FieldName = 'OtherLifelineRateCostAdj'
    end
    object MRateOtherSeniorCitizenRateAdj: TFloatField
      FieldName = 'OtherSeniorCitizenRateAdj'
    end
    object MRateFitAllrate: TFloatField
      FieldName = 'FitAllrate'
    end
    object MRatePARec: TFloatField
      FieldName = 'PARec'
    end
    object MRateCreditableTaxWithheld: TFloatField
      FieldName = 'CreditableTaxWithheld'
    end
    object MRatefinalVat: TFloatField
      FieldName = 'finalVat'
    end
    object MRaterentalTaxWithheld: TFloatField
      FieldName = 'rentalTaxWithheld'
    end
    object MRateTCDemandRate: TFloatField
      FieldName = 'TCDemandRate'
    end
  end
  object Vicinity: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'select * from vicinity')
    FetchAll = False
    Left = 144
    Top = 104
    object VicinityArea: TStringField
      FieldName = 'Area'
      Origin = 'vicinity.Area'
      FixedChar = True
      Size = 3
    end
    object VicinityBook: TStringField
      FieldName = 'Book'
      Origin = 'vicinity.Book'
      FixedChar = True
      Size = 3
    end
    object VicinityAddress: TStringField
      FieldName = 'Address'
      Origin = 'vicinity.Address'
      Size = 50
    end
    object VicinityDistrict: TStringField
      FieldName = 'District'
      Origin = 'vicinity.District'
      FixedChar = True
      Size = 3
    end
  end
  object SalesTotal: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'SELECT COUNT( AccountNumber ) TotalConsumer,'
      '       SUM( KilowattHour ) KilowattHour,'
      '       SUM( KilowattUsed ) KilowattUsed,'
      '       SUM( GenSysCharge ) GenSysCharge,'
      '       SUM( HostCommCharge ) HostCommCharge,'
      '       SUM( ForexCharge ) ForexCharge,'
      '       SUM( TCDemandCharge ) TCDemandCharge,'
      '       SUM( TCTransSystemCharge ) TCTransSystemCharge,'
      '       SUM( SystemLossCharge ) SystemLossCharge,'
      '       SUM( DCDemandCharge ) DCDemandCharge,'
      '       SUM( DCDistributionCharge ) DCDistributionCharge,'
      '       SUM( SCRetCustCharge ) SCRetCustCharge,'
      '       SUM( SCSupplySysCharge ) SCSupplySysCharge,'
      '       SUM( MCRetailCustCharge ) MCRetailCustCharge,'
      '       SUM( MCSystemCharge ) MCSystemCharge,'
      '       SUM( UCNPCStrandedDebts ) UCNPCStrandedDebts,'
      '       SUM( UCNPCStrandedContCost ) UCNPCStrandedContCost,'
      '       SUM( UCDUStrandedContCost ) UCDUStrandedContCost,'
      '       SUM( UCME ) UCME,'
      '       SUM( UCEqTaxesAndRoyalties ) UCEqTaxesAndRoyalties, '
      '       SUM( UCEC ) UCEC,'
      '       SUM( UCCrossSubRemoval ) UCCrossSubRemoval, '
      '       SUM( ICCrossSubsidyCharge ) ICCrossSubsidyCharge, '
      '       SUM( PowerActRateRed ) PowerActRateRed, '
      '       SUM( LifelineDiscSubs ) LifelineDiscSubs,'
      '       SUM( LoanCondo ) LoanCondo,'
      
        '       SUM( if (TransformerRental is not null, TransformerRental' +
        ', 0) ) TransformerRental,'
      
        '       SUM( If (OCAmount1 is not null, OCAmount1, 0) ) OCAmount1' +
        ','
      
        '       SUM( If (OCAmount2 is not null, OCAmount2, 0) ) OCAmount2' +
        ','
      
        '       SUM( If (OCAmount3 is not null, OCAmount3, 0) ) OCAmount3' +
        ','
      '       SUM( TotalBill ) TotalBill,'
      '       SUM( LCCustMo ) LCCustMo,'
      '       SUM( PrevYearAdjPowerCost ) PrevYearAdjPowerCost,'
      '       SUM( SysLossUnderRecov ) SysLossUnderRecov,'
      '       SUM( VAT ) VAT,'
      '       SUM( VATDiscAmt ) VATDiscAmt,'
      '       SUM( VAT+VATDiscAmt ) VATNet,'
      '       SUM( VATDist ) VATDist,'
      '       SUM( VATDistDiscAmt ) VATDistDiscAmt,'
      '       SUM( VATDist+VATDistDiscAmt ) VATDistNet,'
      '       SUM( VATGenCO ) VATGenCO,'
      '       SUM( VATGenCODiscAmt ) VATGenCODiscAmt,'
      '       SUM( VATGenCO+VATGenCODiscAmt ) VATGenCONet,'
      '       SUM( VATTransCO ) VATTransCO,'
      '       SUM( VATTransCODiscAmt ) VATTransCODiscAmt,'
      '       SUM( VATTransCO+VATTransCODiscAmt ) VATTransCONet,'
      '       SUM( VATSystemLossGenCO ) VATSystemLossGenCO,'
      '       SUM( VATSystemLossDiscAmt ) VATSystemLossDiscAmt,'
      
        '       SUM( VATSystemLossGenCO+VATSystemLossDiscAmt ) VATSystemL' +
        'ossNet,'
      '       SUM( VATSystemLossTransCO ) VATSystemLossTransCO,'
      
        '       COUNT( if(ratecode = '#39'R'#39' and kilowatthour <= 15,accountnu' +
        'mber,'#39#39')) minimumbills,'
      
        '       SUM( if(ratecode = '#39'R'#39' and kilowatthour <= 15,kilowatthou' +
        'r,0)) minimumkilowatthour,'
      
        '       SUM( TotalBill - (if (TransformerRental is not null, Tran' +
        'sformerRental, 0) + '
      
        '                         If (OCAmount1 is not null, OCAmount1, 0' +
        ') + '
      
        '                         If (OCAmount2 is not null, OCAmount2, 0' +
        ') + '
      
        '                         If (OCAmount3 is not null, OCAmount3, 0' +
        ') + '
      '                         UCNPCStrandedDebts + '
      '                         UCNPCStrandedContCost + '
      '                         UCDUStrandedContCost + '
      '                         UCME + '
      '                         UCEqTaxesAndRoyalties + '
      '                         UCEC )) TotalPower'
      'FROM billhistory'
      '   where billmonth = :BillMonth and'
      '   RateCode IN ('#39'R'#39', '#39'C'#39', '#39'I'#39', '#39'S'#39', '#39'B'#39', '#39'P'#39') and'
      '   area between '#39'001'#39' and '#39'025'#39)
    FetchAll = False
    Left = 352
    Top = 395
    ParamData = <
      item
        DataType = ftString
        Name = 'BillMonth'
        Value = ''
      end>
    object SalesTotalTotalConsumer: TLargeintField
      FieldName = 'TotalConsumer'
    end
    object SalesTotalKilowattHour: TFloatField
      FieldName = 'KilowattHour'
    end
    object SalesTotalKilowattUsed: TFloatField
      FieldName = 'KilowattUsed'
    end
    object SalesTotalGenSysCharge: TFloatField
      FieldName = 'GenSysCharge'
      currency = True
    end
    object SalesTotalHostCommCharge: TFloatField
      FieldName = 'HostCommCharge'
      currency = True
    end
    object SalesTotalForexCharge: TFloatField
      FieldName = 'ForexCharge'
      currency = True
    end
    object SalesTotalTCDemandCharge: TFloatField
      FieldName = 'TCDemandCharge'
      currency = True
    end
    object SalesTotalTCTransSystemCharge: TFloatField
      FieldName = 'TCTransSystemCharge'
      currency = True
    end
    object SalesTotalSystemLossCharge: TFloatField
      FieldName = 'SystemLossCharge'
      currency = True
    end
    object SalesTotalDCDemandCharge: TFloatField
      FieldName = 'DCDemandCharge'
      currency = True
    end
    object SalesTotalDCDistributionCharge: TFloatField
      FieldName = 'DCDistributionCharge'
      currency = True
    end
    object SalesTotalSCRetCustCharge: TFloatField
      FieldName = 'SCRetCustCharge'
      currency = True
    end
    object SalesTotalSCSupplySysCharge: TFloatField
      FieldName = 'SCSupplySysCharge'
      currency = True
    end
    object SalesTotalMCRetailCustCharge: TFloatField
      FieldName = 'MCRetailCustCharge'
      currency = True
    end
    object SalesTotalMCSystemCharge: TFloatField
      FieldName = 'MCSystemCharge'
      currency = True
    end
    object SalesTotalUCNPCStrandedDebts: TFloatField
      FieldName = 'UCNPCStrandedDebts'
      currency = True
    end
    object SalesTotalUCNPCStrandedContCost: TFloatField
      FieldName = 'UCNPCStrandedContCost'
      currency = True
    end
    object SalesTotalUCDUStrandedContCost: TFloatField
      FieldName = 'UCDUStrandedContCost'
      currency = True
    end
    object SalesTotalUCME: TFloatField
      FieldName = 'UCME'
      currency = True
    end
    object SalesTotalUCEqTaxesAndRoyalties: TFloatField
      FieldName = 'UCEqTaxesAndRoyalties'
      currency = True
    end
    object SalesTotalUCEC: TFloatField
      FieldName = 'UCEC'
      currency = True
    end
    object SalesTotalUCCrossSubRemoval: TFloatField
      FieldName = 'UCCrossSubRemoval'
      currency = True
    end
    object SalesTotalICCrossSubsidyCharge: TFloatField
      FieldName = 'ICCrossSubsidyCharge'
      currency = True
    end
    object SalesTotalPowerActRateRed: TFloatField
      FieldName = 'PowerActRateRed'
      currency = True
    end
    object SalesTotalLifelineDiscSubs: TFloatField
      FieldName = 'LifelineDiscSubs'
      currency = True
    end
    object SalesTotalLoanCondo: TFloatField
      FieldName = 'LoanCondo'
      currency = True
    end
    object SalesTotalTransformerRental: TFloatField
      FieldName = 'TransformerRental'
      currency = True
    end
    object SalesTotalOCAmount1: TFloatField
      FieldName = 'OCAmount1'
      currency = True
    end
    object SalesTotalOCAmount2: TFloatField
      FieldName = 'OCAmount2'
      currency = True
    end
    object SalesTotalOCAmount3: TFloatField
      FieldName = 'OCAmount3'
      currency = True
    end
    object SalesTotalTotalBill: TFloatField
      FieldName = 'TotalBill'
      currency = True
    end
    object SalesTotalLCCustMo: TFloatField
      FieldName = 'LCCustMo'
      currency = True
    end
    object SalesTotalPrevYearAdjPowerCost: TFloatField
      FieldName = 'PrevYearAdjPowerCost'
      currency = True
    end
    object SalesTotalSysLossUnderRecov: TFloatField
      FieldName = 'SysLossUnderRecov'
      currency = True
    end
    object SalesTotalVAT: TFloatField
      FieldName = 'VAT'
      currency = True
    end
    object SalesTotalVATDiscAmt: TFloatField
      FieldName = 'VATDiscAmt'
      currency = True
    end
    object SalesTotalVATNet: TFloatField
      FieldName = 'VATNet'
      currency = True
    end
    object SalesTotalVATDist: TFloatField
      FieldName = 'VATDist'
      currency = True
    end
    object SalesTotalVATDistDiscAmt: TFloatField
      FieldName = 'VATDistDiscAmt'
      currency = True
    end
    object SalesTotalVATDistNet: TFloatField
      FieldName = 'VATDistNet'
      currency = True
    end
    object SalesTotalVATGenCO: TFloatField
      FieldName = 'VATGenCO'
      currency = True
    end
    object SalesTotalVATGenCODiscAmt: TFloatField
      FieldName = 'VATGenCODiscAmt'
      currency = True
    end
    object SalesTotalVATGenCONet: TFloatField
      FieldName = 'VATGenCONet'
      currency = True
    end
    object SalesTotalVATTransCO: TFloatField
      FieldName = 'VATTransCO'
      currency = True
    end
    object SalesTotalVATTransCODiscAmt: TFloatField
      FieldName = 'VATTransCODiscAmt'
      currency = True
    end
    object SalesTotalVATTransCONet: TFloatField
      FieldName = 'VATTransCONet'
      currency = True
    end
    object SalesTotalVATSystemLossGenCO: TFloatField
      FieldName = 'VATSystemLossGenCO'
      currency = True
    end
    object SalesTotalVATSystemLossDiscAmt: TFloatField
      FieldName = 'VATSystemLossDiscAmt'
      currency = True
    end
    object SalesTotalVATSystemLossNet: TFloatField
      FieldName = 'VATSystemLossNet'
      currency = True
    end
    object SalesTotalVATSystemLossTransCO: TFloatField
      FieldName = 'VATSystemLossTransCO'
      currency = True
    end
    object SalesTotalminimumbills: TLargeintField
      FieldName = 'minimumbills'
    end
    object SalesTotalminimumkilowatthour: TFloatField
      FieldName = 'minimumkilowatthour'
    end
    object SalesTotalTotalPower: TFloatField
      FieldName = 'TotalPower'
      currency = True
    end
  end
  object Bill: TMyTable
    TableName = 'tempbill'
    Connection = MyConnection1
    BeforeDelete = BillBeforeDelete
    Left = 456
    Top = 8
    object BillCode: TFloatField
      FieldName = 'Code'
    end
    object BillArea: TStringField
      FieldName = 'Area'
      FixedChar = True
      Size = 3
    end
    object BillBook: TStringField
      FieldName = 'Book'
      FixedChar = True
      Size = 3
    end
    object BillSequence: TStringField
      FieldName = 'Sequence'
      Size = 4
    end
    object BillAccountNumber: TStringField
      FieldName = 'AccountNumber'
      Size = 10
    end
    object BillName: TStringField
      FieldName = 'Name'
      Size = 30
    end
    object BillAddress: TStringField
      FieldName = 'Address'
      Size = 30
    end
    object BillRateCode: TStringField
      FieldName = 'RateCode'
      FixedChar = True
      Size = 1
    end
    object BillSerial: TStringField
      FieldName = 'Serial'
      Size = 15
    end
    object BillMultiplier: TFloatField
      FieldName = 'Multiplier'
    end
    object BillPreviousReadingDate: TDateField
      FieldName = 'PreviousReadingDate'
    end
    object BillPresentReadingDate: TDateField
      FieldName = 'PresentReadingDate'
    end
    object BillPresentReadingKWH: TFloatField
      FieldName = 'PresentReadingKWH'
    end
    object BillPreviousReadingKWH: TFloatField
      FieldName = 'PreviousReadingKWH'
    end
    object BillDiff: TFloatField
      FieldName = 'Diff'
    end
    object BillDemand: TFloatField
      FieldName = 'Demand'
    end
    object BillFlatRateWattage: TFloatField
      FieldName = 'FlatRateWattage'
    end
    object BillFeedBackCode: TStringField
      FieldName = 'FeedBackCode'
      FixedChar = True
      Size = 2
    end
    object BillCM: TStringField
      FieldName = 'CM'
      FixedChar = True
      Size = 1
    end
    object BillCMMultiplier: TFloatField
      FieldName = 'CMMultiplier'
    end
    object BillCMPreviousReadingKWH: TFloatField
      FieldName = 'CMPreviousReadingKWH'
    end
    object BillCMPresentReadingKWH: TFloatField
      FieldName = 'CMPresentReadingKWH'
    end
    object BillCMKilowattHour: TFloatField
      FieldName = 'CMKilowattHour'
    end
    object BillCMDemand: TFloatField
      FieldName = 'CMDemand'
    end
    object BillKilowattHour: TFloatField
      FieldName = 'KilowattHour'
    end
    object BillKilowattUsed: TFloatField
      FieldName = 'KilowattUsed'
    end
    object BillGenSysCharge: TFloatField
      FieldName = 'GenSysCharge'
    end
    object BillHostCommCharge: TFloatField
      FieldName = 'HostCommCharge'
    end
    object BillForexCharge: TFloatField
      FieldName = 'ForexCharge'
    end
    object BillTCDemandCharge: TFloatField
      FieldName = 'TCDemandCharge'
    end
    object BillTCTransSystemCharge: TFloatField
      FieldName = 'TCTransSystemCharge'
    end
    object BillSystemLossCharge: TFloatField
      FieldName = 'SystemLossCharge'
    end
    object BillDCDemandCharge: TFloatField
      FieldName = 'DCDemandCharge'
    end
    object BillDCDistributionCharge: TFloatField
      FieldName = 'DCDistributionCharge'
    end
    object BillSCRetCustCharge: TFloatField
      FieldName = 'SCRetCustCharge'
    end
    object BillSCSupplySysCharge: TFloatField
      FieldName = 'SCSupplySysCharge'
    end
    object BillMCRetailCustCharge: TFloatField
      FieldName = 'MCRetailCustCharge'
    end
    object BillMCSystemCharge: TFloatField
      FieldName = 'MCSystemCharge'
    end
    object BillUCNPCStrandedDebts: TFloatField
      FieldName = 'UCNPCStrandedDebts'
    end
    object BillUCNPCStrandedContCost: TFloatField
      FieldName = 'UCNPCStrandedContCost'
    end
    object BillUCDUStrandedContCost: TFloatField
      FieldName = 'UCDUStrandedContCost'
    end
    object BillUCME: TFloatField
      FieldName = 'UCME'
    end
    object BillUCEqTaxesAndRoyalties: TFloatField
      FieldName = 'UCEqTaxesAndRoyalties'
    end
    object BillUCEC: TFloatField
      FieldName = 'UCEC'
    end
    object BillUCCrossSubRemoval: TFloatField
      FieldName = 'UCCrossSubRemoval'
    end
    object BillICCrossSubsidyCharge: TFloatField
      FieldName = 'ICCrossSubsidyCharge'
    end
    object BillPowerActRateRed: TFloatField
      FieldName = 'PowerActRateRed'
    end
    object BillLifelineDiscSubs: TFloatField
      FieldName = 'LifelineDiscSubs'
    end
    object BillLoanCondo: TFloatField
      FieldName = 'LoanCondo'
    end
    object BillTransformerRental: TFloatField
      FieldName = 'TransformerRental'
    end
    object BillOCAmount1: TFloatField
      FieldName = 'OCAmount1'
    end
    object BillOCCode1: TStringField
      FieldName = 'OCCode1'
      Size = 10
    end
    object BillOCMo1: TFloatField
      FieldName = 'OCMo1'
    end
    object BillOCTotal1: TFloatField
      FieldName = 'OCTotal1'
    end
    object BillOCCode2: TStringField
      FieldName = 'OCCode2'
      Size = 10
    end
    object BillOCAmount2: TFloatField
      FieldName = 'OCAmount2'
    end
    object BillOCMo2: TFloatField
      FieldName = 'OCMo2'
    end
    object BillOCTotal2: TFloatField
      FieldName = 'OCTotal2'
    end
    object BillOCCode3: TStringField
      FieldName = 'OCCode3'
      Size = 10
    end
    object BillOCAmount3: TFloatField
      FieldName = 'OCAmount3'
    end
    object BillOCMo3: TFloatField
      FieldName = 'OCMo3'
    end
    object BillOCTotal3: TFloatField
      FieldName = 'OCTotal3'
    end
    object BillTotalBill: TFloatField
      FieldName = 'TotalBill'
      currency = True
    end
    object BillBillNumber: TStringField
      FieldName = 'BillNumber'
      Size = 15
    end
    object BillOEBRNumber: TStringField
      FieldName = 'OEBRNumber'
      Size = 10
    end
    object BillBillMonth: TStringField
      FieldName = 'BillMonth'
      Size = 4
    end
    object BillBillDate: TDateField
      FieldName = 'BillDate'
    end
    object BillStatusCode: TStringField
      FieldName = 'StatusCode'
      FixedChar = True
      Size = 1
    end
    object BillLCCustMo: TFloatField
      FieldName = 'LCCustMo'
    end
    object BillPrevYearAdjPowerCost: TFloatField
      FieldName = 'PrevYearAdjPowerCost'
    end
    object BillSysLossUnderRecov: TFloatField
      FieldName = 'SysLossUnderRecov'
    end
    object BillVATDisc: TFloatField
      FieldName = 'VATDisc'
    end
    object BillVATDiscAmt: TFloatField
      FieldName = 'VATDiscAmt'
    end
    object BillVATDistDiscAmt: TFloatField
      FieldName = 'VATDistDiscAmt'
    end
    object BillVATGenCoDiscAmt: TFloatField
      FieldName = 'VATGenCoDiscAmt'
    end
    object BillVATTransCoDiscAmt: TFloatField
      FieldName = 'VATTransCoDiscAmt'
    end
    object BillVATSystemLossDiscAmt: TFloatField
      FieldName = 'VATSystemLossDiscAmt'
    end
    object BillVATDist: TFloatField
      FieldName = 'VATDist'
    end
    object BillVATGenCO: TFloatField
      FieldName = 'VATGenCO'
    end
    object BillVATTransCO: TFloatField
      FieldName = 'VATTransCO'
    end
    object BillVATSystemLossGenCO: TFloatField
      FieldName = 'VATSystemLossGenCO'
    end
    object BillVATSystemLossTransCO: TFloatField
      FieldName = 'VATSystemLossTransCO'
    end
    object BillVAT: TFloatField
      FieldName = 'VAT'
    end
    object BillAdjAmountBalance: TFloatField
      FieldName = 'AdjAmountBalance'
    end
    object BillAdjAmountApplied: TFloatField
      FieldName = 'AdjAmountApplied'
    end
    object BillReadTime: TStringField
      FieldName = 'ReadTime'
      Size = 10
    end
    object BillDiffBillPerKwhr: TFloatField
      FieldName = 'DiffBillPerKwhr'
    end
    object BillDiffBillPerKW: TFloatField
      FieldName = 'DiffBillPerKW'
    end
    object BillDiffBillPerCust: TFloatField
      FieldName = 'DiffBillPerCust'
    end
    object BillMCC: TFloatField
      FieldName = 'MCC'
    end
    object BillPKVROebrNumber: TStringField
      FieldName = 'PKVROebrNumber'
    end
    object BillPKVRBillMonth: TStringField
      FieldName = 'PKVRBillMonth'
      Size = 4
    end
    object BillPKVRAmount: TFloatField
      FieldName = 'PKVRAmount'
    end
    object BillTransSysAncRefund: TFloatField
      FieldName = 'TransSysAncRefund'
    end
    object BillTransDemAncRefund: TFloatField
      FieldName = 'TransDemAncRefund'
    end
    object BillVATTransAncRefund: TFloatField
      FieldName = 'VATTransAncRefund'
    end
    object BillSCDisc: TFloatField
      FieldName = 'SCDisc'
    end
    object BillWRateCode: TStringField
      FieldName = 'WRateCode'
      Size = 1
    end
    object BillSCAmt4Disc: TFloatField
      FieldName = 'SCAmt4Disc'
    end
    object BillCBook: TStringField
      FieldName = 'CBook'
      Size = 6
    end
    object BillRPTax: TFloatField
      FieldName = 'RPTax'
    end
    object BillRateOrder: TStringField
      FieldName = 'RateOrder'
      Size = 6
    end
    object BillOtherGenRateAdj: TFloatField
      FieldName = 'OtherGenRateAdj'
    end
    object BillOtherTransCostAdj: TFloatField
      FieldName = 'OtherTransCostAdj'
    end
    object BillOtherTransDemandCostAdj: TFloatField
      FieldName = 'OtherTransDemandCostAdj'
    end
    object BillOtherSystemLossCostAdj: TFloatField
      FieldName = 'OtherSystemLossCostAdj'
    end
    object BillOtherLifelineRateCostAdj: TFloatField
      FieldName = 'OtherLifelineRateCostAdj'
    end
    object BillOtherSeniorCitizenRateAdj: TFloatField
      FieldName = 'OtherSeniorCitizenRateAdj'
    end
    object BillFitall: TFloatField
      FieldName = 'Fitall'
    end
    object BillreferenceAtmNo: TStringField
      FieldName = 'referenceAtmNo'
      Size = 16
    end
    object BillPARec: TFloatField
      FieldName = 'PARec'
    end
    object BillVATparec: TFloatField
      FieldName = 'VATparec'
    end
    object BillVATmcc: TFloatField
      FieldName = 'VATmcc'
    end
    object BillCreditableTaxWithheld: TFloatField
      FieldName = 'CreditableTaxWithheld'
    end
    object BillEntry: TIntegerField
      FieldName = 'Entry'
    end
    object BillOC1vat: TFloatField
      FieldName = 'OC1vat'
    end
    object BillOC2vat: TFloatField
      FieldName = 'OC2vat'
    end
    object BillOC3vat: TFloatField
      FieldName = 'OC3vat'
    end
    object BillBTax: TFloatField
      FieldName = 'BTax'
    end
    object BillFinalTaxWithheld: TFloatField
      FieldName = 'FinalTaxWithheld'
    end
    object Billgram: TFloatField
      FieldName = 'gram'
    end
    object BillisGram: TBooleanField
      FieldName = 'isGram'
    end
  end
  object Disco: TMyTable
    TableName = 'disconnection'
    Connection = MyConnection1
    Left = 144
    Top = 201
    object DiscoEntry: TIntegerField
      FieldName = 'Entry'
    end
    object DiscoCode: TFloatField
      FieldName = 'Code'
    end
    object DiscoDate: TDateField
      FieldName = 'Date'
    end
    object DiscoArea: TStringField
      FieldName = 'Area'
      FixedChar = True
      Size = 3
    end
    object DiscoBook: TStringField
      FieldName = 'Book'
      FixedChar = True
      Size = 3
    end
    object DiscoSequence: TStringField
      FieldName = 'Sequence'
      Size = 4
    end
    object DiscoAccountNumber: TStringField
      FieldName = 'AccountNumber'
      Size = 10
    end
    object DiscoName: TStringField
      FieldName = 'Name'
      Size = 50
    end
    object DiscoLastReading: TFloatField
      FieldName = 'LastReading'
    end
    object DiscoMeterBrand: TStringField
      FieldName = 'MeterBrand'
      Size = 10
    end
    object DiscoSerialNumber: TStringField
      FieldName = 'SerialNumber'
      Size = 15
    end
  end
  object Recon: TMyTable
    TableName = 'reconnection'
    Connection = MyConnection1
    Left = 248
    Top = 201
    object ReconEntry: TIntegerField
      FieldName = 'Entry'
    end
    object ReconCode: TFloatField
      FieldName = 'Code'
    end
    object ReconDate: TDateField
      FieldName = 'Date'
    end
    object ReconArea: TStringField
      FieldName = 'Area'
      FixedChar = True
      Size = 3
    end
    object ReconBook: TStringField
      FieldName = 'Book'
      FixedChar = True
      Size = 3
    end
    object ReconSequence: TStringField
      FieldName = 'Sequence'
      Size = 4
    end
    object ReconAccountNumber: TStringField
      FieldName = 'AccountNumber'
      Size = 10
    end
    object ReconName: TStringField
      FieldName = 'Name'
      Size = 50
    end
    object ReconInitialReading: TFloatField
      FieldName = 'InitialReading'
    end
    object ReconMeterBrand: TStringField
      FieldName = 'MeterBrand'
      Size = 10
    end
    object ReconSerialNumber: TStringField
      FieldName = 'SerialNumber'
      Size = 15
    end
  end
  object ChangeMeter: TMyTable
    TableName = 'changemeter'
    Connection = MyConnection1
    Left = 352
    Top = 201
    object ChangeMeterEntry: TIntegerField
      FieldName = 'Entry'
    end
    object ChangeMeterCode: TFloatField
      FieldName = 'Code'
    end
    object ChangeMeterDate: TDateField
      FieldName = 'Date'
    end
    object ChangeMeterArea: TStringField
      FieldName = 'Area'
      FixedChar = True
      Size = 3
    end
    object ChangeMeterBook: TStringField
      FieldName = 'Book'
      FixedChar = True
      Size = 3
    end
    object ChangeMeterSequence: TStringField
      FieldName = 'Sequence'
      Size = 4
    end
    object ChangeMeterAccountNumber: TStringField
      FieldName = 'AccountNumber'
      Size = 10
    end
    object ChangeMeterName: TStringField
      FieldName = 'Name'
      Size = 50
    end
    object ChangeMeterLastReading: TFloatField
      FieldName = 'LastReading'
    end
    object ChangeMeterOldMeterBrand: TStringField
      FieldName = 'OldMeterBrand'
      Size = 10
    end
    object ChangeMeterOldSerialNumber: TStringField
      FieldName = 'OldSerialNumber'
      Size = 15
    end
    object ChangeMeterOldMeterMult: TFloatField
      FieldName = 'OldMeterMult'
    end
    object ChangeMeterInitialReading: TFloatField
      FieldName = 'InitialReading'
    end
    object ChangeMeterNewMeterBrand: TStringField
      FieldName = 'NewMeterBrand'
      Size = 10
    end
    object ChangeMeterNewMeterSerial: TStringField
      FieldName = 'NewMeterSerial'
      Size = 15
    end
    object ChangeMeterNewMeterMult: TFloatField
      FieldName = 'NewMeterMult'
    end
    object ChangeMeterFeedBack: TStringField
      FieldName = 'FeedBack'
      FixedChar = True
      Size = 1
    end
    object ChangeMeterAveCons: TFloatField
      FieldName = 'AveCons'
    end
    object ChangeMeterPosted: TStringField
      FieldName = 'Posted'
      Size = 1
    end
    object ChangeMeterSealNumber: TStringField
      FieldName = 'SealNumber'
    end
  end
  object ChangeName: TMyTable
    TableName = 'changename'
    Connection = MyConnection1
    Left = 41
    Top = 298
    object ChangeNameEntry: TIntegerField
      FieldName = 'Entry'
    end
    object ChangeNameCode: TFloatField
      FieldName = 'Code'
    end
    object ChangeNameDate: TDateField
      FieldName = 'Date'
    end
    object ChangeNameArea: TStringField
      FieldName = 'Area'
      FixedChar = True
      Size = 3
    end
    object ChangeNameBook: TStringField
      FieldName = 'Book'
      FixedChar = True
      Size = 3
    end
    object ChangeNameSequence: TStringField
      FieldName = 'Sequence'
      Size = 4
    end
    object ChangeNameAccountNumber: TStringField
      FieldName = 'AccountNumber'
      Size = 10
    end
    object ChangeNameOldName: TStringField
      FieldName = 'OldName'
      Size = 40
    end
    object ChangeNameNewName: TStringField
      FieldName = 'NewName'
      Size = 40
    end
  end
  object TransferArea: TMyTable
    TableName = 'transferarea'
    Connection = MyConnection1
    Left = 144
    Top = 298
    object TransferAreaEntry: TIntegerField
      FieldName = 'Entry'
    end
    object TransferAreaCode: TFloatField
      FieldName = 'Code'
    end
    object TransferAreaDate: TDateField
      FieldName = 'Date'
    end
    object TransferAreaOldArea: TStringField
      FieldName = 'OldArea'
      FixedChar = True
      Size = 3
    end
    object TransferAreaOldBook: TStringField
      FieldName = 'OldBook'
      FixedChar = True
      Size = 3
    end
    object TransferAreaOldSequence: TStringField
      FieldName = 'OldSequence'
      Size = 4
    end
    object TransferAreaOldAccountNumber: TStringField
      FieldName = 'OldAccountNumber'
      Size = 10
    end
    object TransferAreaOldAddress: TStringField
      FieldName = 'OldAddress'
      Size = 30
    end
    object TransferAreaNewArea: TStringField
      FieldName = 'NewArea'
      FixedChar = True
      Size = 3
    end
    object TransferAreaNewBook: TStringField
      FieldName = 'NewBook'
      FixedChar = True
      Size = 3
    end
    object TransferAreaNewSequence: TStringField
      FieldName = 'NewSequence'
      Size = 4
    end
    object TransferAreaNewAccountNumber: TStringField
      FieldName = 'NewAccountNumber'
      Size = 10
    end
    object TransferAreaNewAddress: TStringField
      FieldName = 'NewAddress'
      Size = 30
    end
    object TransferAreaName: TStringField
      FieldName = 'Name'
      Size = 40
    end
  end
  object TSales: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'SELECT Area, '
      '       case Area '
      '        when '#39'001'#39' then '#39'RIZAL'#39
      '        when '#39'002'#39' then '#39'SIBUTAD'#39
      '        when '#39'003'#39' then '#39'MUTIA'#39
      '        when '#39'004'#39' then '#39'LA LIBERTAD'#39
      '        when '#39'005'#39' then '#39'SERGIO OSME'#209'A'#39
      '        when '#39'006'#39' then '#39'DAPITAN'#39
      '        when '#39'007'#39' then '#39'PI'#209'AN'#39
      '        when '#39'008'#39' then '#39'POLANCO'#39
      '        when '#39'009'#39' then '#39'DIPOLOG NORTH'#39
      '        when '#39'010'#39' then '#39'DIPOLOG SOUTH'#39
      '        when '#39'011'#39' then '#39'KATIPUNAN'#39
      '        when '#39'012'#39' then '#39'ROXAS'#39
      '        when '#39'013'#39' then '#39'MANUKAN'#39
      '        when '#39'014'#39' then '#39'JOSE DALMAN'#39
      '        when '#39'015'#39' then '#39'SINDANGAN'#39
      '        when '#39'016'#39' then '#39'LEON B. POSTIGO'#39
      '        when '#39'017'#39' then '#39'SIAYAN'#39
      '        when '#39'018'#39' then '#39'SALUG'#39
      '        when '#39'019'#39' then '#39'LILOY'#39
      '        when '#39'020'#39' then '#39'LABASON'#39
      '        when '#39'021'#39' then '#39'TAMPILISAN'#39
      '        when '#39'022'#39' then '#39'GODOD'#39
      '        when '#39'023'#39' then '#39'GUTALAC'#39
      '        when '#39'024'#39' then '#39'DAPITAN / PI'#209'AN'#39
      '        when '#39'025'#39' then '#39'KALAWIT'#39
      '        else '#39#39' '
      '       end '
      '       as address,'
      ''
      
        '       SUM( if(ratecode = '#39'R'#39' and kilowatthour <= 15,kilowatthou' +
        'r,null)) minimumkilowatthour,'
      
        '       Count( if(ratecode = '#39'R'#39' and kilowatthour <= 15,AccountNu' +
        'mber,null)) minimumbills,'
      '       Count( if(ratecode = '#39'R'#39',AccountNumber,null)) RBills,'
      '       SUM( if(ratecode = '#39'R'#39',kilowatthour,null)) RKilowatthour,'
      
        '       SUM( if(ratecode = '#39'R'#39',TotalBill - (if (TransformerRental' +
        ' is not null, TransformerRental, 0) + '
      
        '                                           If (OCAmount1 is not ' +
        'null, OCAmount1, 0) + '
      
        '                                           If (OCAmount2 is not ' +
        'null, OCAmount2, 0) + '
      
        '                                           If (OCAmount3 is not ' +
        'null, OCAmount3, 0) + '
      '                                           UCNPCStrandedDebts + '
      
        '                                           UCNPCStrandedContCost' +
        ' + '
      
        '                                           UCDUStrandedContCost ' +
        '+ '
      '                                           UCME + '
      
        '                                           UCEqTaxesAndRoyalties' +
        ' + '
      '                                           UCEC + '
      '                                           SystemLossCharge + '
      '                                           VAT +'
      
        '                                           VATDiscAmt),null)) RT' +
        'otalPower,'
      ''
      '       Count( if(ratecode = '#39'C'#39',AccountNumber,null)) CBills,'
      '       SUM( if(ratecode = '#39'C'#39',kilowatthour,null)) CKilowatthour,'
      
        '       SUM( if(ratecode = '#39'C'#39',TotalBill - (if (TransformerRental' +
        ' is not null, TransformerRental, 0) + '
      
        '                                           If (OCAmount1 is not ' +
        'null, OCAmount1, 0) + '
      
        '                                           If (OCAmount2 is not ' +
        'null, OCAmount2, 0) + '
      
        '                                           If (OCAmount3 is not ' +
        'null, OCAmount3, 0) + '
      '                                           UCNPCStrandedDebts + '
      
        '                                           UCNPCStrandedContCost' +
        ' + '
      
        '                                           UCDUStrandedContCost ' +
        '+ '
      '                                           UCME + '
      
        '                                           UCEqTaxesAndRoyalties' +
        ' + '
      '                                           UCEC + '
      '                                           SystemLossCharge + '
      '                                           VAT + '
      
        '                                           VATDiscAmt),null)) CT' +
        'otalPower,'
      ''
      '       Count( if(ratecode = '#39'I'#39',AccountNumber,null)) IBills,'
      '       SUM( if(ratecode = '#39'I'#39',kilowatthour,null)) IKilowatthour,'
      
        '       SUM( if(ratecode = '#39'I'#39',TotalBill - (if (TransformerRental' +
        ' is not null, TransformerRental, 0) + '
      
        '                                           If (OCAmount1 is not ' +
        'null, OCAmount1, 0) + '
      
        '                                           If (OCAmount2 is not ' +
        'null, OCAmount2, 0) + '
      
        '                                           If (OCAmount3 is not ' +
        'null, OCAmount3, 0) + '
      '                                           UCNPCStrandedDebts + '
      
        '                                           UCNPCStrandedContCost' +
        ' + '
      
        '                                           UCDUStrandedContCost ' +
        '+ '
      '                                           UCME + '
      
        '                                           UCEqTaxesAndRoyalties' +
        ' + '
      '                                           UCEC + '
      '                                           SystemLossCharge + '
      '                                           VAT +  '
      
        '                                           VATDiscAmt),null)) IT' +
        'otalPower,'
      ''
      '       Count( if(ratecode = '#39'P'#39',AccountNumber,null)) PBills,'
      '       SUM( if(ratecode = '#39'P'#39',kilowatthour,null)) PKilowatthour,'
      
        '       SUM( if(ratecode = '#39'P'#39',TotalBill - (if (TransformerRental' +
        ' is not null, TransformerRental, 0) + '
      
        '                                           If (OCAmount1 is not ' +
        'null, OCAmount1, 0) + '
      
        '                                           If (OCAmount2 is not ' +
        'null, OCAmount2, 0) + '
      
        '                                           If (OCAmount3 is not ' +
        'null, OCAmount3, 0) + '
      '                                           UCNPCStrandedDebts + '
      
        '                                           UCNPCStrandedContCost' +
        ' + '
      
        '                                           UCDUStrandedContCost ' +
        '+ '
      '                                           UCME + '
      
        '                                           UCEqTaxesAndRoyalties' +
        ' + '
      '                                           UCEC + '
      '                                           SystemLossCharge + '
      '                                           VAT +'
      
        '                                           VATDiscAmt),null)) PT' +
        'otalPower,'
      ''
      '       Count( if(ratecode = '#39'S'#39',AccountNumber,null)) SBills,'
      '       SUM( if(ratecode = '#39'S'#39',kilowatthour,null)) SKilowatthour,'
      
        '       SUM( if(ratecode = '#39'S'#39',TotalBill - (if (TransformerRental' +
        ' is not null, TransformerRental, 0) + '
      
        '                                           If (OCAmount1 is not ' +
        'null, OCAmount1, 0) + '
      
        '                                           If (OCAmount2 is not ' +
        'null, OCAmount2, 0) + '
      
        '                                           If (OCAmount3 is not ' +
        'null, OCAmount3, 0) + '
      '                                           UCNPCStrandedDebts + '
      
        '                                           UCNPCStrandedContCost' +
        ' + '
      
        '                                           UCDUStrandedContCost ' +
        '+ '
      '                                           UCME + '
      
        '                                           UCEqTaxesAndRoyalties' +
        ' + '
      '                                           UCEC + '
      '                                           SystemLossCharge + '
      '                                           VAT +'
      
        '                                           VATDiscAmt),null)) ST' +
        'otalPower,'
      ''
      '       Count( AccountNumber) TBills,'
      '       SUM( kilowatthour ) TKilowatthour,'
      
        '       SUM( TotalBill - (if (TransformerRental is not null, Tran' +
        'sformerRental, 0) + '
      
        '                         If (OCAmount1 is not null, OCAmount1, 0' +
        ') + '
      
        '                         If (OCAmount2 is not null, OCAmount2, 0' +
        ') + '
      
        '                         If (OCAmount3 is not null, OCAmount3, 0' +
        ') + '
      '                         UCNPCStrandedDebts + '
      '                         UCNPCStrandedContCost + '
      '                         UCDUStrandedContCost + '
      '                         UCME + '
      '                         UCEqTaxesAndRoyalties + '
      '                         UCEC + '
      '                         SystemLossCharge + '
      '                         VAT + '
      '                         VATDiscAmt)) TTotalPower,'
      '       SUM( UCME ) UCME,'
      '       SUM( UCEC ) UCEC,'
      '       SUM( SystemLossCharge ) SystemLossCharge,'
      '       SUM( VATDist ) VATDist,'
      '       SUM( VATDistDiscAmt ) VATDistDiscAmt,'
      '       SUM( VATDist+VATDistDiscAmt ) VATDistNet,'
      '       SUM( VATGenCO ) VATGenCO,'
      '       SUM( VATGenCODiscAmt ) VATGenCODiscAmt,'
      '       SUM( VATGenCO+VATGenCODiscAmt ) VATGenCONet,'
      '       SUM( VATTransCO ) VATTransCO,'
      '       SUM( VATTransCODiscAmt ) VATTransCODiscAmt,'
      '       SUM( VATTransCO+VATTransCODiscAmt ) VATTransCONet,'
      '       SUM( VATSystemLossGenCO ) VATSystemLossGenCO,'
      '       SUM( VATSystemLossDiscAmt ) VATSystemLossDiscAmt,'
      
        '       SUM( VATSystemLossGenCO+VATSystemLossDiscAmt ) VATSystemL' +
        'ossNet,'
      '       SUM( If (OCAmount1 is not null, OCAmount1, 0)+'
      '            If (OCAmount2 is not null, OCAmount2, 0)+'
      '            If (OCAmount3 is not null, OCAmount3, 0) ) OCAmount,'
      
        '       SUM( If (DiffBillPerKwhr is not null, DiffBillPerKwhr, 0)' +
        '+'
      '            If (DiffBillPerKw is not null, DiffBillPerKw, 0)+'
      
        '            If (DiffBillPerCust is not null, DiffBillPerCust, 0)' +
        ' ) DiffBill,'
      '       SUM( If (MCC is not null, MCC, 0) ) MCC,'
      
        '       SUM( If (PKVRAmount is not null, PKVRAmount, 0) ) PKVRAmo' +
        'unt,'
      '       SUM( Ifnull(TransSysAncRefund,0)) TransSysAncRefund,'
      '       SUM( Ifnull(TransDemAncRefund,0)) TransDemAncRefund,'
      '       SUM( Ifnull(VATTransAncRefund,0)) VATTransAncRefund,'
      '       SUM( If(SCDisc < 0,Ifnull(SCDisc,0),0)) SCDisc,'
      '       SUM( If(SCDisc >= 0,Ifnull(SCDisc,0),0)) SCDiscSubs'
      'FROM billhistory'
      '   where billmonth = :BillMonth and'
      '   RateCode IN ('#39'R'#39', '#39'C'#39', '#39'I'#39', '#39'S'#39', '#39'B'#39', '#39'P'#39') and'
      '   area between '#39'001'#39' and '#39'025'#39
      'GROUP BY Area'
      'ORDER BY Area')
    FetchAll = False
    Left = 456
    Top = 395
    ParamData = <
      item
        DataType = ftString
        Name = 'BillMonth'
        Value = '0106'
      end>
    object TSalesArea: TStringField
      FieldName = 'Area'
      FixedChar = True
      Size = 3
    end
    object TSalesaddress: TStringField
      FieldName = 'address'
      FixedChar = True
      Size = 15
    end
    object TSalesminimumkilowatthour: TFloatField
      FieldName = 'minimumkilowatthour'
    end
    object TSalesminimumbills: TLargeintField
      FieldName = 'minimumbills'
    end
    object TSalesRBills: TLargeintField
      FieldName = 'RBills'
    end
    object TSalesRKilowatthour: TFloatField
      FieldName = 'RKilowatthour'
    end
    object TSalesRTotalPower: TFloatField
      FieldName = 'RTotalPower'
      currency = True
    end
    object TSalesCBills: TLargeintField
      FieldName = 'CBills'
    end
    object TSalesCKilowatthour: TFloatField
      FieldName = 'CKilowatthour'
    end
    object TSalesCTotalPower: TFloatField
      FieldName = 'CTotalPower'
      currency = True
    end
    object TSalesIBills: TLargeintField
      FieldName = 'IBills'
    end
    object TSalesIKilowatthour: TFloatField
      FieldName = 'IKilowatthour'
    end
    object TSalesITotalPower: TFloatField
      FieldName = 'ITotalPower'
      currency = True
    end
    object TSalesPBills: TLargeintField
      FieldName = 'PBills'
    end
    object TSalesPKilowatthour: TFloatField
      FieldName = 'PKilowatthour'
    end
    object TSalesPTotalPower: TFloatField
      FieldName = 'PTotalPower'
      currency = True
    end
    object TSalesSBills: TLargeintField
      FieldName = 'SBills'
    end
    object TSalesSKilowatthour: TFloatField
      FieldName = 'SKilowatthour'
    end
    object TSalesSTotalPower: TFloatField
      FieldName = 'STotalPower'
      currency = True
    end
    object TSalesTBills: TLargeintField
      FieldName = 'TBills'
    end
    object TSalesTKilowatthour: TFloatField
      FieldName = 'TKilowatthour'
    end
    object TSalesTTotalPower: TFloatField
      FieldName = 'TTotalPower'
      currency = True
    end
    object TSalesUCME: TFloatField
      FieldName = 'UCME'
      currency = True
    end
    object TSalesUCEC: TFloatField
      FieldName = 'UCEC'
      currency = True
    end
    object TSalesVATDist: TFloatField
      FieldName = 'VATDist'
      currency = True
    end
    object TSalesVATDistDiscAmt: TFloatField
      FieldName = 'VATDistDiscAmt'
      currency = True
    end
    object TSalesVATDistNet: TFloatField
      FieldName = 'VATDistNet'
      currency = True
    end
    object TSalesVATGenCO: TFloatField
      FieldName = 'VATGenCO'
      currency = True
    end
    object TSalesVATGenCODiscAmt: TFloatField
      FieldName = 'VATGenCODiscAmt'
      currency = True
    end
    object TSalesVATGenCONet: TFloatField
      FieldName = 'VATGenCONet'
      currency = True
    end
    object TSalesVATTransCO: TFloatField
      FieldName = 'VATTransCO'
      currency = True
    end
    object TSalesVATTransCODiscAmt: TFloatField
      FieldName = 'VATTransCODiscAmt'
      currency = True
    end
    object TSalesVATTransCONet: TFloatField
      FieldName = 'VATTransCONet'
      currency = True
    end
    object TSalesVATSystemLossGenCO: TFloatField
      FieldName = 'VATSystemLossGenCO'
      currency = True
    end
    object TSalesVATSystemLossDiscAmt: TFloatField
      FieldName = 'VATSystemLossDiscAmt'
      currency = True
    end
    object TSalesVATSystemLossNet: TFloatField
      FieldName = 'VATSystemLossNet'
      currency = True
    end
    object TSalesOCAmount: TFloatField
      FieldName = 'OCAmount'
      currency = True
    end
    object TSalesSystemLossCharge: TFloatField
      FieldName = 'SystemLossCharge'
      currency = True
    end
    object TSalesMCC: TFloatField
      FieldName = 'MCC'
      currency = True
    end
    object TSalesDiffBill: TFloatField
      FieldName = 'DiffBill'
    end
    object TSalesPKVRAmount: TFloatField
      FieldName = 'PKVRAmount'
    end
    object TSalesTransSysAncRefund: TFloatField
      FieldName = 'TransSysAncRefund'
      currency = True
    end
    object TSalesTransDemAncRefund: TFloatField
      FieldName = 'TransDemAncRefund'
      currency = True
    end
    object TSalesVATTransAncRefund: TFloatField
      FieldName = 'VATTransAncRefund'
      currency = True
    end
    object TSalesSCDisc: TFloatField
      FieldName = 'SCDisc'
      currency = True
    end
    object TSalesSCDiscSubs: TFloatField
      FieldName = 'SCDiscSubs'
      currency = True
    end
  end
  object TSalesTotal: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      
        'SELECT SUM( if(ratecode = '#39'R'#39' and kilowatthour <= 15,kilowatthou' +
        'r,null)) minimumkilowatthour,'
      
        '       Count( if(ratecode = '#39'R'#39' and kilowatthour <= 15,AccountNu' +
        'mber,null)) minimumbills,'
      '       Count( if(ratecode = '#39'R'#39',AccountNumber,null)) RBills,'
      '       SUM( if(ratecode = '#39'R'#39',kilowatthour,null)) RKilowatthour,'
      
        '       SUM( if(ratecode = '#39'R'#39',TotalBill - (if (TransformerRental' +
        ' is not null, TransformerRental, 0) + '
      
        '                                           If (OCAmount1 is not ' +
        'null, OCAmount1, 0) + '
      
        '                                           If (OCAmount2 is not ' +
        'null, OCAmount2, 0) + '
      
        '                                           If (OCAmount3 is not ' +
        'null, OCAmount3, 0) + '
      '                                           UCNPCStrandedDebts + '
      
        '                                           UCNPCStrandedContCost' +
        ' + '
      
        '                                           UCDUStrandedContCost ' +
        '+ '
      '                                           UCME + '
      
        '                                           UCEqTaxesAndRoyalties' +
        ' + '
      '                                           UCEC + '
      '                                           SystemLossCharge + '
      '                                           VAT +'
      
        '                                           VATDiscAmt),null)) RT' +
        'otalPower,'
      ''
      '       Count( if(ratecode = '#39'C'#39',AccountNumber,null)) CBills,'
      '       SUM( if(ratecode = '#39'C'#39',kilowatthour,null)) CKilowatthour,'
      
        '       SUM( if(ratecode = '#39'C'#39',TotalBill - (if (TransformerRental' +
        ' is not null, TransformerRental, 0) + '
      
        '                                           If (OCAmount1 is not ' +
        'null, OCAmount1, 0) + '
      
        '                                           If (OCAmount2 is not ' +
        'null, OCAmount2, 0) + '
      
        '                                           If (OCAmount3 is not ' +
        'null, OCAmount3, 0) + '
      '                                           UCNPCStrandedDebts + '
      
        '                                           UCNPCStrandedContCost' +
        ' + '
      
        '                                           UCDUStrandedContCost ' +
        '+ '
      '                                           UCME + '
      
        '                                           UCEqTaxesAndRoyalties' +
        ' + '
      '                                           UCEC + '
      '                                           SystemLossCharge + '
      '                                           VAT + '
      
        '                                           VATDiscAmt),null)) CT' +
        'otalPower,'
      ''
      '       Count( if(ratecode = '#39'I'#39',AccountNumber,null)) IBills,'
      '       SUM( if(ratecode = '#39'I'#39',kilowatthour,null)) IKilowatthour,'
      
        '       SUM( if(ratecode = '#39'I'#39',TotalBill - (if (TransformerRental' +
        ' is not null, TransformerRental, 0) + '
      
        '                                           If (OCAmount1 is not ' +
        'null, OCAmount1, 0) + '
      
        '                                           If (OCAmount2 is not ' +
        'null, OCAmount2, 0) + '
      
        '                                           If (OCAmount3 is not ' +
        'null, OCAmount3, 0) + '
      '                                           UCNPCStrandedDebts + '
      
        '                                           UCNPCStrandedContCost' +
        ' + '
      
        '                                           UCDUStrandedContCost ' +
        '+ '
      '                                           UCME + '
      
        '                                           UCEqTaxesAndRoyalties' +
        ' + '
      '                                           UCEC + '
      '                                           SystemLossCharge + '
      '                                           VAT + '
      
        '                                           VATDiscAmt),null)) IT' +
        'otalPower,'
      ''
      '       Count( if(ratecode = '#39'P'#39',AccountNumber,null)) PBills,'
      '       SUM( if(ratecode = '#39'P'#39',kilowatthour,null)) PKilowatthour,'
      
        '       SUM( if(ratecode = '#39'P'#39',TotalBill - (if (TransformerRental' +
        ' is not null, TransformerRental, 0) + '
      
        '                                           If (OCAmount1 is not ' +
        'null, OCAmount1, 0) + '
      
        '                                           If (OCAmount2 is not ' +
        'null, OCAmount2, 0) + '
      
        '                                           If (OCAmount3 is not ' +
        'null, OCAmount3, 0) + '
      '                                           UCNPCStrandedDebts + '
      
        '                                           UCNPCStrandedContCost' +
        ' + '
      
        '                                           UCDUStrandedContCost ' +
        '+ '
      '                                           UCME + '
      
        '                                           UCEqTaxesAndRoyalties' +
        ' + '
      '                                           UCEC + '
      '                                           SystemLossCharge + '
      '                                           VAT + '
      
        '                                           VATDiscAmt),null)) PT' +
        'otalPower,'
      ''
      '       Count( if(ratecode = '#39'S'#39',AccountNumber,null)) SBills,'
      '       SUM( if(ratecode = '#39'S'#39',kilowatthour,null)) SKilowatthour,'
      
        '       SUM( if(ratecode = '#39'S'#39',TotalBill - (if (TransformerRental' +
        ' is not null, TransformerRental, 0) + '
      
        '                                           If (OCAmount1 is not ' +
        'null, OCAmount1, 0) + '
      
        '                                           If (OCAmount2 is not ' +
        'null, OCAmount2, 0) + '
      
        '                                           If (OCAmount3 is not ' +
        'null, OCAmount3, 0) + '
      '                                           UCNPCStrandedDebts + '
      
        '                                           UCNPCStrandedContCost' +
        ' + '
      
        '                                           UCDUStrandedContCost ' +
        '+ '
      '                                           UCME + '
      
        '                                           UCEqTaxesAndRoyalties' +
        ' + '
      '                                           UCEC + '
      '                                           SystemLossCharge + '
      '                                           VAT + '
      
        '                                           VATDiscAmt),null)) ST' +
        'otalPower,'
      ''
      '       Count( AccountNumber) TBills,'
      '       SUM( kilowatthour ) TKilowatthour,'
      
        '       SUM( TotalBill - (if (TransformerRental is not null, Tran' +
        'sformerRental, 0) + '
      
        '                         If (OCAmount1 is not null, OCAmount1, 0' +
        ') + '
      
        '                         If (OCAmount2 is not null, OCAmount2, 0' +
        ') + '
      
        '                         If (OCAmount3 is not null, OCAmount3, 0' +
        ') + '
      '                         UCNPCStrandedDebts + '
      '                         UCNPCStrandedContCost + '
      '                         UCDUStrandedContCost + '
      '                         UCME + '
      '                         UCEqTaxesAndRoyalties + '
      '                         UCEC + '
      '                         SystemLossCharge + '
      '                         VAT + '
      '                         VATDiscAmt)) TTotalPower,'
      ''
      '       SUM( UCME ) UCME,'
      '       SUM( UCEC ) UCEC,'
      '       SUM( SystemLossCharge ) SystemLossCharge,'
      '       SUM( VATDist ) VATDist,'
      '       SUM( VATDistDiscAmt ) VATDistDiscAmt,'
      '       SUM( VATDist+VATDistDiscAmt ) VATDistNet,'
      '       SUM( VATGenCO ) VATGenCO,'
      '       SUM( VATGenCODiscAmt ) VATGenCODiscAmt,'
      '       SUM( VATGenCO+VATGenCODiscAmt ) VATGenCONet,'
      '       SUM( VATTransCO ) VATTransCO,'
      '       SUM( VATTransCODiscAmt ) VATTransCODiscAmt,'
      '       SUM( VATTransCO+VATTransCODiscAmt ) VATTransCONet,'
      '       SUM( VATSystemLossGenCO ) VATSystemLossGenCO,'
      '       SUM( VATSystemLossDiscAmt ) VATSystemLossDiscAmt,'
      
        '       SUM( VATSystemLossGenCO+VATSystemLossDiscAmt ) VATSystemL' +
        'ossNet,'
      '       SUM( If (OCAmount1 is not null, OCAmount1, 0)+'
      '            If (OCAmount2 is not null, OCAmount2, 0)+'
      '            If (OCAmount3 is not null, OCAmount3, 0)) OCAmount,'
      
        '       SUM( If (DiffBillPerKwhr is not null, DiffBillPerKwhr, 0)' +
        '+'
      '            If (DiffBillPerKw is not null, DiffBillPerKw, 0)+'
      
        '            If (DiffBillPerCust is not null, DiffBillPerCust, 0)' +
        ' ) DiffBill,'
      '       SUM( If (MCC is not null, MCC, 0) ) MCC,'
      
        '       SUM( If (PKVRAmount is not null, PKVRAmount, 0) ) PKVRAmo' +
        'unt,'
      '       SUM( Ifnull(TransSysAncRefund,0)) TransSysAncRefund,'
      '       SUM( Ifnull(TransDemAncRefund,0)) TransDemAncRefund,'
      '       SUM( Ifnull(VATTransAncRefund,0)) VATTransAncRefund,'
      '       SUM( If(SCDisc < 0,Ifnull(SCDisc,0),0)) SCDisc,'
      '       SUM( If(SCDisc >= 0,Ifnull(SCDisc,0),0)) SCDiscSubs'
      'FROM billhistory'
      '   where billmonth = :BillMonth and'
      '   RateCode IN ('#39'R'#39', '#39'C'#39', '#39'I'#39', '#39'S'#39', '#39'B'#39', '#39'P'#39') and'
      '   area between '#39'001'#39' and '#39'025'#39)
    FetchAll = False
    Left = 352
    Top = 444
    ParamData = <
      item
        DataType = ftString
        Name = 'BillMonth'
        Value = '0106'
      end>
    object TSalesTotalminimumkilowatthour: TFloatField
      FieldName = 'minimumkilowatthour'
    end
    object TSalesTotalminimumbills: TLargeintField
      FieldName = 'minimumbills'
    end
    object TSalesTotalRBills: TLargeintField
      FieldName = 'RBills'
    end
    object TSalesTotalRKilowatthour: TFloatField
      FieldName = 'RKilowatthour'
    end
    object TSalesTotalRTotalPower: TFloatField
      FieldName = 'RTotalPower'
      currency = True
    end
    object TSalesTotalCBills: TLargeintField
      FieldName = 'CBills'
    end
    object TSalesTotalCKilowatthour: TFloatField
      FieldName = 'CKilowatthour'
    end
    object TSalesTotalCTotalPower: TFloatField
      FieldName = 'CTotalPower'
      currency = True
    end
    object TSalesTotalIBills: TLargeintField
      FieldName = 'IBills'
    end
    object TSalesTotalIKilowatthour: TFloatField
      FieldName = 'IKilowatthour'
    end
    object TSalesTotalITotalPower: TFloatField
      FieldName = 'ITotalPower'
      currency = True
    end
    object TSalesTotalPBills: TLargeintField
      FieldName = 'PBills'
    end
    object TSalesTotalPKilowatthour: TFloatField
      FieldName = 'PKilowatthour'
    end
    object TSalesTotalPTotalPower: TFloatField
      FieldName = 'PTotalPower'
      currency = True
    end
    object TSalesTotalSBills: TLargeintField
      FieldName = 'SBills'
    end
    object TSalesTotalSKilowatthour: TFloatField
      FieldName = 'SKilowatthour'
    end
    object TSalesTotalSTotalPower: TFloatField
      FieldName = 'STotalPower'
      currency = True
    end
    object TSalesTotalTBills: TLargeintField
      FieldName = 'TBills'
    end
    object TSalesTotalTKilowatthour: TFloatField
      FieldName = 'TKilowatthour'
    end
    object TSalesTotalTTotalPower: TFloatField
      FieldName = 'TTotalPower'
      currency = True
    end
    object TSalesTotalUCME: TFloatField
      FieldName = 'UCME'
      currency = True
    end
    object TSalesTotalUCEC: TFloatField
      FieldName = 'UCEC'
      currency = True
    end
    object TSalesTotalVATDist: TFloatField
      FieldName = 'VATDist'
      currency = True
    end
    object TSalesTotalVATDistDiscAmt: TFloatField
      FieldName = 'VATDistDiscAmt'
      currency = True
    end
    object TSalesTotalVATDistNet: TFloatField
      FieldName = 'VATDistNet'
      currency = True
    end
    object TSalesTotalVATGenCO: TFloatField
      FieldName = 'VATGenCO'
      currency = True
    end
    object TSalesTotalVATGenCODiscAmt: TFloatField
      FieldName = 'VATGenCODiscAmt'
      currency = True
    end
    object TSalesTotalVATGenCONet: TFloatField
      FieldName = 'VATGenCONet'
      currency = True
    end
    object TSalesTotalVATTransCO: TFloatField
      FieldName = 'VATTransCO'
      currency = True
    end
    object TSalesTotalVATTransCODiscAmt: TFloatField
      FieldName = 'VATTransCODiscAmt'
      currency = True
    end
    object TSalesTotalVATTransCONet: TFloatField
      FieldName = 'VATTransCONet'
      currency = True
    end
    object TSalesTotalVATSystemLossGenCO: TFloatField
      FieldName = 'VATSystemLossGenCO'
      currency = True
    end
    object TSalesTotalVATSystemLossDiscAmt: TFloatField
      FieldName = 'VATSystemLossDiscAmt'
      currency = True
    end
    object TSalesTotalVATSystemLossNet: TFloatField
      FieldName = 'VATSystemLossNet'
      currency = True
    end
    object TSalesTotalOCAmount: TFloatField
      FieldName = 'OCAmount'
      currency = True
    end
    object TSalesTotalSystemLossCharge: TFloatField
      FieldName = 'SystemLossCharge'
      currency = True
    end
    object TSalesTotalDiffBill: TFloatField
      FieldName = 'DiffBill'
    end
    object TSalesTotalMCC: TFloatField
      FieldName = 'MCC'
      currency = True
    end
    object TSalesTotalPKVRAmount: TFloatField
      FieldName = 'PKVRAmount'
      currency = True
    end
    object TSalesTotalTransSysAncRefund: TFloatField
      FieldName = 'TransSysAncRefund'
      currency = True
    end
    object TSalesTotalTransDemAncRefund: TFloatField
      FieldName = 'TransDemAncRefund'
      currency = True
    end
    object TSalesTotalVATTransAncRefund: TFloatField
      FieldName = 'VATTransAncRefund'
      currency = True
    end
    object TSalesTotalSCDisc: TFloatField
      FieldName = 'SCDisc'
      currency = True
    end
    object TSalesTotalSCDiscSubs: TFloatField
      FieldName = 'SCDiscSubs'
      currency = True
    end
  end
  object TSalesLateBills: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'SELECT Area, '
      '       case Area '
      '        when '#39'001'#39' then '#39'RIZAL'#39
      '        when '#39'002'#39' then '#39'SIBUTAD'#39
      '        when '#39'003'#39' then '#39'MUTIA'#39
      '        when '#39'004'#39' then '#39'LA LIBERTAD'#39
      '        when '#39'005'#39' then '#39'SERGIO OSME'#209'A'#39
      '        when '#39'006'#39' then '#39'DAPITAN'#39
      '        when '#39'007'#39' then '#39'PI'#209'AN'#39
      '        when '#39'008'#39' then '#39'POLANCO'#39
      '        when '#39'009'#39' then '#39'DIPOLOG NORTH'#39
      '        when '#39'010'#39' then '#39'DIPOLOG SOUTH'#39
      '        when '#39'011'#39' then '#39'KATIPUNAN'#39
      '        when '#39'012'#39' then '#39'ROXAS'#39
      '        when '#39'013'#39' then '#39'MANUKAN'#39
      '        when '#39'014'#39' then '#39'JOSE DALMAN'#39
      '        when '#39'015'#39' then '#39'SINDANGAN'#39
      '        when '#39'016'#39' then '#39'LEON B. POSTIGO'#39
      '        when '#39'017'#39' then '#39'SIAYAN'#39
      '        when '#39'018'#39' then '#39'SALUG'#39
      '        when '#39'019'#39' then '#39'LILOY'#39
      '        when '#39'020'#39' then '#39'LABASON'#39
      '        when '#39'021'#39' then '#39'TAMPILISAN'#39
      '        when '#39'022'#39' then '#39'GODOD'#39
      '        when '#39'023'#39' then '#39'GUTALAC'#39
      '        when '#39'024'#39' then '#39'DAPITAN / PI'#209'AN'#39
      '        when '#39'025'#39' then '#39'KALAWIT'#39
      '        else '#39#39' '
      '       end '
      '       as address,'
      ''
      
        '       SUM( if(ratecode = '#39'R'#39' and kilowatthour <= 15,kilowatthou' +
        'r,null)) minimumkilowatthour,'
      
        '       Count( if(ratecode = '#39'R'#39' and kilowatthour <= 15,AccountNu' +
        'mber,null)) minimumbills,'
      '       Count( if(ratecode = '#39'R'#39',AccountNumber,null)) RBills,'
      '       SUM( if(ratecode = '#39'R'#39',kilowatthour,null)) RKilowatthour,'
      
        '       SUM( if(ratecode = '#39'R'#39',TotalBill - (if (TransformerRental' +
        ' is not null, TransformerRental, 0) + '
      
        '                                           If (OCAmount1 is not ' +
        'null, OCAmount1, 0) + '
      
        '                                           If (OCAmount2 is not ' +
        'null, OCAmount2, 0) + '
      
        '                                           If (OCAmount3 is not ' +
        'null, OCAmount3, 0) + '
      '                                           UCNPCStrandedDebts + '
      
        '                                           UCNPCStrandedContCost' +
        ' + '
      
        '                                           UCDUStrandedContCost ' +
        '+ '
      '                                           UCME + '
      
        '                                           UCEqTaxesAndRoyalties' +
        ' + '
      '                                           UCEC + '
      '                                           SystemLossCharge + '
      '                                           VAT + '
      
        '                                           VATDiscAmt),null)) RT' +
        'otalPower,'
      ''
      '       Count( if(ratecode = '#39'C'#39',AccountNumber,null)) CBills,'
      '       SUM( if(ratecode = '#39'C'#39',kilowatthour,null)) CKilowatthour,'
      
        '       SUM( if(ratecode = '#39'C'#39',TotalBill - (if (TransformerRental' +
        ' is not null, TransformerRental, 0) + '
      
        '                                           If (OCAmount1 is not ' +
        'null, OCAmount1, 0) + '
      
        '                                           If (OCAmount2 is not ' +
        'null, OCAmount2, 0) + '
      
        '                                           If (OCAmount3 is not ' +
        'null, OCAmount3, 0) + '
      '                                           UCNPCStrandedDebts + '
      
        '                                           UCNPCStrandedContCost' +
        ' + '
      
        '                                           UCDUStrandedContCost ' +
        '+ '
      '                                           UCME + '
      
        '                                           UCEqTaxesAndRoyalties' +
        ' + '
      '                                           UCEC + '
      '                                           SystemLossCharge + '
      '                                           VAT + '
      
        '                                           VATDiscAmt),null)) CT' +
        'otalPower,'
      ''
      '       Count( if(ratecode = '#39'I'#39',AccountNumber,null)) IBills,'
      '       SUM( if(ratecode = '#39'I'#39',kilowatthour,null)) IKilowatthour,'
      
        '       SUM( if(ratecode = '#39'I'#39',TotalBill - (if (TransformerRental' +
        ' is not null, TransformerRental, 0) + '
      
        '                                           If (OCAmount1 is not ' +
        'null, OCAmount1, 0) + '
      
        '                                           If (OCAmount2 is not ' +
        'null, OCAmount2, 0) + '
      
        '                                           If (OCAmount3 is not ' +
        'null, OCAmount3, 0) + '
      '                                           UCNPCStrandedDebts + '
      
        '                                           UCNPCStrandedContCost' +
        ' + '
      
        '                                           UCDUStrandedContCost ' +
        '+ '
      '                                           UCME + '
      
        '                                           UCEqTaxesAndRoyalties' +
        ' + '
      '                                           UCEC + '
      '                                           SystemLossCharge + '
      '                                           VAT + '
      
        '                                           VATDiscAmt),null)) IT' +
        'otalPower,'
      ''
      '       Count( if(ratecode = '#39'P'#39',AccountNumber,null)) PBills,'
      '       SUM( if(ratecode = '#39'P'#39',kilowatthour,null)) PKilowatthour,'
      
        '       SUM( if(ratecode = '#39'P'#39',TotalBill - (if (TransformerRental' +
        ' is not null, TransformerRental, 0) + '
      
        '                                           If (OCAmount1 is not ' +
        'null, OCAmount1, 0) + '
      
        '                                           If (OCAmount2 is not ' +
        'null, OCAmount2, 0) + '
      
        '                                           If (OCAmount3 is not ' +
        'null, OCAmount3, 0) + '
      '                                           UCNPCStrandedDebts + '
      
        '                                           UCNPCStrandedContCost' +
        ' + '
      
        '                                           UCDUStrandedContCost ' +
        '+ '
      '                                           UCME + '
      
        '                                           UCEqTaxesAndRoyalties' +
        ' + '
      '                                           UCEC + '
      '                                           SystemLossCharge + '
      '                                           VAT +'
      
        '                                           VATDiscAmt),null)) PT' +
        'otalPower,'
      ''
      '       Count( if(ratecode = '#39'S'#39',AccountNumber,null)) SBills,'
      '       SUM( if(ratecode = '#39'S'#39',kilowatthour,null)) SKilowatthour,'
      
        '       SUM( if(ratecode = '#39'S'#39',TotalBill - (if (TransformerRental' +
        ' is not null, TransformerRental, 0) + '
      
        '                                           If (OCAmount1 is not ' +
        'null, OCAmount1, 0) + '
      
        '                                           If (OCAmount2 is not ' +
        'null, OCAmount2, 0) + '
      
        '                                           If (OCAmount3 is not ' +
        'null, OCAmount3, 0) + '
      '                                           UCNPCStrandedDebts + '
      
        '                                           UCNPCStrandedContCost' +
        ' + '
      
        '                                           UCDUStrandedContCost ' +
        '+ '
      '                                           UCME + '
      
        '                                           UCEqTaxesAndRoyalties' +
        ' + '
      '                                           UCEC + '
      '                                           SystemLossCharge + '
      '                                           VAT +'
      
        '                                           VATDiscAmt),null)) ST' +
        'otalPower,'
      ''
      '       Count( AccountNumber) TBills,'
      '       SUM( kilowatthour ) TKilowatthour,'
      
        '       SUM( TotalBill - (if (TransformerRental is not null, Tran' +
        'sformerRental, 0) + '
      
        '                         If (OCAmount1 is not null, OCAmount1, 0' +
        ') + '
      
        '                         If (OCAmount2 is not null, OCAmount2, 0' +
        ') + '
      
        '                         If (OCAmount3 is not null, OCAmount3, 0' +
        ') + '
      '                         UCNPCStrandedDebts + '
      '                         UCNPCStrandedContCost + '
      '                         UCDUStrandedContCost + '
      '                         UCME + '
      '                         UCEqTaxesAndRoyalties + '
      '                         UCEC + '
      '                         SystemLossCharge + '
      '                         VAT +'
      '                         VATDiscAmt)) TTotalPower,'
      '       SUM( UCME ) UCME,'
      '       SUM( UCEC ) UCEC,'
      '       SUM( SystemLossCharge ) SystemLossCharge,'
      '       SUM( VATDist ) VATDist,'
      '       SUM( VATDistDiscAmt ) VATDistDiscAmt,'
      '       SUM( VATDist+VATDistDiscAmt ) VATDistNet,'
      '       SUM( VATGenCO ) VATGenCO,'
      '       SUM( VATGenCODiscAmt ) VATGenCODiscAmt,'
      '       SUM( VATGenCO+VATGenCODiscAmt ) VATGenCONet,'
      '       SUM( VATTransCO ) VATTransCO,'
      '       SUM( VATTransCODiscAmt ) VATTransCODiscAmt,'
      '       SUM( VATTransCO+VATTransCODiscAmt ) VATTransCONet,'
      '       SUM( VATSystemLossGenCO ) VATSystemLossGenCO,'
      '       SUM( VATSystemLossDiscAmt ) VATSystemLossDiscAmt,'
      
        '       SUM( VATSystemLossGenCO+VATSystemLossDiscAmt ) VATSystemL' +
        'ossNet,'
      '       SUM( If (OCAmount1 is not null, OCAmount1, 0) + '
      '            If (OCAmount2 is not null, OCAmount2, 0) + '
      '            If (OCAmount3 is not null, OCAmount3, 0) ) OCAmount,'
      
        '       SUM( If (DiffBillPerKwhr is not null, DiffBillPerKwhr, 0)' +
        '+'
      '            If (DiffBillPerKw is not null, DiffBillPerKw, 0)+'
      
        '            If (DiffBillPerCust is not null, DiffBillPerCust, 0)' +
        ' ) DiffBill,'
      '       SUM( If (MCC is not null, MCC, 0) ) MCC,'
      '       SUM( Ifnull(TransSysAncRefund,0)) TransSysAncRefund,'
      '       SUM( Ifnull(TransDemAncRefund,0)) TransDemAncRefund,'
      '       SUM( Ifnull(VATTransAncRefund,0)) VATTransAncRefund,'
      '       SUM( If(SCDisc < 0,Ifnull(SCDisc,0),0)) SCDisc,'
      '       SUM( If(SCDisc >= 0,Ifnull(SCDisc,0),0)) SCDiscSubs'
      'FROM latebillhistory'
      '   where billdate between :datefrom and :dateto and'
      '   RateCode IN ('#39'R'#39', '#39'C'#39', '#39'I'#39', '#39'S'#39', '#39'B'#39', '#39'P'#39') and'
      '   area between '#39'001'#39' and '#39'025'#39
      'GROUP BY Area'
      'ORDER BY Area')
    FetchAll = False
    Left = 664
    Top = 346
    ParamData = <
      item
        DataType = ftString
        Name = 'datefrom'
        Value = ''
      end
      item
        DataType = ftUnknown
        Name = 'dateto'
        Value = nil
      end>
    object TSalesLateBillsArea: TStringField
      FieldName = 'Area'
      FixedChar = True
      Size = 3
    end
    object TSalesLateBillsaddress: TStringField
      FieldName = 'address'
      FixedChar = True
      Size = 15
    end
    object TSalesLateBillsminimumkilowatthour: TFloatField
      FieldName = 'minimumkilowatthour'
    end
    object TSalesLateBillsminimumbills: TLargeintField
      FieldName = 'minimumbills'
    end
    object TSalesLateBillsRBills: TLargeintField
      FieldName = 'RBills'
    end
    object TSalesLateBillsRKilowatthour: TFloatField
      FieldName = 'RKilowatthour'
    end
    object TSalesLateBillsRTotalPower: TFloatField
      FieldName = 'RTotalPower'
      currency = True
    end
    object TSalesLateBillsCBills: TLargeintField
      FieldName = 'CBills'
    end
    object TSalesLateBillsCKilowatthour: TFloatField
      FieldName = 'CKilowatthour'
    end
    object TSalesLateBillsCTotalPower: TFloatField
      FieldName = 'CTotalPower'
      currency = True
    end
    object TSalesLateBillsIBills: TLargeintField
      FieldName = 'IBills'
    end
    object TSalesLateBillsIKilowatthour: TFloatField
      FieldName = 'IKilowatthour'
    end
    object TSalesLateBillsITotalPower: TFloatField
      FieldName = 'ITotalPower'
      currency = True
    end
    object TSalesLateBillsPBills: TLargeintField
      FieldName = 'PBills'
    end
    object TSalesLateBillsPKilowatthour: TFloatField
      FieldName = 'PKilowatthour'
    end
    object TSalesLateBillsPTotalPower: TFloatField
      FieldName = 'PTotalPower'
      currency = True
    end
    object TSalesLateBillsSBills: TLargeintField
      FieldName = 'SBills'
    end
    object TSalesLateBillsSKilowatthour: TFloatField
      FieldName = 'SKilowatthour'
    end
    object TSalesLateBillsSTotalPower: TFloatField
      FieldName = 'STotalPower'
      currency = True
    end
    object TSalesLateBillsTBills: TLargeintField
      FieldName = 'TBills'
    end
    object TSalesLateBillsTKilowatthour: TFloatField
      FieldName = 'TKilowatthour'
    end
    object TSalesLateBillsTTotalPower: TFloatField
      FieldName = 'TTotalPower'
      currency = True
    end
    object TSalesLateBillsUCME: TFloatField
      FieldName = 'UCME'
      currency = True
    end
    object TSalesLateBillsUCEC: TFloatField
      FieldName = 'UCEC'
      currency = True
    end
    object TSalesLateBillsVATDist: TFloatField
      FieldName = 'VATDist'
      currency = True
    end
    object TSalesLateBillsVATDistDiscAmt: TFloatField
      FieldName = 'VATDistDiscAmt'
      currency = True
    end
    object TSalesLateBillsVATDistNet: TFloatField
      FieldName = 'VATDistNet'
      currency = True
    end
    object TSalesLateBillsVATGenCO: TFloatField
      FieldName = 'VATGenCO'
      currency = True
    end
    object TSalesLateBillsVATGenCODiscAmt: TFloatField
      FieldName = 'VATGenCODiscAmt'
      currency = True
    end
    object TSalesLateBillsVATGenCONet: TFloatField
      FieldName = 'VATGenCONet'
      currency = True
    end
    object TSalesLateBillsVATTransCO: TFloatField
      FieldName = 'VATTransCO'
      currency = True
    end
    object TSalesLateBillsVATTransCODiscAmt: TFloatField
      FieldName = 'VATTransCODiscAmt'
      currency = True
    end
    object TSalesLateBillsVATTransCONet: TFloatField
      FieldName = 'VATTransCONet'
      currency = True
    end
    object TSalesLateBillsVATSystemLossGenCO: TFloatField
      FieldName = 'VATSystemLossGenCO'
      currency = True
    end
    object TSalesLateBillsVATSystemLossDiscAmt: TFloatField
      FieldName = 'VATSystemLossDiscAmt'
      currency = True
    end
    object TSalesLateBillsVATSystemLossNet: TFloatField
      FieldName = 'VATSystemLossNet'
      currency = True
    end
    object TSalesLateBillsOCAmount: TFloatField
      FieldName = 'OCAmount'
      currency = True
    end
    object TSalesLateBillsSystemLossCharge: TFloatField
      FieldName = 'SystemLossCharge'
      currency = True
    end
    object TSalesLateBillsDiffBill: TFloatField
      FieldName = 'DiffBill'
    end
    object TSalesLateBillsMCC: TFloatField
      FieldName = 'MCC'
      currency = True
    end
    object TSalesLateBillsTransSysAncRefund: TFloatField
      FieldName = 'TransSysAncRefund'
      currency = True
    end
    object TSalesLateBillsTransDemAncRefund: TFloatField
      FieldName = 'TransDemAncRefund'
      currency = True
    end
    object TSalesLateBillsVATTransAncRefund: TFloatField
      FieldName = 'VATTransAncRefund'
      currency = True
    end
    object TSalesLateBillsSCDisc: TFloatField
      FieldName = 'SCDisc'
      currency = True
    end
    object TSalesLateBillsSCDiscSubs: TFloatField
      FieldName = 'SCDiscSubs'
      currency = True
    end
  end
  object TSalesTotalLateBills: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      
        'SELECT SUM( if(ratecode = '#39'R'#39' and kilowatthour <= 15,kilowatthou' +
        'r,null)) minimumkilowatthour,'
      
        '       Count( if(ratecode = '#39'R'#39' and kilowatthour <= 15,AccountNu' +
        'mber,null)) minimumbills,'
      '       Count( if(ratecode = '#39'R'#39',AccountNumber,null)) RBills,'
      '       SUM( if(ratecode = '#39'R'#39',kilowatthour,null)) RKilowatthour,'
      
        '       SUM( if(ratecode = '#39'R'#39',TotalBill - (if (TransformerRental' +
        ' is not null, TransformerRental, 0) + '
      
        '                                           If (OCAmount1 is not ' +
        'null, OCAmount1, 0) + '
      
        '                                           If (OCAmount2 is not ' +
        'null, OCAmount2, 0) + '
      
        '                                           If (OCAmount3 is not ' +
        'null, OCAmount3, 0) + '
      '                                           UCNPCStrandedDebts + '
      
        '                                           UCNPCStrandedContCost' +
        ' + '
      
        '                                           UCDUStrandedContCost ' +
        '+ '
      '                                           UCME + '
      
        '                                           UCEqTaxesAndRoyalties' +
        ' + '
      '                                           UCEC + '
      '                                           SystemLossCharge + '
      '                                           VAT +'
      
        '                                           VATDiscAmt),null)) RT' +
        'otalPower,'
      ''
      '       Count( if(ratecode = '#39'C'#39',AccountNumber,null)) CBills,'
      '       SUM( if(ratecode = '#39'C'#39',kilowatthour,null)) CKilowatthour,'
      
        '       SUM( if(ratecode = '#39'C'#39',TotalBill - (if (TransformerRental' +
        ' is not null, TransformerRental, 0) + '
      
        '                                           If (OCAmount1 is not ' +
        'null, OCAmount1, 0) + '
      
        '                                           If (OCAmount2 is not ' +
        'null, OCAmount2, 0) + '
      
        '                                           If (OCAmount3 is not ' +
        'null, OCAmount3, 0) + '
      '                                           UCNPCStrandedDebts + '
      
        '                                           UCNPCStrandedContCost' +
        ' + '
      
        '                                           UCDUStrandedContCost ' +
        '+ '
      '                                           UCME + '
      
        '                                           UCEqTaxesAndRoyalties' +
        ' + '
      '                                           UCEC + '
      '                                           SystemLossCharge + '
      '                                           VAT +'
      
        '                                           VATDiscAmt),null)) CT' +
        'otalPower,'
      ''
      '       Count( if(ratecode = '#39'I'#39',AccountNumber,null)) IBills,'
      '       SUM( if(ratecode = '#39'I'#39',kilowatthour,null)) IKilowatthour,'
      
        '       SUM( if(ratecode = '#39'I'#39',TotalBill - (if (TransformerRental' +
        ' is not null, TransformerRental, 0) + '
      
        '                                           If (OCAmount1 is not ' +
        'null, OCAmount1, 0) + '
      
        '                                           If (OCAmount2 is not ' +
        'null, OCAmount2, 0) + '
      
        '                                           If (OCAmount3 is not ' +
        'null, OCAmount3, 0) + '
      '                                           UCNPCStrandedDebts + '
      
        '                                           UCNPCStrandedContCost' +
        ' + '
      
        '                                           UCDUStrandedContCost ' +
        '+ '
      '                                           UCME + '
      
        '                                           UCEqTaxesAndRoyalties' +
        ' + '
      '                                           UCEC + '
      '                                           SystemLossCharge + '
      '                                           VAT +'
      
        '                                           VATDiscAmt),null)) IT' +
        'otalPower,'
      ''
      '       Count( if(ratecode = '#39'P'#39',AccountNumber,null)) PBills,'
      '       SUM( if(ratecode = '#39'P'#39',kilowatthour,null)) PKilowatthour,'
      
        '       SUM( if(ratecode = '#39'P'#39',TotalBill - (if (TransformerRental' +
        ' is not null, TransformerRental, 0) + '
      
        '                                           If (OCAmount1 is not ' +
        'null, OCAmount1, 0) + '
      
        '                                           If (OCAmount2 is not ' +
        'null, OCAmount2, 0) + '
      
        '                                           If (OCAmount3 is not ' +
        'null, OCAmount3, 0) + '
      '                                           UCNPCStrandedDebts + '
      
        '                                           UCNPCStrandedContCost' +
        ' + '
      
        '                                           UCDUStrandedContCost ' +
        '+ '
      '                                           UCME + '
      
        '                                           UCEqTaxesAndRoyalties' +
        ' + '
      '                                           UCEC + '
      '                                           SystemLossCharge + '
      '                                           VAT +  '
      
        '                                           VATDiscAmt),null)) PT' +
        'otalPower,'
      ''
      '       Count( if(ratecode = '#39'S'#39',AccountNumber,null)) SBills,'
      '       SUM( if(ratecode = '#39'S'#39',kilowatthour,null)) SKilowatthour,'
      
        '       SUM( if(ratecode = '#39'S'#39',TotalBill - (if (TransformerRental' +
        ' is not null, TransformerRental, 0) + '
      
        '                                           If (OCAmount1 is not ' +
        'null, OCAmount1, 0) + '
      
        '                                           If (OCAmount2 is not ' +
        'null, OCAmount2, 0) + '
      
        '                                           If (OCAmount3 is not ' +
        'null, OCAmount3, 0) + '
      '                                           UCNPCStrandedDebts + '
      
        '                                           UCNPCStrandedContCost' +
        ' + '
      
        '                                           UCDUStrandedContCost ' +
        '+ '
      '                                           UCME + '
      
        '                                           UCEqTaxesAndRoyalties' +
        ' + '
      '                                           UCEC + '
      '                                           SystemLossCharge + '
      '                                           VAT + '
      
        '                                           VATDiscAmt),null)) ST' +
        'otalPower,'
      ''
      '       Count( AccountNumber) TBills,'
      '       SUM( kilowatthour ) TKilowatthour,'
      
        '       SUM( TotalBill - (if (TransformerRental is not null, Tran' +
        'sformerRental, 0) + '
      
        '                         If (OCAmount1 is not null, OCAmount1, 0' +
        ') + '
      
        '                         If (OCAmount2 is not null, OCAmount2, 0' +
        ') + '
      
        '                         If (OCAmount3 is not null, OCAmount3, 0' +
        ') + '
      '                         UCNPCStrandedDebts + '
      '                         UCNPCStrandedContCost + '
      '                         UCDUStrandedContCost + '
      '                         UCME + '
      '                         UCEqTaxesAndRoyalties + '
      '                         UCEC + '
      '                         SystemLossCharge + '
      '                         VAT + '
      '                         VATDiscAmt)) TTotalPower,'
      ''
      '       SUM( UCME ) UCME,'
      '       SUM( UCEC ) UCEC,'
      '       SUM( SystemLossCharge ) SystemLossCharge,'
      '       SUM( VATDist ) VATDist,'
      '       SUM( VATDistDiscAmt ) VATDistDiscAmt,'
      '       SUM( VATDist+VATDistDiscAmt ) VATDistNet,'
      '       SUM( VATGenCO ) VATGenCO,'
      '       SUM( VATGenCODiscAmt ) VATGenCODiscAmt,'
      '       SUM( VATGenCO+VATGenCODiscAmt ) VATGenCONet,'
      '       SUM( VATTransCO ) VATTransCO,'
      '       SUM( VATTransCODiscAmt ) VATTransCODiscAmt,'
      '       SUM( VATTransCO+VATTransCODiscAmt ) VATTransCONet,'
      '       SUM( VATSystemLossGenCO ) VATSystemLossGenCO,'
      '       SUM( VATSystemLossDiscAmt ) VATSystemLossDiscAmt,'
      
        '       SUM( VATSystemLossGenCO+VATSystemLossDiscAmt ) VATSystemL' +
        'ossNet,'
      '       SUM( If (OCAmount1 is not null, OCAmount1, 0)+'
      '            If (OCAmount2 is not null, OCAmount2, 0)+'
      '            If (OCAmount3 is not null, OCAmount3, 0) ) OCAmount,'
      
        '       SUM( If (DiffBillPerKwhr is not null, DiffBillPerKwhr, 0)' +
        '+'
      '            If (DiffBillPerKw is not null, DiffBillPerKw, 0)+'
      
        '            If (DiffBillPerCust is not null, DiffBillPerCust, 0)' +
        ' ) DiffBill,'
      '       SUM( If (MCC is not null, MCC, 0) ) MCC,'
      '       SUM( Ifnull(TransSysAncRefund,0)) TransSysAncRefund,'
      '       SUM( Ifnull(TransDemAncRefund,0)) TransDemAncRefund,'
      '       SUM( Ifnull(VATTransAncRefund,0)) VATTransAncRefund,'
      '       SUM( If(SCDisc < 0,Ifnull(SCDisc,0),0)) SCDisc,'
      '       SUM( If(SCDisc >= 0,Ifnull(SCDisc,0),0)) SCDiscSubs'
      'FROM latebillhistory'
      '   where billdate between :datefrom and :dateto and'
      '   RateCode IN ('#39'R'#39', '#39'C'#39', '#39'I'#39', '#39'S'#39', '#39'B'#39', '#39'P'#39') and'
      '   area between '#39'001'#39' and '#39'025'#39)
    FetchAll = False
    Left = 560
    Top = 395
    ParamData = <
      item
        DataType = ftString
        Name = 'datefrom'
        Value = ''
      end
      item
        DataType = ftUnknown
        Name = 'dateto'
        Value = nil
      end>
    object TSalesTotalLateBillsminimumkilowatthour: TFloatField
      FieldName = 'minimumkilowatthour'
    end
    object TSalesTotalLateBillsminimumbills: TLargeintField
      FieldName = 'minimumbills'
    end
    object TSalesTotalLateBillsRBills: TLargeintField
      FieldName = 'RBills'
    end
    object TSalesTotalLateBillsRKilowatthour: TFloatField
      FieldName = 'RKilowatthour'
    end
    object TSalesTotalLateBillsRTotalPower: TFloatField
      FieldName = 'RTotalPower'
      currency = True
    end
    object TSalesTotalLateBillsCBills: TLargeintField
      FieldName = 'CBills'
    end
    object TSalesTotalLateBillsCKilowatthour: TFloatField
      FieldName = 'CKilowatthour'
    end
    object TSalesTotalLateBillsCTotalPower: TFloatField
      FieldName = 'CTotalPower'
      currency = True
    end
    object TSalesTotalLateBillsIBills: TLargeintField
      FieldName = 'IBills'
    end
    object TSalesTotalLateBillsIKilowatthour: TFloatField
      FieldName = 'IKilowatthour'
    end
    object TSalesTotalLateBillsITotalPower: TFloatField
      FieldName = 'ITotalPower'
      currency = True
    end
    object TSalesTotalLateBillsPBills: TLargeintField
      FieldName = 'PBills'
    end
    object TSalesTotalLateBillsPKilowatthour: TFloatField
      FieldName = 'PKilowatthour'
    end
    object TSalesTotalLateBillsPTotalPower: TFloatField
      FieldName = 'PTotalPower'
      currency = True
    end
    object TSalesTotalLateBillsSBills: TLargeintField
      FieldName = 'SBills'
    end
    object TSalesTotalLateBillsSKilowatthour: TFloatField
      FieldName = 'SKilowatthour'
    end
    object TSalesTotalLateBillsSTotalPower: TFloatField
      FieldName = 'STotalPower'
      currency = True
    end
    object TSalesTotalLateBillsTBills: TLargeintField
      FieldName = 'TBills'
    end
    object TSalesTotalLateBillsTKilowatthour: TFloatField
      FieldName = 'TKilowatthour'
    end
    object TSalesTotalLateBillsTTotalPower: TFloatField
      FieldName = 'TTotalPower'
      currency = True
    end
    object TSalesTotalLateBillsUCME: TFloatField
      FieldName = 'UCME'
      currency = True
    end
    object TSalesTotalLateBillsUCEC: TFloatField
      FieldName = 'UCEC'
      currency = True
    end
    object TSalesTotalLateBillsVATDist: TFloatField
      FieldName = 'VATDist'
      currency = True
    end
    object TSalesTotalLateBillsVATDistDiscAmt: TFloatField
      FieldName = 'VATDistDiscAmt'
      currency = True
    end
    object TSalesTotalLateBillsVATDistNet: TFloatField
      FieldName = 'VATDistNet'
      currency = True
    end
    object TSalesTotalLateBillsVATGenCO: TFloatField
      FieldName = 'VATGenCO'
      currency = True
    end
    object TSalesTotalLateBillsVATGenCODiscAmt: TFloatField
      FieldName = 'VATGenCODiscAmt'
      currency = True
    end
    object TSalesTotalLateBillsVATGenCONet: TFloatField
      FieldName = 'VATGenCONet'
      currency = True
    end
    object TSalesTotalLateBillsVATTransCO: TFloatField
      FieldName = 'VATTransCO'
      currency = True
    end
    object TSalesTotalLateBillsVATTransCODiscAmt: TFloatField
      FieldName = 'VATTransCODiscAmt'
      currency = True
    end
    object TSalesTotalLateBillsVATTransCONet: TFloatField
      FieldName = 'VATTransCONet'
      currency = True
    end
    object TSalesTotalLateBillsVATSystemLossGenCO: TFloatField
      FieldName = 'VATSystemLossGenCO'
      currency = True
    end
    object TSalesTotalLateBillsVATSystemLossDiscAmt: TFloatField
      FieldName = 'VATSystemLossDiscAmt'
      currency = True
    end
    object TSalesTotalLateBillsVATSystemLossNet: TFloatField
      FieldName = 'VATSystemLossNet'
      currency = True
    end
    object TSalesTotalLateBillsOCAmount: TFloatField
      FieldName = 'OCAmount'
      currency = True
    end
    object TSalesTotalLateBillsSystemLossCharge: TFloatField
      FieldName = 'SystemLossCharge'
      currency = True
    end
    object TSalesTotalLateBillsDiffBill: TFloatField
      FieldName = 'DiffBill'
    end
    object TSalesTotalLateBillsMCC: TFloatField
      FieldName = 'MCC'
      currency = True
    end
    object TSalesTotalLateBillsTransSysAncRefund: TFloatField
      FieldName = 'TransSysAncRefund'
      currency = True
    end
    object TSalesTotalLateBillsTransDemAncRefund: TFloatField
      FieldName = 'TransDemAncRefund'
      currency = True
    end
    object TSalesTotalLateBillsVATTransAncRefund: TFloatField
      FieldName = 'VATTransAncRefund'
      currency = True
    end
    object TSalesTotalLateBillsSCDisc: TFloatField
      FieldName = 'SCDisc'
      currency = True
    end
    object TSalesTotalLateBillsSCDiscSubs: TFloatField
      FieldName = 'SCDiscSubs'
      currency = True
    end
  end
  object MSR: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'select * from msrequest')
    Left = 456
    Top = 444
    object MSRId: TIntegerField
      FieldName = 'Id'
    end
    object MSRCode: TFloatField
      FieldName = 'Code'
    end
    object MSRArea: TStringField
      FieldName = 'Area'
      FixedChar = True
      Size = 3
    end
    object MSRBook: TStringField
      FieldName = 'Book'
      FixedChar = True
      Size = 3
    end
    object MSRSequence: TStringField
      FieldName = 'Sequence'
      Size = 4
    end
    object MSRAccountNumber: TStringField
      FieldName = 'AccountNumber'
      Size = 10
    end
    object MSRName: TStringField
      FieldName = 'Name'
      Size = 50
    end
    object MSRAddress: TStringField
      FieldName = 'Address'
      Size = 50
    end
    object MSRRateCode: TStringField
      FieldName = 'RateCode'
      FixedChar = True
      Size = 1
    end
    object MSRConnCode: TStringField
      FieldName = 'ConnCode'
      FixedChar = True
      Size = 1
    end
    object MSRMeterBrand: TStringField
      FieldName = 'MeterBrand'
      Size = 10
    end
    object MSRSerial: TStringField
      FieldName = 'Serial'
    end
    object MSRMultiplier: TIntegerField
      FieldName = 'Multiplier'
    end
    object MSRRequest: TStringField
      FieldName = 'Request'
      Size = 50
    end
    object MSRRequestStatus: TStringField
      FieldName = 'RequestStatus'
      FixedChar = True
      Size = 1
    end
    object MSRFollowUps: TIntegerField
      FieldName = 'FollowUps'
    end
    object MSRRequestDate: TDateField
      FieldName = 'RequestDate'
    end
    object MSRDateCompleted: TDateField
      FieldName = 'DateCompleted'
    end
  end
  object MSA: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'select * from mscomplete')
    Left = 560
    Top = 444
    object MSAId: TIntegerField
      FieldName = 'Id'
    end
    object MSACode: TFloatField
      FieldName = 'Code'
    end
    object MSAArea: TStringField
      FieldName = 'Area'
      FixedChar = True
      Size = 3
    end
    object MSABook: TStringField
      FieldName = 'Book'
      FixedChar = True
      Size = 3
    end
    object MSASequence: TStringField
      FieldName = 'Sequence'
      Size = 4
    end
    object MSAAccountNumber: TStringField
      FieldName = 'AccountNumber'
      Size = 10
    end
    object MSAName: TStringField
      FieldName = 'Name'
      Size = 50
    end
    object MSAAddress: TStringField
      FieldName = 'Address'
      Size = 50
    end
    object MSARateCode: TStringField
      FieldName = 'RateCode'
      FixedChar = True
      Size = 1
    end
    object MSAConnCode: TStringField
      FieldName = 'ConnCode'
      FixedChar = True
      Size = 1
    end
    object MSAMeterBrand: TStringField
      FieldName = 'MeterBrand'
      Size = 10
    end
    object MSASerial: TStringField
      FieldName = 'Serial'
    end
    object MSAMultiplier: TIntegerField
      FieldName = 'Multiplier'
    end
    object MSARequest: TStringField
      FieldName = 'Request'
      Size = 50
    end
    object MSARequestStatus: TStringField
      FieldName = 'RequestStatus'
      FixedChar = True
      Size = 1
    end
    object MSARequestDate: TDateField
      FieldName = 'RequestDate'
    end
    object MSAFollowUps: TIntegerField
      FieldName = 'FollowUps'
    end
    object MSADateCompleted: TDateField
      FieldName = 'DateCompleted'
    end
  end
  object AP: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'SELECT Area, '
      '       case Area '
      '        when '#39'001'#39' then '#39'RIZAL'#39
      '        when '#39'002'#39' then '#39'SIBUTAD'#39
      '        when '#39'003'#39' then '#39'MUTIA'#39
      '        when '#39'004'#39' then '#39'LA LIBERTAD'#39
      '        when '#39'005'#39' then '#39'SERGIO OSME'#209'A'#39
      '        when '#39'006'#39' then '#39'DAPITAN'#39
      '        when '#39'007'#39' then '#39'PI'#209'AN'#39
      '        when '#39'008'#39' then '#39'POLANCO'#39
      '        when '#39'009'#39' then '#39'DIPOLOG NORTH'#39
      '        when '#39'010'#39' then '#39'DIPOLOG SOUTH'#39
      '        when '#39'011'#39' then '#39'KATIPUNAN'#39
      '        when '#39'012'#39' then '#39'ROZAS'#39
      '        when '#39'013'#39' then '#39'MANUKAN'#39
      '        when '#39'014'#39' then '#39'JOSE DALMAN'#39
      '        when '#39'015'#39' then '#39'SINDANGAN'#39
      '        when '#39'016'#39' then '#39'LEON B. POSTIGO'#39
      '        when '#39'017'#39' then '#39'SIAYAN'#39
      '        when '#39'018'#39' then '#39'SALUG'#39
      '        when '#39'019'#39' then '#39'LILOY'#39
      '        when '#39'020'#39' then '#39'LABASON'#39
      '        when '#39'021'#39' then '#39'TAMPILISAN'#39
      '        when '#39'022'#39' then '#39'GODOD'#39
      '        when '#39'023'#39' then '#39'GUTALAC'#39
      '        when '#39'024'#39' then '#39'DAPITAN / PI'#209'AN'#39
      '        when '#39'025'#39' then '#39'KALAWIT'#39
      '        else '#39#39' '
      '       end '
      '       as address,'
      ''
      
        '       SUM( if(ratecode = '#39'R'#39' and kilowatthour <= 15,kilowatthou' +
        'r,null)) minimumkilowatthour,'
      
        '       Count( if(ratecode = '#39'R'#39' and kilowatthour <= 15,AccountNu' +
        'mber,null)) minimumbills,'
      '       Count( if(ratecode = '#39'R'#39',AccountNumber,null)) RBills,'
      '       SUM( if(ratecode = '#39'R'#39',kilowatthour,null)) RKilowatthour,'
      '       SUM( if(ratecode = '#39'R'#39',TotalBill - (TransformerRental + '
      '                                           OCAmount1 + '
      '                                           OCAmount2 + '
      '                                           OCAmount3 + '
      '                                           UCNPCStrandedDebts + '
      
        '                                           UCNPCStrandedContCost' +
        ' + '
      
        '                                           UCDUStrandedContCost ' +
        '+ '
      '                                           UCME + '
      
        '                                           UCEqTaxesAndRoyalties' +
        ' + '
      '                                           UCEC + '
      
        '                                           VAT),null)) RTotalPow' +
        'er,'
      ''
      '       Count( if(ratecode = '#39'C'#39',AccountNumber,null)) CBills,'
      '       SUM( if(ratecode = '#39'C'#39',kilowatthour,null)) CKilowatthour,'
      '       SUM( if(ratecode = '#39'C'#39',TotalBill - (TransformerRental + '
      '                                           OCAmount1 + '
      '                                           OCAmount2 + '
      '                                           OCAmount3 + '
      '                                           UCNPCStrandedDebts + '
      
        '                                           UCNPCStrandedContCost' +
        ' + '
      
        '                                           UCDUStrandedContCost ' +
        '+ '
      '                                           UCME + '
      
        '                                           UCEqTaxesAndRoyalties' +
        ' + '
      '                                           UCEC + '
      
        '                                           VAT),null)) CTotalPow' +
        'er,'
      ''
      '       Count( if(ratecode = '#39'I'#39',AccountNumber,null)) IBills,'
      '       SUM( if(ratecode = '#39'I'#39',kilowatthour,null)) IKilowatthour,'
      '       SUM( if(ratecode = '#39'I'#39',TotalBill - (TransformerRental + '
      '                                           OCAmount1 + '
      '                                           OCAmount2 + '
      '                                           OCAmount3 + '
      '                                           UCNPCStrandedDebts + '
      
        '                                           UCNPCStrandedContCost' +
        ' + '
      
        '                                           UCDUStrandedContCost ' +
        '+ '
      '                                           UCME + '
      
        '                                           UCEqTaxesAndRoyalties' +
        ' + '
      '                                           UCEC + '
      
        '                                           VAT),null)) ITotalPow' +
        'er,'
      ''
      '       Count( if(ratecode = '#39'P'#39',AccountNumber,null)) PBills,'
      '       SUM( if(ratecode = '#39'P'#39',kilowatthour,null)) PKilowatthour,'
      '       SUM( if(ratecode = '#39'P'#39',TotalBill - (TransformerRental + '
      '                                           OCAmount1 + '
      '                                           OCAmount2 + '
      '                                           OCAmount3 + '
      '                                           UCNPCStrandedDebts + '
      
        '                                           UCNPCStrandedContCost' +
        ' + '
      
        '                                           UCDUStrandedContCost ' +
        '+ '
      '                                           UCME + '
      
        '                                           UCEqTaxesAndRoyalties' +
        ' + '
      '                                           UCEC + '
      
        '                                           VAT),null)) PTotalPow' +
        'er,'
      ''
      '       Count( if(ratecode = '#39'S'#39',AccountNumber,null)) SBills,'
      '       SUM( if(ratecode = '#39'S'#39',kilowatthour,null)) SKilowatthour,'
      '       SUM( if(ratecode = '#39'S'#39',TotalBill - (TransformerRental + '
      '                                           OCAmount1 + '
      '                                           OCAmount2 + '
      '                                           OCAmount3 + '
      '                                           UCNPCStrandedDebts + '
      
        '                                           UCNPCStrandedContCost' +
        ' + '
      
        '                                           UCDUStrandedContCost ' +
        '+ '
      '                                           UCME + '
      
        '                                           UCEqTaxesAndRoyalties' +
        ' + '
      '                                           UCEC + '
      
        '                                           VAT),null)) STotalPow' +
        'er,'
      ''
      '       Count( AccountNumber) TBills,'
      '       SUM( kilowatthour ) TKilowatthour,'
      '       SUM( TotalBill - (TransformerRental + '
      '                         OCAmount1 + '
      '                         OCAmount2 + '
      '                         OCAmount3 + '
      '                         UCNPCStrandedDebts + '
      '                         UCNPCStrandedContCost + '
      '                         UCDUStrandedContCost + '
      '                         UCME + '
      '                         UCEqTaxesAndRoyalties + '
      '                         UCEC + '
      '                         VAT)) TTotalPower,'
      '       SUM( UCME ) UCME,'
      '       SUM( UCEC ) UCEC,'
      '       SUM( VATDist ) VATDist,'
      '       SUM( VATGenCO ) VATGenCO,'
      '       SUM( VATTransCO ) VATTransCO,'
      '       SUM( VATSystemLossGenCO ) VATSystemLossGenCO'
      'FROM latebillhistory'
      '   where billdate between :datefrom and :dateto and'
      '   RateCode IN ('#39'R'#39', '#39'C'#39', '#39'I'#39', '#39'S'#39', '#39'B'#39', '#39'P'#39') and'
      '   area between '#39'001'#39' and '#39'025'#39
      'GROUP BY Area'
      'ORDER BY Area')
    FetchAll = False
    Left = 664
    Top = 395
    ParamData = <
      item
        DataType = ftString
        Name = 'datefrom'
        Value = ''
      end
      item
        DataType = ftUnknown
        Name = 'dateto'
        Value = nil
      end>
    object StringField3: TStringField
      FieldName = 'Area'
      Origin = 'billhistory.Area'
      FixedChar = True
      Size = 3
    end
    object StringField4: TStringField
      FieldName = 'address'
      Origin = 'billhistory.address'
      FixedChar = True
      Size = 15
    end
    object FloatField39: TFloatField
      FieldName = 'minimumkilowatthour'
      Origin = 'billhistory.minimumkilowatthour'
    end
    object LargeintField15: TLargeintField
      FieldName = 'minimumbills'
      Origin = 'billhistory.minimumbills'
    end
    object LargeintField16: TLargeintField
      FieldName = 'RBills'
      Origin = 'billhistory.RBills'
    end
    object FloatField40: TFloatField
      FieldName = 'RKilowatthour'
      Origin = 'billhistory.RKilowatthour'
    end
    object FloatField41: TFloatField
      FieldName = 'RTotalPower'
      Origin = 'billhistory.RTotalPower'
      currency = True
    end
    object LargeintField17: TLargeintField
      FieldName = 'CBills'
      Origin = 'billhistory.CBills'
    end
    object FloatField42: TFloatField
      FieldName = 'CKilowatthour'
      Origin = 'billhistory.CKilowatthour'
    end
    object FloatField43: TFloatField
      FieldName = 'CTotalPower'
      Origin = 'billhistory.CTotalPower'
      currency = True
    end
    object LargeintField18: TLargeintField
      FieldName = 'IBills'
      Origin = 'billhistory.IBills'
    end
    object FloatField44: TFloatField
      FieldName = 'IKilowatthour'
      Origin = 'billhistory.IKilowatthour'
    end
    object FloatField45: TFloatField
      FieldName = 'ITotalPower'
      Origin = 'billhistory.ITotalPower'
      currency = True
    end
    object LargeintField19: TLargeintField
      FieldName = 'PBills'
      Origin = 'billhistory.PBills'
    end
    object FloatField46: TFloatField
      FieldName = 'PKilowatthour'
      Origin = 'billhistory.PKilowatthour'
    end
    object FloatField47: TFloatField
      FieldName = 'PTotalPower'
      Origin = 'billhistory.PTotalPower'
      currency = True
    end
    object LargeintField20: TLargeintField
      FieldName = 'SBills'
      Origin = 'billhistory.SBills'
    end
    object FloatField48: TFloatField
      FieldName = 'SKilowatthour'
      Origin = 'billhistory.SKilowatthour'
    end
    object FloatField49: TFloatField
      FieldName = 'STotalPower'
      Origin = 'billhistory.STotalPower'
      currency = True
    end
    object LargeintField21: TLargeintField
      FieldName = 'TBills'
      Origin = 'billhistory.TBills'
    end
    object FloatField50: TFloatField
      FieldName = 'TKilowatthour'
      Origin = 'billhistory.TKilowatthour'
    end
    object FloatField51: TFloatField
      FieldName = 'TTotalPower'
      Origin = 'billhistory.TTotalPower'
      currency = True
    end
    object FloatField52: TFloatField
      FieldName = 'UCME'
      Origin = 'billhistory.UCME'
      currency = True
    end
    object FloatField53: TFloatField
      FieldName = 'UCEC'
      Origin = 'billhistory.UCEC'
      currency = True
    end
    object FloatField54: TFloatField
      FieldName = 'VATDist'
      Origin = 'billhistory.VATDist'
      currency = True
    end
    object FloatField55: TFloatField
      FieldName = 'VATGenCO'
      Origin = 'billhistory.VATGenCO'
      currency = True
    end
    object FloatField56: TFloatField
      FieldName = 'VATTransCO'
      Origin = 'billhistory.VATTransCO'
      currency = True
    end
    object FloatField57: TFloatField
      FieldName = 'VATSystemLossGenCO'
      Origin = 'billhistory.VATSystemLossGenCO'
      currency = True
    end
  end
  object RC: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'select routecontrol.*, master.wratecode from routecontrol '
      'left join master on (master.code = routecontrol.code)'
      'where collectorcode = :CollectorCode and'
      '      dateissued = :dateissued and'
      '      batch = :batch'
      'order by accountnumber, date')
    Left = 456
    Top = 202
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CollectorCode'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'dateissued'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'batch'
        Value = nil
      end>
    object RCEntry: TIntegerField
      FieldName = 'Entry'
    end
    object RCDocument: TStringField
      FieldName = 'Document'
      Size = 15
    end
    object RCCode: TFloatField
      FieldName = 'Code'
    end
    object RCArea: TStringField
      FieldName = 'Area'
      FixedChar = True
      Size = 3
    end
    object RCBook: TStringField
      FieldName = 'Book'
      FixedChar = True
      Size = 3
    end
    object RCAccountNumber: TStringField
      FieldName = 'AccountNumber'
      Size = 10
    end
    object RCDate: TDateField
      FieldName = 'Date'
    end
    object RCName: TStringField
      FieldName = 'Name'
      Size = 30
    end
    object RCBillMonth: TStringField
      FieldName = 'BillMonth'
      Size = 4
    end
    object RCRateCode: TStringField
      FieldName = 'RateCode'
      FixedChar = True
      Size = 2
    end
    object RCReading: TFloatField
      FieldName = 'Reading'
    end
    object RCKilowattHour: TFloatField
      FieldName = 'KilowattHour'
    end
    object RCAmount: TFloatField
      FieldName = 'Amount'
    end
    object RCUCNPCSD: TFloatField
      FieldName = 'UCNPCSD'
    end
    object RCUCNPCSCC: TFloatField
      FieldName = 'UCNPCSCC'
    end
    object RCUCDUSCC: TFloatField
      FieldName = 'UCDUSCC'
    end
    object RCUCME: TFloatField
      FieldName = 'UCME'
    end
    object RCUCETR: TFloatField
      FieldName = 'UCETR'
    end
    object RCUCEC: TFloatField
      FieldName = 'UCEC'
    end
    object RCUCCSR: TFloatField
      FieldName = 'UCCSR'
    end
    object RCCollectorCode: TStringField
      FieldName = 'CollectorCode'
      Size = 10
    end
    object RCDateIssued: TDateField
      FieldName = 'DateIssued'
    end
    object RCBatch: TStringField
      FieldName = 'Batch'
      Size = 10
    end
    object RCencodercode: TStringField
      FieldName = 'encodercode'
      FixedChar = True
      Size = 2
    end
    object RCTransformerRental: TFloatField
      FieldName = 'TransformerRental'
    end
    object RCIType: TStringField
      FieldName = 'IType'
      Size = 1
    end
    object RCwratecode: TStringField
      FieldName = 'wratecode'
      Size = 1
    end
  end
  object AllPurpose: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'SELECT Area, '
      '       case Area '
      '        when '#39'001'#39' then '#39'RIZAL'#39
      '        when '#39'002'#39' then '#39'SIBUTAD'#39
      '        when '#39'003'#39' then '#39'MUTIA'#39
      '        when '#39'004'#39' then '#39'LA LIBERTAD'#39
      '        when '#39'005'#39' then '#39'SERGIO OSME'#209'A'#39
      '        when '#39'006'#39' then '#39'DAPITAN'#39
      '        when '#39'007'#39' then '#39'PI'#209'AN'#39
      '        when '#39'008'#39' then '#39'POLANCO'#39
      '        when '#39'009'#39' then '#39'DIPOLOG NORTH'#39
      '        when '#39'010'#39' then '#39'DIPOLOG SOUTH'#39
      '        when '#39'011'#39' then '#39'KATIPUNAN'#39
      '        when '#39'012'#39' then '#39'ROZAS'#39
      '        when '#39'013'#39' then '#39'MANUKAN'#39
      '        when '#39'014'#39' then '#39'JOSE DALMAN'#39
      '        when '#39'015'#39' then '#39'SINDANGAN'#39
      '        when '#39'016'#39' then '#39'LEON B. POSTIGO'#39
      '        when '#39'017'#39' then '#39'SIAYAN'#39
      '        when '#39'018'#39' then '#39'SALUG'#39
      '        when '#39'019'#39' then '#39'LILOY'#39
      '        when '#39'020'#39' then '#39'LABASON'#39
      '        when '#39'021'#39' then '#39'TAMPILISAN'#39
      '        when '#39'022'#39' then '#39'GODOD'#39
      '        when '#39'023'#39' then '#39'GUTALAC'#39
      '        when '#39'024'#39' then '#39'DAPITAN / PI'#209'AN'#39
      '        when '#39'025'#39' then '#39'KALAWIT'#39
      '        else '#39#39' '
      '       end '
      '       as address,'
      ''
      
        '       SUM( if(ratecode = '#39'R'#39' and kilowatthour <= 15,kilowatthou' +
        'r,null)) minimumkilowatthour,'
      
        '       Count( if(ratecode = '#39'R'#39' and kilowatthour <= 15,AccountNu' +
        'mber,null)) minimumbills,'
      '       Count( if(ratecode = '#39'R'#39',AccountNumber,null)) RBills,'
      '       SUM( if(ratecode = '#39'R'#39',kilowatthour,null)) RKilowatthour,'
      '       SUM( if(ratecode = '#39'R'#39',TotalBill - (TransformerRental + '
      '                                           OCAmount1 + '
      '                                           OCAmount2 + '
      '                                           OCAmount3 + '
      '                                           UCNPCStrandedDebts + '
      
        '                                           UCNPCStrandedContCost' +
        ' + '
      
        '                                           UCDUStrandedContCost ' +
        '+ '
      '                                           UCME + '
      
        '                                           UCEqTaxesAndRoyalties' +
        ' + '
      '                                           UCEC + '
      
        '                                           VAT),null)) RTotalPow' +
        'er,'
      ''
      '       Count( if(ratecode = '#39'C'#39',AccountNumber,null)) CBills,'
      '       SUM( if(ratecode = '#39'C'#39',kilowatthour,null)) CKilowatthour,'
      '       SUM( if(ratecode = '#39'C'#39',TotalBill - (TransformerRental + '
      '                                           OCAmount1 + '
      '                                           OCAmount2 + '
      '                                           OCAmount3 + '
      '                                           UCNPCStrandedDebts + '
      
        '                                           UCNPCStrandedContCost' +
        ' + '
      
        '                                           UCDUStrandedContCost ' +
        '+ '
      '                                           UCME + '
      
        '                                           UCEqTaxesAndRoyalties' +
        ' + '
      '                                           UCEC + '
      
        '                                           VAT),null)) CTotalPow' +
        'er,'
      ''
      '       Count( if(ratecode = '#39'I'#39',AccountNumber,null)) IBills,'
      '       SUM( if(ratecode = '#39'I'#39',kilowatthour,null)) IKilowatthour,'
      '       SUM( if(ratecode = '#39'I'#39',TotalBill - (TransformerRental + '
      '                                           OCAmount1 + '
      '                                           OCAmount2 + '
      '                                           OCAmount3 + '
      '                                           UCNPCStrandedDebts + '
      
        '                                           UCNPCStrandedContCost' +
        ' + '
      
        '                                           UCDUStrandedContCost ' +
        '+ '
      '                                           UCME + '
      
        '                                           UCEqTaxesAndRoyalties' +
        ' + '
      '                                           UCEC + '
      
        '                                           VAT),null)) ITotalPow' +
        'er,'
      ''
      '       Count( if(ratecode = '#39'P'#39',AccountNumber,null)) PBills,'
      '       SUM( if(ratecode = '#39'P'#39',kilowatthour,null)) PKilowatthour,'
      '       SUM( if(ratecode = '#39'P'#39',TotalBill - (TransformerRental + '
      '                                           OCAmount1 + '
      '                                           OCAmount2 + '
      '                                           OCAmount3 + '
      '                                           UCNPCStrandedDebts + '
      
        '                                           UCNPCStrandedContCost' +
        ' + '
      
        '                                           UCDUStrandedContCost ' +
        '+ '
      '                                           UCME + '
      
        '                                           UCEqTaxesAndRoyalties' +
        ' + '
      '                                           UCEC + '
      
        '                                           VAT),null)) PTotalPow' +
        'er,'
      ''
      '       Count( if(ratecode = '#39'S'#39',AccountNumber,null)) SBills,'
      '       SUM( if(ratecode = '#39'S'#39',kilowatthour,null)) SKilowatthour,'
      '       SUM( if(ratecode = '#39'S'#39',TotalBill - (TransformerRental + '
      '                                           OCAmount1 + '
      '                                           OCAmount2 + '
      '                                           OCAmount3 + '
      '                                           UCNPCStrandedDebts + '
      
        '                                           UCNPCStrandedContCost' +
        ' + '
      
        '                                           UCDUStrandedContCost ' +
        '+ '
      '                                           UCME + '
      
        '                                           UCEqTaxesAndRoyalties' +
        ' + '
      '                                           UCEC + '
      
        '                                           VAT),null)) STotalPow' +
        'er,'
      ''
      '       Count( AccountNumber) TBills,'
      '       SUM( kilowatthour ) TKilowatthour,'
      '       SUM( TotalBill - (TransformerRental + '
      '                         OCAmount1 + '
      '                         OCAmount2 + '
      '                         OCAmount3 + '
      '                         UCNPCStrandedDebts + '
      '                         UCNPCStrandedContCost + '
      '                         UCDUStrandedContCost + '
      '                         UCME + '
      '                         UCEqTaxesAndRoyalties + '
      '                         UCEC + '
      '                         VAT)) TTotalPower,'
      '       SUM( UCME ) UCME,'
      '       SUM( UCEC ) UCEC,'
      '       SUM( VATDist ) VATDist,'
      '       SUM( VATGenCO ) VATGenCO,'
      '       SUM( VATTransCO ) VATTransCO,'
      '       SUM( VATSystemLossGenCO ) VATSystemLossGenCO'
      'FROM latebillhistory'
      '   where billdate between :datefrom and :dateto and'
      '   RateCode IN ('#39'R'#39', '#39'C'#39', '#39'I'#39', '#39'S'#39', '#39'B'#39', '#39'P'#39') and'
      '   area between '#39'001'#39' and '#39'025'#39
      'GROUP BY Area'
      'ORDER BY Area')
    FetchAll = False
    Left = 664
    Top = 443
    ParamData = <
      item
        DataType = ftString
        Name = 'datefrom'
        Value = ''
      end
      item
        DataType = ftUnknown
        Name = 'dateto'
        Value = nil
      end>
    object StringField1: TStringField
      FieldName = 'Area'
      Origin = 'billhistory.Area'
      FixedChar = True
      Size = 3
    end
    object StringField2: TStringField
      FieldName = 'address'
      Origin = 'billhistory.address'
      FixedChar = True
      Size = 15
    end
    object FloatField1: TFloatField
      FieldName = 'minimumkilowatthour'
      Origin = 'billhistory.minimumkilowatthour'
    end
    object LargeintField1: TLargeintField
      FieldName = 'minimumbills'
      Origin = 'billhistory.minimumbills'
    end
    object LargeintField2: TLargeintField
      FieldName = 'RBills'
      Origin = 'billhistory.RBills'
    end
    object FloatField2: TFloatField
      FieldName = 'RKilowatthour'
      Origin = 'billhistory.RKilowatthour'
    end
    object FloatField3: TFloatField
      FieldName = 'RTotalPower'
      Origin = 'billhistory.RTotalPower'
      currency = True
    end
    object LargeintField3: TLargeintField
      FieldName = 'CBills'
      Origin = 'billhistory.CBills'
    end
    object FloatField4: TFloatField
      FieldName = 'CKilowatthour'
      Origin = 'billhistory.CKilowatthour'
    end
    object FloatField5: TFloatField
      FieldName = 'CTotalPower'
      Origin = 'billhistory.CTotalPower'
      currency = True
    end
    object LargeintField4: TLargeintField
      FieldName = 'IBills'
      Origin = 'billhistory.IBills'
    end
    object FloatField6: TFloatField
      FieldName = 'IKilowatthour'
      Origin = 'billhistory.IKilowatthour'
    end
    object FloatField7: TFloatField
      FieldName = 'ITotalPower'
      Origin = 'billhistory.ITotalPower'
      currency = True
    end
    object LargeintField5: TLargeintField
      FieldName = 'PBills'
      Origin = 'billhistory.PBills'
    end
    object FloatField8: TFloatField
      FieldName = 'PKilowatthour'
      Origin = 'billhistory.PKilowatthour'
    end
    object FloatField9: TFloatField
      FieldName = 'PTotalPower'
      Origin = 'billhistory.PTotalPower'
      currency = True
    end
    object LargeintField6: TLargeintField
      FieldName = 'SBills'
      Origin = 'billhistory.SBills'
    end
    object FloatField10: TFloatField
      FieldName = 'SKilowatthour'
      Origin = 'billhistory.SKilowatthour'
    end
    object FloatField11: TFloatField
      FieldName = 'STotalPower'
      Origin = 'billhistory.STotalPower'
      currency = True
    end
    object LargeintField7: TLargeintField
      FieldName = 'TBills'
      Origin = 'billhistory.TBills'
    end
    object FloatField12: TFloatField
      FieldName = 'TKilowatthour'
      Origin = 'billhistory.TKilowatthour'
    end
    object FloatField13: TFloatField
      FieldName = 'TTotalPower'
      Origin = 'billhistory.TTotalPower'
      currency = True
    end
    object FloatField14: TFloatField
      FieldName = 'UCME'
      Origin = 'billhistory.UCME'
      currency = True
    end
    object FloatField15: TFloatField
      FieldName = 'UCEC'
      Origin = 'billhistory.UCEC'
      currency = True
    end
    object FloatField16: TFloatField
      FieldName = 'VATDist'
      Origin = 'billhistory.VATDist'
      currency = True
    end
    object FloatField17: TFloatField
      FieldName = 'VATGenCO'
      Origin = 'billhistory.VATGenCO'
      currency = True
    end
    object FloatField18: TFloatField
      FieldName = 'VATTransCO'
      Origin = 'billhistory.VATTransCO'
      currency = True
    end
    object FloatField19: TFloatField
      FieldName = 'VATSystemLossGenCO'
      Origin = 'billhistory.VATSystemLossGenCO'
      currency = True
    end
  end
  object SC: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      
        'select *, DateDiff(expirationdate,:presentreadingdate) as stillv' +
        'alid'
      'from scdisc '
      '   where scode = :scode and'
      '         DateApplied <= :presentreadingdate')
    Left = 768
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'presentreadingdate'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'scode'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'presentreadingdate'
        Value = nil
      end>
    object SCidSCDisc: TLongWordField
      FieldName = 'idSCDisc'
    end
    object SCSCode: TFloatField
      FieldName = 'SCode'
    end
    object SCArea: TStringField
      FieldName = 'Area'
      FixedChar = True
      Size = 3
    end
    object SCBook: TStringField
      FieldName = 'Book'
      FixedChar = True
      Size = 3
    end
    object SCSequence: TStringField
      FieldName = 'Sequence'
      Size = 6
    end
    object SCAccountNumber: TStringField
      FieldName = 'AccountNumber'
      Size = 10
    end
    object SCBillingName: TStringField
      FieldName = 'BillingName'
      Size = 50
    end
    object SCName: TStringField
      FieldName = 'Name'
      Size = 50
    end
    object SCBDay: TDateField
      FieldName = 'BDay'
    end
    object SCCPNo: TStringField
      FieldName = 'CPNo'
      Size = 15
    end
    object SCSCIDNo: TStringField
      FieldName = 'SCIDNo'
    end
    object SCSpouseSCIDNo: TStringField
      FieldName = 'SpouseSCIDNo'
    end
    object SCDateApplied: TDateField
      FieldName = 'DateApplied'
    end
    object SCExpirationDate: TDateField
      FieldName = 'ExpirationDate'
    end
    object SCRemarks: TStringField
      FieldName = 'Remarks'
      Size = 50
    end
    object SCAddress: TStringField
      FieldName = 'Address'
      Size = 50
    end
    object SCstillvalid: TLargeintField
      FieldName = 'stillvalid'
    end
  end
  object RemoveMeter: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'select * from removemeter'
      '&code'
      '&date'
      '&name'
      '&accountnumber')
    OnCalcFields = RemoveMeterCalcFields
    Left = 768
    Top = 54
    MacroData = <
      item
        Name = 'code'
        Value = 'where code = :code'
        Active = False
      end
      item
        Name = 'date'
        Value = 'where date between :datefrom and :dateto'
        Active = False
      end
      item
        Name = 'name'
        Value = 'where name like :name'
        Active = False
      end
      item
        Name = 'accountnumber'
        Value = 'where accountnumber = :accountnumber'
        Active = False
      end>
    object RemoveMeterCode: TFloatField
      FieldName = 'Code'
    end
    object RemoveMeterDate: TDateField
      FieldName = 'Date'
    end
    object RemoveMeterArea: TStringField
      FieldName = 'Area'
      FixedChar = True
      Size = 3
    end
    object RemoveMeterBook: TStringField
      FieldName = 'Book'
      FixedChar = True
      Size = 3
    end
    object RemoveMeterSequence: TStringField
      FieldName = 'Sequence'
      Size = 4
    end
    object RemoveMeterAccountNumber: TStringField
      FieldName = 'AccountNumber'
      Size = 10
    end
    object RemoveMeterName: TStringField
      FieldName = 'Name'
      Size = 50
    end
    object RemoveMeterLastReading: TFloatField
      FieldName = 'LastReading'
    end
    object RemoveMeterMeterBrand: TStringField
      FieldName = 'MeterBrand'
      Size = 10
    end
    object RemoveMeterSerialNumber: TStringField
      FieldName = 'SerialNumber'
      Size = 15
    end
    object RemoveMeterDateRemoved: TDateTimeField
      FieldName = 'DateRemoved'
    end
    object RemoveMeterAccomplished: TStringField
      FieldName = 'Accomplished'
      Size = 1
    end
    object RemoveMeterPosted: TStringField
      FieldName = 'Posted'
      Size = 1
    end
    object RemoveMeterstatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'status'
      Calculated = True
    end
    object RemoveMeterDiscoDate: TDateField
      FieldName = 'DiscoDate'
    end
    object RemoveMeterLocation: TStringField
      FieldName = 'Location'
      Size = 50
    end
  end
  object dsRemoveMeter: TMyDataSource
    DataSet = RemoveMeter
    Left = 768
    Top = 104
  end
  object AreaTax: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      
        'select * from areatax where area like :area and billmonth like :' +
        'billmonth')
    Left = 769
    Top = 152
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'area'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'billmonth'
        Value = nil
      end>
    object AreaTaxIDAreaTax: TLongWordField
      FieldName = 'IDAreaTax'
    end
    object AreaTaxArea: TStringField
      FieldName = 'Area'
      Size = 3
    end
    object AreaTaxBillMonth: TStringField
      FieldName = 'BillMonth'
      Size = 4
    end
    object AreaTaxDesc1: TStringField
      FieldName = 'Desc1'
      Size = 50
    end
    object AreaTaxRate1: TFloatField
      FieldName = 'Rate1'
    end
    object AreaTaxDesc2: TStringField
      FieldName = 'Desc2'
      Size = 50
    end
    object AreaTaxRate2: TFloatField
      FieldName = 'Rate2'
    end
    object AreaTaxDesc3: TStringField
      FieldName = 'Desc3'
      Size = 50
    end
    object AreaTaxRate3: TFloatField
      FieldName = 'Rate3'
    end
    object AreaTaxDesc4: TStringField
      FieldName = 'Desc4'
      Size = 50
    end
    object AreaTaxRate4: TFloatField
      FieldName = 'Rate4'
    end
  end
  object dsAreaTax: TMyDataSource
    DataSet = AreaTax
    Left = 768
    Top = 200
  end
  object RpTaxQuery: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'Select a.area,'
      '       a.billmonth,'
      '       r.rateamnt,'
      '       r.rateorder'
      'from areatax a'
      'left join raterptax  r on r.billmonth = a.billmonth and'
      'r.rateorder = a.rateorder'
      'where a.billmonth = :billmonth and a.area = :area')
    Left = 768
    Top = 248
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'billmonth'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'area'
        Value = nil
      end>
    object RpTaxQueryarea: TStringField
      FieldName = 'area'
      Size = 3
    end
    object RpTaxQuerybillmonth: TStringField
      FieldName = 'billmonth'
      Size = 4
    end
    object RpTaxQueryrateamnt: TFloatField
      FieldName = 'rateamnt'
    end
    object RpTaxQueryrateorder: TStringField
      FieldName = 'rateorder'
      Size = 6
    end
  end
  object callerServer: TMyConnection
    Database = 'queuedb'
    Username = '19zan72'
    LoginPrompt = False
    Left = 768
    Top = 296
    EncryptedPassword = '8FFF9EFF8CFF9CFF9EFF93FF85FF9EFF91FF'
  end
  object isonumberQ: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      
        'Select i.*,DATE_FORMAT(i.datestarted,'#39'%m-%d-%y'#39') as dateF from i' +
        'sofmnumber i where i.department = '#39'Billing'#39' and i.reporttype = :' +
        'reporttype')
    Left = 768
    Top = 352
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'reporttype'
        Value = nil
      end>
    object isonumberQidisofmnumber: TIntegerField
      FieldName = 'idisofmnumber'
    end
    object isonumberQisoNumber: TStringField
      FieldName = 'isoNumber'
      Size = 45
    end
    object isonumberQrevision: TStringField
      FieldName = 'revision'
      Size = 5
    end
    object isonumberQdatestarted: TDateField
      FieldName = 'datestarted'
    end
    object isonumberQreportType: TStringField
      FieldName = 'reportType'
      Size = 45
    end
    object isonumberQDepartment: TStringField
      FieldName = 'Department'
      Size = 45
    end
    object isonumberQdateF: TStringField
      FieldName = 'dateF'
      Size = 8
    end
  end
  object isonumberQSA: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      
        'Select i.*,DATE_FORMAT(i.datestarted,'#39'%m-%d-%y'#39') as dateF from i' +
        'sofmnumber i where i.department = '#39'Billing'#39' and i.reporttype = :' +
        'reporttype')
    Left = 776
    Top = 408
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'reporttype'
        Value = nil
      end>
    object isonumberQSAidisofmnumber: TIntegerField
      FieldName = 'idisofmnumber'
    end
    object isonumberQSAisoNumber: TStringField
      FieldName = 'isoNumber'
      Size = 45
    end
    object isonumberQSArevision: TStringField
      FieldName = 'revision'
      Size = 5
    end
    object isonumberQSAdatestarted: TDateField
      FieldName = 'datestarted'
    end
    object isonumberQSAreportType: TStringField
      FieldName = 'reportType'
      Size = 45
    end
    object isonumberQSADepartment: TStringField
      FieldName = 'Department'
      Size = 45
    end
    object isonumberQSAdateF: TStringField
      FieldName = 'dateF'
      Size = 8
    end
  end
end
