--[[---------------------------------------------------------

  Sandbox Gamemode

  This is GMod's default gamemode

-----------------------------------------------------------]]

-- These files get sent to the client

AddCSLuaFile( "cl_hints.lua" )
AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "cl_notice.lua" )
AddCSLuaFile( "cl_search_models.lua" )
AddCSLuaFile( "cl_spawnmenu.lua" )
AddCSLuaFile( "cl_worldtips.lua" )
AddCSLuaFile( "persistence.lua" )
AddCSLuaFile( "player_extension.lua" )
AddCSLuaFile( "save_load.lua" )
AddCSLuaFile( "shared.lua" )
AddCSLuaFile( "gui/IconEditor.lua" )
AddCSLuaFile( "shared/f1_menu.lua" )
AddCSLuaFile( "specialchars.lua" )
//AddCSLuaFile( "specialchars/cl_init.lua" )
//AddCSLuaFile( "specialchars/shared.lua" )
//AddCSLuaFile( "specialchars/specialchars.lua" )

include( 'shared.lua' )
include( 'commands.lua' )
include( 'player.lua' )
include( 'spawnmenu/init.lua' )
include( 'specialchars.lua' )
include( 'playerspawnobjectlist.lua' )
include( 'playergivesweplist.lua' )
include( 'playerspawnnpclist.lua' )
include( 'playerspawnsentlist.lua' )

--
-- Make BaseClass available
--
DEFINE_BASECLASS( "gamemode_base" )

--[[---------------------------------------------------------
   Name: gamemode:PlayerSpawn( )
   Desc: Called when a player spawns
-----------------------------------------------------------]]
//function GM:PlayerSpawn( pl )

//	player_manager.SetPlayerClass( pl, "player_sandbox" )

//	BaseClass.PlayerSpawn( self, pl )
	
//end

--[[---------------------------------------------------------
   Name: gamemode:PlayerSpawn( )
   Desc: Called when a player spawns
-----------------------------------------------------------]]
function GM:PlayerSpawn( ply )  //What happens when the player spawns
    player_manager.SetPlayerClass( ply, "player_sandbox" )

    self.BaseClass:PlayerSpawn( ply )

    //ply:SetGravity( 0.75 )
    ply:SetGravity( 1.00 )  
    ply:SetMaxHealth( 100, true )  
 
    ply:SetWalkSpeed( 125 )  
	ply:SetRunSpeed( 250 ) 
 
end

--[[---------------------------------------------------------
   Name: PushTeammatesAway( )
   Desc: Called when a player pushes player
-----------------------------------------------------------]]
function PushTeammatesAway( )
	for _, ply in pairs( player.GetAll() ) do
		ply:SetNoCollideWithTeammates( true )
		ply:SetAvoidPlayers( true )
	end
end

--[[---------------------------------------------------------
   Name: gamemode:OnPhysgunFreeze( weapon, phys, ent, player )
   Desc: The physgun wants to freeze a prop
-----------------------------------------------------------]]
function GM:OnPhysgunFreeze( weapon, phys, ent, ply )
	
	-- Don't freeze persistent props (should already be froze)
	if ( ent:GetPersistent() ) then return false end

	BaseClass.OnPhysgunFreeze( self, weapon, phys, ent, ply )

	ply:SendHint( "PhysgunUnfreeze", 0.3 )
	ply:SuppressHint( "PhysgunFreeze" )
	
end


--[[---------------------------------------------------------
   Name: gamemode:OnPhysgunReload( weapon, player )
   Desc: The physgun wants to unfreeze
-----------------------------------------------------------]]
function GM:OnPhysgunReload( weapon, ply )

	local num = ply:PhysgunUnfreeze()
	
	if ( num > 0 ) then
		ply:SendLua( "GAMEMODE:UnfrozeObjects("..num..")" )
	end

	ply:SuppressHint( "PhysgunReload" )

end


--[[---------------------------------------------------------
   Name: gamemode:PlayerShouldTakeDamage
   Return true if this player should take damage from this attacker
   Note: This is a shared function - the client will think they can 
	 damage the players even though they can't. This just means the 
	 prediction will show blood.
-----------------------------------------------------------]]
function GM:PlayerShouldTakeDamage( ply, attacker )

	-- The player should always take damage in single player..
	if ( game.SinglePlayer() ) then return true end

	-- Global godmode, players can't be damaged in any way
	if ( cvars.Bool( "sbox_godmode", false ) ) then return false end

	-- No player vs player damage
	if ( attacker:IsValid() && attacker:IsPlayer() ) then
		return cvars.Bool( "sbox_playershurtplayers", true )
	end
	
	-- Default, let the player be hurt
	return true

end


--[[---------------------------------------------------------
   Show the search when f1 is pressed
-----------------------------------------------------------]]
function GM:ShowHelp( ply )

	ply:SendLua( "hook.Run( 'StartSearch' )" );
	
end


--[[---------------------------------------------------------
   Called once on the player's first spawn
-----------------------------------------------------------]]
//function GM:PlayerInitialSpawn( ply )

//	BaseClass.PlayerInitialSpawn( self, ply )
	
