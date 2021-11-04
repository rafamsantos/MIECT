load database.mat UJD Users Movies

id = 112;
threshold = 0.6;
genre = MovieGenre.Action;

sim_users = utils.findSimilarUsers(UJD, threshold, id);
[~, i] = min(sim_users(:, 3));
simuserid = sim_users(i, 2);
if ~isempty(simuserid)
    movies_id = setdiff(Users{simuserid}, Users{id});
    idx = 1;
    for id=movies_id'
        if Movies{id, genre} == 1
            movies(idx) = Movies{id, 1};
            idx = idx +1;
        end
    end
    
    if ~isempty(movies)
        fprintf('%s\n', movies);
        return;
    end
end

fprintf('No suggestions founded!\n');

% [rows, ~] = find(SimUsers == id);
% [v, i] = min(SimUsers(rows, 3));
% i = rows(i);
% 
% if SimUsers(i, 1) == id
%     user = SimUsers(i, 2);
% else
%     user = SimUsers(i, 1);
% end
% 
% relatedMovies = cell(1);
% Users{id, 1};
% for i = Users{user, 1}'
%     if Movies{i, int8(MovieGenre.Action)} == 1
%         if any(Users{id, 1}(:) == i)
%             fprintf("%d : '%s'\n", i, Movies{i, 1});
%         end
%     end
% end
%