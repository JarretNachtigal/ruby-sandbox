# Input: s = "()"
# Output: true

# Input: s = "()[]{}"
# Output: true

# Input: s = "(]"
# Output: false


# can be improved by shoveling the first one automatically so that if it is a close, indexing i = (0) - 1 doesnt break it
# and start i at 1 not 0, also can be an if ([{ elsif )]} and ifs inside elsif for each pop
# OR return false immediately if string[0] is a close bracket 
def valid_string(string)
  i = 0 # index
  arr = [] # stack thing
  while i <= string.length - 1
    # if there is an open, add it the array
    if string[i] == "("
      arr << string[i]
    elsif string[i] == "["
      arr << string[i]
    elsif string[i] == "{"
      arr << string[i]
    elsif string[i] == ")"
      if string[i-1] == "("
        arr.pop
      else
        return false
      end
    elsif string[i] == "]"
      if string[i-1] == "["
        arr.pop
      else
        return false
      end
    elsif string[i] == "}"
      if string[i-1] == "{"
        arr.pop
      else
        return false
      end
    end
    i += 1
    # if there is a close, it has to be the same type as the most recent open
    # if it is, pop it off
    # else return false
  end
  # return true if it gets to the end and has 0 remaining
  if arr.length == 0
    return true
  end
  return false
end

# p valid_string("()[]{}")
# p valid_string("()")
# p valid_string("(]")
# p valid_string("](")

# find number of digits
# loop
# check if each digit is a divisor of n
# count
# return count

# input: 124 1 2 4
# output: 3

def find_digits(n)
  # find length/ number of digits
  digits = n.to_s # use this with an index to check each digit individually
  num_digits = digits.length
  counter = 0 # count number of divisors
  # loop
  i = 0
  while i < num_digits
    # if divides evenly add to counter
    if digits[i].to_i != 0
      if n % digits[i].to_i == 0
        counter += 1
        p digits[i]
      end
    end
    i += 1
  end
  # return
  counter
end

p find_digits(124)
p find_digits(111)
p find_digits(10)