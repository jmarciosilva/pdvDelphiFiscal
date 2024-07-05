program ACPDV;

uses
  Vcl.Forms,
  acpdv.view.principal in 'src\view\acpdv.view.principal.pas' {pagePrincipal},
  acpdv.view.login in 'src\view\acpdv.view.login.pas' {PageLogin},
  acpdv.view.pagamento in 'src\view\acpdv.view.pagamento.pas' {PagePagamentos},
  acpdv.view.pix in 'src\view\acpdv.view.pix.pas' {FramePix: TFrame},
  acpdv.view.dinheiro in 'src\view\acpdv.view.dinheiro.pas' {FrameDinheiro: TFrame},
  acpdv.view.cartao in 'src\view\acpdv.view.cartao.pas' {FrameCartao: TFrame};

{$R *.res}

begin
  Application.Initialize;
  ReportMemoryLeaksOnShutdown := True;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TpagePrincipal, pagePrincipal);
  Application.Run;
end.
