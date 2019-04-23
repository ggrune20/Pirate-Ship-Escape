"Pirate Ship Escape" by ggrune20

When play begins: 
say "You are a British sailor who is being held captive on a pirate ship. It is night time and most of the pirates are asleep, this is your only chance to get off of the pirate ship and make it out alive. If you escape the ship with your life you will be a legend amongst your British sailors. Good luck!"

The description of the player is "You are tall and skinny but also strong and defined from moving crates and pulling ropes on the ships you have been on throughout your life. Your skin is bronze from the sun and your face is slightly weathered from spending years at sea. You are wearing your sailors hat, a white cotton undergarment, and baige pants. The pirates took your shoes so you are barefoot."

Holding Cell is a room. The description is "The jail cell the pirates are keeping you hostage in. There is a tiny barred off window that allows you to see the full moon, the stars in the night sky, and the oil colored ocean. The floor is made out of wooden floorboards and the walls are wood as well. To the north there is an old and rusty jail door." 

Window is scenery in Holding Cell. The description is "Just a very small window that is barred off with metal bars."

[first puzzle- breaking out of jail cell]

The Jail Door is north of Holding Cell and south of Cargo Hold. The Jail Door is a door. The Jail door is lockable and locked. The description is "A door with metal bars keeping you caged in the holding cell. This is your only way out. It is old and rusty from the ocean's salt water. It is very weak and could possibly be pried open."

[a section of the jail door is rusty and loose. you need to pry it open.]

loose floorboard is an object. It is in Holding Cell. The description is "a two by four plank of hard and very sturdy wood. It is very loose and maybe you could break it off."

understand "plank of wood" as loose floorboard.

Understand "break off [something]" as breaking. Breaking is an action applying to one thing. 

Understand "break [something] off" as breaking.

Instead of breaking loose floorboard:
	say "You manage to break off the loose floorboard. Maybe it can help you to get out of the holding cell.";
	move loose floorboard to player.
	
Instead of taking loose floorboard:
	say "You manage to break off the loose floorboard. Maybe it can help you to get out of the holding cell.";
	move loose floorboard to player.

[you need to break off the loose floorboard]

Understand "pry [something] with [something]" as prying it with. prying it with is an action applying to two things. 

Understand "pry open [something] with [something]" as prying it with. 

Understand "break open [something] with [something]" as prying it with.

Instead of prying the jail door with floorboard:
	If the player has loose floorboard:
		say "you break open the jail door. North towards the cargo hold is the only way you can go.";
		now the jail door is open;
	otherwise:
		say "you are going to need something to help you to pry open the jail door.".

Cargo Hold is a room. The description is "A room where there is a lot of boxes and baggage here. The Holding Cell is to the south and the Crew's Quarters are to the north. Be careful though, I would not recommend going into the Crew's quarters... you do not look like a pirate at all. If you want to go up, there is an opening that leads to the Center Deck which is above you."

boxes is scenery in Cargo Hold. The description is "It's just crates. Nothing is special or important about them."

baggage is scenery in Cargo Hold. The description is "It's just crates. Nothing is special or important about them."

Wooden Chest is a container. It is in Cargo Hold. The description is "A large strong box that probably contains clothes and other pirate items."

eyepatch is an object. It is in Wooden Chest. It is wearable. The description is "a small patch of leather and string meant to be worn in front of the eye."

pirate coat is an object. It is in Wooden Chest. It is wearable. The description is "an item of pirate clothing. A coat you usually wear over a shirt."

Crew's Quarters is a room. It is north of Cargo Hold. "This is the place where the pirates sleep at night and relax when they can. The Cargo Hold is to the south. On the ground in front of you there is some rope and a hooking claw."

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

Captain's Quarters is a room. The description is "The place where the Captain lives when he is not on the deck bossing his crew around. He is in a deep sleep, do not wake him up."

After reading a command:
	If the player's command matches "take all":
		End the story finally saying "the Captain wakes up and recognizes you. You are taken captive and are unable to escape the ship. You Lose."

Entry is north of Captain's Quarters and south of Center Deck. Entry is a door. Entry is lockable and locked. The description is "A large wooden door with intricate designs of skulls and crossbones. It is locked shut. There must be another way to get into the Captain's Quarters."

bread is an object. It is in Captain's Quarters. The description is "Great food for when you are hungry."

roof is a room. It is above Captain's Quarters. The description is "You are now above the Captain's Quarters and there is an open hatch that you can go down. From up here you can also scale down to get back down down to the Center Deck."

rope is an object. It is in Crew's Quarters. The description is "A long piece of strong rope. It can possibly be combined with other objects to create useful tools."

