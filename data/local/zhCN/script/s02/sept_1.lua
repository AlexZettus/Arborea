local function OnTalk()
	Quest.ClearNPCTalkOptions();
	Quest.SetAcceptOptions(9010249);
	Quest.SetCompleteOptions(9010249);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Хамблдор<color=0xffffffff>\\nПриветствую, мой юный друг! Готов ли ты показать свой уровень знаний и получить от меня ценный подарок?");
end

local function OnAcceptQuestTalk(id,step)
    if ( id == 52055) then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(52055,"<Font=arial,0,19,20><color=0xfffcf157>Хамблдор<color=0xffffffff><Font=arial,0,17,20>\\nКаждый уважающий себя житель Теоса должен выполнять школьные задания с отличием! Принеси мне пятерки по предметам Русский, Математика, Химия, Труд и Физкультура.");
	elseif ( id == 53005) then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(53005,"<Font=arial,0,19,20><color=0xfffcf157>Хамблдор<color=0xffffffff><Font=arial,0,17,20>\\nПолучите подарок и помните, что учиться никогда не поздно! Вы создаёте себя сами! Всё начинается с мыслей! Как ни странно, именно сила мысли формирует окружающую вас реальность.");
    end
end

local function OnCompleteQuestTalk(id,step)
    if (id == 52055) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(52055,"<Font=arial,0,19,20><color=0xfffcf157>Хамблдор<color=0xffffffff><Font=arial,0,17,20>\\nМолодец, ты справился с непростым заданием. Гранит науки - это не просто твердый камень, при правильной обработке он сможет засиять и превратиться в драгоценность, используй мой подарок с умом. И помни: знание - сила!");
	elseif (id == 53005) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(53005,"<Font=arial,0,19,20><color=0xfffcf157>Хамблдор<color=0xffffffff><Font=arial,0,17,20>\\nУспехов вам! Добрые и мудрые помыслы отправят вас в счастливое будущее! У вас всё получится!");
	end
end

sept_1 = {}
sept_1["OnTalk"] = OnTalk
sept_1["OnAcceptQuestTalk"] = OnAcceptQuestTalk
sept_1["OnCompleteQuestTalk"] = OnCompleteQuestTalk
