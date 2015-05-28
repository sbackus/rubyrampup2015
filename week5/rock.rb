class Rock

	def initialize(window)
		images = ["images/rock1.png","images/rock2.png"]
		@image = Gosu::Image.new(window, images.sample, false)
		@width = @image.width
		@height = @image.height
		@x = rand(Game::WIDTH)
		@y = 0
		@z = 0
		@speed = 2
	end

	def update
		@y += @speed
	end

	def draw
		@image.draw(@x, @y, @z)
	end

	def center_x 
		@x + @width/2
	end

	def center_y
		@y + @height/2
	end

end