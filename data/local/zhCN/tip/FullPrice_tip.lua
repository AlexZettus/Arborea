function GetObjString(obj,single,known)

	local ret = "<font=Arial,0,16,20><color=0xffffffff>"

	ret = ret .. "Общая цена  "

	--Показывает общую цену
	local gold,silver = Tooltip.GetPriceSilver(obj)

	if gold ~= nil or silver ~= nil then
			if gold > 999999 then
				ret = ret .. "более чем"
			end
			if gold > 0 then
					ret = ret .. gold .. " <pic=data\\ui\\bag\\l_icon-jin-s.bmp,0,0,16,16>"
			end
			if silver >= 0 then
					ret = ret .. silver .. " <pic=data\\ui\\bag\\l_icon-yin-s.bmp,0,0,16,16>"
			end
			--Если цена меньше 0 не в состоянии продать
			if gold < 0 or silver < 0 then
					ret = "<font=Arial,0,16,20><color=0xffffffff>Нельзя продать"
			end
	end

	return ret
end
