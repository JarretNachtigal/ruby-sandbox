require 'byebug'

# inheritence, encapsulation, abstraction, polymorphism?
# basic data types
num = 1
word = "2"
arr = [1,2,3,4,5]
hash = {a: 1, "b" => 2, :c => 3}
thing = Proc.new {|x| x + x }

# basic data types are classes in ruby
p arr.class
p num.class
p word.class
p hash.class
p thing.class

# # ruby legit doesn't give a fuck
arr2 = [1,"2",3,"4"] # legal
p arr2
arr3 = arr2.map{ |x| x + x} # legal
p arr3
p hash

# method definition
# def this_is_a_method()
#   p "cringe"
# end
# this_is_a_method()

# class definition
class Person
  attr_accessor :height, :weight#, :this_is_weird # setters and getters
  def initialize(height, weight = 170)
    @height = height
    @weight = weight
  end

  # setters
  # def weight=(weight)
  #   @weight = weight
  #   # @this_is_weird = "wtf am i looking at" # this is a thing
  # end

  # def height=(height)
  #   @height = height
  # end

  # # getters
  # def weight
  #   @weight
  # end

  # def height
  #   @height
  # end
#   # super keyword
  def pow
    return "parent pow"
    p "this"
  end
end

# # object initialization
person = Person.new("6 ft", 150)
p person.weight
p person.height
person.weight = 160
# person.weight(160)
# person.height = "7 feet"
# p person.height
# p person.weight
# # p person.this_is_weird

class CringePerson < Person
  def pow
    super
    return "child pow"
  end
end
# # inheritence
person_two = CringePerson.new("2 feet")
p person_two.height
p person_two.weight

p person_two.pow