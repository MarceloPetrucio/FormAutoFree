program ExemploAutoFree;

uses
  System.StartUpCopy,
  FMX.Forms,
  UPadrao in 'UPadrao.pas' {Padrao},
  UMenuPrincipal in 'UMenuPrincipal.pas' {MenuPrincipal},
  UTela1 in 'UTela1.pas' {Tela1},
  UTela2 in 'UTela2.pas' {Tela2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMenuPrincipal, MenuPrincipal);
  Application.Run;
end.
