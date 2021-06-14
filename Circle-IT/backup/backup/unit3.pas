unit Unit3;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  Buttons;

type

  { TForm3 }

  TForm3 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);

  private

  public

  end;

var
  Form3: TForm3;
  v:boolean;


implementation
uses unit1;

{$R *.lfm}

{ TForm3 }
begin
 v:=true;
end;

procedure TForm3.Image1Click(Sender: TObject);
begin
  if v = true then
  image1.Picture.LoadFromFile('off.png')
  else
  image1.Picture.LoadFromFile('on.png');
end;

procedure TForm3.Button1Click(Sender: TObject);
begin
  form3.Close;
  form1.Visible:=true;
end;

{ TForm3 }



end.

