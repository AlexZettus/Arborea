
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --Очистить настройки диалогового окна
	Quest.SetAcceptOptions(5010227);
	Quest.SetCompleteOptions(5010227);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Судья Аусвейд:<color=0xffffffff>\\nНикто из виновных не уйдет от правосудия! Я гарантирую это!"  );

end


local function OnAcceptQuestTalk(id,step)--Если удалить задание, его снова можно будет получить вручную
        if( id == 29006)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(29006,"<Font=arial,0,19,20><color=0xfffcf157>Судья Аусвейд:<color=0xffffffff>\\nДемоны в Библиотеке, пришел час расплаты! Воин света, отправляйтесь в Библиотеку и разберитесь там с демонами. После битвы вернитесь ко мне за вознаграждением.");
	elseif( id == 29007)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(29007,"<Font=arial,0,19,20><color=0xfffcf157>Судья Аусвейд:<color=0xffffffff>\\nДемоны в Логове Тьмы, пришел час расплаты! Воин света, отправляйтесь в Логово Тьмы и разберитесь там с демонами. После битвы вернитесь ко мне за вознаграждением. ");
	elseif( id == 29008)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(29008,"<Font=arial,0,19,20><color=0xfffcf157>Судья Аусвейд:<color=0xffffffff>\\nДемоны в Обители зла, пришел час расплаты! Воин света, отправляйтесь в Обитель зла и разберитесь там с демонами. После битвы вернитесь ко мне за вознаграждением. ");
	elseif( id == 29009)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(29009,"<Font=arial,0,19,20><color=0xfffcf157>Судья Аусвейд:<color=0xffffffff>\\nДемоны в Месте Власти, пришел час расплаты! Воин света, отправляйтесь в Место Власти и разберитесь там с демонами. После битвы вернитесь ко мне за вознаграждением. ");
	elseif( id == 29010)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(29010,"<Font=arial,0,19,20><color=0xfffcf157>Судья Аусвейд:<color=0xffffffff>\\nДемоны в Библиотеке, пришел час расплаты! Воин света, отправляйтесь в Библиотеку и разберитесь там с демонами. После битвы вернитесь ко мне за вознаграждением.");
	elseif( id == 29011)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(29011,"<Font=arial,0,19,20><color=0xfffcf157>Судья Аусвейд:<color=0xffffffff>\\nДемоны в Замке теней, пришел час расплаты! Воин света, отправляйтесь в Замок теней и разберитесь там с демонами. После битвы вернитесь ко мне за вознаграждением.");
	elseif( id == 29012)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(29012,"<Font=arial,0,19,20><color=0xfffcf157>Судья Аусвейд:<color=0xffffffff>\\nДемоны в Замке ада, пришел час расплаты! Воин света, отправляйтесь в Замок ада и разберитесь там с демонами. После битвы вернитесь ко мне за вознаграждением.");
	elseif( id == 29013)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(29013,"<Font=arial,0,19,20><color=0xfffcf157>Судья Аусвейд:<color=0xffffffff>\\nДемоны в Забытом Храме, пришел час расплаты! Воин света, отправляйтесь в Забытый Храм и разберитесь там с демонами. После битвы вернитесь ко мне за вознаграждением.");
	elseif( id == 29026)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(29026,"<Font=arial,0,19,20><color=0xfffcf157>Судья Аусвейд:<color=0xffffffff>\\nДемоны в Лабиринте Морока, пришел час расплаты! Воин света, отправляйтесь в Лабиринт Морока и разберитесь там с демонами. После битвы вернитесь ко мне за вознаграждением.");
	elseif( id == 29027)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(29027,"<Font=arial,0,19,20><color=0xfffcf157>Судья Аусвейд:<color=0xffffffff>\\nДемоны в Гробнице Менеса, пришел час расплаты! Воин света, отправляйтесь в Гробницу Менеса и разберитесь там с демонами. После битвы вернитесь ко мне за вознаграждением.");
	elseif( id == 52064)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(52064,"<Font=arial,0,19,20><color=0xfffcf157>Судья Аусвейд:<color=0xffffffff>\\nЧтобы отправиться в Тёмную башню, вам нужен специальный билет. Для его получения выполните это простое поручение.");
    elseif( id == 52072)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(52072,"<Font=arial,0,19,20><color=0xfffcf157>Судья Аусвейд:<color=0xffffffff>\\nЧтобы отправиться в легендарный режим подземелья Место власти, вам нужен специальный билет. Для его получения выполните это простое поручение.");
	elseif( id == 52099)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(52099,"<Font=arial,0,19,20><color=0xfffcf157>Судья Аусвейд:<color=0xffffffff>\\nЕжедневно вы можете получать за выполнение этого задания Медаль редкого духа. После сбора 60 штук вы сможете получить редкого духа Микала или Микаэлу на выбор. Для завершения этого задания убейте финальных боссов в Вечном аду и Логове зверя, отдайте Волшебный песок Песочному замку на Острове мечты, а также получите при убийстве любых монстров на локации, соответствующей вашему уровню, предмет Гнев праведника.\\nЛес теней (60-69 уровень)\\nЮжные топи (70-79 уровень)\\nГора смерти (80-99 уровень)\\nСумеречная пустошь (100-105 уровень)\\nПустыня Аришат (106-120)");
	elseif( id == 52120)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(52120,"<Font=arial,0,19,20><color=0xfffcf157>Судья Аусвейд:<color=0xffffffff>\\nЧтобы отправиться в легендарный режим подземелья Замок теней, вам нужен специальный билет. Для его получения выполните это простое поручение.");
	elseif( id == 52133)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(52133,"<Font=arial,0,19,20><color=0xfffcf157>Судья Аусвейд:<color=0xffffffff>\\nЧтобы отправиться в легендарный режим подземелья Замок ада, вам нужен специальный билет. Для его получения выполните это простое поручение.");
	elseif( id == 52137)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(52137,"<Font=arial,0,19,20><color=0xfffcf157>Судья Аусвейд:<color=0xffffffff>\\nЧтобы отправиться в Долину магов, вам нужен специальный билет. Для его получения выполните это простое поручение.");
	elseif( id == 52019)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(52019,"<font=arial,0,19,20><color=0xfffcf157>Судья Аусвейд：<color=0xffffffff>\\nМерцающее ядро для тебя, вероятно, не так важно, как для меня. Хранимые им тайны не для чужих ушей. Скорее отправляйся на выполнение задания!");	

    end
