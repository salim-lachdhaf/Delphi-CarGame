unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Edit, FMX.Objects, FMX.Menus;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    label1: TLabel;
    Label2: TLabel;
    score: TEdit;
    Timer1: TTimer;
    noir: TImage;
    jaune: TImage;
    blanche: TImage;
    rouge: TImage;
    bleu: TImage;
    CornerButton3: TCornerButton;
    CornerButton1: TCornerButton;
    CornerButton4: TCornerButton;
    CornerButton2: TCornerButton;
    car: TImage;
    bleutimer: TTimer;
    noirtimer: TTimer;
    jaunetimer: TTimer;
    cartimer: TTimer;
    generale: TTimer;
    crash: TImage;
    crashtimer: TTimer;
    Line1: TLine;
    Line2: TLine;
    Line3: TLine;
    Line4: TLine;
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CornerButton1Click(Sender: TObject);
    procedure CornerButton4Click(Sender: TObject);
    procedure CornerButton3Click(Sender: TObject);
    procedure CornerButton2Click(Sender: TObject);
    procedure bleutimerTimer(Sender: TObject);
    procedure noirtimerTimer(Sender: TObject);
    procedure cartimerTimer(Sender: TObject);
    procedure jaunetimerTimer(Sender: TObject);
    procedure generaleTimer(Sender: TObject);
    procedure crashtimerTimer(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}
var x:array[1..6]of integer;
 var xx,i,alea1,yt:integer;

function fin():boolean ;
begin
if (form1.blanche.Position.X=Form1.bleu.Position.X)and((form1.bleu.Position.Y+95>=form1.blanche.Position.Y)and(form1.bleu.Position.Y-95<=form1.blanche.Position.Y))then
BEGIN
FORM1.CornerButton1.Enabled:=false;
FORM1.CornerButton2.Enabled:=false;
FORM1.CornerButton3.Enabled:=false;
FORM1.CornerButton4.Enabled:=false;
result:=true  ;
END
else if (form1.blanche.Position.X=Form1.jaune.Position.X)and((form1.jaune.Position.Y+95>=form1.blanche.Position.Y)and(form1.jaune.Position.Y-95<=form1.blanche.Position.Y))then
BEGIN
FORM1.CornerButton1.Enabled:=false;
FORM1.CornerButton2.Enabled:=false;
FORM1.CornerButton3.Enabled:=false;
FORM1.CornerButton4.Enabled:=false;
result:=true ;
END
else if (form1.blanche.Position.X=Form1.rouge.Position.X)and((form1.rouge.Position.Y+95>=form1.blanche.Position.Y)and(form1.rouge.Position.Y-95<=form1.blanche.Position.Y))then
BEGIN
FORM1.CornerButton1.Enabled:=false;
FORM1.CornerButton2.Enabled:=false;
FORM1.CornerButton3.Enabled:=false;
FORM1.CornerButton4.Enabled:=false;
result:=true  ;
END
else if (form1.blanche.Position.X=Form1.car.Position.X)and((form1.car.Position.Y+95>=form1.blanche.Position.Y)and(form1.car.Position.Y-95<=form1.blanche.Position.Y)) then
BEGIN
FORM1.CornerButton1.Enabled:=false;
FORM1.CornerButton2.Enabled:=false;
FORM1.CornerButton3.Enabled:=false;
FORM1.CornerButton4.Enabled:=false;
 result:=true   ;
END
else if (form1.blanche.Position.X=Form1.noir.Position.X)and((form1.noir.Position.Y+95>=form1.blanche.Position.Y)and(form1.noir.Position.Y-95<=form1.blanche.Position.Y))then
 BEGIN
 FORM1.CornerButton1.Enabled:=false;
FORM1.CornerButton2.Enabled:=false;
FORM1.CornerButton3.Enabled:=false;
FORM1.CornerButton4.Enabled:=false;
 result:=true    ;
 END
 else result:=false;
