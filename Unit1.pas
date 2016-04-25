unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Unit2;

type
    TByteArr = array of byte;
    TStringArr = array of String;

type
  TForm1 = class(TForm)
    OpenDialog1: TOpenDialog;
    Button1: TButton;
    Edit1: TEdit;
    Button2: TButton;
    Button3: TButton;
    Label1: TLabel;
    Button4: TButton;
    GroupBox1: TGroupBox;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    LabeledEdit3: TLabeledEdit;
    LabeledEdit4: TLabeledEdit;
    LabeledEdit5: TLabeledEdit;
    LabeledEdit6: TLabeledEdit;
    GroupBox2: TGroupBox;
    LabeledEdit7: TLabeledEdit;
    LabeledEdit8: TLabeledEdit;
    LabeledEdit9: TLabeledEdit;
    LabeledEdit10: TLabeledEdit;
    LabeledEdit11: TLabeledEdit;
    LabeledEdit12: TLabeledEdit;
    LabeledEdit13: TLabeledEdit;
    LabeledEdit14: TLabeledEdit;
    LabeledEdit15: TLabeledEdit;
    LabeledEdit16: TLabeledEdit;
    GroupBox3: TGroupBox;
    LabeledEdit17: TLabeledEdit;
    LabeledEdit18: TLabeledEdit;
    LabeledEdit19: TLabeledEdit;
    LabeledEdit20: TLabeledEdit;
    GroupBox4: TGroupBox;
    LabeledEdit21: TLabeledEdit;
    LabeledEdit22: TLabeledEdit;
    LabeledEdit23: TLabeledEdit;
    LabeledEdit24: TLabeledEdit;
    Button5: TButton;
    Button6: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure find;
    procedure cls;
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    function zn(st:integer):string;
    procedure test;
    procedure Button6Click(Sender: TObject);
    procedure LabeledEdit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    function TtM(const Value:string):TByteArr;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  mem:array of byte;
  pos,start:integer;
  err:string;

// const
// adr: array [0..23] of integer = (24,20,16,12,0,4,109,113,121,117,44,40,52,48,60,56,72,64,76,68,97,93,105,101);

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
Edit1.Text:='';
cls;
pos:=0;
start:=0;
Button1.Enabled:=true;
Button2.Enabled:=false;
Button3.Enabled:=false;
Button4.Enabled:=false;
Button5.Enabled:=true;

end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
mem:=nil;
end;

procedure TForm1.cls;
begin
Label1.Caption:='';
LabeledEdit1.Text:='';
LabeledEdit2.Text:='';
LabeledEdit3.Text:='';
LabeledEdit4.Text:='';
LabeledEdit5.Text:='';
LabeledEdit6.Text:='';
LabeledEdit7.Text:='';
LabeledEdit8.Text:='';
LabeledEdit9.Text:='';
LabeledEdit10.Text:='';
LabeledEdit11.Text:='';
LabeledEdit12.Text:='';
LabeledEdit13.Text:='';
LabeledEdit14.Text:='';
LabeledEdit15.Text:='';
LabeledEdit16.Text:='';
LabeledEdit17.Text:='';
LabeledEdit18.Text:='';
LabeledEdit19.Text:='';
LabeledEdit20.Text:='';
LabeledEdit21.Text:='';
LabeledEdit22.Text:='';
LabeledEdit23.Text:='';
LabeledEdit24.Text:='';
end;

function TForm1.TtM(Const Value: String):TByteArr;
var
fmassiv:TByteArr;
fi,fj:integer;
fsi,fso:string;
begin
SetLength(fmassiv, Length(Value));
for fi := 0 to Length(Value) - 1 do
  fmassiv[fi] := ord(Value[fi + 1]) - 48;
fsi:='';
fso:='';
for fi:=0 to length(fmassiv)-1 do fsi:=fsi+inttostr(fmassiv[fi]);
fmassiv:=nil;
setlength(fmassiv,4);  ///////////////////////////////4 байта????
for fi:=0 to 3 do fmassiv[fi]:=0;
fso:=inttohex(strtoint(fsi),1);
if (length(fso)=1)or(length(fso)=3)or(length(fso)=5) then fso:='0'+fso;
fsi:='';
fj:=length(fso) div 2;
for fi:=fj downto 1 do
 begin
  fsi:='$'+copy(fso,0,2);
  delete(fso,1,2);
  fmassiv[fi-1]:=strtoint(fsi);
 end;
