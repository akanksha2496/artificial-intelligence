initial :-
  write('what should I do next after B.tech CSE?'), nl,
  write('To answer, input the number shown next to each answer, followed by a dot (.)'), nl, nl,
  reset_answers,
  career_options(Career).

career_options(Career) :-
  career(Career), !.

:- dynamic(runtime_input/2).



reset_answers :-
  retract(runtime_input(_, _)),
  fail.

reset_answers.

% fields
feild(heigher_studies,K):-
 heigher_studies(yes),
 marks(yes),
 logical_thinking(yes),
 problem_solving(yes),
 aptitude(yes),
 project_oriented(yes),
 research(yes),
 code(yes),
 buisness(no),
 K='it seems you are having intrest in technical feild with \c
 some intrest in projects and research area.'.

feild(heigher_studies,K):-
 heigher_studies(yes),
 buisness(yes),
 K='it seems like you are having logical thinking with problem solving approach \c
 but not having that much interest in techical area.'.  


feild(job,K):-
 problem_solving(yes),
 aptitude(yes),
 logical_thinking(yes),
 management_skill(yes),
 K='it seems like you are having logical thinking with problem solving approach \c
 but need to a job to earn money so you can plan something good for you furthur.'.  

 
feild(job,K):-
 problem_solving(yes),
 aptitude(yes),
 logical_thinking(yes),
 project_oriented(no),
 buisness(no),
 management_skill(yes),
 serving_people(yes),
 K='it seems like you are having logical thinking with problem solving approach \c
 and you like to serve people and helping them as a duty.'.  

feild(enterpreneur,K):-
 buisness(yes),
 intreact(yes),
 idea(can),
 leadership(yes),
 risk(can),
 K='You have qulities of a a leadership also able to handle risks will  direct you towrard\c
 strong mentality person and can eun an organization.'.
 
 
 
% Career

% heigher studies
career(MS):-
 feild(heigher_studies,K),
 english(yes),
 adaptibility(yes),
 financial(strong),
 write(K),nl,
 write('Recommendation for Master Of Science(MS)'), nl,
 write(' you have to crack the GRE as your btech percentage are fit.'), nl,
 write('following branches you can opt after that: '), nl,
 write('Artificial Intelligence '), nl,
 write(' Machnine learning '), nl,
 write(' Robotics'), nl,
 write(' Cyber security'), nl,
 write(' human computer intreacrion'),nl,nl,nl,
 write('ALL THE BEST'). 

career(Mtech):-
 feild(heigher_studies,K),
 financial(medium),
 intreact(no),
 write(K), nl,
 write('Recommendation for Master of technology(M.tech)'), nl,
 write(' As you have a technical taste so M.tech is perfect for you'),nl,
 write(' you just have yto crack the gate exam with good percentile'),nl,
 write(' also non-gate admission available in IIIT-D.'), nl,
 write(' you can choose following bracnches in M.tech '), nl,
 write('Artificial intelligence '), nl,
 write(' data engineering '), nl,
 write(' information security '), nl,
 write(' Mobile Computing '), nl,
 write(' without specilization as according to you furthur '),nl,nl,nl,
 write('ALL THE BEST').

career(MBA):-
 feild(heigher_studies,K),
 financial(medium),
 management_skill(yes),
 intreact(yes),
 analytical(yes),
 write(K),nl,
 write('Recommendation for Master of Buisness Administration(MBA)'), nl,
 write('You have to crack CAT with good percentile and can do buisness after that,'), nl,
 write(' following subject can be opt in MBA'), nl,
 write('Human Resource Management'), nl,
 write('Customer Relationship Management'),nl,
 write('Operation Management'),nl,
 write('Marketing and many more subjects will build your'),nl,nl,nl,
 write('ALL THE BEST').

career(IT):-
 feild(job,K),
 financial(weak),
 write(K),nl,
 write('Recommendation for job in IT industry as developer or other things you are fit for job(IT Industry)'),
 write('so as per your intrest you can choose any of the following feild in IT industry'), nl,
 write(' Web developer '), nl,
 write(' software developer '), nl,
 write(' infomation security specialist '), nl,
 write(' database administrator '), nl,
 write(' cloud computing engineer'), nl,
 write(' networking adminstrator '), nl,
 write(' quality assurance '), nl,
 write(' application devceloper '), nl,
 write(' backend developer'), nl,
 write(' data engineer'),nl,nl,nl,
 write('ALL THE BEST').

career(defence):-
 feild(job,K),
 financial(medium),
 physical(very_strong),
 adaptibility(yes),
 leadership(yes),
 write(K), nl,
 write('Recommandation to get job in Defense as you are mentally and physically strong'), nl, 
 write('so you can choose following field in defens. And for that you have to crack SSB,NDA etc exam'), nl,
 write(' indian army '), nl,
 write(' indian air force'), nl,
 write(' indian navy'),nl,nl,nl,
 write('ALL THE BEST').

