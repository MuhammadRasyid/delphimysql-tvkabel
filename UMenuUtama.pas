unit UMenuUtama;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, Grids, DBGrids, Menus, Buttons;

type
  TForm3 = class(TForm)
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    MainMenu1: TMainMenu;
    Beranda1: TMenuItem;
    Datapetugas1: TMenuItem;
    Datapelanggan1: TMenuItem;
    Logout1: TMenuItem;
    Edit3: TEdit;
    Label3: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Label5: TLabel;
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Datapelanggan2: TMenuItem;
    Datapetugas2: TMenuItem;
    Dataadmin1: TMenuItem;
    Datapemohon1: TMenuItem;
    Dataperbaikan1: TMenuItem;
    Panel3: TPanel;
    Panel4: TPanel;
    GroupBox1: TGroupBox;
    Label13: TLabel;
    Label12: TLabel;
    Label7: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    Label4: TLabel;
    alamat: TEdit;
    nama: TEdit;
    nik: TEdit;
    notelpon: TEdit;
    email: TEdit;
    ComboBox2: TComboBox;
    DTP1: TDateTimePicker;
    KP: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    GroupBox2: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    ComboBox1: TComboBox;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Panel2: TPanel;
    DBGrid2: TDBGrid;
    procedure Timer1Timer(Sender: TObject);
    procedure Logout1Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure nikKeyPress(Sender: TObject; var Key: Char);
    procedure notelponKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Dataadmin1Click(Sender: TObject);
    procedure Datapetugas2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure bersih;
    //procedure KodeOtomatis;
    procedure duplikat;
    procedure tampil;

  end;

var
  Form3: TForm3;

implementation

uses UMudole, ULogin, UPelanggan, UAdmin;
//bersih
procedure TForm3.bersih;
begin
  nik.Text := '';
  nama.Text := '';
  alamat.text := '';
  notelpon.text := '';
  email.Text := '';
end;

//procedure TForm3.KodeOtomatis;
//  var
//  Kode,Nourut : string;
//  i : integer;
//begin
  //Format Kode : Tahun+PJ(maksudnya untuk penjualan)+TahunBulanTanggal-
  //Jadi Misal : 13PJ20130823-Nourut
//  Kode :=FormatDateTime('yy', DTP1.Date)+'PJ'+FormatDateTime('yyyyMMdd', DTP1.Date) + '-';
 // With DataModule1.Qpemohon do
//    begin
 //     Close;
 //     SQL.Clear;
 //     SQL.Add('Select Max(right(kodpel, 4)) from tb_pemohon ' + 'Where left(kodpel, 13) = ' + QuotedStr(Kode) + ';');
 //     Open;
 //   end;
 // if DataModule1.Qpemohon.Fields[0].AsString = '' then
 //   Nourut := '0001'
 // else
 // if DataModule1.Qpemohon.Fields[0].AsString = '9999' then
 //   MessageDlg('Data Hari Ini Sudah over Besok aza lagi ya !!',mtError,[mbOK],0)
 // else
 //   Nourut := IntToStr(DataModule1.Qpemohon.Fields[0].AsInteger + 1);
 // if length(Nourut) < 4 then
  //begin
 //   for i := length(Nourut) to 3 do
   //   Nourut := '0' + Nourut;
 // end;
//  kp.Text := Kode + Nourut;
//end;
procedure TFORM3.tampil;
begin
 with DataModule1.Qpemohon do
  begin
   DataModule1.Qpemohon.Close;
   DataModule1.Qpemohon.SQL.Clear;
   DataModule1.Qpemohon.SQL.Text := ('select * from tb_pemohon ');
   DataModule1.Qpemohon.Open; //jalankan perintah query tersebut
  end;
end;



//duplikat
procedure TForm3.duplikat;
begin
 with DataModule1.Qpemohon do
  begin
  // DataModule1.Qpemohon.Close;
  // DataModule1.Qpemohon.SQL.Clear;
    Active := False;
   //Active := False; //non aktifkan dulu, sebelum perintah query dimasukkan
   DataModule1.Qpemohon.SQL.text :=('select * from tb_pemohon where nik ='+QuotedStr(nik.Text)); //edit2.text merupakan acuan
    Active := True;
   //DataModule1.Qpemohon.Open; //jalankan perintah query tersebut

   If RecordCount > 0 then //berarti terjadi duplicate value di tabel database
    begin
     ShowMessage('Duplicate Entry. Mohon masukkan Id yang belum pernah dipakai user lain');
     exit;
    end;
end;



  end;



{$R *.dfm}

procedure TForm3.Timer1Timer(Sender: TObject);
begin
StatusBar1.Panels[0].Text := 'Tanggal : '+DateToStr(date);
StatusBar1.Panels[1].Text := 'Jam : '+TimeToStr(time);
StatusBar1.Panels[2].Text := 'Status : Connected';
StatusBar1.Panels[3].Text := 'Login Us : Admin';

end;

procedure TForm3.Logout1Click(Sender: TObject);
begin
if messagedlg('Apakah anda ingin keluar ???',mtconfirmation,[mbYes,mbNo],0)=mrYes then
 begin
   //Application.Terminate;
   Form1.Show;
   Form3.hide;
 end;
end;