end;

 procedure initialisation();
 begin
 x[1]:=16;x[2]:=80;x[3]:=144;x[4]:=216;x[5]:=280;
 form1.bleu.Position.Y:=-110;
 form1.rouge.Position.Y:=-110;
 form1.jaune.Position.Y:=-110;
 form1.car.Position.Y:=-110;
 form1.noir.Position.Y:=-110;
 form1.blanche.Position.Y:=450; // CAR DE JOUEUR
 i:=3;
 xx:=0;
 yt:=0;
 Form1.crashtimer.Enabled:=false;
 form1.crash.Visible:=false;
end;



procedure TForm1.bleutimerTimer(Sender: TObject);
begin
if fin() then
begin
crash.Visible:=true;
crashtimer.Enabled:=true;
Timer1.Enabled:=false;generale.enabled:=false;
jaunetimer.Enabled:=false;
noirtimer.Enabled:=false;
cartimer.Enabled:=false;
bleutimer.Enabled:=false;
CornerButton1.Enabled:=false;
CornerButton2.Enabled:=false;
CornerButton3.Enabled:=false;
CornerButton4.Enabled:=false;
end;
if bleu.Position.Y>random(10)+Form1.Width+100 then
begin
score.Text:=inttostr(strtoint(score.Text)+5);
form1.bleu.Position.Y:=-110;
 randomize;
Randomize;
repeat
alea1:=random(5)+1   ;
until ((x[alea1]<>jaune.Position.x)and(x[alea1]<>noir.Position.x)and(x[alea1]<>rouge.Position.x)and(x[alea1]<>car.Position.x));
bleu.position.x:=x[alea1];
bleutimer.Enabled:=false;
end;
bleu.Position.Y:=bleu.Position.Y+7;
end;

procedure TForm1.cartimerTimer(Sender: TObject);
begin
if fin() then
begin
crash.Visible:=true;
crashtimer.Enabled:=true;
Timer1.Enabled:=false;generale.enabled:=false;
jaunetimer.Enabled:=false;
noirtimer.Enabled:=false;
cartimer.Enabled:=false;
bleutimer.Enabled:=false;
CornerButton1.Enabled:=false;
CornerButton2.Enabled:=false;
CornerButton3.Enabled:=false;
CornerButton4.Enabled:=false;
end;
if car.Position.Y>random(10)+Form1.Width+100 then
begin
score.Text:=inttostr(strtoint(score.Text)+5);
form1.car.Position.Y:=-110;
Randomize;
repeat
alea1:=random(5)+1   ;
until ((x[alea1]<>jaune.Position.x)and(x[alea1]<>noir.Position.x)and(x[alea1]<>rouge.Position.x)and(x[alea1]<>bleu.Position.x));
car.position.x:=x[alea1];
cartimer.Enabled:=false;
end;
car.Position.Y:=car.Position.Y+7;
end;

procedure TForm1.CornerButton1Click(Sender: TObject);
begin
if blanche.Position.Y>0 then
blanche.Position.Y:=blanche.Position.Y-5;
end;

procedure TForm1.CornerButton2Click(Sender: TObject);
begin
if blanche.Position.x<280 then
begin
inc(i);
blanche.Position.x:=x[i];
end;
end;

procedure TForm1.CornerButton3Click(Sender: TObject);
begin
if blanche.Position.x>16 then
begin
dec(i);
blanche.Position.x:=x[i];
end;
end;

procedure TForm1.CornerButton4Click(Sender: TObject);
begin
if blanche.Position.Y<450 then
blanche.Position.Y:=blanche.Position.Y+7;
end;

procedure TForm1.crashtimerTimer(Sender: TObject);
 begin
  inc(yt);
  if (yt mod 2=0) then
  crash.Visible:=true
  else crash.Visible:=false;

  if yt=1 then
  begin
  ShowMessage('GAME OVER!');
  crashtimer.Enabled:=false;
application.Terminate;
end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
initialisation();
yt:=0;
end;


