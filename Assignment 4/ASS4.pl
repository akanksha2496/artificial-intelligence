
initial :-
  write('what should I do next after B.tech CSE?'), nl,
  reset_answers,
  readFromFile,
  career_options(Career).

readFromFile:-
  setup_call_cleanup(
    open('C:/Users/akanksha/Desktop/AI_A4_Akanksha_Dewangan_MT19049/AI_A4_Akanksha_Dewangan_MT19049/output.txt',read,In),
    (
      repeat,
      read_term(In, X, []),
      readfactsFromfile(X),asserta(X), !
    ),
    close(In)
  ).
career_options(Career) :-
  career(Career), !.


:- dynamic(runtime_input/2).



reset_answers :-
  retract(runtime_input(_, _)),
  fail.

reset_answers.

career(heigher_studies):-
 heigher_studies(yes),
 marks(yes),
 logical_thinking(yes),
 problem_solving(yes),
 aptitude(yes),
 project_oriented(yes),
 research(yes),
 financial(strong),
 code(yes),
 give_which_eaxm(gre),
 K='it seems you are having intrest in technical feild with \c
 some intrest in projects and research area.',
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

career(heigher_studies):-
 give_which_eaxm(gate),
 write('Recommendation for Master of technology(M.tech)'), nl,
 write(' As you have a technical taste so M.tech is perfect for you'),nl,
 write(' you just have yto crack the gate exam with good percentile'),nl,
 write(' also non-gate admission available in IIIT-D.'), nl,
 write(' you can choose following bracnches in M.tech '), nl,
 write(' Artificial intelligence '), nl,
 write(' data engineering '), nl,
 write(' information security '), nl,
 write(' Mobile Computing '), nl,
 write(' without specilization as according to you furthur '),nl,nl,nl,
 write('ALL THE BEST').
career(heigher_studies):-
 give_which_eaxm(cat),
 write('Recommendation for Master of Buisness Administration(MBA)'), nl,
 write('You have to crack CAT with good percentile and can do buisness after that,'), nl,
 write(' following subject can be opt in MBA'), nl,
 write('Human Resource Management'), nl,
 write('Customer Relationship Management'),nl,
 write('Operation Management'),nl,
 write('Marketing and many more subjects will build your'),nl,nl,nl,
 write('ALL THE BEST'). 

career(IT):-
 heigher_studies(no),
 buisness(no),
 code(yes),
 problem_solving(yes),
 aptitude(yes),
 logical_thinking(yes),
 management_skill(yes),
 financial(medium),
 project_oriented(yes),
 K='it seems like you are having logical thinking with problem solving approach \c
 but need to a job to earn money so you can plan something good for you furthur.', 
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

career(enterpreneur):-
 heigher_studies(no),
 buisness(yes),
 intreact(yes),
 idea(can),
 leadership(yes),
 risk(can),
 K='You have qulities of a a leadership also able to handle risks will  direct you towrard\c
 strong mentality person and can eun an organization.',
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






career(defence):-
 heigher_studies(no),
 buisness(no),
 code(no),
 physical(very_strong),
 serving_people(yes),
 financial(medium),
 K='it seems like you are having logical thinking with problem solving approach \c
 and you like to serve people and helping them as a duty.',
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
 heigher_studies(no),
 buisness(no),
 code(no),
 physical(fit),
 problem_solving(yes),
 aptitude(yes),
 logical_thinking(yes),
 project_oriented(no),
 management_skill(yes),
 serving_people(yes),
 financial(medium),
 K='it seems like you are having logical thinking with problem solving approach \c
 and you like to serve people and helping them as a duty.', nl, nl,
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


readfactsFromfile(end_of_file):- !.
readfactsFromfile(X):-
  asserta(X),!,
  fail.