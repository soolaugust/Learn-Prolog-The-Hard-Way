%% exercise 1 in chapter 4

/*
    the below codes has one problem: it will print each letter too.
    and the parameter of print_solution() should be null as I see.
    I don't know how to resolve it now. will resolve it when I get
    to know more about prolog.
*/

word(d,o,g).
word(r,u,n).
word(t,o,p).
word(f,i,v,e).
word(f,o,u,r). 
word(l,o,s,t). 
word(m,e,s,s).
word(u,n,i,t).
word(b,a,k,e,r).
word(f,o,r,u,m).
word(g,r,e,e,n).
word(s,u,p,e,r).
word(p,r,o,l,o,g).
word(v,a,n,i,s,h).
word(w,o,n,d,e,r).
word(y,e,l,l,o,w).

solution(L1,L2,L3,L4,L5,L6,L7,L8,L9,L10,L11,L12,L13,L14,L15,L16):-
    word(L1,L2,L3,L4,L5),
    word(L1,L6,L9,L15),
    word(L3,L7,L11),
    word(L5,L8,L13,L16),
    word(L9,L10,L11,L12,L13,L14).
    
print_solution(L1,L2,L3,L4,L5,L6,L7,L8,L9,L10,L11,L12,L13,L14,L15,L16):-
    solution(L1,L2,L3,L4,L5,L6,L7,L8,L9,L10,L11,L12,L13,L14,L15,L16),
    write("word1 is "),write(L1),write(L2),write(L3),write(L4),write(L5),nl,
    write("word2 is "),write(L1),write(L6),write(L9),write(L15),nl,
    write("word3 is "),write(L3),write(L7),write(L11),nl,
    write("word4 is "),write(L5),write(L8),write(L13),write(L16),nl,
    write("word5 is "),write(L9),write(L10),write(L11),write(L12),write(L13),write(L14).