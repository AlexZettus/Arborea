
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --Очистить настройки диалогового окна
	Quest.SetAcceptOptions(5011017);
	Quest.SetCompleteOptions(5011017);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Создатель демонов：<color=0xffffffff><Font=arial,0,17,20>\\nЭто я создал эти дьявольские кувшины");

end


local function OnAcceptQuestTalk(id,step)--Если удалить задание, то его можно будет заново выбрать вручную.
        if( id == 30118)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30118,"<Font=arial,0,19,20><color=0xfffcf157>Создатель демонов：<color=0xffffffff><Font=arial,0,17,20>\\nСкорее заверши испытание в Чистилище духов, после этого ты сможешь получить один из созданных мной дьявольских кувшинов.");
        elseif( id == 30119)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30119,"<Font=arial,0,19,20><color=0xfffcf157>Создатель демонов：<color=0xffffffff><Font=arial,0,17,20>\\nСкорее заверши испытание в Чистилище духов, после этого ты сможешь получить один из созданных мной дьявольских кувшинов.");
        elseif( id == 30120)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30120,"<Font=arial,0,19,20><color=0xfffcf157>Создатель демонов：<color=0xffffffff><Font=arial,0,17,20>\\nСкорее заверши испытание в Чистилище духов, после этого ты сможешь получить один из созданных мной дьявольских кувшинов.");
        end
end


--после выбора меню заданий
local function OnCompleteQuestTalk(id,step)
        if( id == 30118)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30118,"<Font=arial,0,19,20><color=0xfffcf157>Создатель демонов：<color=0xffffffff><Font=arial,0,17,20>\\nПоверь, моя великая сила сотворения еще более могущественна!");
        elseif( id == 30119)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30119,"<Font=arial,0,19,20><color=0xfffcf157>Создатель демонов：<color=0xffffffff><Font=arial,0,17,20>\\nПоверь, моя великая сила сотворения еще более могущественна!");
        elseif( id == 30120)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30120,"<Font=arial,0,19,20><color=0xfffcf157>Создатель демонов：<color=0xffffffff><Font=arial,0,17,20>\\nПоверь, моя великая сила сотворения еще более могущественна!");
        
       end


end

shenmozaowu = {}
shenmozaowu["OnTalk"] = OnTalk
shenmozaowu["OnAcceptQuestTalk"] = OnAcceptQuestTalk
shenmozaowu["OnCompleteQuestTalk"] = OnCompleteQuestTalk