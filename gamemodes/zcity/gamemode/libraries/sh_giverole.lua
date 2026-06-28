if SERVER then
    util.AddNetworkString("ZB_GiveRole")
    util.AddNetworkString("ZB_GiveSub")
    function zb.GiveRole(ply, name, color)
        hook.Run( "ZB_GettingRole", ply, name )
        net.Start("ZB_GiveRole")
            net.WriteTable({
                name = name or "WHO ARE YOU?",
                color = color or color_white
            })
        net.Send(ply)
    end
    function zb.GiveSub(ply, name, color)
        hook.Run( "ZB_GettingSub", ply, name )
        net.Start("ZB_GiveSub")
            net.WriteTable({
                name = name or "ARE YOU UNEMPLOYED?",
                color = color or color_white
            })
        net.Send(ply)
    end
else
    net.Receive("ZB_GiveRole",function()
        LocalPlayer().role = net.ReadTable() or false
    end)
    net.Receive("ZB_GiveSub",function()
        LocalPlayer().sub = net.ReadTable() or false
    end)    
end