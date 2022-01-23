# return the number of ways a given array can add to a number using a given number of factors
# s = array
# d = day / sum we are looking for
# m = birth month / required number of factors
def subarray_division(s, d, m)
  p "array = #{s}"
  counter = 0                         # holds number of contigous segments of m length and d value
  i = 0 # index
  while i < s.length - (m - 1)        # stop loop from going out of bounds
    p "for index: #{i}"
    y = i                             # index for multiplication loop
    acc = 0                           # accumulator
    # add m values by eachother
    while y < (i + m)
      p "arr at y = #{s[y]}"
      p "acc = #{acc}"
      acc += s[y]
      y += 1
    end
    if acc == d
      counter += 1
    end
    i += 1                            # increment outer index
  end
  return counter                      # return number of valid combinations 
end


s = [1, 2, 1, 3, 2]
d = 3
m = 2
p subarray_division(s, d, m)