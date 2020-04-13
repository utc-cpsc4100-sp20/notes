-module(myobj).
-export([new/0, new/1, method/2, method/3]).


%% construct a new value object without or without initial value
new() ->
    new(0).
new (Value) ->
    spawn(fun() -> value_object_func(Value) end).


%% call a method on an object
method(Obj, Method) ->
    Obj ! { self(), Method },
    value_response_recv(Obj).
method(Obj, Method, Param) ->
    Obj ! { self(), Method, Param },
    value_response_recv(Obj).



%% loop repeatedly, maintaining state in parameter variables
value_object_func(Value) ->
    receive
        { Pid, get } ->
            value_response_send(Pid, Value),
            value_object_func(Value);
        { Pid, set, New } ->
            value_response_send(Pid, ok),
            value_object_func(New);
        { Pid, inc } ->
            value_response_send(Pid, ok),
            value_object_func(Value + 1);
        { Pid, dec } ->
            value_response_send(Pid, ok),
            value_object_func(Value -1);
        { Pid, _  } ->
            value_response_send(Pid, unknown),
            value_object_func(Value)
    end.


%% internal functions for making sure sent and received messages are
%% consistent

value_response_send(Caller, Value) ->
    Caller ! { self(), Value }.

value_response_recv(Obj) ->
    receive
        { Obj, Value } ->
            Value
    end.


