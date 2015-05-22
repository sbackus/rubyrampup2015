my_favorite_things = ["whiskers on kitten","raindrops on roses","copper kettles","warm woolen mittens"]
# some_numbers = [1,2,5,3,7,4]

def a_few_of array
	rand1 = rand(array.length)
	rand2 = rand(array.length)
	while rand1 == rand2
		rand2 = rand(array.length)
	end
	new_array = []
	new_array << array[rand1]
	new_array << array[rand2]
	return new_array
end

print a_few_of my_favorite_things

# print a_few_of some_numbers