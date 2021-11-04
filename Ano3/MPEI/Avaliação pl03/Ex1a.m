% state(1)= r , state(2) = o , %state(3)=m , state(4)= a, state(5)='.'

H = [ 0  , 1/3 ,  0  , 1/4 , 0;
     1/2 ,  0  , 1/2 , 1/4 , 0;
      0  , 1/3 ,  0  , 1/4 , 0;
     1/2 ,  0  , 1/2 ,  0  , 0;
      0  , 1/3 ,  0  , 1/4 , 0]
  
first = randi(4);
last = 5 ;
set_of_letters = 'roma';
state = crawl(H, first , last); 
state(end) = []                     % retira o state(5)
word = set_of_letters(state)        % atribui letra a um estado
 
% Random walk on the Markov chain
% Inputs:
% H - state transition matrix
% first - initial state
% last - terminal or absorving state

function state = crawl(H, first, last)
% the sequence of states will be saved in the vector "state"
% initially, the vector contains only the initial state:
    state = [first];
% keep moving from state to state until state "last" is reached:
    while (1)
        state(end+1) = nextState(H, state(end));
        if (state(end) == last)
        break;
        end
    end
end
% Returning the next state
% Inputs:
% H - state transition matrix
% currentState - current state
function state = nextState(H, currentState)
% find the probabilities of reaching all states starting at the current one:
    probVector = H(:,currentState); % probVector is a row vector
    n = length(probVector); %n is the number of states
    % generate the next state randomly according to probabilities probVector:
    state = discrete_rnd(1:n, probVector);
end
% Generate randomly the next state.
% Inputs:
% states = vector with state values
% probVector = probability vector
function state = discrete_rnd(states, probVector)
    U=rand();
    i = 1 + sum(U > cumsum(probVector));
    state= states(i);
end