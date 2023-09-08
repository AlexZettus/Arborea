local function OnTalk()
	Quest.ClearNPCTalkOptions();
	Quest.SetAcceptOptions(6040330);
	Quest.SetCompleteOptions(6040330);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Толкин<color=0xffffffff>\\nПрокачивайте семейного любимца выше 1 уровня, и с каждым новым уровнем вам будет доступно больше ежедневных заданий.");
end

local function OnAcceptQuestTalk(id,step)
    if ( id == 52108) then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(52108,"<Font=arial,0,19,20><color=0xfffcf157>Толкин<color=0xffffffff><Font=arial,0,17,20>\\nПринесите мне 1 000 золота, чтобы получить дополнительный пропуск на Остров сомнений.");
	elseif ( id == 52109) then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(52109,"<Font=arial,0,19,20><color=0xfffcf157>Толкин<color=0xffffffff><Font=arial,0,17,20>\\nПринесите мне 20 000 золота и 60 медалей редкого духа, чтобы получить редкого духа на выбор.");
	elseif ( id == 52110) then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(52110,"<Font=arial,0,19,20><color=0xfffcf157>Толкин<color=0xffffffff><Font=arial,0,17,20>\\nПринесите мне 100 золота, чтобы получить от 1 до 3 семейных печатей. При помощи этого предмета можно тренировать семейного эльфа.");
	elseif ( id == 52111) then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(52111,"<Font=arial,0,19,20><color=0xfffcf157>Толкин<color=0xffffffff><Font=arial,0,17,20>\\nПринесите мне 10 000 золота, чтобы получить на выбор один из пропусков в опасные подземелья.");
	elseif ( id == 52112) then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(52112,"<Font=arial,0,19,20><color=0xfffcf157>Толкин<color=0xffffffff><Font=arial,0,17,20>\\nПринесите мне 1000 золота, чтобы получить определённое количество опыта в зависимости от уровня.\\n3032640 для 50-69 ур.\\n10032660 для 70-79 ур.\\n23366700 для 80-89 ур.\\n46031328 для 90-99 ур.\\n72000000 для 100-110 ур.\\n95000000 для 111-120 ур.");
	elseif ( id == 52113) then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(52113,"<Font=arial,0,19,20><color=0xfffcf157>Толкин<color=0xffffffff><Font=arial,0,17,20>\\nПринесите мне 1000 золота, чтобы получить определённое количество опыта в зависимости от уровня.\\n3032640 для 50-69 ур.\\n10032660 для 70-79 ур.\\n23366700 для 80-89 ур.\\n46031328 для 90-99 ур.\\n72000000 для 100-110 ур.\\n95000000 для 111-120 ур.");
	elseif ( id == 52114) then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(52114,"<Font=arial,0,19,20><color=0xfffcf157>Толкин<color=0xffffffff><Font=arial,0,17,20>\\nПринесите мне 1000 золота, чтобы получить определённое количество опыта в зависимости от уровня.\\n3032640 для 50-69 ур.\\n10032660 для 70-79 ур.\\n23366700 для 80-89 ур.\\n46031328 для 90-99 ур.\\n72000000 для 100-110 ур.\\n95000000 для 111-120 ур.");
	elseif ( id == 52115) then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(52115,"<Font=arial,0,19,20><color=0xfffcf157>Толкин<color=0xffffffff><Font=arial,0,17,20>\\nПринесите мне 1000 золота, чтобы получить определённое количество опыта в зависимости от уровня.\\n3032640 для 50-69 ур.\\n10032660 для 70-79 ур.\\n23366700 для 80-89 ур.\\n46031328 для 90-99 ур.\\n72000000 для 100-110 ур.\\n95000000 для 111-120 ур.");
	elseif ( id == 52116) then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(52116,"<Font=arial,0,19,20><color=0xfffcf157>Толкин<color=0xffffffff><Font=arial,0,17,20>\\nПринесите мне 1000 золота, чтобы получить определённое количество опыта в зависимости от уровня.\\n3032640 для 50-69 ур.\\n10032660 для 70-79 ур.\\n23366700 для 80-89 ур.\\n46031328 для 90-99 ур.\\n72000000 для 100-110 ур.\\n95000000 для 111-120 ур.");
	elseif ( id == 40224) then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(40224,"<Font=arial,0,19,20><color=0xfffcf157>Толкин<color=0xffffffff><Font=arial,0,17,20>\\nПринесите мне 1000 золота, чтобы получить определённое количество опыта в зависимости от уровня.\\n3032640 для 50-69 ур.\\n10032660 для 70-79 ур.\\n23366700 для 80-89 ур.\\n46031328 для 90-99 ур.\\n72000000 для 100-110 ур.\\n95000000 для 111-120 ур.");
    end
end

local function OnCompleteQuestTalk(id,step)
    if (id == 52108) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(52108,"<Font=arial,0,19,20><color=0xfffcf157>Толкин<color=0xffffffff><Font=arial,0,17,20>\\nТеперь вы можете отправиться на Остров сомнений ещё 1 раз.");
	elseif (id == 52109) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(52109,"<Font=arial,0,19,20><color=0xfffcf157>Толкин<color=0xffffffff><Font=arial,0,17,20>\\nТеперь у вас есть сильный боевой помощник.");
	elseif (id == 52110) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(52110,"<Font=arial,0,19,20><color=0xfffcf157>Толкин<color=0xffffffff><Font=arial,0,17,20>\\nБлагодаря вашим усилиям ваша семья станет значительно сильнее.");
	elseif (id == 52111) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(52111,"<Font=arial,0,19,20><color=0xfffcf157>Толкин<color=0xffffffff><Font=arial,0,17,20>\\nУдачи в сражениях!");
	elseif (id == 52112) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(52112,"<Font=arial,0,19,20><color=0xfffcf157>Толкин<color=0xffffffff><Font=arial,0,17,20>\\nНужно больше опыта богу опыта!");
	elseif (id == 52113) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(52113,"<Font=arial,0,19,20><color=0xfffcf157>Толкин<color=0xffffffff><Font=arial,0,17,20>\\nНужно больше опыта богу опыта!");
	elseif (id == 52114) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(52114,"<Font=arial,0,19,20><color=0xfffcf157>Толкин<color=0xffffffff><Font=arial,0,17,20>\\nНужно больше опыта богу опыта!");
	elseif (id == 52115) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(52115,"<Font=arial,0,19,20><color=0xfffcf157>Толкин<color=0xffffffff><Font=arial,0,17,20>\\nНужно больше опыта богу опыта!");
	elseif (id == 52116) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(52116,"<Font=arial,0,19,20><color=0xfffcf157>Толкин<color=0xffffffff><Font=arial,0,17,20>\\nНужно больше опыта богу опыта!");
	elseif (id == 40224) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(40224,"<Font=arial,0,19,20><color=0xfffcf157>Толкин<color=0xffffffff><Font=arial,0,17,20>\\nНужно больше опыта богу опыта!");
	end
end

c6040330 = {}
c6040330["OnTalk"] = OnTalk
c6040330["OnAcceptQuestTalk"] = OnAcceptQuestTalk
c6040330["OnCompleteQuestTalk"] = OnCompleteQuestTalk
