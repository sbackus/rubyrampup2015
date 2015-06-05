class Kayak
	def initialize
		@image = Gosu::Image.new("images/kayak.png")
		@width = @image.width
		@height = @image.height
		@x = Game::WIDTH/2 - @width/2
		@y = Game::HEIGHT-@height
		@z = 1
		@speed = 4
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

	def update
		if Gosu::button_down? Gosu::KbLeft
			@x -= @speed
		elsif Gosu::button_down? Gosu::KbRight
			@x += @speed
		end
	end

	def draw
		@image.draw(@x, @y, @z)
	end
end