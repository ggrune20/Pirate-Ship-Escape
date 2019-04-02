"Pirate Ship Escape" by ggrune20

When play begins: 
say "You are a British sailor who is being held captive on a pirate ship. Tomorrow you are supposed to walk the plank. It is night time and most of the pirates are asleep, this is your only chance to get off of the pirate ship and make it out alive. However, you also know the Captain has treasure he took from you. If you take back your treasure and escape the ship with your life you will be a legend amongst your British sailors. Good luck!"

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

Crew's Quarters is a room. It is north of Cargo Hold. 

Captain's Quarters is a room. It is south of Center Deck. 

bread is an object. It is in Captain's Quarters.

Center Deck is a room. It is above Cargo Hold. 

Starboard Deck is a room. It is east of Center Deck. 

Port Deck is a room. It is west of Center Deck. 

Bow of the Ship is a room. It is north of Center Deck. 

Seamus is a man in Bow of the Ship. Seamus carries a knife. The description is "the cabin boy."

Instead of giving bread to Seamus:
	say "Seamus is pleased. He gives you the knife.";
	now player carries knife. 

[third puzzle- assembling and lowering dinghy boat into the water so that you can row away safely.]

rope is scenery. It is in Port Deck. rope can be cut or uncut. 

understand "cut [something] with [something]" as cutting it with. 
cutting it with is an action applying to two things. 

Instead of cutting rope with knife:
	say "the boat drops down into the water. Jump in the dinghy boat before it floats away.";
	now rope is cut.

[player needs to find a knife to cut the rope so the dinghy boat falls into the water.]

dinghy boat is a container. It is in Port Deck. 

understand "jump in [something]" as jumping in it. jumping in it is an action applying to one thing. 

Instead of jumping in dinghy boat: 
	If rope is cut:
		say "you jump off the edge of the ship and land hardly in the boat.";
		now player is in the dinghy boat;
	else:
		say "you should drop the dinghy boat into the ocean before you get into it."
	
An every turn rule:
	If player is in dinghy boat,
	end the story finally saying "You escaped the pirate ship! You win!"


