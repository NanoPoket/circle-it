unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls,mmSystem;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label1: TLabel;
    Shape1: TShape;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation
uses Unit2,unit3;

{$R *.lfm}

{ TForm1 }
procedure TForm1.Button1Click(Sender: TObject);
begin
  form1.Close;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Form1.Visible:=false;
  Form3.ShowModal;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  if (v = false) and (p = false) then begin
  sndPlaySound('Fon.Wav',SND_ASYNC or SND_loop);
  p:=true;
  end;

  Form1.Visible:=false;
  Form2.ShowModal;
end;


end.

