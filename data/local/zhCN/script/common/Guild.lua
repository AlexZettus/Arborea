

local function OnTalk()
	Quest.ClearNPCTalkOptions();
	Quest.SetNPCTalkOption(EOT_ScenarioTalk,0,0,"Создание гильдии");
	Quest.SetNPCTalkOption(EOT_ScenarioTalk,1,0,"Роспуск гильдии");
	Quest.NPCTalk(0,0,"Управляющий гильдиями: Приветствую! Чем я могу вам помочь?");
end

local function OnScenarioTalk(id,step)
	if( id == 0 )then
		local playerlv = Tooltip.GetLocalPlayerLevel()
		if playerlv >= 20 then
			Quest.GuildCreate();
		else
			Quest.NPCTalk(0,0,"Управляющий гильдиями: Для создания гильдии вам необходимо достичь 20 уровня и потратить 20 золотых.");
		end
	elseif( id == 1 )then
		Quest.GuildDismiss();
	end
end

Guild = {}
Guild["OnTalk"] = OnTalk
Guild["OnScenarioTalk"] = OnScenarioTalk
Guild["OnCompleteQuestTalk"] = OnCompleteQuestTalk
