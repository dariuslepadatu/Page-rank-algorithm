function B = PR_Inv(A)
  N = rows(A);
  B = zeros(N);
  x = zeros(N, 1);
  [Q R] = Gram_Schmidt(A);  
  %se rezolva sistemul superior triunghiular cu ajutorul
  %matricelor Q si R, obtinandu-se un vector coloana x
  %ce este introdus pe coloana matricei inversei
  for i = 1:N
    j = i;
    T = transpose(Q) * eye(N)(:, i);
    x(N) = T(N) / R(N, N);
    for i = N:-1:1
      s = R(i, (i + 1):N) * x((i + 1):N, 1);
      x(i) = (T(i) - s)/R(i,i);
    endfor
    B(:, j) = x;
  endfor 
endfunction
