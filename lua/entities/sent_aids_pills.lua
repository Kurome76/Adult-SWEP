AddCSLuaFile()

ENT.Type = "anim"
ENT.Base = "base_gmodentity"

ENT.PrintName = "Anti-AIDS Pills"
ENT.Category = "Adult SWEP"
ENT.Author = ""
ENT.Contact = ""
ENT.Purpose = ""
ENT.Information = ""

ENT.Spawnable			= true
ENT.AdminSpawnable		= true

if SERVER then

function ENT:SpawnFunction( ply, tr, class )
	if ( !tr.Hit ) then return end
	local pos = tr.HitPos + tr.HitNormal * 4
	local ent = ents.Create( class )
	ent:SetPos( pos )
	ent:Spawn()
	ent:Activate()
	return ent
end

function ENT:Initialize()
	self:SetModel( "models/props_lab/jar01b.mdl" )
	self:PhysicsInit( SOLID_VPHYSICS )
	self:SetMoveType( MOVETYPE_VPHYSICS )
	self:SetSolid( SOLID_VPHYSICS )
	
	self:SetUseType(SIMPLE_USE)
	self:SetColor(Color(100,255,255,255))
	
	local phys = self.Entity:GetPhysicsObject()
	if phys:IsValid() then
		phys:Wake()
		phys:SetMaterial("glass")
	end
end

function ENT:OnTakeDamage( damage )
	self:TakePhysicsDamage(damage)
end

function ENT:Use( activator )	
	if activator:GetNWBool("saids",false) then
		activator:SetNWBool("saids",false )
		activator:ChatPrint("[Adult SWEP] You have been healed!")
		activator:EmitSound( "physics/glass/glass_strain3.wav", 50, 100 )
		self:Remove()
	else
		activator:ChatPrint("[Adult SWEP] You are healtly.")
	end
end

function ENT:PhysicsCollide(data, phys)
	if data.DeltaTime > 0.2 then
		if data.Speed > 250 then
			self:EmitSound("physics/glass/glass_impact_hard" .. math.random(1, 3) .. ".wav", 75, math.random(90,110), 0.5)
		else
			self:EmitSound("physics/glass/glass_impact_soft" .. math.random(1, 3) .. ".wav", 75, math.random(90,110), 0.2)
		end
	end
end

else -- CLIENT
	function ENT:Draw()
		self:DrawModel()
	end
end