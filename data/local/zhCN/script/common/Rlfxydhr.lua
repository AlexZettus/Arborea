--神界储备官

local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5610015);
	Quest.SetCompleteOptions(5610015);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Меняла древней веры:<color=0xffffffff>\\nЕсли вы поможете мне найти некоторые вещи, я дам вам очки веры.\\n<T>Это задание могут получить игроки с уровнем Святости до 10 включительно. Каждый день задание можно выполнять до 20 раз.</T>");
end

local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
	if( id == 30307)then
  	--  Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30307,"<Font=arial,0,19,20><color=0xfffcf157>Помогите мне собрать ресурсы. Если поможете - я дам вам 100 очков веры.");
	end
end

--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
	if( id == 30307)then
  	--  Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30307,"<Font=arial,0,19,20><color=0xfffcf157>Меняла древней веры:<color=0xffffffff>\\nВпечатляет! Вы неплохо справились!");
	end
end

Rlfxydhr = {}
Rlfxydhr["OnTalk"] = OnTalk
Rlfxydhr["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rlfxydhr["OnCompleteQuestTalk"] = OnCompleteQuestTalk
