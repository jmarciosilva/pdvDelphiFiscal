unit acpdv.view.pagamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.Buttons;

type
  TPagePagamentos = class(TForm)
    pnlContainer: TPanel;
    pnlContainerInformacoes: TPanel;
    pnlFormasPagamento: TPanel;
    pnlTituloResumoDaVenda: TPanel;
    pnlCancelarRetornar: TPanel;
    pnlInformacoes: TPanel;
    pnlAncoraResumoVenda: TPanel;
    pnlEdit: TPanel;
    Image1: TImage;
    lblEditar: TLabel;
    pnlTotalVenda: TPanel;
    lblTituloTotaldaVenda: TLabel;
    lblTotalVenda: TLabel;
    pnlDesconto: TPanel;
    lblTituloDesconto: TLabel;
    edtDesconto: TEdit;
    pnlAcrescimo: TPanel;
    lblTituloAcrescimo: TLabel;
    edtAcrescimo: TEdit;
    pnlTotalReceber: TPanel;
    lblTituloTotalReceber: TLabel;
    lblTotalReceber: TLabel;
    Shape1: TShape;
    pnlAncoraResumoPagamento: TPanel;
    pnlTotalRecebido: TPanel;
    lblTituloTotalRecebido: TLabel;
    lblTotalRecebido: TLabel;
    pnlSaldoRestante: TPanel;
    lblTituloSaldoRestante: TLabel;
    lblSaldoRestante: TLabel;
    pnlTroco: TPanel;
    lblTituloTroco: TLabel;
    lblTroco: TLabel;
    pnlAncoraFormaPagamentosTitulo: TPanel;
    shapeDivisaoFormasPagamento: TShape;
    pnlTituloFormasPagamento: TPanel;
    pnlAncoraFormasPagamentoCorpo: TPanel;
    pnlTituloEscolhaFormaPagamento: TPanel;
    pnlMetodoPagamentos: TPanel;
    pnlAncoraCartao: TPanel;
    shapeAncoraCartao: TShape;
    pnlImageCartao: TPanel;
    pnlTituloCartao: TPanel;
    imgCartao: TImage;
    pnlAncoraPix: TPanel;
    shapePix: TShape;
    pnlImagemPix: TPanel;
    imgPix: TImage;
    pnlTituloPix: TPanel;
    pnlAncoraDinheiro: TPanel;
    shapeDinheiro: TShape;
    pnlImagemDinheiro: TPanel;
    imgDinheiro: TImage;
    pnlTituloDinheiro: TPanel;
    Shape2: TShape;
    pnlContainerPG: TPanel;
    procedure btnPixClick(Sender: TObject);
    procedure imgPixClick(Sender: TObject);
    procedure pnlTituloPixClick(Sender: TObject);
    procedure imgDinheiroClick(Sender: TObject);
    procedure pnlTituloDinheiroClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PagePagamentos: TPagePagamentos;

implementation

{$R *.dfm}

uses acpdv.view.pix, acpdv.view.dinheiro;

procedure TPagePagamentos.btnPixClick(Sender: TObject);
var lFrame : TFramePix;
begin
  lFrame := TFramePix.Create(nil);
  lFrame.Align := alClient;
  lFrame.Parent := pnlContainerPG;
end;

procedure TPagePagamentos.imgDinheiroClick(Sender: TObject);
var lFrame : TFrameDinheiro;
begin
  lFrame := TFrameDinheiro.Create(nil);
  lFrame.Align := alClient;
  lFrame.Parent := pnlContainerPG;
end;

procedure TPagePagamentos.imgPixClick(Sender: TObject);
var lFrame : TFramePix;
begin
  lFrame := TFramePix.Create(nil);
  lFrame.Align := alClient;
  lFrame.Parent := pnlContainerPG;
end;

procedure TPagePagamentos.pnlTituloDinheiroClick(Sender: TObject);
var lFrame : TFrameDinheiro;
begin
  lFrame := TFrameDinheiro.Create(nil);
  lFrame.Align := alClient;
  lFrame.Parent := pnlContainerPG;
end;

procedure TPagePagamentos.pnlTituloPixClick(Sender: TObject);
var lFrame : TFramePix;
begin
  lFrame := TFramePix.Create(nil);
  lFrame.Align := alClient;
  lFrame.Parent := pnlContainerPG;
end;

end.
