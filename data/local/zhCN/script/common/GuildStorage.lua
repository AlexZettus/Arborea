

local function OnTalk()
		Quest.ClearNPCTalkOptions();                    --清除对话框选项
		Quest.SetNPCTalkOption(EOT_ScenarioTalk,0,0,"Склад гильдии");					--设置对话选项
		Quest.SetNPCTalkOption(EOT_ScenarioTalk,1,0,"Настройки");

		Quest.NPCTalk(0,0,"Кладовщик гильдии： Приветствую! Чем я могу вам помочь?");
end

local function OnScenarioTalk(id,step)

	if( id == 0 )then --查看仓库
		Quest.GuildStorage();

	elseif( id == 1 )then --设置权限
	  Quest.GuildStorPermit();

	end

end

GuildStorage = {}
GuildStorage["OnTalk"] = OnTalk
GuildStorage["OnScenarioTalk"] = OnScenarioTalk
