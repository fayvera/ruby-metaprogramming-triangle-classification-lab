require 'pry'
class Triangle
 attr_reader :sides

  def initialize(side_a, side_b, side_c)
    @sides = [side_a, side_b, side_c]
    @sides.sort!
  end
  def kind
      if @sides.any? {|side| side <= 0 } || ((@sides[0] + @sides[1]) <= @sides[2])
      raise TriangleError
    elsif self.sides.uniq.length == 2
        :isosceles 
    elsif self.sides.uniq.length == 1
        :equilateral
    else
        :scalene
    end
  end



class TriangleError < StandardError
end
end 