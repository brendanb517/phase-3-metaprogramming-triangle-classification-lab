class Triangle
  # write code here
  attr_accessor :l1, :l2, :l3, :sides
  
  def initialize l1, l2, l3
    @l1 = l1
    @l2 = l2
    @l3 = l3
    @sides = [@l1, @l2, @l3]
  end

  def kind
    if ((@l1 < @l2 + @l3) && (@l2 < @l1 + @l3) && (@l3 < @l1 + @l2))
      if @sides.include? 0
        raise TriangleError
      else
        if @sides.uniq.size == 1
          :equilateral
        elsif @sides.uniq.size == 2
          :isosceles
        elsif @sides.uniq.size == 3
          :scalene
        end
      end
    else
      raise TriangleError
    end
  end

  class TriangleError < StandardError
  end
end
