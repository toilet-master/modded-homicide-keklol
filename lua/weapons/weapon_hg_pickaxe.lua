if SERVER then AddCSLuaFile() end
SWEP.Base = "weapon_melee"
SWEP.PrintName = "Pickaxe"
SWEP.Instructions = "A pickaxe is a tool.\nUsually used in mines.\nThat can dig through ores and stone.\n\nLMB to attack.\nRMB to block."
SWEP.Category = "Weapons - Melee"
SWEP.Spawnable = true
SWEP.AdminOnly = false

SWEP.WorldModel = "models/props_mining/pickaxe01.mdl"
SWEP.WorldModelReal = "models/weapons/tfa_nmrih/v_me_fubar.mdl"
SWEP.WorldModelExchange = "models/props_mining/pickaxe01.mdl"
SWEP.ViewModel = ""

SWEP.NoHolster = true


SWEP.HoldType = "revolver"
SWEP.weight = 3

SWEP.HoldPos = Vector(-10,0,0)
SWEP.HoldAng = Angle(0,0,0)

SWEP.AttackTime = 0.4
SWEP.AnimTime1 = 1.5
SWEP.WaitTime1 = 1.2
SWEP.ViewPunch1 = Angle(1,2,0)

SWEP.Attack2Time = 0.3
SWEP.AnimTime2 = 1
SWEP.WaitTime2 = 0.8
SWEP.ViewPunch2 = Angle(0,0,-2)

SWEP.attack_ang = Angle(0,0,0)
SWEP.sprint_ang = Angle(15,0,0)

SWEP.basebone = 94

SWEP.weaponPos = Vector(0.5,0,-35)
SWEP.weaponAng = Angle(0,85,1)

SWEP.DamageType = DMG_SLASH
SWEP.DamagePrimary = 18


SWEP.PenetrationPrimary = 2

SWEP.MaxPenLen = 6

SWEP.PenetrationSizePrimary = 2


SWEP.StaminaPrimary = 40


SWEP.AttackLen1 = 75
SWEP.AttackLen2 = 45

SWEP.AnimList = {
    ["idle"] = "Idle",
    ["deploy"] = "Draw",
    ["attack"] = "Attack_Quick",
    ["attack2"] = "Shove",
}

if CLIENT then
	SWEP.WepSelectIcon = Material("vgui/icons/ico_pickaxe.png")
	SWEP.IconOverride = "vgui/icons/ico_pickaxe.png"
	SWEP.BounceWeaponIcon = false
end

SWEP.setlh = true
SWEP.setrh = true
SWEP.TwoHanded = true

SWEP.AnimAlwaysBack = true

SWEP.AttackHit = "SolidMetal.ImpactHard"
SWEP.AttackHitFlesh = "snd_jack_hmcd_axehit.wav"
SWEP.DeploySnd = "SolidMetal.ImpactSoft"

SWEP.AttackPos = Vector(0,0,0)

function SWEP:CanSecondaryAttack()
    return false
end

function SWEP:CanPrimaryAttack()
    self.DamageType = DMG_SLASH
    return true
end

SWEP.AttackTimeLength = 0.155
SWEP.Attack2TimeLength = 0.01

SWEP.AttackRads = 120
SWEP.AttackRads2 = 0

SWEP.SwingAng = -2
SWEP.SwingAng2 = 0