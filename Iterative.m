function R = Iterative(nume, d, eps)
  output_precision(6);
  [M val1 val2] = construire_matrice(nume);
  N = rows(M);
  %se aplica algoritmul Iterative pentru vectorul pagerank
  R = ones(N, 1).*1/N;
   do 
    R_old = R;
    R = d*M*R + (1-d)*ones(N,1)/ N;
   until abs(R - R_old) < eps
endfunction
