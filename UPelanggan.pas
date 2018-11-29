unit UPelanggan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons;

type
  TForm2 = class(TForm)
    simpanbtn: TBitBtn;
    editbtn: TBitBtn;
    kembalibtn: TBitBtn;
    hapusbtn: TBitBtn;
    Label1: TLabel;
    nama: TEdit;
    jeniskelamin: TEdit;
    Label2: TLabel;
    jabatan: TEdit;
    Label3: TLabel;
    notelpon: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    alamat: TMemo;
    DBGrid2: TDBGrid;
    procedure simpanbtnClick(Sender: TObject);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure editbtnClick(Sender: TObject);
    procedure hapusbtnClick(Sender: TObject);
    procedure kembalibtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure bersih;
  end;

var
  Form2: TForm2;

implementation

uses UMudole, UMenuUtama;

 procedure TForm2.bersih;
  begin
    nama.Text:= '';
    jeniskelamin.Text:= '';
    jabatan.Text:= '';
    notelpon.Text:= '';
    alamat.Text:= '';

 end;

{$R *.dfm}

procedure TForm2.simpanbtnClick(Sender: TObject);
begin
if nama.Text = ''  then
 begin
  Showmessage('Nama kosong');
  nama.setfocus;
 end else
if jeniskelamin.Text = '' then
  begin
   Showmessage('Password kosong');
   jeniskelamin.SetFocus;
  end else
if jabatan.Text = '' then
  begin
   Showmessage('Password kosong');
   jabatan.SetFocus;
  end else
if notelpon.Text = '' then
  begin
   Showmessage('Password kosong');
   notelpon.SetFocus;
  end else
if alamat.Text = '' then
  begin
   Showmessage('Password kosong');
   alamat.SetFocus;
  end else
begin
  with DataModule1.Qpetugas do
begin
  Append;
  FieldByName('nama').AsString := nama.text;
  FieldByName('jenis_kelamin').AsString := jeniskelamin.text;
  FieldByName('jabatan').AsString := jabatan.text;
  FieldByName('nomor_telpon').AsString := notelpon.Text;
  FieldByName('alamat').AsString := alamat.Text;
  Post;
  Showmessage('Data berhasil di tambahkan');
  bersih;
end;
 end;
 end;
procedure TForm2.DBGrid2CellClick(Column: TColumn);
begin
begin
 with DataModule1.Qpetugas do
  begin
    nama.Text := FieldByName('nama').AsString;
    jeniskelamin.Text := FieldByName('jenis_kelamin').AsString;
    jabatan.text := FieldByName('jabatan').AsString;
    notelpon.text := FieldByName('nomor_telpon').AsString;
    alamat.text := FieldByName('alamat').AsString;
  end;
end;
end;

procedure TForm2.editbtnClick(Sender: TObject);
begin
with Datamodule1.Qpetugas do
 begin
  Edit;
  FieldByName('nama').AsString := nama.Text;
  FieldByName('jenis_kelamin').AsString := jeniskelamin.Text;
  FieldByName('jabatan').AsString := jabatan.Text;
  FieldByName('nomor_telpon').AsString := notelpon.Text;
  FieldByName('alamat').AsString := alamat.Text;
  Post;
  Showmessage('Data berhasil di ubah');
  bersih;
end;
end;

procedure TForm2.hapusbtnClick(Sender: TObject);
begin
if messagedlg('Apakah anda ingin menghapus data???',mtconfirmation,[mbYes,mbNo],0)=mrYes then
 With Datamodule1.Qpetugas do
  begin
   delete;
   Showmessage('Data telah dihapus');
   bersih;
   //BitBtn1.Enabled := true;
   end;
end;

procedure TForm2.kembalibtnClick(Sender: TObject);
begin
 form3.show;
 form2.Hide;
end;

end.

