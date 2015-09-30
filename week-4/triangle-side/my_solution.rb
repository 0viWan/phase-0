# I worked on this challenge [with: Kyle Smith].

=begin Triangle Method will take the lengths of the sides of a triangle 
as 3 non-negative numbers as input (a,b,c); it should return "true" if the three
numbers could form the side lengths of a triangle and false otherwise.
-account for triangle geometry rules
-Scalene, Isoceles, and Equilateral triangles
-account for side lenth of "0" as a false return
-arguments don't correspond to specific sides
=end
# Your Solution Below

def valid_triangle?(a, b, c)
  if a <=0 || b<=0 || c<=0
  return false
  elsif a === b && a === c
  return true

  elsif a >= b && a >= c
  if a < b + c
  return true
  else
  return false
  end
  elsif b >= c && b >= a
  if b < a + c
  return true
  else
  return false
  end
  elsif c >= a && c >= b
  if c < a + b
  return true
  else
  return false
  end
  else
  return false
  end
end


=begin
def valid_triangle?(a, b, c)
  if (a == 0 || b == 0 || c == 0) 
  	return false
  elsif ((a + b <= c) || (b + c <= a) || (a + c <= b)) #no side of a triangle can be as large or larger than the sum of the other two sides
  	return false
  elsif ((a == b) && (b == c) && (a == c)) #equilateral triangle
  	return true
  elsif ((a == b) || (b == c) || (a == c)) #isoceles triangle
  	return true
  else
  	return true #scalene
  end
  end

=end

  