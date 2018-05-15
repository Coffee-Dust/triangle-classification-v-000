class Triangle
  # write code here
  attr_accessor :sides
  def initialize(length1, length2, length3)
    @sides = []
    @sides << [length1, length2, length3]
    @sides.flatten!
  end

  def kind
    if @sides.any? {|side| side > 0}
      case @sides.uniq.length
      when 1
        :equilateral
      when 2
        :isosceles
      when 3
        :scalene
    end
    else
      raise TriangleError
    end
  end

  private
  def valid?
    sums = sides.combination(2).collect {|a, b| a + b}
    sums.collect {|sum| sides.all? {|side| sum > side } }.all? {|e| e == true}
  end

  class TriangleError < StandardError
  end
end
