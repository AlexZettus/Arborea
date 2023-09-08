local function OnTalk()
	Quest.ClearNPCTalkOptions();
	Quest.SetAcceptOptions(1086099);
	Quest.SetCompleteOptions(1086099);
	
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Магеллан：<color=0xffffffff>\\n        Князь демонов захватил три легендарных дворца：Дворец Судьбы, Дворец Сокровищ и Дворец Демонов.Сейчас нам нужен такой герой, как ты - с крепким телом и сильным духом, обладащий твердой решительностью для того, чтобы отвоевать принадлежащую нам землю. Когда будешь готов - сообщи мне.");
end

local function OnAcceptQuestTalk(id,step)--Если удалить задание, то его можно будет заново выбрать вручную.
        if( id == 52005)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(52005,"<Font=arial,0,19,20><color=0xfffcf157>Магеллан：<color=0xffffffff><Font=arial,0,17,20>\\nЕсли есть знак перехода, то я могу перенести тебя в нужный дворец.");
        elseif( id == 52006)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(52006,"<Font=arial,0,19,20><color=0xfffcf157>Магеллан：<color=0xffffffff><Font=arial,0,17,20>\\nСкорее иди отвоюй Дворец Судьбы， уничтожь лозу ясной луны. Телепорт во Дворец Судьбы прямо за тобой.");
	elseif( id == 52007)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(52007,"<Font=arial,0,19,20><color=0xfffcf157>Магеллан：<color=0xffffffff><Font=arial,0,17,20>\\nСкорее иди отвоюй Дворец Сокровищ，убей Старого учителя. Телепорт во Дворец Сокровищ прямо за тобой.");
	elseif( id == 52008)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(52008,"<Font=arial,0,19,20><color=0xfffcf157>Магеллан：<color=0xffffffff><Font=arial,0,17,20>\\nСкорее иди отвоюй Дворец Демонов，уничтожь монстров.Телепорт во Дворец Демонов прямо за тобой.");
	end
end


--после выбора меню заданий
local function OnCompleteQuestTalk(id,step)	
	if( id == 52005)then
	      Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(52005,"<Font=arial,0,19,20><color=0xfffcf157>Магеллан：<color=0xffffffff><Font=arial,0,17,20>\\nВеликую задачу отвоевать три дворца поручаю тебе,скорее приступай.");
	elseif( id == 52006)then
	      Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(52006,"<Font=arial,0,19,20><color=0xfffcf157>Магеллан：<color=0xffffffff><Font=arial,0,17,20>\\nВидимо, Дворец Судьбы для тебя был очень прост.Это твоя награда, герой.");
	     elseif( id == 52007)then
	      Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(52007,"<Font=arial,0,19,20><color=0xfffcf157>Магеллан：<color=0xffffffff><Font=arial,0,17,20>\\nВидимо, Дворец Сокровищ для тебя был очень прост.Это твоя награда, герой.");
	elseif( id == 52008)then
	      Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(52008,"<Font=arial,0,19,20><color=0xfffcf157>Магеллан：<color=0xffffffff><Font=arial,0,17,20>\\nВидимо, Дворец Демонов для тебя был очень прост.Это твоя награда, герой.");
	end


end
HDmingyunGD = {}
HDmingyunGD["OnTalk"] = OnTalk
HDmingyunGD["OnAcceptQuestTalk"] = OnAcceptQuestTalk
HDmingyunGD["OnCompleteQuestTalk"] = OnCompleteQuestTalk