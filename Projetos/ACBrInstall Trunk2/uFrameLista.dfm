object framePacotes: TframePacotes
  Left = 0
  Top = 0
  Width = 727
  Height = 1237
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  TabOrder = 0
  object pnlBotoesMarcar: TPanel
    Left = 0
    Top = 1196
    Width = 727
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object btnPacotesDesmarcarTodos: TSpeedButton
      AlignWithMargins = True
      Left = 677
      Top = 3
      Width = 47
      Height = 35
      Hint = 'Desmarcar todos os pacotes'
      Margins.Left = 0
      Align = alRight
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFD4D6E6262E83262E83D4D6E6FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFD4D6E6262F82252D7FD4D6E6FFFFFFFFFFFFD4D6E6293284
        4F57C5313BBC262E83D4D6E6FFFFFFFFFFFFFFFFFFD4D6E6262F82343CAE343C
        AE262F82D4D6E6FFFFFF2A33855B63CC696BDE5A5DDA2B35BB262E83D4D6E6FF
        FFFFD4D6E6262F83323AB1393FD8393FD7343CAE262F82FFFFFF252D7F535CC1
        6D70E06A69DF4B4ED72A34BC262E83E3E4EE262F832F38B5373DD9383DE8383E
        D82D35A1252D7FFFFFFFD4D6E62A33855D66CF6B6FE06968DF3F42D52934BD19
        22802C36BA363BD7383BE4373DD92B33A4252D7FD4D6E6FFFFFFFFFFFFD4D6E6
        2932855C64CF6A6DE06261DD3639D42D38CF3439D63739DF353BD82832A8252D
        7FD4D6E6FFFFFFFFFFFFFFFFFFFFFFFFD4D6E62932855A63D0686CE05857DB35
        36D63737D93338D72630AB252D7FD4D6E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFA8ACCC212A846972E6676ADF4C4BD83536D62A35CC17207BA8ACCCFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD4D6E62A3386636CD66875E3656EDE62
        65DE3F3ED63236D52732C2262E84D4D6E6FFFFFFFFFFFFFFFFFFFFFFFFD4D6E6
        2B34866E76DA7081E66578DF6773E3646DE35A5EDE3938D43235D52631C3262E
        84D4D6E6FFFFFFFFFFFFD4D6E62C35867981DE7F8FEA7186E26E7FE65F68CA28
        31855C65D74C50DC3635D43135D62531C4262E84D4D6E6FFFFFF2D3586848CE1
        909DEE8295E67E8DEA6A72CF2A3381C5C8DD464E96515BD33E43D93635D43135
        D62430C5262E84FFFFFF2D35868990E297A4F08E9CEE767DCC2B3482D4D6E6FF
        FFFFE3E4EE2932854C56D32F35D82F34D7232FC7262E84FFFFFFD4D6E62D3586
        878FE38288CA2C3582D4D6E6FFFFFFFFFFFFFFFFFFD4D6E6283285404BD21F2D
        CC252E84D4D6E6FFFFFFFFFFFFD4D6E62D35832D3583D4D6E6FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFD4D6E6283185283185D4D6E6FFFFFFFFFFFF}
      ParentShowHint = False
      ShowHint = True
      OnClick = btnPacotesDesmarcarTodosClick
    end
    object btnPacotesMarcarTodos: TSpeedButton
      AlignWithMargins = True
      Left = 627
      Top = 3
      Width = 47
      Height = 35
      Hint = 'Marcar todos os pacotes'
      Align = alRight
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6ECE644915F7E
        A384FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFE9EEE9418D5517DA5E1EC05A82A686FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECF0EC448D5314BD4F10C64D0F
        C54C1CA94E88AE8BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        EDF2ED4D945738B55D35BD5D35BE6133BE5E2DB5572F9E518EB590FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFF0F4F05096564EB06450B96750BA6958965F48
        9F5A51BD6A52B8695DAC6B93BA94FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9EC29E
        59AC6664B87163BA7263A167F4F7F4C3D6C454A66065BC7464B6705DA86697BE
        97FFFFFFFFFFFFFFFFFFFFFFFFFBFCFB6AAA6C74BD7A64A865F2F6F2FFFFFFFF
        FFFFC0D7C05DAD627AC18079BD7E5FAA6299C299FFFFFFFFFFFFFFFFFFFFFFFF
        FAFBFAB1D1B1F1F5F1FFFFFFFFFFFFFFFFFFFFFFFFBAD5BA66B56790CF918FCC
        9066B566B8D6B8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFB4D4B470C170A8E5A858B258D6E7D6FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAED1AE81C4
        81C9E0C9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ParentShowHint = False
      ShowHint = True
      OnClick = btnPacotesMarcarTodosClick
    end
  end
  object ScrollBox1: TScrollBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 721
    Height = 1190
    Align = alClient
    BevelOuter = bvNone
    BorderStyle = bsNone
    TabOrder = 0
    object Label1: TLabel
      Left = 276
      Top = 1
      Width = 85
      Height = 13
      Margins.Left = 5
      Caption = 'Instala'#231#227'o m'#237'nima'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 276
      Top = 90
      Width = 176
      Height = 13
      Margins.Left = 5
      Caption = 'Componentes p/ comunica'#231#227'o seriais'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 276
      Top = 107
      Width = 120
      Height = 13
      Margins.Left = 5
      Caption = 'Gera'#231#227'o de arquivos TXT'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 292
      Top = 430
      Width = 168
      Height = 13
      Margins.Left = 5
      Caption = 'Nota fiscal eletr'#244'nica (NFe e NFCe)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 276
      Top = 381
      Width = 146
      Height = 13
      Margins.Left = 5
      Caption = 'Documentos fiscais eletr'#244'nicos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 3
      Top = 869
      Width = 200
      Height = 13
      Caption = 'Gerador de Relat'#243'rios (FastReport)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 276
      Top = 887
      Width = 83
      Height = 13
      Margins.Left = 5
      Caption = 'FastReport - NFe'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 276
      Top = 904
      Width = 83
      Height = 13
      Margins.Left = 5
      Caption = 'FastReport - CTe'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 276
      Top = 921
      Width = 292
      Height = 13
      Margins.Left = 5
      Caption = 'FastReport - NFSe (Componente antigo. Migrar para o novo)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 276
      Top = 955
      Width = 94
      Height = 13
      Margins.Left = 5
      Caption = 'FastReport - Boleto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 276
      Top = 972
      Width = 91
      Height = 13
      Margins.Left = 5
      Caption = 'FastReport - MDFe'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 278
      Top = 1004
      Width = 91
      Height = 13
      Margins.Left = 5
      Caption = 'FastReport - GNRE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label13: TLabel
      Left = 276
      Top = 1060
      Width = 93
      Height = 13
      Margins.Left = 5
      Caption = 'FortesReport - NFe'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label14: TLabel
      Left = 276
      Top = 1110
      Width = 93
      Height = 13
      Margins.Left = 5
      Caption = 'FortesReport - CTe'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label15: TLabel
      Left = 276
      Top = 1077
      Width = 302
      Height = 13
      Margins.Left = 5
      Caption = 'FortesReport - NFSe (Componente antigo. Migrar para o novo)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label16: TLabel
      Left = 276
      Top = 1127
      Width = 104
      Height = 13
      Margins.Left = 5
      Caption = 'FortesReport - Boleto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label17: TLabel
      Left = 276
      Top = 1144
      Width = 101
      Height = 13
      Margins.Left = 5
      Caption = 'FortesReport - MDFe'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label18: TLabel
      Left = 276
      Top = 1178
      Width = 101
      Height = 13
      Margins.Left = 5
      Caption = 'FortesReport - GNRE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label19: TLabel
      Left = 276
      Top = 1161
      Width = 93
      Height = 13
      Margins.Left = 5
      Caption = 'FortesReport - SAT'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label20: TLabel
      Left = 3
      Top = 1026
      Width = 212
      Height = 13
      Caption = 'Gerador de Relat'#243'rios (FortesReport)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label21: TLabel
      Left = 276
      Top = 226
      Width = 152
      Height = 13
      Margins.Left = 5
      Caption = 'Gera'#231#227'o de arquivos dos SPEDs'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label22: TLabel
      Left = 276
      Top = 175
      Width = 136
      Height = 13
      Margins.Left = 5
      Caption = 'Gera'#231#227'o de arquivos do PAF'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label23: TLabel
      Left = 292
      Top = 397
      Width = 155
      Height = 13
      Margins.Left = 5
      Caption = 'Gera'#231#227'o e Impress'#227'o de Boletos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label24: TLabel
      Left = 276
      Top = 209
      Width = 157
      Height = 13
      Margins.Left = 5
      Caption = 'Gera'#231#227'o de arquivos do Sintegra'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label25: TLabel
      Left = 276
      Top = 277
      Width = 198
      Height = 13
      Margins.Left = 5
      Caption = 'Gera'#231#227'o de arquivos de Rel'#243'gio de Ponto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label26: TLabel
      Left = 276
      Top = 346
      Width = 188
      Height = 13
      Margins.Left = 5
      Caption = 'Comunica'#231#227'o p/ Micro Terminais TCP/IP'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label27: TLabel
      Left = 260
      Top = 1043
      Width = 109
      Height = 13
      Margins.Left = 5
      Caption = 'FortesReport - Comum'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label28: TLabel
      Left = 276
      Top = 989
      Width = 83
      Height = 13
      Margins.Left = 5
      Caption = 'FastReport - SAT'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl1: TLabel
      Left = 292
      Top = 495
      Width = 356
      Height = 13
      Margins.Left = 5
      Caption = 
        'Nota fiscal de Servi'#231'o eletr'#244'nica (Componente antigo. Migrar par' +
        'a o novo)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl2: TLabel
      Left = 292
      Top = 511
      Width = 269
      Height = 13
      Margins.Left = 5
      Caption = 'Nota fiscal de Servi'#231'o eletr'#244'nica (NOVO COMPONENTE!)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl3: TLabel
      Left = 276
      Top = 939
      Width = 201
      Height = 13
      Margins.Left = 5
      Caption = 'FastReport - NFSe (NOVO COMPONENTE)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label29: TLabel
      Left = 276
      Top = 1094
      Width = 215
      Height = 13
      Margins.Left = 5
      Caption = 'FortesReport - NFSe (NOVO COMPONENTE!)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object ACBr_synapse_dpk: TCheckBox
      Left = 2
      Top = 0
      Width = 163
      Height = 17
      Margins.Left = 25
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = 'ACBr_synapse.dpk'
      Checked = True
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 0
      OnClick = VerificarCheckboxes
    end
    object ACBr_Comum_dpk: TCheckBox
      Tag = 1
      Left = 18
      Top = 17
      Width = 163
      Height = 17
      Margins.Left = 25
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = 'ACBr_Comum.dpk'
      Checked = True
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 1
      OnClick = VerificarCheckboxes
    end
    object ACBr_Diversos_dpk: TCheckBox
      Tag = 2
      Left = 34
      Top = 52
      Width = 163
      Height = 17
      Margins.Left = 25
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = 'ACBr_Diversos.dpk'
      Checked = True
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 3
      OnClick = VerificarCheckboxes
    end
    object ACBr_Serial_dpk: TCheckBox
      Tag = 3
      Left = 50
      Top = 86
      Width = 163
      Height = 17
      Margins.Left = 25
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = 'ACBr_Serial.dpk'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = VerificarCheckboxes
    end
    object ACBr_TCP_dpk: TCheckBox
      Tag = 4
      Left = 50
      Top = 325
      Width = 163
      Height = 17
      Margins.Left = 25
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = 'ACBr_TCP.dpk'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 18
      OnClick = VerificarCheckboxes
    end
    object ACBr_BPe_dpk: TCheckBox
      Tag = 4
      Left = 81
      Top = 680
      Width = 163
      Height = 17
      Margins.Left = 25
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = 'ACBr_BPe.dpk'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 39
      OnClick = VerificarCheckboxes
    end
    object ACBr_TEFD_dpk: TCheckBox
      Tag = 4
      Left = 50
      Top = 817
      Width = 163
      Height = 17
      Margins.Left = 25
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = 'ACBr_TEFD.dpk'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 47
      OnClick = VerificarCheckboxes
    end
    object ACBr_Boleto_dpk: TCheckBox
      Tag = 4
      Left = 81
      Top = 393
      Width = 163
      Height = 17
      Margins.Left = 25
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = 'ACBr_Boleto.dpk'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 22
      OnClick = VerificarCheckboxes
    end
    object ACBr_Sintegra_dpk: TCheckBox
      Tag = 4
      Left = 66
      Top = 205
      Width = 163
      Height = 17
      Margins.Left = 25
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = 'ACBr_Sintegra.dpk'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
      OnClick = VerificarCheckboxes
    end
    object ACBr_SPED_dpk: TCheckBox
      Tag = 4
      Left = 66
      Top = 222
      Width = 163
      Height = 17
      Margins.Left = 25
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = 'ACBr_SPED.dpk'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
      OnClick = VerificarCheckboxes
    end
    object ACBr_PAF_dpk: TCheckBox
      Tag = 4
      Left = 66
      Top = 171
      Width = 163
      Height = 17
      Margins.Left = 25
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = 'ACBr_PAF.dpk'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      OnClick = VerificarCheckboxes
    end
    object ACBr_OpenSSL_dpk: TCheckBox
      Tag = 2
      Left = 34
      Top = 35
      Width = 163
      Height = 17
      Margins.Left = 25
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = 'ACBr_OpenSSL.dpk'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = VerificarCheckboxes
    end
    object ACBr_PCNComum_dpk: TCheckBox
      Tag = 2
      Left = 50
      Top = 69
      Width = 163
      Height = 17
      Margins.Left = 25
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = 'ACBr_PCNComum.dpk'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = VerificarCheckboxes
    end
    object ACBr_NFe_dpk: TCheckBox
      Tag = 4
      Left = 82
      Top = 426
      Width = 163
      Height = 17
      Margins.Left = 25
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = 'ACBr_NFe.dpk'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 24
      OnClick = VerificarCheckboxes
    end
    object ACBr_CTe_dpk: TCheckBox
      Tag = 4
      Left = 81
      Top = 477
      Width = 163
      Height = 17
      Margins.Left = 25
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = 'ACBr_CTe.dpk'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 27
      OnClick = VerificarCheckboxes
    end
    object ACBr_NFSe_dpk: TCheckBox
      Tag = 4
      Left = 81
      Top = 494
      Width = 163
      Height = 17
      Margins.Left = 25
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = 'ACBr_NFSe.dpk'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 28
      OnClick = VerificarCheckboxes
    end
    object ACBr_MDFe_dpk: TCheckBox
      Tag = 4
      Left = 81
      Top = 527
      Width = 163
      Height = 17
      Margins.Left = 25
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = 'ACBr_MDFe.dpk'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 30
      OnClick = VerificarCheckboxes
    end
    object ACBr_GNRE_dpk: TCheckBox
      Tag = 4
      Left = 81
      Top = 544
      Width = 163
      Height = 17
      Margins.Left = 25
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = 'ACBr_GNRE.dpk'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 31
      OnClick = VerificarCheckboxes
    end
    object ACBr_Convenio115_dpk: TCheckBox
      Tag = 4
      Left = 66
      Top = 120
      Width = 163
      Height = 17
      Margins.Left = 25
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = 'ACBr_Convenio115.dpk'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = VerificarCheckboxes
    end
    object ACBr_SEF2_dpk: TCheckBox
      Tag = 4
      Left = 66
      Top = 188
      Width = 163
      Height = 17
      Margins.Left = 25
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = 'ACBr_SEF2.dpk'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
      OnClick = VerificarCheckboxes
    end
    object ACBr_SAT_dpk: TCheckBox
      Tag = 4
      Left = 81
      Top = 595
      Width = 163
      Height = 17
      Margins.Left = 25
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = 'ACBr_SAT.dpk'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 34
      OnClick = VerificarCheckboxes
    end
    object ACBr_NFeDanfeESCPOS_dpk: TCheckBox
      Tag = 5
      Left = 97
      Top = 460
      Width = 163
      Height = 17
      Margins.Left = 25
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = 'ACBr_NFeDanfeESCPOS.dpk'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 26
      OnClick = VerificarCheckboxes
    end
    object ACBr_SATExtratoESCPOS_dpk: TCheckBox
      Tag = 5
      Left = 97
      Top = 629
      Width = 180
      Height = 17
      Margins.Left = 25
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = 'ACBr_SATExtratoESCPOS.dpk'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 36
      OnClick = VerificarCheckboxes
    end
    object ACBr_LFD_dpk: TCheckBox
      Tag = 4
      Left = 66
      Top = 137
      Width = 163
      Height = 17
      Margins.Left = 25
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = 'ACBr_LFD.dpk'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnClick = VerificarCheckboxes
    end
    object ACBr_SPEDImportar_dpk: TCheckBox
      Tag = 8
      Left = 82
      Top = 239
      Width = 163
      Height = 17
      Margins.Left = 25
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = 'ACBr_SPEDImportar.dpk'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
      OnClick = VerificarCheckboxes
    end
    object ACBr_DFeComum_dpk: TCheckBox
      Tag = 3
      Left = 66
      Top = 376
      Width = 163
      Height = 17
      Margins.Left = 25
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = 'ACBr_DFeComum.dpk'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 21
      OnClick = VerificarCheckboxes
    end
    object ACBr_NFCeECFVirtual_dpk: TCheckBox
      Tag = 5
      Left = 97
      Top = 443
      Width = 163
      Height = 17
      Margins.Left = 25
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = 'ACBr_NFCeECFVirtual.dpk'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 25
      OnClick = VerificarCheckboxes
    end
    object ACBr_SATECFVirtual_dpk: TCheckBox
      Tag = 5
      Left = 97
      Top = 612
      Width = 163
      Height = 17
      Margins.Left = 25
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = 'ACBr_SATECFVirtual.dpk'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 35
      OnClick = VerificarCheckboxes
    end
    object ACBr_TXTComum_dpk: TCheckBox
      Tag = 2
      Left = 50
      Top = 103
      Width = 163
      Height = 17
      Margins.Left = 25
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = 'ACBr_TXTComum.dpk'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = VerificarCheckboxes
    end
    object ACBr_NFeDanfeFR_dpk: TCheckBox
      Tag = 9
      Left = 50
      Top = 883
      Width = 163
      Height = 17
      Margins.Left = 25
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = 'ACBr_NFeDanfeFR.dpk'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 50
      OnClick = VerificarCheckboxes
    end
    object ACBr_CTeDacteFR_dpk: TCheckBox
      Tag = 9
      Left = 50
      Top = 900
      Width = 163
      Height = 17
      Margins.Left = 25
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = 'ACBr_CTeDacteFR.dpk'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 51
      OnClick = VerificarCheckboxes
    end
    object ACBr_NFSeDanfseFR_dpk: TCheckBox
      Tag = 9
      Left = 50
      Top = 917
      Width = 163
      Height = 17
      Margins.Left = 25
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = 'ACBr_NFSeDanfseFR.dpk'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 52
      OnClick = VerificarCheckboxes
    end
    object ACBr_BoletoFR_dpk: TCheckBox
      Tag = 9
      Left = 50
      Top = 951
      Width = 163
      Height = 17
      Margins.Left = 25
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = 'ACBr_BoletoFR.dpk'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 53
      OnClick = VerificarCheckboxes
    end
    object ACBr_MDFeDamdfeFR_dpk: TCheckBox
      Tag = 9
      Left = 50
      Top = 968
      Width = 163
      Height = 17
      Margins.Left = 25
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = 'ACBr_MDFeDamdfeFR.dpk'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 54
      OnClick = VerificarCheckboxes
    end
    object ACBr_GNREGuiaFR_dpk: TCheckBox
      Tag = 9
      Left = 50
      Top = 1003
      Width = 163
      Height = 17
      Margins.Left = 25
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = 'ACBr_GNREGuiaFR.dpk'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 55
      OnClick = VerificarCheckboxes
    end
    object ACBr_NFeDanfeRL_dpk: TCheckBox
      Tag = 9
      Left = 50
      Top = 1056
      Width = 163
      Height = 17
      Margins.Left = 25
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = 'ACBr_NFeDanfeRL.dpk'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 57
      OnClick = VerificarCheckboxes
    end
    object ACBr_CTeDacteRL_dpk: TCheckBox
      Tag = 9
      Left = 50
      Top = 1107
      Width = 163
      Height = 17
      Margins.Left = 25
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = 'ACBr_CTeDacteRL.dpk'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 60
      OnClick = VerificarCheckboxes
    end
    object ACBr_NFSeDanfseRL_dpk: TCheckBox
      Tag = 9
      Left = 50
      Top = 1073
      Width = 163
      Height = 17
      Margins.Left = 25
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = 'ACBr_NFSeDanfseRL.dpk'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 58
      OnClick = VerificarCheckboxes
    end
    object ACBr_BoletoRL_dpk: TCheckBox
      Tag = 9
      Left = 50
      Top = 1124
      Width = 163
      Height = 17
      Margins.Left = 25
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = 'ACBr_BoletoRL.dpk'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 61
      OnClick = VerificarCheckboxes
    end
    object ACBr_MDFeDamdfeRL_dpk: TCheckBox
      Tag = 9
      Left = 50
      Top = 1141
      Width = 163
      Height = 17
      Margins.Left = 25
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = 'ACBr_MDFeDamdfeRL.dpk'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 62
      OnClick = VerificarCheckboxes
    end
    object ACBr_SATExtratoRL_dpk: TCheckBox
      Tag = 9
      Left = 50
      Top = 1158
      Width = 163
      Height = 17
      Margins.Left = 25
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = 'ACBr_SATExtratoRL.dpk'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 63
      OnClick = VerificarCheckboxes
    end
    object ACBr_GNREGuiaRL_dpk: TCheckBox
      Tag = 9
      Left = 50
      Top = 1175
      Width = 163
      Height = 17
      Margins.Left = 25
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = 'ACBr_GNREGuiaRL.dpk'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 64
      OnClick = VerificarCheckboxes
    end
    object ACBr_BlocoX_dpk: TCheckBox
      Tag = 4
      Left = 81
      Top = 663
      Width = 163
      Height = 17
      Margins.Left = 25
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = 'ACBr_BlocoX.dpk'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 38
      OnClick = VerificarCheckboxes
    end
    object ACBr_DeSTDA_dpk: TCheckBox
      Tag = 4
      Left = 66
      Top = 256
      Width = 163
      Height = 17
      Margins.Left = 25
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = 'ACBr_DeSTDA.dpk'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 15
      OnClick = VerificarCheckboxes
    end
    object ACBr_Ponto_dpk: TCheckBox
      Tag = 4
      Left = 66
      Top = 273
      Width = 163
      Height = 17
      Margins.Left = 25
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = 'ACBr_Ponto.dpk'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 16
      OnClick = VerificarCheckboxes
    end
    object ACBr_MTER_dpk: TCheckBox
      Tag = 4
      Left = 66
      Top = 342
      Width = 163
      Height = 17
      Margins.Left = 25
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = 'ACBr_MTER.dpk'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 19
      OnClick = VerificarCheckboxes
    end
    object ACBr_SATWS_dpk: TCheckBox
      Tag = 4
      Left = 97
      Top = 646
      Width = 163
      Height = 17
      Margins.Left = 25
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = 'ACBr_SATWS.dpk'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 37
      OnClick = VerificarCheckboxes
    end
    object ACBr_ANe_dpk: TCheckBox
      Tag = 4
      Left = 81
      Top = 713
      Width = 163
      Height = 17
      Margins.Left = 25
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = 'ACBr_ANe.dpk'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 41
      OnClick = VerificarCheckboxes
    end
    object ACBr_Integrador_dpk: TCheckBox
      Tag = 4
      Left = 50
      Top = 359
      Width = 163
      Height = 17
      Margins.Left = 25
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = 'ACBr_Integrador.dpk'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 20
      OnClick = VerificarCheckboxes
    end
    object ACBre_Social_dpk: TCheckBox
      Tag = 4
      Left = 81
      Top = 561
      Width = 163
      Height = 17
      Margins.Left = 25
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = 'ACBre_Social.dpk'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 32
      OnClick = VerificarCheckboxes
    end
    object ACBr_Reinf_dpk: TCheckBox
      Tag = 4
      Left = 81
      Top = 578
      Width = 163
      Height = 17
      Margins.Left = 25
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = 'ACBr_Reinf.dpk'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 33
      OnClick = VerificarCheckboxes
    end
    object ACBr_BPeDabpeESCPOS_dpk: TCheckBox
      Tag = 4
      Left = 97
      Top = 696
      Width = 163
      Height = 17
      Margins.Left = 25
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = 'ACBr_BPeDabpeESCPOS.dpk'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 40
      OnClick = VerificarCheckboxes
    end
    object ACBr_DFeReportRL_dpk: TCheckBox
      Tag = 4
      Left = 34
      Top = 1039
      Width = 163
      Height = 17
      Margins.Left = 25
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = 'ACBrDFeReportRL.dpk'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 56
      OnClick = VerificarCheckboxes
    end
    object ACBr_CIOT_dpk: TCheckBox
      Tag = 4
      Left = 81
      Top = 730
      Width = 163
      Height = 17
      Margins.Left = 25
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = 'ACBr_CIOT.dpk'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 42
      OnClick = VerificarCheckboxes
    end
    object ACBr_LCDPR_dpk: TCheckBox
      Tag = 4
      Left = 66
      Top = 292
      Width = 163
      Height = 17
      Margins.Left = 25
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = 'ACBr_LCDPR.dpk'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 17
      OnClick = VerificarCheckboxes
    end
    object ACBr_ONE_dpk: TCheckBox
      Tag = 4
      Left = 81
      Top = 747
      Width = 163
      Height = 17
      Margins.Left = 25
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = 'ACBr_ONE.dpk'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 43
      OnClick = VerificarCheckboxes
    end
    object ACBr_EDI_dpk: TCheckBox
      Tag = 4
      Left = 66
      Top = 154
      Width = 163
      Height = 17
      Margins.Left = 25
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = 'ACBr_EDI.dpk'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      OnClick = VerificarCheckboxes
    end
    object ACBr_NF3e_dpk: TCheckBox
      Tag = 4
      Left = 81
      Top = 764
      Width = 163
      Height = 17
      Margins.Left = 25
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = 'ACBr_NF3e.dpk'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 44
      OnClick = VerificarCheckboxes
    end
    object ACBr_NF3eDANF3eESCPOS_dpk: TCheckBox
      Tag = 4
      Left = 97
      Top = 780
      Width = 172
      Height = 17
      Margins.Left = 25
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = 'ACBr_NF3eDANF3eESCPOS.dpk'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 45
      OnClick = VerificarCheckboxes
    end
    object ACBr_ADRCST_dpk: TCheckBox
      Tag = 4
      Left = 66
      Top = 309
      Width = 163
      Height = 17
      Margins.Left = 25
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = 'ACBr_ADRCST.dpk'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 65
      OnClick = VerificarCheckboxes
    end
    object ACBr_SATExtratoFR_dpk: TCheckBox
      Tag = 9
      Left = 50
      Top = 985
      Width = 163
      Height = 17
      Margins.Left = 25
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = 'ACBr_SATExtratoFR.dpk'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 66
      OnClick = VerificarCheckboxes
    end
    object ACBr_PagFor_dpk: TCheckBox
      Tag = 4
      Left = 82
      Top = 410
      Width = 163
      Height = 17
      Margins.Left = 25
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = 'ACBr_PagFor.dpk'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 23
      OnClick = VerificarCheckboxes
    end
    object ACBr_NFSeX_dpk: TCheckBox
      Tag = 4
      Left = 81
      Top = 510
      Width = 163
      Height = 17
      Margins.Left = 25
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = 'ACBr_NFSeX.dpk'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 29
      OnClick = VerificarCheckboxes
    end
    object ACBr_NFSeXDanfseRL_dpk: TCheckBox
      Tag = 9
      Left = 50
      Top = 1090
      Width = 163
      Height = 17
      Margins.Left = 25
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = 'ACBr_NFSeXDanfseRL.dpk'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 59
      OnClick = VerificarCheckboxes
    end
    object ACBr_NFSeXDanfseFR_dpk: TCheckBox
      Tag = 9
      Left = 50
      Top = 934
      Width = 163
      Height = 17
      Margins.Left = 25
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = 'ACBr_NFSeXDanfseFR.dpk'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 67
      OnClick = VerificarCheckboxes
    end
    object ACBr_PIXCD_dpk: TCheckBox
      Tag = 4
      Left = 50
      Top = 834
      Width = 163
      Height = 17
      Margins.Left = 25
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = 'ACBr_PIXCD.dpk'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 48
      OnClick = VerificarCheckboxes
    end
    object ACBr_OFX_dpk: TCheckBox
      Tag = 4
      Left = 50
      Top = 851
      Width = 163
      Height = 17
      Margins.Left = 25
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = 'ACBr_OFX.dpk'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 49
      OnClick = VerificarCheckboxes
    end
    object ACBr_GTIN_dpk: TCheckBox
      Tag = 4
      Left = 81
      Top = 798
      Width = 163
      Height = 17
      Margins.Left = 25
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = 'ACBr_GTIN.dpk'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 46
      OnClick = VerificarCheckboxes
    end
  end
end