career(government):-
 feild(job,K),
 financial(medium),
 physical(fit),
 write(K),nl,
 write('Recommendation for a government job(public sectors)'), nl,
 write(' PSU after cracking gate exam with good score'), nl,
 write(' ISRO[Indian space research organization] '), nl,
 write(' IOCL[Indian oil coorporation unit]'), nl,
 write(' DRDO[Defense research and development organization] '), nl,
 write(' BARC[Bhabha atomic research center] '), nl,
 write(' Power Grid'), nl,
 write(' ONGC[Oil and natural gas corporation] '), nl,
 write(' Public service commission(PSC) exam have to crack for Assistance Professor,employment officer, forest officer etc.'),nl,nl,nl, 
 write('ALL THE BEST').

career(enterpreneur):-
 feild(enterpreneur,K),
 financial(strong),
 write(K),nl,
 write('Recommondation for Enterpreneur'), nl,
 write(' consultant '), nl,
 write(' event palnning '), nl,
 write(' freelencer '), nl,
 write(' blog consulting '), nl,
 write(' computer trainee '), nl,
 write(' data entry '), nl,
 write(' web designer '), nl,
 write(' home tutors '),nl,nl,nl,
 write('ALL THE BEST').

career(hobby):-
 hobbies(yes),
 write(' it seems that you can make your hobbies as intrest so you'),nl,
 write('can choose following as your career -'),
 write(' photographer '), nl, 
 write(' interior decorator'), nl,
 write(' travelling agent '), nl,
 write(' wedding planner'), nl,
 write(' event planner '), nl,nl,nl,
 write('ALL THE BEST').

 
 
career(other):-
 write(' it seems you don not want to make your hobbies as your carieer too, so'),nl,
 write(' you can become home tutors  as you did B.tech so can teach home tutions  , Or'), nl,
 write(' you should think again about yourself , so take some time and think whether you want '), nl,
 write(' to do something right now or improve youself on B.tech subjects'),nl,nl,nl,
  write('ALL THE BEST').

% Question
inquiry(hobbies):-
 write(' would you like to make your hobby as a carrier? '), nl.


inquiry(idea):-
 write('Can you able to think of an innovation or having thought of new ideas ?'), nl.

inquiry(risk):-
 write('Are you mentally strong to take risk ?'), nl.

inquiry(leadership):-
 write('did you have leadership quality?'), nl.

inquiry(heigher_studies):-
 write('Are you intrested in heigher studies?'), nl.

inquiry(marks):-
 write('Is your marks greater then 80 percentage in B.tech?'), nl.

inquiry(logical_thinking):-
 write('Are you a logical thinker?'), nl.

inquiry(problem_solving):-
 write('did you have problem solving approach?'), nl.

inquiry(aptitude):-
 write('Are you good in aptitude?'), nl.

inquiry(research):-
 write('Are you intrested in research?'), nl.

inquiry(code):-
 write('Are you intrested in coding?'), nl.

inquiry(project_oriented):-
 write('Are you project oriented and want to make more projects?'), nl.


inquiry(english):-
 write('Did you have good catch in english grammer ?'), nl.

inquiry(adaptibility):-
 write('Can you able to adapt the changes around you in terms of cultures and peoples ?'), nl.

inquiry(financial):-
 write('Whats your financial condition ?'), nl.

inquiry(buisness):-
 write('Are you intrested in buisness ?'), nl.

inquiry(management_skill):-
 write('Hows your management skill , can you able to manage and organise the things properly ?'), nl.

inquiry(intreact):-
 write('Are you able to intreact with people or deal with peoples ?'), nl.


inquiry(analytical):-
 write('Are you able analyse the things and have a sense keen observation ?'), nl.

inquiry(serving_people):-
 write('Would you like to help common people and feel good to serve them as your duty?'), nl.

inquiry(physical):-
 write('Are you phyically fit and have kind a sports-man spirit ?'), nl.
% Answers


reaction(fit):-
 write('Fit.').
reaction(very_strong):-
 write('Very Strong.').
reaction(yes):-
 write('Yes.').
reaction(no) :-
  write('No.').
reaction(strong):-
 write('Strong.').
reaction(medium) :-
  write('Medium.').
reaction(weak) :-
  write('Weak.').
reaction(can) :-
  write('Can.').
reaction(can_not) :-
  write('Can not.').


% reaction options for all the questions

risk(Reaction) :-
  runtime_input(risk, Reaction).
risk(Reaction) :-
  \+ runtime_input(risk, _),
  interrogate(risk, Reaction, [can, can_not]).

hobbies(Reaction) :-
  runtime_input(hobbies, Reaction).
hobbies(Reaction) :-
  \+ runtime_input(hobbies, _),
  interrogate(hobbies, Reaction, [yes, no]).

