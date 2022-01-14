arr = [1,2,6,4,5,3,7,8,9,10]
# array read - 1 step (address of first element + index = address of any index of arr)
p arr[1]
# array search - start from beginning and step through O(n)
p arr.find_index(1) # best case
p arr.find_index(10) # worst case
# array insert - efficiency depends on where insertion is happening - adding to end is one step
# - otherwise, all values after the index must be shifted once to the right O(n)

# array delete - step 1, delete at index, step 2-... shift over one to the left until end of arr
# - deletion from end is efficient O(n)