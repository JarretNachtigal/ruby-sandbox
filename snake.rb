require 'ruby2d'
set title: "Snake Game"
set background: "black" # default is black
set width: 500, height: 500 # hash syntax
set diagnostics: true
set fps_cap: 60
# set( { :title => "Hello World!" } ) this is what is happening in dsl
# can also get with get: width

class Snake
  def initialize()
    @snake_arr = [SnakeNode.new()]
  end

  # this method will loop through all snake nodes on the players snake
  # it will move in the correct direction, then grab the next direction from the node in front
  # if it is the first node, it will take its direction from the loop WASD/arrowkeys
  def move(new_direction = nil)
    @snake_arr.each.with_index() do |node, index|
      index
      # these should move the square one space over
      if node.direction == "up"
        
      elsif node.direction == "down"
        
      elsif node.direction == "left"
        
      elsif node.direction == "right"

      else
        raise StandardError.new "direction is borked"
      end
    end
    # get direction
    if node.first == false # normal nodes
      node.direction = @snake_arr[index-1].direction
    elsif new_direction # if user has input a new direction, set first direction to it
      node.direction = new_direction
    else
      raise StandardError.new "first direction change is borked"
    end
  end
end

# default init - move right, spawn top left, is first node
class SnakeNode
  attr_accessor :direction, :first, :s
  def initialize(direction = "right", x=0, y=0, first = true)
    @direction = direction
    @first = first
    @s = Square.new(size: 10, x: x, y: y)
  end
end

# init snake and tick
snake = Snake.new()
tick = 0
new_direction = nil
# window update loop
update do
  # puts tick
  if tick % 30 == 0
    # game loop
    snake.move(new_direction)
  end
  tick += 1
end
show