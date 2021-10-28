# frozen_string_literal: true

# Ruby code for linearly search x in arr[]
# if x is present then return its location,
# otherwise return -1

def search(arr, x)
  (0..arr.count).each do |i|
    return i if arr[i] == x
  end
  -1
end

arr = [2, 3, 4, 10, 40]
x = 10

result = search(arr, x)

if result == -1
  puts 'O elemento não está na array'
else
  puts "O elemento está no indice: #{result}"
end
