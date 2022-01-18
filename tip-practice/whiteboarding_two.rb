# Input: {"a" => 1, "b" => 2, "c" => 3}
# Output: {1 => "a", 2 => "b", 3 => "c"}

# hash = {"a" => 1, "b" => 2, "c" => 3}

# temp for the swap (hold the name)
# change name to value
# set value to temp (old name)

# def swap(hash)
#   new_hash = {}
#   # loop
#   hash.each do |k,v|
#     new_hash[v] = k
#   end
#   return new_hash
# end

# p swap(hash)

# arr = [
#   {title: 'Me Eating Pizza', submitted_by: 231, likes: 1549},
#   {title: 'i never knew how cool i was until now', submitted_by: 989, likes: 3},
#   {title: 'best selfie evar!!!', submitted_by: 111, likes: 1092},
#   {title: 'Mondays are the worst', submitted_by: 403, likes: 644}
# ]

# arr2 = [
#   {user_id: 403, name: "Aunty Em"},
#   {user_id: 231, name: "Joelle P."},
#   {user_id: 989, name: "Lyndon Johnson"},
#   {user_id: 111, name: "Patti Q."},
# ]

# def merge(arr, arr2)
#   new_arr = arr
#   new_arr.each do |hash|
#     hash[:submitted_by] = arr2.find{ |h| h[:user_id] == hash[:submitted_by]}
#   end
#   return new_arr
# end

# p merge(arr, arr2)

