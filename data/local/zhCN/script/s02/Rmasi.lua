
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --Очистить настройки диалогового окна
	Quest.SetAcceptOptions(5010029);
	Quest.SetCompleteOptions(5010029);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Король Марс:<color=0xffffffff>\\nПеред тобой верховный правитель Теоса. Я видел начало эпохи Тарио и вместе с Леонорой вел за собой объединенную армию людей в день великой битвы за Теос! Ты прошёл все испытания у Волшебной долины, а значит, достоин аудиенции в этом зале. Слушай внимательно.");

end


local function OnAcceptQuestTalk(id,step)--Если удалить задание, его снова можно будет получить вручную
		if( id == 20201)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20201,"<Font=arial,0,19,20><color=0xfffcf157>Король Марс:<color=0xffffffff>\\nХочешь повысить уровень Святости? Навык Трансформация веры поможет превратить накопленную веру в Святость. Открой вкладку Боги в правой части панели персонажа и найди навык Трансформация веры. Когда закончишь - приходи ко мне.");
        elseif( id == 20300)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20300,"<Font=arial,0,19,20><color=0xfffcf157>Король Марс:<color=0xffffffff>\\nВ Пандоре стало ясно, что тебя пора наградить званием <I>воин света</I>. Однако монстры буйствуют и на Земле. Тебе нужно помочь людям избавиться от демонов и их влияния! Я уже вижу, как ты совершаешь один героический поступок за другим во имя человечества! Сражайся с честью, и пусть будет с тобой благословение небес!");
        elseif( id == 20400)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20400,"<Font=arial,0,19,20><color=0xfffcf157>Король Марс:<color=0xffffffff>\\nСноулэнд в безопасности. Теперь отправляйся в Лес Теней и поговори с повелителем битвы Битти. Ей нужна твоя помощь.");
        elseif( id == 41000)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(41000,"<Font=arial,0,19,20><color=0xfffcf157>Король Марс:<color=0xffffffff>\\nТы достиг 20 уровня, а это значит, что пришло время принять важное решение - выбрать класс. Для начала тебе желательно собрать об этом побольше информации. У каждого класса в городе есть свой дух. Поговори с духом каждого класса и сделай свой выбор.");
	elseif( id == 20500)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20500,"<Font=arial,0,19,20><color=0xfffcf157>Король Марс:<color=0xffffffff>\\nПохоже, демоны в <N>Южных Топях</N> совсем потеряли совесть. Верните им ее на место! Бегом!");
	elseif( id == 20600)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20600,"<Font=arial,0,19,20><color=0xfffcf157>Король Марс:<color=0xffffffff>\\nЧто? Какой-то демон рассказал тебе это, и ты думаешь, что он говорит правду? Я думаю, он лжет. Иди в Деревню Восточной Горы и поговори с <D>повелителем мудрости Очилом</D>.");
	elseif( id == 20630)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20630,"<Font=arial,0,19,20><color=0xfffcf157>Король Марс:<color=0xffffffff>\\nЯ могу ответить на все твои вопросы, однако у меня сейчас нет времени. Иди в <N>Пустыню Солемн</N>. Там тебя ждут.");
	elseif( id == 20657)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20657,"<Font=arial,0,19,20><color=0xfffcf157>Король Марс:<color=0xffffffff>\\nТы все еще хочешь увидеть обряд смерти? Хорошо! Но молитвой проклятье не снимешь. Поможет только <I>зелье снятия проклятий</I>!");
	elseif( id == 52052)then
        Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(52052,"<Font=arial,0,19,20><color=0xfffcf157>Лексиус:<color=0xffffffff>\\nОтправляйся на Гору смерти (85-99), в Сумеречную пустошь (100-105) или в Пустыню Аришат (106-120), чтобы выбить осколки амулета из монстров. Собрав 5 штук, обратись к Лексиусу (Гора смерти, 2371 819), чтобы объединить их в Амулет заговорщика. Если в инвентаре уже есть Амулет заговорщика (1 шт.) или Осколок амулета (5 шт.), то выбить осколки амулета не удастся. Если локация не соответствует уровню персонажа, то выбить осколки амулета не удастся.");
	elseif( id == 20200)then
        Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20200,"<Font=arial,0,19,20><color=0xfffcf157>Король Марс:<color=0xffffffff>\\nИди в <N>Пандору</N> и найди <D>Джонаса</D>.");
    end
