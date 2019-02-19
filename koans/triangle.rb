# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  values = [a, b, c]
  uniqueValues = values.uniq
  sortedValues = values.sort
  
  raise TriangleError unless values.all? {|value| value > 0}
  raise TriangleError if uniqueValues.length === 2  && sortedValues[2] >= sortedValues[0] + sortedValues[1]

  return :equilateral if uniqueValues.length === 1
  return :isosceles if uniqueValues.length === 2
  return :scalene

end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
