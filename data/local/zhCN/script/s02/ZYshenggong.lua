
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5010193);
	Quest.SetCompleteOptions(5010193);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Дух Лука:<color=0xffffffff>\\nПредставители этого класса в совершенстве владеют луком и стрелами. Лучший выбор для тех, кто привык вести бой с большой дистанции.");

end


local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取

        if( id == 41007)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(41007,"<Font=arial,0,19,20><color=0xfffcf157>Дух Лука:<color=0xffffffff>\\nТеперь пришло время для подтверждения твоего класса. Это не просто обряд, но также испытание. В <N>Лесу Теней</N> хранится древнее оружие. Нужно раздобыть его. Однако будет непросто: за ним присматривают стражи. Если ты избавишься от них, завладеешь оружием и вернешься сюда, я признаю твою силу.");	
        elseif( id == 41008)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(41008,"<Font=arial,0,19,20><color=0xfffcf157>Дух Лука:<color=0xffffffff>\\nТеперь пришло время для подтверждения твоего класса. Это не просто обряд, но также испытание. В <N>Лесу Теней</N> хранится древнее оружие. Нужно раздобыть его. Однако будет непросто: за ним присматривают стражи. Если ты избавишься от них, завладеешь оружием и вернешься сюда, я признаю твою силу.");	
        elseif( id == 41014)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(41014,"<Font=arial,0,19,20><color=0xfffcf157>Дух Лука:<color=0xffffffff>\\nПохоже, ты хочешь выбрать класс. Если ты решил выбрать свой класс, тебе нужен будет знак класса. Затем потребуется выполнить задание на подтверждение класса. Я сделаю тебя стрелком, если ты еще не передумал.\\n<color=0xffff0000>Перед завершением задания необходимо снять всё снаряжение.<color=0xffffffff>");
        elseif( id == 41018)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(41018,"<Font=arial,0,19,20><color=0xfffcf157>Дух Лука:<color=0xffffffff>\\nТы выбираешь класс стрелка. Теперь вернись к королю Марсу и возьми новое задание.");		
	elseif( id == 41023)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(41023,"<Font=arial,0,19,20><color=0xfffcf157>Дух Лука:<color=0xffffffff>\\nТы можешь получить продвижение класса и стать Призраком. Для этого дай мне знак продвижения класса.");
	elseif( id == 41024)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(41024,"<Font=arial,0,19,20><color=0xfffcf157>Дух Лука:<color=0xffffffff>\\nТы можешь получить продвижение класса и стать Следопытом. Для этого дай мне знак продвижения класса.");
	end