end


--Настройки завершения заданий
local function OnCompleteQuestTalk(id,step)
        if( id == 20116)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20116,"<Font=arial,0,19,20><color=0xfffcf157>Король Марс:<color=0xffffffff>\\nЯ получил донесения о том, что за тобой числится немало подвигов на благо людей Теоса. Особенно я хочу отметить твои заслуги в восстановлении контакта с варварами Пандоры. Люди Теоса благодарны тебе!");
        elseif( id == 20344)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20344,"<Font=arial,0,19,20><color=0xfffcf157>Король Марс:<color=0xffffffff>\\nХвалю, хвалю! Отличная работа!");
	elseif( id == 20526)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20526,"<Font=arial,0,19,20><color=0xfffcf157>Король Марс:<color=0xffffffff>\\nУ тебя все отлично получается, но смотри не задирай нос! Будь скромнее.");
	elseif( id == 20629)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20629,"<Font=arial,0,19,20><color=0xfffcf157>Король Марс:<color=0xffffffff>\\nО чем ты хочешь меня спросить?");
	elseif( id == 20656)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20656,"<Font=arial,0,19,20><color=0xfffcf157>Король Марс:<color=0xffffffff>\\nТы позоришь себя, низший по званию! Ты не имеешь права стоять так близко ко мне. Я чувствую, что передо мной мерзкая душонка предателя!");
	elseif( id == 20428)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20428,"<Font=arial,0,19,20><color=0xfffcf157>Король Марс:<color=0xffffffff>\\nОтличная работа в Лесу Теней!");
	elseif( id == 41017)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(41017,"<Font=arial,0,19,20><color=0xfffcf157>Король Марс:<color=0xffffffff>\\nВсе идет хорошо. Тебя ждут новые задания.");
	elseif( id == 41018)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(41018,"<Font=arial,0,19,20><color=0xfffcf157>Король Марс:<color=0xffffffff>\\nВсе идет хорошо. Тебя ждут новые задания.");
	elseif( id == 41019)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(41019,"<Font=arial,0,19,20><color=0xfffcf157>Король Марс:<color=0xffffffff>\\nВсе идет хорошо. Тебя ждут новые задания.");
	elseif( id == 41020)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(41020,"<Font=arial,0,19,20><color=0xfffcf157>Король Марс:<color=0xffffffff>\\nВсе идет хорошо. Тебя ждут новые задания.");
	elseif( id == 30867)then
		if( step == QuestTalkBegin )then
			Quest.ClearNPCTalkOptions();
			Quest.SetNPCTalkOption( EOT_CompleteQuest,30867,QuestTalkBegin+1,"ОК" );
			Quest.SetNPCTalkOption( EOT_CompleteQuest,30867,QuestTalkBegin+2,"Вернуться" );
			Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Король Марс:<color=0xffffffff>\\n    Это Посланник Весны послала вас поздравить меня? Ха-ха! Кто бы мог подумать! Ну что же! Поздравь ее от меня тоже!");	        
		elseif( step == QuestTalkBegin+1 )then
			Quest.UpdateQuest(30867);
		elseif( step == QuestTalkBegin+2 )then
			Quest.CloseNPCTalk();
		end
	elseif(id == 53003)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(53003,"<Font=arial,0,19,20><color=0xfffcf157>Король Марс:<color=0xffffffff>\\nЕноты любят ласку и кокосы, а спонсор этого задания Эльфийская деревня. Эльфийская деревня - 5 лет на рынке продовольствия.");
	elseif(id == 20103)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(20103,"<Font=arial,0,19,20><color=0xfffcf157>Король Марс:<color=0xffffffff>\\nУ тебя в руках молодильное яблоко? Ясно. Значит тебя отправил ко мне оракул Киран.");
	elseif(id == 20224)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(20224,"<Font=arial,0,19,20><color=0xfffcf157>Король Марс:<color=0xffffffff>\\nТы становишься сильнее. Пришло время отправиться в Сноулэнд.");
	end
end

Rmasi = {}
Rmasi["OnTalk"] = OnTalk
Rmasi["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rmasi["OnCompleteQuestTalk"] = OnCompleteQuestTalk