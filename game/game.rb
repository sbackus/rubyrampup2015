require 'gosu'
require './kayak'
require './rock'

class Game < Gosu::Window
  WIDTH = 600
  HEIGHT = 320
  def initialize
    super WIDTH, HEIGHT
    @backgroud = Gosu::Image.new("images/whitewater.jpg")
  	@kayak = Kayak.new
  	@rock = Rock.new
  end

  def update
  	@kayak.update
  	@rock.update
  end

  def draw
  	@backgroud.draw(0,0,-1,1.5,1.5)
  	@rock.draw
  	@kayak.draw
  end
end

window = Game.new
window.show