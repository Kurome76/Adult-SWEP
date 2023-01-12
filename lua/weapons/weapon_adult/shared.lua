AddCSLuaFile("shared.lua");

CreateConVar( "adultswep_audrey_sounds", 1,  bit.bor(FCVAR_NOTIFY, FCVAR_REPLICATED, FCVAR_SERVER_CAN_EXECUTE))
CreateConVar( "adultswep_smash_players", 1,  bit.bor(FCVAR_NOTIFY, FCVAR_REPLICATED, FCVAR_SERVER_CAN_EXECUTE))
CreateConVar( "adultswep_smash_npcs", 1,  bit.bor(FCVAR_NOTIFY, FCVAR_REPLICATED, FCVAR_SERVER_CAN_EXECUTE))
CreateConVar( "adultswep_smash_ragdolls", 1,  bit.bor(FCVAR_NOTIFY, FCVAR_REPLICATED, FCVAR_SERVER_CAN_EXECUTE))
CreateConVar( "adultswep_infect_chances", 13,  bit.bor(FCVAR_NOTIFY, FCVAR_REPLICATED, FCVAR_SERVER_CAN_EXECUTE))
CreateConVar( "adultswep_length", 15,  bit.bor(FCVAR_NOTIFY, FCVAR_REPLICATED, FCVAR_SERVER_CAN_EXECUTE))

if CLIENT then
	surface.CreateFont( "AdultSwepFont", {
		font = "Default",
		size = 17,
		weight = 800,
		blursize = 0,
		scanlines = 1,
		antialias = true,
		underline = false,
		italic = false,
		strikeout = true,
		symbol = false,
		rotary = false,
		shadow = true,
		additive = true,
		outline = true,
	} )

	SWEP.DrawCrosshair = false
	SWEP.ViewModelFlip = true
	SWEP.Slot = 1
	SWEP.SlotPos = 4;
	SWEP.DrawAmmo = false;
else -- SERVER
	include( "positions.lua" )
end

SWEP.DrawWeaponInfoBox = true
SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true
SWEP.AdminOnly		= true

SWEP.Author			= "Azap"
SWEP.Contact		= "https://www.gmodstore.com/market/view/advanced-adult-swep"
SWEP.Purpose		= "Sex :>"
SWEP.Instructions	= "M1: Sex+Taunt\nM2: Orgasm\nReload: Change Positions\nReload(2sec): Condom Settings"
SWEP.Category			= "Other"
SWEP.IconLetter			= "Adult SWEP"
SWEP.PrintName			= "Adult SWEP"

SWEP.Primary.Sound			= Sound( "adultswep/e/1.wav" )
SWEP.Primary.Recoil			= 0
SWEP.Primary.Damage			= 0
SWEP.Primary.NumShots		= -1
SWEP.Primary.Delay			= 3
SWEP.Primary.Distance		= 65
SWEP.Primary.ClipSize		= -1
SWEP.Primary.DefaultClip	= -1
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "none"
SWEP.Secondary.ClipSize		= -1
SWEP.Secondary.DefaultClip	= -1
SWEP.Secondary.Automatic	= false
SWEP.Secondary.Ammo			= "none"
SWEP.Secondary.Delay		= 15

SWEP.HoldType = "normal"
SWEP.ViewModelFOV = 53
SWEP.ViewModelFlip = false
SWEP.UseHands = true
SWEP.ViewModel = "models/weapons/v_slam.mdl"
SWEP.WorldModel = "models/weapons/w_pistol.mdl" -- "models/weapons/w_medkit.mdl"
SWEP.ShowViewModel = true
SWEP.ShowWorldModel = false

SWEP.IronSightsPos = Vector(0, -10.855, -6.031)
SWEP.IronSightsAng = Vector(18.995, 0.703, -0.704)

