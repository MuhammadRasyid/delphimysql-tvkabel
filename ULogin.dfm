object Form1: TForm1
  Left = 223
  Top = 197
  Width = 416
  Height = 322
  Caption = 'Login'
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
  object Username: TLabel
    Left = 88
    Top = 81
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
  object Label1: TLabel
    Left = 88
    Top = 122
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
  object BitBtn1: TBitBtn
    Left = 90
    Top = 194
    Width = 89
    Height = 33
    Caption = 'Login'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 230
    Top = 194
    Width = 89
    Height = 33
    Caption = 'Close'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = BitBtn2Click
  end
  object password: TEdit
    Left = 168
    Top = 120
    Width = 153
    Height = 30
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
    PasswordChar = '*'
    TabOrder = 2
  end
  object user: TEdit
    Left = 168
    Top = 80
    Width = 153
    Height = 30
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object CheckBox1: TCheckBox
    Left = 184
    Top = 160
    Width = 137
    Height = 17
    Caption = 'Tampilkan password'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = CheckBox1Click
  end
end
