unit UPadrao;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs;

type
  TFormClass = class of TForm;

type
  PtForm = ^TPadrao;
  TPadrao = class(TForm)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CriarTela(Out Form; FormClass:TFormClass);
  private
    { Private declarations }
  public
    { Public declarations }
    Ponteiro : PtForm;
    Destructor Destroy();Override;
  end;

var
  Padrao: TPadrao;

implementation

{$R *.fmx}

procedure TPadrao.CriarTela(out Form; FormClass: TFormClass);
begin
   If TForm(Form) = Nil Then
      TForm(Form) := FormClass.Create( Application {ou Nil ou Self} );

   If TForm(Form) Is TPadrao Then
      TPadrao(Form).Ponteiro := @TForm(Form);
end;

destructor TPadrao.Destroy;
var
   PtAux : PtForm;
Begin
   PtAux := Ponteiro;
   Inherited Destroy();

   If ( TForm(PtAux) <> Nil ) Then
      PtAux^ := Nil;
end;

procedure TPadrao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := TCloseAction.caFree;
end;

end.
