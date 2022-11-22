AddCSLuaFile()

ENT.Type = "anim"
ENT.Base = "base_gmodentity"

ENT.PrintName = "Anti-Baby Pills"
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
	self:SetModel( "models/props_lab/jar01a.mdl" )
	self:PhysicsInit( SOLID_VPHYSICS )
	self:SetMoveType( MOVETYPE_VPHYSICS )
	self:SetSolid( SOLID_VPHYSICS )
	
	self:SetUseType(SIMPLE_USE)
	self:SetColor(Color(100,100,255,255))
	
	local phys = self.Entity:GetPhysicsObject()
	if phys:IsValid() then
		phys:Wake()
		--phys:SetMaterial("plastic")
	end
end

function ENT:OnTakeDamage( damage )
	self:TakePhysicsDamage(damage)
end

function ENT:Use( activator )
	if !activator:GetNWBool("sbaby",false) then
		activator:SetNWBool("sbaby",true)
		activator:EmitSound( "physics/glass/glass_strain2.wav", 50, 100 )
		activator:ChatPrint("[Adult SWEP] You have 1 baby protection.")
		self:Remove()
	else
		activator:ChatPrint("[Adult SWEP] You are already protected.")
	end
end

function ENT:PhysicsCollide(data, phys)
	if data.DeltaTime > 0.2 then
		if data.Speed > 250 then
			self:EmitSound("physics/plaster/ceiling_tile_impact_hard" .. math.random(1, 3) .. ".wav", 75, math.random(90,110), 0.7)
		else
			self:EmitSound("physics/plaster/ceiling_tile_impact_soft" .. math.random(1, 3) .. ".wav", 75, math.random(90,110), 0.4)
		end
	end
end

else -- CLIENT
	function ENT:Draw()
		self:DrawModel()
	end
end