hooking claw is an object. It is in Crew's Quarters. The description is "A metal claw with four four sharp hooks. It can possibly be combined with other objects to create useful tools."

Understand "combine [something] with [something]" as combining it with. Combining it with is an action applying to two carried things. 

Understand "combine [something] and [something]" as combining it with. 

grappling hook is an object.

understand "grapple" as grappling hook. 

Instead of combining rope with hooking claw:
	say "you now have a grappling hook.";
	move grappling hook to player.
	
Instead of combining hooking claw with rope:
	say "you now have a grappling hook.";
	move grappling hook to player.

wall is scenery in Center Deck. The description is "a wall that leads to the roof of the Captain's Quarters. You can maybe climb it with the help of a tool."

Understand "climb up [something]" as up. 

Understand "use [something]" as using. Using is an action applying to one thing. 

Instead of using grappling hook: 
	if player is in Center Deck:
		say "You use the hook to climb up to the roof.";
		move player to roof;
	if player is in roof:
		say "You use the hook to scale the wall down to the ground.";
		move player to Center Deck;
	Otherwise:
		say "Try using the grappling in a place where it can help you to get up somewhere."

Instead of going up when player is in Center Deck:
	if player is carrying hook:
		say "You use the hook to climb up to the roof.";
		move player to roof;
	otherwise:
		say "I need something to help me scale this wall.".
		
Instead of going down when player is in roof:
	if player is carrying bread:
		say "You use the hook to scale the wall down to the ground.";
		move player to Center Deck;
	otherwise:
		move player to Captain's Quarters.

Instead of climbing wall when player is in Center Deck:
	If the player carries the grappling hook:
		say "You throw the grappling claw and it hooks onto the roof. You climb the rope.";
		move player to roof;
	otherwise:
		say "I need something to help me scale this wall.".
		
[Understand "scale down [something]" as scaling. Scaling is an action applying to one thing. 

Instead of scaling when player is in roof: 
	If the player carries the grappling hook:
		say "You use the grappling hook to scale down the wall.";
		move player to Center Deck.]

Center Deck is a room. It is above Cargo Hold. The description is "As you stand in the center deck you catch the scent of bread coming from the south, the Captain's Quarters. The entry door leads to the Captain's Quarters. Off to the side of the entry you see a wall. The Starboard Deck is to the east, the Port Deck is to the West, the bow is to the north, and the Cargo Hold is below you."

Starboard Deck is a room. It is east of Center Deck. The description is "The Center deck is to the west."

wooden oars is an object. It is in Starboard Deck. The description is "oars that can be connected to a dinghy boat."

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

Quizzing it about is an action applying to one thing and one visible thing. Understand "ask [someone] about [any thing]" and "quiz [someone] about [any thing]" as quizzing it about.

Instead of quizzing Seamus about knife:
	say "'This knife can cut anything lad, a rope, a strap, you name it.' says Seamus."
	
Instead of quizzing Seamus about food:
	say "'The Captain barely feeds us, but I know there is some food in his Quarters. Give me some food and I'll definitely give you my knife, mate."

Instead of giving bread to Seamus:
	say "Seamus is pleased. He gives you the knife.";
	now player carries knife. 

[third puzzle- assembling and lowering dinghy boat into the water so that you can row away safely.]

straps is scenery. It is in Port Deck. straps can be cut or uncut. The description is "Straps that are holding the dinghy boat above the water. Maybe they can be cut with something sharp to drop the dinghy boat into the ocean."

understand "cut [something] with [something]" as cutting it with. 
cutting it with is an action applying to two things. 

understand "slash [something] with [something]" as cutting it with. 

Instead of cutting straps with knife:
	If oarsattached is 1:
		say "the boat drops down into the water. Jump in the dinghy boat before it floats away.";
		now straps is cut;
	otherwise:
		say "try connecting the oars to the dinghy boat first."

[player needs to find a knife to cut the rope so the dinghy boat falls into the water.]

dinghy boat is a vehicle. It is in Port Deck. The description is "A watercraft that you can possibly use to escape from the pirate ship. However, there are two issues. First, there aren't any oars connected to the boat and you won't get far if you can't row. Second, there are leather straps holding the boat above the water, and the only way to release the straps is by cutting them."

oarsattached is a number variable. oarsattached is 0.

understand "connect [something] to [something]" as connecting it to. connecting it to is an action applying to two things.

understand "fasten [something] to [something]" as connecting it to.

understand "secure [something] to [something]" as connecting it to.

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
	
After reading a command:
	If the player's command matches "take all":
		say "C'mon now, you really thought it would be that easy?";
		stop the action. 


