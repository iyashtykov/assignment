-module(helloworld). 
-export([start/0]). 
-include("user.hrl"). 

% FREEZE CODE BEGIN
start() -> 
   P = #person{name = "John",id = 1}, 
   io:fwrite("~p~n",[P#person.id]), 
 % FREEZE CODE END   
   io:fwrite("~p~n",[P#person.name]).

