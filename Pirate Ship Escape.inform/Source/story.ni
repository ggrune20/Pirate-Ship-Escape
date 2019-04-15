"Pirate Ship Escape" by ggrune20

When play begins: 
say "You are a British sailor who is being held captive on a pirate ship. It is night time and most of the pirates are asleep, this is your only chance to get off of the pirate ship and make it out alive. However, you also know the Captain has treasure he took from you. If you take back your treasure and escape the ship with your life you will be a legend amongst your British sailors. Good luck!"

The description of the player is "You are tall and skinny but also strong and defined from moving crates and pulling ropes on the ships you have been on throughout your life. Your skin is bronze from the sun and your face is slightly weathered from spending years at sea. You are wearing your sailors hat, a white cotton undergarment, and baige pants. The pirates took your shoes so you are barefoot."

Holding Cell is a room. The description is "The jail cell the pirates are keeping you hostage in. There is a tiny barred off window that allows you to see the full moon, the stars in the night sky, and the oil colored ocean. The floor is made out of wooden floorboards and the walls are wood as well. To the north there is an old and rusty jail door." 

[first puzzle- breaking out of jail cell]

The Jail Door is north of Holding Cell and south of Cargo Hold. The Jail Door is a door. The Jail door is lockable and locked. The description is "A door with metal bars keeping you caged in the holding cell. This is your only way out. It is old and rusty from the ocean's salt water. It is very weak and could possibly be pried open."

[a section of the jail door is rusty and loose. you need to pry it open.]

loose floorboard is an object. It is in Holding Cell. The description is "a two by four plank of hard and very sturdy wood."

[you need to break off the loose floorboard]

Understand "pry [something] with [something]" as prying it with. prying it with is an action applying to two things. 

Understand "pry open [something] with [something]" as prying it with. 

Instead of prying the jail door with loose floorboard:
	say "you break open the jail door. North towards the cargo hold is the only way you can go.";
	now the jail door is open. 

Cargo Hold is a room. The description is "A room where there is pirate clothing and other cargo. The Holding Cell is to the south and the Crew's Quarters are to the north. Be careful though, I wouldn't recommend going into the Crew's quarters... you don't look like a pirate at all. If you want to go up, there is a small ladder you can climb to the Center Deck."

eyepatch is an object. It is in Cargo Hold. It is wearable. The description is "a small patch of leather and string meant to be worn in front of the eye."

pirate coat is an object. It is in Cargo Hold. It is wearable. The description is "an item of pirate clothing. A coat you usually wear over a shirt."

Crew's Quarters is a room. It is north of Cargo Hold. "This is the place where the pirates sleep at night and relax when they can. The Cargo Hold is to the south."

An every turn rule:
	If player is in Crew's Quarters:
		If player is wearing eyepatch:
			If player is wearing pirate coat:
				say "you were able to sneak into the Crew's Quarters unnoticed.";
			otherwise: 
				end the story finally saying "A pirate noticed you and you were caught. You Lose.";
		otherwise:
			end the story finally saying "A pirate noticed you and you were caught. You Lose."

