require 'gosu'

class Game < Gosu::Window
  WIDTH = 600
  HEIGHT = 320
  def initialize
    super WIDTH, HEIGHT
    @backgroud = Gosu::Image.new("images/whitewater.jpg")
  end

  def update
  end

  def draw
  	@backgroud.draw(0,0,-1,1.5,1.5)
  end
end

window = Game.new
window.show