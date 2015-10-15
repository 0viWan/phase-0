=begin
6 Hours
Objectives:

- define method that will automatically create accountability groups from a list of names
- You'll want to make the groups from People in the cohort:
- Try to get everyone into an accountability group of 4 or 5 people, but at least a group of 3.
- Creative challenge, it can be as easy or difficult as you like it to be. 
- Decide what MVP (Minimum Value Product) will look like and what the output should be

..........
Pseudocode
..........

INPUT: A list of students in my cohort (array?)
OUTPUT: Students grouped into Accountability Groups of 3-5 students but not less than 3.
        Maybe a nested array?

1) Make an array 'copperheads' to hold a list everyone's names in the cohort as a list.
2) Define a method that takes 'copperheads' array as the argument.
3) Shuffle the array (is there a 'shuffle' method?)
4) How many students are there? If there are 6 or more, they will be split up.
5) Create a group of 4-5 students as long as there are at least 3 students. Create a group of
three if only 3 students remain.
6) If there are less than 3 students (1 or 2 students left), they will be put into a group that
split up to be put in groups that have less than 5 students.
7) Done when there are no students left.

=end
=begin
copperheads = ["Joshua Abrams","Syema Ailia","Kris Bies","Alexander Blair","Andrew Blum",
"Jacob Boer","Steven Broderick","Ovi Calvo","Danielle Cameron","Eran Chazan","Jonathan Chen",
"Un Choi","Kevin Corso","Eric Dell Aringa","Eunice Do","Ronny Ewanek","John Paul Chaufan Field",
"Eric Freeburg","Jeffrey George","Jamar Gibbs","Paul Gaston Gouron","Gabrielle Gustilo","Marie-France Han",
"Noah Heinrich","Jack Huang","Max Iniguez","Mark Janzer","Michael Jasinski","Lars Johnson",
"Joshua Kim","James Kirkpatrick","Christopher Lee","Isaac Lee","Joseph Marion","Kevin Mark",
"Bernadette Masciocchi","Bryan Munroe","Becca Nelson","Van Phan","John Polhill","Jeremy Powell",
"Jessie Richardson","David Roberts","Armani Saldana","Chris Savage","Parminder Singh",
"Kyle Smith","Aaron Tsai","Douglas Tsui","Deanna Warren","Peter Wiebe","Daniel Woznicki",
"Jay Yee","Nicole Yee","Bruno Zatta"]
=end

#copperheads = ["Han Solo","Leia Organa","Luke Skywalker","Chewbacca","R2-D2","C-3PO","Lando","jedi","jedi","jedi","jedi","a","b","c","d","e","f","g","h"] #11 Count Example
#copperheads = ["Han Solo","Leia Organa","Luke Skywalker","Chewbacca","R2-D2","C-3PO"]
#copperheads = ["Han Solo","Leia Organa","Luke Skywalker","Chewbacca","R2-D2","C-3PO","Lando"]
#copperheads = ["Han Solo","Leia Organa","Luke Skywalker","Chewbacca","R2-D2","C-3PO","Lando","jedi"]
copperheads = ["Han Solo","Leia Organa","Luke Skywalker","Chewbacca","R2-D2","C-3PO","Lando","jedi","jedi"]

def group(copperheads)
	group_size = copperheads.count
end

p group(copperheads)

#Initial Solution:
=begin
def divvy_group(copperheads)
	divvying = copperheads.clone.shuffle
	divvied = []

	if copperheads.length > 6
		while divvying.length >= 3
			divvied << divvying.slice!(0..3) #the "slice!" method will take out the the names from the group so they are not repeated once they've been grouped
		end									 #Array index (0..3) are groups of 4 name-strings, (potentially a 3 name-string too)
		if divvying.length == 2
			divvied[0] << divvying[0]        #after groups of four have been made this accounts for residual
			divvied[1] << divvying[1]
		elsif divvying.length == 1
			divvied[0] << divvying[0]
		else
		end
	elsif divvying.length == 6
		2.times { divvied <<divvying.slice!(0..2) } #if the cohort only had 6 people this would divvy them into 2 groups of 3

	else
		divvied << divvying
	end
return divvied
end

p divvy_group(copperheads)
=end

#Refactored Solution:



def divvy_group(copperheads)
	divving = copperheads.clone.shuffle!  #permanentyl shuffle the order of the array of students
	divvied = []                #set empty nest array

	if copperheads.size <=5
		divvied = copperheads
	elsif copperheads.size % 5 >= 3 || copperheads.size % 5 == 0
		divvied = divving.each_slice(5).to_a
	elsif copperheads.size % 4 >= 3 || copperheads.size % 4 == 0
		divvied = divving.each_slice(4).to_a
	else
		divvied = divving.each_slice(3).to_a
	end
divvied
end

p divvy_group(copperheads)



=begin
What was the most interesting and most difficult part of this challenge?

This challenge was both interesting and difficult because of the inherent creativity that comes
along with the assignment. You can make it as complicated or easy as you would like it; such open 
parameters can lead to a lot of experimentation, but with that can come a lot of confusion if you are 
not organized or have sound logic with the flow of your method. It was interesting because I decided to
scrap a lot of my initial solution in the refactor, and approached it from a different angle just to
see if my output would comes out better if I edited my code down; it did. What also made this challenge 
difficult was that until now, we have always had rspec tests to verify if we are on the right track;
this exercise was so open-ended and sans rspec, so I had to continually run the code to make sure
I was on track with the objective. This assignment took a lot of debugging error messages throughout.

Do you feel you are improving in your ability to write pseudocode and break the problem down?

I think I am improving in my ability to write pseudocode and break problems down, but I am nowhere
near perfect and still have a lot to learn; sometimes I write a bunch of thoughts out with my pseudo,
and even after that I feel stumped with the initial approach to my solution. I am still learning that
sucess reward experimentation, and to not be timid when trying approaches, methods, and syntax that seems
foreign to me: just part of the learning process. 

Was your approach for automating this task a good solution? What could have made it even better?

I think that after spending so much time doing this I whittled the problem down to a somewhat good and
straightforward solution, but if I had more time I would have tried to complete more of the optional askings
in the prompt. I even exceeded the time I alotted for my MVP, so I didn't want to consume myself any
further with trying to make this a much more complicated program. Though I got the program to randomize
the cohort on every run, I was not able to "save" or "store" past outputs: I'm still not sure how to do this.
I could also have a more friendly interface for users, ask users for input, number/name the groups formed, etc.

One thing I've noticed is depending how you siphoned off the number of people per group, you may end up with odd 
pairing results: for example, you may have a ton of 5-person groups, and then one 3-person group. I wanted
to find a way to extract a person from a "full-group" to even out this effect and add that person to a 
less full one. Didn't have time.

What data structure did you decide to store the accountability groups in and why?

I stored the data structure in a nested-array. This was the easiest way to make a storage and retrieval method
that placed the list of names (sliced and shuffled) as an element in a separate array. It just
made sense for the logical flow of the method here.

What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?

In the initial solution I looked up how to use the "shuffle" and "slice" method, which were crucial to this problem.
I didn't really use any new methods in the refactor; just looked at the problem from a different angle and played around with
the code a lot. I experimented with the flow control ordering, the use of "bash", and how the problem would
change if I altered the parameters for things like the "slice" method. One hard thing is the method you have
in place might not work that great depending on the scale of the cohort size, so I played around with that
a bunch to scale it around and see what happens. It would be interesting to re-write the program to see
if the user would ideally like to choose groups-size (3-5) or maybe even siphon off group-size number (3-5)
depending on how big the overall cohort is. 
=end