Result:=fmassiv;
fmassiv:=nil;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
i:integer;
f:file of byte;
b:byte;
begin
if Opendialog1.Execute then
begin
// файл найден
i:=0;
Form1.Caption:=Form1.Caption+' - '+Opendialog1.FileName;
Assignfile(f, Opendialog1.FileName);
Reset(f);
while not eof(f) do
 begin
  setlength(mem,i+1);
  read(f,b);
  mem[i]:=b;
  i:=i+1;
 end;
CloseFile(f);
Button2.Enabled:=true;
end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Button2.Enabled:=false;
pos:=0;
find;
Button2.Enabled:=true;
Button3.Enabled:=true;
Button4.Enabled:=true;
end;

procedure TForm1.Button4Click(Sender: TObject);
var
i:integer;
filei,fileo:file of byte;
b:byte;
le5,le6:string;
begin
Button4.Enabled:=false;
// подготовим
test;

le6:=LabeledEdit6.Text;
if strtoint(LabeledEdit6.Text)>3 then
 LabeledEdit6.Text:=inttostr(strtoint(le6)-3)
  else LabeledEdit6.Text:='1';


le5:=LabeledEdit5.Text;
if strtoint(LabeledEdit6.Text)<>0 then
  LabeledEdit5.Text:=inttostr(((strtoint(le5))-3)div(strtoint(LabeledEdit6.Text)));  // урон до
if strtoint(LabeledEdit5.Text)<1 then LabeledEdit5.Text:='1';

// сохраним изменения в массив
for i:=0 to 3 do mem[start+24+i]:=TtM(LabeledEdit1.Text)[i];   // прочность тек.
for i:=0 to 3 do mem[start+20+i]:=TtM(LabeledEdit2.Text)[i];   // прочность макс.
for i:=0 to 3 do mem[start+16+i]:=TtM(LabeledEdit3.Text)[i];   // макс. чар
for i:=0 to 3 do mem[start+12+i]:=TtM(LabeledEdit4.Text)[i];   // броня
for i:=0 to 3 do mem[start+0+i]:=TtM(LabeledEdit6.Text)[i];    // урон от
for i:=0 to 3 do mem[start+4+i]:=TtM(LabeledEdit5.Text)[i];    // урон до
for i:=0 to 3 do mem[start+109+i]:=TtM(LabeledEdit7.Text)[i];  // + к силе
for i:=0 to 3 do mem[start+113+i]:=TtM(LabeledEdit8.Text)[i];  // + к ловкости
for i:=0 to 3 do mem[start+121+i]:=TtM(LabeledEdit9.Text)[i];  // + к сложению
for i:=0 to 3 do mem[start+117+i]:=TtM(LabeledEdit10.Text)[i]; // + к интеллекту
for i:=0 to 3 do mem[start+44+i]:=TtM(LabeledEdit11.Text)[i];  // + к мане
for i:=0 to 3 do mem[start+40+i]:=TtM(LabeledEdit12.Text)[i];  // + к живучести
for i:=0 to 3 do mem[start+52+i]:=TtM(LabeledEdit13.Text)[i];  // + к защите
for i:=0 to 3 do mem[start+48+i]:=TtM(LabeledEdit14.Text)[i];  // + к нападению
for i:=0 to 3 do mem[start+60+i]:=TtM(LabeledEdit15.Text)[i];  // + к слуху
for i:=0 to 3 do mem[start+56+i]:=TtM(LabeledEdit16.Text)[i];  // + к обзору
for i:=0 to 3 do mem[start+72+i]:=TtM(LabeledEdit17.Text)[i];  // устойчивость к огню
for i:=0 to 3 do mem[start+64+i]:=TtM(LabeledEdit18.Text)[i];  // устойчивость к молнии
for i:=0 to 3 do mem[start+76+i]:=TtM(LabeledEdit19.Text)[i];  // устойчивость к духу
for i:=0 to 3 do mem[start+68+i]:=TtM(LabeledEdit20.Text)[i];  // устойчивость к яду
for i:=0 to 3 do mem[start+97+i]:=TtM(LabeledEdit21.Text)[i];  // требование ловкости
for i:=0 to 3 do mem[start+93+i]:=TtM(LabeledEdit22.Text)[i];  // требование силы
for i:=0 to 3 do mem[start+105+i]:=TtM(LabeledEdit23.Text)[i]; // требование сложения
for i:=0 to 3 do mem[start+101+i]:=TtM(LabeledEdit24.Text)[i]; // требование интеллекта
// вернем как было
LabeledEdit5.Text:=le5;
LabeledEdit6.Text:=le6;

