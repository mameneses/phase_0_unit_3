# U3.W7: BONUS Using the SQLite Gem

# I worked on this challenge by myself

require 'sqlite3'


$db = SQLite3::Database.open "congress_poll_results.db"


def print_arizona_reps
  puts "AZ REPRESENTATIVES"
  az_reps = $db.execute("SELECT name FROM congress_members WHERE location = 'AZ'")
  az_reps.each { |rep| puts rep }
end

def print_longest_serving_reps(minimum_years)  #sorry guys, oracle needs me, i didn't finish this!
  puts "LONGEST SERVING REPRESENTATIVES"
  reps_name_years = $db.execute("SELECT name, years_in_congress FROM congress_members WHERE years_in_congress > #{minimum_years}")
  reps_name_years.each { |name,year| puts "#{name} - #{year}" }
end

def print_lowest_grade_level_speakers(grade)
  puts "LOWEST GRADE LEVEL SPEAKERS (less than < #{grade} grade)"
  puts $db.execute("SELECT name FROM congress_members WHERE grade_current < #{grade}")
end

def print_state_reps(state)
	puts "#{state} REPRESENTATIVES"
	state_reps = $db.execute("SELECT name FROM congress_members WHERE location = '#{state}'")
	state_reps.each {|rep| puts rep}
end

def print_separator
  puts 
  puts "------------------------------------------------------------------------------"
  puts 
end


print_arizona_reps
# TODO - Make a method to print the following states representatives as well:
# (New Jersey, New York, Maine, Florida, and Alaska)
print_separator
print_state_reps('NJ')

print_separator
print_state_reps('NY')

print_separator
print_state_reps('ME')

print_separator
print_state_reps('FL')

print_separator
print_state_reps('AK')

print_separator
print_longest_serving_reps(35)
# TODO - Print out the number of years served as well as the name of the longest running reps
# output should look like:  Rep. C. W. Bill Young - 41 years

print_separator
print_lowest_grade_level_speakers (8)
# TODO - Need to be able to pass the grade level as an argument, look in schema for "grade_current" column


##### BONUS #######
# TODO (bonus) - Stop SQL injection attacks!  Statmaster learned that interpolation of variables in SQL statements leaves some security vulnerabilities.  Use the google to figure out how to protect from this type of attack.

# TODO (bonus)
# Create a listing of all of the Politicians and the number of votes they recieved
# output should look like:  Sen. John McCain - 7,323 votes (This is an example, yours will not return this value, it should just 
#    have a similar format)
# Create a listing of each Politician and the voter that voted for them
# output should include the senators name, then a long list of voters separated by a comma
#
# * you'll need to do some join statements to complete these last queries!


# REFLECTION- Include your reflection as a comment below.
# How does the sqlite3 gem work?  What is the variable `$db` holding?  
# Try to use your knowledge of ruby and OO to decipher this as well as h
# ow the `#execute` method works.  Take a stab at explaining the line 
# `$db.execute("SELECT name FROM congress_members WHERE years_in_congress 
#   > #{minimum_years}")`.  Try to explain this as clearly as possible for 
# your fellow students.  
# If you're having trouble, find someone to pair on this explanation with you.
#
#This exercise really opened up my eyes to how use SQL and ruby can be combined.
#
# The sqlite3 gem allows for ruby programs to interact with the sqlite database.
# $db is setting a global variable, and in this case, it is setting it to open the 
# sqlite database "congress_poll_results.db". So now when '$db' is called it is 
# saying to open that specific database. The 'execute' method called on the database
# is telling the database to execute the SQL statment which returns an array with 
# results of the statement. With those two lines of code now we are able to access
# a database and use neatly organized arrays to change in anyway that ruby allows. 
# Now that your SQLdata base and ruby can interact you can make ruby methods with arguments
# and use the arguments to input into your SQL statments to return exactly the information 
# you are looking for. 
#