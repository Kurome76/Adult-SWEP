AddCSLuaFile()


ENT.Type 			= "anim"

function ENT:PhysicsCollide()
end
function ENT:OnRemove()
end
function ENT:PhysicsUpdate()
end

if SERVER then

function ENT:Initialize()
	self.Owner = self:GetOwner()
	if !IsValid(self.Owner) then
		self:Remove()
		return
	end
	self:SetModel("models/alyx_emptool_prop.mdl")
	self:SetMaterial("Models/effects/vol_light001")
	self:PhysicsInitSphere(10)
	self:SetMoveType(MOVETYPE_VPHYSICS)
	self:SetSolid(SOLID_VPHYSICS)
	self:DrawShadow(false)
	self:GetPhysicsObject():EnableGravity( true )
	self:SetCollisionGroup(COLLISION_GROUP_DEBRIS)

	self.Timer = CurTime() + 0.075
	self.Explode = false
end

function ENT:Think()
	if self.Timer < CurTime() then
		self.Explode = true
		self.Timer = CurTime() + 15
	end
	if self:WaterLevel() > 2 then
		self:Remove()
	end
end

function ENT:PhysicsCollide(data, physobj)
	self:Remove()
end

else -- CLIENT
	function ENT:Think()
	end
	function ENT:Draw()
		self:DrawModel()
	end
	function ENT:IsTranslucent()
		return true
	end
end