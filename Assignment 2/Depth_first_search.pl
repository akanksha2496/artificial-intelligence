%%Read CSV file having 3 columns sorce city,destination city, their distance
%% as per present in the given road distance data set.
checkCsv:-csv_read_file('C:/Users/akanksha/Desktop/road_data.csv', Rows,[functor(cost), arity(3)]),maplist(assert, Rows),initialise.






%%base case if we reach to goal node from the start node. then it will
%%print the output as path from  source to destination and total cost for the same.
dfs_recursive(Goal, Goal, L, V, C):-nl, write("Overall path from starting source to destination: "),write(" "),write(Goal),write(" "),write(L),nl,
                                     write(" total cost for that is : "),write(C).

%% this will recursively call for backtrack so that once it will not found 
%% the goal city it will look for the next path after backtrack.
dfs_recursive(Start, Goal, L, V, C):-cost( Start , Next , M ), not(member(Next, L)), not(member(Next, V)),
append(L,[Next],R), append(V,[Next],T),K is M+C ,dfs_recursive(Next, Goal, R, T, K).


%%here it initialise which started from checkCsv call.
initialise:-read(Start), read(Goal), assert(goalto(Goal)),write("we are start to find from "),write(Start),write(" to "),write(Goal),nl,nl,dfs_recursive(Start, Goal, [Start],[Start], 0).

