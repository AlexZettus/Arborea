local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --Очистить варианты диалогового окна
	Quest.SetAcceptOptions(1086573);
	Quest.SetCompleteOptions(1086573);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Страж Дьявольского ущелья：<color=0xffffffff><font=Arial,0,17,20>\\nОхрана сокровищницы дьявольского ущелья - моя обязанность, но людей стало так мало, а один я не справляюсь!");
end


local function OnAcceptQuestTalk(id,step)--Если удалить задание, то его можно снова принять.
    if( id == 52009)then
        Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(52009,"<Font=arial,0,19,20><color=0xfffcf157>Страж Дьявольского ущелья：<color=0xffffffff><font=Arial,0,17,20>\\nОтправляйся в поход на снежную гору Хаэр Дьявольского ущелья, там тебя ждут небывалые приключения.");
	elseif( id == 52010)then
        Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(52010,"<Font=arial,0,19,20><color=0xfffcf157>Страж Дьявольского ущелья：<color=0xffffffff><font=Arial,0,17,20>\\nПобедив Метеора в Лесном ущелье, ты можешь получить немало трофеев.");
	elseif( id == 52011)then
        Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(52011,"<Font=arial,0,19,20><color=0xfffcf157>Страж Дьявольского ущелья：<color=0xffffffff><font=Arial,0,17,20>\\nВ лесном ущелье пакостничает Мастер солнца Ванлейт, скорее отправляйся и уничтожь его.");
	elseif( id == 52012)then
        Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(52012,"<Font=arial,0,19,20><color=0xfffcf157>Страж Дьявольского ущелья：<color=0xffffffff><font=Arial,0,17,20>\\nВ Секретном убежище Дьявольского ущелья спрятаны несметные сокровища, не желаешь ли поискать их?");
	elseif( id == 52013)then
        Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(52013,"<Font=arial,0,19,20><color=0xfffcf157>Страж Дьявольского ущелья：<color=0xffffffff><font=Arial,0,17,20>\\nДля входа в Дьявольское ущелье необходимо иметь пропуск, в день можно получить только 3.");
    end
end


--После нажатия варианта передать задание
local function OnCompleteQuestTalk(id,step)
    if( id == 52009)then
        Quest.CloseNPCTalk();
	    Quest.CompleteQuestTalk(52009,"<Font=arial,0,19,20><color=0xfffcf157>Страж Дьявольского ущелья：<color=0xffffffff><font=Arial,0,17,20>\\nПо-видимому, это задание далось тебе легче-легкого.");
	elseif( id == 52010)then
        Quest.CloseNPCTalk();
	    Quest.CompleteQuestTalk(52010,"<Font=arial,0,19,20><color=0xfffcf157>Страж Дьявольского ущелья：<color=0xffffffff><font=Arial,0,17,20>\\nТак посмотреть, и монстры из лесного ущелья совсем тебе не противники. ");
	elseif( id == 52011)then
        Quest.CloseNPCTalk();
	    Quest.CompleteQuestTalk(52011,"<Font=arial,0,19,20><color=0xfffcf157>Страж Дьявольского ущелья：<color=0xffffffff><font=Arial,0,17,20>\\nСпасибо тебе большое, что уничтожил этого зловредного Мастера солнца Ванлейта.");
	elseif( id == 52012)then
        Quest.CloseNPCTalk();
	    Quest.CompleteQuestTalk(52012,"<Font=arial,0,19,20><color=0xfffcf157>Страж Дьявольского ущелья：<color=0xffffffff><font=Arial,0,17,20>\\nРазве ты не получил несметные сокровища секретного убежища?");
	elseif( id == 52013)then
        Quest.CloseNPCTalk();
	    Quest.CompleteQuestTalk(52013,"<Font=arial,0,19,20><color=0xfffcf157>Страж Дьявольского ущелья：<color=0xffffffff><font=Arial,0,17,20>\\nДержи скорее свой пропуск, смотри не потеряй, другой не выдам.");
    end
end

ruikeoukang = {}
ruikeoukang["OnTalk"] = OnTalk
ruikeoukang["OnAcceptQuestTalk"] = OnAcceptQuestTalk
ruikeoukang["OnCompleteQuestTalk"] = OnCompleteQuestTalk