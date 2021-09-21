object FinancialStatisticalReportConfig: TFinancialStatisticalReportConfig
  Left = 0
  Top = 0
  AutoSize = True
  BorderStyle = bsSizeToolWin
  Caption = 'MFSR Sheet D'
  ClientHeight = 554
  ClientWidth = 776
  Color = clBtnFace
  Constraints.MinHeight = 404
  Constraints.MinWidth = 751
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 776
    Height = 399
    Align = alTop
    BevelInner = bvLowered
    BevelKind = bkTile
    BevelWidth = 2
    TabOrder = 0
    object PageControl1: TPageControl
      Left = 4
      Top = 4
      Width = 764
      Height = 387
      ActivePage = TabSheet4
      Align = alClient
      TabOrder = 0
      OnChange = PageControl1Change
      object TabSheet1: TTabSheet
        Caption = 'Part 1'
        object dbgPart1: TDBGrid1
          Left = 0
          Top = 0
          Width = 756
          Height = 359
          Align = alClient
          DataSource = dsPart1
          PopupMenu = pmDataEditor
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              Visible = True
            end>
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Part 2'
        ImageIndex = 1
        object dbgPart2: TDBGrid1
          Left = 0
          Top = 0
          Width = 756
          Height = 359
          Align = alClient
          DataSource = dsPart2
          PopupMenu = pmDataEditor
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              Visible = True
            end>
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Part 3'
        ImageIndex = 2
        object dbgPart3: TDBGrid1
          Left = 0
          Top = 0
          Width = 756
          Height = 359
          Align = alClient
          DataSource = dsPart3
          PopupMenu = pmDataEditor
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              Visible = True
            end>
        end
      end
      object TabSheet4: TTabSheet
        Caption = 'Part 4'
        ImageIndex = 3
        object dbgPart4: TDBGrid1
          Left = 0
          Top = 0
          Width = 756
          Height = 359
          Align = alClient
          DataSource = dsPart4
          PopupMenu = pmDataEditor
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              Visible = True
            end>
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 424
    Width = 776
    Height = 130
    Align = alCustom
    BevelInner = bvLowered
    BevelKind = bkTile
    BevelWidth = 3
    Constraints.MaxHeight = 130
    Constraints.MaxWidth = 776
    Constraints.MinHeight = 130
    Constraints.MinWidth = 776
    TabOrder = 1
    Visible = False
    object pEntry: TPanel
      Left = 6
      Top = 6
      Width = 760
      Height = 114
      Align = alClient
      TabOrder = 0
      object pPart2Entry: TPanel
        Left = 0
        Top = 0
        Width = 641
        Height = 113
        Align = alCustom
        BevelOuter = bvNone
        Constraints.MinHeight = 113
        Constraints.MinWidth = 641
        Locked = True
        TabOrder = 1
        object NxLabel3: TNxLabel
          Left = 72
          Top = 26
          Width = 52
          Height = 13
          Caption = 'Item Name'
          HorizontalPosition = hpLeft
          InnerHorizontal = True
          InnerVertical = False
          InnerMargins.Horizontal = 0
          InnerMargins.Vertical = 2
          VerticalPosition = vpTop
        end
        object NxLabel4: TNxLabel
          Left = 73
          Top = 62
          Width = 68
          Height = 13
          Caption = 'For the Month'
          HorizontalPosition = hpLeft
          InnerHorizontal = True
          InnerVertical = False
          InnerMargins.Horizontal = 0
          InnerMargins.Vertical = 2
          VerticalPosition = vpTop
        end
        object NxLabel5: TNxLabel
          Left = 315
          Top = 62
          Width = 66
          Height = 13
          Caption = 'Prev Yr. Total'
          HorizontalPosition = hpLeft
          InnerHorizontal = True
          InnerVertical = False
          InnerMargins.Horizontal = 0
          InnerMargins.Vertical = 2
          VerticalPosition = vpTop
        end
        object DBEdit2: TDBEdit
          Left = 163
          Top = 23
          Width = 366
          Height = 21
          DataField = 'ItemName'
          DataSource = dsPart2
          TabOrder = 0
        end
        object DBEdit3: TDBEdit
          Left = 163
          Top = 59
          Width = 142
          Height = 21
          DataField = 'forMo'
          DataSource = dsPart2
          TabOrder = 1
        end
        object DBEdit4: TDBEdit
          Left = 387
          Top = 59
          Width = 142
          Height = 21
          DataField = 'prvyrDate'
          DataSource = dsPart2
          TabOrder = 2
        end
      end
      object pPart1Entry: TPanel
        Left = 1
        Top = 1
        Width = 641
        Height = 113
        Align = alCustom
        BevelOuter = bvNone
        Constraints.MinHeight = 113
        Constraints.MinWidth = 641
        TabOrder = 0
        object NxLabel1: TNxLabel
          Left = 72
          Top = 26
          Width = 52
          Height = 13
          Caption = 'Item Name'
          HorizontalPosition = hpLeft
          InnerHorizontal = True
          InnerVertical = False
          InnerMargins.Horizontal = 0
          InnerMargins.Vertical = 2
          VerticalPosition = vpTop
        end
        object NxLabel2: TNxLabel
          Left = 72
          Top = 62
          Width = 46
          Height = 13
          Caption = 'Ratecode'
          HorizontalPosition = hpLeft
          InnerHorizontal = True
          InnerVertical = False
          InnerMargins.Horizontal = 0
          InnerMargins.Vertical = 2
          VerticalPosition = vpTop
        end
        object DBComboBox1: TDBComboBox
          Left = 163
          Top = 59
          Width = 145
          Height = 21
          DataField = 'Ratecode'
          DataSource = dsPart1
          Items.Strings = (
            'R'
            'L'
            'H')
          TabOrder = 0
        end
        object DBEdit1: TDBEdit
          Left = 163
          Top = 23
          Width = 366
          Height = 21
          DataField = 'ItemName'
          DataSource = dsPart1
          TabOrder = 1
        end
      end
      object pPart4Entry: TPanel
        Left = 1
        Top = 1
        Width = 641
        Height = 113
        Align = alCustom
        BevelOuter = bvNone
        Constraints.MinHeight = 113
        Constraints.MinWidth = 641
        TabOrder = 5
        object NxLabel8: TNxLabel
          Left = 72
          Top = 26
          Width = 52
          Height = 13
          Caption = 'Item Name'
          HorizontalPosition = hpLeft
          InnerHorizontal = True
          InnerVertical = False
          InnerMargins.Horizontal = 0
          InnerMargins.Vertical = 2
          VerticalPosition = vpTop
        end
        object NxLabel10: TNxLabel
          Left = 72
          Top = 62
          Width = 37
          Height = 13
          Caption = 'Current'
          HorizontalPosition = hpLeft
          InnerHorizontal = True
          InnerVertical = False
          InnerMargins.Horizontal = 0
          InnerMargins.Vertical = 2
          VerticalPosition = vpTop
        end
        object NxLabel11: TNxLabel
          Left = 321
          Top = 62
          Width = 38
          Height = 13
          Caption = 'To Date'
          HorizontalPosition = hpLeft
          InnerHorizontal = True
          InnerVertical = False
          InnerMargins.Horizontal = 0
          InnerMargins.Vertical = 2
          VerticalPosition = vpTop
        end
        object DBEdit8: TDBEdit
          Left = 163
          Top = 23
          Width = 366
          Height = 21
          DataField = 'ItemName'
          DataSource = dsPart4
          TabOrder = 0
        end
        object DBEdit9: TDBEdit
          Left = 163
          Top = 59
          Width = 142
          Height = 21
          DataField = 'current'
          DataSource = dsPart4
          TabOrder = 1
        end
        object DBEdit10: TDBEdit
          Left = 388
          Top = 59
          Width = 142
          Height = 21
          DataField = 'todate'
          DataSource = dsPart4
          TabOrder = 2
        end
      end
      object pPart3Entry: TPanel
        Left = 1
        Top = 0
        Width = 641
        Height = 113
        Align = alCustom
        BevelOuter = bvNone
        Constraints.MinHeight = 113
        Constraints.MinWidth = 641
        TabOrder = 2
        object NxLabel6: TNxLabel
          Left = 72
          Top = 21
          Width = 52
          Height = 13
          Caption = 'Item Name'
          HorizontalPosition = hpLeft
          InnerHorizontal = True
          InnerVertical = False
          InnerMargins.Horizontal = 0
          InnerMargins.Vertical = 2
          VerticalPosition = vpTop
        end
        object NxLabel7: TNxLabel
          Left = 72
          Top = 48
          Width = 46
          Height = 13
          Caption = 'Ratecode'
          HorizontalPosition = hpLeft
          InnerHorizontal = True
          InnerVertical = False
          InnerMargins.Horizontal = 0
          InnerMargins.Vertical = 2
          VerticalPosition = vpTop
        end
        object prevCurrent: TNxLabel
          Left = 72
          Top = 75
          Width = 62
          Height = 13
          Caption = 'Prev Current'
          HorizontalPosition = hpLeft
          InnerHorizontal = True
          InnerVertical = False
          InnerMargins.Horizontal = 0
          InnerMargins.Vertical = 2
          VerticalPosition = vpTop
        end
        object NxLabel9: TNxLabel
          Left = 321
          Top = 75
          Width = 61
          Height = 13
          Caption = 'Prev Arrears'
          HorizontalPosition = hpLeft
          InnerHorizontal = True
          InnerVertical = False
          InnerMargins.Horizontal = 0
          InnerMargins.Vertical = 2
          VerticalPosition = vpTop
        end
        object DBComboBox2: TDBComboBox
          Left = 163
          Top = 45
          Width = 145
          Height = 21
          DataField = 'ratecode'
          DataSource = dsPart3
          Items.Strings = (
            'R'
            'L'
            'H'
            'A'
            'AU')
          TabOrder = 0
        end
        object DBEdit5: TDBEdit
          Left = 163
          Top = 18
          Width = 366
          Height = 21
          DataField = 'ItemName'
          DataSource = dsPart3
          TabOrder = 1
        end
        object DBEdit6: TDBEdit
          Left = 163
          Top = 72
          Width = 145
          Height = 21
          DataField = 'pvtdCurrent'
          DataSource = dsPart3
          TabOrder = 2
        end
        object DBEdit7: TDBEdit
          Left = 384
          Top = 72
          Width = 145
          Height = 21
          DataField = 'pvtdArrear'
          DataSource = dsPart3
          TabOrder = 3
        end
      end
      object p1CancelBtn: TNxLinkLabel
        Left = 662
        Top = 67
        Width = 67
        Height = 34
        Cursor = 1
        Caption = 'Cancel'
        Glyph.Data = {
          360C0000424D360C000000000000360000002800000020000000200000000100
          180000000000000C000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000004040F0000100000
          1F01014400004900004701014201014201012900000C01010700000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000004040005053C08086500006A0000
          7200008200008200008200007F01017E01017300006001025503023002040200
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000001717380808700101840000830000840000
          8400008200008100008100007F00007D00007E00007D00007B00007701025F07
          0623000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000A0A430A0A9400008800008500008800008B0000
          8C00008C00008D00008E00008C00008A00008900008300007F00007B00007E01
          0175040639000000000000000000000000000000000000000000000000000000
          00000000000000000001014901019800008900008B0000900000940000940000
          9600009600009B00009800009600009400009300008F00008B00008400007F00
          007D000082020246000002000000000000000000000000000000000000000000
          00000000000008084900009C00008F00009100009200009200009A00009D0000
          9F00009E0000A100009F00009E00009C00009900009700008E00008900008A00
          008100007C00007F030340010000000000000000000000000000000000000000
          0101001919570808A40000930000950000981111A77373CC0000A40000A40000
          A80000A80000A70000A80000A60000A50000A100009D5858C03030AB00008D00
          008C00008400008100017D050531010100000000000000000000000000000000
          2020431616A800009700009B00009E0202A49898CEFFFFFF9696E20000A70000
          AB0101AF0101AF0101AD0101AE0000AC0000A73C3CB8EFEFF6EEEEF82222A900
          008D00008E00008700008701026E0F100B0000000000000000000000000C0C0E
          1D1D7D0202A101019E0000A60303AA8283B5E9E9DAFFFFFDFFFFFF9494E50202
          B30000B10000B40000B30000B20000AF3939B3E0E0D5FEFEF5FFFFFFFFFFFF28
          28AE00009700008F00008800008F08084409090000000000000000000015153A
          0E0EA00101A50101A60000AF2B2C9E9F9F91DADAD3FFFFFFFFFFFFFFFFFF9090
          E40101B50000B40000B60000B22828B3EEEED7F6F6EFFDFDFFFBFBF9E7E7D26A
          6AAC0000A000009A00009100008C02037708080F010100000000020201292980
          1313C00000A80101B00000B80000BC262691828280E2E2DCFFFFFFFFFFFEFFFF
          FF9F9FE90000B50000B74747C5E1E1D9F8F8F3FEFEFFFFFFFED3D3C664649900
          00AA0000AB0000A20000990100910202880D0D33050500000000000000000058
          0404BB0101AE0303B80303BE0000C40000C52323988F8F7FDFDFDBFFFFFFFFFF
          FEFFFFFF8585DF5757CFE4E4F0FAFAF3FFFFFEFBFBFBDCDCC765659E0303B300
          00B70000B10000A90000A100009601029304044F00000000000013131B3030C2
          0000B10404B60505BC0303C20505C60101C90000CE2A2A94A8A88EE9E9E5FFFF
          FFFFFFFDFFFFFFFAFAFCFFFFFCFFFFFEFFFFFEDEDECB7676A40303B80000BE02
          02BA0202B50000AF0000A801019D0101960808701111170101000C0C242525E3
          0202B40505C00303C80606CD0606CE0404CE0000CE0000D22223A1A7A799ECEC
          E8FFFFFFFDFDFDFFFFFDFCFCFDFFFFFFE6E7DE6869AB0000BD0000C40000C302
          02C20202BE0202B70202B00202A500009C0D0D841818220000000303221010E2
          0707B90707C60606CC0808D20808D30505D30101D10000CD0000D24242BCCFCF
          D3FFFFFDFDFDFDFDFDFEFDFDFDFFFFFE8C8CC90000C30000C90000C50000C603
          03C50404C30303BD0202B60101AA0101A20C0C8E17172500000001011F0D0DE2
          0B0BC20909CC0B0BD50A0AD90A0AD90606D60101D20000D10000D23B3CCAD4D4
          D9FFFFFDFDFDFDFDFDFDFDFDFDFFFFFC8787D70000C80000C70000C80202C903
          03C90505C80404C30303BD0303B10202A80E0E931818270000000404211818EA
          0D0DC80D0DD30C0CDC1111E10E0EE00707DC0000D70000D42425CBD5D5CDF5F5
          F1FFFFFFFFFFFFFFFFFFFEFEFEFFFFFDFCFCF98989E70000CA0000CB0202D006
          06CE0606CE0505C90303C10404B30404AD0B0B9316162300000012122B3737FF
          0B0BD21616DA1212E71515EC1313E80909E20000DE3737CDEAEACEFCFCF5FFFF
          FFFFFFFFEEEEE8E3E3DEF6F6F1FFFFFFFFFFFFFFFFFF9F9FEA0202CE0000D00A
          0AD50A0AD50909CD0808C40606B90606AE1414931E1E2F01010008080A2121B2
          1010E31A1AE11818EE1B1BF51A1AF30707ED3C3DD7DDDECDF7F7F1FEFEFFFCFC
          FBE0E1CC696AB54342BCA7A7ACE2E2DCFFFFFFFFFFFFFFFFFF9191EA0202D703
          03DB0E0EDB0909D20A0AC90808BF0808B31313841313260000000000000C0C7C
          1C1CF61D1DEA2323F62222FF1616FF4C4CE3C9C9CBF9F9EFFFFFFFFEFEFCE3E2
          C8797AAC0000DC0000DE3132AD9D9D8DE7E7E3FFFFFFFFFFFFFFFFFF9C9CF203
          03E70B0BE10E0ED80E0ECD0C0CBC0B0BB81C1C790A0A0A0000000303003A3A8F
          2A2AF91B1BEF2A2AFE2727FF4E4EDDB7B7AEF2F2E8FFFFFFFFFFFED3D3C16666
          A60606DC0000E50000E20000E42525B5929276E2E2DDFFFFFFFFFFFFF8F8E16D
          6DCD1010E90F0FDD1313D10D0DBE0F0FB730306E10101500000000000010102E
          2525D52424FD3030FE3434FF4040E687879BE2E2D4FFFFFFD4D4C462629F0303
          E10000E90000E20000E00000E20000EE2626A28F8F7CE3E3DDE9E9E3ACAC923C
          3CD31616F31818E01818D10C0CCB1D1DAD30303A000000000000000000050500
          2626862626FF3434FF4242FF4343FF4848EB7A7A9FAAAA8F6767A20B0BFB0606
          FD0505EE0101EA0303EB0202EA0202ED0000FD2C2CB786867F86867A3838D41A
          1AFF2424F41F1FE21717D40B0BCB3C3C71030300000000000000000000000000
          26263F3B3BF52D2DFF4444FF5151FF5858FF5C5CED6868934646F32F2FFF2424
          FF1616FD1010F90C0CF70F0FF81212FA1F1FFF2626FF4C4CB24545C82C2CFF30
          30FF2727F42020E21414D93232B22E2E41000000000000000000000000000000
          00000016163A2C2CFF3D3DFF5151FF6262FF6D6DFF7070FF6C6CFF6262FF5151
          FF3F3FFF3232FF2C2CFF3030FF3636FF4242FF4646FF4242FF4040FF3C3CFF33
          33FF2A2AF21A1AE62525D028283C000000000000000000000000000000000000
          00000000000007072F2E2EFF4747FF5F5FFF7272FF8181FF8585FF8484FF7E7E
          FF7171FF6464FF5D5DFF5C5CFF5F5FFF5E5EFF5B5BFF5656FF4A4AFF4040FF31
          31FD2424EE1A1AF30E0E68000000000000000000000000000000000000000000
          0000000000000000000707323434FF4949FF6565FF7E7EFF8C8CFF9494FF9999
          FF9B9BFF8F8FFF8B8BFF8383FF7B7BFF6F6FFF6565FF5A5AFF4C4CFF3D3DFF29
          29F72222FD0C0C70000000000000000000000000000000000000000000000000
          00000000000000000000000014143D4444F84444FF6161FF7777FF8F8FFF9A9A
          FF9D9DFF9F9FFF9A9AFF8E8EFF8080FF6E6EFF6060FF4F4FFF3D3DFF2B2BFF33
          33F21D1D74000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000022224025258F3D3DE15F5FFF6E6EFF7B7B
          FF8484FF8E8EFF8888FF7B7BFF6B6BFF5656FF4E4EFF3F3FFF2D2DE32121A914
          144F000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000202000E0E323B3B9826268C4A4A
          CD7474FF6C6CFF6767FF6767FF6565FF4A4AFF1C1C7E22229B10104403030E00
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000101000000000404
          0B1010290A0A280808260A0A260F0F290A0A1E00000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        HoverColor = clBlack
        TextDistance = 2
        VertSpacing = 2
        OnClick = p1CancelBtnClick
      end
      object p1SaveBtn: TNxLinkLabel
        Left = 662
        Top = 19
        Width = 59
        Height = 34
        Cursor = 1
        Caption = 'Save'
        Glyph.Data = {
          360C0000424D360C000000000000360000002800000020000000200000000100
          180000000000000C000000000000000000000000000000000000000000000000
          00000000000000000047E33D2B09CC5B441D0CFBDCEADAC0DBCDB5D8CAB4D9CD
          B8DFD4C3E8DECFF2E8DA04FCEA1F13FF867059E0D2D85D545929292827282754
          4D4FD6CAD2867680000000000000000000000000000000000000000000000000
          282980937749D3C2A5AB9C81A8987DB2A287BBAB91C2B39BC9BBA5D1C3AFD9CE
          BDE4DCCFEDE8DFF6F2EEFFFDFCFFFFFFEFF8F3B5E9D084DAB36AD3A369D2A283
          DAB1B2E7CCECF7F17C7378B7ACC100000000000000000000000000000029F79E
          B6A6879B896BA29070A79677AD9C7EB3A388BAAA90C0B199C6B8A3CDC0ACD5CA
          B9DFD7CAE8E1D8F3EEEAFFFCFDB9E8D051CC9524C07F1CBF7D19BF7F1DC0801C
          BF7D23BF7D4EC98FB5E7CB1D191BE2D6E8000000000000000000000000BCAA87
          9684629C8A6AA19070A69577AC9B7EB3A388BAAA90C0B199C6B8A3CDC0ACD5CA
          B9DFD6CAEAE3DAFFFAFB9EDEBB2AC07F1DC08023C2841EC18338BF7724BE7A25
          C38623C2841DC08028BE7997DCB21A1618BFB4CA000000000000000000AA956F
          9685649C8A6AA19070A69577AB9A7DB1A185B7A78CBDAD94C3B49ECABCA7D3C7
          B5DDD3C6FCF2F2B6E5C727BE7A20C18325C28417BE7C6BD4A8E1EDD542B7611E
          C28625C28425C28421C18325BB73ADE1BC71656D000000000000000000AE9872
          9685649A88679C8A69A29071AF9E82BEB098CCC0ADD6CCBCDFD7CBE5DED4EBE5
          DCF1ECE7EDF4EC46C37F1DC08125C28416BE7C69D3A4F9FCF8FFFFFFA8D3991A
          B86B24C38725C28425C2841FC0813FBF75E2EEE39A849A000000000000AD976F
          917E5CA59477C5BAA6DAD3C7E4DFD6E6E0D9E2DDD5DFD9D0DBD4CAD9D1C7D5CD
          C1F2E8E7ADE2BD27BE7923C28516BE7C6DD4A6FAFDF9FFFFFFFFFFFFFAF9F155
          BA6419C08123C28425C28423C28525BC74A1DBAFB9ABB7000000000000AF9972
          CCC3B2E1DCD5D0C9BFBFB6A8B5AA99B0A593AFA391AFA390AFA391AFA491AC9F
          8CEBE0DD75D1963DC88F2AC48871D5A9FCFDFBFFFFFFFBFDFBFCFEFDFFFFFFC9
          E0B73AB8672DC58B21C28427C38640C88F71CC8B3C3639000000000000FBF3E3
          CEC9C0968A7492856F958872968974968A749689749588739488729386719284
          6FE5E0DA60CA8642CB9556D1A1F1FBF6FFFFFFF2FAF388D5A7BFEAD3FFFFFFFF
          FFFE91C67D4FBD7439C18041CB974DCE9A5AC37811140E000000000000161311
          9E948273644A7A6D547A6D55796C547A6D547E705881745B8679618A7C648D7F
          68E4DFD961C77F42CC9854C88CC1E7CAEFF8EF78CB9151C07B6ECA91F1FAF4FF
          FFFFECF3E15FB45563C27C5CCA8F4ACE9B5BC07111130D000000000000E7D6B7
          F0EDE9A8A195796C557A6B518D7E639E8E74AC9D83B8A991C1B39ECABDA8D1C6
          B5F9F0EF71C77F3FC3805DBF6F71C8847ECD9062C37D63C48056BE759FDBB1FF
          FFFFFFFFFFC2DDAE55B4555EC07049C37F6FC4743B3437000000000000000000
          967840BFB49FA49476A79677B09E81B6A68BBCAC92C2B39BC7B9A4CEC1ADD5C9
          B8F4E9E9A6D79F39A73260B9605ABC685CBF7065C47B69C57F69C57F64C37BD3
          EED9FFFFFFFFFFFF97C88055B14B44A9359BD08DBAAEBE0000000000009D670A
          9E8B66988563A1906FA69577AC9B7EB3A388BAAA90C0B199C6B8A3CDC0ACD5C9
          B8E5DBD4E9F1E448A01955AB375FB6565CB9605CBC675DBE6B5DBF6E58BC686D
          C47AF0F9F2FFFFFFF0F7EA60AC3848A017DBE7D5CAB8D6000000000000AE9872
          9685649C8A6AA19070A69577AC9B7EB3A388BAA98FBFB098C5B6A1CCBEAAD4C9
          B7DDD4C7F9F0F4ABD2983592005DAC3660B1445DB34B5DB4525DB5555DB55554
          AF478EC97FEAF5E58CC26C399404A0CC896F6576000000000000000000AC9771
          9685649C8A6A9F8E6EA29071A79577B0A084BBAC92C5B7A1CDC1AFD6CBBADED5
          C7E7E0D6EEE8E3FFFDFF8EC274368E0056A22662AC3660AC385FAD385FAD3860
          AC375FAA3466AB3B368E0087BD6A1411172B1E39000000000000000000AE9872
          92815F978463AA9A7DC1B5A0D6CDBEE2DCD1E9E3DBEBE6DFEBE7E0EBE6DFEBE6
          DFEBE6DFECE7E0ECE7E3F7F3F5ABD19948961C3D8F0B4C991A549E24559E244E
          991D41910F469518A2CA8C18151B54465B000000000000000000000000A89168
          AB9C82D7D0C3E1DCD4D9D3CACFC8BCC7BEAFC2B8A8BFB4A3BDB2A1BDB1A0BCB1
          9FBCB19FBCB19FBCB09FBFB4A5E2D9D9E1EADDA7CE9676B15763A53C62A53B73
          AE539DC589E1ECDD776E7D534661000000000000000000000000000000DDCEB4
          E6E2DCB9B0A2A49885A19480A29581A39783A39784A49884A49884A49884A398
          84A39884A39884A49884A39783A19580AFA395CCC1BEDDD6D6DCDBD7DAD8D4E7
          E2E4FCF4F8C8B5B0000000000000000000000000000000000000000000110F0B
          9F95827F7056897C64897C65877A638679618578608578608679618679618779
          6286796185785F84775E82755C81735A80725981725984775E897B6484755D90
          846F0200FD7630BC0000000000000000000000000000000000000000004E493D
          D0CDC5877D6972664E73664D7E70568A7C62988970A3947CAEA089B6A994BFB3
          A0C7BDADCBC3B5CCC6BAC7C1B6BCB5A9A59C8B8E836D786B526E61477E735CC5
          BFB62A241DD718DC00000000000000000000000000000000000000000000008D
          726651D0C9BD988A6F9C8B6EAB9A7DB6A58ABEAE94C4B59DCABCA7D1C4B0D9CE
          BDE3DCCFEDE7DFF7F3EFFFFFFFFFFFFFFEFDFBF2EEE9DBD5CBC3BBAEDDD8D052
          4A3B0FC75C000000000000000000000000000000000000000000000000A81415
          D0B8889D8A68A39171A89779AD9B7EB3A388BAAA90C0B199C6B8A3CDC0ACD5CA
          B9DFD7CAE8E2D9F1EDE8FAF8F6FDFDFCF8F6F3F2EEE9EEE8E2ECE5DADFD6C809
          F7DF28E060000000000000000000000000000000000000000000000000C6AE80
          9685649C8A6AA19070A69577AC9B7EB3A388BAAA90C0B199C6B8A3CDC0ACD5CA
          B9DFD7CAE8E2D9F1EDE8FAF8F6FDFDFCF8F6F3F1EDE8EBE5DEE6DFD4DDD4C6D2
          C5B3EBDBBFA8AAAD000000000000000000000000000000000000000000AB9570
          9685649C8A6AA19070A59476A9987AAF9E82B6A589BDAD93C4B59FCBBEA9D4C9
          B7DED6C9E8E2D8F1EDE8FAF8F6FDFDFCF8F6F3F1ECE7EBE5DEE6DFD4DDD4C6D1
          C4B2D1C2AAE811CF000000000000000000000000000000000000000000AE9872
          9584639885649C8A69A8987BBAAC94CBC0AEDAD1C3E2DBD1EAE5DDEEE9E3F1EE
          E8F4F1EDF6F3F0F8F6F4FCFBFAFFFFFFFDFCFBF7F4F1EEE9E3E5DED3DBD2C3D1
          C3B1D4C5AC75923E000000000000000000000000000000000000000000AA936C
          948362B5A891D8D1C4EBE7E0F4F1EDF7F5F2F7F4F1F5F3EFF3EFEBEFEBE6ECE7
          DFE8E2D9E5DDD3E1DACEDFD6CADED5C9E1D9CDE7E1D8EFEAE4F3F0EBEAE4DBD2
          C6B4D2C2A975923E000000000000000000000000000000000000000000BDAA86
          E2DCD3F3EFEBEEE8E1EAE5DDECE7E0EFEBE5F2EEEAF3EFEBF2EFE9EFEAE5EBE6
          DFE7E0D7E3DBD0DED6C9D9CFC1D4C8B7CEC1AECABCA7C9BBA6CEC1AFDFD7CCF2
          EEE8E0D3BF3C4CDB0000000000000000000000000000000000000000000702F9
          EEE9E3E1D9CCE5DDD3EAE4DDEFEAE5F3F0ECF7F4F1F8F6F4F6F4F0F2EFEAEEE9
          E3E9E4DBE5DED3E0D8CDDCD3C5D6CBBCD2C6B4CEC1ADCBBDA8C5B7A1BFB097CE
          C2B00301FCCB6DCC0000000000000000000000000000000000000000001E1A15
          D5D0C6D2C9BCE7E0D6EFEAE3F3EFE9F5F3EFFAF8F7FCFCFBF8F7F4F3F0ECEFEA
          E5EAE4DCE5DED4E1D9CDDCD3C6D7CCBDD3C7B5D0C2AECDBFABC7B8A2B8A992C2
          B8A90A08051CBF060000000000000000000000000000000000000000004E22D1
          0501FAD5D1CACBC5BAD2CBC2DED9D2EBE7E2F5F3F0FAF8F7F9F7F4F6F3EEF1ED
          E7ECE7DEE7E0D6E2D9CEDCD2C4D3C8B8CBBEABC2B5A1BCAF9DBDB4A4CEC8BFFB
          F9F2684D18000000000000000000000000000000000000000000000000000000
          5859DAD7C4A3161106DFDBD5D2CEC7D2CEC6D1CDC5D3CEC7D2CEC6D2CCC4D0CA
          C1CDC7BDCBC4B9C9C1B6C8C1B5C8C1B6CBC5BBCFCAC2DDD9D20D08FFAC9D8314
          94B2000000000000000000000000000000000000000000000000000000000000
          0000000000000000007310696749189A8C72473D2D1F170C0601F7FCF7EDF8F4
          EBF8F4EBFDF8F00501F71D170B423B2C91846D3F23F738F26E00000000000000
          0000000000000000000000000000000000000000000000000000}
        HoverColor = clBlack
        TextDistance = 2
        VertSpacing = 2
        OnClick = p1SaveBtnClick
      end
    end
  end
  object Button1: TButton
    Left = 0
    Top = 399
    Width = 776
    Height = 25
    Align = alTop
    Caption = 'More >>'
    TabOrder = 2
    OnClick = Button1Click
  end
  object part1: TMyTable
    TableName = 'mfsrsheetdpart1'
    Connection = BillingData.MyConnection1
    AfterInsert = part1AfterInsert
    AfterEdit = part1AfterEdit
    Left = 352
    Top = 48
    object part1idmfsrsheetdpart1: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'idmfsrsheetdpart1'
      Origin = 'mfsrsheetdpart1.idmfsrsheetdpart1'
      Visible = False
    end
    object part1ItemName: TStringField
      FieldName = 'ItemName'
      Origin = 'mfsrsheetdpart1.ItemName'
      Size = 50
    end
    object part1Ratecode: TStringField
      FieldName = 'Ratecode'
      FixedChar = True
      Size = 5
    end
  end
  object part2: TMyTable
    TableName = 'mfsrsheetdpart2'
    Connection = BillingData.MyConnection1
    AfterInsert = part1AfterInsert
    AfterEdit = part1AfterEdit
    Left = 384
    Top = 48
    object part2idmfsrsheetdpart2: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'idmfsrsheetdpart2'
      Origin = 'mfsrsheetdpart2.idmfsrsheetdpart2'
      Visible = False
    end
    object part2ItemName: TStringField
      FieldName = 'ItemName'
      Size = 50
    end
    object part2forMo: TFloatField
      FieldName = 'forMo'
      Origin = 'mfsrsheetdpart2.forMo'
    end
    object part2prvyrDate: TFloatField
      FieldName = 'prvyrDate'
      Origin = 'mfsrsheetdpart2.prvyrDate'
    end
  end
  object part3: TMyTable
    TableName = 'mfsrsheetdpart3'
    Connection = BillingData.MyConnection1
    AfterInsert = part1AfterInsert
    AfterEdit = part1AfterEdit
    Left = 416
    Top = 48
    object part3idmfsrsheetdpart3: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'idmfsrsheetdpart3'
      Origin = 'mfsrsheetdpart3.idmfsrsheetdpart3'
      Visible = False
    end
    object part3ItemName: TStringField
      FieldName = 'ItemName'
      Origin = 'mfsrsheetdpart3.ItemName'
      Size = 30
    end
    object part3pvtdCurrent: TFloatField
      FieldName = 'pvtdCurrent'
      Origin = 'mfsrsheetdpart3.pvtdCurrent'
    end
    object part3pvtdArrear: TFloatField
      FieldName = 'pvtdArrear'
      Origin = 'mfsrsheetdpart3.pvtdArrear'
    end
    object part3ratecode: TStringField
      FieldName = 'ratecode'
      Origin = 'mfsrsheetdpart3.ratecode'
      FixedChar = True
      Size = 5
    end
  end
  object part4: TMyTable
    TableName = 'mfsrsheetdpart4'
    Connection = BillingData.MyConnection1
    AfterInsert = part1AfterInsert
    AfterEdit = part1AfterEdit
    Left = 448
    Top = 48
    object part4idmfsrsheetdpart4: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'idmfsrsheetdpart4'
      Origin = 'mfsrsheetdpart4.idmfsrsheetdpart4'
      Visible = False
    end
    object part4ItemName: TStringField
      FieldName = 'ItemName'
      Size = 50
    end
    object part4current: TStringField
      FieldName = 'current'
      Origin = 'mfsrsheetdpart4.current'
      Size = 15
    end
    object part4todate: TStringField
      FieldName = 'todate'
      Origin = 'mfsrsheetdpart4.todate'
      Size = 15
    end
  end
  object dsPart1: TMyDataSource
    DataSet = part1
    OnStateChange = dsPart1StateChange
    Left = 352
    Top = 96
  end
  object dsPart2: TMyDataSource
    DataSet = part2
    OnStateChange = dsPart2StateChange
    Left = 384
    Top = 96
  end
  object dsPart3: TMyDataSource
    DataSet = part3
    OnStateChange = dsPart3StateChange
    Left = 416
    Top = 96
  end
  object dsPart4: TMyDataSource
    DataSet = part4
    OnStateChange = dsPart4StateChange
    Left = 448
    Top = 96
  end
  object pmDataEditor: TPopupMenu
    Left = 416
    Top = 208
    object Add1: TMenuItem
      Caption = '&Add'
      OnClick = Add1Click
    end
    object Edit1: TMenuItem
      Caption = '&Edit'
      OnClick = Add1Click
    end
    object Delete1: TMenuItem
      Caption = '&Delete'
      OnClick = Delete1Click
    end
  end
end
