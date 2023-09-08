local function OnTalk()
	Quest.ClearNPCTalkOptions();
	Quest.SetAcceptOptions(9010250);
	Quest.SetCompleteOptions(9010250);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Сайла<color=0xffffffff>\\n Готов к уроку русского языка? Сегодня мы будем повторять алфавит.");
end

local function OnAcceptQuestTalk(id,step)
    if ( id == 52056) then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(52056,"<Font=arial,0,19,20><color=0xfffcf157>Сайла<color=0xffffffff><Font=arial,0,17,20>\\nВ русском алфавите, как тебе известно, 33 буквы. Для получения пятерки по моему предмету собери их все из обычных монстров на локациях Гора Смерти и Сумеречная пустошь. Предмет можно получить при убийстве монстров исключительно при наличии задания и только в количестве, не превышающем требования задания.");
    end
end

local function OnCompleteQuestTalk(id,step)
    if (id == 52056) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(52056,"<Font=arial,0,19,20><color=0xfffcf157>Сайла<color=0xffffffff><Font=arial,0,17,20>\\nПовторяй ежедневно алфавит, используй правильно знаки препинания и не забывай о грамматике!");
	end
end

sept_2 = {}
sept_2["OnTalk"] = OnTalk
sept_2["OnAcceptQuestTalk"] = OnAcceptQuestTalk
sept_2["OnCompleteQuestTalk"] = OnCompleteQuestTalk
