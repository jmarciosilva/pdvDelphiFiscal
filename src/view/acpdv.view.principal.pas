unit acpdv.view.principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Imaging.pngimage, acpdv.view.login,
  Vcl.WinXCtrls;

type
  TpagePrincipal = class(TForm)
    pnlContainer: TPanel;
    pnlTopo: TPanel;
    pnlRodape: TPanel;
    pnlMain: TPanel;
    pnlOperacoes: TPanel;
    pnlGrid: TPanel;
    pnlCancelarOp: TPanel;
    shapeCancelarOp: TShape;
    btnCancelarOp: TSpeedButton;
    pnlConsultarPreco: TPanel;
    shapeConsultarPreco: TShape;
    btnConsultarPreco: TSpeedButton;
    pnlAbrirCaixa: TPanel;
    shapeAbrirCaixa: TShape;
    btnAbrirCaixa: TSpeedButton;
    pnlCancelarVenda: TPanel;
    shapeCancelarVenda: TShape;
    btnCancelarVenda: TSpeedButton;
    pnlCancelarItem: TPanel;
    shapeCancelarItem: TShape;
    btnCancelarItem: TSpeedButton;
    pnlMaisFuncoes: TPanel;
    shapeMaisFuncoes: TShape;
    btnMaisFuncoes: TSpeedButton;
    gridProdutos: TDBGrid;
    pnlTotalCompra: TPanel;
    lblTituloTotalCompra: TLabel;
    shapeTotalCompra: TShape;
    pnlEdtTotalCompra: TPanel;
    lblTotalCompra: TLabel;
    pnlSubTtotal: TPanel;
    lblTituloSubTotal: TLabel;
    pnlEdtSubTotal: TPanel;
    shapeSubTotal: TShape;
    lblSubTotal: TLabel;
    pnlQuantidade: TPanel;
    lblTituloQuantidade: TLabel;
    pnlEdtQuantidade: TPanel;
    shapeQuantidade: TShape;
    edtQuantidade: TEdit;
    pnlPreco: TPanel;
    lblTituloPreco: TLabel;
    pnlEdtPreco: TPanel;
    shapePreco: TShape;
    lblPreco: TLabel;
    pnlProduto: TPanel;
    lblTituloProduto: TLabel;
    pnlEdtProduto: TPanel;
    shapeProduto: TShape;
    edtProduto: TEdit;
    pnlImage: TPanel;
    imgProduto: TImage;
    pnlMaster: TPanel;
    SplitViewFuncoes: TSplitView;
    pnlContainerSplitView: TPanel;
    pnlInformarCPF: TPanel;
    shapeInformarCPF: TShape;
    pnlNovaVenda: TPanel;
    shapeNovaVenda: TShape;
    pnlFecharVenda: TPanel;
    shapeFecharVenda: TShape;
    pnlMultiplicar: TPanel;
    shapeMultiplicar: TShape;
    pnlDescontoNoItem: TPanel;
    shapeDescontoNoItem: TShape;
    pnlSuprimentoSangria: TPanel;
    shapeSuprimentoSangria: TShape;
    SplitViewPagamentos: TSplitView;
    pnlPG: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnMaisFuncoesClick(Sender: TObject);
  private
    FLogin: TPageLogin;
    procedure MontarBotoes;
    procedure SplitViewAction(Value: TSplitView);
  public
    { Public declarations }
  end;

var
  pagePrincipal: TpagePrincipal;

implementation

{$R *.dfm}

uses acpdv.view.pagamento, acpdv.view.dinheiro, acpdv.view.pix;

procedure TpagePrincipal.btnMaisFuncoesClick(Sender: TObject);
begin
  SplitViewAction(SplitViewFuncoes);
end;

procedure TpagePrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FLogin.Free;
end;

procedure TpagePrincipal.FormCreate(Sender: TObject);
begin
  MontarBotoes;
end;

procedure TpagePrincipal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var
  lPagamentos : TPagePagamentos;

begin
  case Key of
    VK_ESCAPE: ShowMessage('Cancelar Opera��o');
    VK_F4: ShowMessage('Consultar Pre�o');
    VK_F2: ShowMessage('Abrir Caixa');
    VK_F5: ShowMessage('Cancelar Item');
    VK_F6: ShowMessage('Cancelar Venda');
    VK_F12: btnMaisFuncoesClick(Sender);
    VK_F7: begin
      lPagamentos := TPagePagamentos.Create(nil);
      lPagamentos.Parent := pnlPG;
      lPagamentos.Show;
      SplitViewAction(SplitViewPagamentos);
    end;



  end;
end;

procedure TpagePrincipal.FormShow(Sender: TObject);
begin
//  FLogin := TPageLogin.Create(nil);
//  FLogin.Parent := pnlMaster;
//  FLogin.Show;
end;

procedure TpagePrincipal.MontarBotoes;
begin
  btnCancelarOp.Caption := 'Cancelar Opera��o ' + ''#13'' + ' (ESC)';
  btnConsultarPreco.Caption := 'Consultar Pre�o ' + ''#13'' + ' (F4)';
  btnAbrirCaixa.Caption := 'Abrir Caixa ' + ''#13'' + ' (F2)';
  btnCancelarVenda.Caption := 'Cancelar Venda ' + ''#13'' + ' (F6)';
  btnCancelarItem.Caption := 'Cancelar Item ' + ''#13'' + ' (F5)';
  btnMaisFuncoes.Caption := 'Mais Fun��es ' + ''#13'' + ' (F12)';
end;

procedure TpagePrincipal.SplitViewAction(Value: TSplitView);
begin
  Value.Opened := not Value.Opened;
end;

end.
