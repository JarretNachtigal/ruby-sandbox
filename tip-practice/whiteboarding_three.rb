# def is_subset(big_arr, small_arr)
#   hash = {}
#   i = 0
#   # fill hash
#   while i < big_arr.length
#     hash[big_arr[i]] = true
#     i += 1
#   end
#   for i in small_arr
#     if hash[i] == nil
#       return false
#     end
#   end
#   return true
# end

# p is_subset([1,2,3,4,5,6], [6,3,2])
# p is_subset([1,2,3,4,5,6], [6,3,7])

# videos = [
#   {title: 'How to Make Wood', author_id: 4, views: 6},
#   {title: 'How to Seem Perfect', author_id: 4, views: 111},
#   {title: 'Review of the New "Unbreakable Mug"', author_id: 2, views: 202},
#   {title: 'Why Pigs Stink', author_id: 1, views: 12}
# ]

# authors = [
#   {id: 1, first_name: 'Jazz', last_name: 'Callahan'},
#   {id: 2, first_name: 'Ichabod', last_name: 'Loadbearer'},
#   {id: 3, first_name: 'Saron', last_name: 'Kim'},
#   {id: 4, first_name: 'Teena', last_name: 'Burgess'},
# ]


# # output:
# # [
# #   {title: 'How to Seem Perfect', views: 111, author_name: 'Teena Burgess' }
# #   {title: 'Review of the New "Unbreakable Mug"', views: 202, author_name: 'Ichabod Loadbearer' },
# # ]

# def merge(videos, authors)
#   new_arr = []
#   i = 0
#   # loop through videos
#   while i < videos.length
#     if videos[i][views] >= 100
#       author_name = authors.select{ |author|
#           if author[id] == videos[i][author_id]
#             return author[name]
#           end
#         }
#       # fill new array
#       new_arr << {title: videos[i][title], views: videos[i][views], author: author_name}
#     end
#   end
#   return new_arr
# end

# p merge(videos, authors)









# s = "leetcode"
# return 0.
# (The "l" is the first character that only appears once in the string, and appears at index 0.)

# s = "loveleetcode",
# return 2.
# (The "l" and "o" are repeated, so the first non-repeating character is the "v", which is at index 2.)


# return the index of the first non repeating character
def non_repeating_character(word)
  characters = {}
  i = 0
  while i < word.length
    # if it does not exist, add to hash with value 1, else add 1 to hash
    if characters[word[i]] # add if exists
      characters[word[i]] += 1
    else
      characters[word[i]] = 1 # add to hash with value of 1
    end
    # increment
    i += 1
  end
  # {l: 1, e: 2, t: 1, ...}
  # loop through hash, return index of the first character that shows up only once
  characters.each do |k,v|
    if v == 1
      return word.index(k)
    end
  end
  # all are repeated
  return -1
end

p non_repeating_character("leetcode")
p non_repeating_character("loveleetcode")