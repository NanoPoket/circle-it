unit Unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TForm2 }

  TForm2 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    LV: TImage;
    Shape1: TShape;
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure LVMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure LVMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer
      );
    procedure LVMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private

  public

  end;

var
  Form2: TForm2;
  L,G: boolean;
  s: integer;

implementation
uses unit1;
{$R *.lfm}

{ TForm2 }

procedure TForm2.Button1Click(Sender: TObject);
begin
  form2.Close;
  form1.Visible:=true;
end;

procedure TForm2.FormActivate(Sender: TObject);
begin
  if s <=1 then begin
  s:=1;
  label2.caption:=inttostr(1);
  end
  else
  s:=strtoint(label2.caption);
end;

procedure TForm2.LVMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  with LV.Canvas do
    case Button of
    mbLeft: MoveTo(X,Y);
    mbRight:FloodFill(X,Y, Pixels[X,Y], fsSurface);
    end;
end;

procedure TForm2.LVMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  LV.Canvas.Pen.Width:=2;
  LV.Canvas.Pen.Color := clgreen;
  case s of
  1: begin
  if LV.Canvas.Pixels[X, Y] = clwhite then begin
  LV.Picture.LoadFromFile ('1.png');
  L:= false;
  G:= false;
  end;
  if LV.Canvas.Pixels[X, Y] = clyellow then
  G:=true;
  if LV.Canvas.Pixels[X, Y] = cllime then
  L:=true;
  if ssLeft in Shift then LV.Canvas.LineTo(X,Y);
  If L and G = true then begin
  s:=s+1;
  L:=false;
  G:=false;
  label2.caption:=inttostr(strtoint(label2.caption)+1);
  end;
  end;
  2: begin
     if LV.Canvas.Pixels[X, Y] = clwhite then begin
     LV.Picture.LoadFromFile ('2.png');
     L:= false;
     G:= false;
     end;
     if LV.Canvas.Pixels[X, Y] = clyellow then
     G:=true;
     if LV.Canvas.Pixels[X, Y] = cllime then
     L:=true;
     if ssLeft in Shift then LV.Canvas.LineTo(X,Y);
     If L and G = true then begin
     s:=s+1;
     L:=false;
     G:=false;
     label2.caption:=inttostr(strtoint(label2.caption)+1);
     end;
     end;
         3: begin
         if LV.Canvas.Pixels[X, Y] = clwhite then begin
         LV.Picture.LoadFromFile ('3.png');
         L:= false;
         G:= false;
         end;
         if LV.Canvas.Pixels[X, Y] = clyellow then
         G:=true;
         if LV.Canvas.Pixels[X, Y] = cllime then
         L:=true;
         if ssLeft in Shift then LV.Canvas.LineTo(X,Y);
         If L and G = true then begin
         s:=s+1;
         L:=false;
         G:=false;
         label2.caption:=inttostr(strtoint(label2.caption)+1);
         end;
         end;
              4: begin
              if LV.Canvas.Pixels[X, Y] = clwhite then begin
              LV.Picture.LoadFromFile ('4.png');
              L:= false;
              G:= false;
              end;
              if LV.Canvas.Pixels[X, Y] = clyellow then
              G:=true;
              if LV.Canvas.Pixels[X, Y] = cllime then
              L:=true;
              if ssLeft in Shift then LV.Canvas.LineTo(X,Y);
              If L and G = true then begin
              s:=s+1;
              L:=false;
              G:=false;
              label2.caption:=inttostr(strtoint(label2.caption)+1);
              end;
              end;
                   5: begin
                      if LV.Canvas.Pixels[X, Y] = clwhite then begin
                      LV.Picture.LoadFromFile ('5.png');
                      L:= false;
                      G:= false;
                      end;
                      if LV.Canvas.Pixels[X, Y] = clyellow then
                      G:=true;
                      if LV.Canvas.Pixels[X, Y] = cllime then
                      L:=true;
                      if ssLeft in Shift then LV.Canvas.LineTo(X,Y);
                      If L and G = true then begin
                      s:=1;
                      L:=false;
                      G:=false;
                      label2.caption:=inttostr(1);
                      end;
                      end;
  end;
end;


procedure TForm2.LVMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  case s of
  1: LV.Picture.LoadFromFile ('1.png');
  2: LV.Picture.LoadFromFile ('2.png');
  3: LV.Picture.LoadFromFile ('3.png');
  4: LV.Picture.LoadFromFile ('4.png');
  5: LV.Picture.LoadFromFile ('5.png');
  end;
  L:= false;
  G:= false;
end;




end.

