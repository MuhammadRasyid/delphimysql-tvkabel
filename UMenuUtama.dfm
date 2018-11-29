object Form3: TForm3
  Left = -16
  Top = 34
  Width = 1294
  Height = 651
  Caption = 'Menu utama'
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 152
    Top = 131
    Width = 37
    Height = 19
    Caption = 'Nama'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 144
    Top = 152
    Width = 40
    Height = 20
    Caption = 'Label2'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 609
    Width = 1261
    Height = 19
    Panels = <
      item
        Width = 150
      end
      item
        Width = 150
      end
      item
        Width = 150
      end
      item
        Width = 150
      end>
  end
  object Edit3: TEdit
    Left = 248
    Top = 128
    Width = 225
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object Edit4: TEdit
    Left = 248
    Top = 168
    Width = 121
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object Edit5: TEdit
    Left = 248
    Top = 208
    Width = 225
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object Edit6: TEdit
    Left = 248
    Top = 248
    Width = 161
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1261
    Height = 49
    Align = alTop
    BevelOuter = bvNone
    Color = clActiveCaption
    TabOrder = 5
    DesignSize = (
      1261
      49)
    object Label1: TLabel
      Left = 1012
      Top = 18
      Width = 49
      Height = 23
      Caption = 'CARI'
      Color = clActiveCaption
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -20
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 1090
      Top = 15
      Width = 171
      Height = 27
      Anchors = [akTop, akRight]
      BevelInner = bvNone
      BevelKind = bkFlat
      BevelOuter = bvSpace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = Edit1Change
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 49
    Width = 1261
    Height = 560
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 6
    object Panel4: TPanel
      Left = 0
      Top = 0
      Width = 713
      Height = 560
      Align = alLeft
      BevelOuter = bvLowered
      TabOrder = 1
      object GroupBox1: TGroupBox
        Left = 17
        Top = 17
        Width = 632
        Height = 368
        Align = alCustom
        Caption = 'Data pemohon'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label13: TLabel
          Left = 24
          Top = 120
          Width = 40
          Height = 20
          Caption = 'Alamat'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel
          Left = 24
          Top = 72
          Width = 86
          Height = 20
          Caption = 'Nama lengkap'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 24
          Top = 24
          Width = 21
          Height = 20
          Caption = 'NIK'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 24
          Top = 168
          Width = 58
          Height = 20
          Caption = 'No telpon'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 24
          Top = 209
          Width = 33
          Height = 20
          Caption = 'Email'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 328
          Top = 26
          Width = 100
          Height = 19
          Caption = 'Kode Pelanggan'
        end
        object alamat: TEdit
          Left = 112
          Top = 116
          Width = 209
          Height = 28
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object nama: TEdit
          Left = 112
          Top = 72
          Width = 209
          Height = 28
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object nik: TEdit
          Left = 112
          Top = 24
          Width = 121
          Height = 28
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnKeyPress = nikKeyPress
        end
        object notelpon: TEdit
          Left = 112
          Top = 163
          Width = 91
          Height = 28
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnKeyPress = notelponKeyPress
        end
        object email: TEdit
          Left = 112
          Top = 208
          Width = 153
          Height = 28
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object ComboBox2: TComboBox
          Left = 392
          Top = 144
          Width = 145
          Height = 27
          ItemHeight = 19
          TabOrder = 5
          Text = '--Pilih--'
          OnChange = ComboBox2Change
        end
        object DTP1: TDateTimePicker
          Left = 352
          Top = 104
          Width = 186
          Height = 27
          Date = 43430.872463912030000000
          Time = 43430.872463912030000000
          TabOrder = 6
        end
        object KP: TEdit
          Left = 440
          Top = 24
          Width = 145
          Height = 27
          Enabled = False
          TabOrder = 7
        end
      end
      object BitBtn1: TBitBtn
        Left = 386
        Top = 264
        Width = 89
        Height = 33
        Caption = 'Save'
        Enabled = False
        TabOrder = 1
        OnClick = BitBtn1Click
        Kind = bkOK
      end
      object BitBtn2: TBitBtn
        Left = 488
        Top = 264
        Width = 89
        Height = 33
        Enabled = False
        TabOrder = 2
        OnClick = BitBtn2Click
        Kind = bkRetry
      end
      object BitBtn3: TBitBtn
        Left = 384
        Top = 224
        Width = 89
        Height = 33
        Enabled = False
        TabOrder = 3
        OnClick = BitBtn3Click
        Kind = bkNo
      end
      object BitBtn4: TBitBtn
        Left = 488
        Top = 224
        Width = 89
        Height = 33
        Caption = 'TAMBAH'
        TabOrder = 4
        OnClick = BitBtn4Click
        Kind = bkAll
      end
    end
    object GroupBox2: TGroupBox
      Left = 1195
      Top = 0
      Width = 0
      Height = 288
      Caption = 'Data tarif'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object Label8: TLabel
        Left = 24
        Top = 32
        Width = 35
        Height = 19
        Caption = 'Paket'
      end
      object Label9: TLabel
        Left = 24
        Top = 76
        Width = 42
        Height = 19
        Caption = 'Label9'
      end
      object Label10: TLabel
        Left = 24
        Top = 116
        Width = 42
        Height = 19
        Caption = 'Label9'
      end
      object Label11: TLabel
        Left = 24
        Top = 156
        Width = 42
        Height = 19
        Caption = 'Label9'
      end
      object ComboBox1: TComboBox
        Left = 128
        Top = 29
        Width = 145
        Height = 27
        ItemHeight = 19
        TabOrder = 0
        Text = '----Pilih paket------'
        Items.Strings = (
          'Basic'
          'Ala carte'
          'HD'
          'Rental coder')
      end
      object Edit7: TEdit
        Left = 128
        Top = 72
        Width = 145
        Height = 27
        TabOrder = 1
        Text = 'Edit7'
      end
      object Edit8: TEdit
        Left = 128
        Top = 112
        Width = 145
        Height = 27
        TabOrder = 2
        Text = 'Edit7'
      end
      object Edit9: TEdit
        Left = 128
        Top = 152
        Width = 145
        Height = 27
        TabOrder = 3
        Text = 'Edit7'
      end
    end
    object Panel2: TPanel
      Left = 713
      Top = 0
      Width = 548
      Height = 560
      Align = alClient
      Caption = 'Panel2'
      TabOrder = 2
      object DBGrid2: TDBGrid
        Left = 1
        Top = 1
        Width = 546
        Height = 558
        Align = alClient
        Color = clBtnHighlight
        DataSource = DataModule1.DSpemohon
        FixedColor = clBlack
        Font.Charset = ANSI_CHARSET
        Font.Color = clCaptionText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindow
        TitleFont.Height = -16
        TitleFont.Name = 'Trebuchet MS'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'nik'
            Font.Charset = ANSI_CHARSET
            Font.Color = clCaptionText
            Font.Height = -16
            Font.Name = 'Trebuchet MS'
            Font.Style = []
            Title.Caption = 'Nik'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nama'
            Font.Charset = ANSI_CHARSET
            Font.Color = clCaptionText
            Font.Height = -16
            Font.Name = 'Trebuchet MS'
            Font.Style = []
            Title.Caption = 'Nama'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'alamat'
            Font.Charset = ANSI_CHARSET
            Font.Color = clCaptionText
            Font.Height = -16
            Font.Name = 'Trebuchet MS'
            Font.Style = []
            Title.Caption = 'Alamat'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'email'
            Font.Charset = ANSI_CHARSET
            Font.Color = clCaptionText
            Font.Height = -16
            Font.Name = 'Trebuchet MS'
            Font.Style = []
            Title.Caption = 'Email'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'no_telpon'
            Font.Charset = ANSI_CHARSET
            Font.Color = clCaptionText
            Font.Height = -16
            Font.Name = 'Trebuchet MS'
            Font.Style = []
            Title.Caption = 'No Ttelpon'
            Visible = True
          end>
      end
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 344
    Top = 8
  end
  object MainMenu1: TMainMenu
    Left = 304
    Top = 8
    object Beranda1: TMenuItem
      Caption = 'Data master'
      object Datapelanggan2: TMenuItem
        Caption = 'Data pelanggan'
      end
      object Datapetugas2: TMenuItem
        Caption = 'Data petugas'
        OnClick = Datapetugas2Click
      end
      object Dataadmin1: TMenuItem
        Caption = 'Data admin'
        OnClick = Dataadmin1Click
      end
    end
    object Datapetugas1: TMenuItem
      Caption = 'Data pemasangan'
      object Datapemohon1: TMenuItem
        Caption = 'Data pemohon'
      end
      object Dataperbaikan1: TMenuItem
        Caption = 'Data perbaikan'
      end
    end
    object Datapelanggan1: TMenuItem
      Caption = 'Tentang program'
    end
    object Logout1: TMenuItem
      Caption = 'Keluar'
      OnClick = Logout1Click
    end
  end
end
