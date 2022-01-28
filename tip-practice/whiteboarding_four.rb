# Input: s = "()"
# Output: true

# Input: s = "()[]{}"
# Output: true

# Input: s = "(]"
# Output: false


# can be improved by shoveling the first one automatically so that if it is a close, indexing i = (0) - 1 doesnt break it
# and start i at 1 not 0, also can be an if ([{ elsif )]} and ifs inside elsif for each pop
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

p valid_string("()[]{}")
p valid_string("()")
p valid_string("(]")
p valid_string("](")

# ()[]{}
# (