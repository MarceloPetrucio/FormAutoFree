unit UMenuPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UPadrao, FMX.Controls.Presentation;

type
  TMenuPrincipal = class(TPadrao)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MenuPrincipal: TMenuPrincipal;

implementation

{$R *.fmx}

uses UTela1, UTela2;

procedure TMenuPrincipal.Button1Click(Sender: TObject);
begin
  inherited;
   CriarTela(Tela1, TTela1);
   Tela1.Show;
end;

procedure TMenuPrincipal.Button2Click(Sender: TObject);
begin
  inherited;
   CriarTela(Tela2, TTela2);
   Tela2.Show;
end;

procedure TMenuPrincipal.Button3Click(Sender: TObject);
begin
  inherited;
   if Assigned(Tela1) then
      ShowMessage('Tela 1 está na memória !!!')
   Else
      ShowMessage('Tela 1 não está mais na memória !!!');

end;

procedure TMenuPrincipal.Button4Click(Sender: TObject);
begin
  inherited;
   if Assigned(Tela2) then
      ShowMessage('Tela 2 está na memória !!!')
   Else
      ShowMessage('Tela 2 não está mais na memória !!!');
end;

end.
