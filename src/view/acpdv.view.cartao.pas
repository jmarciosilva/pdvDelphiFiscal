unit acpdv.view.cartao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage;

type
  TFrameCartao = class(TFrame)
    pnlCartaoContainer: TPanel;
    pnlMetodoPagamentos: TPanel;
    pnlAncoraCartao: TPanel;
    shapeAncoraCartao: TShape;
    pnlImageCartao: TPanel;
    imgCartao: TImage;
    pnlTituloCartao: TPanel;
    pnlAncoraPix: TPanel;
    shapePix: TShape;
    pnlImagemPix: TPanel;
    imgPix: TImage;
    pnlTituloPix: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
