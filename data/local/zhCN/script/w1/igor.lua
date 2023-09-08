local function OnTalk()
	Quest.ClearNPCTalkOptions();
	Quest.SetAcceptOptions(9010334);
	Quest.SetCompleteOptions(9010334);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Лесной технолог Игорь<color=0xffffffff>\\nМне нравятся грибы, однако не стоит забывать об осторожности. На этой волшебной поляне есть живые грибы, мозгов у них нет, а вот силушки хоть отбавляй. Они охраняют Древо жизни, а оно питает их своей энергией. Пришёл поживиться или помочь?");
end

local function OnAcceptQuestTalk(id,step)
    if ( id == 52096) then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(52096,"<Font=arial,0,19,20><color=0xfffcf157>Лесной технолог Игорь<color=0xffffffff><Font=arial,0,17,20>\\nХочешь подзаработать и набраться опыта? Принеси Игорю древесные грибы (4 шт.) и солнечных камышей (4 шт.).");
    end
end

local function OnCompleteQuestTalk(id,step)
    if (id == 52096) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(52096,"<Font=arial,0,19,20><color=0xfffcf157>Лесной технолог Игорь<color=0xffffffff><Font=arial,0,17,20>\\nПродолжай в том же духе. У тебя ещё есть здесь незаконченные дела.");
	end
end

igor = {}
igor["OnTalk"] = OnTalk
igor["OnAcceptQuestTalk"] = OnAcceptQuestTalk
igor["OnCompleteQuestTalk"] = OnCompleteQuestTalk
