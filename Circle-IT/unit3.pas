unit Unit3;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  Buttons,mmSystem;

type

  { TForm3 }

  TForm3 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);

  private

  public

  end;

var
  Form3: TForm3;
  v,p:boolean;


implementation
uses unit1,unit2;

{$R *.lfm}

{ TForm3 }

procedure TForm3.Image1Click(Sender: TObject);
begin
  if v = false then begin
  sndPlaySound(nil, SND_ASYNC);
  v:=true;
  p:=false;
  image1.Picture.LoadFromFile('off.png');
  end
  else begin
  v:=false;
  image1.Picture.LoadFromFile('on.png');
  end;
end;

procedure TForm3.Button1Click(Sender: TObject);
begin
  form3.Close;
  form1.Visible:=true;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
  s:=1;
end;



{ TForm3 }



end.

