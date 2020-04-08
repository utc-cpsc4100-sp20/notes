-module(erlang1).
-compile(export_all).
%-export([area/1, area/2]).

% area/1 -- this function is named area and has an 'arity' of 1
area(Radius) ->                                 
    Radius * Radius * math:pi().

%% area(Length,Width) ->
%%     Length * Width.

%% area(Length, Width) ->
%%     Area=Length*Width,
%%     Area.

area(circle, Radius) ->
    io:format("going to calculate area of a circle ~w~n", [Radius]),
    Radius*Radius*math:pi();
area(square, Side) ->
    Side*Side.
%% area(_,_) ->
%%     unknown.


fac(1) ->
    1;
fac(N) when N > 1 ->
    N * fac(N-1).


mergeSort([]) -> [];
mergeSort([Single]) -> [Single];
mergeSort(List) ->
    { Left, Right } = lists:split( trunc(length(List)/2), List),
    %% Lsorted=mergeSort(Left),
    %% Rsorted=mergeSort(Right),
    %% merge(Lsorted, Rsorted)
    merge(mergeSort(Left), mergeSort(Right))
        .
    

%% dont' export this one
merge([],Right) ->
    Right;
merge(Left,[]) ->
    Left;
merge([A|Left], [B|Right]) ->
    if
        A < B ->
            [ A | merge(Left, [B|Right])];
        true ->
            [ B | merge([A|Left], Right) ]
    end.


     

%% test on a big list1
%% erlang1:mergeSort([ rand:uniform(100) || _ <- lists:seq(1,100) ]).
