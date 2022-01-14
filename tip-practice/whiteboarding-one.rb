
def multiples(num)
  # count from 0 to num (noninclusive)
  i = 0
  acc = 0
  while i < num
    # check for multiple of 3
    if i % 3 == 0
      # sum
      acc += i
    # check for multiple of 5
    elsif i % 5 == 0
      # sum
      acc += i
    end
    # increment index
    i +=1
  end
  # return sum
  return acc
end

# p multiples(10)
# p multiples(1000)
# 20 - 3,5,6,9,10,12,15,18

# ---------------------------------------

# if divisable by 4

# return boolean
def leap_year(year)
  # if divisible by 4
  if year % 4 == 0
    # false if 100 unless also 400
    if year % 100 == 0
      # p "4 and 100"
      return false unless year % 400 == 0
      return true
    else
      # p "4 and not 100"
      return true # divisible by 4 and not 100
    end
  else
    return false # not divisible by 4
  end
  return "it shoudnt be here"
end

# p leap_year(1997) # false
# p leap_year(1996) # true
# p leap_year(1900) # false
# p leap_year(2000) # true

def compare(str, str2)
  arr = str.split("")
  arr2 = str2.split("")
  nums = arr.select.with_index { |n,i| n != arr2[i]}.length
  return nums
end

p compare("ABCDEFG", "ABCXEOG")