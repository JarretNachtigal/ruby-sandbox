# hash comparison ---------------
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
# output: [[6, 4], [7, 3], [8, 2], [9, 1]]
# p ten_combinations(arr)

# bubble sort ---------------
def bubble_sort(arr)
  sorted = false # when a shift is made, set to false and continue
  while sorted == false # continue until clean run through arr
    index = 0
    sorted = true # becomes false unless run through is clean
    while index < arr.length - 1  # loop through array
      if arr[index] > arr[index+1] # if 2 elements are not in order - swap
        temp = arr[index]
        arr[index] = arr[index+1]
        arr[index+1] = temp
        sorted = false # continue next pass through
      end
      index+=1 # increment
    end
  end
  return arr
end
arr = [9,8,7,5,6,4,3,1,2]
# output: [1,2,3,4,5,6,7,8,9]
# p bubble_sort(arr)

# binary search ---------------
def binary_search(arr, n)
  sorted_arr = bubble_sort(arr) # sort array
  # start at halfway point
  halfway = sorted_arr.length / 2
  index = halfway
  checked = {} # hash to hold indexes that have been checked
  while sorted_arr[index] != n # while n not found
    if checked[index] # if its not in array and the program is looping, return nil
      return nil
    end
    checked[index] = true # add index to checker hash
    if sorted_arr[index] > n # if too high
      p "high #{index}"
      index = index/2
    else # if too low
      p "low #{index}"
      index = (index + sorted_arr.length) / 2
    end
  end
  return index # after loop ends, return index
end
arr = [9,8,7,5,6,4,3,1,2]
# find index of given number
p binary_search(arr, -3)
# selection sort ---------------

# insertion sort ---------------