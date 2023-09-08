local type_table = {[2]="Миф",[3]="Ослабление",[4]="Контроль",[5]="Лечение",[6]="Увеличение",[7]="Замедление",[8]="Пища",[9]="Зелье",[15]="Транспорт",[16]="Питомец"}

local ONE_DAY	 	= 24*60*60
local ONE_HOUR	 	= 60*60
local ONE_MINUTE 	= 60

local function GetTimeValue(time)
                if time <= 0 then
                          time = 0
                end               
                 

		if time > ONE_DAY then
			return	string.format("%d дн.",time/ONE_DAY)
		elseif time > ONE_HOUR then
		  	return string.format("%d ч.",time/ONE_HOUR)
		elseif time > ONE_MINUTE then
		  	return string.format("%d мин.",time/ONE_MINUTE)
		else
		  	return string.format("%d сек.",time)
		end
end

function GetObjString(obj,proto)

	local ret = "<font=Arial,0,20,20><color=0xffffffff>"
	--Название
	ret = ret .. Tooltip.GetBuffName(proto)

	ret = ret .. "<font=Arial,0,16,20>"
	--Тип
	local type = type_table[Tooltip.GetBuffType(proto)];
	if type then
			ret = ret .. "\\n<color=0xffff7800>" .. type .. "<color=0xffff7800> усиление"
	end

	--Описание
	ret = ret .. "\\n \\n" .. Tooltip.GetBuffDesc(proto)

	--Оставшееся время
  local remain = Tooltip.GetBuffRemainTime(obj)
  if remain == 0 then
			ret = ret .. "\\n<color=0xff05ff00>Постоянно<color=0xffffffff>"
	else
			ret = ret .. "\\nОсталось <color=0xff05ff00>" .. GetTimeValue(remain)
	end

	return ret
end

