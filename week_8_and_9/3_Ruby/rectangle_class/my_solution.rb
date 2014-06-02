# U3.W8-9: Implement a Rectangle Class


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode



# 3. Initial Solution
class Rectangle
  attr_accessor :width, :height

  def initialize(width, height)
    @width  = width
    @height = height
  end

  def area
  	@width * @height
  end

  def perimeter
  	2*@width + 2*@height
  end

  def diagonal
  	Math.sqrt( @width**2 + @height**2)
  end

  def square?
  	if @width == @height
  		true
  	else
  		false
  	end
  end

  def ==(other)
    (other.width  == self.width && other.height == self.height ) ||
    (other.height == self.width && other.width  == self.height )
  end
end




# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE

test = Rectangle.new(10,20)
puts test.area == 200
puts test.perimeter == 60
puts test.diagonal == Math.sqrt(500)
puts test.square == false



# 5. Reflection 