
function GetObjString(obj,proto)
	--Активный или пассивный
	local ret = "<Font=arial,0,20,20>"

	--название
	ret = ret .. Tooltip.GetSkillName(proto)

	--статус
	ret = ret .. "<Font=arial,0,16,20>"
	local bA = Tooltip.GetSkillIsLearn(proto)
	if bA == true then
			ret = ret .. "<color=0xff00ff00>   (Активир.)<color=0xffffffff>"
	elseif bA == false then
			ret = ret .. "<color=0xffff0000>   (Не активир.)<color=0xffffffff>"
	end
			
	ret = ret .. "\\n<Font=arial,0,16,20>"
	
	--Активная и пассивная
	local use = Tooltip.GetSkillUseType(proto)
	if use == 1 then
			ret = ret .. "\\n<color=0xff05ff00>Активный<color=0xffffffff>"
	elseif use == 2 then
			ret = ret .. "\\n<color=0xff00a2ff>Пассивный<color=0xffffffff>"
	end
	
	--Необходимость изучения предварительных навыков
	ret = ret .. "\\n" ..Tooltip.GetGESkillNeedSkillName(proto)

	--описание
	ret = ret .. "\\n<color=0xffffffff>" ..Tooltip.GetSkillDesc(proto)

	return ret
end
