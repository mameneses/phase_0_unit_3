# U3.W8-9: Numbers to English Words


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode



# 3. Initial Solution
def in_words(number)

	if number ==10
		solution = "ten"
	elsif number == 11
		solution = "eleven"
	elsif number == 12
		solution = "twelve"
	elsif number == 13
		solution = "thirteen"
	elsif number == 14
		solution = "fourteen"	
	elsif number == 15
		solution = "fifteen"		
	elsif number == 16
		solution = "sixteen"
	elsif number == 17
		solution = "seventeen"
	elsif number == 18
		solution = "eighteen"
	elsif number == 19
		solution = "nineeen"
	end


tens_digit=	number/10
ones_digit= number%10

	if ones_digit == 1
		first_num = "one"
	elsif ones_digit == 2
		first_num = "two"
	elsif ones_digit == 3
		first_num = "three"
	elsif ones_digit == 4
		first_num = "four"
	elsif ones_digit == 5
		first_num = "five"
	elsif ones_digit == 6
		first_num = "six"
	elsif ones_digit == 7
		first_num = "seven"
	elsif ones_digit == 8
		first_num = "eight"
	else ones_digit == 9
		first_num = "nine"
	end

	if tens_digit == 1
		second_num = "one"
	elsif tens_digit == 2
		second_num = "twenty"
	elsif tens_digit == 3
		second_num = "thirty"
	elsif tens_digit == 4
		second_num = "fourty"
	elsif tens_digit == 5
		second_num = "fifty"
	elsif tens_digit == 6
		second_num = "sixty"
	elsif tens_digit == 7
		second_num = "seven"
	elsif tens_digit == 8
		 second_num = "eight"
	else tens_digit == 9
		second_num = "nine"
	end

	if number > 20	and ones_digit !=0
		solution = second_num + " " + first_num
	end

	if number <= 9
		solution = first_num 
	end

	if ones_digit == 0 and number !=10
		solution = second_num
	end

	solution
end
			


# 4. Refactored Solution






# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE

puts in_words(1) == "one"
puts in_words(9) == "nine"
puts in_words(10) == "ten"
puts in_words(20) == "twenty"
puts in_words(22) == "twenty two" 
puts in_words(65) == "sixty five"



# 5. Reflection 