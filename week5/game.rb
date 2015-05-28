require 'gosu'
require './kayak'
require './rock'

class Game < Gosu::Window
  WIDTH = 600
  HEIGHT = 400


  def initialize
    super WIDTH, HEIGHT
    @background = Gosu::Image.new(self, "images/whitewater.jpg", true)
    @kayak = Kayak.new(self)
    @rocks = []
    @game_over = false
  end

  def update
  	if !@game_over
	  	@kayak.update
	  	if rand < 0.01
	  		@rocks << Rock.new(self)
	  	end

	  	@rocks.each do |rock|
	  		rock.update
	  		if collision?(@kayak, rock)
	  			@game_over = true
	  		end
	  	end
	end
  end

  def draw
  	@background.draw(0, 0, -1)
  	@kayak.draw
  	@rocks.each do |rock|
  		rock.draw
  	end

  	if @game_over
  		@font = Gosu::Font.new(50)
  		@font.draw("Game Over", WIDTH/2-100, HEIGHT/2-50, 5)
  	end

  end

  def collision?(k, r)
  		r.center_x > k.x1 &&
		r.center_x < k.x2 &&
		r.center_y > k.y1 && 
		r.center_y < k.y2 
  end

end

window = Game.new
window.show