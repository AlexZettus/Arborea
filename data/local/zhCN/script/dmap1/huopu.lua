local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --Очистить варианты диалогового окна
	Quest.SetAcceptOptions(1086578);
	Quest.SetCompleteOptions(1086578);
	Quest.NPCTalk(0,0,"<font=Драконово письмо,0,19,20><color=0xfffcf157>Хоп：<color=0xffffffff><font=Драконово письмо,0,17,20>\\n     У меня в лесном ущелье одни проблемы!");

end


local function OnAcceptQuestTalk(id,step)--Если удалить задание, то его можно снова принять.
        if( id == 52018)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(52018,"<font=Драконово письмо,0,19,20><color=0xfffcf157>Хоп：<color=0xffffffff><font=Драконово письмо,0,17,20>\\n      В лесном ущелье внезапно появился Мастер солнца Ванлейт, он доставляет мне немало хлопот, ты его выгони и уничтожь, хоть на время у меня здесь станет поспокойнее.");
        end
end


--После нажатия варианта передать задание
local function OnCompleteQuestTalk(id,step)
        if( id == 52018)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(52018,"<font=Драконово письмо,0,19,20><color=0xfffcf157>Хоп：<color=0xffffffff><font=Драконово письмо,0,17,20>\\n     Я верю, что Мастер солнца Ванлейт совсем тебе не страшен.");
        end
end

huopu = {}
huopu["OnTalk"] = OnTalk
huopu["OnAcceptQuestTalk"] = OnAcceptQuestTalk
huopu["OnCompleteQuestTalk"] = OnCompleteQuestTalk