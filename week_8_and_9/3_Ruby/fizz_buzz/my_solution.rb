# U3.W8-9: 


# I worked on this challenge my myself.

# 2. Pseudocode
# create a method called super_fizzbuzz that takes an argument of an array.
# iterate over the array using map so that is the number is evenly divisable by 3 
# and not evenly divisable by 15


# 3. Initial Solution

def super_fizzbuzz(array)
    array.map do |number|
		if number % 3 == 0 and number % 15 !=0
			number = "Fizz"
		elsif number % 5 == 0 and number % 15 !=0
			number = "Buzz"
		elsif number % 15 == 0  
			number = "FizzBuzz"
		else
			number
		end
	end
end

# 4. Refactored Solution

def super_fizzbuzz(array)
    array.map do |number|
		if number % 15 == 0  
			number = "FizzBuzz"
		elsif number % 5 == 0
			number = "Buzz"
        elsif number % 3 == 0
    		number = "Fizz"
		else
			number
		end
	end
end




# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE

def assert
	raise "Code is broken!" unless yield
end

assert{ super_fizzbuzz([3]) == ["Fizz"]}
assert{ super_fizzbuzz([5]) == ["Buzz"]}
assert{ super_fizzbuzz([15]) == ["FizzBuzz"]}
assert{ super_fizzbuzz([1,2,3,4,5,6,7,15]) == [1,2,"Fizz",4,"Buzz","Fizz",7,"FizzBuzz"]}




# 5. Reflection 
# I found this to be a very straight forward and helped to improve my confidence with Ruby.
# My “Aha” moment came when I realized that if I order it correctly I could cut down on the 
# amount of code that was needed. This is also great to see something that may be potential 
# test in the future.