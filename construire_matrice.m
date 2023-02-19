function [M val1 val2]= construire_matrice(nume)
  f = fopen(nume, "rt");
  N = fscanf(f, "%d\n", 1);
  A = zeros(N);
  M = zeros(N);
  L = zeros(1, N);
  %se parcurg linie cu linie datele despre graf
  for i = 1:N
    nr = str2num(fgets(f));
    L(i) = nr(2);
    for k = 3:1:(L(i)+2)
  %se construieste transpusa matricei adiacente si vectorul de vecini
      if nr(1) == nr(k)
          A(nr(k), nr(1)) = 0;
          L(i)--;        
        else
          A(nr(k), nr(1)) = 1;
      end
    end
  endfor
  for i = 1:N
    M(:,i) = A(:,i)./L(i);
  end
  val1 = fscanf(f, "%f\n", 1);
  val2 = fscanf(f, "%f\n", 1);
  fclose(f);
endfunction
