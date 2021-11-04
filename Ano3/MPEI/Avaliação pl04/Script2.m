load Script1
load u.data

opMenu = {' Your Movies',' Get Suggestions',' Search Title',' Exit'};
while true
    choice = displayMenu(opMenu);

    if choice == 1 
        yourMovies(id,dic);

    elseif choice == 2 
        getSuggestion();

    elseif choice == 3
        searchTitle();

    elseif choice == 4 
        fprintf('Program will be exited ... Exited ! \n');
        break;
    else
        fprintf('No suggestion');
            
    end
end

function movies = yourMovies(id,dic) % n é o que é pedido
    for i=1:length()
        if(dic{i,id+1} == 1)
            fprintf('%s\n', dic{i,1})
        end
    end
end

function escolha = displayMenu(options)

    for i = 1:length(options)
        fprintf("%d. %s\n",i,options{i});     
    end

    escolha = 0;

    while ~any(escolha == 1:length(options))
        escolha = inputNumber('Please choose a menu item:');
    end
end

function num = inputNumber(prompt)

    while true
        num = str2double(input(prompt ,'s'));   %converte string num double
        if ~isnan(num)   % se for num a função termina
            break;
        end
    end
end
