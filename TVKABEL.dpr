program TVKABEL;

uses
  Forms,
  UMudole in 'UMudole.pas' {DataModule1: TDataModule},
  UPelanggan in 'UPelanggan.pas' {Form2},
  ULogin in 'ULogin.pas' {Form1},
  UMenuUtama in 'UMenuUtama.pas' {Form3},
  UAdmin in 'UAdmin.pas' {Form4};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
