local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --Очистить варианты диалогового окна
	Quest.SetAcceptOptions(1086576);
	Quest.SetCompleteOptions(1086576);
	Quest.NPCTalk(0,0,"<font=Драконово письмо,0,19,20><color=0xfffcf157>Хьюлит：<color=0xffffffff><font=Драконово письмо,0,17,20>\\n      Пещера Хаэр в дьявольском ущелье- место, которое нельзя оставлять без внимания.");

end


local function OnAcceptQuestTalk(id,step)--Если удалить задание, то его можно снова принять.
        if( id == 52016)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(52016,"<font=Драконово письмо,0,19,20><color=0xfffcf157>Хьюлит：<color=0xffffffff><font=Драконово письмо,0,17,20>\\n      Чтобы найти Огненного лиса серебряной горы в пещере Хаэр, тебе придется потратить немного времени, сначала тебе потребуется завершить этот задание, а потом ты найдешь его след и тень.");
        end
end


--После нажатия варианта передать задание
local function OnCompleteQuestTalk(id,step)
        if( id == 52016)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(52016,"<font=Драконово письмо,0,19,20><color=0xfffcf157>Хьюлит：<color=0xffffffff><font=Драконово письмо,0,17,20>\\n      Огненный лис серебряной горы уже здесь, вперед, мой герой!");
        end
end

xiutele = {}
xiutele["OnTalk"] = OnTalk
xiutele["OnAcceptQuestTalk"] = OnAcceptQuestTalk
xiutele["OnCompleteQuestTalk"] = OnCompleteQuestTalk