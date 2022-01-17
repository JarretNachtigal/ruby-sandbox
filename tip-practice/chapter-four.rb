# from book
arr = [1,2,3,4,5,7,3,4,5]

def check_duplicates(arr)
  used = []
  arr.each do |n|
    if used[n] == 1
      return "#{n} was reused"
    else
      used[n] = 1
    end
  end
  return true
end

p check_duplicates(arr)