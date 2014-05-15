# U3.W7: Build an Electronic Grocery List!
 
# Your full names:
# 1.Matias Meneses
# 2.Joey Rosztoczy
 
# User Stories (As many as you want. Delete the statements you don't need)
# With your partner, talk about what you would like to do with your grocery list. Start each statement with "As a user, I want to ..." These are what we call "user stories."
# As users we would like to be able to add items to the list and a quantity for each item. We would also want to be able to
# check off items once they have been put into the cart. we would want to retunr/display the current list. be able to 
# remove items from the list. Be able to name/date the list.
#
 
# Pseudocode
# create a class 'grocery_list'
# intialize the with grocery_item as argument
# create a hash 'grocery_item' 
# create a method to add grocery_item to list
# create a method to clear grocery_item from list
# create a method to remove an item from the list
# create a method to check off an item from the list
# create a method that displays the list
 
# Your fabulous code goes here....


class Grocery_List
    
    def initialize
        @grocery_list = {}
    end
    
    def add_item(item, quantity)
        @grocery_list[item] = quantity
        puts @grocery_list
    end
    
    def clear_list
        @grocery_list = {}
    end
    
    def subtract_item(subtracted_item)
        @grocery_list.delete_if { |key, value| key == subtracted_item } 
    end
    
    def check_off_list(checked_off_item)
        puts "#{checked_off_item} is Checked off!"
        @grocery_list.each_key do |key|
             checked_off_item == key  ? @grocery_list[key] = "Done!" : "not here!"
        end
    end
    
    def show_list
        puts @grocery_list
    end
end

# REFACTORED SOLUTION



# DRIVER CODE GOES HERE. 
 
def assert
    raise ArgumentError, "We have a problem at this line!" unless yield
end

 a = Grocery_List.new
a.add_item("apples", 2) 
a.show_list
a.check_off_list("apples")
a.show_list
a.add_item("corn", 5)
a.add_item("fish", 1)
a.show_list
a.subtract_item("corn")
a.show_list

# REFLECTIION