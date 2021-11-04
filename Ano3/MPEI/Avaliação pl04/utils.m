classdef utils
    % UTILS utility class
    
    methods (Static = true)
        % Algo utils
        
        function similar_users = findSimilarUsers(UJD, threshold, id)
            % FINDSIMILARUSERS
            similarity = utils.Similarity(UJD, threshold);
            [rows, ~] = find(similarity == id);
            similar_users = similarity(rows, :, :);
            
            % fix order
            for i=1:length(similar_users)
                if similar_users(i, 2) == id
                    similar_users(i, :) = [similar_users(i, 2) ...
                        similar_users(i, 1) similar_users(i, 3)];
                end
            end
        end
        
        function similarity = Similarity(JD, threshold)
            % SIMILARITY
            n = length(JD);
            similarity = zeros(1, 3);
            idx = 1;
            for i=1:n
                for j=i+1:n
                    if JD(i, j) <= threshold
                        similarity(idx, :) = [i j JD(i, j)];
                        idx = idx + 1;
                    end
                end
            end
        end

        function JD = JaccardDistance(mhValues)
            % JACCARDDISTANCE
            [n, k] = size(mhValues);
            JD = zeros(n);
            for i=1:n
                for j=i+1:n
                    JD(i, j) = sum(mhValues(i, :) ~= mhValues(j, :))/k;
                end
            end
        end
        
        function MHValues = MinHash(collection, K)
            % MINHASH
            n = length(collection);
            MHValues = Inf(n, K);

            for i=1:n
                subCollection = collection{i, 1};
                for j=1:length(subCollection)
                    key = char(subCollection(j));
                    MHValues(i, :) = min([MHValues(i, :); utils.Hash(key, K)]);
                end
            end
        end

        function hashes = Hash(key, K)
            % HASH
            hashes = zeros(1, K);
            for i=1:K
                key = [key num2str(i)];
                hashes(i) = DJB31MA(key, 127);
            end
        end
    end
    
    methods (Static = true)
        % Database util functions
        function createDatabase(dbfilename, K)
            % CREATEDATABASE
            
            if isfile(dbfilename)
                return;
            end
            fprintf('databse.mat not found, creating database...\n');
                
            Users = utils.loadUsers(utils.getFileDialog('u.data', ...
                    'Select User Data File'));
            Movies = readcell(utils.getFileDialog('u_item.txt', ...
                    'Select Movies Data File'));
                
            UJD = utils.JaccardDistance(utils.MinHash(Users, K));
            %MJD = utils.JaccardDistance(utils.MinHash(Movies, K));
              
            save(dbfilename, Users, Movies, UJD);
        end
        
        function Users = loadUsers(filename)
            % LOADUSERSFROMFILE
            filedata = load(filename);
            filedata = filedata(1:end, 1:2);
            
            unique_users = unique(filedata(:, 1));
            n = length(unique_users);
            
            Users = cell(n, 1);   
            for i=1:n
                for j=find(filedata(:, 1) == unique_users(i))
                    Users{i, 1} = [Users{i, 1} filedata(j, 2)];
                end
            end
        end
        
        function filepath = getFileDialog(filter, title)
            [baseName, folder] = uigetfile(filter, title, ...
                'MultiSelect', 'off');
            filepath = fullfile(folder, baseName);
        end
    end
end