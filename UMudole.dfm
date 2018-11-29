object DataModule1: TDataModule1
  OldCreateOrder = False
  Left = 468
  Top = 220
  Height = 316
  Width = 468
  object ZConnDB: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'dbtvkabel'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'E:\Delphi\client\delphi-tvkabel\libmysql.dll'
    Left = 24
    Top = 32
  end
  object Qpetugas: TZQuery
    Connection = ZConnDB
    Active = True
    SQL.Strings = (
      'select * from tb_petugas')
    Params = <>
    Left = 96
    Top = 32
  end
  object DSpetugas: TDataSource
    DataSet = Qpetugas
    Left = 176
    Top = 32
  end
  object QLogin: TZQuery
    Connection = ZConnDB
    Active = True
    SQL.Strings = (
      'select * from tb_login')
    Params = <>
    Left = 96
    Top = 88
  end
  object Qpemohon: TZQuery
    Connection = ZConnDB
    Active = True
    SQL.Strings = (
      'select * from tb_pemohon  order by nik desc')
    Params = <>
    Left = 96
    Top = 152
  end
  object DSpemohon: TDataSource
    DataSet = Qpemohon
    Left = 176
    Top = 152
  end
  object DSLogin: TDataSource
    DataSet = QLogin
    Left = 176
    Top = 96
  end
end
