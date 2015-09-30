# Calculate a Grade

# I worked on this challenge [with: Kyle Smith ].
# method get_grade that accepts and average (integer)
# and returns a string of a letter grade (ie A,C,F)
# do not worry about + and - grading
# Your Solution Below

def get_grade(grade)
	if grade >= 90
		return "A"

	elsif grade >= 80 
		return "B"

	elsif grade >= 70 
		return "C"

	elsif grade >= 60 
		return "D"

	else
		return "F"
	end
end

=begin			(*this is an alternate solution I came up with that passes the test but it more verbose*)
def get_grade(grade)
	if grade >= 90
		return "A"

	elsif grade >= 80 && grade <= 89
		return "B"

	elsif grade >= 70 && grade <= 79
		return "C"

	elsif grade >= 60 && grade <= 69
		return "D"

	else grade <= 59
		return "F"
	end
end
=end

