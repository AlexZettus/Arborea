
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --Очистить настройки диалогового окна
	Quest.SetAcceptOptions(1085203);
	Quest.SetCompleteOptions(1085203);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Распорядитель Храма Элементов：<color=0xffffffff><Font=arial,0,17,20>\\nХрам элементов такое же непростое место, как и Дворец Звезд. Получить хранящийся там стержень элементалей нелегко， я подыщу человека, который мог бы тебе помочь.");
end


local function OnAcceptQuestTalk(id,step)--Если удалить задание, то его можно будет заново выбрать вручную.
        if( id == 50036)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(50036,"<Font=arial,0,19,20><color=0xfffcf157>Распорядитель Храма Элементов：<color=0xffffffff><Font=arial,0,17,20>\\nО герой，войди в Храм элементов, добудь хранящийся там стержень элементалей и возвращайся за своей наградой.");
	elseif( id == 50037)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(50037,"<Font=arial,0,19,20><color=0xfffcf157>Распорядитель Храма Элементов：<color=0xffffffff><Font=arial,0,17,20>\\nО герой，войди в Храм элементов, добудь хранящийся там стержень элементалей и возвращайся за своей наградой.");
	elseif( id == 50038)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(50038,"<Font=arial,0,19,20><color=0xfffcf157>Распорядитель Храма Элементов：<color=0xffffffff><Font=arial,0,17,20>\\nО герой，войди в Храм элементов, добудь хранящийся там стержень элементалей и возвращайся за своей наградой.");
	elseif( id == 50039)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(50039,"<Font=arial,0,19,20><color=0xfffcf157>Распорядитель Храма Элементов：<color=0xffffffff><Font=arial,0,17,20>\\nО герой，войди в Храм элементов, добудь хранящийся там стержень элементалей и возвращайся за своей наградой.");
       elseif( id == 50040)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(50040,"<Font=arial,0,19,20><color=0xfffcf157>Распорядитель Храма Элементов：<color=0xffffffff><Font=arial,0,17,20>\\nО герой，войди в Храм элементов, добудь хранящийся там стержень элементалей и возвращайся за своей наградой.");
	elseif( id == 50041)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(50041,"<Font=arial,0,19,20><color=0xfffcf157>Распорядитель Храма Элементов：<color=0xffffffff><Font=arial,0,17,20>\\nО герой，войди в Храм элементов, добудь хранящийся там стержень элементалей и возвращайся за своей наградой.");
	elseif( id == 50042)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(50042,"<Font=arial,0,19,20><color=0xfffcf157>Распорядитель Храма Элементов：<color=0xffffffff><Font=arial,0,17,20>\\nО герой，войди в Храм элементов, добудь хранящийся там стержень элементалей и возвращайся за своей наградой.");
	elseif( id == 50043)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(50043,"<Font=arial,0,19,20><color=0xfffcf157>Распорядитель Храма Элементов：<color=0xffffffff><Font=arial,0,17,20>\\nО герой，войди в Храм элементов, добудь хранящийся там стержень элементалей и возвращайся за своей наградой.");
	elseif( id == 50044)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(50044,"<Font=arial,0,19,20><color=0xfffcf157>Распорядитель Храма Элементов：<color=0xffffffff><Font=arial,0,17,20>\\nО герой，войди в Храм элементов, добудь хранящийся там стержень элементалей и возвращайся за своей наградой.");
	elseif( id == 50045)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(50045,"<Font=arial,0,19,20><color=0xfffcf157>Распорядитель Храма Элементов：<color=0xffffffff><Font=arial,0,17,20>\\nО герой，войди в Храм элементов, добудь хранящийся там стержень элементалей и возвращайся за своей наградой.");
	elseif( id == 50046)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(50046,"<Font=arial,0,19,20><color=0xfffcf157>Распорядитель Храма Элементов：<color=0xffffffff><Font=arial,0,17,20>\\nО герой，войди в Храм элементов, добудь хранящийся там стержень элементалей и возвращайся за своей наградой.");
	elseif( id == 50047)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(50047,"<Font=arial,0,19,20><color=0xfffcf157>Распорядитель Храма Элементов：<color=0xffffffff><Font=arial,0,17,20>\\nО герой，войди в Храм элементов, добудь хранящийся там стержень элементалей и возвращайся за своей наградой.");
	elseif( id == 50048)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(50048,"<Font=arial,0,19,20><color=0xfffcf157>Распорядитель Храма Элементов：<color=0xffffffff><Font=arial,0,17,20>\\nТолько тот, у кого есть знак храма, может войти в Храм элементов.");
	elseif( id == 50049)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(50049,"<Font=arial,0,19,20><color=0xfffcf157>Распорядитель Храма Элементов：<color=0xffffffff><Font=arial,0,17,20>\\nЕсли вы принесёте для меня один особенный предмет, я подарю вам 2 Эмблемы храма. После этого вы сможете продолжить своё приключение в Храме элементов.</T>");   
    end
