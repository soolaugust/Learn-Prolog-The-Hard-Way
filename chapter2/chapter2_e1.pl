/* exercise 1 in chapter 2 */

/*
    I : me
    Wife : wife
    Son : Son
    Daugther : daugther
    Grandson : grandson
    Granddaugther : granddaugther
    Father : father
    Mother : mother
    Grandpa : grandpa
    Grandma : grandma
    Sister : sister
    Brother : brother
    Uncle : uncle
    Aunt : aunt
    Cousin : cousin
*/

wife_relation(wife,me).
son_relation(son,me).
daugther_relation(daugther,me).
father_relation(father,me).
mother_relation(mother,me).
brother_relation(brother,me).
sister_relation(sister,me).
son_relation(grandson,son).
daugther_relation(granddaugther,son).
father_relation(grandpa,father).
mother_relation(grandma,father).
sister_relation(aunt,father).
brother_relation(uncle,father).
son_relation(cousin,aunt).

parent_relation(X,Y):-father_relation(X,Y).
parent_relation(X,Y):-mother_relation(X,Y).
grandson_relation(X,Y):-son_relation(X,Z),son_relation(Z,Y).
granddaugther_relation(X,Y):-son_relation(X,Z),daugther_relation(Z,Y).
grandpa_relation(X,Y):-father_relation(X,Z),father_relation(Z,Y).
grandma_relation(X,Y):-mother_relation(X,Z),father_relation(Z,Y).
aunt_relation(X,Y):-sister_relation(X,Z),father_relation(Z,Y).
uncle_relation(X,Y):-brother_relation(X,Z),father_relation(Z,Y).
cousin_relation(X,Y):-son_relation(X,Y),aunt_relation(Y,Z).


