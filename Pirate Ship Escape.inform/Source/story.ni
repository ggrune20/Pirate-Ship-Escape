"Pirate Ship Escape" by ggrune20

When play begins: 
say "You are a British sailor who is being held captive on a pirate ship. Tomorrow you are supposed to walk the plank. It is night time and most of the pirates are asleep, this is your only chance to get off of the pirate ship and make it out alive. However, you also know the Captain has treasure he took from you. If you take back your treasure and escape the ship with your life you will be a legend amongst your British sailors. Good luck!"

The description of the player is "You are tall and skinny but also strong and defined from moving crates and pulling ropes on the ships you have been on throughout your life. Your skin is bronze from the sun and your face is slightly weathered from spending years at sea. You are wearing your sailors hat, a white cotton undergarment, and baige pants. The pirates took your shoes so you are barefoot."

Holding Cell is a room.  

[first puzzle- breaking out of jail cell]

The Jail Door is north of Holding Cell and south of Cargo Hold. The Jail Door is a door. The Jail door is lockable and locked. 

[a section of the jail door is rusty and loose. you need to pry it open.]

loose floorboard is an object. It is in Holding Cell. 

[you need to break off the loose floorboard]

Understand "pry [something] with [something]" as prying it with. prying it with is an action applying to two things. 

Instead of prying the jail door with loose floorboard:
	say "you break open the jail door. North towards the cargo hold is the only way you can go.";
	now the jail door is open. 

Cargo Hold is a room. 

eyepatch is an object. It is in Cargo Hold. It is wearable. 

pirate coat is an object. It is in Cargo Hold. It is wearable. 

Crew's Quarters is a room. It is north of Cargo Hold. 

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

Captain's Quarters is a room. It is south of Center Deck. 

bread is an object. It is in Captain's Quarters.

the roof is a room. It is above Captain's Quarters. 

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

Instead of going up when the player is in Center Deck:
	If player carries grappling hook:
		move player to the roof.	

Center Deck is a room. It is above Cargo Hold. 

Starboard Deck is a room. It is east of Center Deck. 

wooden oars is an object. It is in Starboard Deck.

Port Deck is a room. It is west of Center Deck. 

Bow of the Ship is a room. It is north of Center Deck. 

Seamus is a man in Bow of the Ship. Seamus carries a knife. The description is "the cabin boy."

Instead of giving bread to Seamus:
	say "Seamus is pleased. He gives you the knife.";
	now player carries knife. 

[third puzzle- assembling and lowering dinghy boat into the water so that you can row away safely.]

straps is scenery. It is in Port Deck. straps can be cut or uncut. 

understand "cut [something] with [something]" as cutting it with. 
cutting it with is an action applying to two things. 

Instead of cutting straps with knife:
	If oarsattached is 1:
		say "the boat drops down into the water. Jump in the dinghy boat before it floats away.";
		now straps is cut;
	otherwise:
		say "try connecting the oars to the dinghy boat first."

[player needs to find a knife to cut the rope so the dinghy boat falls into the water.]

dinghy boat is a vehicle. It is in Port Deck. 

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


