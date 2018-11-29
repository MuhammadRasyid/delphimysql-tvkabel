object Form4: TForm4
  Left = 416
  Top = 181
  Width = 479
  Height = 410
  Caption = 'Data Admin'
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 24
    Width = 69
    Height = 22
    Caption = 'Username'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 32
    Top = 80
    Width = 65
    Height = 22
    Caption = 'Password'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
  end
  object username: TEdit
    Left = 128
    Top = 24
    Width = 241
    Height = 30
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object password: TEdit
    Left = 128
    Top = 80
    Width = 241
    Height = 30
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object simpan: TBitBtn
    Left = 32
    Top = 120
    Width = 89
    Height = 33
    Caption = 'Simpan'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = simpanClick
    Kind = bkAll
  end
  object edit: TBitBtn
    Left = 136
    Top = 120
    Width = 89
    Height = 33
    Caption = '&Edit'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = editClick
    Kind = bkRetry
  end
  object hapus: TBitBtn
    Left = 240
    Top = 120
    Width = 89
    Height = 33
    Caption = '&Hapus'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = hapusClick
    Kind = bkNo
  end
  object BitBtn4: TBitBtn
    Left = 344
    Top = 120
    Width = 89
    Height = 33
    Caption = 'Kembali'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = BitBtn4Click
    Kind = bkCancel
  end
  object DBGrid2: TDBGrid
    Left = 32
    Top = 176
    Width = 401
    Height = 177
    Align = alCustom
    Color = clBtnHighlight
    DataSource = DataModule1.DSLogin
    FixedColor = clBlack
    Font.Charset = ANSI_CHARSET
    Font.Color = clCaptionText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindow
    TitleFont.Height = -16
    TitleFont.Name = 'Trebuchet MS'
    TitleFont.Style = [fsBold]
    OnCellClick = DBGrid2CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'user'
        Title.Caption = 'Username'
        Width = 204
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'password'
        Title.Caption = 'Password'
        Width = 189
        Visible = True
      end>
  end
end
