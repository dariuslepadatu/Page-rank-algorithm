function arr = quicksort(v)                      
  arr = v; 
  n = sizeof(v);
  if(n > 1)
     vl = min(arr);
     vh = max(arr); 
     %se ia un pivot si este comparat cu elementele din arr
     p  = (vl+vh)*0.5;  
     ia = find(arr > p);
     ib = find(arr == p);
     ic = find(arr < p);
     arr  = [quicksort(arr(ia)); arr(ib); quicksort(arr(ic))];
  end
endfunction