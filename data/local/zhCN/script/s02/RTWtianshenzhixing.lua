
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --Очистить настройки диалогового окна
	Quest.SetAcceptOptions(7000005);
	Quest.SetCompleteOptions(7000005);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Консул:<color=0xffffffff><Font=arial,0,17,20>\\nЧем дальше, тем силы зла становятся все наглее. Мне был отдан приказ поделиться с вами материалами для изготовления волшебного снаряжения. Но вы должны помочь мне справиться с силами зла. \\n Задание обновляется каждый день в 00:00");

end


local function OnAcceptQuestTalk(id,step)--Если удалить задание, его снова можно будет получить вручную
        if( id == 55001)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(55001,"<Font=arial,0,19,20><color=0xfffcf157>Консул:<color=0xffffffff><Font=arial,0,17,20>\\nОтдайте мне 40 шт. Легированного железа Ур. 3 и 50 золота. За это я подарю вам Божественную душу!");
        elseif( id == 55002)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(55002,"<Font=arial,0,19,20><color=0xfffcf157>Консул:<color=0xffffffff><Font=arial,0,17,20>\\nОтдайте мне 20 шт. Мифического железа Ур. 3 и 200 золота. За это я подарю вам Божественное чувство!");
        elseif( id == 55003)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(55003,"<Font=arial,0,19,20><color=0xfffcf157>Консул:<color=0xffffffff><Font=arial,0,17,20>\\nОтдайте мне 10 шт. Заколдованной стали Ур. 3 и 800 золота. ЗА это я подарю вам Божественную субстанцию!");
        end
end


--Настройки завершения заданий
local function OnCompleteQuestTalk(id,step)
        if( id == 55001)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(55001,"<Font=arial,0,19,20><color=0xfffcf157>Консул:<color=0xffffffff><Font=arial,0,17,20>\\nОчень хорошо! Отнесите эти материалы менялам в город Тарио (936,645) и получите прекрасные предметы снаряжения! Если так пойдет и дальше, ваше могущество возрастет!");
        elseif( id == 55002)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(55002,"<Font=arial,0,19,20><color=0xfffcf157>Консул:<color=0xffffffff><Font=arial,0,17,20>\\nОчень хорошо! Отнесите эти материалы менялам в город Тарио (936,645) и получите прекрасные предметы снаряжения! Если так пойдет и дальше, ваше могущество возрастет!");
        elseif( id == 55003)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(55003,"<Font=arial,0,19,20><color=0xfffcf157>Консул:<color=0xffffffff><Font=arial,0,17,20>\\nОчень хорошо! Отнесите эти материалы менялам в город Тарио (936,645) и получите прекрасные предметы снаряжения! Если так пойдет и дальше, ваше могущество возрастет!");
       end


end

RTWtianshenzhixing = {}
RTWtianshenzhixing["OnTalk"] = OnTalk
RTWtianshenzhixing["OnAcceptQuestTalk"] = OnAcceptQuestTalk
RTWtianshenzhixing["OnCompleteQuestTalk"] = OnCompleteQuestTalk
