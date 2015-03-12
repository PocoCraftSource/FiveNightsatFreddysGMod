--[[---------------------------------------------------------
   Name: gamemode:PlayerGiveSWEP( ply, wname, wtable )
   Desc: Return true if it's allowed 
-----------------------------------------------------------]]
function GM:PlayerGiveSWEP( ply, wname, wtable )
	if( ply:IsAdmin() and ply:IsValid() )
		return true
	else
		ply:SendLua( " notification.AddLegacy( \"That's not very cannon to the story, eh?\", NOTIFY_ERROR, 2 ) " )
		ply:SendLua( " surface.PlaySound( \"buttons/button10.wav\" " )
		return false
	end
end
