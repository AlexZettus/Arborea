
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --Очистить настройки диалогового окна
	Quest.SetAcceptOptions(5600037);
	Quest.SetCompleteOptions(5600037);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Посланник дня Св. Валентина:<color=0xffffffff>\\nНастал день Св. Валентина! Посмотри, у меня есть много хороших вещей!！");

end


local function OnAcceptQuestTalk(id,step)--Если удалить задание, его снова можно будет получить вручную
        if( id == 30918)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30918,"<Font=arial,0,19,20><color=0xfffcf157>Посланник дня Св. Валентина:<color=0xffffffff>\\nВолнуетесь? Зачем же? Лучше обменяйте билеты дня Св. Валентина  на отличные предметы!");
				elseif( id == 30919)then
								Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30919,"<Font=arial,0,19,20><color=0xfffcf157>Посланник дня Св. Валентина:<color=0xffffffff>\\nВолнуетесь? Зачем же? Лучше обменяйте билеты дня Св. Валентина  на отличные предметы!");
        end
end


--Настройки завершения заданий
local function OnCompleteQuestTalk(id,step)
        if( id == 30918)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30918,"<Font=arial,0,19,20><color=0xfffcf157>Посланник дня Св. Валентина:<color=0xffffffff>\\nПолучили подарки? Счастливого дня Св. Валентина!");
				elseif( id == 30919)then
							Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30919,"<Font=arial,0,19,20><color=0xfffcf157>Посланник дня Св. Валентина:<color=0xffffffff>\\nПолучили подарки? Счастливого дня Св. Валентина!");
       end

end

HDqrjdhsr = {}
HDqrjdhsr["OnTalk"] = OnTalk
HDqrjdhsr["OnAcceptQuestTalk"] = OnAcceptQuestTalk
HDqrjdhsr["OnCompleteQuestTalk"] = OnCompleteQuestTalk