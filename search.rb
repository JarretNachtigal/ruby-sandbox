# from algorithms book

def linear_search(array, search_value)
  # We iterate through every element in the array:
  array.each_with_index do |element, index|
    # If we find the value we're looking for, we return its index:
    if element == search_value
      return index
      # If we reach an element that is greater than the value
      # we're looking for, we can exit the loop early:
    elsif element > search_value
      break
    end
  end
  # We return nil if we do not find the value within the array:
  return nil
end

def binary_search(array, search_value)
  # First, we establish the lower and upper bounds of where the value
  # we're searching for can be. To start, the lower bound is the first
  # value in the array, while the upper bound is the last value:
  lower_bound = 0
  upper_bound = array.length - 1
  # We begin a loop in which we keep inspecting the middlemost value
  # between the upper and lower bounds:
  while lower_bound <= upper_bound do
    # We find the midpoint between the upper and lower bounds:
    # (We don't have to worry about the result being a non-integer
    # since in Ruby, the result of division of integers will always
    # be rounded down to the nearest integer.)
    midpoint = (upper_bound + lower_bound) / 2
    # We inspect the value at the midpoint:
    value_at_midpoint = array[midpoint]
    # If the value at the midpoint is the one we're looking for, we're done.
    # If not, we change the lower or upper bound based on whether we need
    # to guess higher or lower:
    if search_value == value_at_midpoint
      return midpoint
    elsif search_value < value_at_midpoint
      upper_bound = midpoint - 1
    elsif search_value > value_at_midpoint
      lower_bound = midpoint + 1
    end
  end
  # If we've narrowed the bounds until they've reached each other, that
  # means that the value we're searching for is not contained within
  # this array:
  return nil
end

arr = [1,14,23,35,49,53,60]
p linear_search(arr, 53)
p binary_search(arr, 53)