idea(Reaction) :-
  runtime_input(idea, Reaction).
idea(Reaction) :-
  \+ runtime_input(idea, _),
  interrogate(idea, Reaction, [can, can_not]).


leadership(Reaction) :-
  runtime_input(leadership, Reaction).
leadership(Reaction) :-
  \+ runtime_input(leadership, _),
  interrogate(leadership, Reaction, [yes, no]).

physical(Reaction) :-
  runtime_input(physical, Reaction).
physical(Reaction) :-
  \+ runtime_input(physical, _),
  interrogate(physical, Reaction, [fit, very_strong]).

heigher_studies(Reaction) :-
  runtime_input(heigher_studies, Reaction).
heigher_studies(Reaction) :-
  \+ runtime_input(heigher_studies, _),
  interrogate(heigher_studies, Reaction, [yes, no]).

marks(Reaction) :-
  runtime_input(marks, Reaction).
marks(Reaction) :-
  \+ runtime_input(marks, _),
  interrogate(marks, Reaction, [yes, no]).

logical_thinking(Reaction) :-
  runtime_input(logical_thinking, Reaction).
logical_thinking(Reaction) :-
  \+ runtime_input(logical_thinking, _),
  interrogate(logical_thinking, Reaction, [yes, no]).

problem_solving(Reaction) :-
  runtime_input(problem_solving, Reaction).
problem_solving(Reaction) :-
  \+ runtime_input(problem_solving, _),
  interrogate(problem_solving, Reaction, [yes, no]).


aptitude(Reaction) :-
  runtime_input(aptitude, Reaction).
aptitude(Reaction) :-
  \+ runtime_input(aptitude, _),
  interrogate(aptitude, Reaction, [yes, no]).

research(Reaction) :-
  runtime_input(research, Reaction).
research(Reaction) :-
  \+ runtime_input(research, _),
  interrogate(research, Reaction, [yes, no]).

 
code(Reaction) :-
  runtime_input(code, Reaction).
code(Reaction) :-
  \+ runtime_input(code, _),
  interrogate(code, Reaction, [yes, no]).

project_oriented(Reaction) :-
  runtime_input(project_oriented, Reaction).
project_oriented(Reaction) :-
  \+ runtime_input(project_oriented, _),
  interrogate(project_oriented, Reaction, [yes, no]).

adaptibility(Reaction) :-
  runtime_input(adaptibility, Reaction).
adaptibility(Reaction) :-
  \+ runtime_input(adaptibility, _),
  interrogate(adaptibility, Reaction, [yes, no]).


financial(Reaction) :-
  runtime_input(financial, Reaction).
financial(Reaction) :-
  \+ runtime_input(financial, _),
  interrogate(financial, Reaction, [strong, medium, weak]).


buisness(Reaction) :-
  runtime_input(buisness, Reaction).
buisness(Reaction) :-
  \+ runtime_input(buisness, _),
  interrogate(buisness, Reaction, [yes, no]).

english(Reaction) :-
  runtime_input(english, Reaction).
english(Reaction) :-
  \+ runtime_input(english, _),
  interrogate(english, Reaction, [yes, no]).

management_skill(Reaction) :-
  runtime_input(management_skill, Reaction).
management_skill(Reaction) :-
  \+ runtime_input(management_skill, _),
  interrogate(management_skill, Reaction, [yes, no]).

intreact(Reaction) :-
  runtime_input(intreact, Reaction).
intreact(Reaction) :-
  \+ runtime_input(intreact, _),
  interrogate(intreact, Reaction, [yes, no]).


analytical(Reaction) :-
  runtime_input(analytical, Reaction).
analytical(Reaction) :-
  \+ runtime_input(analytical, _),
  interrogate(analytical, Reaction, [yes, no]).
 
serving_people(Reaction) :-
  runtime_input(serving_peoplel, Reaction).
serving_people(Reaction) :-
  \+ runtime_input(serving_people, _),
  interrogate(serving_people, Reaction, [yes, no]).


reactions([], _).
reactions([Starting|Ending], IndexValue) :-
  write(IndexValue), write(' '), reaction(Starting), nl,
  NextIndexValue is IndexValue + 1,
  reactions(Ending, NextIndexValue).


explore(0, [Starting|_], Starting).
explore(IndexValue, [Starting|Ending], Reply) :-
  IndexValue > 0,
  NextIndexValue is IndexValue - 1,
  explore(NextIndexValue, Ending, Reply).



interrogate(Inquiry, Reaction, Choosed_reaction) :-
  inquiry(Inquiry),
  reactions(Choosed_reaction, 0),
  read(IndexValue),
  explore(IndexValue, Choosed_reaction, Reply),
  asserta(runtime_input(Inquiry, Reply)),
  Reply = Reaction.
