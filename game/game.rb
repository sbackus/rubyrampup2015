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
    @rock_spawn_rate = 0.01
    @rocks = []
  end

  def update
    if rand < @rock_spawn_rate 
      @rocks << Rock.new
    end
  	@kayak.update
    @rocks.each do |rock|
      rock.update
      if rock.y > HEIGHT
        @rocks.delete(rock)
      end
    end
  end

  def draw
  	@backgroud.draw(0,0,-1,1.5,1.5)
  	@rocks.each do |rock|
      rock.draw
    end
  	@kayak.draw
  end
end

window = Game.new
window.show