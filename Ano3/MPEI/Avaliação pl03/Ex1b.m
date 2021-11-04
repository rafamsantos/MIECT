N = 1e5;    % numer of experiences

% state(1)='a', state(2)='m', state(3)='o', state(4)='r', state(5)='.' 
T = [
    0       0.5     0       0.5     0
    0.25    0       1/3     0       0
    0.25    0.5     0       0.5     0
    0.25    0       1/3     0       0
    0.25    0       1/3     0       0
    ];

last = 5;
set_of_letters = 'amor';
list = {};

for i=1:N
    list{end+1} = gen_word(T, randi(last-1), last, set_of_letters);
end
fprintf('Number of different words: %d\n\n', length(unique(list)));

c = categorical(list);
Map = containers.Map(categories(c), countcats(c));
max_values = {};
n = 5; % number of max words

% DEBUG SECTION
%for k=keys(Map)
%    key = k{1};
%    fprintf('%s: %d\n', key, Map(key));
%end
%fprintf('\n');
% END DEBUG SECTION

for i=1:n
    max_key = find_maxkey(Map);
    fprintf("%d) prob(\'%s\') = %.2f%%\n", i, max_key, prob(Map(max_key), N));
    remove(Map, max_key);
end

% Helper function to calculate probability
% Input:
% val - value
% N - sample space
function p = prob(val, N)
    p = (val/N)*100;
end

% Find the max value of M and return it key
% Input:
% M - Map(char, double)
function max_key = find_maxkey(M)
    max = -1;
    for k=keys(M)
        value = M(k{1});
        if value > max
            max = value;
            max_key = k{1};
        end
    end
end

% Generate a word with the transition matrix and a set_of_letters
% Inputs:
% T - state transition matrix
% fist - initial state
% last - final or absorving state
% set_of_letters - string with the set of letters to form a word
function word = gen_word(T, first, last, set_of_letters)
    state = crawl(T, first, last);
    state(end) = [];
    word = set_of_letters(state);
end

% Random walk on the Markov chain
% Inputs:
% T - state transition matrix
% first - initial state
% last - terminal or absorving state
function state = crawl(T, first, last)
    state = [first];
    
    while (1)
        state(end+1) = nextState(T, state(end));
        if (state(end) == last)
            break;
        end
    end
end

% Returning the next state
% Inputs:
% T - state transition matrix
% currentState - current state
function state = nextState(T, currentState)
    probVector = T(:, currentState);
    n = length(probVector);
    state = discreteRand(1:n, probVector);
end

% Generate randomly the next state.
% Inputs:
% states = vector with state values
% probVector = probability vector
function state = discreteRand(states, probVector)
    U=rand();
    i = 1 + sum(U > cumsum(probVector));
    state = states(i);
end
