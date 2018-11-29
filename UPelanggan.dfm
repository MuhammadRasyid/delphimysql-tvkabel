object Form2: TForm2
  Left = 52
  Top = 179
  Width = 1129
  Height = 348
  Caption = 'Data Petugas'
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
    Left = 64
    Top = 24
    Width = 39
    Height = 22
    Caption = 'Nama'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 72
    Width = 96
    Height = 22
    Caption = 'Jenis kelamin'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 48
    Top = 120
    Width = 55
    Height = 22
    Caption = 'Jabatan'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 32
    Top = 168
    Width = 70
    Height = 22
    Caption = 'No Telpon'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 56
    Top = 208
    Width = 48
    Height = 22
    Caption = 'Alamat'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
  end
  object simpanbtn: TBitBtn
    Left = 337
    Top = 19
    Width = 89
    Height = 33
    Caption = 'Simpan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = simpanbtnClick
    Kind = bkOK
  end
  object editbtn: TBitBtn
    Left = 441
    Top = 19
    Width = 89
    Height = 33
    Caption = 'Edit'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = editbtnClick
    Kind = bkRetry
  end
  object kembalibtn: TBitBtn
    Left = 649
    Top = 19
    Width = 89
    Height = 33
    Caption = 'Kembali'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = kembalibtnClick
    Kind = bkCancel
  end
  object hapusbtn: TBitBtn
    Left = 545
    Top = 19
    Width = 89
    Height = 33
    Caption = 'Hapus'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = hapusbtnClick
    Kind = bkNo
  end
  object nama: TEdit
    Left = 112
    Top = 16
    Width = 217
    Height = 30
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object jeniskelamin: TEdit
    Left = 112
    Top = 64
    Width = 217
    Height = 30
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object jabatan: TEdit
    Left = 112
    Top = 112
    Width = 217
    Height = 30
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
  end
  object notelpon: TEdit
    Left = 112
    Top = 160
    Width = 217
    Height = 30
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
  end
  object alamat: TMemo
    Left = 112
    Top = 208
    Width = 217
    Height = 89
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
  end
  object DBGrid2: TDBGrid
    Left = 336
    Top = 72
    Width = 753
    Height = 225
    Align = alCustom
    Color = clBtnHighlight
    DataSource = DataModule1.DSpetugas
    FixedColor = clBlack
    Font.Charset = ANSI_CHARSET
    Font.Color = clCaptionText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindow
    TitleFont.Height = -16
    TitleFont.Name = 'Trebuchet MS'
    TitleFont.Style = [fsBold]
    OnCellClick = DBGrid2CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'nama'
        Font.Charset = ANSI_CHARSET
        Font.Color = clCaptionText
        Font.Height = -16
        Font.Name = 'Trebuchet MS'
        Font.Style = []
        Title.Caption = 'Nama'
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jenis_kelamin'
        Font.Charset = ANSI_CHARSET
        Font.Color = clCaptionText
        Font.Height = -16
        Font.Name = 'Trebuchet MS'
        Font.Style = []
        Title.Caption = 'Jenis kelamin'
        Width = 144
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jabatan'
        Font.Charset = ANSI_CHARSET
        Font.Color = clCaptionText
        Font.Height = -16
        Font.Name = 'Trebuchet MS'
        Font.Style = []
        Title.Caption = 'Jabatan'
        Width = 168
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nomor_telpon'
        Font.Charset = ANSI_CHARSET
        Font.Color = clCaptionText
        Font.Height = -16
        Font.Name = 'Trebuchet MS'
        Font.Style = []
        Title.Caption = 'Nomor Telpon'
        Width = 105
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
      end>
  end
end
