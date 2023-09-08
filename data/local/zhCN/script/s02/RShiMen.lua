
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5010057);
	Quest.SetCompleteOptions(5010057);
	Quest.NPCTalk(0,0,"<color=0xfffcf157><Font=arial,0,19,20>Мастер заданий:<color=0xffffffff><Font=arial,0,17,20>\\nВсем воинам света выше 80 уровня я даю задание на мастерство 5 раз в день. За выполнение вас ждет опыт в награду за старания.\\n\\n1. Тот, кто не сможет выполнить все 5 заданий в один день, может продолжить на следующий, в течение которого новые 5 заданий взять уже будет нельзя.\\n2. При отказе от задания новые в этот день взять будет уже нельзя.");

end

local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
	if( id == 30401)then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30401,"<Font=arial,0,19,20><color=0xfffcf157>Мастер заданий:<Font=arial,0,17,20><color=0xffffffff>\\nВы действительно хотите взять задание на мастерство?");
	end
end

local function OnCompleteQuestTalk(id,step)
	if( id == 30401)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30401,"<Font=arial,0,19,20><color=0xfffcf157>Мастер заданий:<Font=arial,0,17,20><color=0xffffffff>\\nСпасибо вам, воин света!");
	end

end

RShiMen = {}
RShiMen["OnTalk"] = OnTalk
RShiMen["OnAcceptQuestTalk"] = OnAcceptQuestTalk
RShiMen["OnCompleteQuestTalk"] = OnCompleteQuestTalk

