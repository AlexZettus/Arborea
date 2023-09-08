function GetObjString(obj,proto)

	local ret = "<font=Arial,0,20,20><color=0xffffffff>"
	--Название
	ret = ret .. Tooltip.GetPetSkillName(proto)

	--Класс
	local level = Tooltip.GetPetSkillLevel(proto)
	--if level > 1 then
		ret = ret .. "[<color=0xff05ff00>" .. level .. "Уровень<color=0xffffffff>]"
	
	ret = ret .. "<font=Arial,0,16,20>"
	--Тип
	ret = ret .. "\\n" .. Tooltip.GetPetSkillType(proto)

	--Описание
	ret = ret .. "\\n" .. Tooltip.GetPetSkillDesc(proto)

	--end

	return ret
end


	