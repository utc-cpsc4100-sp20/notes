-module(parallel).
-compile(export_all).


%% spawn a process executing this function, and it will loop repeatedly
%% printing out a message whenever a message is received, until a message
%% simply containing the 'quit' atom is received

%% 2> Pid=spawn(parallel, hello_server, []).
%% <0.86.0>
%% 3> Pid !hello.
%% got a message: hello
%% hello
%% 4> Pid ! [1,2,3].
%% got a message: [1,2,3]
%% [1,2,3]
%% 5> 
%% 5> Pid ! quit.
%% ending loopquit


hello_server() ->
    receive  % use  pattern matching to process mailbox
        quit ->
            io:format("ending loop");
        Msg ->
            io:format("got a message: ~w~n", [Msg]),
            hello_server()
    end.

            
%% spawn N  processes and wait for their responses

launch(N) ->
    Caller = self(),
    Pids = lists:map(fun(X)->spawn(fun() -> respond_to(Caller, X) end) end,
                     lists:seq(1, N)),
    wait_for(Pids).


respond_to(Caller, N) ->
    io:format("spawned ~w(~w), about to reply to ~w~n", [N, self(), Caller]),
    timer:sleep(100 * rand:uniform(10)),
    Caller ! {self(), N}.


wait_for([]) -> done;
wait_for(Pids) ->
    receive
        { P, Num } ->
            io:format("got a response from ~w/~w~n", [ P, Num ]),
            wait_for(Pids -- [P])               %list subtraction -- cool!
    end.