procedure TForm3.DBGrid1CellClick(Column: TColumn);
begin
BitBtn1.Enabled := false;
begin
 with DataModule1.Qpemohon do
  begin
    nik.Text := FieldByName('nik').AsString;
    nama.Text := FieldByName('nama').AsString;
    alamat.text := FieldByName('alamat').AsString;
    notelpon.text := FieldByName('no_telpon').AsString;
    email.text := FieldByName('email').AsString;
    KP.text := FieldByName('kodpel').AsString;
  end;
end;

end;

procedure TForm3.BitBtn2Click(Sender: TObject);
begin
 with Datamodule1.Qpemohon do
 begin
  Edit;
  FieldByName('nik').AsString := nik.Text;
  FieldByName('nama').AsString := nama.Text;
  FieldByName('alamat').AsString := alamat.Text;
  FieldByName('no_telpon').AsString := notelpon.Text;
  FieldByName('email').AsString := email.Text;
  Post;
  Showmessage('Data berhasil di ubah');
  bersih;
  BitBtn1.Enabled := true;
end;
end;
procedure TForm3.BitBtn3Click(Sender: TObject);
begin
if messagedlg('Apakah anda ingin menghapus data???',mtconfirmation,[mbYes,mbNo],0)=mrYes then
 With Datamodule1.Qpemohon do
  begin
   delete;
   Showmessage('Data telah dihapus');
   bersih;
   BitBtn1.Enabled := true;
   end;
end;

procedure TForm3.FormActivate(Sender: TObject);
begin
 Datamodule1.Qpetugas.First;
 While not Datamodule1.Qpetugas.Eof do
 begin
  ComboBox2.Items.Add(Datamodule1.Qpetugas['nama']);
  Datamodule1.Qpetugas.Next;

  //KodeOtomatis;
 end;
end;

procedure TForm3.ComboBox2Change(Sender: TObject);
begin
 begin
  DataModule1.Qpetugas.Close;
  DataModule1.Qpetugas.SQL.Clear;
  DataModule1.Qpetugas.SQL.Add('select * from tb_petugas where nama ='+QuotedStr(ComboBox2.Text)); //edit2.text merupakan acuan
  DataModule1.Qpetugas.Open;
  nama.text := DataModule1.Qpetugas.FieldByName('nomor_telpon').AsString;
  alamat.text := DataModule1.Qpetugas.FieldByName('alamat').AsString;
 end;

end;

procedure TForm3.Edit1Change(Sender: TObject);
begin
  DataModule1.Qpemohon.Close;
  DataModule1.Qpemohon.SQL.Clear;
  DataModule1.Qpemohon.SQL.Add('select * from tb_pemohon where nik like "%'+ edit1.Text +'%" or nama like "%'+ edit1.Text +'%" ');
  Datamodule1.Qpemohon.Open;
end;
procedure TForm3.nikKeyPress(Sender: TObject; var Key: Char);
begin
 if not (Key in ['0'..'9',#8,#9,#26,#13,#32]) then
 begin
  key:=#0;
  exit;
  end;
end;

procedure TForm3.notelponKeyPress(Sender: TObject; var Key: Char);
begin
 if not (Key in ['0'..'9',#8,#9,#26,#13,#32]) then
 begin
  key:=#0;
  exit;
  end;
end;

procedure TForm3.BitBtn4Click(Sender: TObject);
begin
 BitBtn1.Enabled:= true;
 BitBtn2.Enabled:= true;
 BitBtn3.Enabled:= true;
 nik.Text:='';
 nama.Text:='';
 alamat.Text:='';
 notelpon.Text:='';
 email.Text:='';
 kp.Text:='';
 nik.Enabled:= true;
 nama.Enabled:= true;
 alamat.Enabled:= true;
 notelpon.Enabled:= true;
 email.Enabled:= true;
 kp.Enabled:= true;
 nik.SetFocus;



end;

procedure TForm3.BitBtn1Click(Sender: TObject);
begin
//duplikat;

if nik.Text = ''  then
 begin
  Showmessage('nik kosong');
  nik.setfocus;
 end else
if nama.Text = '' then
  begin
   Showmessage('nama kosong');
   nama.SetFocus;
  end else
if alamat.Text = '' then
  begin
   Showmessage('alamat kosong');
   alamat.SetFocus;
  end else
if notelpon.Text = '' then
  begin
   Showmessage('nomor telpon kosong');
   notelpon.SetFocus;
  end else
if email.Text = '' then
  begin
   Showmessage('email kosong');
   email.SetFocus;
  end else
if DataModule1.Qpemohon.Locate('nik',nik.Text,[]) then
  begin
   Showmessage('Data Sudah ada');
   nik.SetFocus;
  end else
begin
  with DataModule1.Qpemohon do
begin
  Append;
  FieldByName('nik').AsString := nik.text;
  FieldByName('nama').AsString := nama.text;
  FieldByName('alamat').AsString := alamat.text;
  FieldByName('no_telpon').AsString := notelpon.text;
  FieldByName('email').AsString := email.text;
  FieldByName('kodpel').AsString := KP.text;
  Post;
  Showmessage('Data berhasil di tambahkan');
  tampil;
  bersih;
  //KodeOtomatis;
end;
end;
 end;
procedure TForm3.Dataadmin1Click(Sender: TObject);
begin
 form4.show;
 form3.Hide;
end;

procedure TForm3.Datapetugas2Click(Sender: TObject);
begin
 form2.show;
 form3.Hide;
end;

end.
