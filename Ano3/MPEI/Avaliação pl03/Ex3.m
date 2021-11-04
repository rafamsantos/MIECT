clc % Clear Command Window

N = 1e5;    % number of experiences

% state(1)='r', state(2)='o', state(3)='m', state(4)='a', state(5)='.' 
%   'r'     'o'    'm'      'a'   '.'
T = [
    0       0.3     0       0.3    0   % 'r'
    0.3     0       0.3     0.1    0   % 'o'
    0       0.2     0       0.2    0   % 'm'
    0.7     0       0.7     0      0   % 'a'
    0       0.5     0       0.4    0   % '.'
    ];

% Function mapping
filter_wordlist = common('filter_wordlist');
gen_wordsN = common('gen_wordsN');
gen_WordMap = common('gen_WordMap');
get_ValidWords = common('get_ValidWords');
gen_LetterMap = common('gen_LetterMap');
prob = common('prob');

n = input('Word max size (less or equal than 0 for no limit) -> ');
asw = input('Print valid words? [Y/N]: ', 's');
set_of_letters = ['a' 'm' 'o' 'r'];
wordlist = filter_wordlist("wordlist-preao-20201103.txt", set_of_letters);
if isempty(wordlist)
    return;
end

WordMap = gen_WordMap(gen_wordsN(T, 1, length(T), set_of_letters, N, n));
ValidWords = get_ValidWords(WordMap, wordlist, ((asw == 'Y') || (asw == 'y')), N);

fprintf('Number of different words generated %d of %d\n', WordMap.Count, N);
fprintf('Number of valid words generated: %d\n', ValidWords.Count);
valid_values = values(ValidWords);
fprintf('Probability to generate a valid word: %.2f%%\n', prob(sum([valid_values{:}]), N));
LetterMap = gen_LetterMap(ValidWords, set_of_letters);

fprintf("\nProbability and number of words that begins with:\n");
for l=keys(LetterMap)
    l_val = LetterMap(l{1});
    fprintf("P(\'%s') = %.2f%%\tN = %d\n", l{1}, prob(l_val, double(ValidWords.Count)), l_val);
end
