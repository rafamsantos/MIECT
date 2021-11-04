clc % Clear Command Window

% state(1)='a', state(2)='m', state(3)='o', state(4)='r', state(5)='.' 
%   'a'     'm'     'o'     'r'    '.'
T = [
    0       0.7     0       0.7     0   % 'a'
    0.20    0       0.2     0       0   % 'm'
    0.10    0.3     0       0.3     0   % 'o'
    0.30    0       0.3     0       0   % 'r'
    0.40    0       0.5     0       0   % '.'
    ];

N = 1e5  ;

valid_words = get_wordlist('wordlist-preao-20201103.txt');
if isempty(valid_words)
    return;
end

n = input('Word max size (0 for no limit) -> ');
WordMap = gen_WordMap(gen_words(T, 1, length(T), ['a' 'm' 'o' 'r'], N, n));

word_qnt = [];
for k=keys(WordMap)
    key = k{1};
    if ismember(key, valid_words)
        word_qnt(end+1) = WordMap(key);
        fprintf("P(\'%s\') = %.2f%%\n", key, prob(word_qnt(end), N));
    end
end
fprintf('probability to generate a valid word: %.2f%%\n', prob(sum(word_qnt), N));


% Helper function to calculate probability
% Input:
% val   = value
% N     = sample space
% Return:
% p     = probability in percent
function p = prob(val, N)
    p = (val/N)*100;
end

% Function to generate the map with the unique set of words and the qnt. it
% appears
% Input:
%   words_cell_arr  = cell array of words
% return:
%   M               = map type (char, double)
function M = gen_WordMap(words_cell_arr)
    if class(words_cell_arr) ~= "cell"
        return;
    end
    cat_arr = categorical(words_cell_arr);
    M = containers.Map(categories(cat_arr), countcats(cat_arr));
end

% Reads a file of valid words and put in a cell array
% Input:
%   filename    = file name with the list of words
% Return:
%   valid_words = cell array with the list of words. returns empty if file
%   is empty or doesn't exists
function wordlist = get_wordlist(filename)
    wordlist = {};
    
    if ~isfile(filename)
        uiwait(msgbox(sprintf('%s file not found!', filename)));
        return;
    end
    
    file = fopen(filename, 'r');
    wordlist = textscan(file, '%s');
    fclose(file);
    wordlist = wordlist{1, 1};
end

% Generate a cell of words with the transition matrix and a set of letters
% Inputs:
%   T               = state transition matrix
%   fist            = initial state
%   last            = final or absorving state
%   set_of_letters  = string with the set of letters to form a word
%   N               = size of cell
%   n               = max size for word
% Return:
%   words           = cell array of random genetated words
function words = gen_words(T, first, last, set_of_letters, N, n)
    words = {};
    for i=1:N
        words{end+1} = gen_word(T, randi([first last-1]), last, set_of_letters, n);
    end
end

% Generate a word with the transition matrix and a set_of_letters
% Inputs:
%   T               = state transition matrix
%   fist            = initial state
%   last            = final or absorving state
%   set_of_letters  = string with the set of letters to form a word
%   n               = max length for a word
% Return:
%   word            = random generated word
function word = gen_word(T, first, last, set_of_letters, n)
    state = crawl(T, first, last, n);
    if (state(end) == last)
        state(end) = [];
    end
    word = set_of_letters(state);
end

% Random walk on the Markov chain (compact version)
% Inputs:
%   T           = state transition matrix
%   first       = initial state
%   last        = terminal or absorving state
%   max_size    = max word size
% Return:
%   state       = list of generated states
function state = crawl(T, first, last, max_size)
    state = [first];
    
    while ~(max_size == 1)
        % get the column of the first state
        prob_vec = T(:, state(end));
        % get the number of states
        n = length(prob_vec);
        states = 1:n;
        % Generate randomly the next state.
        U = rand();
        i = 1 + sum(U > cumsum(prob_vec));
        state(end+1) = states(i);
        if (state(end) == last) || (~(max_size <= 0) && (length(state) >= max_size))
            break;
        end
    end
end