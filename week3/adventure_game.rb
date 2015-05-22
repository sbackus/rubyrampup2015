puts "You’re a traveler on a long journey.\nAfter many miles, you come to a fork in the road.\nTo the North is a small village.\nTo the East is dark cave.\nWhich way do you go?\nNorth or East?"
direction = gets.chomp.downcase

if direction == "north"
	puts "As you approach the village the sun is setting and farmers are returning home from the fields.  Your feet are tired and dusty.  You're looking forward to a bath, a meal and a bed."
elsif direction == "east"
	puts "The entrace to the cave is damp and dark."
	puts "You need something to light the way."
	puts "What do you use for a light source?"
	print "a "
	light = gets.chomp.downcase
	puts "You rummage in your backpack and pull out your #{light}.  You hold it high above your head and it shines brightly"
	puts "You stepforward using your #{light} to brush away the myst and cobwebs."
	puts "The cave twists and turns.  At places it is so narrow that you have to crawl on hands and knees to get through."
	puts "Eventually you come to a deep underground lake."
	puts "According to legend a giant venomous snake named Anguis lives in this lake. She guards an ancient treasure at the other side."
	puts "What is the treasure you seek?"
	treasure = gets.chomp.downcase
	puts "You've come to find #{treasure}"
	puts "The thought of Anguis lurking in the dark waters of the lake turns your stomach into a cold lump in your belly."
	puts "But the thought of #{treasure} makes you swallow your fear.  Nothing will keep you from #{treasure}."
	puts "You look around the cavern and consider your options."  
	puts "You could Sneak around the edge of the lake.  She might not notice you if you're very quite."
	puts "Or you could try to Fight and kill her. Maybe if you're quick and strong enough you could beat her."
	puts "What do you do?  Fight or Sneak?"
	action = gets.chomp.downcase
	if action == "fight"
		puts "You draw your sword from it's sheath and hold your #{light} high above your head."
		puts "You kick a stone into the water and call out a challenge to the great serpent 'Anguis I have come to slay you! Today will be your last!'"
		puts "Your words echo through the cave.  The stone sinks into the cold water. Ripples glide out into the darkness."
		puts "Then all is quiet."
		puts "You wait. Your ears and eyes strain against the shadowy silence." 
		puts "Suddenly a giant tail bursts out of the water and knocks you on your back. Your #{light} falls to the ground."
		puts "You stumble to your feet as Anguis emerges from the water and coils herself on the slimy rocks"
		puts "She flicks the air with her tongue and breathes a soft, sinister 'hssssss'"
		puts "Your palms are"

	elsif action == "sneak"
		puts "You start to tiptoe around the edge of the lake."
		puts "The water is as still as a corpse in a tomb."
		puts "Suddenly there's a 'hsssssss' from accross the lake."
		puts "What you thought was a boulder begins to uncoil itself like a living tree-trunk-sized rope." 
		puts "Anguis flicks the air with her tongue and slides into the water."
		puts ""
	else 
		puts "Thinking about #{action} reminds you of the mad old wizard you met in Brewbog Swamp and the polymorph potion he gave you.  Perhaps you could use it to get accross the lake."
		puts "You pull the potion out of your backpack.  It swirls green and purple.  It smells like rotten eggs and burnt sugar."
		puts "Do you drink it? Yes or No?"
		drinks = gets.chomp.downcase
		if drinks == "yes"
			puts "You plug your nose and chug the potion."
			puts "What kind of animal do you want to turn into?"
			print "a "
			animal = gets.chomp.downcase
			puts "You concentrate and imagine the most perfect #{animal} you can think of."
			puts "In a puff of green smoke, you turn into a beautiful #{animal}."
			puts "Unfortunately Anguis loves to eat #{animal}. "
			puts "Before you can even blink your #{animal} eyes, she darts out of the shadows and sinks her fangs into your flesh."
			puts "Your blood turns to jelly and she swallows you whole."	
		elsif drinks == "no"
			puts "You pour the polymorph potion into the water."
			puts "What kind of animal do you want Anguis to turn into?"
			print "a "
			animal = gets.chomp.downcase
			puts "You concentrate and imagine the most ugly #{animal} you can think of."
			puts "Anguis wriths and thrashes in pain and anger, trying to resist the magical transformation. Her monstrous body churns the lake into foam." 
			puts "Then in a puff of purple smoke she turns into a weird little #{animal}"
			puts "Unused to her new body she awkwardly tries to swim away from you before sinking into the water." 
			puts "You make your way to the other side of the lake and pick up #{treasure}."
			puts "#{treasure} is even more wonderful than you imagined."
			puts "You carefully put #{treasure} in your backpack."
			puts "Now that you've found #{treasure} nothing will ever be the same again."
		else 
			puts "You're about to #{drinks} but then the rock that your standing on slips our from under you.  You fall backwards and whack your head on a rock.  Everything goes black."
			puts "Anguis pulls you down into the cold depths of the lake.  Your #{light} flickers and goes dark."
		end
	end
elsif direction == "west" || direction == "south"
	puts "You wander off the path and get lost in the wilderness.  You are bitten by a viper and die a painful oozing death. Your body is eaten by wild ferrets."
else
	puts "You stand in the road pondering the illusion of choice, the essense of the universe and the ephemeral nature of life. You decide to become an ascetic and live the rest of your life in the mountains eating yams and beans."
end

puts "The end."