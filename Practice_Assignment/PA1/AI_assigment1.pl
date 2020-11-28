parent(asha, akanksha).
parent(kamal, akanksha).
parent(asha, akash).
parent(kamal, akash).
parent(latel, asha).
parent(lakshmi, asha).
parent(mahanand, kamal).
parent(indu, kamal).
parent(latel, ambi).
parent(latel, domar).

parent(latel, manohar).
parent(lakshmi, ambi).
parent(lakshmi, domar).
parent(lakshmi, manohar).
parent(mahanand, tara).
parent(mahanand, yashwant).
parent(indu, tara).
parent(indu, yashwant).
parent(ambi, rahul).
parent(ambi, nikki).
parent(ramesh, rahul).
parent(ramesh, nikki).
parent(yashwant, leena).
parent(yashwant, manish).
parent(saraswati, leena).
parent(saraswati, manish).

parent(dayaram, latel).
parent(tilmat, latel).
parent(dayaram, jhaduram).
parent(tilmat, jhaduram).
parent(chandu, mahanand).
parent(raambati, mahanand).
parent(chandu, jagoti).
parent(raambati, jagoti).

child(akanksha, asha).
child(akanksha, kamal).
child(akash, asha).
child(akash, kamal).
child(asha, latel).
child(asha, lakshmi).
child(kamal, mahanand).
child(kamal, indu).
child(ambi,latel).
child(domar, latel).
child(manohar, latel).
child(ambi, lakshmi).
child(domar, lakshmi).
child(manohar, lakshmi).
child(tara, mahanand).
child(yashwant, mahanand).
child(tara, indu).
child(yashwant, indu).
child(nikki, ambi).
child(rahul, ambi).
child(rahul, ramesh).
child(nikki, ramesh).
child(leena, yashwant).
child(manish, yashwant).
child(leena, saraswati).
child(manish, saraswati).
child(latel, dayaram).
child(latel, tilmat).
child(jhaduram, dayaram).
child(jhaduram, tilmat).
child(mahanand, chandu).
child(mahanand, raambati).
child(jagoti, chandu).
child(jagoti, raambati).


male(kamal).
male(akash).
male(latel).
male(mahanand).
male(yashwant).
male(domar).
male(manohar).
male(lakshman).
male(jhaduram).
male(devilal).
male(dev).
male(ramesh).
male(nikki).
male(rahul).
male(manish).
male(leena).
male(dayaram).
male(chandu).

female(asha).
female(akanksha).
female(lakshmi).
female(indu).
female(ambi).
female(tara).
female(jagoti).
female(geerja).
female(asho).
female(rani).
female(leena).
female(tilmat).
female(raambati).

spouse(kamal, asha).
spouse(latel, lakshmi).
spouse(mahanand, indu).
spouse(ramesh, ambi).
spouse(yashwant, saraswati).
spouse(dayaram, tilmat).
spouse(chandu, raambati).



husband(X,Y):-spouse(X, Y), female(Y),male(X).
wife(X, Y):-husband(Y, X).

sons(X, Y):-child(X, Y),parent(Y, X),male(X).
daughter(X, Y):-child(X, Y),parent(Y, X),female(X).

siblings(X, Y):-parent(Z, Y),parent(Z, X),child(X, Z),child(Y, Z).

brother(X, Y):-parent(Z, X),parent(Z, Y),child(X, Z),child(Y, Z),male(X),male(Y).
sisters(X, Y):-parent(Z, X),parent(Z, Y),child(X, Z),child(Y, Z),female(X),female(Y).


brother_in_law(X, Y):-wife(Y, Z),brother(Z, X),male(X),female(Y),male(Z).
brother_in_law(X, Y):-husband(Y, Z),siblings(Z, X),male(X),male(Y),female(Z).


sister_in_law(X, Y):-wife(Y, Z),siblings(X, Z),male(Z),female(Y),female(X).
sister_in_law(X, Y):-husband(Y, Z),siblings(X, Z),male(Y),female(Z),female(X).


uncle(X, Y):-male(X),parent(Z, Y),siblings(Z, X),not(parent(X,Y)).
uncle(X, Y):-male(X),parent(Z, Y),brother_in_law(X, Z),not(parent(X,Y)).
aunts(X, Y):-female(X),parent(Z, Y),siblings(Z, X),not(parent(X,Y)).
aunts(X, Y):-female(X),parent(Z, Y),sister_in_law(X, Z),not(parent(X,Y)).


first_cousins(X, Y):-parent(Z ,X),aunts(Z, Y),child(X, Z),female(Z).
first_cousins(X, Y):-parent(Z, X),uncle(Z, Y),child(X, Z),male(Z).




grandfathers(X, Y):-male(X),parent(X, Z),parent(Z, Y),child(Y, Z),child(Z, X).
grandmothers(X, Y):-female(X),parent(X, Z),parent(Z, Y),child(Y, Z),child(Z, X).

grandUncle(X, Y):-male(X),grandfathers(Z, Y),parent(W, Y),child(Y, W),uncle(X, W),not(grandfathers(X, Y)),not(Z=X).
grandAunt(X, Y):-female(X),grandmothers(Z, Y),parent(W, Y),child(Y, W),aunts(X, W),not(grandfathers(X, Y)),not(Z=X).

mother(X, Y):-female(X),parent(X, Y),child(Y, X).
father(X, Y):-male(X),parent(X, Y),child(Y, X).

relation1(X):-father(Y, X),write(Y),write(' is father of '),write(X).
relation2(X):-mother(Y, X),write(Y),write(' is mother of '),write(X).
relation3(X):-uncle(Y, X),write(Y),write(' is uncle of '),write(X).
relation4(X):-aunts(Y, X),write(Y),write(' is aunt of '),write(X).
relation5(X):-grandfathers(Y, X),write(Y),write(' is grandfather of '),write(X).
relation6(X):-grandmothers(Y, X),write(Y),write(' is grandmother of '),write(X).
relation7(X):-grandUncle(Y, X),write(Y),write(' is granduncle of '),write(X).
relation8(X):-grandAunt(Y, X),write(Y),write(' is grandaunt of '),write(X).
relation9(X):-siblings(Y, X),write(Y),write(' is sibling of '),write(X).
relation10(X):-brother_in_law(Y, X),write(Y),write(' is brother in law of '),write(X).
relation11(X):-sister_in_law(Y, X),write(Y),write(' is sister in law of '),write(X).
