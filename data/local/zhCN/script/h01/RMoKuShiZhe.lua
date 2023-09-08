
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5510502);
	Quest.NPCTalk(0,0,"Эмиссар Логова Зверя: Вам нужно больше тренироваться!");
end

local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
	if( id == 30301)then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30301,"Эмиссар Логова Зверя: Если вы хотите доказать, что можете удачно завершить ивент Приключение в логове Зверя, вам нужно убить владыку логова Зверя. Владыка появится после того, как вы уничтожите его приспешников. Принимаете ли вы задание?");
	end
end

RMoKuShiZhe = {}
RMoKuShiZhe["OnTalk"] = OnTalk
RMoKuShiZhe["OnAcceptQuestTalk"] = OnAcceptQuestTalk
