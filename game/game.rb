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
    @collision_sound = Gosu::Sample.new "sounds/Explosion24.wav"
    @collision_sound_timer = 0
    @sound_cooldown_time = 100
  end

  def update
    if @collision_sound_timer > 0
      @collision_sound_timer -=1
    end

    if rand < @rock_spawn_rate 
      @rocks << Rock.new
    end
  	@kayak.update
    @rocks.each do |rock|
      rock.update
      if collision?(rock, @kayak) && @collision_sound_timer == 0
        @collision_sound.play
        @collision_sound_timer = @sound_cooldown_time
      end
      if rock.is_off_screen?
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

  def collision? rock, kayak 
    rock.center_x > kayak.x1 &&
    rock.center_x < kayak.x2 &&
    rock.center_y > kayak.y1 &&
    rock.center_y < kayak.y2
  end

end

window = Game.new
window.show