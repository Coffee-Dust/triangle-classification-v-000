class Triangle
  # write code here
  attr_accessor :sides
  def initialize(length1, length2, length3)
    @sides << [length1, length2, length3]
    @sides.flatten!
  end

  def kind
    if @sides.any? {|side| side > 0}

    else

    end
    case @sides.uniq.length
    when 1
      :equilateral
    when 2
      :isosceles
    when 3
      :scalene
      
  end

  end

  class TriangleError < StandardError
  end
end
