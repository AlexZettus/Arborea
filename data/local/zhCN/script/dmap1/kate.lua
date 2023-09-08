local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --Очистить варианты диалогового окна
	Quest.SetAcceptOptions(1086574);
	Quest.SetCompleteOptions(1086574);
	Quest.NPCTalk(0,0,"<font=Драконово письмо,0,19,20><color=0xfffcf157>Картер：<color=0xffffffff><font=Драконово письмо,0,17,20>\\n      На снежной горе Хаэр дьявольского ущелья вовсе не так холодно, как рассказывают легенды.");

end


local function OnAcceptQuestTalk(id,step)--Если удалить задание, то его можно снова принять.
        if( id == 52014)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(52014,"<font=Драконово письмо,0,19,20><color=0xfffcf157>Картер：<color=0xffffffff><font=Драконово письмо,0,17,20>\\n      Апокалипсис белой луны обитает на снежной горе Хаэр，но сначала тебе потребуется завершить это задание, а потом ты найдешь его след и тень.");
        end
end


--После нажатия варианта передать задание
local function OnCompleteQuestTalk(id,step)
        if( id == 52014)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(52014,"<font=Драконово письмо,0,19,20><color=0xfffcf157>Картер：<color=0xffffffff><font=Драконово письмо,0,17,20>\\n      Апокалипсис белой луны там，скорее убей его.");
        end
end

kate = {}
kate["OnTalk"] = OnTalk
kate["OnAcceptQuestTalk"] = OnAcceptQuestTalk
kate["OnCompleteQuestTalk"] = OnCompleteQuestTalk