SWEP.WElements = {
	["element_name2"] = { type = "Model", model = "models/Gibs/HGIBS_spine.mdl", bone = "ValveBiped.Bip01_Pelvis", rel = "", pos = Vector(-0.922, 7.065, 7.388), angle = Angle(9.619, -5.641, -5.844), size = Vector(0.95, 0.95, 0.95), color = Color(255, 214, 153, 255), surpresslightning = true, material = "", skin = 0, bodygroup = {} },
	["element_name"] = { type = "Model", model = "models/condom/condom.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(9.156, -18.344, -26.494), angle = Angle(-82.987, 139.091, -111.04), size = Vector(9.772, 9.772, 9.772), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}
SWEP.VElements = {
	["element_name1"] = { type = "Model", model = "models/condom/condom.mdl", bone = "Rig_base", rel = "", pos = Vector(1.195, -33.445, 15.939), angle = Angle(21.681, 82.986, 18.413), size = Vector(10, 10, 10), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}

SWEP.ViewModelBoneMods = {
	["Bip01_R_Finger42"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-11.636, -11.197, 12.3) },
	["Bip01_R_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(-0.838, -0.415, 0), angle = Angle(2.516, 36.745, 66.733) },
	["Bip01_R_Finger3"] = { scale = Vector(1, 1, 1), pos = Vector(0.83, -0.013, 0), angle = Angle(0, 0, 0) },
	["Bip01_R_Finger4"] = { scale = Vector(1, 1, 1), pos = Vector(0, -0.686, -0.009), angle = Angle(-6.9, -0.715, 5.927) },
	["Detonator"] = { scale = Vector(3, 3, 3), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["Slam_panel"] = { scale = Vector(3, 3, 3), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["Slam_base"] = { scale = Vector(3, 3, 3), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["Bip01_R_Finger0"] = { scale = Vector(1.052, 1.052, 1.052), pos = Vector(0.004, 0, 0), angle = Angle(0, 0, 0) },
	["Bip01_R_Finger1"] = { scale = Vector(1, 1, 1), pos = Vector(0.21, 0, 0.09), angle = Angle(3.551, -9.388, 28.023) },
	["Bip01_R_Finger2"] = { scale = Vector(1, 1, 1), pos = Vector(0.061, -0.161, 0.218), angle = Angle(3.604, 11.335, 10.19) },
	["Bip01_R_Finger41"] = { scale = Vector(1, 1, 1), pos = Vector(-0.011, 0.059, -0.12), angle = Angle(7.719, 56.575, -7.215) },
	["Bip01_R_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(1.827, 0.555, -0.109), angle = Angle(-0.854, -1.813, 1.218) },
	["Bip01_L_Finger3"] = { scale = Vector(1, 1, 1), pos = Vector(0.001, 0, 0), angle = Angle(0, 0, 0) }
}

local women_models = { -- should have used a string.find instead
	"models/mossman.mdl",
	"models/alyx.mdl",
	"models/Humans/Group01/Female_01.mdl",
	"models/Humans/Group01/Female_02.mdl",
	"models/Humans/Group01/Female_03.mdl",
	"models/Humans/Group01/Female_04.mdl",
	"models/Humans/Group01/Female_06.mdl",
	"models/Humans/Group01/Female_07.mdl",
	"models/Humans/Group02/Female_01.mdl",
	"models/Humans/Group02/Female_02.mdl",
	"models/Humans/Group02/Female_03.mdl",
	"models/Humans/Group02/Female_04.mdl",
	"models/Humans/Group02/Female_06.mdl",
	"models/Humans/Group02/Female_07.mdl",
	"models/Humans/Group03/Female_01.mdl",
	"models/Humans/Group03/Female_02.mdl",
	"models/Humans/Group03/Female_03.mdl",
	"models/Humans/Group03/Female_04.mdl",
	"models/Humans/Group03/Female_06.mdl",
	"models/Humans/Group03/Female_07.mdl",
	"models/Humans/Group03m/Female_01.mdl",
	"models/Humans/Group03m/Female_02.mdl",
	"models/Humans/Group03m/Female_03.mdl",
	"models/Humans/Group03m/Female_06.mdl",
	"models/Humans/Group03m/Female_07.mdl",
	"models/player/group01/female_01.mdl",
	"models/player/group01/female_02.mdl",
	"models/player/group01/female_03.mdl",
	"models/player/group01/female_04.mdl",
	"models/player/group01/female_06.mdl",
	"models/player/group01/female_07.mdl",
	"models/player/group02/female_01.mdl",
	"models/player/group02/female_02.mdl",
	"models/player/group02/female_03.mdl",
	"models/player/group02/female_04.mdl",
	"models/player/group02/female_06.mdl",
	"models/player/group02/female_07.mdl",
	"models/player/group03/female_01.mdl",
	"models/player/group03/female_02.mdl",
	"models/player/group03/female_03.mdl",
	"models/player/group03/female_04.mdl",
	"models/player/group03/female_06.mdl",
	"models/player/group03/female_07.mdl",
	"models/player/group03m/female_01.mdl",
	"models/player/group03m/female_02.mdl",
	"models/player/group03m/female_03.mdl",
	"models/player/group03m/female_06.mdl",
	"models/player/group03m/female_07.mdl",
	"models/player/group01/female_05.mdl",
	"models/fearless/rosa.mdl"
}

local sounds = { -- dicc noises
	"adultswep/Sex1.wav",
	"adultswep/Sex2.wav",
	"adultswep/Sex3.wav",
	"adultswep/Sex4.wav",
	"adultswep/Sex5.wav",
	"adultswep/Sex6.wav",
	"adultswep/Sex7.wav",
	"adultswep/Sex8.wav",
	"adultswep/Sex9.wav",
	"adultswep/Sex10.wav",
	"adultswep/Sex11.wav",
	"adultswep/Sex12.wav",
	"adultswep/Sex13.wav"
}

local Oralsounds = {
	"adultswep/Suck01.wav",
	"adultswep/Suck02.wav",
	"adultswep/Suck03.wav",
	"adultswep/Suck04.wav",
	"adultswep/Suck05.wav",
	"adultswep/Suck06.wav",
	"adultswep/Suck07.wav",
	"adultswep/Suck08.wav",
	"adultswep/Suck09.wav",
	"adultswep/Suck10.wav",
	"adultswep/Suck11.wav",
	"adultswep/Suck12.wav",
	"adultswep/Suck13.wav",
	"adultswep/Suck14.wav",
	"adultswep/Suck15.wav",
	"adultswep/Suck16.wav",
	"adultswep/Suck17.wav",
	"adultswep/Suck18.wav",
	"adultswep/Suck19.wav",
	"adultswep/Suck20.wav",
	"adultswep/Suck21.wav",
	"adultswep/Suck22.wav",
	"adultswep/Suck23.wav",
	"adultswep/Suck24.wav",
	"adultswep/Throat01.wav",
	"adultswep/Throat02.wav",
	"adultswep/Throat03.wav",
	"adultswep/Throat04.wav",
	"adultswep/Throat05.wav",
}

local sounds2 = {
	"physics/body/body_medium_impact_hard4.wav",
	"physics/body/body_medium_break2.wav",
	"physics/body/body_medium_break3.wav",
	"physics/body/body_medium_impact_hard1.wav",
	"physics/body/body_medium_impact_hard2.wav",
	"physics/body/body_medium_impact_hard3.wav",
	"physics/body/body_medium_impact_hard5.wav",
	"physics/body/body_medium_impact_hard6.wav",
	"physics/body/body_medium_break4.wav",
}

local Audreysounds = {
	"adultswep/Audrey1.wav",
	"adultswep/Audrey2.wav",
	"adultswep/Audrey3.wav",
	"adultswep/Audrey4.wav",
	"adultswep/Audrey5.wav",
	"adultswep/Audrey6.wav",
	"adultswep/Audrey7.wav",
	"adultswep/Audrey8.wav",
	"adultswep/Audrey9.wav",
	"adultswep/Audrey10.wav",
	"adultswep/Audrey11.wav",
	"adultswep/Audrey12.wav",
	"adultswep/Audrey13.wav",
	"adultswep/Audrey14.wav",
	"adultswep/Audrey15.wav",
	"adultswep/Audrey16.wav",
	"adultswep/Audrey17.wav",
	"adultswep/Audrey18.wav",
}

local sounds3 = {
	"bot/whoo2.wav",
	"bot/whoo.wav",
	"bot/whoa.wav",
	"bot/oh_my_god.wav",
	"bot/oh_yea.wav",
	"bot/oh_yea2.wav",
	"bot/very_nice.wav",
}

local ejaculationMessages = {
	"OHHHH yes!",
	"Ohhhhhhh yeah baby!",
	"Oh oh ohhhhhhhhhh!", 
	"OOO YEAH!"
}

--Defaults
local getpositionvictimpos = _G["default_victimPos_Dog"]
local getpositionvictimang = _G["default_victimAng_Dog"]
local getpositionattackerpos = _G["default_attackerPos_Dog"]
local getpositionattackerang = _G["default_attackerAng_Dog"]

local unequip = Sound ("ui/item_mtp_drop.wav"); -- for condom
local equip = Sound ("ui/item_mtp_pickup.wav");
local deploy = Sound ("vo/npc/male01/yeah02.wav")

function SWEP:Initialize()
	self:SetWeaponHoldType("normal")
	self:SetHoldType("normal")
	self.length = 0
	self.standbyTime = 0
	self.standbyTimea = 0
	self.NextSecondaryAttack = 0
	self.SoundDelay = 2.8 --0.5
	self.positions = 0
	self.NextReload = 0
	self.plyVictim = NULL
	self.condom = 0
	self.flip = false

	if CLIENT then
		self.VElements = table.FullCopy( self.VElements )
		self.WElements = table.FullCopy( self.WElements )
		self.ViewModelBoneMods = table.FullCopy( self.ViewModelBoneMods )
		
		self:CreateModels(self.WElements) 
		self:CreateModels(self.VElements) 
		
		if IsValid(self.Owner) then
			local vm = self.Owner:GetViewModel()
			if IsValid(vm) then
				self:ResetBonePositions(vm)
				
				if (self.ShowViewModel == nil or self.ShowViewModel) then
					vm:SetColor(Color(255,255,255,255))
				else
					vm:SetColor(Color(255,255,255,1))
					vm:SetMaterial("Debug/hsv")			
				end
			end
		end 
	end
end

if CLIENT then

	SWEP.vRenderOrder = nil
	function SWEP:ViewModelDrawn()
		
		local vm = self.Owner:GetViewModel()
		if !IsValid(vm) then return end
		
		if (!self.VElements) then return end
		
		self:UpdateBonePositions(vm)

		if (!self.vRenderOrder) then
			
			
			self.vRenderOrder = {}

			for k, v in pairs( self.VElements ) do
				if (v.type == "Model") then
					table.insert(self.vRenderOrder, 1, k)
				elseif (v.type == "Sprite" or v.type == "Quad") then
					table.insert(self.vRenderOrder, k)
				end
			end
			
		end

		for k, name in ipairs( self.vRenderOrder ) do
		
			local v = self.VElements[name]
			if (!v) then self.vRenderOrder = nil break end
			if (v.hide) then continue end
			
			local model = v.modelEnt
			local sprite = v.spriteMaterial
			
			if (!v.bone) then continue end
			
			local pos, ang = self:GetBoneOrientation( self.VElements, v, vm )
			
			if (!pos) then continue end
			
			if (v.type == "Model" and IsValid(model)) then

				model:SetPos(pos + ang:Forward() * v.pos.x + ang:Right() * v.pos.y + ang:Up() * v.pos.z )
				ang:RotateAroundAxis(ang:Up(), v.angle.y)
				ang:RotateAroundAxis(ang:Right(), v.angle.p)
				ang:RotateAroundAxis(ang:Forward(), v.angle.r)

				model:SetAngles(ang)
				local matrix = Matrix()
				matrix:Scale(v.size)
				model:EnableMatrix( "RenderMultiply", matrix )
				
				if (v.material == "") then
					model:SetMaterial("")
				elseif (model:GetMaterial() != v.material) then
					model:SetMaterial( v.material )
				end
				
				if (v.skin and v.skin != model:GetSkin()) then
					model:SetSkin(v.skin)
				end
				
				if (v.bodygroup) then
					for k, v in pairs( v.bodygroup ) do
						if (model:GetBodygroup(k) != v) then
							model:SetBodygroup(k, v)
						end
					end
				end
				
				if (v.surpresslightning) then
					render.SuppressEngineLighting(true)
				end
				
				render.SetColorModulation(v.color.r/255, v.color.g/255, v.color.b/255)
				render.SetBlend(v.color.a/255)
				model:DrawModel()
				render.SetBlend(1)
				render.SetColorModulation(1, 1, 1)
				
				if (v.surpresslightning) then
					render.SuppressEngineLighting(false)
				end

			end
			
		end
		
	end

	SWEP.wRenderOrder = nil
	function SWEP:DrawWorldModel()
		
		if (self.ShowWorldModel == nil or self.ShowWorldModel) then
			self:DrawModel()
		end
		
		if (!self.WElements) then return end
		
		if (!self.wRenderOrder) then

			self.wRenderOrder = {}

			for k, v in pairs( self.WElements ) do
				if (v.type == "Model") then
					table.insert(self.wRenderOrder, 1, k)
				end
			end

		end
		
		if (IsValid(self.Owner)) then
			bone_ent = self.Owner
		else
			
			bone_ent = self
		end
		
		for k, name in pairs( self.wRenderOrder ) do
			
			local v = self.WElements[name]
			if (!v) then self.wRenderOrder = nil break end
			if (v.hide) then continue end
			
			local pos, ang
			
			if (v.bone) then
				pos, ang = self:GetBoneOrientation( self.WElements, v, bone_ent )
			else
				pos, ang = self:GetBoneOrientation( self.WElements, v, bone_ent, "ValveBiped.Bip01_R_Hand" )
			end

			if (!pos) then continue end
			
			local model = v.modelEnt
			local sprite = v.spriteMaterial
			
			if (v.type == "Model" and IsValid(model)) then
				model:SetPos(pos + ang:Forward() * v.pos.x + ang:Right() * v.pos.y + ang:Up() * v.pos.z)
				ang:RotateAroundAxis(ang:Up(), v.angle.y)
				ang:RotateAroundAxis(ang:Right(), v.angle.p)
				ang:RotateAroundAxis(ang:Forward(), v.angle.r)
				
				model:SetAngles(ang)
			
				local matrix = Matrix()
				if (v.model == "models/Gibs/HGIBS_spine.mdl") then
					matrix:Scale(v.size + Vector(0,0,self.length))
				else
					matrix:Scale(v.size)
				end
				model:EnableMatrix( "RenderMultiply", matrix )
				
				if (v.material == "") then
					model:SetMaterial("")
				elseif (model:GetMaterial() != v.material) then
					model:SetMaterial( v.material )
				end
				
				if (v.skin and v.skin != model:GetSkin()) then
					model:SetSkin(v.skin)
				end
				
				if (v.bodygroup) then
					for k, v in pairs( v.bodygroup ) do
						if (model:GetBodygroup(k) != v) then
							model:SetBodygroup(k, v)
						end
					end
				end
				
				if (v.surpresslightning) then
					render.SuppressEngineLighting(true)
				end
				
				render.SetColorModulation(v.color.r/255, v.color.g/255, v.color.b/255)
				render.SetBlend(v.color.a/255)
				if (v.model == "models/Gibs/HGIBS_spine.mdl") then
					if !table.HasValue( women_models, self.Owner:GetModel() ) then
						model:DrawModel()
					end
				else
					model:DrawModel()
				end
				render.SetBlend(1)
				render.SetColorModulation(1, 1, 1)
				
				if (v.surpresslightning) then
					render.SuppressEngineLighting(false)
				end

			end
			
		end
		
	end

	function SWEP:GetBoneOrientation( basetab, tab, ent, bone_override )
		
		local bone, pos, ang
		if (tab.rel and tab.rel != "") then
			
			local v = basetab[tab.rel]
			
			if (!v) then return end
			
			pos, ang = self:GetBoneOrientation( basetab, v, ent )
			
			if (!pos) then return end
			
			pos = pos + ang:Forward() * v.pos.x + ang:Right() * v.pos.y + ang:Up() * v.pos.z
			ang:RotateAroundAxis(ang:Up(), v.angle.y)
			ang:RotateAroundAxis(ang:Right(), v.angle.p)
			ang:RotateAroundAxis(ang:Forward(), v.angle.r)
				
		else
		
			bone = ent:LookupBone(bone_override or tab.bone)

			if (!bone) then return end
			
			pos, ang = Vector(0,0,0), Angle(0,0,0)
			local m = ent:GetBoneMatrix(bone)
			if (m) then
				pos, ang = m:GetTranslation(), m:GetAngles()
			end
			
			if (IsValid(self.Owner) and self.Owner:IsPlayer() and 
				ent == self.Owner:GetViewModel() and self.ViewModelFlip) then
				ang.r = -ang.r 
			end
		
		end
		
		return pos, ang
	end

	function SWEP:CreateModels( tab )
		if (!tab) then return end

		for k, v in pairs( tab ) do
			if (v.type == "Model" and v.model and v.model != "" and (!IsValid(v.modelEnt) or v.createdModel != v.model) and 
					string.find(v.model, ".mdl") and file.Exists (v.model, "GAME") ) then
				
				v.modelEnt = ClientsideModel(v.model, RENDER_GROUP_VIEW_MODEL_OPAQUE)
				if (IsValid(v.modelEnt)) then
					v.modelEnt:SetPos(self:GetPos())
					v.modelEnt:SetAngles(self:GetAngles())
					v.modelEnt:SetParent(self)
					v.modelEnt:SetNoDraw(true)
					v.createdModel = v.model
				else
					v.modelEnt = nil
				end
				
			elseif (v.type == "Sprite" and v.sprite and v.sprite != "" and (!v.spriteMaterial or v.createdSprite != v.sprite) 
				and file.Exists ("materials/"..v.sprite..".vmt", "GAME")) then
				
				local name = v.sprite.."-"
				local params = { ["$basetexture"] = v.sprite }
				
				local tocheck = { "nocull", "additive", "vertexalpha", "vertexcolor", "ignorez" }
				for i, j in pairs( tocheck ) do
					if (v[j]) then
						params["$"..j] = 1
						name = name.."1"
					else
						name = name.."0"
					end
				end

				v.createdSprite = v.sprite
				v.spriteMaterial = CreateMaterial(name,"UnlitGeneric",params)
				
			end
		end
		
	end
	
	local allbones
	local hasGarryFixedBoneScalingYet = false

	function SWEP:UpdateBonePositions(vm)
		
		if self.ViewModelBoneMods then
			
			if (!vm:GetBoneCount()) then return end
			

			local loopthrough = self.ViewModelBoneMods
			if (!hasGarryFixedBoneScalingYet) then
				allbones = {}
				for i=0, vm:GetBoneCount() do
					local bonename = vm:GetBoneName(i)
					if (self.ViewModelBoneMods[bonename]) then 
						allbones[bonename] = self.ViewModelBoneMods[bonename]
					else
						allbones[bonename] = { 
							scale = Vector(1,1,1),
							pos = Vector(0,0,0),
							angle = Angle(0,0,0)
						}
					end
				end
				
				loopthrough = allbones
			end
	
			for k, v in pairs( loopthrough ) do
				local bone = vm:LookupBone(k)
				if (!bone) then continue end
				
				
				local s = Vector(v.scale.x,v.scale.y,v.scale.z)
				local p = Vector(v.pos.x,v.pos.y,v.pos.z)
				local ms = Vector(1,1,1)
				if (!hasGarryFixedBoneScalingYet) then
					local cur = vm:GetBoneParent(bone)
					while(cur >= 0) do
						local pscale = loopthrough[vm:GetBoneName(cur)].scale
						ms = ms * pscale
						cur = vm:GetBoneParent(cur)
					end
				end
				
				s = s * ms

				if vm:GetManipulateBoneScale(bone) != s then
					vm:ManipulateBoneScale( bone, s )
				end
				if vm:GetManipulateBoneAngles(bone) != v.angle then
					vm:ManipulateBoneAngles( bone, v.angle )
				end
				if vm:GetManipulateBonePosition(bone) != p then
					vm:ManipulateBonePosition( bone, p )
				end
			end
		else
			self:ResetBonePositions(vm)
		end
		   
	end
	 
	function SWEP:ResetBonePositions(vm)
		
		if (!vm:GetBoneCount()) then return end
		for i=0, vm:GetBoneCount() do
			vm:ManipulateBoneScale( i, Vector(1, 1, 1) )
			vm:ManipulateBoneAngles( i, Angle(0, 0, 0) )
			vm:ManipulateBonePosition( i, Vector(0, 0, 0) )
		end
		
	end


	function table.FullCopy( tab )

		if (!tab) then return nil end
		
		local res = {}
		for k, v in pairs( tab ) do
			if (type(v) == "table") then
				res[k] = table.FullCopy(v) 
			elseif (type(v) == "Vector") then
				res[k] = Vector(v.x, v.y, v.z)
			elseif (type(v) == "Angle") then
				res[k] = Angle(v.p, v.y, v.r)
			else
				res[k] = v
			end
		end
		
		return res
		
	end
	
end

-----------------------------------------------------
function SWEP:Deploy()
	if SERVER then
		if game.SinglePlayer() then -- when will you learn?
			self.Owner:PrintMessage(HUD_PRINTCENTER, "Feature not available in singleplayer.")
			self:Remove()
			return
		end
		self.Owner:EmitSound(deploy,60,100,0.3);
	end
end

function SWEP:Think()
	self.length = self.Owner:GetNWFloat("slarge",0)
	--[[if CLIENT then
		self.WElements = table.FullCopy( self.WElements )
		self:CreateModels(self.WElements) 
	end]]
	if IsValid(self.Owner:GetViewModel()) then
		self.Owner:GetViewModel():SetPlaybackRate(9)
	end
end

function SWEP:Holster()
	if CLIENT and IsValid(self.Owner) then
		local vm = self.Owner:GetViewModel()
		if IsValid(vm) then
			self:ResetBonePositions(vm)
		end
	end
	
	return true
end

function SWEP:Equip()
	self:GetOwner():SetNWString("spositions",0)
end

function SWEP:OnRemove()
	self:Holster()
end

function SWEP:DrawWorldModel()
end

function SWEP:Reload()
	if self.NextReload < CurTime() then
		self.Weapon:SendWeaponAnim( ACT_VM_IDLE ) 

		if self.Owner:KeyDown(IN_SPEED) then
			if self.condom == 0 then
				if CLIENT then self:GetOwner():ChatPrint("[Adult SWEP] Condom: WORN") end
				self.condom = 1
				self.Owner:EmitSound(equip,60,100,0.3);
			else
				if CLIENT then self:GetOwner():ChatPrint("[Adult SWEP] Condom: REMOVED") end
				self.condom = 0
				self.Owner:EmitSound(unequip,60,100,0.3);
			end
			self:GetOwner():SetNWString("scondom",self.condom)
			self.NextReload=CurTime() + 1
			return
		else
			if self.positions == 0 then
				self.positions = self.positions + 1
				if CLIENT then
					if self.flip == true then
						self:GetOwner():ChatPrint("[Adult SWEP] Position: DOGGY STYLE (Reverse)")
					else
						self:GetOwner():ChatPrint("[Adult SWEP] Position: DOGGY STYLE")
					end
						
					self.Weapon:EmitSound("bot/where_are_you_hiding.wav",65,100,0.5)
				end
			elseif self.positions == 1 then
				self.positions = self.positions + 1
				if CLIENT then
					if self.flip == true then
						self:GetOwner():ChatPrint("[Adult SWEP] Position: ORAL SEX (Reverse)")
					else
						self:GetOwner():ChatPrint("[Adult SWEP] Position: ORAL SEX")
					end
					self.Weapon:EmitSound("vo/npc/female01/pain02.wav",65,100,0.5)
				end
			elseif self.positions == 2 then
				self.positions = self.positions + 1
				if CLIENT then
					if self.flip == true then
						self:GetOwner():ChatPrint("[Adult SWEP] Position: GROUND SEX (Reverse)")
					else
						self:GetOwner():ChatPrint("[Adult SWEP] Position: GROUND SEX")
					end
						
					self.Weapon:EmitSound("physics/body/body_medium_impact_hard4.wav",65,100,0.5)
				end
			elseif self.positions == 3 then
				self.positions = self.positions + 1
				if CLIENT then
					if self.flip == true then
						self:GetOwner():ChatPrint("[Adult SWEP] Position: FANTASY (Reverse)")
					else
						self:GetOwner():ChatPrint("[Adult SWEP] Position: FANTASY")
					end
					self.Weapon:EmitSound("bot/oh_yea.wav",65,100,0.5)
				end
			else
				self.positions = 0
				if self.flip ~= true then
					self.flip = true
				else
					self.flip = false
				end
					
				if CLIENT then
					self:GetOwner():ChatPrint("[Adult SWEP] Position: ANAL SEX")
					self.Weapon:EmitSound("vo/npc/female01/pain04.wav",65,100,0.5)
				end
			end
			self:GetOwner():SetNWString("spositions",self.positions)
		end 

		self.NextReload=CurTime() + 0.2
	end
end

function SWEP:PrimaryAttack()
	local trace = {}
		trace.start = self.Owner:GetShootPos()
		trace.endpos = self.Owner:GetShootPos() + self.Owner:GetAimVector()*self.Primary.Distance
		trace.filter = self.Owner
		trace.mask = MASK_PLAYERSOLID
	local tr = util.TraceLine(trace)
	local targ = tr.Entity
	
	if !IsValid(targ) then
		--self:DryFire1()
		return
	end
	
	if !targ:IsPlayer() and !targ:IsNPC() and targ:GetClass() ~= "prop_ragdoll" then
		--self:DryFire1()
		return
	end
	
	if !GetConVar("adultswep_smash_players"):GetBool() and targ:IsPlayer() then
		if CLIENT then self.Owner:ChatPrint("[Adult SWEP] Player Smashing is disabled.") end;
		return
	end
	
	if !GetConVar("adultswep_smash_npcs"):GetBool() and targ:IsNPC() then
		if CLIENT then self.Owner:ChatPrint("[Adult SWEP] NPC Smashing is disabled.") end;
		return
	end
	
	if !GetConVar("adultswep_smash_ragdolls"):GetBool() and targ:IsPlayer() then
		if CLIENT then self.Owner:ChatPrint("[Adult SWEP] Ragdoll Smashing is disabled.") end;
		return
	end
	
	--[[if targ:GetPos():Distance( self.Owner:GetPos() ) > self.Primary.Distance then
		--self:DryFire1()
		return
	end]]
	
	if targ.adulting == true then return end
	
	if SERVER then
		self.Owner:EmitSound( self.Primary.Sound )
	end 
	
	if !table.HasValue( women_models, self.Owner:GetModel() ) then
		local targmdl = targ:GetModel()
		if util.IsValidModel(targmdl) and !targmdl:find("mattress")
		and !targmdl:find("door") and !targmdl:find("strider")
		and !targmdl:find("scanner") and !targmdl:find("helicopter")
		and !targmdl:find("gunship") and !targmdl:find("legs")
		and !targmdl:find("torso") and !targmdl:find("antlion") -- wtf
		and !targmdl:find("garg") and !targmdl:find("crab")
		and !targmdl:find("houndeye") and !targmdl:find("bull")
		and !targmdl:find("snark") and !targmdl:find("tank")
		and !targmdl:find("apc") and !targmdl:find("abrams")
		and !targmdl:find("tentacle") and !targmdl:find("dog")
		and !targmdl:find("Lamarr") and !targmdl:find("lamarr")
		and !targmdl:find("Charple") and !targmdl:find("charple")
		and !targmdl:find("turret") and !targmdl:find("sentry") 
		and targ:GetModelRadius() < 100 then
			if SERVER then
				local noaudrey = false
				if targmdl:find("combine") or targmdl:find("robot")
				or targmdl:find("police") or targmdl:find("barney")
				or targmdl:find("gordon") or targmdl:find("freeman")
				or targmdl:find("kleiner") or targmdl:find("gman")
				or !GetConVar("adultswep_audrey_sounds"):GetBool() then
					noaudrey = true
				end
				
				self:Smash(self.Owner,targ,noaudrey)
			end
			self.Owner:DrawViewModel(false)
		else
			if CLIENT then self.Owner:ChatPrint("[Adult SWEP] The target can't be smashed!") end;
		end
	else
		if CLIENT then self.Owner:ChatPrint("[Adult SWEP] You are female. You can't start!") end;
	end
end

function SWEP:DryFire1()
	if self.standbyTimea == 0 then
		if SERVER then
			self.Owner:EmitSound( sounds2[math.random(#sounds2)] )
		end
		self.standbyTimea = 1
		timer.Simple(3, function() 
			self.standbyTimea = 0
		end)
	end
end

function SWEP:SecondaryAttack()
	if !table.HasValue( women_models, self.Owner:GetModel() ) then
		if self.NextSecondaryAttack > CurTime() then
			if self.standbyTime == 0 then
				if CLIENT then
					self.Owner:ChatPrint("[Adult SWEP] There is not enough liquid. Wait please!")
				else -- SERVER
					self.Owner:EmitSound( sounds[math.random(#sounds)] )
				end
				self.standbyTime = 1
				timer.Simple(3, function()
					if !IsValid(self) then return end
					self.standbyTime = 0
				end)
			end
			return
		end
	end
	self.NextSecondaryAttack = CurTime() + self.Secondary.Delay
	local text = ejaculationMessages[math.random(1,4)]
	
	if CLIENT then
		self.Owner:ChatPrint(self.Owner:GetName() .. ": "..text)
	end
	
	if IsValid(self.plyVictim) then
		if self.plyVictim:IsPlayer() then
			self.plyVictim:ChatPrint(self.Owner:GetName() .. ": "..text)
		end
	end
	
	if !table.HasValue( women_models, self.Owner:GetModel() ) then
		self.standbyTime = 1
		timer.Simple(5, function()
			if !IsValid(self) then return end
			self.standbyTime = 0
		end);
		timer.Simple( 0.2, function()
			if !IsValid(self) then return end
			timer.Create( "Bosalma1", 0.05, 0, function()
				if !IsValid(self) then return end
				if !self.Owner:Alive() then return end
				self:Ejaculate(500)
			end)
			self:EjaculateSND(self.Owner,0.2)
			timer.Simple( 0.9, function() timer.Destroy("Bosalma1") end)
			timer.Simple( 1.2, function()
				if !IsValid(self) then return end
				timer.Create( "Bosalma1", 0.05, 0, function()
					if !IsValid(self) then return end
					if !self.Owner:Alive() then return end
					self:Ejaculate(400)
				end)
				self:EjaculateSND(self.Owner,0.2)
				timer.Simple( 0.9, function() timer.Destroy("Bosalma1") end)
				timer.Simple( 2.1, function()
					timer.Create( "Bosalma1", 0.05, 0, function()
						if !IsValid(self) then return end
						if !self.Owner:Alive() then return end
						self:Ejaculate(300)
					end)
					self:EjaculateSND(self.Owner,0.2)
					timer.Simple( 1.4, function() timer.Destroy("Bosalma1") end)
				end)
			end)
		end)
	end
end

function SWEP:DrawHUD()
	local length = self.Owner:GetNWFloat("slarge",0)
	local kondom = self.Owner:GetNWString("scondom",0)
	local hasaids = self.Owner:GetNWBool("saids",false)
	if self.positions == 1 then
		if self.flip == true then
			lazimolan = "Position: DOGGY STYLE (Reverse)"
		else
			lazimolan = "Position: DOGGY STYLE"
		end
	elseif self.positions == 2 then
		if self.flip == true then
			lazimolan = "Position: ORAL SEX (Reverse)"
		else
			lazimolan = "Position: ORAL SEX"
		end
	elseif self.positions == 3 then
		if self.flip == true then
			lazimolan = "Position: GROUND SEX (Reverse)"
		else
			lazimolan = "Position: GROUND SEX"
		end
	elseif self.positions == 4 then
		if self.flip == true then
			lazimolan = "Position: FANTASY (Reverse)"
		else
			lazimolan = "Position: FANTASY"
		end
	else
		if self.flip == true then
			lazimolan = "Position: ANAL SEX (Reverse)"
		else
			lazimolan = "Position: ANAL SEX"
		end
	end
	surface.SetFont( "AdultSwepFont" )
	surface.SetTextColor( 255, 255, 255, 255 )
	surface.SetTextPos( ScrW()/2 - 40 , ScrH() -40 )
	surface.DrawText(lazimolan)
	surface.SetFont( "AdultSwepFont" )
	surface.SetTextColor( 255, 255, 255, 255 )
	surface.SetTextPos( ScrW()/2, ScrH() -60 )
	surface.DrawText( math.ceil(20 + length*15.5) .. " CM"  )
	
	if kondom == 0 then
		kondomum = "Protection OFF"
	else
		kondomum = "Protection ON"
	end
	surface.SetFont( "AdultSwepFont" )
	surface.SetTextColor( 255, 255, 255, 255 )
	surface.SetTextPos( ScrW()/2 - 20, ScrH() -80 )
	surface.DrawText(kondomum)
	if hasaids then
		surface.SetFont( "AdultSwepFont" )
		surface.SetTextColor( 255, 255, 255, 255 )
		surface.SetTextPos( ScrW()/2 - 40, ScrH() -100 )
		surface.DrawText("You've got AIDS!")
	end
end

function SWEP:DrawWeaponSelection( x, y, wide, tall, alpha )
	draw.SimpleText( self.IconLetter, "Default", x + wide/2, y + tall*0.2, Color( 255, 210, 0, 255 ), TEXT_ALIGN_CENTER )
	draw.SimpleText( self.IconLetter, "Default", x + wide/2 + math.Rand(-4, 4), y + tall*0.2+ math.Rand(-14, 14), Color( 255, 210, 0, math.Rand(10, 120) ), TEXT_ALIGN_CENTER )
	draw.SimpleText( self.IconLetter, "Default", x + wide/2 + math.Rand(-4, 4), y + tall*0.2+ math.Rand(-9, 9), Color( 255, 210, 0, math.Rand(10, 120) ), TEXT_ALIGN_CENTER )
end
	
function SWEP:Ejaculate(force)
	self.BaseClass.ShootEffects(self);
	if !SERVER then return end;
	
	local ang = self.Owner:GetAimVector():Angle()
	local ent = ents.Create ("ent_bosalma");
	local trace = self.Owner:GetEyeTrace();
	local trail = util.SpriteTrail(ent, 0, Color(255,255,255), false, 6, 1, 1, 1/(15+1)*0.5, "trails/laser.vmt")
	ent:SetPos(self.Owner:GetShootPos() + ang:Forward() *11 + ang:Right() *0 + ang:Up() *-35)
	ent:SetAngles(ang)
	ent:SetOwner(self.Owner)
	ent:Spawn()
	
	local phys = ent:GetPhysicsObject()
	if IsValid(phys) then
		phys:ApplyForceCenter(self.Owner:GetAimVector():GetNormalized() * force)
		phys:AddAngleVelocity(Vector(0,2,0))
	
		phys:ApplyForceCenter(ang:Forward() *0 +ang:Up() *165)
		phys:AddAngleVelocity(Vector(0,0,0))
	end
end

function SWEP:Smash(ply,targ,noaudrey)  -- this is the messy part about this turkish code
	if !ply or !ply:IsValid() then return end
 
	if !ply:HasWeapon( "weapon_adult" ) then return end
	
	local plyAttacker = ply
	local plyAttackerPos = ply:GetPos()
	local plyAttackerhp = ply:Health()
	
	if !IsValid(targ) then return end
	
	local plyVictim = targ
	
	if self.flip == true then
		plyVictim = ply
		self.plyVictim = ply
		
		plyAttacker = targ
		plyAttackerPos = targ:GetPos()
		plyAttackerhp = targ:Health()
	else
		self.plyVictim = plyVictim
	end
	
	local plyVictimPos = plyVictim:GetPos()
	local plyVictimhp = plyVictim:Health()
	
	if self.flip == true then
		plyVictimPos = plyAttacker:GetPos()
		plyVictimhp = plyAttacker:Health()
	end
	
	local VictimType = 1
	if plyVictim:IsNPC() then
		VictimType = 2
	elseif plyVictim:GetClass() == "prop_ragdoll" then
		VictimType = 3
	end
	plyAttacker.adulting = true
	
	if plyAttacker:IsPlayer() then
		plyAttacker:Spectate( OBS_MODE_CHASE )
		plyAttacker.PreSeggsAmmo = {}
		for k, v in pairs( plyAttacker:GetWeapons() ) do
			local primary = v:GetPrimaryAmmoType()
			local secondary = v:GetSecondaryAmmoType()
				
			local newPrimary = math.floor( plyAttacker:GetAmmoCount( primary ) * 0.5 )
			local newSecondary = math.floor( plyAttacker:GetAmmoCount( secondary ) * 0.5 )
				
			plyAttacker.PreSeggsAmmo[primary] = newPrimary
			plyAttacker.PreSeggsAmmo[secondary] = newSecondary
		end
		plyAttacker.Seggsed = true
		plyAttacker:DrawViewModel(false)
		plyAttacker:DrawWorldModel(false)
	end
	if VictimType == 1 and plyVictim and IsValid(plyVictim) and plyVictim:IsPlayer() then
		plyVictim:DrawViewModel(false)
		plyVictim:DrawWorldModel(false)
		plyVictim.PreSeggsAmmo = {}
		for k, v in pairs( plyVictim:GetWeapons() ) do
			local primary = v:GetPrimaryAmmoType()
			local secondary = v:GetSecondaryAmmoType()
				
			local newPrimary = math.floor( plyVictim:GetAmmoCount( primary ) * 0.5 )
			local newSecondary = math.floor( plyVictim:GetAmmoCount( secondary ) * 0.5 )
				
			plyVictim.PreSeggsAmmo[primary] = newPrimary
			plyVictim.PreSeggsAmmo[secondary] = newSecondary
		end
		plyVictim.Seggsed = true
		plyVictim.adulting = true
		plyVictim:Spectate( OBS_MODE_CHASE )
	end
	
	local basepos = plyAttacker:GetPos() + Vector(0,0,20)
	local traceda = {}
	traceda.start = basepos
	traceda.endpos = basepos - Vector(0,0,1000)
	traceda.filter = {plyVictim, plyAttacker}
	local trace = util.TraceLine(traceda)
	basepos = trace.HitPos or basepos

	local ragVictim = NULL
	if VictimType == 3 then
		ragVictim = plyVictim
	else
		ragVictim = ents.Create("prop_ragdoll")
		ragVictim:SetModel( plyVictim:GetModel() )
		ragVictim:SetPos( plyVictimPos )
		ragVictim:SetOwner(plyVictim)
		ragVictim:Spawn()
		ragVictim:SetSkin(plyVictim:GetSkin())
		ragVictim:Activate()
		ragVictim.adulting = true
		ragVictim.protected = plyVictim:GetNWBool("sbaby",false)
		for k, v in pairs(plyVictim:GetBodyGroups()) do
			ragVictim:SetBodygroup(k - 1,plyVictim:GetBodygroup(k - 1))
		end
	end
	
	local kafabelirle1 = 0
	local elbelirle1 = 0
	local kolbelirle1 = 0
	local head2 = 0
	local hand2 = 0
	local arm2 = 0
	local solgbelirle = 0
	local saggbelirle = 0
	local solgbelirle2 = 0
	local saggbelirle2 = 0
	
	local getpositions = ply:GetNWString("spositions",0)
	local condom = ply:GetNWString("scondom",0)
	
	if getpositions == 1 then
		getpositionvictimpos = _G["default_victimPos_Dog"]
		getpositionvictimang = _G["default_victimAng_Dog"]
		getpositionattackerpos = _G["default_attackerPos_Dog"]
		getpositionattackerang = _G["default_attackerAng_Dog"]
	elseif getpositions == 2 then
		getpositionvictimpos = _G["default_victimPos_Oral"]
		getpositionvictimang = _G["default_victimAng_Oral"]
		getpositionattackerpos = _G["default_attackerPos_Oral"]
		getpositionattackerang = _G["default_attackerAng_Oral"]
	elseif getpositions == 3 then
		ragVictim:SetCollisionGroup(COLLISION_GROUP_WORLD)
		getpositionvictimpos = _G["default_victimPos_Ground"]
		getpositionvictimang = _G["default_victimAng_Ground"]
		getpositionattackerpos = _G["default_attackerPos_Ground"]
		getpositionattackerang = _G["default_attackerAng_Ground"]
	elseif getpositions == 4 then
		getpositionvictimpos = _G["default_victimPos_Fantasy"]
		getpositionvictimang = _G["default_victimAng_Fantasy"]
		getpositionattackerpos = _G["default_attackerPos_Fantasy"]
		getpositionattackerang = _G["default_attackerAng_Fantasy"]
	elseif getpositions == 0 then
		getpositionvictimpos = _G["default_victimPos_Sex1"]
		getpositionvictimang = _G["default_victimAng_Sex1"]
		getpositionattackerpos = _G["default_attackerPos_Sex1"]
		getpositionattackerang = _G["default_attackerAng_Sex1"]
	end

	if !getpositions == 1 then
		ragVictim:SetCollisionGroup(adult_set_collide)
	end

	local tablosaydir1 = ragVictim:GetPhysicsObjectCount() 

	for i = 1, tablosaydir1 -1 do
		local phys = ragVictim:GetPhysicsObjectNum(i);
		if !phys and !phys:IsValid() then return end
		phys:EnableCollisions( true )
		phys:EnableMotion( false )
			
		if (ragVictim:GetBoneName(ragVictim:TranslatePhysBoneToBone(i)) == "ValveBiped.Bip01_Spine2" ) or (ragVictim:GetBoneName(ragVictim:TranslatePhysBoneToBone(i)) == "ValveBiped.Bip01_Spine1" ) then
			phys:SetPos( basepos + getpositionvictimpos[1] )
			phys:SetAngles( getpositionvictimang[1] )
			if getpositions == 2 then
				phys:EnableMotion(true)
			end;
		elseif (ragVictim:GetBoneName(ragVictim:TranslatePhysBoneToBone(i)) == "ValveBiped.Bip01_R_UpperArm" ) then
			phys:SetPos( basepos + getpositionvictimpos[2] )
			phys:SetAngles( getpositionvictimang[2] ) 
		elseif (ragVictim:GetBoneName(ragVictim:TranslatePhysBoneToBone(i)) == "ValveBiped.Bip01_L_UpperArm" ) then
			phys:SetPos( basepos + getpositionvictimpos[3] )
			phys:SetAngles( getpositionvictimang[3] ); 
		elseif (ragVictim:GetBoneName(ragVictim:TranslatePhysBoneToBone(i)) == "ValveBiped.Bip01_L_Forearm" ) then
			phys:SetPos( basepos + getpositionvictimpos[4] )
			phys:SetAngles( getpositionvictimang[4] )
			kolbelirle1 = i
		elseif (ragVictim:GetBoneName(ragVictim:TranslatePhysBoneToBone(i)) == "ValveBiped.Bip01_L_Hand" ) then
			phys:SetPos( basepos + getpositionvictimpos[5] )
			phys:SetAngles( getpositionvictimang[5] )
			elbelirle1 = i
		elseif (ragVictim:GetBoneName(ragVictim:TranslatePhysBoneToBone(i)) == "ValveBiped.Bip01_R_Forearm" ) then
			phys:SetPos( basepos + getpositionvictimpos[6] )
			phys:SetAngles( getpositionvictimang[6] )
		elseif (ragVictim:GetBoneName(ragVictim:TranslatePhysBoneToBone(i)) == "ValveBiped.Bip01_R_Hand" ) then
			phys:SetPos( basepos + getpositionvictimpos[7] )
			phys:SetAngles( getpositionvictimang[7] ); 
		elseif (ragVictim:GetBoneName(ragVictim:TranslatePhysBoneToBone(i)) == "ValveBiped.Bip01_R_Thigh" ) then
			phys:SetPos( basepos + getpositionvictimpos[8] )
			phys:SetAngles( getpositionvictimang[8] )
			phys:EnableMotion(false)
			saggbelirle = i
			if getpositions == 3 then
				phys:EnableMotion(true)
			end
		elseif (ragVictim:GetBoneName(ragVictim:TranslatePhysBoneToBone(i)) == "ValveBiped.Bip01_R_Calf" ) then
			phys:SetPos( basepos + getpositionvictimpos[9] )
			phys:SetAngles( getpositionvictimang[9] )
		elseif (ragVictim:GetBoneName(ragVictim:TranslatePhysBoneToBone(i)) == "ValveBiped.Bip01_Head1" ) then
			phys:SetPos( basepos + getpositionvictimpos[10] )
			phys:SetAngles( getpositionvictimang[10] )
			phys:EnableMotion(true)
			kafabelirle1 = i
		elseif (ragVictim:GetBoneName(ragVictim:TranslatePhysBoneToBone(i)) == "ValveBiped.Bip01_L_Thigh" ) then
			phys:SetPos( basepos + getpositionvictimpos[11] )
			phys:SetAngles( getpositionvictimang[11] )
			phys:EnableMotion(true)
			solgbelirle = i
			if (getpositions == 3 ) then
				phys:EnableMotion(true)
			end
		elseif (ragVictim:GetBoneName(ragVictim:TranslatePhysBoneToBone(i)) == "ValveBiped.Bip01_L_Calf" ) then
			phys:SetPos( basepos + getpositionvictimpos[12] )
			phys:SetAngles( getpositionvictimang[12] )
		elseif (ragVictim:GetBoneName(ragVictim:TranslatePhysBoneToBone(i)) == "ValveBiped.Bip01_L_Foot" ) then
			phys:SetPos( basepos + getpositionvictimpos[13] )
			phys:SetAngles( getpositionvictimang[13] )
		elseif (ragVictim:GetBoneName(ragVictim:TranslatePhysBoneToBone(i)) == "ValveBiped.Bip01_R_Foot" ) then
			phys:SetPos( basepos + getpositionvictimpos[14] )
			phys:SetAngles( getpositionvictimang[14] )
		elseif (ragVictim:GetBoneName(ragVictim:TranslatePhysBoneToBone(i)) == "ValveBiped.Bip01_L_Clavicle" ) then
			phys:EnableMotion(true); --phys:SetPos( basepos + getpositionvictimpos[15] );phys:SetAngles( getpositionvictimang[15] ); 
		elseif (ragVictim:GetBoneName(ragVictim:TranslatePhysBoneToBone(i)) == "ValveBiped.Bip01_R_Clavicle" ) then
			phys:EnableMotion(true); --phys:SetPos( basepos + getpositionvictimpos[16] );phys:SetAngles( getpositionvictimang[16] ); 
		elseif (ragVictim:GetBoneName(ragVictim:TranslatePhysBoneToBone(i)) == "Miku.TTL01" or ragVictim:GetBoneName(ragVictim:TranslatePhysBoneToBone(i)) == "Miku.TTL02" or ragVictim:GetBoneName(ragVictim:TranslatePhysBoneToBone(i)) == "Miku.TTL03" or ragVictim:GetBoneName(ragVictim:TranslatePhysBoneToBone(i)) == "Miku.TTL04" or ragVictim:GetBoneName(ragVictim:TranslatePhysBoneToBone(i)) == "Miku.TTL05" or ragVictim:GetBoneName(ragVictim:TranslatePhysBoneToBone(i)) == "Miku.TTL06" or ragVictim:GetBoneName(ragVictim:TranslatePhysBoneToBone(i)) == "Miku.TTR01" or ragVictim:GetBoneName(ragVictim:TranslatePhysBoneToBone(i)) == "Miku.TTR02" or ragVictim:GetBoneName(ragVictim:TranslatePhysBoneToBone(i)) == "Miku.TTR03" or ragVictim:GetBoneName(ragVictim:TranslatePhysBoneToBone(i)) == "Miku.TTR04" or ragVictim:GetBoneName(ragVictim:TranslatePhysBoneToBone(i)) == "Miku.TTR05" or ragVictim:GetBoneName(ragVictim:TranslatePhysBoneToBone(i)) == "Miku.TTR06" or ragVictim:GetBoneName(ragVictim:TranslatePhysBoneToBone(i)) == "Miku.PT01" or ragVictim:GetBoneName(ragVictim:TranslatePhysBoneToBone(i)) == "Miku.PT02" or ragVictim:GetBoneName(ragVictim:TranslatePhysBoneToBone(i)) == "Miku.PT03" or ragVictim:GetBoneName(ragVictim:TranslatePhysBoneToBone(i)) == "Miku.PT04" or ragVictim:GetBoneName(ragVictim:TranslatePhysBoneToBone(i)) == "Miku.PT05" or ragVictim:GetBoneName(ragVictim:TranslatePhysBoneToBone(i)) == "Miku.PT06"  ) then
			phys:EnableMotion(true)
		end
	end
	
	local ragAttacker = ents.Create("prop_ragdoll")
	ragAttacker:SetModel( plyAttacker:GetModel() )
	ragAttacker:SetPos( plyVictimPos )
	ragAttacker:SetOwner(plyAttacker)
	ragAttacker:Spawn()
	ragAttacker:SetSkin(plyAttacker:GetSkin())
	ragAttacker:Activate()
	ragAttacker.adulting = true
	for k, v in pairs(plyAttacker:GetBodyGroups()) do
		ragAttacker:SetBodygroup(k - 1,plyAttacker:GetBodygroup(k - 1))
	end
		
	if !getpositions == 1 then
		ragAttacker:SetCollisionGroup(adult_set_collide)
	end

	if getpositions == 3 or getpositions == 4 then
		ragAttacker:SetCollisionGroup(COLLISION_GROUP_WORLD)
	end
	
	if plyAttacker:IsPlayer() then
		plyAttacker:SpectateEntity( ragAttacker )
	elseif plyAttacker:IsNPC() then
		plyAttacker:SetPos( plyVictimPos + Vector(5000,5000,0) )
	end
	
	if VictimType == 1 and plyVictim:IsPlayer() then
		plyVictim:SpectateEntity( ragVictim )
	elseif VictimType == 2 then
		plyVictim:SetPos( plyVictimPos + Vector(5000,5000,0) )
	end

	local tablosaydir2 = ragAttacker:GetPhysicsObjectCount() 
	for i = 1, tablosaydir2 -1 do

		local phys = ragAttacker:GetPhysicsObjectNum(i) 
		if !phys then phys = ragAttacker:GetPhysicsObjectNum(1) end
	
		if (getpositions == 0 or getpositions == 1 or getpositions == 2 or getpositions == 3 or getpositions == 4 ) then 
			phys:EnableCollisions( false )
			phys:EnableMotion( true )
		else
			phys:EnableCollisions( true )
			phys:EnableMotion( false )
		end
		
		if (ragAttacker:GetBoneName(ragAttacker:TranslatePhysBoneToBone(i)) == "ValveBiped.Bip01_Spine2" ) or (ragAttacker:GetBoneName(ragAttacker:TranslatePhysBoneToBone(i)) == "ValveBiped.Bip01_Spine1" ) then
			phys:SetPos( basepos + getpositionattackerpos[1] )
			phys:SetAngles( getpositionattackerang[1] )
			if (getpositions == 2 ) then
				phys:EnableMotion(false)
			end
		elseif (ragAttacker:GetBoneName(ragAttacker:TranslatePhysBoneToBone(i)) == "ValveBiped.Bip01_R_UpperArm" ) then
			phys:SetPos( basepos + getpositionattackerpos[2] )
			phys:SetAngles( getpositionattackerang[2] )
			if (getpositions == 0 or getpositions == 1 or getpositions == 2 or getpositions == 3  or getpositions == 4  ) then
				phys:EnableMotion(false)
			end
		elseif (ragAttacker:GetBoneName(ragAttacker:TranslatePhysBoneToBone(i)) == "ValveBiped.Bip01_L_UpperArm" ) then
			phys:SetPos( basepos + getpositionattackerpos[3] )
			phys:SetAngles( getpositionattackerang[3] )
		elseif (ragAttacker:GetBoneName(ragAttacker:TranslatePhysBoneToBone(i)) == "ValveBiped.Bip01_L_Forearm" ) then
			phys:SetPos( basepos + getpositionattackerpos[4] )
			phys:SetAngles( getpositionattackerang[4] )
			arm2 = i
		elseif (ragAttacker:GetBoneName(ragAttacker:TranslatePhysBoneToBone(i)) == "ValveBiped.Bip01_L_Hand" ) then
			phys:SetPos( basepos + getpositionattackerpos[5] )
			phys:SetAngles( getpositionattackerang[5] )
			hand2 = i
			if (getpositions == 0 or getpositions == 1 or getpositions == 2 or getpositions == 3  or getpositions == 4 ) then
				phys:EnableMotion(false)
			end
		elseif (ragAttacker:GetBoneName(ragAttacker:TranslatePhysBoneToBone(i)) == "ValveBiped.Bip01_R_Forearm" ) then
			phys:SetPos( basepos + getpositionattackerpos[6] )
			phys:SetAngles( getpositionattackerang[6] )
		elseif (ragAttacker:GetBoneName(ragAttacker:TranslatePhysBoneToBone(i)) == "ValveBiped.Bip01_R_Hand" ) then
			phys:SetPos( basepos + getpositionattackerpos[7] )
			phys:SetAngles( getpositionattackerang[7] )
			if (getpositions == 0 or getpositions == 1 or getpositions == 2 or getpositions == 3 or getpositions == 4 ) then
				phys:EnableMotion(false)
			end
		elseif (ragAttacker:GetBoneName(ragAttacker:TranslatePhysBoneToBone(i)) == "ValveBiped.Bip01_R_Thigh" ) then
			phys:SetPos( basepos + getpositionattackerpos[8] )
			phys:SetAngles( getpositionattackerang[8] )
			saggbelirle2 = i
			if getpositions == 1 then
				phys:EnableMotion(false)
				timer.Simple( 1, function()
					phys:EnableMotion(true)
				end )
			end
		elseif (ragAttacker:GetBoneName(ragAttacker:TranslatePhysBoneToBone(i)) == "ValveBiped.Bip01_R_Calf" ) then
			phys:SetPos( basepos + getpositionattackerpos[9] )
			phys:SetAngles( getpositionattackerang[9] )
			if (getpositions == 2 ) then
				phys:EnableMotion(false)
			end
		elseif (ragAttacker:GetBoneName(ragAttacker:TranslatePhysBoneToBone(i)) == "ValveBiped.Bip01_Head1" ) then
			phys:SetPos( basepos + getpositionattackerpos[10] )
			phys:SetAngles( getpositionattackerang[10] )
			if (getpositions == 0 or getpositions == 1 or getpositions == 2 or getpositions == 3 or getpositions == 4 ) then
				phys:EnableMotion(false)
			end
			head2 = i
		elseif (ragAttacker:GetBoneName(ragAttacker:TranslatePhysBoneToBone(i)) == "ValveBiped.Bip01_L_Thigh" ) then
			phys:SetPos( basepos + getpositionattackerpos[11] )
			phys:SetAngles( getpositionattackerang[11] )
			solgbelirle2 = i; 
		elseif (ragAttacker:GetBoneName(ragAttacker:TranslatePhysBoneToBone(i)) == "ValveBiped.Bip01_L_Calf" ) then
			phys:SetPos( basepos + getpositionattackerpos[12] )
			phys:SetAngles( getpositionattackerang[12] )
			if (getpositions == 0 ) then
				phys:EnableMotion(false)
			end;
		elseif (ragAttacker:GetBoneName(ragAttacker:TranslatePhysBoneToBone(i)) == "ValveBiped.Bip01_L_Foot" ) then
			phys:SetPos( basepos + getpositionattackerpos[13] )
			phys:SetAngles( getpositionattackerang[13] )
			if (getpositions == 0 or getpositions == 1 or getpositions == 2 or getpositions == 3 or getpositions == 4  ) then
				phys:EnableMotion(false)
			end;
		elseif (ragAttacker:GetBoneName(ragAttacker:TranslatePhysBoneToBone(i)) == "ValveBiped.Bip01_R_Foot" ) then
			phys:SetPos( basepos + getpositionattackerpos[14] )
			phys:SetAngles( getpositionattackerang[14] )
			if (getpositions == 0 or getpositions == 1 or getpositions == 2 or getpositions == 3 or getpositions == 4 ) then
				phys:EnableMotion(false)
			end
		elseif (ragAttacker:GetBoneName(ragAttacker:TranslatePhysBoneToBone(i)) == "ValveBiped.Bip01_L_Clavicle" ) then
			phys:EnableMotion(true); --phys:SetPos( basepos + getpositionattackerpos[15] );phys:SetAngles( getpositionattackerang[15] ); 
		elseif (ragAttacker:GetBoneName(ragAttacker:TranslatePhysBoneToBone(i)) == "ValveBiped.Bip01_R_Clavicle" ) then
			phys:EnableMotion(true); --phys:SetPos( basepos + getpositionattackerpos[16] );phys:SetAngles( getpositionattackerang[16] ); 
		elseif (ragAttacker:GetBoneName(ragAttacker:TranslatePhysBoneToBone(i)) == "Miku.TTL01" or ragAttacker:GetBoneName(ragAttacker:TranslatePhysBoneToBone(i)) == "Miku.TTL02" or ragAttacker:GetBoneName(ragAttacker:TranslatePhysBoneToBone(i)) == "Miku.TTL03" or ragAttacker:GetBoneName(ragAttacker:TranslatePhysBoneToBone(i)) == "Miku.TTL04" or ragAttacker:GetBoneName(ragAttacker:TranslatePhysBoneToBone(i)) == "Miku.TTL05" or ragAttacker:GetBoneName(ragAttacker:TranslatePhysBoneToBone(i)) == "Miku.TTL06" or ragAttacker:GetBoneName(ragAttacker:TranslatePhysBoneToBone(i)) == "Miku.TTR01" or ragAttacker:GetBoneName(ragAttacker:TranslatePhysBoneToBone(i)) == "Miku.TTR02" or ragAttacker:GetBoneName(ragAttacker:TranslatePhysBoneToBone(i)) == "Miku.TTR03" or ragAttacker:GetBoneName(ragAttacker:TranslatePhysBoneToBone(i)) == "Miku.TTR04" or ragAttacker:GetBoneName(ragAttacker:TranslatePhysBoneToBone(i)) == "Miku.TTR05" or ragAttacker:GetBoneName(ragAttacker:TranslatePhysBoneToBone(i)) == "Miku.TTR06" or ragAttacker:GetBoneName(ragAttacker:TranslatePhysBoneToBone(i)) == "Miku.PT01" or ragAttacker:GetBoneName(ragAttacker:TranslatePhysBoneToBone(i)) == "Miku.PT02" or ragAttacker:GetBoneName(ragAttacker:TranslatePhysBoneToBone(i)) == "Miku.PT03" or ragAttacker:GetBoneName(ragAttacker:TranslatePhysBoneToBone(i)) == "Miku.PT04" or ragAttacker:GetBoneName(ragAttacker:TranslatePhysBoneToBone(i)) == "Miku.PT05" or ragAttacker:GetBoneName(ragAttacker:TranslatePhysBoneToBone(i)) == "Miku.PT06"  ) then
			phys:EnableMotion(true)
		end	
	end
	
	local randomChance = math.random(1,12)
	if condom == 0 then
		self:BeginSeggsEffects(plyAttacker, ragVictim, solgbelirle, noaudrey)
		if VictimType == 1 and plyVictim:IsPlayer() and noaudrey ~= true and !plyVictim:GetNWBool("sbaby",false) then
			plyVictim:ChatPrint("[Adult SWEP] You're pregnant!")
		end
	else
		if randomChance == 5 then
			self:BeginSeggsEffects(plyAttacker, ragVictim, solgbelirle, noaudrey)
			if VictimType == 1 and plyVictim:IsPlayer() and noaudrey ~= true and !plyVictim:GetNWBool("sbaby",false) then
				plyVictim:ChatPrint("[Adult SWEP] OMG! Condom was torn. You're pregnant!")
			end
			condom = 0
			if plyAttacker:IsPlayer() then
				plyAttacker:ChatPrint("[Adult SWEP] OMG! You Condom breaks..")
			end
		end
	end
	
	local randomChances = math.random(1,GetConVar( "adultswep_infect_chances" ):GetInt())

	if randomChances == 1 then
		if VictimType == 1 and plyVictim:IsPlayer() then
			plyVictim:ChatPrint("[Adult SWEP] AIDS virus was infected!")
			plyVictim:SetNWBool("saids",true);
		end
		if plyAttacker:IsPlayer() then
			plyAttacker:ChatPrint("[Adult SWEP] AIDS virus was infected!")
			plyAttacker:SetNWBool("saids",true);
		end
	else -- if we are infected, give it to someone else
		if VictimType == 1 and plyVictim:IsPlayer() then
			if plyAttacker:GetNWBool("saids",false) then
				plyVictim:SetNWBool("saids",true)
				if plyAttacker:IsPlayer() then
					plyVictim:ChatPrint("[Adult SWEP] AIDS virus was infected!")
				end
			end
			if plyVictim:GetNWBool("saids",false) then
				plyAttacker:SetNWBool("saids",true)
				if plyAttacker:IsPlayer() then
					plyAttacker:ChatPrint("[Adult SWEP] AIDS virus was infected!")
				end
			end
		end
	end
	
	--Heading system of the initiator acoustic (:
	local thrustTimerString = "adultThrust"..math.random(1453)
	local phys = ragAttacker:GetPhysicsObjectNum( head2 )
	local phys2 = ragAttacker:GetPhysicsObjectNum( arm2 )
	local phys3 = ragAttacker:GetPhysicsObjectNum(  hand2 )
	
	if phys and phys:IsValid() then
		local saydir2 = 1
		local saydir1 = 1
		local kafasalla1 = getpositionattackerang[10]
		local elsalla1 = getpositionattackerang[4]
		
		timer.Create( thrustTimerString, 0.02, 0, function()
			if ragAttacker and IsValid(ragAttacker) and phys and phys:IsValid() then 
				if saydir2 >= 10 then
					saydir1 = 2
					saydir2 = 1
				elseif saydir2 >= 4 then
					phys:SetAngles( Angle(kafasalla1.p + saydir1 , kafasalla1.y - saydir1, kafasalla1.r - saydir1))
					phys2:SetAngles( Angle(elsalla1.p + saydir1 , elsalla1.y, elsalla1.r - saydir1))
					saydir1 = saydir1 - 1 /7
					saydir2 = saydir2 + 1 /7
				else
					phys:SetAngles( Angle(kafasalla1.p + saydir1 , kafasalla1.y - saydir1, kafasalla1.r - saydir1))
					phys2:SetAngles( Angle(elsalla1.p + saydir1 , elsalla1.y, elsalla1.r - saydir1))
					saydir1 = saydir1 + 1 /7
					saydir2 = saydir2 + 1 /7
				end
			else 
				if timer.Exists( thrustTimerString ) then
					timer.Destroy( thrustTimerString )
				end
			end
		end )
	end  

	--Buddha's head spinning system..
	local thrustTimerString2 = "adult2Thrust"..math.random(1453)
	local physs = ragVictim:GetPhysicsObjectNum( kafabelirle1 )
	local physs2 = ragVictim:GetPhysicsObjectNum( kolbelirle1)
	local physs3 = ragVictim:GetPhysicsObjectNum( elbelirle1 )
	
	if physs and physs:IsValid() then
		local saydir3 = 1
		local saydir4 = 1
		local gereklisayi = 3
		
		if !getpositions == 2 then
			gereklisayi = 7
		end
		
		local kafasalla2 = getpositionvictimang[10]
		local elsalla2 = getpositionvictimang[4]
		
		timer.Create( thrustTimerString2, 0.02, 0, function()
			if ragVictim and ragVictim:IsValid() and physs and physs:IsValid() then
				physs:EnableMotion( true )
				physs:EnableCollisions( true )
				if !getpositions == 2 then
					physs2:EnableMotion( true )
					physs2:EnableCollisions( true )
					physs3:EnableMotion( true )
					physs3:EnableCollisions( true )
				end
				if saydir4 >= 14 then
					saydir4 = 2
					saydir3 = 1 
				elseif (saydir4 >= 7) then
					if !getpositions == 2 then
						physs:SetAngles( Angle(kafasalla2.p + saydir3 , kafasalla2.y - saydir3, kafasalla2.r - saydir3))
						physs2:SetAngles( Angle(elsalla2.p + saydir3 , elsalla2.y, elsalla2.r - saydir3))
					else
						physs:SetAngles( Angle(kafasalla2.p + saydir3 , kafasalla2.y, kafasalla2.r))
					end
					saydir3 = saydir3 - 1 / gereklisayi
					saydir4 = saydir4 + 1 / 7
				else
					if !getpositions == 2 then
						physs:SetAngles( Angle(kafasalla2.p + saydir3 , kafasalla2.y - saydir3, kafasalla2.r - saydir3))
						physs2:SetAngles( Angle(elsalla2.p + saydir3 , elsalla2.y, elsalla2.r - saydir3))
					else
						physs:SetAngles( Angle(kafasalla2.p + saydir3 , kafasalla2.y, kafasalla2.r ))
					end
					saydir3 = saydir3 + 1 / gereklisayi
					saydir4 = saydir4 + 1 / 7
				end
				physs:EnableMotion( false )
				physs:EnableMotion( false )
				if !getpositions == 2 then
					physs2:EnableMotion( false )
					physs3:EnableMotion( false )
				end
			else 
				if timer.Exists( thrustTimerString2 ) then
					timer.Destroy( thrustTimerString2 )
				end
			end
		end )
	end
	
	local dogtime = "rthrust"..math.random(1453)

	if (getpositions == 0 or getpositions == 1 or getpositions == 2 or getpositions == 3 or getpositions == 4) then
		local phys = ragAttacker:GetPhysicsObjectNum( solgbelirle2 )
		if getpositions == 1 then
			vels = 750
			times = 0.3
		elseif getpositions == 2 then
			vels = 1750
			times = 0.3
		elseif getpositions == 3 then
			vels = 900
			times = 0.3
		elseif getpositions == 4 then
			vels = 1750
			times = 0.4
		elseif getpositions == 0 then
			vels = 1750
			times = 0.4
		end
		
		if phys and phys:IsValid() then
			phys:SetVelocity( Vector( 0, 0, 1000 ) )
			timer.Create( dogtime, times, 0, function()
				if IsValid(phys) then
					phys:SetVelocity( Vector( 0, 0, vels ) )
				end
				if math.random(7) == 3 and IsValid(ragVictim) then
					if math.random() < 0.5 then
						ragVictim:EmitSound( sounds2[math.random(#sounds2)] )
					else
						if noaudrey ~= true then
							ragVictim:EmitSound( Audreysounds[math.random(#Audreysounds)] )
						end
					end
				end
			end)
		end
	end
	
	if !(getpositions == 3 or getpositions == 0 or getpositions == 4) then
		--Made for freezing issue.
		thrustTimerString3 = "adult3Thrust"..math.random(1453)
		timer.Create( thrustTimerString3, 0.1, 0, function()
			if ragVictim and ragVictim:IsValid() then  
				ragVictim:SetCollisionGroup(COLLISION_GROUP_WORLD)
				ragVictim:SetCollisionGroup(COLLISION_GROUP_NONE)
			else 
				if timer.Exists( thrustTimerString2 ) then
					timer.Destroy( thrustTimerString2 )
				end
				if timer.Exists( thrustTimerString3 ) then
					timer.Destroy( thrustTimerString3 )
				end
			end
			if ragAttacker and ragAttacker:IsValid() then 
				ragAttacker:SetCollisionGroup(COLLISION_GROUP_WORLD)
				ragAttacker:SetCollisionGroup(COLLISION_GROUP_NONE)
			else
				if timer.Exists( thrustTimerString ) then
					timer.Destroy( thrustTimerString )
				end
				if timer.Exists( dogtime ) then
					timer.Destroy( dogtime )
				end
				if timer.Exists( thrustTimerString3 ) then
					timer.Destroy( thrustTimerString3 )
				end
			end
		end )
	end
	
	local soundTimerString = "EmitadultSounds"..math.random(1453)
	timer.Create( soundTimerString, self.SoundDelay, 0, function()
		if ragVictim and ragVictim:IsValid() then
			if math.random() < 0.7 then
				if getpositions == 2 then
					ragVictim:EmitSound( Oralsounds[math.random(#Oralsounds)] )
				else
					ragVictim:EmitSound( sounds[math.random(#sounds)] )
				end
			else
				if noaudrey ~= true then
					ragVictim:EmitSound( Audreysounds[math.random(#Audreysounds)] )
				end
			end
		else
			if timer.Exists( soundTimerString ) then
				timer.Destroy( soundTimerString )
			end
			if timer.Exists( thrustTimerString2 ) then
				timer.Destroy( thrustTimerString2 )
			end
			if thrustTimerString3 ~= nil then
				if timer.Exists( thrustTimerString3 ) then
					timer.Destroy( thrustTimerString3 )
				end
			end
		end
	end )
	
	local baby = 0
	if condom == 0 then
		baby = 7
	end
	
	local adultLengths = GetConVar( "adultswep_length" ):GetInt() + baby
	timer.Simple( adultLengths, function()
		self.plyVictim = NULL
		if plyAttacker and IsValid(plyAttacker) then
			if plyAttacker:IsPlayer() then
				plyAttacker:UnSpectate()
				plyAttacker:Spawn()
				plyAttacker:SetPos( plyAttackerPos )
				timer.Simple(0, function()
					if !IsValid(plyAttacker) then return end
					plyAttacker:SetHealth(plyAttackerhp)
				end)
			else
				plyAttacker:SetPos( plyAttackerPos )
			end
			plyAttacker.adulting = false
		end
		
		if plyVictim and IsValid(plyVictim) then
			if VictimType == 1 then
				plyVictim:UnSpectate()
				plyVictim:Spawn()
				timer.Simple(0, function()
					if !IsValid(plyAttacker) then return end
					if !IsValid(plyVictim) then return end
					if plyAttacker:GetNWFloat("slarge",0) == 0 then
						plyVictim:SetHealth( plyVictimhp - 10) 
					else
						plyVictim:SetHealth( plyVictimhp / plyAttacker:GetNWFloat("slarge",0) * 1.5) 
					end
				end)
				plyVictim:SetPos( plyVictimPos )
			elseif VictimType == 2 then
				plyVictim:SetPos( plyVictimPos )
			elseif VictimType == 3 then
				for i = 1, tablosaydir1 do
					local phys = ragVictim:GetPhysicsObjectNum(i)
					if phys and phys:IsValid() then
						phys:EnableMotion( true )
					end
				end
			end
			plyVictim.adulting = false
		end	
		
		condom = 0
		if ragAttacker and ragAttacker:IsValid() then
			ragAttacker:EmitSound( sounds3[math.random(#sounds3)] )
			ragAttacker:SetCollisionGroup(COLLISION_GROUP_NONE)
			SafeRemoveEntity( ragAttacker )
		end
		if ragVictim and ragVictim:IsValid() then
			ragVictim:SetCollisionGroup(COLLISION_GROUP_NONE)
			ragVictim:EmitSound("bot/null.wav")
			if VictimType != 3 then SafeRemoveEntity( ragVictim ) end
		end
		
		if timer.Exists( dogtime ) then
			timer.Destroy( dogtime )
		end
		if timer.Exists( soundTimerString ) then
			timer.Destroy( soundTimerString )
		end
		if timer.Exists( thrustTimerString ) then
			timer.Destroy( thrustTimerString )
		end
		if timer.Exists( thrustTimerString2 ) then
			timer.Destroy( thrustTimerString2 )
		end
		if thrustTimerString3 then
			if timer.Exists( thrustTimerString3 ) then
				timer.Destroy( thrustTimerString3 )
			end
		end
	end )

end 

hook.Add( "CanPlayerSuicide", "adultSWEP.CanPlayerSuicide", function( ply )
	if ply.adulting then
		return false
	else
		if IsValid(ply:GetActiveWeapon()) then
			ply:GetActiveWeapon().plyVictim = NULL
		end
	end
end )

function SWEP:EjaculateSND(v,vol)
	if math.random() < 0.5 then
		v:EmitSound("weapons/bugbait/bugbait_impact1.wav",70,math.random(95,110),vol)
	else
		v:EmitSound("weapons/bugbait/bugbait_impact3.wav",70,math.random(95,110),vol)
	end
end

function SWEP:BeginSeggsEffects(plyAttacker, ragVictim, solgbelirle, noaudrey)
	local target = ragVictim
	local owner = plyAttacker
	local gbelirle = solgbelirle
	if (IsValid(target) && target != nil ) then
		if noaudrey ~= true then -- crap that shouldn't be run if not female
			target:EmitSound("vo/npc/female01/ohno.wav")	
			
			for i = 1, 7 do
				timer.Simple((2*i), function()
					if IsValid(target) then
						target:SetColor(Color(target:GetColor().r, target:GetColor().g * .95, target:GetColor().b * .95, target:GetColor().a))
						if math.random(1,2) == 2 then
							target:EmitSound("vo/npc/female01/pain0"..(math.random(1,9))..".wav")
						end
					end
				end)
			end
			
			timer.Simple(18, function()
				if IsValid(target) && IsValid(owner) then
					if !target.protected then
						local tpos = target:GetPos() + Vector(0,0,10)
						local tclass = target:GetClass()
						local tmod = target:GetModel()
						local tskin = target:GetSkin()

						for i = 0, math.random(1,4) do
							timer.Simple((i/2), function()
								local vPoint = tpos
								local effectdata = EffectData()
								effectdata:SetStart( vPoint ) 
								effectdata:SetOrigin( vPoint )
								effectdata:SetScale( 6 )
								util.Effect( "cball_bounce", effectdata )
								if SERVER then
									local ent = ents.Create("sent_babye")
									ent.Adult = tclass
									ent.Model = tmod
									ent.Skin = tskin
									ent:SetPos(tpos)
									ent:Spawn()
									ent:Activate()
									if owner:IsPlayer() then
										undo.Create( "sent_babye" )
										undo.AddEntity( ent )
										undo.SetPlayer( owner )
										undo.SetCustomUndoText( "[Adult SWEP] Baby Abortioned." )
										undo.Finish()
									end
								end
							end)
						end
					else
						if IsValid(target:GetOwner()) then
							if target:IsPlayer() and math.random() < 0.5 then
								target.protected = false
								target:SetNWBool("sbaby",false)
								target:ChatPrint("[Adult SWEP] Your baby protection pills wore off!")
							end
						end
					end
				end
			end)
		end
		--[[for i = 1, 28 do
			timer.Simple((i/4.5), function()
				if IsValid(target) && target then
					b1 = target:LookupBone("ValveBiped.Bip01_Pelvis")
					b2 = target:LookupBone("ValveBiped.Bip01_Spine1")
					b3 = target:LookupBone("ValveBiped.Bip01_Spine2")
					b4 = target:LookupBone("ValveBiped.Bip01_Spinebut")
					b5 = target:LookupBone("ValveBiped.Bip01_Spine")
					if b1 then ScaleBone( target, b1, .3 )	end
					if b2 then ScaleBone( target, b2, .2 )	end
					if b3 then ScaleBone( target, b3, .15)	end
					if b4 then ScaleBone( target, b4, .2)	end
					if b5 then ScaleBone( target, b5, .2)	end
				end
			end)
		end]]
		
		timer.Simple((1), function()
			if IsValid(target) then
				target:EmitSound("weapons/bugbait/bugbait_squeeze"..math.random(1,3)..".wav",70)
			end
		end)
		
		
		timer.Simple(14, function()
			if IsValid(target) and IsValid(self) then
				self:EjaculateSND(target)
			end
		end)

		timer.Simple(15, function()
			if IsValid(target) then
				if noaudrey ~= true then
					target:EmitSound("vo/npc/Alyx/gasp03.wav")
				end
				for i = 1, 48 do
					timer.Simple((i/16), function()
						if IsValid(target) then
							local gbolgesi = target:GetPhysicsObjectNum( gbelirle )
							if gbolgesi ~= nil then
								local vPoint = gbolgesi:GetPos()
								local effectdata = EffectData()
								effectdata:SetStart( vPoint ) 
								effectdata:SetOrigin( vPoint )
								effectdata:SetScale( 4 )
								effectdata:SetFlags(0)
								util.Effect( "BloodImpact", effectdata )	
								
								local particle = ents.Create("info_particle_system")
								particle:SetKeyValue("effect_name","blood_impact_synth_01")
								particle:SetKeyValue("start_active",tostring(1))
								particle:Spawn()
								particle:Activate()
								particle:SetPos(vPoint)
								particle:Fire("Kill","",0.1)
							end
						end
					end)
				end
				local traceworld = {}
				traceworld.start = target:GetPos() 
				traceworld.endpos = traceworld.start + (Vector(0,0,-1) * 8000) 
				local trw = util.TraceLine(traceworld) 
				local worldpos1 = trw.HitPos + trw.HitNormal 
				local worldpos2 = trw.HitPos - trw.HitNormal 
				util.Decal("Blood",worldpos1,worldpos2)
			end
		end)
	end
end

hook.Add( "PlayerLoadout", "AdultSwep_ReturnAmmo", function( ply )
	if !IsValid( ply ) then return end
	if !ply.Seggsed then return end
	
	ply.Seggsed = nil
	--Give the player back their ammo
	for k, v in pairs( ply.PreSeggsAmmo ) do
		ply:GiveAmmo( v, k, true )
	end
	
	return true
end)

local function spawnayiks( victim )
	victim:SetNWFloat("slarge",0 )
	victim:SetNWBool("saids",false)
	victim:SetNWBool("sbaby",false)
	victim:SetNWBool("saidsx",false)
end
hook.Add( "PlayerDeath", "spawnsw", spawnayiks )

function think4u()
	for i = 1, #player.GetAll() do
		local aidscek = player.GetByID(i):GetNWBool("saids",false)
		local aidscek2 = player.GetByID(i):GetNWBool("saidsx",false)

		if aidscek then
			if !aidscek2 then 
				local aidssounds = {
					"ambient/voices/cough1.wav",
					"ambient/voices/cough2.wav",
					"ambient/voices/cough3.wav",
					"ambient/voices/cough4.wav"
				}
				player.GetByID(i):EmitSound( aidssounds[math.random(#aidssounds)] )
				player.GetByID(i):ChatPrint("[Adult SWEP] You've got AIDS.")
				player.GetByID(i):SetNWBool("saidsx",true)
				player.GetByID(i):SetHealth(player.GetByID(i):Health() - 10) 
				--player.GetByID(i):ViewPunch( Angle(-10, 0, 0) )
				if player.GetByID(i):Health() <= 0 then
					player.GetByID(i):Kill()
					--player.GetByID(i):ChatPrint("[Adult SWEP] You're dead.")
					player.GetByID(i):SetNWBool("saids",false)
				end 
				timer.Simple( 60, function() player.GetByID(i):SetNWBool("saidsx",false) end )
			end
		end
	end
end
hook.Add("Think", "think4u", think4u)
