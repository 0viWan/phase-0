# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
p array[1][1][2]
p array[1][1][2][0]



# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
p hash [:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
p nested_data[0]["array"][:hash]
p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

number_array.map! do |element|
   if element.kind_of?(Array)
     element.each {|inner| puts inner + 5}
  else
     puts element + 5
   end
end




# Bonus RELEASE 4: Startup Name Generator or "N-Dimensional Arrays"

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

startup_names.map! do |name|
  if name.kind_of?(Array)
    name.each {|name2|
      if name2.kind_of?(Array)
        name2.each {|name3| p name3 + "ly"}
      else p name2 + "ly"
      end
      }
  else p name + "ly"
  end
end

# OR another way playing around with recursion

def generate(array)
  array.each do |element|
    if element.kind_of?(String)
      p element + "ly"
    else
      generate(element)
    end
  end
end

generate(startup_names)

=begin
What are some general rules you can apply to nested arrays?

Nested arrays can get tricky visually because of the various layers that might exist: you could have various combinations of
nested arrays and/or hashes. Because of this, it is always to break down a nested array into its individual parts.
I would also start from the outside-layer bracket, and count how many brackets are left going inwards to make
sure I am at the correct place.

What are some ways you can iterate over nested arrays?

Iterating over a nested array is very similiar to iterating over a regular array using enumerables, with the added
bonus of having to be very aware of what layer or layers you are iterating over. For more complex layered nest like
in the bonus challenge, is was beneficial to appraoch the problem with recursion, or a method that calls itself. Recursive
methods have a base layer that DOES NOT call itself recursively and then sucessively call itself in a loop to
iterate over a block of code.


Did you find any good new methods to implement or did you re-use one you were already familiar with?
 What was it and why did you decide that was a good option?

I used what I knew; didn't want to confuse myself further and add a bunch of syntax or methods I have never used
before. I am just getting used to nested data collections and how to iterate over them, so I didn't want to
add even more layers to the code.

=end
