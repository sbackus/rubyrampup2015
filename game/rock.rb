class Rock

	attr_reader :y

	def initialize
		@image = Gosu::Image.new("images/rock.png")
		@width = @image.width
		@height = @image.height
		@x = rand(Game::WIDTH-@width)
		@y = -@height
		@z = 1
		@speed = rand(1..4)
	end

	def center_x
		@x + @width/2
	end

	def center_y
		@y + @height/2
	end

	def update
		@y += @speed
	end

	def draw
		@image.draw(@x,@y,@z)
	end

	def is_off_screen?
		@y > Game::HEIGHT
	end

end