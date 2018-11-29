unit UAdmin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons;

type
  TForm4 = class(TForm)
    username: TEdit;
    Label1: TLabel;
    password: TEdit;
    Label2: TLabel;
    simpan: TBitBtn;
    edit: TBitBtn;
    hapus: TBitBtn;
    BitBtn4: TBitBtn;
    DBGrid2: TDBGrid;
    procedure simpanClick(Sender: TObject);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure editClick(Sender: TObject);
    procedure hapusClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  procedure bersih;
  end;

var
  Form4: TForm4;

implementation


uses UMudole, UMenuUtama;
procedure TForm4.bersih;
begin
 username.Text := '';
 password.Text := '';
 username.SetFocus;
end;

{$R *.dfm}

procedure TForm4.simpanClick(Sender: TObject);
begin
if username.Text = ''  then
 begin
  Showmessage('Username kosong');
  username.setfocus;
 end else
if password.Text = '' then
  begin
   Showmessage('Password kosong');
   password.SetFocus;
  end else
begin
  with DataModule1.QLogin do
begin
  Append;
  FieldByName('user').AsString := username.text;
  FieldByName('password').AsString := password.text;
  Post;
  Showmessage('Data berhasil di tambahkan');
  bersih;
end;
    end;
    end;
procedure TForm4.DBGrid2CellClick(Column: TColumn);
begin
begin
 with DataModule1.QLogin do
  begin
    username.Text := FieldByName('user').AsString;
    password.Text := FieldByName('password').AsString;
  end;
end;

end;

procedure TForm4.editClick(Sender: TObject);
begin
with Datamodule1.QLogin do
 begin
  Edit;
  FieldByName('user').AsString := username.Text;
  FieldByName('password').AsString := password.Text;
  Post;
  Showmessage('Data berhasil di ubah');
  bersih;
end;
end;
procedure TForm4.hapusClick(Sender: TObject);
begin
if messagedlg('Apakah anda ingin menghapus data???',mtconfirmation,[mbYes,mbNo],0)=mrYes then
 With Datamodule1.Qlogin do
  begin
   delete;
   Showmessage('Data telah dihapus');
   bersih;
   //BitBtn1.Enabled := true;
   end;
end;

procedure TForm4.BitBtn4Click(Sender: TObject);
begin
 form3.show;
 form4.Hide;
//username.Enabled := true;
//password.Enabled := true;
//simpan.Enabled := true;
//edit.Enabled := true;
//hapus.Enabled := true;

end;

end.
