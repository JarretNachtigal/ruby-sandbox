def kangaroo(x1, v1, x2, v2)
  # short filter
  first_difference = (x1 - x2).abs
  second_difference = ((x1 + v1) - (x2 + v2)).abs
  if second_difference > first_difference
    return "NO"
  end
  # short filter 2
  if v1 == v2 && x1 != x2
    return "NO"
  end
  # check sizes
  if x1 + v1 > x2 + v2
    bigx = x1
    bigv = v1
    smallx = x2
    smallv = v2
  else
    bigx = x2
    bigv = v2
    smallx = x1
    smallv = v1
  end
  # increment and check for equality
  while bigx > smallx
    if bigx + bigv == smallx + smallv
      return "YES"
    else
      bigx += bigv
      smallx+= smallv
    end
  end
  # if smallx is bigger and the loop ends, they will not cross
  return "NO"
end

p kangaroo(0, 3, 4, 2)
p kangaroo(43, 2, 70, 2)