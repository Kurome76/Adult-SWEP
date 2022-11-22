AddCSLuaFile()

ENT.Type 			= "anim"
ENT.Base 			= "base_anim"
ENT.PrintName		= "Pregnancy Baby"
ENT.Author			= "TB002"
ENT.Information		= "Crys and crys and blows up."
ENT.Category		= "TB002"

ENT.Spawnable			= false
ENT.AdminSpawnable		= false

if SERVER then

function ENT:SpawnFunction(ply, tr)
	if (!tr.Hit) then return end
	local SpawnPos = tr.HitPos + tr.HitNormal * -1
	local ent = ents.Create("baby")
	ent:SetPos(SpawnPos + Vector(0,0,10))
	ent:Spawn()
	ent:Activate()
	return ent
end

function ENT:MakeNoise()
	local ranNum = math.random(1,6)
	if ranNum == 1 then
		self:EmitSound("vo/heavy_award0"..math.random(1,9)..".mp3",55,120)
	elseif ranNum == 2 then
		self:EmitSound("vo/heavy_battlecry0"..math.random(1,6)..".mp3",55,120)
	elseif ranNum == 3 then
		self:EmitSound("vo/heavy_positivevocalization0"..math.random(1,5)..".mp3",55,120)
	elseif ranNum == 4 then
		self:EmitSound("vo/heavy_singing0"..math.random(1,5)..".mp3",55,120)
	elseif ranNum == 5 then
		self:EmitSound("vo/heavy_yell"..math.random(1,2)..".mp3",55,120)
	else
		self:EmitSound("vo/heavy_cheers0"..math.random(1,8)..".mp3",55,120)
	end
end

function ENT:Initialize()
	self.Destructed = false
	self:SetModel("models/props_c17/doll01.mdl")
	self:PhysicsInit(SOLID_VPHYSICS)
	self:SetSolid(SOLID_VPHYSICS)
	
	self:beABaby()
	self:MakeNoise()
end

function ENT:beABaby()
	for i=0,64 do
		timer.Simple(i / 4, function()
			if IsValid(self) then
				local mini = -5 * i
				local maxi = 5 * i
				self:GetPhysicsObject():AddVelocity( Vector(math.random(mini,maxi), math.random(mini,maxi), math.random(mini,maxi)) )
			end
		end)
	end
	
	for i=2,3 do
		timer.Simple(4 * i, function()
			if IsValid(self) then
				self:MakeNoise()
			end
		end)
	end

	timer.Simple(17,function()
		if IsValid(self) then
			self:EmitSound("adultswep/cry.mp3")
		end
	end)

	timer.Simple(20,function()
		if IsValid(self) then
			local explode = ents.Create( "env_explosion" )
			explode:SetPos( self:GetPos())
			explode:SetOwner( self.Owner )
			explode:Spawn() 
			explode:SetKeyValue( "iMagnitude", "0" ) 
			explode:Fire( "Explode", 0, 0 )
			self:Remove()
		end
	end)
end

function ENT:OnRemove()
	self:EmitSound("vo/heavy_paincrticialdeath0"..math.random(1,3)..".mp3",55,120)
end

function ENT:Use()

end

else -- CLIENT
	function ENT:Draw()
		self.Entity:DrawModel()
	end
end