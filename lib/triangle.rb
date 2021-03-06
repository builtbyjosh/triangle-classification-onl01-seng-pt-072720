class Triangle
  # write code here
  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind
    if (@side_1 <= 0) || (@side_2 <= 0) || (@side_3 <= 0)
      raise TriangleError
    elsif (@side_1+@side_2 <= @side_3) || (@side_1+@side_3 <= @side_2) || (@side_2+@side_3 <= @side_1)
      raise TriangleError
    else
      if @side_1 == @side_2 && @side_1 == @side_3
        return :equilateral
      elsif @side_1 == @side_2 || @side_2 == @side_3 || @side_3 == @side_1
        return :isosceles
      else
        return :scalene
      end 
    end 
  end

  class TriangleError < StandardError
    def message
      "Not a valid Triangle."
    end
  end
end
