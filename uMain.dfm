object frmMain: TfrmMain
  Left = 284
  Top = 172
  Caption = 'SendMail'
  ClientHeight = 601
  ClientWidth = 548
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 14
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 548
    Height = 153
    Align = alTop
    Caption = 'Login'
    TabOrder = 0
    ExplicitWidth = 509
    object Username: TLabel
      Left = 16
      Top = 16
      Width = 49
      Height = 14
      Caption = 'Username'
    end
    object Password: TLabel
      Left = 15
      Top = 57
      Width = 50
      Height = 14
      Caption = 'Password'
    end
    object Label1: TLabel
      Left = 16
      Top = 98
      Width = 22
      Height = 14
      Caption = 'Host'
    end
    object Label2: TLabel
      Left = 304
      Top = 98
      Width = 19
      Height = 14
      Caption = 'Port'
    end
    object edtUsername: TEdit
      Left = 16
      Top = 32
      Width = 281
      Height = 22
      TabOrder = 0
      Text = 'noreply@amaggi.com.br'
    end
    object edtPassword: TEdit
      Left = 16
      Top = 72
      Width = 281
      Height = 22
      PasswordChar = '*'
      TabOrder = 1
      Text = 'e4UkoLrQG@'
    end
    object edtHost: TEdit
      Left = 16
      Top = 112
      Width = 281
      Height = 22
      TabOrder = 2
      Text = 'smtp.office365.com'
    end
    object edtPort: TEdit
      Left = 304
      Top = 112
      Width = 50
      Height = 22
      TabOrder = 3
      Text = '587'
    end
    object rgEncryptionType: TRadioGroup
      Left = 303
      Top = 21
      Width = 220
      Height = 33
      Caption = 'Encryption Type'
      Columns = 2
      ItemIndex = 1
      Items.Strings = (
        'taSSL'
        'taTLS')
      TabOrder = 4
    end
    object rgSMTPAuthentication: TRadioGroup
      Left = 303
      Top = 57
      Width = 220
      Height = 37
      Caption = 'SMTP Authentication'
      Columns = 3
      ItemIndex = 1
      Items.Strings = (
        'satNone'
        'satDefault'
        'satSASL')
      TabOrder = 5
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 153
    Width = 548
    Height = 139
    Align = alTop
    Caption = 'Header'
    TabOrder = 1
    ExplicitWidth = 509
    object Label3: TLabel
      Left = 16
      Top = 16
      Width = 11
      Height = 14
      Caption = 'To'
    end
    object Label4: TLabel
      Left = 16
      Top = 56
      Width = 36
      Height = 14
      Caption = 'Subject'
    end
    object btnAttchment: TSpeedButton
      Left = 400
      Top = 104
      Width = 97
      Height = 28
      Hint = 'Add attachment'
      Caption = 'Attachment'
      Flat = True
      Glyph.Data = {
        B60D0000424DB60D000000000000360000002800000030000000180000000100
        180000000000800D0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3
        E4E1DFB7AFDFB3ACEDD4D1FEFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFE1E1E1AFAFAFACACACD1D1D1FDFDFDFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFF6EBE8CD8A7CB5513FB5513FB5513FB5513FC06E5FEED8
        D4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E8E87E7E7E404040404040404040
        404040606060D4D4D4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5E8E5BD6454B5513FBA
        5D4CD3978CD49C92BE6858B5513FB65543EACFCBFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5E5
        E55555554040404D4D4D8D8D8D939393595959404040444444CBCBCBFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFC47567B5513FC67B6DF8EFEEF1DFDCEACECAFAF3F2D59E94B551
        3FB95C4BF4E6E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF6868684040406E6E6EEEEEEEDDDDDDCACACA
        F2F2F29494944040404C4C4CE4E4E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDD4D0B5513FBD6454FBF7F6D1
        958AB5513FB5513FC06C5DF6EBE8CD8B7FB5513FC27162FCF9F8FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0D0D04040
        40555555F6F6F68A8A8A4040404040405E5E5EE8E8E8808080404040636363F8
        F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFDEB0A7B5513FD59E94EDD4D1B5513FBA5D4CC27061B5513FC47566F9F1
        F0C06C5DB5513FD09185FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFA8A8A8404040949494D1D1D14040404D4D4D626262
        404040676767EFEFEF5D5D5D404040868686FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEB3ABB5513FD59A91EACDC6B5
        513FC47566F9F3F1BE6A5AB5513FD2978DF2E2DFB75948B5513FDFB7AFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFABABAB4040
        40919191C7C7C7404040676767F1F1F15A5A5A4040408D8D8DDFDFDF48484840
        4040AFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFEFDBD8B5513FBD6454FCF8F7BD6455B5513FD7A49AF0DEDBB75746B551
        3FE3BEB7E6C3BDB5513FB65543EED9D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFD8D8D8404040545454F7F7F75656564040409B9B9B
        DBDBDB474747404040B7B7B7BDBDBD404040444444D5D5D5FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC16D5EB5513FDBAAA0EE
        D6D2B65442B5513FE8CBC6E4BEB7B5513FB75746F0DEDBD59C93B5513FBD6454
        F8EFEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F
        5F404040A1A1A1D2D2D2434343404040C6C6C6B8B8B8404040474747DBDBDB93
        9393404040545454EEEEEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFEACDC9B5513FB55240EACFCADDB1A9B5513FB95C4BF5E7E6D297
        8DB5513FBE6A5AF8F1EFC6796AB5513FC87E70FDFCFCFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFC9C9C9404040414141CACACAA9A9A9404040
        4C4C4CE6E6E68D8D8D4040405A5A5AEFEFEF6C6C6C404040717171FBFBFBFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7A297B5513FBC
        6251F7ECEBCA8476B5513FC6796AFBF5F4C27061B5513FCD8B7FF5E7E6BA5D4C
        B5513FD8A59DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF989898404040525252EBEBEB7878784040406C6C6CF3F3F362626240404080
        8080E6E6E64D4D4D4040409D9D9DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFEFEFDC98275B5513FC37365F7EFEEBF6A5AB5513FD397
        8BF6E9E8BB5D4DB5513FDCADA5EBD2CEB65342B5513FE6C7C0FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFD757575404040666666EDEDED
        5B5B5B4040408C8C8CE7E7E74E4E4E404040A5A5A5CECECE424242404040C1C1
        C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F3F1BE
        6657B5513FD19388F2DFDCB75746B5513FE4BEB7EACFCAB55240B55341EBD2CE
        DDAEA6B5513FBB604FFCF9F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFF1F1F1575757404040888888DCDCDC474747404040B8B8B8CACACA41
        4141424242CECECEA6A6A6404040505050F8F8F8FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0DDD8B75745B5513FE1B9B1E3BEB7B551
        3FB75746F1DFDCDAA79EB5513FCE8D82FFFEFEC57769B5513FE6C3BDFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9D9D9464646404040
        B1B1B1B7B7B7404040474747DDDDDD9F9F9F404040828282FEFEFE6969694040
        40BDBDBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE3BDB7B5513FB75544EED9D5D1958BB5513FC06A5BF9F4F3E2BCB4F5E7E6
        FFFFFFDAA69DB5513FDAA79EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFB7B7B7404040454545D6D6D68B8B8B4040405C5C5CF3
        F3F3B5B5B5E6E6E6FFFFFF9E9E9E4040409F9F9FFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3978CB5513FBD6454F7EA
        E9C47364B5513FCC887BFEFDFDFFFFFFFAF5F4C27163B5513FE4C1BAFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8D8D8D
        404040555555E9E9E96565654040407B7B7BFCFCFCFFFFFFF4F4F46363634040
        40BBBBBBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFCFAFAC47767B5513FDEB3ABF5E7E6B95C4BB5513FC27163D9A49C
        BE6857B5513FC06C5DFDFBFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9696969404040ABABABE6E6E64C4C4C40
        40406363639C9C9C5858584040405D5D5DFAFAFAFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F1EFDBABA3F9F1
        F0FFFFFFF0DBD7BE6657B5513FB5513FB5513FC37163F7EAE9FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        EFEFEFA4A4A4EFEFEFFFFFFFD7D7D7575757404040404040404040646464E9E9
        E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF5F5E4BFB8DCADA4
        E8C9C5FEFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5
        F5F5B9B9B9A5A5A5C5C5C5FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Margin = 2
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = btnAttchmentClick
    end
    object lblAttachment: TLabel
      Left = 16
      Top = 112
      Width = 80
      Height = 14
      Constraints.MinWidth = 80
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object btnClearAttchment: TSpeedButton
      Left = 361
      Top = 104
      Width = 33
      Height = 28
      Hint = 'Clear attachment'
      Flat = True
      Glyph.Data = {
        36060000424D3606000000000000360000002800000020000000100000000100
        18000000000000060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFCFCFFFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFFFCFC
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFCFCFCFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFCFCFCFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FAFBFF777EF87D86F7FDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFF7C84F77680
        F8FAFBFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFA7373737B7B7BFCFCFCFFFFFFFF
        FFFFFFFFFFFFFFFFFCFCFC797979747474FAFAFAFFFFFFFFFFFFFFFFFFFFFFFF
        FBFBFF7680F83643F4888FF9FEFEFFFFFFFFFFFFFFFEFEFF8790F73643F47680
        F8FBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFA747474323232868686FEFEFEFF
        FFFFFFFFFFFEFEFE858585323232747474FAFAFAFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFBFBFF7680F83643F4888FF9FEFEFFFEFEFF8790F73643F47680F8FBFB
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFA747474323232868686FE
        FEFEFEFEFE858585323232747474FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFBFBFF7680F83643F4888FF98790F73643F47680F8FBFBFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFA74747432323286
        8686858585323232747474FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFBFBFF7680F83643F43643F47680F8FBFBFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFA74747432
        3232323232747474FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFEFEFF878DF93643F43643F4878DF9FEFEFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE84848432
        3232323232848484FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFEFEFF888FF93643F4757EF8757DF83643F4888FF9FEFEFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE86868632323273
        7373727272323232868686FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFEFEFF888FF93643F47680F8FBFBFFFBFBFF777EF83643F4888FF9FEFE
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE868686323232747474FA
        FAFAFAFAFA737373323232868686FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FEFEFF888FF93643F47680F8FBFBFFFFFFFFFFFFFFFBFBFF777EF83643F4888F
        F9FEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE868686323232747474FAFAFAFF
        FFFFFFFFFFFAFAFA737373323232868686FEFEFEFFFFFFFFFFFFFFFFFFFFFFFF
        FAFBFF777EF87D86F7FDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFF7C84F7777E
        F8FAFBFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFA7373737B7B7BFCFCFCFFFFFFFF
        FFFFFFFFFFFFFFFFFCFCFC797979737373FAFAFAFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFCFCFFFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFFFCFC
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFCFCFCFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFCFCFCFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      Visible = False
      OnClick = btnClearAttchmentClick
    end
    object edtTo: TEdit
      Left = 16
      Top = 32
      Width = 481
      Height = 22
      TabOrder = 0
      Text = 'eduardo.faneli@amaggi.com.br;ti.sigam@amaggi.com.br'
    end
    object edtSubject: TEdit
      Left = 16
      Top = 72
      Width = 481
      Height = 22
      TabOrder = 1
      Text = '[ Teste ] - Teste de Servidor de Email'
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 292
    Width = 548
    Height = 41
    Align = alTop
    TabOrder = 2
    ExplicitWidth = 509
    DesignSize = (
      548
      41)
    object btnSendEmail: TSpeedButton
      Left = 3
      Top = 0
      Width = 80
      Height = 40
      Hint = 'Send Email'
      Anchors = [akLeft, akTop, akRight, akBottom]
      Flat = True
      Glyph.Data = {
        B60D0000424DB60D000000000000360000002800000030000000180000000100
        180000000000800D0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAD7AAFCECDAFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC2C2C2E4E4
        E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFF8C990F39C2EFBE4C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFB0B0B06B6B6BD7D7D7FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFBE4C7F8C990F8C990F8C990F8C990F8C990F5AF57F39621F39927FBDCB7FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFD7D7D7B0B0B0B0B0B0B0B0B0B0B0B0B0B0B08888886262
        62666666CCCCCCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F7F5EEEDE8EF
        ECE9EFECE9EFECE9EFECE9EFECE9EFECE9F1C085F39621F39621F39621F39621
        F39621F39621F39621F39621F39621F8CC94FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFECECECD6D6D6D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D59B9B9B62626262
        6262626262626262626262626262626262626262626262B3B3B3FFFFFFFFFFFF
        FFFFFFFFFFFFF8F7F5DCD8CFDCD8CFDCD8CFDCD8CFDCD8CFDCD8CFDCD8CFDCD8
        CFE8B778F39621F39621F39621F39621F39621F39621F39621F39621F39621F8
        CE96FFFFFFFFFFFFFFFFFFFFFFFFEDEDEDA7A7A7A6A6A6A6A6A6A6A6A6A6A6A6
        A6A6A6A6A6A6A6A6A68484846262626262626262626262626262626262626262
        62626262626262B5B5B5FFFFFFFFFFFFFFFFFFFFFFFFEDEBE8DCD8CFDCD8CFDC
        D8CFDCD8CFDCD8CFDCD8CFDCD8CFDCD8CFE2C8A3E8B778E8B778E8B778E8B778
        E8B778EEA64DF39621F29725EFCCA2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD4D4
        D4A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A695959584848484
        8484848484848484848484737373626262636363ABABABFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFECEAE6DCD8CFDCD8CFDCD8CFDCD8CFDCD8CFDCD8CFDCD8CFDCD8
        CFDCD8CFDCD8CFDCD8CFDCD8CFDCD8CFDCD8CFE8B778F29B2CE2C8A3ECEAE6FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFD2D2D2A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6
        A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A68484846666
        66959595D2D2D2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECEAE6DCD8CFDCD8CFDC
        D8CFDCD8CFDCD8CFDCD8CFDCD8CFDCD8CFDCD8CFDCD8CFDCD8CFDCD8CFDCD8CF
        DCD8CFE5C08EDFCEB4DCD8CFECEAE6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD2D2
        D2A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6
        A6A6A6A6A6A6A6A6A6A6A68D8D8D9C9C9CA6A6A6D2D2D2FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFECEAE6DCD8CFDCD8CFDCD8CFDCD8CFDCD8CFDCD8CFDCD8CFCBC5
        B9A99E89CBC5B8DCD8CFDCD8CFDCD8CFDCD8CFDCD8CFDCD8CFDCD8CFECEAE6FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFD2D2D2A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6
        A6A6A6A6A6A6979797777777979797A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6
        A6A6A6A6D2D2D2FFFFFFFFFFFFFCFCFCD8D2C8C5BFB1D0CBC0DCD8CFDCD8CFDC
        D8CFDCD8CFDCD8CFDAD6CDB7AE9DA49882C2BAABA39982B8AF9DDAD6CCDCD8CF
        DCD8CFDCD8CFDCD8CFDCD8CFECEAE6FFFFFFFFFFFFFBFBFBB4B4B49292929C9C
        9CA6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A5A5A58484847272728E8E8E73737385
        8585A5A5A5A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6D2D2D2FFFFFFFFFFFFE7E5E0
        C5BEB0C5BEB0D0CBC0DCD8CFDCD8CFDCD8CFDCD8CFD4D0C5ABA08CADA48FD5D1
        C7DCD8CFD5D1C7ADA48FABA18CD4D0C5DCD8CFDCD8CFDCD8CFDCD8CFECEAE6FF
        FFFFFFFFFFD4D4D49191919191919C9C9CA6A6A6A6A6A6A6A6A6A6A6A6A0A0A0
        7979797B7B7BA1A1A1A6A6A6A1A1A17B7B7B797979A0A0A0A6A6A6A6A6A6A6A6
        A6A6A6A6D2D2D2FFFFFFFFFFFFE1DDD6C5BEB0C5BEB0D0CBC0DCD8CFDCD8CFDC
        D8CFC7C1B3A1967FBCB4A3DBD7CEDCD8CFDCD8CFDCD8CFDBD7CEBCB4A3A1967F
        C7C1B3DCD8CFDCD8CFDCD8CFECEAE6FFFFFFFFFFFFC7C7C79191919191919C9C
        9CA6A6A6A6A6A6A6A6A6939393707070898989A5A5A5A6A6A6A6A6A6A6A6A6A5
        A5A5898989707070939393A6A6A6A6A6A6A6A6A6D2D2D2FFFFFFFFFFFFE1DDD6
        C5BEB0C5BEB0D0CBC0DCD8CFDAD5CCB8AF9DA69B86D0CABEDCD8CFDCD8CFDCD8
        CFDCD8CFDCD8CFDCD8CFDCD8CFD0CABEA69B86B8AF9DDAD5CCDCD8CFECEAE6FF
        FFFFFFFFFFC7C7C79191919191919C9C9CA6A6A6A4A4A48585857474749B9B9B
        A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A69B9B9B747474858585A4A4
        A4A6A6A6D2D2D2FFFFFFFFFFFFE1DDD6C5BEB0C5BEB0D0CBC0D2CCC1A79D88B3
        AA97D9D5CBDCD8CFDCD8CFDCD8CFDCD8CFDCD8CFDCD8CFDCD8CFDCD8CFDCD8CF
        D9D5CBB3AA97A79D88D2CCC1ECEAE6FFFFFFFFFFFFC7C7C79191919191919C9C
        9C9D9D9D767676818181A4A4A4A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6
        A6A6A6A6A6A6A6A6A4A4A48181817676769D9D9DD2D2D2FFFFFFFFFFFFE1DDD6
        C5BEB0C5BEB0C3BCADA29680C8C1B4DCD8CFDCD8CFDCD8CFDCD8CFDCD8CFDCD8
        CFDCD8CFDCD8CFDCD8CFDCD8CFDCD8CFDCD8CFDCD8CFC8C1B4A29680DEDAD3FF
        FFFFFFFFFFC7C7C7919191919191909090707070939393A6A6A6A6A6A6A6A6A6
        A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A69393
        93707070C3C3C3FFFFFFFFFFFFE1DDD6C5BEB0C5BEB0C5BEAFCFC9BDDBD7CEDC
        D8CFDCD8CFDCD8CFDCD8CFDCD8CFDCD8CFDCD8CFDCD8CFDCD8CFDCD8CFDCD8CF
        DCD8CFDCD8CFDDD9D0DFDBD3FBFBFBFFFFFFFFFFFFC7C7C79191919191919191
        919A9A9AA5A5A5A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6
        A6A6A6A6A6A6A6A6A6A6A6A6A6A6A9A9A9BABABAF9F9F9FFFFFFFFFFFFE1DDD6
        C5BEB0C5BEB0C5BEB0C4BCAEA4998392846AB6AE9DC5BEB0C5BEB0C5BEB0B6AE
        9D92846AA69C85C4BCAEC5BEB0C5BEB0C5BEB0E1DDD6FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFC7C7C7919191919191919191909090737373626262848484919191
        919191919191848484626262757575909090919191919191919191C7C7C7FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFE1DDD6C5BEB0C5BEB0BCB4A396896F9D927AC1
        BAABC5BEB0C5BEB0C5BEB0C5BEB0C5BEB0C0B9AA9E917A96896FBCB4A3C5BEB0
        C5BEB0E1DDD6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7C7C79191919191918989
        896565656D6D6D8E8E8E9191919191919191919191919191918D8D8D6C6C6C65
        6565898989919191919191C7C7C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1DDD6
        C5BEB0AFA6928F8266ACA18DC5BEB0C5BEB0C5BEB0C5BEB0C5BEB0C5BEB0C5BE
        B0C5BEB0C5BEB0ACA18D8F8266AFA692C5BEB0E1DDD6FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFC7C7C79191917E7E7E6060607A7A7A919191919191919191919191
        9191919191919191919191919191917A7A7A6060607E7E7E919191C7C7C7FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFDCD7CF9C9077988C72BEB5A5C5BEB0C5BEB0C5
        BEB0C5BEB0C5BEB0C5BEB0C5BEB0C5BEB0C5BEB0C5BEB0C5BEB0BEB5A5988B72
        9C9078DAD8CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1C1C16B6B6B6868688A8A
        8A91919191919191919191919191919191919191919191919191919191919191
        91918A8A8A6868686C6C6CC1C1C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E0D8
        A79D87C4BDAFC5BEB0C5BEB0C5BEB0C5BEB0C5BEB0C5BEB0C5BEB0C5BEB0C5BE
        B0C5BEB0C5BEB0C5BEB0C5BEB0C4BDAFA69C87E4E0D9FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFD3D3D3777777909090919191919191919191919191919191919191
        919191919191919191919191919191919191919191909090767676D4D4D4FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F1EFE1DED7E0DBD4E0DBD4E0DBD4E0
        DBD4E0DBD4E0DBD4E0DBD4E0DBD4E0DBD4E0DBD4E0DBD4E0DBD4E0DBD4E1DED7
        F3F2EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E8E8C8C8C8C4C4
        C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4
        C4C4C4C4C4C8C8C8E9E9E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = btnSendEmailClick
      ExplicitWidth = 41
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 333
    Width = 548
    Height = 268
    Align = alClient
    Caption = 'Body'
    TabOrder = 3
    ExplicitWidth = 509
    object reBody: TRichEdit
      Left = 2
      Top = 16
      Width = 544
      Height = 250
      Align = alClient
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 0
      Zoom = 100
      ExplicitWidth = 505
    end
  end
  object odAttchment: TOpenDialog
    Left = 456
    Top = 225
  end
end
