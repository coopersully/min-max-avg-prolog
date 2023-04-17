% Base case for min
min([H], H).
% Recursive case for min
min([H|T], Min) :-
    min(T, Tmin),
    Min is min(H, Tmin).

% Base case for max
max([H], H).
% Recursive case for max
max([H|T], Max) :-
    max(T, Tmax),
    Max is max(H, Tmax).

% Calculate the sum and length of a list
sum_and_length([], 0, 0).
sum_and_length([H|T], Sum, Len) :-
    sum_and_length(T, SumT, LenT),
    Sum is H + SumT,
    Len is LenT + 1.

% Calculate the average
average(List, Avg) :-
    sum_and_length(List, Sum, Len),
    Len > 0,
    Avg is Sum / Len.

% Calculate min, max, and average
min_max_avg(List, Min, Max, Avg) :-
    min(List, Min),
    max(List, Max),
    average(List, Avg).
