grades = [84,29,57]

def grading_students(grades)
  # Write your code here
  new_grades = grades.map { |grade|
    if grade < 38
      p "less than 38, no round #{grade}"
      grade
    elsif grade % 5 > 2 
      p "round grade up #{grade}"
      grade + (5 - grade % 5)
    else
      p "dont round #{grade}"
      grade
    end
  }
  return new_grades
end

p grades
p grading_students(grades)
