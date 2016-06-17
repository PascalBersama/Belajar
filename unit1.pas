unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, Grids,
  StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    StringGrid1: TStringGrid;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;
  i,j: integer;
  p,q: array[0..100] of string;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin
  with StringGrid1 do
begin
  rowcount :=5;
  ColCount :=7;

  cells[0,0]:='p';
  cells[1,0]:='q';
  cells[2,0]:='p ^ q';
  cells[3,0]:='p v q';
  cells[4,0]:='p v ~(p n q)';
  cells[5,0]:='(p n q) ^ ~ (p v q)';

  cells[0,1]:='T';
  cells[0,2]:='T';
  cells[0,3]:='F';
  cells[0,4]:='F';

  cells[1,1]:='T';
  cells[1,2]:='F';
  cells[1,3]:='T';
  cells[1,4]:='F';

 end;

for i := 1 to StringGrid1.rowcount - 1 do
p[i]:= StringGrid1.cells[0,i];
for j := 1 to StringGrid1.RowCount - 1 do
Q[j]:= StringGrid1.Cells [1,j];

end;


procedure TForm1.Button1Click(Sender: TObject);
begin
  for i := 1 to StringGrid1.RowCount -1 do
begin
  if (p[i] ='T') and (Q[i]='T') then
  StringGrid1.cells[2,i]:='T'
else
StringGrid1.Cells [2,i]:='F';
end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  for i := 1 to StringGrid1.RowCount -1 do
begin
  if (p[i] ='F') and (Q[i]='F') then
  StringGrid1.cells[3,i]:='F'
else
StringGrid1.Cells [3,i]:='T';

end;

end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  for i := 1 to StringGrid1.RowCount -1 do
begin
  if (p[i] ='T') and (Q[i]='T') then
  StringGrid1.cells[4,i]:='T'
else
StringGrid1.Cells [4,i]:='T';
end;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  for i := 1 to StringGrid1.RowCount -1 do
begin
  if (p[i] ='F') and (Q[i]='F') then
  StringGrid1.cells[5,i]:='F'
else
StringGrid1.Cells [5,i]:='F';
end;
end;

end.

