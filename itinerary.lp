% For each destination E, some outgoing edge from the start node should be selected
:- start(S), end(E), not selected(S,_) .

% No edge pointing to the start node should be selected
:- start(S), selected(_,S) .

% If an edge points to the end node, then it may be (or not be) selected for reaching it
0{selected(X,E)}1 :- edge(X,E,_), end(E) .

% If an outgoing edge from Y has been selected for reaching E, then an incoming edge may be (or not be) selected for reaching E
0{selected(X,Y)}1 :- edge(X,Y,_), selected(Y,_) .

% Only edge is selected going into a node and coming out of the node
:- node(X,Z), {selected(X,_)} > 1 .
:- node(X,Z), {selected(_,X)} > 1 .

selectedNodes(X,Z) :- selected(X,_), node(X,Z) .
selectedNodes(X,Z) :- selected(_,X), node(X,Z) .
numDest(N):- {selectedNodes(X,Z)} == N. % count nodes


% Compute the cost for reaching E
% Time spent(S) = 20 min per Dest * Num Of Dest(N) + Travel time (C)
cost(S) :- numDest(N), C=#sum{W, X : edge(X,Y,W), selected(X,Y)}, S = 20 * N + C.
money(M) :- M=#sum{Z, X : selectedNodes(X,Z)}.

#maximize{N : numDest(N)} .
% #minimize{C : cost(C)} .

#show selected/2 .
#show numDest/1 .
#show money/1 .
#show cost/1 .