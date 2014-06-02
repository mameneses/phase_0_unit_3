# U3.W8-9: OO Basics: Student


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode



# 3. Initial Solution

 students = [[ "first_name": "Alex", "scores": [100,100,100,0,100]],
			 ["first_name": "Emma", "scores": [90,90,85,80,80]],
			 ["first_name": "Carl", "scores": [80,80,75,70,70]],
		     ["first_name": "Mike", "scores": [70,70,65,60,60]],
	         ["first_name": "Pete", "scores": [60,60,55,50,50]]

class Student
  attr_accessor :scores, :first_name
  def initialize(students_scores)   #Use named arguments!
    @students = []

  end

  def first_name
  	students_scores[]
  end


end


# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE
# Tests for release 0:

p students[0].first_name == "Alex"
p students[0].scores.length == 5
p students[0].scores[0] == students[0].scores[4]
p students[0].scores[3] == 0


# Tests for release 1:

p students[0].average == 80
p students[0].letter_grade == 'B'

# Tests for release 2:

p linear_search(students, "Alex") == 0
p linear_search(students, "NOT A STUDENT") == -1





# 5. Reflection 