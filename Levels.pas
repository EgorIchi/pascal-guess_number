Unit Levels;

interface
type
Person=record
  first_name:string[50];
  last_name:string[50];
end;
var f:file of Person;


procedure Easy_Level(man:Person);
procedure Medium_Level(man:Person);
procedure Hard_Level(man:Person);

implementation

procedure Easy_Level(man:Person);
var count_life:integer;
m:Person;
min:integer;
max:integer;
secret_number:integer;
you_number:integer;
begin
  count_life:=10;
  writeln;
  writeln(man.first_name,' ',man.last_name,' Its easy level you have ',count_life,' tries');
  writeln;
  Write('Write the minimum number:');
  Readln(min);
  Write('Write the maximum number:');
  Readln(max);
  writeln;
  secret_number:=Random(min,max);

  while true do
  begin
    Writeln('Attempt number:',count_life);
    Write('Write your number:');
    Readln(you_number);
    
    if you_number>secret_number then writeln('Write the number less')
    else if you_number<secret_number then writeln('Write the number more')
    
   else  if count_life=0 then begin
      writeln;
      writeln('Sorry!!! ',man.first_name,' ', man.last_name);
      Writeln('You lose and you have:',count_life,' Attempt');
      writeln;
      break;
      end
   else if you_number=secret_number then begin
      Writeln;
      Writeln('Congratulations!!! ',man.first_name,' ', man.last_name);
      Writeln('You win this game');
      Writeln('The Secret number is:',secret_number);
      Writeln('Your quantity attempt is:',count_life);
      Writeln;
      
      break;
    end;
    
    count_life:=count_life-1;
    Writeln;
  end;
end;


procedure Medium_Level(man:Person);
var count_life:integer;
min:integer;
max:integer;
secret_number:integer;
you_number:integer;
begin
  count_life:=7;
  writeln;
  writeln(man.first_name,' ',man.last_name,' Its medium level you have ',count_life,' tries');
  writeln;
  Write('Write the minimum number:');
  Readln(min);
  Write('Write the maximum number:');
  Readln(max);
  writeln;
  secret_number:=Random(min,max);
  while true do
  begin
    Writeln('Attempt number:',count_life);
    Write('Write your number:');
    Readln(you_number);
    
    if count_life =0 then 
    begin
      writeln;
      writeln('Sorry!!! ',man.first_name,' ', man.last_name);
      Writeln('You lose and you have:',count_life,' Attempt');
      writeln;
      break;
    end
    else if you_number=secret_number then
    begin
        Writeln;
      Writeln('Congratulations!!! ',man.first_name,' ', man.last_name);
      Writeln('You win this game');
      Writeln('The Secret number is:',secret_number);
      Writeln('Your quantity attempt is:',count_life);
      Writeln;
      break;
    end
    else if you_number<> secret_number then begin
      writeln('Wrong!!!');
      writeln;
    end;
    count_life:=count_life-1;
  end;
end;


procedure Hard_Level(man:Person);
var count_life:integer;
q:Person;
min:integer;
max:integer;
secret_number:integer;
you_number:integer;
begin
  count_life:=5;
  writeln;
  writeln(man.first_name,' ',man.last_name,' Its hard level you have ',count_life,' tries');
  writeln;
  Write('Write the minimum number:');
  Readln(min);
  Write('Write the maximum number:');
  Readln(max);
  writeln;
  while true do
  begin
    secret_number:=Random(min,max);
    Writeln('Attempt number:',count_life);
    Write('Write your number:');
    Readln(you_number);
    if you_number=secret_number then
    begin
      Writeln;
      Writeln('Congratulations!!! ',man.first_name,' ', man.last_name);
      Writeln('You win this game');
      Writeln('The Secret number is:',secret_number);
      Writeln('Your quantity attempt is:',count_life);
      Writeln;
      
      break;
    end 
    else if count_life=0 then begin
      writeln;
      writeln('Sorry!!! ',man.first_name,' ', man.last_name);
      Writeln('You lose and you have:',count_life,' Attempt');
      writeln;
      break;
     
    end
    else if you_number<> secret_number then begin
      writeln('Wrong!!!');
      writeln;
    end;
    
    
    count_life:=count_life-1;
    
  end;
end;

begin

end.
