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

Crew's Quarters is a room. It is north of Cargo Hold. 

Captain's Quarters is a room. It is south of Center Deck. 

bread is an object. It is in Captain's Quarters.

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

rope is scenery. It is in Port Deck. rope can be cut or uncut. 

understand "cut [something] with [something]" as cutting it with. 
cutting it with is an action applying to two things. 

Instead of cutting rope with knife:
	say "the boat drops down into the water. Jump in the dinghy boat before it floats away.";
	now rope is cut.

[player needs to find a knife to cut the rope so the dinghy boat falls into the water.]

dinghy boat is a vehicle. It is in Port Deck.

[understand "attach [something] to [something]" as putting something on something. attaching it to is an action applying to two things.]

Instead of putting wooden oars on dinghy boat:
	say "you attach the wooden oars to the dinghy boat";
	now wooden oars are on dinghy boat.

understand "jump in [something]" as entering. jumping in it is an action applying to one thing. 

Instead of entering dinghy boat: 
	If rope is cut:
		end the story finally saying "You jump off the edge of the ship and land hardly in the boat. You escaped the pirate ship! You win!";
	otherwise:
		say "You should drop the dinghy boat into the ocean before you get into it."
	
An every turn rule:
	If player is in dinghy boat,
	end the story finally saying "You escaped the pirate ship! You win!"


