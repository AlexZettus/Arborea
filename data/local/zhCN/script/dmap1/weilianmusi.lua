local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --Очистить варианты диалогового окна
	Quest.SetAcceptOptions(1086577);
	Quest.SetCompleteOptions(1086577);
	Quest.NPCTalk(0,0,"<font=Драконово письмо,0,19,20><color=0xfffcf157>Вильямс：<color=0xffffffff><font=Драконово письмо,0,17,20>\\n      Я очень давно ищу сокровищницу ущелья Дивейлун.");

end


local function OnAcceptQuestTalk(id,step)--Если удалить задание, то его можно снова принять.
        if( id == 52017)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(52017,"<font=Драконово письмо,0,19,20><color=0xfffcf157>Вильямс：<color=0xffffffff><font=Драконово письмо,0,17,20>\\n       Скорее всего в сокровищнице  ущелья Дивейлун обитает Метеор, но чтобы найти его нужно прибегнуть к хитростям. Выполни сначала это задание, а потом он и сам появится.");
        end
end


--После нажатия варианта передать задание
local function OnCompleteQuestTalk(id,step)
        if( id == 52017)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(52017,"<font=Драконово письмо,0,19,20><color=0xfffcf157>Вильямс：<color=0xffffffff><font=Драконово письмо,0,17,20>\\n     Если ты нашел сокровища Метеора, то не забудь и со мной поделиться.");
        end
end

weilianmusi = {}
weilianmusi["OnTalk"] = OnTalk
weilianmusi["OnAcceptQuestTalk"] = OnAcceptQuestTalk
weilianmusi["OnCompleteQuestTalk"] = OnCompleteQuestTalk