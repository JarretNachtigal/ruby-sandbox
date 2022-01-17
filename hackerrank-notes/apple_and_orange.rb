# s -> t is the range of the house's location
# a is the location of the apple tree
# b is the location of the orange tree
# apples is an array of values representing the distance from a
# oranges is an array of values representing the distance from b

def count_apples_and_oranges(s, t, a, b, apples, oranges)
  arr = [0,0] # to return
  apples.each do |apple|
    if (apple + a) >= s && (apple + a) <= t
      arr[0] += 1
    end
  end

  oranges.each do |orange|
    if (orange + b) >= s && (orange + b) <= t
      arr[1] += 1
    end
  end
  p arr[0]
  p arr[1]
  return arr
end

p count_apples_and_oranges(7,11,5,15,[-2,2,1], [5,-6])
