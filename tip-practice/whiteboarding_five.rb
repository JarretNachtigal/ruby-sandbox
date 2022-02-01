# # input "Hello world"
# # output 5

# def last_word_length(str)
#   # start at the end index -1
#   # skip spaces until i find a letter
#   # count until i hit spaces
# end

# p last_word_length("hello world")

# iv 4
# ix 9
# Input=> s = "MCMXCIV" = 1994

# iterate through string checking for valid roman numeral
# add first to string, check second for validity and so on
# if next letter is invalid roman numeral check roman numeral value and add to count
# otherwise add to string 
# ex v can be onto i
# i can be added to i until 4, which is iv

def roman_numeral_value(str)
  numerals_key = {"i"=> 1, "ii"=> 2, "iii"=> 3,
                  "iv"=> 4, "v"=> 5, "vi"=> 6, 
                  "vii"=> 7, "viii"=> 8, "xi"=> 9,
                  "x"=> 10, "xl"=> 40, "l"=> 50, 
                  "xc"=> 90, "c"=> 100, "cd"=> 400,
                  "d"=> 500, "cm"=> 900, "m"=> 1000}

  i = 0
  acc = 0
  while i < str.length
    roman_numeral = str[i]
    p "this is the outer loop #{str[i]}"
    #check if next char is valid
    index = i + 1
    # if it is, add to roman_numeral
    while numerals_key[roman_numeral] && index < str.length
      p str[index]
      roman_numeral += str[index]
      p roman_numeral
      index += 1
      i += 1
    end
    # if not, get val and add
    if i != str.length-1
      roman_numeral = roman_numeral[0..-2] # remove extra char
      i -=1
    end
    acc += numerals_key[roman_numeral]
    i += 1
  end
  acc
end

p roman_numeral_value("lviii") # 58
# p roman_numeral_value("iii") # 3
# p roman_numeral_value("mcmxciv") # 1994