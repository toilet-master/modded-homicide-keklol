SWEP.Base = "weapon_bat"
SWEP.PrintName = "Metal bat"
SWEP.Instructions = "A metal bat. Takes less stamina compensates with pain on success hit.\n\nLMB to attack.\nRMB to block."
SWEP.Category = "Weapons - Melee"
if CLIENT then
	SWEP.WepSelectIcon = Material("vgui/wep_jack_hmcd_baseballbat")
	SWEP.IconOverride = "vgui/wep_jack_hmcd_baseballbat"
	SWEP.BounceWeaponIcon = false
end
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.HoldType = "slam"
SWEP.WorldModel = "models/weapons/tfa_nmrih/w_me_bat_metal.mdl"
SWEP.WorldModelReal = "models/weapons/tfa_nmrih/v_me_bat_metal.mdl"
SWEP.WorldModelExchange = "models/weapons/tfa_nmrih/w_me_bat_metal.mdl"
SWEP.AttackHit = "Canister.ImpactHard"
SWEP.Attack2Hit = "Canister.ImpactHard"
SWEP.AttackHitFlesh = "Flesh.ImpactHard"
SWEP.Attack2HitFlesh = "Flesh.ImpactHard"
SWEP.DeploySnd = "physics/wood/wood_plank_impact_soft2.wav"
SWEP.StaminaPrimary = 17
SWEP.StaminaSecondary = 20
function SWEP:CanSecondaryAttack()
    self.DamageType = DMG_CLUB
    self.AttackHit = "Canister.ImpactHard"
    self.Attack2Hit = "Canister.ImpactHard"
    return true
end
function SWEP:CanPrimaryAttack()
    self.DamageType = DMG_CLUB
    
    return true
end
function SWEP:PrimaryAttackAdd(ent)
	local owner = self:GetOwner()
	local org = owner.organism
    local rand = math.random(2.5,4)
	org.painadd = owner.organism.painadd + rand
    --[[if rand == 4 then
        local text = math.random(1,2) == 1 and "It hurts!" or "Shit i'll have bruises on my arm!"
        owner:Notify(text)
    end ]]
end
SWEP.DamagePrimary = 35
SWEP.DamageSecondary = 18