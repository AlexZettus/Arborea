local function OnTalk()
	Quest.ClearNPCTalkOptions();
	Quest.SetAcceptOptions(9010252);
	Quest.SetCompleteOptions(9010252);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Кэйтлин<color=0xffffffff>\\n Добрый день, готовы к задачам?");
end

local function OnAcceptQuestTalk(id,step)
    if ( id == 52058) then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(52058,"<Font=arial,0,19,20><color=0xfffcf157>Кэйтлин<color=0xffffffff><Font=arial,0,17,20>\\nСегодня у меня чудесное настроение, поэтому задачек не будет! Конец лета и начало осени - самое романтическое время, как по мне. Поэтому для получения пятерки по моему предмету, принесите мне 8 Благословений Амура, в 2 раза меньше Карт поцелуя и еще в 2 раза меньше Карт тепла!");
    end
end

local function OnCompleteQuestTalk(id,step)
    if (id == 52058) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(52058,"<Font=arial,0,19,20><color=0xfffcf157>Кэйтлин<color=0xffffffff><Font=arial,0,17,20>\\nМолодец, ты хорошо справился!");
	end
end

sept_4 = {}
sept_4["OnTalk"] = OnTalk
sept_4["OnAcceptQuestTalk"] = OnAcceptQuestTalk
sept_4["OnCompleteQuestTalk"] = OnCompleteQuestTalk
sept_4["OnCompleteQuestTalk"] = OnCompleteQuestTalk