// сохраним исходный файл в backup
Assignfile(filei,Opendialog1.FileName);
Assignfile(fileo,Opendialog1.FileName+'-'+formatdatetime('yyyy.mm.dd-hh.nn.ss',now)+'.old');
Reset(filei);
Rewrite(fileo);
while not eof(filei) do
begin
Read(filei,b);
Write(fileo,b);
end;
CloseFile(filei);
CloseFile(fileo);

// сохраним массив в файл
Assignfile(fileo,Opendialog1.FileName);
Rewrite(fileo);
for i:=0 to length(mem)-1 do
begin
Write(fileo,mem[i]);
end;
CloseFile(fileo);

messagedlg('Изменения сохранены',mtinformation,[mbok],0);
Button4.Enabled:=true;
end;

procedure TForm1.find; //-------------------------- ПОИСК -------------------
var
stn,a,b,c,i,j,i1:integer;
name:string;
se:array of byte;
label
yes, no, ya;
begin
cls;
j:=0;
stn:=0;
if (edit1.Text='')or(edit1.Text=' ')or(edit1.Text='  ')or(edit1.Text='   ')or(edit1.Text='    ')or(edit1.Text='    ')or(edit1.Text='     ')
 then
  begin
   edit1.Text:='';
   err:='Введите название предмета';
   goto no;
  end;
// занесём строку поиска в массив байт
for i:=1 to length(edit1.text) do
begin
 setlength(se,i);
 se[i-1]:=Ord(edit1.text[i]);
end;
// проверим совпадения
for i:=pos+1 to length(mem)-1 do
 begin
  if mem[i]=se[0] then
   for i1:=0 to length(se)-1 do
    if mem[i+i1]<>se[i1] then break
     else
      if i1=length(se)-1 then j:=i; // нашли начало полного совпадения
  if j<>0 then break;
 end;
se:=nil;
if j=0 then
 begin
  err:='Название не найдено';
  goto no;
 end;
// что-то делаем с найденным адресом j
pos:=j;
// Найдём начало секции
start:=0;
for a:=pos+5 downto 0 do
begin
if (mem[a]=71)and(mem[a-1]=95)and(mem[a-2]=95)and(mem[a-3]=0)
 then
  begin
   // a-3 = начало первой секции названия
   stn:=a+3+5; // начало текста названия
   for b:=a+7 to length(mem)-1 do
    begin
     if (mem[b]=71)and(mem[b-1]=95)and(mem[b-2]=95)and(mem[b-3]=0)
       then
         begin
          for c:=b+7 to length(mem)-1 do
           begin
            if (mem[c]=71)and(mem[c-1]=95)and(mem[c-2]=95)and(mem[c-3]=0)
             then
              begin
               start:=c+4; // начало секции параметров (c:=G из ' __G###')
               goto ya;
              end;
           end;
         end;
    end;
  end;
end;
ya:
if start=0 then
 begin
  err:='Начало секции не найдено';
  goto no;
 end;
// Найдём название
name:='';
for a:=stn to length(mem) do
begin
if (mem[a]=255)and(mem[a+1]=255)and(mem[a+2]=255)and(mem[a+3]=255)
 then break
  else name:=name+Chr(mem[a]);
end;
Label1.Caption:=name;
// Считываем параметры
LabeledEdit1.Text:=zn(start+24); // прочность тек.
LabeledEdit2.Text:=zn(start+20); // прочность макс.
LabeledEdit3.Text:=zn(start+16); // макс. чар
LabeledEdit4.Text:=zn(start+12); // броня
if strtoint(zn(start+0))<>0 then LabeledEdit6.Text:=inttostr(strtoint(zn(start+0))+3)
 else LabeledEdit6.Text:=zn(start+0);  // урон от
if (strtoint(zn(start+0))<>0)and(strtoint(zn(start+4))<>0) then LabeledEdit5.Text:=inttostr((strtoint(zn(start+0))*(strtoint(zn(start+4))))+3)
 else LabeledEdit5.Text:=zn(start+4);  // урон до
