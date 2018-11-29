unit ULogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TForm1 = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    password: TEdit;
    Username: TLabel;
    Label1: TLabel;
    user: TEdit;
    CheckBox1: TCheckBox;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses UPelanggan, UMudole, UMenuUtama;

{$R *.dfm}

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
if user.Text = '' then
 begin
     ShowMessage('user tidak boleh kosong');
 end;
if password.Text = '' then
 begin
     ShowMessage('password tidak boleh kosong');
 end;

with DataModule1.QLogin do
 begin
  SQL.Clear;
  SQL.Add('select * from tb_login WHERE user="'+user.Text+'" AND password="'+password.Text+'" ');
  Open;
  if IsEmpty Then
   begin
   Application.MessageBox('password/user salah','error',MB_OK or MB_ICONERROR);
   end
   else
   begin
    Application.MessageBox('Selamat datang anda berhasil login ','Informasi',MB_OK or MB_ICONINFORMATION);
    form3.show;
   end;
 end;
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
 If CheckBox1.Checked then
  begin
    password.PasswordChar:=#0;
  end
 else
  begin
    password.PasswordChar:='*';
  end;
end;
end.
