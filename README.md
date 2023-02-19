PageRank este un algoritm de analiza a hiperlegaturilor din Internet, folosit de motorul de cautare
Google pentru a acorda o pondere fiecarui element dintr-o multime de documente interconectate
prin hiperlegaturi, cu scopul masurarii importantei relative ın cadrul multimii.
Am creat trei functii pe langa cele obligatorii, primite din arhiva:
constructie_matrice, Gram_Schmidt si quicksort.

Prima functie primeste ca parametru numele unui fisier, in care se afla informatii
despre un graf. Acest graf genereaza in functie de noduri si vecini o matrice
adiacenta (transpusa din momentul construirii acesteia, pentru a nu o mai transpune
mai tarziu) si un vector ce contine numarul de pagini pentru fiecare nod.
Impartind matricea adiacenta la numarul de pagini (pe coloane, conform algoritmului
de pe wikipedia), se obtine o alta matrice, esentiala pentru a rezolva restul cerintelor.

A doua functie reprezinta implementarea algoritmului Gram-SchmidtS,
prezentat la laborator, ce descompune o matrice data ca parametru intr-o inmultire
de matrice ortogonala si superior triunghiulara (A = Q * R).

Quicksort este o functie clasica recursiva, folosita in cadrul acestei teme pentru
a sorta descrescator un vector coloana.

Cele trei cerinte ale temei sunt reprezentate de functiile Iterative, Algebraic
si PageRank.

In Iterative se apeleaza functia constructie_matrice, explicata anterior, si
se calculeaza vectorul R printr-un for ce se opreste atunci cand s-au calculat
N elemente, N fiind numarul randurilor matricei.

Algebraic construieste pe baza unei matrice, inversa acesteia apeland functia
Pr_Inv. Aceasta din urma rezolva un sistem superior triunghiular (cu ajutorul 
Q si R din Gram_Schmidt). La final se returneaza vectorul R.

Ultima functie, PageRank, face aceiasi pasi ca Iterative si Algebraic,
scriind intr-un fisier vectorii obtinuti. In plus, se sorteaza descrescator
cel de al doilea vector si se retin pozitiile vechi ale elementelor acestuia
prin POZ. La final se scrie in fisier indicele curent, pozitia veche si rezultatul
functiei Apartenenta, ce returneaza un y in functie de intervalul in care se
afla parametrul x.