end
local function OnCompleteQuestTalk(id,step)
	if( id == 50036)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(50036,"<Font=arial,0,19,20><color=0xfffcf157>Распорядитель Храма Элементов：<color=0xffffffff>\\nЭто подарок за твою помощь!");
	elseif( id == 50037)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(50037,"<Font=arial,0,19,20><color=0xfffcf157>Распорядитель Храма Элементов：<color=0xffffffff>\\nЭто подарок за твою помощь!");
	elseif( id == 50038)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(50038,"<Font=arial,0,19,20><color=0xfffcf157>Распорядитель Храма Элементов：<color=0xffffffff>\\nЭто подарок за твою помощь!");
	elseif( id == 50039)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(50039,"<Font=arial,0,19,20><color=0xfffcf157>Распорядитель Храма Элементов：<color=0xffffffff>\\nЭто подарок за твою помощь!");
	elseif( id == 50040)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(50040,"<Font=arial,0,19,20><color=0xfffcf157>Распорядитель Храма Элементов：<color=0xffffffff>\\nЭто подарок за твою помощь!");
	elseif( id == 50041)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(50041,"<Font=arial,0,19,20><color=0xfffcf157>Распорядитель Храма Элементов：<color=0xffffffff>\\nЭто подарок за твою помощь!");
	elseif( id == 50042)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(50042,"<Font=arial,0,19,20><color=0xfffcf157>Распорядитель Храма Элементов：<color=0xffffffff>\\nЭто подарок за твою помощь!");
	elseif( id == 50043)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(50043,"<Font=arial,0,19,20><color=0xfffcf157>Распорядитель Храма Элементов：<color=0xffffffff>\\nЭто подарок за твою помощь!");
	elseif( id == 50044)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(50044,"<Font=arial,0,19,20><color=0xfffcf157>Распорядитель Храма Элементов：<color=0xffffffff>\\nЭто подарок за твою помощь!");
	elseif( id == 50045)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(50045,"<Font=arial,0,19,20><color=0xfffcf157>Распорядитель Храма Элементов：<color=0xffffffff>\\nЭто подарок за твою помощь!");
	elseif( id == 50046)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(50046,"<Font=arial,0,19,20><color=0xfffcf157>Распорядитель Храма Элементов：<color=0xffffffff>\\nЭто подарок за твою помощь!");
	elseif( id == 50047)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(50047,"<Font=arial,0,19,20><color=0xfffcf157>Распорядитель Храма Элементов：<color=0xffffffff>\\nЭто подарок за твою помощь!");
	elseif( id == 50048)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(50048,"<Font=arial,0,19,20><color=0xfffcf157>Распорядитель Храма Элементов：<color=0xffffffff>\\nВозьми знак храма и скорее иди в Храм элементов искать нужную тебе вещь.");
	elseif( id == 50049)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(50049,"<Font=arial,0,19,20><color=0xfffcf157>Распорядитель Храма Элементов：<color=0xffffffff>\\nВы принесли Заряд возможностей, теперь вы сможете отправиться в Храм элементов ещё 2 раза. В добрый путь, но будьте осторожны. В лабиринтах Храма элементов обитают очень опасные существа.");
	end
end


yuansushendian = {}
yuansushendian["OnTalk"] = OnTalk
yuansushendian["OnAcceptQuestTalk"] = OnAcceptQuestTalk
yuansushendian["OnCompleteQuestTalk"] = OnCompleteQuestTalk