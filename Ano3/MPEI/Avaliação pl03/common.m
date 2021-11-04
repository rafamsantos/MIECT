% COMMON
% Input:
%   func_name   = function name
% Return:
%   func        = function handler
function func = common(func_name)
    switch func_name
        case 'crawl'
            func = @crawl;
        case 'crawlN'
            func = @crawlN;
        case 'prob'
            func = @prob;
        case 'gen_word'
            func = @gen_word;
        case 'gen_wordN'
            func = @gen_wordN';
        case 'gen_words'
            func = @gen_words;
        case 'gen_wordsN'
            func = @gen_wordsN;
        case 'gen_WordMap'
            func = @gen_WordMap;
        case 'get_wordlist'
            func = @get_wordlist;
        case 'filter_wordlist'
            func = @filter_wordlist;
        case 'get_ValidWords'
            func = @get_ValidWords;
        case 'gen_LetterMap'
            func = @gen_LetterMap;
        otherwise
            func = @invalid_opt;
    end
end

% INVALID_OPT
% Function to sinalize invalid function name
function invalid_opt(varargin)
    disp("invalid_opt() called!");
end

% PROB
% Helper function to calculate probability
% Input:
%   val = value
%   N   = sample space
% Return:
%   p   = percentage probability
function p = prob(val, N)
    p = (val/N)*100;
end

% GEN_LETTERMAP
%
% Input:
%   ValidWords      = Map of valid words
%   set_of_letters  = string with the set of letters to form a word
% Return:
%   LetterMap       = Map type (char, double)
function LetterMap = gen_LetterMap(ValidWords, set_of_letters)
    LetterMap = containers.Map(num2cell(set_of_letters), zeros(1, length(set_of_letters)));
    
    for k=keys(ValidWords)
        letter = extractBetween(k{1}, 1, 1);
        if isKey(LetterMap, letter)
            LetterMap(letter{1}) = LetterMap(letter{1}) + 1;
        end
    end
end


% FILTER_WORDLIST
% Get the words in file that maches with set_of_letters
% Input:
%   filename        = name of file
%   set_of_letters  = string with the set of letters to form a word
% Return:
%   filtered        = cell array with the filtered words
function filtered = filter_wordlist(filename, set_of_letters)
    wordlist = get_wordlist(filename);
    filtered = {};
    for i=1:length(wordlist)
        if min(ismember(wordlist{i}, set_of_letters))
            filtered{end+1} = wordlist{i};
        end
    end
end

% GET_WORDLIST
% Reads a file of valid words and put in a cell array
% Input:
%   filename = file name with the list of words
% Return:
%   wordlist = cell array with the list of words. returns empty if file
%              is empty or doesn't exists
function wordlist = get_wordlist(filename)
    wordlist = {};
    
    if ~isfile(filename)
        uiwait(msgbox(sprintf('Error: File %s not found!', filename)));
        return;
    end
    
    file = fopen(filename, 'r');
    wordlist = textscan(file, '%s');
    fclose(file);
    wordlist = wordlist{1, 1};
end

% Function to get the valid words from the map of generated words and
% display it's probability, if 'display' parameter is set to true
% Input:
%   WordMap     = Map containing all the unique words and it's occurrence
%   wordlist    = cell array with the valid words
%   display     = logical value to determine if it prints the probability
%   N           = sample space to calculate the probability
% Return:
%   ValidWords  = Map containing the valid words
function ValidWords = get_ValidWords(WordMap, wordlist, display, N)
    ValidWords = containers.Map('keyType', 'char', 'valueType', 'double');
    if class(display) ~= "logical"
        fprintf("\'display\' parameter must be an logical value\n");
        return;
    end
    
    for k=keys(WordMap)
        key = k{1};
        if ismember(key, wordlist)
            ValidWords(key) = WordMap(key);
            if display
                fprintf("P(\'%s') = %.2f%%\n", key, prob(ValidWords(key), N));
            end
        end
    end
end

