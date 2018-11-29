unit UMudole;

interface

uses
  SysUtils, Classes, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection;

type
  TDataModule1 = class(TDataModule)
    Qpetugas: TZQuery;
    DSpetugas: TDataSource;
    ZConnDB: TZConnection;
    QLogin: TZQuery;
    Qpemohon: TZQuery;
    DSpemohon: TDataSource;
    DSLogin: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

uses UPelanggan, ULogin;

{$R *.dfm}

end.
