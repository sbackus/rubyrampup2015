class CoolInstructor
	
	# attr_accessor :is_cool

	def initialize
		@is_cool = true
	end
end

sam = CoolInstructor.new

sam.is_cool = false
puts sam.is_cool