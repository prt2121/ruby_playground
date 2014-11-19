def sum(arr)
 arr.reduce(:+)
end

def max_2_sum(arr)
   if arr.length >= 2
    a = arr.sort{ |x, y| x <=> y }   
    a.drop(a.length - 2)
   elsif arr.length == 1
    arr[0]
   else
    0
   end
end

def sum_to_n?(arr, n)
  if(arr.length < 2)
      false
  else
    arr.permutation(2)
       .to_a
       .collect{ |x| x.reduce(:+) == n}
       .any?
  end
end