procedure TForm1.generaleTimer(Sender: TObject);
begin
try
if((score.Text<>'0')and(strtoint(score.Text) mod 20=0)) then
begin
edit1.Text:=inttostr(strtoint(edit1.Text)+1);
if(timer1.Interval-5>=1) then
begin
timer1.Interval:= timer1.Interval-5;
end;
if(generale.Interval-10>=1) then
begin
generale.Interval:= generale.Interval-10;
end;
if(cartimer.Interval-15>=1) then
begin
cartimer.Interval:= cartimer.Interval-15;
bleutimer.Interval:= bleutimer.Interval-15;
jaunetimer.Interval:=jaunetimer.Interval-15;
noirtimer.Interval:=noirtimer.Interval-15;
end;
score.Text:=inttostr(strtoint(score.Text)+5);
end;
if xx<=2500 then
begin
  if xx mod 1500 =0 then
  begin
  Timer1.Interval:=15;
  timer1.Enabled:=true ;
  end
  else if xx mod 2500=0 then
  begin
  noirtimer.Enabled:=true
  end
  else if xx mod 1000=0 then
  jaunetimer.Enabled:=true
  else if xx mod 500=0 then
  begin
  cartimer.Enabled:=TRUE;
  end
  else if xx mod 10=0 then
  bleutimer.Enabled:=true;
end
else xx:=0;
inc(xx,10);
except
end;
end;

procedure TForm1.jaunetimerTimer(Sender: TObject);
begin
if fin() then
begin
crash.Visible:=true;
crashtimer.Enabled:=true;
Timer1.Enabled:=false;generale.enabled:=false;
jaunetimer.Enabled:=false;
noirtimer.Enabled:=false;
cartimer.Enabled:=false;
bleutimer.Enabled:=false;
CornerButton1.Enabled:=false;
CornerButton2.Enabled:=false;
CornerButton3.Enabled:=false;
CornerButton4.Enabled:=false;
end;
if jaune.Position.Y>random(10)+Form1.Width+100 then
begin
score.Text:=inttostr(strtoint(score.Text)+5);
form1.jaune.Position.Y:=-110;
Randomize;
repeat
alea1:=random(5)+1   ;
until ((x[alea1]<>rouge.Position.x)and(x[alea1]<>noir.Position.x)and(x[alea1]<>car.Position.x)and(x[alea1]<>bleu.Position.x));
jaune.position.x:=x[alea1];
jaunetimer.Enabled:=false;
end;
jaune.Position.Y:=jaune.Position.Y+7;
end;

procedure TForm1.noirtimerTimer(Sender: TObject);
begin
if fin() then
begin
crash.Visible:=true;
crashtimer.Enabled:=true;
Timer1.Enabled:=false;generale.enabled:=false;
jaunetimer.Enabled:=false;
noirtimer.Enabled:=false;
cartimer.Enabled:=false;
bleutimer.Enabled:=false;
CornerButton1.Enabled:=false;
CornerButton2.Enabled:=false;
CornerButton3.Enabled:=false;
CornerButton4.Enabled:=false;
end;
if noir.Position.Y>random(10)+Form1.Width+100 then
begin
score.Text:=inttostr(strtoint(score.Text)+5);
form1.noir.Position.Y:=-110;
 randomize;
repeat
alea1:=random(5)+1   ;
until ((x[alea1]<>jaune.Position.x)and(x[alea1]<>rouge.Position.x)and(x[alea1]<>car.Position.x)and(x[alea1]<>bleu.Position.x));
noir.position.x:=x[alea1];
noirtimer.Enabled:=false;
end;
noir.Position.Y:=noir.Position.Y+7;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
if fin() then
begin
crash.Visible:=true;
crashtimer.Enabled:=true;
Timer1.Enabled:=false;generale.Enabled:=false;
jaunetimer.Enabled:=false;
noirtimer.Enabled:=false;
cartimer.Enabled:=false;
bleutimer.Enabled:=false;
CornerButton1.Enabled:=false;
CornerButton2.Enabled:=false;
CornerButton3.Enabled:=false;
CornerButton4.Enabled:=false;
end;
if rouge.Position.Y>random(10)+Form1.Width+100 then
begin
  Randomize;
repeat
alea1:=random(5)+1   ;
until ((x[alea1]<>jaune.Position.x)and(x[alea1]<>noir.Position.x)and(x[alea1]<>car.Position.x)and(x[alea1]<>bleu.Position.x));
rouge.position.x:=x[alea1];

score.Text:=inttostr(strtoint(score.Text)+5);
form1.rouge.Position.Y:=-110;
Timer1.Enabled:=false;
end;
rouge.Position.Y:=rouge.Position.Y+7;
end;

end.
