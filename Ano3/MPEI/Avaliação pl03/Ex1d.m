clc % Clear Command Window

N = 1e5;    % numer of experiences

% state(1)='a', state(2)='m', state(3)='o', state(4)='r', state(5)='.' 
T = [
    0       0.5     0       0.5     0
    0.25    0       1/3     0       0
    0.25    0.5     0       0.5     0
    0.25    0       1/3     0       0
    0.25    0       1/3     0       0
    ];

valid_words = get_validwords('wordlist-preao-20201103.txt');
if isempty(valid_words)
    return;
end

c = categorical(gen_words(T, 1, 5, 'amor', N));
WordMap = containers.Map(categories(c), countcats(c));

n_words = [];

for k=keys(WordMap)
    key = k{1};
    if ismember(key, valid_words)
        n_words(end+1) = WordMap(key);
        fprintf("prob(\'%s\') = %.2f%%\n", key, prob(n_words(end), N));
    end
end

fprintf('probability to generate a valid word: %.2f%%\n', prob(sum(n_words), N));


% Helper function to calculate probability
% Input:
% val   = value
% N     = sample space
% Return:
% p     = probability in percent
function p = prob(val, N)
    p = (val/N)*100;
end

% Reads a file of valid words and put in a cell array
% Input:
%   filename    = file name with the list of words
% Return:
%   valid_words = cell array with the list of words. returns empty if file
%   is empty or doesn't exists
function valid_words = get_validwords(filename)
    valid_words = {};
    
    if ~isfile(filename)
        uiwait(msgbox(sprintf('%s file not found!', filename)));
        return;
    end
    
    file = fopen(filename, 'r');
    valid_words = textscan(file, '%s');
    fclose(file);
    valid_words = valid_words{1, 1};
end

% Generate a cell of words with the transition matrix and a set of letters
% Inputs:
%   T               = state transition matrix
%   fist            = initial state
%   last            = final or absorving state
%   set_of_letters  = string with the set of letters to form a word
%   N               = size of cell
% Return:
%   words           = cell array of reult words
function words = gen_words(T, first, last, set_of_letters, N)
    words = {};
    for i=1:N
        state = crawl(T, randi([ first,last-1]), last);
        state(end) = [];
        words{end+1} = set_of_letters(state);
    end
end

% Random walk on the Markov chain (compact version)
% Inputs:
%   T       = state transition matrix
%   first   = initial state
%   last    = terminal or absorving state
% Return:
%   state   = list of generated states
function state = crawl(T, first, last)
    state = [first];
    
    while (1)
        % Returning the next state
        prob_vec = T(:, state(end));
        n = length(prob_vec);
        states = 1:n;
        % Generate randomly the next state.
        U = rand();
        i = 1 + sum(U > cumsum(prob_vec));
        state(end+1) = states(i);
        if (state(end) == last)
            break;
        end
    end
end
