local spec_cost_table = {
		[2] 	= "<pic=data\\ui\\bag\\l_icon-bao-s.bmp,0,0,14,14>",
		[10] 	= " Поощрения гильдии",
		[11] 	= " Награды гильдии",
		[13] 	= " Боевые искусства",
		[40] 	= " Обмен предметами",
		[41] 	= " Наряд",
		[42] 	= " Эльф",
		[120]	=	"Отец",
		[121]	=	"Бог земледелия",
		[122]	=	"Фу-си",
		[123]	=	"Сан Мяо",
		[124]	=	"Ли",
		[125]	=	"Юэчжи",
		[126]	=	"Нюйва",
		[127]	=	"Гунгун"
}
local repute_level_table = {
		[0]		= "Ненависть",
		[1]		= "Враждебность",
		[2]		= "Недоверие",
		[3]		= "Равнодушие",
		[4]		= "Доверие",
		[5]		= "Дружелюбие",
		[6]		= "Уважение",
		[7]		= "Почтение",
		[8]		= "Восхищение",
		[9]		= "Превознесение"
}

local repute_level_table_hunjing = {
		[1]		= "Нейтрал",
		[2]		= "Дружба",
		[3]		= "Уважение",
		[4]		= "Почитание",
}

local wuxun_level_table = {
		[1]		= "0",
		[2]		= "200",
		[3]		= "400",
		[4]		= "500",
		[5]		= "600",
		[6]		= "700",
		[7]		= "800",
		[8]		= "900",
		[9]		= "1000",
		[10]	= "1100"
}


function GetObjString(obj,single,known)

	local ret = "<font=Arial,0,16,20><color=0xffffffff>"

	local istax = Tooltip.IsTax(obj)

	if (istax == true) then
		if single == 1 then
			ret = ret .. "Стартовая цена за ед. "
		else
			ret = ret .. "Стартовая цена  "
		end
	else
		if single == 1 then
			ret = ret .. "Цена:  "
		else
			ret = ret .. "Цена продажи  "
		end
	end

	--показывает обычную цену
	local gold,silver = Tooltip.GetPriceSilver(obj)
	if gold ~= nil or silver ~= nil then
			if gold > 0 then
					ret = ret .. gold .. " <pic=data\\ui\\bag\\l_icon-jin-s.bmp,0,0,16,16>"
			end
			if silver > 0 then
					ret = ret .. silver .. " <pic=data\\ui\\bag\\l_icon-yin-s.bmp,0,0,16,16>"
			end
			--если цена меньше нуля это напрямую показывает невоможность продажи
			if gold < 0 or silver < 0 then
					ret = "<font=Arial,0,16,20><color=0xffff402d>Не для продажи<color=0xffffffff>"
			end
			--Если цена ноль необходима оценка есть или нет индикации
			if gold == 0 and silver == 0 then
					if single ~= 1 then
							ret = ret .. "0 <pic=data\\ui\\bag\\l_icon-yin-s.bmp,0,0,16,16>"
					end
			end
	end

	if (istax == true) then
		ret = ret .. "\\nНалог  "
		local taxgold, taxsilver = Tooltip.GetPriceSilverByTax(obj)
		if taxgold ~= nil or taxsilver ~= nil then
			if taxgold > 0 then
				ret = ret .. taxgold .. " <pic=data\\ui\\bag\\l_icon-jin-s.bmp,0,0,16,16>"
			end
			if taxsilver >= 0 then
				ret = ret .. taxsilver .. " <pic=data\\ui\\bag\\l_icon-yin-s.bmp,0,0,16,16>"
			end
		end
		ret = ret .. "\\n <font=Arial,0,16,20><color=0xff05ff00>（Налог будет уплачен гильдии,владеющей городом.）"
	end


	--показывает особенный траты
	local etype,number,level,item = Tooltip.GetPriceSpecCost(obj)

	if etype ~= nil then
			--если особенные траты - репутация
			if etype >= 120 and etype <= 127 then
						if level > 0 then
								local cost_level = repute_level_table[level]
								if cost_level ~= nil then
										ret = ret .. "\\nЗаслужите у семьи  " .. spec_cost_table[etype] .. "уровень репутации" .. cost_level
								end
						end
						if number > 0 then
								if gold ~= 0 or silver ~= 0 then
										ret = ret .. "\\n      "
								end
								ret = ret .. number .. spec_cost_table[etype] .. "Пожертвование семьи"
						end
			--если это обмен товарами
			elseif etype == 40 then
					if item ~= nil and number > 0 then
							ret = ret .. "\\nНужно  " .. item .. "×" .. number
					end
			elseif etype == 13 then
					if level > 1 then
						ret = ret .. "\\nНужно еще "..wuxun_level_table[level].." очков чести для покупки."
					end
					if number > 0 then
						if gold ~= 0 or silver ~= 0 then
										ret = ret .. "\\n"
						end
						ret = ret .. "Нужно "..number .. " очков арены"
					end
			elseif etype == 41 then
					if level > 0 then
						ret = ret .. "\\nРепутация: "..repute_level_table_hunjing[level]
					end
					if number > 0 then
						ret = ret .. "\\nДух:  " ..number
					end
			elseif etype == 42 then
					if level > 0 then
						ret = ret .. "\\nРепутация: "..repute_level_table_hunjing[level]
					end
					if number > 0 then
						ret = ret .. "\\nДух:  " ..number
					end
			elseif etype == 43 then
					if level > 0 then
						ret = ret .. "\\nНужно<color=0xff00ffff> ".. number .." <color=0xffffffff>золотые монеты на месте битвы" 
					end
			else
					local spec_name = spec_cost_table[etype]
					if number > 0 and spec_name ~= nil then
							if gold ~= 0 or silver ~= 0 then
										ret = ret .. "\\n      "
							end
							ret = ret .. "\\nНужно  " .. number .. spec_name
					end
			end
	end

	return ret
end

