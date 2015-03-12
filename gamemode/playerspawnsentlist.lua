--[[---------------------------------------------------------
   Name: gamemode:PlayerSpawnSENT( ply, name )
   Desc: Called to ask whether player is allowed to spawn any entities
-----------------------------------------------------------]]
function GM:PlayerSpawnSENT( ply, name )
	if( ply:IsSuperAdmin() or ply:IsUserGroup( "Developer" ) and ply:IsValid() )
		return true
	else
		ply:SendLua( " notification.AddLegacy( \"That's not very cannon to the story, eh?\", NOTIFY_ERROR, 2 ) " )
		ply:SendLua( " surface.PlaySound( \"buttons/button10.wav\" " )
		return false
	end
end