end


--Настройки завершения заданий
local function OnCompleteQuestTalk(id,step)
        if( id == 29006)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(29006,"<Font=arial,0,19,20><color=0xfffcf157>Судья Аусвейд:<color=0xffffffff>\\n Одного испытания в день достаточно. Приходите завтра, и правосудие будет свершено!");
        elseif( id == 29007)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(29007,"<Font=arial,0,19,20><color=0xfffcf157>Судья Аусвейд:<color=0xffffffff>\\n Одного испытания в день достаточно. Приходите завтра, и правосудие будет свершено! ");
	elseif( id == 29008)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(29008,"<Font=arial,0,19,20><color=0xfffcf157>Судья Аусвейд:<color=0xffffffff>\\n Одного испытания в день достаточно. Приходите завтра, и правосудие будет свершено! ");
	elseif( id == 29009)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(29009,"<Font=arial,0,19,20><color=0xfffcf157>Судья Аусвейд:<color=0xffffffff>\\n Одного испытания в день достаточно. Приходите завтра, и правосудие будет свершено! ");
	elseif( id == 29010)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(29010,"<Font=arial,0,19,20><color=0xfffcf157>Судья Аусвейд:<color=0xffffffff>\\n Одного испытания в день достаточно. Приходите завтра, и правосудие будет свершено! ");
	elseif( id == 29011)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(29011,"<Font=arial,0,19,20><color=0xfffcf157>Судья Аусвейд:<color=0xffffffff>\\n Одного испытания в день достаточно. Приходите завтра, и правосудие будет свершено! ");
	elseif( id == 29012)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(29012,"<Font=arial,0,19,20><color=0xfffcf157>Судья Аусвейд:<color=0xffffffff>\\n Одного испытания в день достаточно. Приходите завтра, и правосудие будет свершено! ");
	elseif( id == 29013)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(29013,"<Font=arial,0,19,20><color=0xfffcf157>Судья Аусвейд:<color=0xffffffff>\\n Одного испытания в день достаточно. Приходите завтра, и правосудие будет свершено! ");
	elseif( id == 29026)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(29026,"<Font=arial,0,19,20><color=0xfffcf157>Судья Аусвейд:<color=0xffffffff>\\n Одного испытания в день достаточно. Приходите завтра, и правосудие будет свершено! ");
	elseif( id == 29027)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(29027,"<Font=arial,0,19,20><color=0xfffcf157>Судья Аусвейд:<color=0xffffffff>\\n Одного испытания в день достаточно. Приходите завтра, и правосудие будет свершено! ");
	elseif( id == 30867)then
		if( step == QuestTalkBegin )then
			Quest.ClearNPCTalkOptions();
			Quest.SetNPCTalkOption( EOT_CompleteQuest,30867,QuestTalkBegin+1,"Ок" );
			Quest.SetNPCTalkOption( EOT_CompleteQuest,30867,QuestTalkBegin+2,"Вернуться" );
			Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Судья Аусвейд:<color=0xffffffff>\\n    Ух ты! Я думал никто не поздравит меня в этом году! Спасибо большое! Передайте Посланнику весны мои ответные поздравления!");	        
		elseif( step == QuestTalkBegin+1 )then
			Quest.UpdateQuest(30867);
		elseif( step == QuestTalkBegin+2 )then
			Quest.CloseNPCTalk();
		end
		
	elseif( id == 52064)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(52064,"<Font=arial,0,19,20><color=0xfffcf157>Судья Аусвейд:<color=0xffffffff>\\n Теперь вы можете отправиться в Темную башню! ");
	elseif( id == 52072)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(52072,"<Font=arial,0,19,20><color=0xfffcf157>Судья Аусвейд:<color=0xffffffff>\\n Теперь вы можете отправиться в Место власти в легендарном режиме!");
	elseif( id == 52099)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(52099,"<Font=arial,0,19,20><color=0xfffcf157>Судья Аусвейд:<color=0xffffffff>\\n Отличная работа! Приходите завтра, чтобы вновь пройтись по местам былой славы.");
	elseif( id == 52120)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(52120,"<Font=arial,0,19,20><color=0xfffcf157>Судья Аусвейд:<color=0xffffffff>\\n Теперь вы можете отправиться в Замок теней в легендарном режиме!");
	elseif( id == 52133)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(52133,"<Font=arial,0,19,20><color=0xfffcf157>Судья Аусвейд:<color=0xffffffff>\\n Теперь вы можете отправиться в Замок ада в легендарном режиме!");
	elseif( id == 52137)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(52137,"<Font=arial,0,19,20><color=0xfffcf157>Судья Аусвейд:<color=0xffffffff>\\n Теперь вы можете отправиться в Долину магов!");
	elseif( id == 52019)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(52019,"<font=arial,0,19,20><color=0xfffcf157>Судья Аусвейд：<color=0xffffffff>\\nВот приз, который я тебе обещал, держи!");
	end

end

Rosweide = {}
Rosweide["OnTalk"] = OnTalk
Rosweide["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rosweide["OnCompleteQuestTalk"] = OnCompleteQuestTalk