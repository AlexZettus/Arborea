local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --Очистить варианты диалогового окна
	Quest.SetAcceptOptions(1086575);
	Quest.SetCompleteOptions(1086575);
	Quest.NPCTalk(0,0,"<font=Драконово письмо,0,19,20><color=0xfffcf157>Лестер：<color=0xffffffff><font=Драконово письмо,0,17,20>\\n      Возвышенность Хаэр дьявольского ущелья не должна остаться без внимания.");

end


local function OnAcceptQuestTalk(id,step)--Если удалить задание, то его можно снова принять.
        if( id == 52015)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(52015,"<font=Драконово письмо,0,19,20><color=0xfffcf157>Лестер：<color=0xffffffff><font=Драконово письмо,0,17,20>\\n      Пламень Чистилища обитает на Возвышенности Хаэр，но сначала тебе потребуется завершить этот задание, а потом ты найдешь его след и тень.");
        end
end


--После нажатия варианта передать задание
local function OnCompleteQuestTalk(id,step)
        if( id == 52015)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(52015,"<font=Драконово письмо,0,19,20><color=0xfffcf157>Лестер：<color=0xffffffff><font=Драконово письмо,0,17,20>\\n      Если Пламень Чистилища выйдет,уничтожь его, и тогда на Возвышенности Хаэр снова наступит спокойствие.");
        end
end

lest = {}
lest["OnTalk"] = OnTalk
lest["OnAcceptQuestTalk"] = OnAcceptQuestTalk
lest["OnCompleteQuestTalk"] = OnCompleteQuestTalk