---- This code can be added to a door (a rectangular Part in Roblox). 
---- You can add a decal to the door and use it to display a question, character, or other quizz item.
---- If a player types the correct answer in chat, the door will become transparent and the player will be able to advance to the next stage.

door4by3 = script.Parent ---- This line tells Roblox what Part (door) to apply the script to. In this case, it is a door that shows the following question "4 x 3 = ?"
function onChatted(msg, recipient, speaker) 
	local source = string.lower(speaker.Name) 
	msg = string.lower(msg) 
	local door1math = script.Parent.door1math ---- The Part StringValue in this example was labeled door1math.
	local decal = script.Parent.Decal ---- The Decal contains an eye catchy image that asks "4 x 3 = ?"
	if (msg == string.lower(door1math.Value)) then ---- This line specifies that if the player's answer matches the value of the Part's (the door) StringValue (12), the door will become passable and transparent.
		door4by3.CanCollide = false 
		door4by3.Transparency = 0.7 
		decal.Transparency = 0.7 
		wait(5) ---- This line defines the number of seconds that will pass before the door becomes solid and visible again, in this case, 5 seconds.
		decal.Transparency = 0 
		door4by3.CanCollide = true 
		door4by3.Transparency = 0 
	end 
end 
game.Players.ChildAdded:connect(function(plr)
	plr.Chatted:connect(function(msg, recipient) onChatted(msg, recipient, plr) end) 
end)

---- Made by MsCodesALot (Luca Illinik)
---- Owner of MiniFox Smart Games Roblox Group