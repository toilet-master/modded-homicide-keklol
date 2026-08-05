if not hg then return end

local tex_gradient_r = Material("vgui/gradient-r")
local tex_gradient_l = Material("vgui/gradient-l")
local tex_gradient_d = Material("vgui/gradient-d")
local modetbl = {
    ["hmcd"] = { 
        Name = "Homicide",
        Color = Color(10,0,155),
        colorb = Color(0,132,255),
    },
    ["cresp"] = { 
        Name = "Crisis Response", 
        Color = Color(155,0,0),
        colorb = Color(54,0,155)
    },
}
function hg.DrawLoadoutMenu(pp)
    pp:SetAlpha(0)
    local chosengm = "hmcd"
    local hscroll = vgui.Create("DScrollPanel", pp)
    local hscroll_height = pp:GetTall() - 50
    hscroll:SetHeight(hscroll_height)
    hscroll:Dock(TOP)
    hscroll:DockMargin(20, 30, 7.65*100, 0)
    hscroll:SetSkin(hg.GetMainSkin())
    for i,v in pairs(modetbl) do
        local key = i
        local btn = vgui.Create("DButton", hscroll)
        btn:SetText(v.Name)
        btn:Dock(TOP)
        btn:SetSize(100,50)
        btn:DockMargin(0, 10, 20, 0)

        btn.Paint = function (self, w, h)
            draw.RoundedBox(0, 0, 0, w, h, v.Color or Color(255,0,0) )
            draw.RoundedBox(0, 0, 25, w, h/2, v.colorb or Color(255,0,0) )
            surface.SetDrawColor(Color(0,0,0,255))
            surface.DrawOutlinedRect(0,0,w,h,4)
        end
        btn.DoClick = function ()
            chosengm = i
            print(chosengm)
        end
    end
    pp.Paint = function(self, w, h)
        if hg.DrawBlur then
            hg.DrawBlur(self, 5)
        end
        draw.RoundedBox(0, 0, 0, w, h, Color(255,0,0))
        surface.SetDrawColor(Color(19,24,99))
        surface.SetMaterial(tex_gradient_r)
        surface.DrawTexturedRect(0, 0, w, h)
        surface.SetDrawColor(Color(255,0,0))
        surface.SetMaterial(tex_gradient_l)
        surface.DrawTexturedRect(0, 0, w, h)
        surface.SetDrawColor(Color(19,24,99))
        surface.SetMaterial(tex_gradient_d)
        surface.DrawTexturedRect(0, 0, w/5, h)
        local sw, sh = ScrW(), ScrH()
    end
    pp.Think = function()
        print(chosengm)
    end
      pp:AlphaTo(85, 0.5, 0)
end