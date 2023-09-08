local function OnTalk()
	Quest.ClearNPCTalkOptions();
	Quest.SetAcceptOptions(9010218);
	Quest.SetCompleteOptions(9010218);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Марси Лин<color=0xffffffff>\\nКак я рада, что вы смогли отыскать меня и пришли помочь! Скорее, помогите мне выбраться отсюда.");
end

local function OnAcceptQuestTalk(id,step)
    if ( id == 52050) then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(52050,"<Font=arial,0,19,20><color=0xfffcf157>Марси Лин<color=0xffffffff><Font=arial,0,17,20>\\nЯ владею магией и уже выбралась бы, но главари похитителей как-то блокируют магические телепорты отсюда. Убейте их и принесите мне все подозрительные магические артефакты, какие найдете у них. Тогда я смогу открыть портал.");
    end
end

local function OnCompleteQuestTalk(id,step)
    if (id == 52050) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(52050,"<Font=arial,0,19,20><color=0xfffcf157>Марси Лин<color=0xffffffff><Font=arial,0,17,20>\\nОтлично! Это то, что нужно! Сейчас я открою портал и мы свободны.");
	end
end

princess = {}
princess["OnTalk"] = OnTalk
princess["OnAcceptQuestTalk"] = OnAcceptQuestTalk
princess["OnCompleteQuestTalk"] = OnCompleteQuestTalk
