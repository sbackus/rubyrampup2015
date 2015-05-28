class Kayak

	def initialize(window)
		@window = window
		@image = Gosu::Image.new(@window, "images/kayak.png", false)
		@width = @image.width
		@height = @image.height
		@x = Game::WIDTH/2 - @width/2
		@y = Game::HEIGHT - @height
		@z = 1
		@speed = 4
	end

	def update
		if @window.button_down?(Gosu::KbLeft)
			@x -= @speed
		elsif @window.button_down?(Gosu::KbRight)
			@x += @speed
		end
	end

	def draw
		@image.draw(@x,@y,@z)
	end

	def x1
		@x
	end

	def x2
		@x + @width
	end

	def y1
		@y 
	end

	def y2
		@y + @height
	end
end