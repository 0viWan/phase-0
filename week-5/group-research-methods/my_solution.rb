# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#

# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 3
def my_array_sorting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_sorting_method(source)
   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 4 (Ovi Calvo)
=begin
Pseudocode:
Sometimes you no longer need data that matches something. 
Create a my_array_deletion_method! that takes an array and a letter, 
and deletes all the strings that contain that letter. 
This should modify the original because we now permanently hate that letter.
Example:
my_array_deletion_method!(i_want_pets, "a")
#=> ["I", 3, "pets", "but", "only", 2]
-Input: An array and a letter
-Output: An array minus any strings that contain that letter

=end

def my_array_deletion_method!(source, thing_to_delete)
  source.each do |items|
    if items.to_s.downcase.include?(thing_to_delete)
      source.delete(items)
    end
  end
  source
end


def my_hash_deletion_method!(source, thing_to_delete)
  source.each do |key, value|
    if key == thing_to_delete
      source.delete(key)
    end
  end
  source
end

=begin
-Identify and describe the Ruby method(s) you implemented.

 each: this method iterates through an array or hash; also stated, this method calls a given code block
 for 'each' element in that block, and passes that element as a parameter to be evaluated.

 downcase: this methods returns a copy of a string with all the uppercase letters replaced as 
 lowercase ones.

 include?: this method returns 'true' if the given object is 'included' in the parameter that is being examined.
 returns 'false' otherwise. 

  to_s: takes an object and returns that as its string equivalent.

 delete: this methods deletes all times from the parameter in question that are equal ("==") to the
 object. this will also return the last deleted item or 'nil' if no matching item is found.

 TEACH OTHERS:

 The first method I devised was a destructive one called 'my_array_deletion_method!'. This method works 
 by changing the 'source' (the array which is taken as an argument). Using the '.each' method to iterate 
 through the source array, to scan the various 'items' (in the parallel line "pipes") to check if the
 'items' includes (using the '.include?' method) the thing we are wishing to delete. In this case the 
 'thing_to_delete' is a letter string taken as an argument in this method. If the 'items' in the array
 have the letter we are trying to get rid of, I called the '.delete' method to nix it from the array.
 The method, being destructive has a bash (!), so the array object is now permanently revised.

 The second method I made was the destructive 'my_hash_deletion_method!'; this likewise was very similar
 to the logic of deleting an item permanently from an array using a bash (!), only this time 
 the source we are examining is a hash, with respective key-value pairs. Once again using the '.each' method
 to iterate through the source hash, we evaluate the |key, value| of that hash to check if the 
 'thing_to_delete' paramater equates to a key in our hash. If there is a match and the key we 
 wish to delete is found, the '.delete' method is performed to take it out of the source hash 
 permanently.

The only real suggestion I have for RubyDocs usage is this: If you are going shopping, it's easier to
find something when you know what you are looking for. RubyDocs is a very well organized forum, and
if you are looking for help on the syntax of array methods, you are going to find that stuff 
expectedly in the 'array' section. Also, the method names are often logically poised to be what you would
expect them to do. For example, deleting and item from an array or hash can be done with the ".delete" method.
Simple!

=end

# Person 5
def my_array_splitting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_splitting_method(source, age)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#