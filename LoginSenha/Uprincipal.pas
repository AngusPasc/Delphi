unit Uprincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ZConnection, DB, ZAbstractRODataset, ZAbstractDataset,
  ZAbstractTable, ZDataset;

type
  TForm1 = class(TForm)
    lblUsuario: TLabel;
    lblSenha: TLabel;
    edtUsuario: TEdit;
    edtSenha: TEdit;
    btnEntrar: TButton;
    btnCancelar: TButton;
    ZConnection1: TZConnection;
    zqryrel1: TZQuery;
    ds1: TDataSource;
    ds2: TDataSource;
    procedure btnEntrarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    tentativas : SmallInt;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnEntrarClick(Sender: TObject);
begin
  if (edtUsuario.Text = '') then
  begin
    ShowMessage('O Campo do Usu�rio deve ser preenchido!');
  end;
  if (edtSenha.Text = '') then
  begin
    ShowMessage('Por favor digite a senha');
  end;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  if GetKeyState(VK_CAPITAL)= 0 then   //CAPS LOCK Desligado
  begin
       edtSenha.ShowHint := True;
  end
  else
  begin
      edtSenha.ShowHint := False;
  end;

  zqryrel1.SQL.Text :=

end;

end.


