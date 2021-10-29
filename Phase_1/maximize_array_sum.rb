# PHP program to maximize
# array sum after k operations.
 
# This function does k operations
# on array in a way that maximize
# the array sum. index --> stores
# the index of current minimum
# element for j'th operation
def maximumSum(arr, n, k)
  int_max = 0
  # Modify array K
  # number of times
  for (i = 1; i <= k; i++)
    min = INT_MAX
    index = -1;

    # Find minimum element in
    # array for current operation
    # and modify it i.e;
    arr[j] --> -arr[j]
    for (j = 0; j < n; j++)
      if (arr[j] < min)
        min = arr[j]
        index = j
    end

    # this the condition if we
    # find 0 as minimum element, so
    # it will useless to replace 0
    # by -(0) for remaining operations
    if (min == 0)
        break

    #Modify element of array
    arr[index] = -arr[index]
  end
  # Calculate sum of array
  sum = 0;
  for (i = 0; i < n; i++)
    sum += arr[i]
  return sum
end 
 
# Driver Code
arr = array(-2, 0, 5, -1, 2)
k = 4
n = sizeof(arr) / sizeof(arr[0])
puts maximumSum(arr, n, k)