//end

--[[---------------------------------------------------------
   Called once on the player's first spawn

-----------------------------------------------------------]]
function GM:PlayerInitialSpawn( ply )  // When spawning after joining the sever
	CheckSpecialCharacters( ply ) //Is he defined in the specialchars.lua file? If yes, then he gets those values, and it stops here.
	if ply:IsAdmin() then //Is the connecting player admin?
		sb_team2( ply ) //If he is then set his team to team 2.
	else // If he isn't admin then,
	joining( ply ) //Call the function joining (found near the bottom of this file)
	RunConsoleCommand( "sb_start" )	 //Run the console command defined in cl_init.lua. 
	end //Close the if
end //close the function
--[[---------------------------------------------------------
   Called for player's loadout

-----------------------------------------------------------]]
function GM:PlayerLoadout( ply ) // What should the player recieve when joining a team?
 
	if ply:Team() == 1 then //If he is team 1, then give him the following items
 
		ply:Give( "weapon_physcannon" ) // A Gravity gun
		//ply:Give( "weapon_physgun" ) // A Physics gun
		//ply:Give( "gmod_tool" ) // and don't forget the tool gun!
 
 
	elseif ply:Team() == 2 then // So if he isn't team 1, he could be team 2?
 
		ply:Give( "weapon_physcannon" ) //Assuming he is, then give him Gravity gun
		//ply:Give( "weapon_physgun" ) // Physics gun
		//ply:Give( "weapon_ar2" ) // AR2 
		//ply:Give( "gmod_tool" ) // and the gmod tool
 
	//I should mention at this point you can put in else, but there is no point. All possible scenarios are covered. Thus we end it	
	end //right here.
end // End the function
 
function sb_team1( ply ) //This is what happens when we enter sb_team1 into the console.
 
	ply:UnSpectate() //Since he was set to spectate until he presses the 'hell yeah' button, we now unspecatate him
	ply:SetTeam( 1 ) //We set his team to one, a.k.a 'guest'
	ply:Spawn() //Spawn the player
	ply:PrintMessage( HUD_PRINTTALK, "Welcome to the server, " .. ply:Nick() ) //Gives the message [SimpleBuild]Welcome to the server, (playername here)"  in the talk area.
 
end //End the function.
 
 
function sb_team2( ply ) // Function sb_team2. Called at the beginning
	// Why no unspectate? Look carefully at the GM:PlayerSpawn; We only call to spectate after we see if he's an admin. Assuming he's always ready to build, I chose to skip it.	
	ply:SetTeam( 2 ) //Set his team to team 2.
	ply:Spawn() // Spawn him
	ply:PrintMessage( HUD_PRINTTALK, "I recognize you as an admin, " .. ply:Nick() ) //Again, a message in the talk area. 
	//This time saying "[SimpleBuild] I recognize you as an admin (playername here)" 
 
end //End this function
concommand.Add( "sb_team1", sb_team1 ) //Now, we make sure that when we enter sb_team1 into console that it calls the function. This is KEY. Otherwise players won't be able to play.
 
function joining( ply ) // The function that's called when the player is not admin or a special character, at the top.
 
	ply:Spectate( 5 ) //Set him to spectate in free-roam mode. He doesn't actually fly around, since he has a window open at this point.
	ply:SetTeam( 4 ) //Set his team to Joining
 
end //End the function


--[[---------------------------------------------------------
   Desc: A ragdoll of an entity has been created
-----------------------------------------------------------]]
function GM:CreateEntityRagdoll( entity, ragdoll )

	-- Replace the entity with the ragdoll in cleanups etc
	undo.ReplaceEntity( entity, ragdoll )
	cleanup.ReplaceEntity( entity, ragdoll )
	
end


--[[---------------------------------------------------------
   Name: gamemode:PlayerUnfrozeObject( )
-----------------------------------------------------------]]
function GM:PlayerUnfrozeObject( ply, entity, physobject )

	local effectdata = EffectData()
		effectdata:SetOrigin( physobject:GetPos() )
		effectdata:SetEntity( entity )
	util.Effect( "phys_unfreeze", effectdata, true, true )	
	
end


--[[---------------------------------------------------------
   Name: gamemode:PlayerFrozeObject( )
-----------------------------------------------------------]]
function GM:PlayerFrozeObject( ply, entity, physobject )

	if ( DisablePropCreateEffect ) then return end
	
	local effectdata = EffectData()
		effectdata:SetOrigin( physobject:GetPos() )
		effectdata:SetEntity( entity )
	util.Effect( "phys_freeze", effectdata, true, true )	
	
end


--
-- Who can edit variables?
-- If you're writing prop protection or something, you'll
-- probably want to hook or override this function.
--
function GM:CanEditVariable( ent, ply, key, val, editor )

	-- Only allow admins to edit admin only variables!
	if ( editor.AdminOnly ) then
		return ply:IsAdmin()
	end

	-- This entity decides who can edit its variables
	if ( isfunction( ent.CanEditVariables ) ) then
		return ent:CanEditVariables( ply )
	end

	-- default in sandbox is.. anyone can edit anything.
	return true

end
