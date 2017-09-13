%% exercise 1 in chapter 3

parent(tom,bob).
parent(pam,bob).
parent(pam,liz).
parent(pam,bob).
male(tom).
male(bob).
female(liz).
female(pam).
sister(X,Y):-parent(Z,X),parent(Z,Y),female(X),X\=Y.