% GEN_WORDMAP
% Function to map each word with it's number of occurrence in the
% cell array
% Input:
%   words = cell map with 'strings'
% Return:
%   M     = map (char, double)
function M = gen_WordMap(words_cell_arr)
    if class(words_cell_arr) ~= "cell"
        return;
    end
    
    cat_arr = categorical(words_cell_arr);
    M = containers.Map(categories(cat_arr), countcats(cat_arr));
end

% GEN_WORDSN
% Generate a cell of words with the transition matrix and a set of letters
% with n number of characters. If n <= 0, then it has no limit
% Inputs:
%   T               = state transition matrix
%   fist            = initial state
%   last            = final or absorving state
%   set_of_letters  = string with the set of letters to form a word
%   N               = size of cell
%   n               = max size for word
% Return:
%   words           = cell array of random genetated words
function words = gen_wordsN(T, first, last, set_of_letters, N, n)
    words = cell(N, 1);
    
    for i=1:N
        words{i} = gen_wordN(T, randi([first last-1]), last, set_of_letters, n);
    end
end

% GEN_WORDS
% Generate a cell of words with the transition matrix and a set of letters
% Inputs:
%   T               = state transition matrix
%   first           = initial state
%   last            = final or absorving state
%   set_of_letters  = string with the set of letters to form a word
%   N               = sample space
% Return:
%   words           = cell array of reult words
function words = gen_words(T, first, last, set_of_letters, N)
    words = cell(N, 1);
    
    for i=1:N
        words{i} = gen_word(T, randi([ first,last-1]), last, set_of_letters);
    end
end

% GEN_WORDN
% Generate a random word with a max size using the transition matrix,
% first state and last state
% Inputs:
%   T               = state transition matrix
%   fist            = initial state
%   last            = final or absorving state
%   set_of_letters  = string with the set of letters to form a word
%   n               = max length for a word
% Return:
%   word            = random generated word
function word = gen_wordN(T, first, last, set_of_letters, n)
    state = crawlN(T, first, last, n);
    if (state(end) == last)
        state(end) = [];
    end
    word = set_of_letters(state);
end

% GEN_WORD
% Generate a word with the transition matrix and a set_of_letters
% Inputs:
%   T               = state transition matrix
%   first           = initial state
%   last            = final or absorving state
%   set_of_letters  = string with the set of letters to form a word
% Return:
%   word            = word randomly generated
function word = gen_word(T, first, last, set_of_letters)
    state = crawl(T, first, last);
    state(end) = [];
    word = set_of_letters(state);
end

% CRAWLN
% 
% Inputs:
%   T           = state transition matrix
%   first       = initial state
%   last        = terminal or absorving state
%   max_size    = max word size
% Return:
%   state       = list of generated states
function state = crawlN(T, first, last, n)
    state = [first];
    if first >= last
        return;
    end
    
    while ~(n == 1)
        state(end+1) = next_state(T, state(end));
        if (state(end) == last) || (~(n <= 0) && (length(state) >= n))
            break;
        end
    end
end

% CRAWL
% Random walk on the Markov chain.
% Inputs:
%   T     = state transition matrix
%   first = initial state
%   last  = terminal or absorving state
% Return:
%   state = set of states 
function state = crawl(T, first, last)
    state = [first];
    if first >= last
        return;
    end
    
    while (true)
        state(end+1) = next_state(T, state(end));
        if (state(end) == last)
            break;
        end
    end
    
end

% Returning the next state.
% Inputs:
%   T           = state transition matrix
%   curr_state  = current state
% Return:
%   next        = the next state
function next = next_state(T, curr_state)
    probvec = T(:, curr_state);
    n = length(probvec);
    next = discrete_rand(1:n, probvec);
end

% Generate randomly the next state.
% Inputs:
%   states  = vector with state values
%   probvec = probability vector
% Return:
%   state   = random generated state
function state = discrete_rand(states, probvec)
    U = rand();
    i = 1 + sum(U > cumsum(probvec));
    state = states(i);
end