[player needs to wear pirate clothing to get into crew's quarters]

Captain's Quarters is a room. The description is "The place where the Captain lives when he is not on the deck bossing his crew around."

Entry is north of Captain's Quarters and south of Center Deck. Entry is a door. Entry is lockable and locked. The description is "A large wooden door with intricate designs of skulls and crossbones. It is locked shut. There must be another way to get into the Captain's Quarters."

bread is an object. It is in Captain's Quarters. The description is "great food for when you are hungry."

roof is a room. It is above Captain's Quarters. The description is "You are now above the Captain's Quarters and there is an open hatch that you can go down. From up here you can also climb the wall back down to the Center Deck."

rope is an object. It is in Crew's Quarters. 

hooking claw is an object. It is in Crew's Quarters. 

Understand "combine [something] with [something]" as combining it with. Combining it with is an action applying to two carried things. 

grappling hook is an object.

Instead of combining rope with hooking claw:
	say "you now have a grappling hook.";
	move grappling hook to player.
	
Instead of combining hooking claw with rope:
	say "you now have a grappling hook.";
	move grappling hook to player.

wall is scenery in Center Deck. The description is "a wall that leads to the roof of the Captain's Quarters if you can manage to climb it."

Understand "climb up [something]" as up. 

Instead of going up when player is in Center Deck:
	if player is carrying hook:
		say "You use the hook to climb up to the roof.";
		move player to roof;
	otherwise:
		say "I need something to help me scale this wall.".
		
Instead of going down when player is in roof:
	if player is carrying hook:
		say "You use the hook to climb down to the ground.";
		move player to Center Deck. 

Instead of climbing wall when player is in Center Deck:
	If the player carries the grappling hook:
		say "You use the grappling hook to scale down the wall.";
		move player to roof;
	otherwise:
		say "I need something to help me scale this wall.".

Instead of climbing wall when player is in roof: 
	If the player carries the grappling hook:
		say "You throw the grappling claw and it hooks onto the roof. You climb the rope.";
		move player to Center Deck. 

Center Deck is a room. It is above Cargo Hold. The description is "As you stand in the center deck you catch the scent of bread coming from the south, the Captain's Quarters. The entry door leads to the Captain's Quarters. Off to the side of the entry you see a wall. The Starboard Deck is to the east, the Port Deck is to the West, the bow is to the north, and the Cargo Hold is below you."

Starboard Deck is a room. It is east of Center Deck. The description is "The Center deck is to the west."

wooden oars is an object. It is in Starboard Deck. The description is "oars that can be attached to a boat."

Port Deck is a room. It is west of Center Deck. The description is "The Center deck is to the east."

Bow of the Ship is a room. It is north of Center Deck. The description is "The Center deck is to the south."

Seamus is a man in Bow of the Ship. Seamus carries a knife. The description is "the cabin boy. His stomach is growling and he is clearly very hungry."

Talking to is an action applying to one visible thing. Understand "talk to [someone]" or “converse with [someone]” as talking to.

Instead of talking to Seamus:
	say "'Hi there. How are you?' you say confidently.
	[paragraph break]'Not too good. I'm really hungry.' he complains.
	[paragraph break]'Are you looking for some food?' you inquire.
	[paragraph break]'I'm starving mate. If you have any food, I'd be willing to trade you my knife for it.'"

food is a thing.

Quizzing it about is an action applying to one thing and one visible thing. Understand "ask
[someone] about [any thing]" and "quiz [someone] about [any thing]" as quizzing it about.

Instead of quizzing Seamus about knife:
	say "'This knife can cut anything lad, a rope, a strap, you name it. I'd given the captain this knife for the food in his quarters any day but he doesn't need no knife.' says Seamus."
	
Instead of quizzing Seamus about food:
	say "'The Captain barely feeds us. I know he has food in his quarters but I'm not allowed in there. I'm just the cabin boy.' Seamus responds."

Instead of giving bread to Seamus:
	say "Seamus is pleased. He gives you the knife.";
	now player carries knife. 

[third puzzle- assembling and lowering dinghy boat into the water so that you can row away safely.]

straps is scenery. It is in Port Deck. straps can be cut or uncut. The description is "straps that are holding the dinghy boat above the water. Maybe they can be cut with something sharp to drop it into the ocean."

understand "cut [something] with [something]" as cutting it with. 
cutting it with is an action applying to two things. 

Instead of cutting straps with knife:
	If oarsattached is 1:
		say "the boat drops down into the water. Jump in the dinghy boat before it floats away.";
		now straps is cut;
	otherwise:
		say "try connecting the oars to the dinghy boat first."

[player needs to find a knife to cut the rope so the dinghy boat falls into the water.]

dinghy boat is a vehicle. It is in Port Deck. The description is "a watercraft that you can possibly use to escape from the pirate ship."

oarsattached is a number variable. oarsattached is 0.

understand "connect [something] to [something]" as connecting it to. connecting it to is an action applying to two things.

Instead of connecting wooden oars to dinghy boat:
	say "you attach the wooden oars to the dinghy boat";
	now oarsattached is 1;
	remove wooden oars from play.

understand "jump in [something]" as entering. jumping in it is an action applying to one thing. 

Instead of entering dinghy boat: 
	If oarsattached is 1:
		say "Now that the oars are attached to the dinghy boat. Try lowering it into the ocean.";
		If straps is cut:
			end the story finally saying "You jump off the edge of the ship and land hardly in the boat. You escaped the pirate ship! You win!";
	otherwise:
		say "You should drop the dinghy boat into the ocean before you get into it."
	
An every turn rule:
	If player is in dinghy boat,
	end the story finally saying "You escaped the pirate ship! You win!"


