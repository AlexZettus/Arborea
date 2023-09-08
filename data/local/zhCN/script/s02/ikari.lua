local function OnTalk()
	Quest.ClearNPCTalkOptions();
	Quest.SetAcceptOptions(9010451);
	Quest.SetCompleteOptions(9010451);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Икари<color=0xffffffff>\\nС днём рождения меня! Уиии...17 июня у Blood and Soul важная дата - 6 лет развития и процветания. Спасибо за то, что ты с нами. Давай вместе развлечёмся и заодно сделаем несколько полезных дел, чтобы жалкие монстры не могли помешать нашему празднику. Выполняй мои задания, чтобы получать праздничные наборы. Обрати внимание, что задания можно сдавать исключительно последовательно.");
end

local function OnAcceptQuestTalk(id,step)
    if ( id == 52073) then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(52073,"<Font=arial,0,19,20><color=0xfffcf157>Икари<color=0xffffffff><Font=arial,0,17,20>\\nОтправляйся на дикую локацию своего уровня и раздобудь 25 Камней проклятия.");
	elseif ( id == 52074) then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(52074,"<Font=arial,0,19,20><color=0xfffcf157>Икари<color=0xffffffff><Font=arial,0,17,20>\\nОтправляйся в Эльфийский лес (Долина Орбис, 381 2308) и собери из сундуков на локации записки эльфов. Обратите внимание, что записка есть не в каждом сундуке.");
	elseif ( id == 52075) then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(52075,"<Font=arial,0,19,20><color=0xfffcf157>Икари<color=0xffffffff><Font=arial,0,17,20>\\nОтправляйся на дикую локацию или в подземелье своего уровня, чтобы добыть при убийстве монстров требуемые предметы.");
	elseif ( id == 52076) then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(52076,"<Font=arial,0,19,20><color=0xfffcf157>Икари<color=0xffffffff><Font=arial,0,17,20>\\nОтправляйся на локацию Южные топи (70-79 уровень), Гору смерти (80-99 уровень), Сумеречную пустошь (100-110 уровень) и нажми ПКМ на оказавшуюся у тебя в инвентаре карту авантюриста. В системном чате ты увидишь координаты, где возможно спрятано сокровище. Отправляйся в указанные координаты и ещё раз нажми на карту авантюриста.");
	elseif ( id == 52077) then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(52077,"<Font=arial,0,19,20><color=0xfffcf157>Икари<color=0xffffffff><Font=arial,0,17,20>\\nОтправляйся на дикую локацию или в подземелье своего уровня, чтобы добыть при убийстве монстров требуемые предметы.");
	elseif ( id == 52078) then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(52078,"<Font=arial,0,19,20><color=0xfffcf157>Икари<color=0xffffffff><Font=arial,0,17,20>\\nОтправляйся в подземелье Лагерь испытаний (Тарио, 614 405), докажи свою силу в бою и одолей свирепого босса. Обитатели подземелья уже во всю празднуют, так что не удивляйся всяким странностям. Обрати внимание, что со средним качеством экипировки в одиночку прохождение подземелья может оказаться слишком трудным. Зови друзей на помощь.");
    end
end

local function OnCompleteQuestTalk(id,step)
    if (id == 52073) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(52073,"<Font=arial,0,19,20><color=0xfffcf157>Икари<color=0xffffffff><Font=arial,0,17,20>\\nОтлично! Я передам эти кристаллы для переработки на фейерверки для праздника.");
	elseif (id == 52074) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(52074,"<Font=arial,0,19,20><color=0xfffcf157>Икари<color=0xffffffff><Font=arial,0,17,20>\\nОтличная работа! Теперь у меня есть список приглашённых на праздник эльфов.");
	elseif (id == 52075) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(52075,"<Font=arial,0,19,20><color=0xfffcf157>Икари<color=0xffffffff><Font=arial,0,17,20>\\nСпасибо! Армия Теоса не забудет тебя.");
	elseif (id == 52076) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(52076,"<Font=arial,0,19,20><color=0xfffcf157>Икари<color=0xffffffff><Font=arial,0,17,20>\\nМолодец! Чтобы задание можно было считать полностью завершённым, тебе осталось только улыбнуться.");
	elseif (id == 52077) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(52077,"<Font=arial,0,19,20><color=0xfffcf157>Икари<color=0xffffffff><Font=arial,0,17,20>\\nСпасибо! Наши ремесленники не забудут твою доброту.");
	elseif (id == 52078) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(52078,"<Font=arial,0,19,20><color=0xfffcf157>Икари<color=0xffffffff><Font=arial,0,17,20>\\nСпасибо! Наши ремесленники не забудут твою доброту.");
	end
end

ikari = {}
ikari["OnTalk"] = OnTalk
ikari["OnAcceptQuestTalk"] = OnAcceptQuestTalk
ikari["OnCompleteQuestTalk"] = OnCompleteQuestTalk
