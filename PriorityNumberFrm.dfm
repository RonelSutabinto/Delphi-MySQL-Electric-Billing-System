object priorityNoFrm: TpriorityNoFrm
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'priorityNoFrm'
  ClientHeight = 302
  ClientWidth = 401
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object AdvPanel1: TAdvPanel
    Left = 0
    Top = 0
    Width = 401
    Height = 302
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    UseDockManager = True
    Version = '2.3.0.0'
    BorderColor = -1
    BorderWidth = 2
    Caption.Color = clHighlight
    Caption.ColorTo = clBlue
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clWindowText
    Caption.Font.Height = -11
    Caption.Font.Name = 'Tahoma'
    Caption.Font.Style = []
    Caption.Indent = 2
    CollapsColor = clBtnFace
    CollapsDelay = 0
    ColorTo = 12615680
    ShadowColor = clBlack
    ShadowOffset = 0
    StatusBar.BorderColor = clSilver
    StatusBar.BorderStyle = bsSingle
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = clBlack
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    StatusBar.Color = 14938354
    StatusBar.ColorTo = clWhite
    Text = ''
    ExplicitWidth = 365
    ExplicitHeight = 281
    FullHeight = 200
    object Label1: TLabel
      Left = 11
      Top = 75
      Width = 82
      Height = 13
      Caption = 'QUEUING AREA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object AdvPanel2: TAdvPanel
      Left = 2
      Top = 2
      Width = 397
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      Color = 8454016
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      UseDockManager = True
      Version = '2.3.0.0'
      BorderColor = clGray
      BorderShadow = True
      Caption.Color = clHighlight
      Caption.ColorTo = clBlue
      Caption.Font.Charset = DEFAULT_CHARSET
      Caption.Font.Color = clWindowText
      Caption.Font.Height = -11
      Caption.Font.Name = 'Tahoma'
      Caption.Font.Style = []
      Caption.Indent = 2
      CollapsColor = clBtnFace
      CollapsDelay = 0
      ColorTo = 12615680
      ShadowColor = clBlack
      ShadowOffset = 0
      StatusBar.BorderColor = clSilver
      StatusBar.BorderStyle = bsSingle
      StatusBar.Font.Charset = DEFAULT_CHARSET
      StatusBar.Font.Color = clBlack
      StatusBar.Font.Height = -11
      StatusBar.Font.Name = 'Tahoma'
      StatusBar.Font.Style = []
      StatusBar.Color = 14938354
      StatusBar.ColorTo = clWhite
      Text = ''
      ExplicitWidth = 361
      FullHeight = 200
      object number_lb2: TAdvSmoothLabel
        Left = -2
        Top = 0
        Width = 395
        Height = 33
        Fill.ColorMirror = clNone
        Fill.ColorMirrorTo = clNone
        Fill.GradientType = gtVertical
        Fill.GradientMirrorType = gtSolid
        Fill.BorderColor = clNone
        Fill.Rounding = 0
        Fill.ShadowOffset = 0
        Fill.Glow = gmNone
        Caption.Text = 'Priority Number System (Dipolog Main Office) .'
        Caption.Location = plBottomCenter
        Caption.Font.Charset = DEFAULT_CHARSET
        Caption.Font.Color = clWindowText
        Caption.Font.Height = -13
        Caption.Font.Name = 'Arial Black'
        Caption.Font.Orientation = 34
        Caption.Font.Pitch = fpVariable
        Caption.Font.Style = [fsBold]
        Caption.ColorStart = clWhite
        Caption.ColorEnd = clWhite
        Caption.HatchStyle = HatchStyleDashedVertical
        CaptionShadow.Text = 'Priority Number System (Dipolog Main Office) .'
        CaptionShadow.Font.Charset = DEFAULT_CHARSET
        CaptionShadow.Font.Color = clWindowText
        CaptionShadow.Font.Height = -16
        CaptionShadow.Font.Name = 'Arial Black'
        CaptionShadow.Font.Style = [fsBold]
        CaptionShadow.ColorStart = clGreen
        CaptionShadow.ColorEnd = clBlack
        CaptionShadowOffsetTop = 2
        Version = '1.6.0.2'
        WordWrap = True
      end
    end
    object AdvSmoothButton4: TAdvSmoothButton
      Left = 75
      Top = 198
      Width = 227
      Height = 38
      Appearance.Alignment = taLeftJustify
      Appearance.PictureAlignment = taLeftJustify
      Appearance.Font.Charset = DEFAULT_CHARSET
      Appearance.Font.Color = clBlack
      Appearance.Font.Height = -13
      Appearance.Font.Name = 'Tahoma'
      Appearance.Font.Style = [fsBold]
      Appearance.Spacing = 10
      Appearance.Rounding = 2
      Status.Caption = '0'
      Status.Appearance.Fill.Color = clRed
      Status.Appearance.Fill.ColorMirror = clNone
      Status.Appearance.Fill.ColorMirrorTo = clNone
      Status.Appearance.Fill.GradientType = gtSolid
      Status.Appearance.Fill.GradientMirrorType = gtSolid
      Status.Appearance.Fill.BorderColor = clGray
      Status.Appearance.Fill.Rounding = 0
      Status.Appearance.Fill.ShadowOffset = 0
      Status.Appearance.Fill.Glow = gmNone
      Status.Appearance.Font.Charset = DEFAULT_CHARSET
      Status.Appearance.Font.Color = clWhite
      Status.Appearance.Font.Height = -11
      Status.Appearance.Font.Name = 'Tahoma'
      Status.Appearance.Font.Style = []
      BevelColor = clBlack
      Caption = 'Proceed to Another Caller'
      Color = 16744448
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D49484452000000180000001808040000004A7EF5
        730000000467414D410000B18F0BFC6105000000206348524D00007A26000080
        840000FA00000080E8000075300000EA6000003A98000017709CBA513C000000
        02624B47440000AA8D2332000000097048597300000DD700000DD70142289B78
        0000000774494D4507E10C1602060D8A218890000001B54944415438CB85D25D
        68CD711807F0CFCE66BB616B2DA1A4BC345C08C58A0B73C5A5142BB7AE485EAE
        E6CEADAB5D309A92382E8494B771B15CECC296BCCC523244E958536474584BB6
        C785DFF93BEC1C7B7E37DFE7E5FBFB3DCFF7F951DD763B6758D1433DB699C516
        B92D8409CF4D0A21AFB97AF9129F843BD6AB43BD4D068577D52835EE094792D7
        046A7509F9CA84BDC2B584DBFC7408E4DC179567B9212C4E78A15E5B12DE209C
        AE44F8E07D42CDAEEAD79EBC5ADF0DE4D0E4823E2B5378AE0546121EF7447B36
        EA9411AD347A208431ABB217DE66AF5D149665627CF188E3229D312B40BFD092
        8A8614D524BC5A38CB68460897C17EA127150D98D09928D7850E06CB08879380
        43C2CEB4853639B04FB80B67B2F29359E7BB846927CC4B7E8BBC30FE5BEC1DA9
        BCA821A5E77B9562535EE8F5DAB4F0586B69F667297D2C11BA159CB2D6414F4D
        0993FA1C30E7CFA23A1261525B853536A89F19BC95B535EBBF2F753D96283FEC
        494A1D75C9D2EA94CDBE26CAB44EF5F24228A45556B48D3E67027FCB50C1F2EA
        94753E962DB1746EFE5D942BC3C3D6B832E39AD1D904D8EE4DD9FD83D9B6FF63
        75B6EAF2D2B8F31AFF4DFE02A570B9B71D4827F9000000257445587464617465
        3A63726561746500323031372D31322D32325430323A30363A31332B30313A30
        30755351F60000002574455874646174653A6D6F6469667900323031372D3132
        2D32325430323A30363A31332B30313A3030040EE94A0000001974455874536F
        667477617265007777772E696E6B73636170652E6F72679BEE3C1A0000000049
        454E44AE426082}
      DisabledColor = 8404992
      TabOrder = 1
      ShowFocus = False
      Version = '2.0.1.0'
      OnClick = AdvSmoothButton4Click
    end
    object AdvSmoothButton5: TAdvSmoothButton
      Left = 75
      Top = 242
      Width = 227
      Height = 38
      Appearance.Alignment = taLeftJustify
      Appearance.PictureAlignment = taLeftJustify
      Appearance.Font.Charset = DEFAULT_CHARSET
      Appearance.Font.Color = clBlack
      Appearance.Font.Height = -13
      Appearance.Font.Name = 'Tahoma'
      Appearance.Font.Style = [fsBold]
      Appearance.Spacing = 10
      Appearance.Rounding = 2
      Status.Caption = '0'
      Status.Appearance.Fill.Color = clRed
      Status.Appearance.Fill.ColorMirror = clNone
      Status.Appearance.Fill.ColorMirrorTo = clNone
      Status.Appearance.Fill.GradientType = gtSolid
      Status.Appearance.Fill.GradientMirrorType = gtSolid
      Status.Appearance.Fill.BorderColor = clGray
      Status.Appearance.Fill.Rounding = 0
      Status.Appearance.Fill.ShadowOffset = 0
      Status.Appearance.Fill.Glow = gmNone
      Status.Appearance.Font.Charset = DEFAULT_CHARSET
      Status.Appearance.Font.Color = clWhite
      Status.Appearance.Font.Height = -11
      Status.Appearance.Font.Name = 'Tahoma'
      Status.Appearance.Font.Style = []
      BevelColor = clBlack
      Caption = 'Close       '
      Color = 16744448
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
        F80000000473424954080808087C086488000000097048597300000B1300000B
        1301009A9C18000001CE494441544889B5D5DD4A55511007F0DF39060AA96937
        11D48DE16D595D84C441A4870849B1E83612F42614DFA0E8EB61C41044BAD7A0
        8B384417C70FD067503A5DAC39B03BACAD7BF731B0D87BCFFCE73FB367AD99C5
        7F964605CC00A6625D0BDD09F6F0053FFF34F828D671886EC93AC01A46EA923F
        C251906C601E13188C750B0BD80CCC2166AB923FC119BEE14105FC34DA38C55C
        95CCCFB0ADDE6F8F622782CC9C073A9232AF5D535C91FEE400C339C0BA54CF2A
        65299387C1B1DA6F1890366A23E37415CB7E3FD20DAC603C83FF847D348BCAFB
        11793EE3B01CB67741DCC0C7D0BDCCE017C33655543E0FE544C6A111E4BD20EF
        E3FDB57CA34E86FD5951B91ACAC18C437F90F3C86148611F9A25A0B220B9F732
        E9C2A5F83889E70DFCC8107FC00BBC89EFDEA6AFF4880A72339EC745E5BD002E
        6432E991F4CAD2C0DBD02D65F04FC376A7A86C4A0DB2997118974E4B7F899630
        96C16FA12353FEB5883C9D71AA2AADE07895338E48CDD696C6465D19C37729FB
        CB65A0596960ED48B3A50EF9E7F06D5D049E0B605B9A2D17494BCAFC148FAB66
        34236D7A579A2D8B52870EC59A944ECB56603A5532EF9761A91BF7955F991D69
        434B6B5EA5239BB88DBBB81EC4C7D8C5577F71E9FF13F905605073A2EE0E8912
        0000000049454E44AE426082}
      DisabledColor = 8404992
      TabOrder = 2
      ShowFocus = False
      Version = '2.0.1.0'
      OnClick = AdvSmoothButton5Click
    end
    object AdvSmoothButton6: TAdvSmoothButton
      Left = 75
      Top = 153
      Width = 227
      Height = 38
      Appearance.Alignment = taLeftJustify
      Appearance.PictureAlignment = taLeftJustify
      Appearance.Font.Charset = DEFAULT_CHARSET
      Appearance.Font.Color = clBlack
      Appearance.Font.Height = -13
      Appearance.Font.Name = 'Tahoma'
      Appearance.Font.Style = [fsBold]
      Appearance.Spacing = 10
      Appearance.Rounding = 2
      Status.Caption = '0'
      Status.Appearance.Fill.Color = clRed
      Status.Appearance.Fill.ColorMirror = clNone
      Status.Appearance.Fill.ColorMirrorTo = clNone
      Status.Appearance.Fill.GradientType = gtSolid
      Status.Appearance.Fill.GradientMirrorType = gtSolid
      Status.Appearance.Fill.BorderColor = clGray
      Status.Appearance.Fill.Rounding = 0
      Status.Appearance.Fill.ShadowOffset = 0
      Status.Appearance.Fill.Glow = gmNone
      Status.Appearance.Font.Charset = DEFAULT_CHARSET
      Status.Appearance.Font.Color = clWhite
      Status.Appearance.Font.Height = -11
      Status.Appearance.Font.Name = 'Tahoma'
      Status.Appearance.Font.Style = []
      BevelColor = clBlack
      Caption = 'Caller History'
      Color = 16744448
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D49484452000000180000001808040000004A7EF5
        730000000467414D410000B18F0BFC6105000000206348524D00007A26000080
        840000FA00000080E8000075300000EA6000003A98000017709CBA513C000000
        02624B47440000AA8D2332000000097048597300000DD700000DD70142289B78
        0000000774494D4507E10C1602070994577DC8000001824944415438CB95D331
        4894611CC7F14F97A6690D619084751505513834842D0E8DA5501224D6126150
        D050AD81E0944E5143AD8250E816528E361491211C64A820220E7281A686C365
        9CD770EFBDBE77BDDE71FF67799EFFFBFF3EFC7E3F9E974235E8F7D96F29AF1C
        55B15ACDFBE2AE8BBA8DFAA5B3FC789D69CF2530E608EED8908C1FDD031EBAEF
        82BFC8B82485613CD612CE6D9A8F626FF407BB8CAB4E38EE8A0537E522EB9B33
        50034E1B0F8039EF91D32369CA6078658BDB9E7850380E7916ECF6AA57AFCE35
        3325E27FE63B0930A15B23C8CAC8F8A3D7C7122017F895C73E79AB210CA2CFB2
        A612206D76C7C3B65B46A40CF9EE941B8EE9B25A2ED6BCFA7B2E3B67D1A417DA
        0289B06C1269EBCE460138A9DD941F9A7DB03FEC2EEAB05D008AEBBA9C47BBBC
        86C04342955513DB3DEC5DC4C3922ED9F2C08A8122D3D99D4FF10063D5492219
        49695DBAB2876907C2D39CF3953D1CDC4D52D5B116035B44D28956AD7DB6FE97
        3461CD53ED3140B3435EC6DDD4E96BD18F59589B5EE71FFC3FDB8D6B3BEE4962
        7A0000002574455874646174653A63726561746500323031372D31322D323254
        30323A30373A30392B30313A3030F24B65180000002574455874646174653A6D
        6F6469667900323031372D31322D32325430323A30373A30392B30313A303083
        16DDA40000001974455874536F667477617265007777772E696E6B7363617065
        2E6F72679BEE3C1A0000000049454E44AE426082}
      DisabledColor = 8404992
      TabOrder = 3
      ShowFocus = False
      Version = '2.0.1.0'
      OnClick = AdvSmoothButton6Click
    end
    object AdvSmoothButton7: TAdvSmoothButton
      Left = 75
      Top = 108
      Width = 227
      Height = 38
      Appearance.Alignment = taLeftJustify
      Appearance.PictureAlignment = taLeftJustify
      Appearance.Font.Charset = DEFAULT_CHARSET
      Appearance.Font.Color = clBlack
      Appearance.Font.Height = -13
      Appearance.Font.Name = 'Tahoma'
      Appearance.Font.Style = [fsBold]
      Appearance.Spacing = 10
      Appearance.Rounding = 2
      Status.Caption = '0'
      Status.Appearance.Fill.Color = clRed
      Status.Appearance.Fill.ColorMirror = clNone
      Status.Appearance.Fill.ColorMirrorTo = clNone
      Status.Appearance.Fill.GradientType = gtSolid
      Status.Appearance.Fill.GradientMirrorType = gtSolid
      Status.Appearance.Fill.BorderColor = clGray
      Status.Appearance.Fill.Rounding = 0
      Status.Appearance.Fill.ShadowOffset = 0
      Status.Appearance.Fill.Glow = gmNone
      Status.Appearance.Font.Charset = DEFAULT_CHARSET
      Status.Appearance.Font.Color = clWhite
      Status.Appearance.Font.Height = -11
      Status.Appearance.Font.Name = 'Tahoma'
      Status.Appearance.Font.Style = []
      BevelColor = clBlack
      Caption = 'Call Numbers'
      Color = 16744448
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D49484452000000180000001808040000004A7EF5
        730000000467414D410000B18F0BFC6105000000206348524D00007A26000080
        840000FA00000080E8000075300000EA6000003A98000017709CBA513C000000
        02624B47440000AA8D2332000000097048597300000DD700000DD70142289B78
        0000000774494D4507E10C0D021E177240392D000001614944415438CBADD231
        68535114C6F1DF4B9E08292D5DAA081D6CE9522C4D1437B35A10DA8CC54E42B1
        203A38BA3817D20E82E0EA280A5D14716B164B2994420AA61D0A4E3A28581C4A
        2126F43A18C86BC9CBCBE039C3E5C0FFFBCE39F75EFE4B94D5D4940717D48C19
        531B0C9EB0AEE5A75FDA5E2965E1771D0B896C7AD80F7FA42D7863D12D3755BC
        1304EB69F8A4A660D9535F05C1F7CE79A6D85BB026F8ECF1B991FEE58B2E944B
        088A786DA587D58D6431640323A80B1A3DFC837A87D830145973A8A9E8997ADA
        ACF69554EDBB6C9A5DB13DB39D0E21B5C3AC3DB1DD9C58DBB006F2A9D71DA361
        585B9C73AAE0C882BCA954C1944B161C29388D3C71D55B15EF1DF479D2927B3E
        B8EF07912A584ADD2008964155D4F5F8D857B07D71C3077DF120789EC4C7FDCE
        14B4DCEE7E8D397F64C589792496B862C68C6965135A220479C7361D68F8E25B
        9A53C1271539DCB1E55A66678C5AB565C74BD707C133E22FAFBAB71D9F7F8F53
        0000002574455874646174653A63726561746500323031372D31322D31335430
        323A33303A32332B30313A303092D28A460000002574455874646174653A6D6F
        6469667900323031372D31322D31335430323A33303A32332B30313A3030E38F
        32FA0000001974455874536F667477617265007777772E696E6B73636170652E
        6F72679BEE3C1A0000000049454E44AE426082}
      DisabledColor = 8404992
      TabOrder = 4
      ShowFocus = False
      Version = '2.0.1.0'
      OnClick = AdvSmoothButton7Click
    end
    object ComboBox1: TComboBox
      Left = 99
      Top = 70
      Width = 121
      Height = 21
      Style = csDropDownList
      TabOrder = 5
      Items.Strings = (
        'DMO'
        'PAO'
        'SAO'
        'LAO')
    end
    object AdvSmoothButton1: TAdvSmoothButton
      Left = 224
      Top = 64
      Width = 78
      Height = 29
      Appearance.Alignment = taLeftJustify
      Appearance.PictureAlignment = taLeftJustify
      Appearance.Font.Charset = DEFAULT_CHARSET
      Appearance.Font.Color = clBlack
      Appearance.Font.Height = -13
      Appearance.Font.Name = 'Tahoma'
      Appearance.Font.Style = [fsBold]
      Appearance.Spacing = 10
      Appearance.Rounding = 2
      Status.Caption = '0'
      Status.Appearance.Fill.Color = clRed
      Status.Appearance.Fill.ColorMirror = clNone
      Status.Appearance.Fill.ColorMirrorTo = clNone
      Status.Appearance.Fill.GradientType = gtSolid
      Status.Appearance.Fill.GradientMirrorType = gtSolid
      Status.Appearance.Fill.BorderColor = clGray
      Status.Appearance.Fill.Rounding = 0
      Status.Appearance.Fill.ShadowOffset = 0
      Status.Appearance.Fill.Glow = gmNone
      Status.Appearance.Font.Charset = DEFAULT_CHARSET
      Status.Appearance.Font.Color = clWhite
      Status.Appearance.Font.Height = -11
      Status.Appearance.Font.Name = 'Tahoma'
      Status.Appearance.Font.Style = []
      BevelColor = clBlack
      Caption = '  Connect'
      Color = clWhite
      ParentFont = False
      DisabledColor = 8404992
      TabOrder = 6
      ShowFocus = False
      Version = '2.0.1.0'
      OnClick = AdvSmoothButton1Click
    end
  end
end
