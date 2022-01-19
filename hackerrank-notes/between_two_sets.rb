def between_two_sets(a, b)
  # find common multiples of a[]
  counter = a.min # initialize to smallest value in a
  min = counter
  multiples_of_a = {}
  while counter <= 100
    # p counter # test
    # if all values of a are 
    is_common_multiple = a.map{ |n|
      if counter % n == 0
        # p "#{n} is a factor of counter" # test
        true # this cannot be 'return true' or it will exit the whole method
      else
        # p "#{n} is not a factor of counter" # test
        false # this cannot be 'return false' or it will exit the whole method
      end
    }.reduce(:&) # reduce(:&) reduces the boolean array to the value of all summed (if any are false, it is false)
    # p "#{counter} is a multiple?: #{is_common_multiple}" # test
    # save them in a hash
    if is_common_multiple
      multiples_of_a[counter] = true # add number to hash if it is valid
    end
    # count up by smallest value in a
    counter += min # increment
  end

  p multiples_of_a
  numbers_between_sets = []
  # check each element in multiples_of_a too see if they are factors of all b[] elements
  multiples_of_a.each do |k,_v|
    is_factor_of_b = b.map { |n|
      if n % k.to_i == 0
        true
      else
        false
      end
    }.reduce(:&)
    # p "#{k} is factor of b?: #{is_factor_of_b}" # test
    # if true, add to array to be returned
    if is_factor_of_b
      p k
      numbers_between_sets << k
    end
  end
  return numbers_between_sets.length
end

a = [2,6] # values must be multiples of all of these
b = [24,36] # values must be factors of all of these
# p between_two_sets(a, b)
a = [2,4] # values must be multiples of all of these
b = [16, 32, 96] # values must be factors of all of these
p between_two_sets(a, b)
# input a = [2, 6]
# input b = [24, 36]
# output: 3 (length)