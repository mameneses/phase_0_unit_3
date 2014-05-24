# U3.W8-9: 


# I worked on this challenge by myself.

# 2. Pseudocode
# define a method called is_fibonacci? that accepts an argument of a number
# create an array called fibonacci_sequence which includedes [0,1] 
# until the fibonacci_sequence position is greater than the number argument 
#  push the sum of the previouse two positions into the fibonacci sequence array
#  use .include? to see if the argument number is included within the fibonacci sequence array.

# 3. Initial Solution

def is_fibonacci?(num)
	fibonacci_sequence = [0,1]
	until fibonacci_sequence[-1] >= num
	fibonacci_sequence << fibonacci_sequence[-1]+fibonacci_sequence[-2]
	end
	fibonacci_sequence.include?(num)
end

# 4. Refactored Solution

# i could refactor the name of the fibonacci_sequence to something shorter
# but i feel that it is easier to understand the problem as a whole without
# it being abbreviated. 




# 1. DRIVER TESTS GO BELOW THIS LINE

def assert
	raise "Thats no a fibonacci number!" unless yield
end

assert{ is_fibonacci?(144) == true }
assert{ is_fibonacci?(145) == false }
assert{ is_fibonacci?(6765) == true }
assert{ is_fibonacci?(6790) == false}




# 5. Reflection 
# I found this problem to be interesting. It helped to understand the 
# fibonacci_sequence and use similar notation as the descriptions of what 
# the sequence is copmrised of. I was able to build off past experience and 
# use the include? method to shorten my code. 