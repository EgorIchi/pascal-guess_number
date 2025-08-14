program Guess_Numb;
uses Levels;
uses crt;
var level:string;
Per:Person;
begin
  Writeln('Game - "Guess the number"');
  writeln;
  
  Write('Input your first name:');
  Readln(Per.first_name);
  Write('Input your last name:');
  Readln(Per.last_name);
  writeln;
  writeln('Hello!!! Welcome to the game guess the number: ',Per.first_name,' ', Per.last_name);
  writeln;
  
  
  repeat
   
   writeln('Select and write your level:');
   writeln('Easy - 10 tries and tips');
   writeln('Medium - 7 tries and without tips');
   writeln('Hard - 5 tries and the number replace every time');
   writeln('Exit - Exit the programm');
   
   
 
   writeln;
   Write('Write your level:');
   Readln(level);
     case level of 
     'Easy': begin
       Easy_Level(Per)
     end;
     'Medium': Medium_Level(Per);
     'Hard': Hard_Level(Per);
    
   end;
   until level = 'Exit' ;
  
  
end.