
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --Очистить настройки диалогового окна
	Quest.SetAcceptOptions(5610094);
	Quest.SetCompleteOptions(5610094);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Берти:<color=0xffffffff>\\nНадо чтобы в сердце всегда жила любовь! Тогда вам всегда будет сопутствовать удача!");

end


local function OnAcceptQuestTalk(id,step)--Если удалить задание, его снова можно будет получить вручную
        if( id == 30905)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30905,"<Font=arial,0,19,20><color=0xfffcf157>Берти:<color=0xffffffff>\\nОткройте свое сердце! Поделитесь своим счастьем!！");

        end
end


--Настройки завершения заданий
local function OnCompleteQuestTalk(id,step)
        if( id == 30905)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30905,"<Font=arial,0,19,20><color=0xfffcf157>Берти:<color=0xffffffff>\\nСчастье снизошло! Ваша любовь сделает вас счастливее!");

       end

end

Rbeierdi = {}
Rbeierdi["OnTalk"] = OnTalk
Rbeierdi["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rbeierdi["OnCompleteQuestTalk"] = OnCompleteQuestTalk
