clc

[script_path, ~, ~] = fileparts(mfilename('fullpath'));
if strcmp(pwd, script_path)
    Menu(input('User ID (1 - 943): ')).run();
else
    error('Current directory must be the same as the script directory');
end

clear script_path