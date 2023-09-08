local function OnTalk()
	Quest.ClearNPCTalkOptions();
	Quest.SetAcceptOptions(4020163);
	Quest.SetCompleteOptions(4020163);
	
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Михаил：<color=0xffffffff>\\n        Пиратская бухта - это главное место трех миров, это владение небесного мира. Однако демоны давно строят планы по его захвату. Вот пропуск, иди и защити Пиратскую бухту, герой!");
end

local function OnAcceptQuestTalk(id,step)--Если удалить задание, то его можно будет заново выбрать вручную.
        if( id == 52004)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(52004,"<Font=arial,0,19,20><color=0xfffcf157>Михаил：<color=0xffffffff><Font=arial,0,17,20>\\nЕсли у тебя есть пропуск, то Мишель может перенести тебя на Пиратскую бухту.");
        end
end


--после выбора меню заданий
local function OnCompleteQuestTalk(id,step)
        if( id == 52004)then
	      Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(52004,"<Font=arial,0,19,20><color=0xfffcf157>Михаил：<color=0xffffffff><Font=arial,0,17,20>\\n Великую задачу защитить Пиратскую бухту я передаю тебе，скорее приступай.");
       end


end
HDshengyudao = {}
HDshengyudao["OnTalk"] = OnTalk
HDshengyudao["OnAcceptQuestTalk"] = OnAcceptQuestTalk
HDshengyudao["OnCompleteQuestTalk"] = OnCompleteQuestTalk