function R = Algebraic(nume, d)
  output_precision(6);
  [M val1 val2] = construire_matrice(nume);
  N = rows(M);
  %se calculeaza inversa matricei folosita pentru vectorul pagerank
  I = PR_Inv(eye(N) - d * M) ;
  R = I * ((1-d)/N)*ones(N,1);
endfunction