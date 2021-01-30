classdef Menu
    % MENU   Menu handler class
    %   [...]
    
    properties (SetAccess = private, Transient = true)
        user_id int16 {mustBeGreaterThan(user_id, 0), mustBeLessThan(user_id, 944)}
        menu_options = {'Your Movies', 'Get Suggestion', 'Search Title', 'Exit'}
        K int8 = 150
        dbfilename = 'database.mat'
    end
    
    methods (Access = public)
        function obj = Menu(id)
            % MENU   Construct an instance of this class
            %   temp.
            obj.user_id = id;
            utils.createDatabase(obj.dbfilename, obj.K);
        end
        function run(obj)
            % RUN   Run program loop
            %   Handles the menu loop, options and text
            
            while true
                fprintf('\n------------ MENU ------------\n');
                for i=1:length(obj.menu_options)
                    fprintf('%d - %s\n', i, obj.menu_options{i});
                end
                opt = input('Option -> ');
                fprintf('------------------------------\n\n');
                
                switch opt
                    case 1
                        obj.movies();
                    case 2
                        obj.suggestions();
                    case 3
                        obj.search();
                    case 4
                        fprintf('Quitting...\n');
                        break;
                    otherwise
                        fprintf('Invalid option!\n');
                end
            end
            fprintf('\n');
        end
    end
    
    methods (Access = private)
        function movies(obj)
            % MOVIES list the movies that the user.
 
            fprintf('Filmes vistos pelo utilizador %d:\n', obj.user_id);
            db = load(obj.dbfilename, 'Users', 'Movies');
            for i = db.Users{obj.user_id, 1}'
                fprintf("%d : '%s'\n", i, db.Movies{i, 1});
            end
        end
        
        function suggestions(obj)
            % SUGGESTIONS list the suggestions based on user previous
            % movies.
            
            enumValues = enumeration('MovieGenre');
            for i=1:length(enumValues)
                fprintf('%d - %s\n', i, enumValues(i));
            end
            genre = enumValues(input('Option -> '));
            
            threshold = 0.6;
            db = load(obj.dbfilename, 'UJD', 'Users', 'Movies');

            sim_users = utils.findSimilarUsers(db.UJD, threshold, obj.user_id);
            [~, i] = min(sim_users(:, 3));
            simuserid = sim_users(i, 2);
            
            if ~isempty(simuserid)
                movies_id = setdiff(db.Users{simuserid}, db.Users{obj.user_id});
                
                movies = cell(1);
                idx = 1;
                for mid=movies_id'
                    if db.Movies{mid, genre} == 1
                        movies{idx} = db.Movies{mid, 1};
                        idx = idx + 1;
                    end
                end
                
                if ~isempty(movies)
                    fprintf("Title: '%s'\n", movies{:});
                    return;
                end
            end
            
            fprintf('No suggestions found!\n');
        end
        
        function search(obj)
            % SEARCH search movies based on user choice.
            
            db = load('database.mat', 'Movies');
            k = 3;
            
            title = input('Search: ', 's');
            
            SMovies = cell(1);
            SMovies{1, 1} = utils.Shingles(lower(title), k);
            for i=2:length(db.Movies)+1
                SMovies{i, 1} = utils.Shingles(lower(db.Movies{i-1, 1}), k);
            end
            
            MJD = utils.JaccardDistance(utils.MinHash(SMovies, obj.K));
            movies = sort(utils.Similarity(MJD(1, :), 0.99), 'ascend');
            [rows, ~] = size(movies);
            
            for i=1:min([rows 5])
                fprintf('%.2f: %s\n', movies(i, 3), db.Movies{movies(i, 2)-1, 1});
            end
        end
    end
end