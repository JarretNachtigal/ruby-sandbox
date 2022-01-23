# this method will return arr of integers [# of times she set a new high, # of times she set a new low]
# takes an array of integers (scores, with the index of the score corresponding with the games number (ordered))
# tied records do not count
def breaking_the_records(scores)
  # establish baseline min and max
  min = scores[0]
  max = scores[0]
  # init counters - start at 0
  min_broken = 0
  max_broken = 0
  # iterate through scores
  scores.each do |score|
    if score > max                # if score is bigger than max, count and replace
      max_broken += 1
      max = score
    elsif score < min             # if score is smaller than min, count and replace
      min_broken += 1
      min = score
    end
  end
  #return
  return [max_broken, min_broken]
end


scores = [3, 4, 21, 36, 10, 28, 35, 5, 1, 24, 42] # array of scores to be passed in
p breaking_the_records(scores) # method call and print result