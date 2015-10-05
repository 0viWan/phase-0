# Shortest String

# I worked on this challenge [by myself, with: ].

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Your Solution Below
def shortest_string(list_of_words)
  return nil if list_of_words.length == 0
  	short_stuff = list_of_words[0]
  	list_of_words.each do |word|
  		short_stuff = word if word.length < short_stuff.length
  	end

short_stuff
end

  


# short_stuff = list_of_words[0]

 # list_of_words[1..-1].each do |word|
  #	if word.length < short_stuff.length
 # 	   word = short_stuff
  #	end
#end
#return short_stuff
#end

  
