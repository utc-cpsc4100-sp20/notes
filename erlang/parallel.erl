-module(parallel).
-compile(export_all).

hello_server() ->
    receive
        quit ->
            io:format("ending loop");
        Msg ->
            io:format("got a message: ~w~n", [Msg]),
            hello_server()
    end.

            
respond_to(Caller, N) ->
    io:format("spawned ~w(~w), about to reply to ~w~n", [N, self(), Caller]),
    timer:sleep(100 * rand:uniform(10)),
    Caller ! {self(), N}.

launch(N) ->
    Caller = self(),
    Pids = lists:map(fun(X)->spawn(fun() -> respond_to(Caller, X) end) end,
                     lists:seq(1, N)),
    wait_for(Pids).

wait_for([]) -> done;
wait_for(Pids) ->
    receive
        { P, Num } ->
            io:format("got a response from ~w/~w~n", [ P, Num ]),
            wait_for(Pids -- [P])
    end.
