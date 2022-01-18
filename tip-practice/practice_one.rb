# hash comparison -----
  # find all combinations of numbers that add up to 10
  # return arr of combinations
def ten_combinations(arr)
  new_arr = []
  remainders = {} # this will hold the remainders of 10 - n as names
  # loop through array
  arr.each do |n|
    if remainders[n] # if the current number exists in remainders, add it to new arr with 10 - n
      new_arr << [n, 10 - n]
    else # add remainder to hash
      remainders[(10-n)] = true
    end
  end
  return new_arr
end
arr = [1,2,3,4,5,6,7,8,9]
# [[6, 4], [7, 3], [8, 2], [9, 1]]
p ten_combinations(arr)

# bubble sort -----

# binary search -----

# selection sort -----

# insertion sort -----