end


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
       if( id == 41000)then
                if( step == QuestTalkBegin )then
			Quest.ClearNPCTalkOptions();
			Quest.SetNPCTalkOption( EOT_CompleteQuest,41000,QuestTalkBegin+1,"Подтвердить" );
			Quest.SetNPCTalkOption( EOT_CompleteQuest,41000,QuestTalkBegin+2,"Отменить" );
	     	        Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Дух Лука:<color=0xffffffff><Font=arial,0,17,20>\\nЛучник - мастер дальнего боя. Каждая стрела, выпущенная из его лука, может оказаться смертельной!");
		elseif( step == QuestTalkBegin+1 )then
	                Quest.UpdateQuest(41000);
	        elseif( step == QuestTalkBegin+2 )then
	                OnTalk();
                end
	elseif( id == 41002)then
			if( not Quest.QuestCanComplete(41002) ) then

				if( step == QuestTalkBegin )then
					Quest.ClearNPCTalkOptions();
					Quest.SetNPCTalkOption( EOT_CompleteQuest,41002,QuestTalkBegin+1,"Отдать классовый знак" );
					Quest.SetNPCTalkOption( EOT_CompleteQuest,41002,QuestTalkBegin+2,"Я подумаю" );
					Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Дух Лука:<color=0xffffffff>\\nДай мне свой контракт наемника, и я наделю тебя способностями стрелка.");
				elseif( step == QuestTalkBegin+1 )then
					Quest.ClearNPCTalkOptions();
					Quest.SetNPCTalkOption( EOT_CompleteQuest,41002,QuestTalkBegin+3,"Подтвердить" );
					Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Дух Лука:<color=0xffffffff>\\nДай мне контракт наемника.");
				elseif( step == QuestTalkBegin+3 )then
					Quest.UpdateQuest(41002);
				elseif( step == QuestTalkBegin+2 ) then
					Quest.CloseNPCTalk();
				end
			else

				Quest.CloseNPCTalk();
				Quest.CompleteQuestTalk(41002,"<Font=arial,0,19,20><color=0xfffcf157>Дух Лука:<color=0xffffffff>\\nВскоре ты почувствуешь, что знаешь, как могла бы мыслить стрела, выпущенная из твоего лука! Ветер станет твоим главным союзником, а глаза превзойдут в зоркости все прочие. \\n<color=0xffff00ff>Совет: игрок может быть только одного класса. Если ты решишь изменить класс и возьмешь задание на его подтверждение, пожалуйста, отмени предыдущее классовое задание после выполнения этого.<color=0xffffffff>");

			end
        elseif( id == 41007)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(41007,"<Font=arial,0,19,20><color=0xfffcf157>Дух Лука:<color=0xffffffff>\\nЯ не думал, что ты справишься. Что ж, теперь я наделю тебя способностями <color=0xff80ff00>Призрака<color=0xffffffff>. Удачи!");
        elseif( id == 41008)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(41008,"<Font=arial,0,19,20><color=0xfffcf157>Дух Лука:<color=0xffffffff>\\nЯ не думал, что ты справишься. Что ж, теперь я наделю тебя способностями <color=0xff80ff00>Следопыта<color=0xffffffff>. Удачи!");
        elseif( id == 41014)then
		if( step == QuestTalkBegin )then
			Quest.ClearNPCTalkOptions();
			Quest.SetNPCTalkOption( EOT_CompleteQuest,41014,QuestTalkBegin+1,"Отдать классовый знак" );
			Quest.SetNPCTalkOption( EOT_CompleteQuest,41014,QuestTalkBegin+2,"Я подумаю" );
			Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Дух Лука:<color=0xffffffff>\\nПосле подтверждения класса все очки навыков будут сброшены. Если ты действительно решил стать стрелком, дай мне свой знак класса.\\n<color=0xffff0000>Перед завершением задания необходимо снять всё снаряжение.<color=0xffffffff>");
		elseif( step == QuestTalkBegin+2 ) then
			Quest.CloseNPCTalk();
		elseif( step == QuestTalkBegin+1 )then
			Quest.ClearNPCTalkOptions();
			Quest.CompleteQuestTalk(41014,"<Font=arial,0,19,20><color=0xfffcf157>Дух Лука:<color=0xffffffff>\\nНажми Завершить, и будешь зачислен к классу стрелков.\\n<color=0xffff0000>Перед завершением задания необходимо снять всё снаряжение.<color=0xffffffff>");
		end
	elseif( id == 41023)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(41023,"<Font=arial,0,19,20><color=0xfffcf157>Дух Лука:<color=0xffffffff>\\nПожалуйста, дай мне знак продвижения класса.\\n<color=0xffff0000>Перед завершением задания необходимо снять всё снаряжение.<color=0xffffffff>");
	elseif( id == 41024)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(41024,"<Font=arial,0,19,20><color=0xfffcf157>Дух Лука:<color=0xffffffff>\\nПожалуйста, дай мне знак продвижения класса.\\n<color=0xffff0000>Перед завершением задания необходимо снять всё снаряжение.<color=0xffffffff>");
	  end

end

ZYshenggong = {}
ZYshenggong["OnTalk"] = OnTalk
ZYshenggong["OnAcceptQuestTalk"] = OnAcceptQuestTalk
ZYshenggong["OnCompleteQuestTalk"] = OnCompleteQuestTalk