% Calculate the minimum value in a list of numbers
% Base case: the minimum value in a list with only one element is the element itself
min([SingleElement], SingleElement).

% Recursive case: compare the head of the list (FirstNumber) with the minimum value in the rest of the list (MinTail)
min([FirstNumber|Tail], Min) :-
    % Recursively find the minimum value in the tail of the list
    min(Tail, MinTail),
    % Determine the minimum value between the head of the list and the minimum value in the tail
    Min is min(FirstNumber, MinTail).

% Calculate the maximum value in a list of numbers
% Base case: the maximum value in a list with only one element is the element itself
max([SingleElement], SingleElement).

% Recursive case: compare the head of the list (FirstNumber) with the maximum value in the rest of the list (MaxTail)
max([FirstNumber|Tail], Max) :-
    % Recursively find the maximum value in the tail of the list
    max(Tail, MaxTail),
    % Determine the maximum value between the head of the list and the maximum value in the tail
    Max is max(FirstNumber, MaxTail).

% Calculate the sum and length of a list of numbers
% Base case: an empty list has a sum of 0 and a length of 0
sum_and_length([], 0, 0).

% Recursive case: calculate the sum and length of the list by adding the head of the list to the sum and length of the tail
sum_and_length([FirstNumber|Tail], Sum, Length) :-
    % Recursively find the sum and length of the tail of the list
    sum_and_length(Tail, TailSum, TailLength),
    % Add the head of the list to the sum of the tail
    Sum is FirstNumber + TailSum,
    % Increment the length of the tail by 1
    Length is TailLength + 1.

% Calculate the average value of a list of numbers
average(List, Average) :-
    % Find the sum and length of the list
    sum_and_length(List, Sum, Length),
    % Ensure the list has at least one element to avoid division by zero
    Length > 0,
    % Calculate the average by dividing the sum by the length
    Average is Sum / Length.

% Calculate the minimum, maximum, and average values of a list of numbers
min_max_avg(List, Min, Max, Avg) :-
    % Calculate the minimum value in the list
    min(List, Min),
    % Calculate the maximum value in the list
    max(List, Max),
    % Calculate the average value in the list
    average(List, Avg).
