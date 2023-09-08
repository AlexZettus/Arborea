local function OnTalk()
		Quest.ClearNPCTalkOptions();                    --Очистить настройки диалогового окна
		Quest.SetNPCTalkOption(EOT_ScenarioTalk,0,0,"Подтвердить выплавку");
		Quest.SetNPCTalkOption(EOT_ScenarioTalk,1,0,"Уйти");

		Quest.NPCTalk(0,0,"Пояснение к выплавке： \\n Привет! Тебе нужен новый эльф? Хочешь, чтобы он был не похож на других? Тогда отдай мне двух своих эльфов, необходимых для перековки в одного нового и чудесного! Скажу тебе по секрету: чем выше уровень и умения у эльфов для перековки, тем больше вероятность получения хорошего эльфа. Да, есть еще одна важная деталь, во время перековки может случится беда. И если подобное произойдет, то ты потеряешь обоих эльфов, да еще и предметы усиления в придачу.  И, чем хуже эльф, тем выше вероятность неудачи. Будь внимательнее при выборе эльфов для создания, ведь оставить можно будет или одного из старых или нового! Помни это и все будет в порядке. Целую, удачи тебе!");
end

local function OnScenarioTalk(id,step)

	if( id == 0 )then --Подтвердить выплавку
		Quest.OpenFairyFusion();
		Quest.CloseNPCTalk();

	elseif( id == 1 )then --Уйти
		Quest.CloseNPCTalk();

	end

end

FairyFusion = {}
FairyFusion ["OnTalk"] = OnTalk
FairyFusion ["OnScenarioTalk"] = OnScenarioTalk
