--[[---------------------------------------------------------
   Name: gamemode:PlayerSpawnNPC( ply, npc_type )
   Desc: Return true if player is allowed to spawn the NPC
-----------------------------------------------------------]]
function GM:PlayerSpawnNPC( ply, npc_type, equipment )
	if( ply:IsSuperAdmin() or ply:IsUserGroup( "Developer" ) and ply:IsValid() )
		return true
	else
		ply:SendLua( " notification.AddLegacy( \"That's not very cannon to the story, eh?\", NOTIFY_ERROR, 2 ) " )
		ply:SendLua( " surface.PlaySound( \"buttons/button10.wav\" " )
		return false
	end
end