LabeledEdit7.Text:=zn(start+109);// + к силе
LabeledEdit8.Text:=zn(start+113);  // + к ловкости
LabeledEdit9.Text:=zn(start+121);  // + к сложению
LabeledEdit10.Text:=zn(start+117); // + к интеллекту
LabeledEdit11.Text:=zn(start+44); // + к мане
LabeledEdit12.Text:=zn(start+40); // + к живучести
LabeledEdit13.Text:=zn(start+52); // + к защите
LabeledEdit14.Text:=zn(start+48); // + к нападению
LabeledEdit15.Text:=zn(start+60); // + к слуху
LabeledEdit16.Text:=zn(start+56); // + к обзору
LabeledEdit17.Text:=zn(start+72); // устойчивость к огню
LabeledEdit18.Text:=zn(start+64); // устойчивость к молнии
LabeledEdit19.Text:=zn(start+76); // устойчивость к духу
LabeledEdit20.Text:=zn(start+68); // устойчивость к яду
LabeledEdit21.Text:=zn(start+97); // требование ловкости
LabeledEdit22.Text:=zn(start+93); // требование силы
LabeledEdit23.Text:=zn(start+105); // требование сложения
LabeledEdit24.Text:=zn(start+101); // требование интеллекта
goto yes;
no:
messagedlg(err,mtinformation,[mbok],0);
yes:
se:=nil;
end;

function TForm1.zn(st:integer):string;
var
stroka:string;
zni:integer;
begin
stroka:='';
try
for zni:=3 downto 0 do
begin
stroka:=stroka+format('%.2x',[mem[st+zni]]);
end;
result:=Inttostr(StrToInt('$'+stroka));
except
 result:='0';
 end;
end;

procedure TForm1.test;
begin
if StrToInt(LabeledEdit1.Text)>999999 then LabeledEdit1.Text:='999999';
if StrToInt(LabeledEdit2.Text)>999999 then LabeledEdit2.Text:='999999';
if StrToInt(LabeledEdit3.Text)>999999 then LabeledEdit3.Text:='999999';
if StrToInt(LabeledEdit4.Text)>999999 then LabeledEdit4.Text:='999999';
if StrToInt(LabeledEdit5.Text)>999999 then LabeledEdit5.Text:='999999';
if StrToInt(LabeledEdit6.Text)>999999 then LabeledEdit6.Text:='999999';
if StrToInt(LabeledEdit7.Text)>999999 then LabeledEdit7.Text:='999999';
if StrToInt(LabeledEdit8.Text)>999999 then LabeledEdit8.Text:='999999';
if StrToInt(LabeledEdit9.Text)>999999 then LabeledEdit9.Text:='999999';
if StrToInt(LabeledEdit10.Text)>999999 then LabeledEdit10.Text:='999999';
if StrToInt(LabeledEdit11.Text)>999999 then LabeledEdit11.Text:='999999';
if StrToInt(LabeledEdit12.Text)>999999 then LabeledEdit12.Text:='999999';
if StrToInt(LabeledEdit13.Text)>999999 then LabeledEdit13.Text:='999999';
if StrToInt(LabeledEdit14.Text)>999999 then LabeledEdit14.Text:='999999';
if StrToInt(LabeledEdit15.Text)>999999 then LabeledEdit15.Text:='999999';
if StrToInt(LabeledEdit16.Text)>999999 then LabeledEdit16.Text:='999999';
if StrToInt(LabeledEdit17.Text)>999999 then LabeledEdit17.Text:='999999';
if StrToInt(LabeledEdit18.Text)>999999 then LabeledEdit18.Text:='999999';
if StrToInt(LabeledEdit19.Text)>999999 then LabeledEdit19.Text:='999999';
if StrToInt(LabeledEdit20.Text)>999999 then LabeledEdit20.Text:='999999';
if StrToInt(LabeledEdit21.Text)>999999 then LabeledEdit21.Text:='999999';
if StrToInt(LabeledEdit22.Text)>999999 then LabeledEdit22.Text:='999999';
if StrToInt(LabeledEdit23.Text)>999999 then LabeledEdit23.Text:='999999';
if StrToInt(LabeledEdit24.Text)>999999 then LabeledEdit24.Text:='999999';

if StrToInt(LabeledEdit1.Text)>StrToInt(LabeledEdit2.Text) then LabeledEdit1.Text:=LabeledEdit2.Text;
if StrToInt(LabeledEdit6.Text)>StrToInt(LabeledEdit5.Text) then LabeledEdit6.Text:=LabeledEdit5.Text;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
Button2.Enabled:=false;
Button3.Enabled:=false;
find;
Button2.Enabled:=true;
Button3.Enabled:=true;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
Close;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
Application.CreateForm(TForm2, Form2);
end;

procedure TForm1.LabeledEdit1KeyPress(Sender: TObject; var Key: Char);
begin
 if not (key in['0'..'9',#8]) then key:=#0;
end;

end.
