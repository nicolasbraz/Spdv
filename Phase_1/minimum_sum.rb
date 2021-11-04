# frozen_string_literal: true

# Ruby program to minimize the
# cost of array minimization

# Returns minimum possible
# sum in array B[]
def min_sum(a, n)
  min_val = min(a)
  (min_val * (n - 1))
end

# Driver Code
a = Array.new(3, 6, 2, 8, 7, 5)
n = a.length
puts min_sum(a, n)