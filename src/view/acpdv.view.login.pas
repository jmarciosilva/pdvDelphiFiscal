unit acpdv.view.login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.jpeg,
  Vcl.Buttons, Vcl.StdCtrls;

type
  TPageLogin = class(TForm)
    pnlContainer: TPanel;
    pnlLogin: TPanel;
    pnlImage: TPanel;
    pnlLogar: TPanel;
    pnlTituloLogin: TPanel;
    pnlEdtContainerUsuario: TPanel;
    lblUsuário: TLabel;
    shapeUsuario: TShape;
    edtUsuario: TEdit;
    pnlContainerSenha: TPanel;
    lblSenha: TLabel;
    shapeSenha: TShape;
    edtSenha: TEdit;
    pnlContainerBotao: TPanel;
    pnlBotaoLogar: TPanel;
    shapeBotaoLogar: TShape;
    btnLogar: TSpeedButton;
    Image1: TImage;
    procedure btnLogarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PageLogin: TPageLogin;

implementation

{$R *.dfm}

uses acpdv.view.principal;

procedure TPageLogin.btnLogarClick(Sender: TObject);
begin
  if not ((edtUsuario.Text = 'Marcio') and  (edtSenha.Text = '123')) then
    begin
      ShowMessage('Login e Senha inválido!');
      Exit;
    end;
    Close;
end;

end.
