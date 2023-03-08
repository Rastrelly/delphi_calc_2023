unit ucalc2023;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnCalc: TButton;
    editC: TEdit;
    editA: TEdit;
    editB: TEdit;
    GroupBox1: TGroupBox;
    rbMinus: TRadioButton;
    rbDivide: TRadioButton;
    rbPlus: TRadioButton;
    rbMultiply: TRadioButton;
    procedure btnCalcClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  a,b,c:Real;
  err:Boolean;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.btnCalcClick(Sender: TObject);
begin
  err:=false;
  a:=strtofloat(editA.text);
  b:=strtofloat(editB.text);
  if (rbPlus.Checked)     then c:=a+b;
  if (rbMinus.Checked)    then c:=a-b;
  if (rbMultiply.Checked) then c:=a*b;
  if (rbDivide.Checked)   then
  begin
    if (b<>0) then c:=a/b
    else err:=true;
  end;

  if (not err)
    editC.Text:=floattostr(c)
  else
    editC.Text:='ERR';
end;

end.

