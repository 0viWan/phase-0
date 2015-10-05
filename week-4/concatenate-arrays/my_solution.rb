# Concatenate Two Arrays

# I worked on this challenge [by myself].


# Your Solution Below
=begin
def array_concat(array_1, array_2)
  return array_1 + array_2
end
=end

def array_concat(array_1, array_2)
	array_1.push (array_2)
	return array_1.flatten
end

