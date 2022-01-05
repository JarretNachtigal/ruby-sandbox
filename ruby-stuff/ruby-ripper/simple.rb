require 'ripper'
require 'pp'

# code = <<STR
# nothing = ""
# num = 2+2-2
# puts num
# STR

# def this_works(str = "default")
#   p "#{str} is the string"
# end

# def gamer
#   puts caller[0][/`.*'/][1..-2]
#   puts caller
#   p 2+2
# end

# def pppp
#   gamer()
# end

# pppp()

# arr = [1,2,3]
# num = 1
# str = "string"

# p arr.class.ancestors
# p num.class.ancestors
# p str.class.ancestors

# class Gamer < Array
#   def thing
#     return "this is a thing"
#   end
# end

# gamer = Gamer.new([1,2,3])
# p gamer[0]
# p gamer.thing
# p gamer.class.ancestors

code = <<STR
  i = 2
  y = i
STR

# pp Ripper.sexp(code)
puts RubyVM::InstructionSequence.compile(code).disasm