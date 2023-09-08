local function OnTalk()
		Quest.ClearNPCTalkOptions();                    --Очистить настройки диалогового окна
		Quest.SetNPCTalkOption(EOT_ScenarioTalk,0,0,"Усиление снаряжения");

		Quest.NPCTalk(0,0,"Аманда:\\nУ меня можно усилять и переносить Звезды.\\nДля уничтожения уже созданной звезды нужны предметы из Кафедрала или Бастиона, которые находятся во Фронтире. Свиток Ориона можно купить у <color=0xff00ddbb>Менялы небесных монет Джейкоба<color=0xffffffff>.\\nЗвезда на снаряжении означает:\\nСерая - <color=0xffff0000>50%<color=0xffffffff> базового значения;\\nЗеленая - <color=0xffff0000>80%<color=0xffffffff> базового значения; \\nГолубая - <color=0xffff0000>100%<color=0xffffffff> базового значения;\\nФиолетовая - <color=0xffff0000>150%<color=0xffffffff> базового значения\\nЗолотая - <color=0xffff0000>300%<color=0xffffffff> базового значения.");
end

local function OnScenarioTalk(id,step)


	if( id == 0 )then --Развитие снаряжение
		Quest.OpenEquipGrow();
		Quest.CloseNPCTalk();
	end

end

EquipGrow = {}
EquipGrow["OnTalk"] = OnTalk
EquipGrow["OnScenarioTalk"] = OnScenarioTalk
