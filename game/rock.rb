class Rock
	def initialize
		@image = Gosu::Image.new("images/rock.png")
		@width = @image.width
		@height = @image.height
		@x = rand(Game::WIDTH-@width)
		@y = 0
		@z = 1
		@speed = rand(1..4)
	end

	def update
		@y += @speed
	end

	def draw
		@image.draw(@x,@y,@z)
	end

end