unit UTela1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UPadrao, FMX.Controls.Presentation;

type
  TTela1 = class(TPadrao)
    Label1: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Tela1: TTela1;

implementation

{$R *.fmx}

end.
