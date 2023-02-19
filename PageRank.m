function [R1 R2] = PageRank(nume, d, eps)
  %se apeleaza functiile Iterative si Algebraic, dupa care se scriu
  %vectorii lor in fisier
  [M val1 val2] = construire_matrice(nume);
  N = rows(M);
  R1 = Iterative(nume, d, eps);
  R2 = Algebraic(nume, d);
  nume_out = strcat(nume, ".out");
  fout = fopen(nume_out, "w");
  fprintf(fout, "%d\n\n", N);
  fprintf(fout, "%f\n", R1);
  fprintf(fout, "\n");
  fprintf(fout, "%f\n", R2);
  fprintf(fout, "\n");
  %se sorteaza descrescator R2 si se retin vechile pozitii ale elementelor
  PR1 = quicksort(R2);
  for i= 1:N
    for j = 1:N
      if PR1(i) == R2(j)
        POZ(i) = j;
        break;
      end
    end
  end
  %se scrie in fisier indicele curent, pozitia veche si rezultatul
  %functiei Apartenenta
   for i = 1:N
    fprintf(fout, "%d %d %f\n", i, POZ(i), Apartenenta(PR1(i), val1, val2));  
  endfor   
  fclose(fout);
endfunction