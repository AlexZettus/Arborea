
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5010194);
	Quest.SetCompleteOptions(5010194);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Дух Лиры:<color=0xffffffff>\\nПредставители этого класса не только умелые врачеватели, способные поддержать своих союзников в трудную минуту, но и талантливые воители, готовые обратить всю свою мощь против врага!");

end


local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
       
        if( id == 41011)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(41011,"<Font=arial,0,19,20><color=0xfffcf157>Дух Лиры:<color=0xffffffff>\\nТеперь пришло время для подтверждения твоего класса. Это не просто обряд, но также испытание. В <N>Лесу Теней</N> хранится древнее оружие. Нужно раздобыть его. Однако будет непросто: за ним присматривают стражи. Если ты избавишься от них, завладеешь оружием и вернешься сюда, я признаю твою силу.");	
        elseif( id == 41012)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(41012,"<Font=arial,0,19,20><color=0xfffcf157>Дух Лиры:<color=0xffffffff>\\nТеперь пришло время для подтверждения твоего класса. Это не просто обряд, но также испытание. В <N>Лесу Теней</N> хранится древнее оружие. Нужно раздобыть его. Однако будет непросто: за ним присматривают стражи. Если ты избавишься от них, завладеешь оружием и вернешься сюда, я признаю твою силу.");
        elseif( id == 41016)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(41016,"<Font=arial,0,19,20><color=0xfffcf157>Дух Лиры:<color=0xffffffff>\\nПохоже, ты хочешь выбрать класс. Если ты решил выбрать свой класс, тебе нужен будет знак класса. Затем потребуется выполнить задание на подтверждение класса. Я сделаю тебя бардом, если ты не передумал.\\n<color=0xffff0000>Перед завершением задания необходимо снять всё снаряжение.<color=0xffffffff>");
        elseif( id == 41020)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(41020,"<Font=arial,0,19,20><color=0xfffcf157>Дух Лиры:<color=0xffffffff>\\nВы выбираете класс барда. Теперь вернитесь к королю Марсу и возьми новое задание.");	
	elseif( id == 41027)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(41027,"<Font=arial,0,19,20><color=0xfffcf157>Дух Лиры:<color=0xffffffff>\\nТы можешь получить продвижение и сменить свой класс на Апостола. Для этого дай мне знак продвижения класса.\\n<color=0xffff0000>Перед завершением задания необходимо снять всё снаряжение.<color=0xffffffff>");	
	elseif( id == 41028)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(41028,"<Font=arial,0,19,20><color=0xfffcf157>Дух Лиры:<color=0xffffffff>\\nТы можешь получить продвижение и сменить свой класс на Хранителя. Для этого дай мне знак продвижения класса.\\n<color=0xffff0000>Перед завершением задания необходимо снять всё снаряжение.<color=0xffffffff>");	

	end
end


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
       if( id == 41000)then
                if( step == QuestTalkBegin )then
			Quest.ClearNPCTalkOptions();
			Quest.SetNPCTalkOption( EOT_CompleteQuest,41000,QuestTalkBegin+1,"Подтвердить" );
			Quest.SetNPCTalkOption( EOT_CompleteQuest,41000,QuestTalkBegin+2,"Отменить" );
	     	        Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Дух Лиры:<color=0xffffffff><Font=arial,0,17,20>\\nЛира в руках барда - не просто музыкальный инструмент, но грозное оружие, способное поражать одновременно группы врагов. ");
		elseif( step == QuestTalkBegin+1 )then
	                Quest.UpdateQuest(41000);
	        elseif( step == QuestTalkBegin+2 )then
	                OnTalk();
                end
	elseif( id == 41004)then
			if( not Quest.QuestCanComplete(41004) ) then

				if( step == QuestTalkBegin )then
					Quest.ClearNPCTalkOptions();
					Quest.SetNPCTalkOption( EOT_CompleteQuest,41004,QuestTalkBegin+1,"Да, я согласен!" );
					Quest.SetNPCTalkOption( EOT_CompleteQuest,41004,QuestTalkBegin+2,"Я подумаю" );
					Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Дух Лиры:<color=0xffffffff>\\nРаз ты решил, дай мне свой контракт наемника, и я наделю тебя способностями барда! Бард - хороший врачеватель, помощник и мастер по использованию всевозможных зелий.");
				elseif( step == QuestTalkBegin+1 )then
					Quest.ClearNPCTalkOptions();
					Quest.SetNPCTalkOption( EOT_CompleteQuest,41004,QuestTalkBegin+3,"Подтвердить" );
					Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Дух Лиры:<color=0xffffffff>\\nДай мне свой контракт наемника.");
				elseif( step == QuestTalkBegin+3 )then
					Quest.UpdateQuest(41004);
				elseif( step == QuestTalkBegin+2 ) then
					Quest.CloseNPCTalk();
				end
			else

				Quest.CloseNPCTalk();
				Quest.CompleteQuestTalk(41004,"<Font=arial,0,19,20><color=0xfffcf157>Дух Лиры:<color=0xffffffff>\\nТы почувствуешь как лира оживает в твоих руках. Эта музыка несёт в себе силу и мудрость нескольких поколений! \\n<color=0xffff00ff>Игрок может быть только одного класса. Если вы изменишь класс и возьмешь задание на его подтверждение, пожалуйста, отмени предыдущее классовое задание после выполнения этого.<color=0xffffffff>");

			end
        elseif( id == 41011)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(41011,"<Font=arial,0,19,20><color=0xfffcf157>Дух Лиры:<color=0xffffffff>\\nЯ не думал, что ты справишься. Что ж, теперь я наделю тебя способностями <color=0xff80ff00>Апостола<color=0xffffffff>. Удачи!");
        elseif( id == 41012)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(41012,"<Font=arial,0,19,20><color=0xfffcf157>Дух Лиры:<color=0xffffffff>\\nЯ не думал, что ты справишься. Теперь я наделю тебя способностями <color=0xff80ff00>Хранителя<color=0xffffffff>. Удачи!");
        elseif( id == 41016)then
		if( step == QuestTalkBegin )then
			Quest.ClearNPCTalkOptions();
			Quest.SetNPCTalkOption( EOT_CompleteQuest,41016,QuestTalkBegin+1,"Отдать классовый знак" );
			Quest.SetNPCTalkOption( EOT_CompleteQuest,41016,QuestTalkBegin+2,"Я еще подумаю" );
			Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Дух Лиры:<color=0xffffffff>\\nПосле подтверждения класса все очки навыков будут сброшены. Если ты действительно решил стать бардом, дайте мне знак класса.\\n<color=0xffff0000>Перед завершением задания необходимо снять всё снаряжение.<color=0xffffffff>");
		elseif( step == QuestTalkBegin+2 ) then
			Quest.CloseNPCTalk();
		elseif( step == QuestTalkBegin+1 )then
			Quest.ClearNPCTalkOptions();
			Quest.CompleteQuestTalk(41016,"<Font=arial,0,19,20><color=0xfffcf157>Дух Лиры:<color=0xffffffff>\\nНажми Завершить, и будешь зачислен к классу бардов.\\n<color=0xffff0000>Перед завершением задания необходимо снять всё снаряжение.<color=0xffffffff>");
		end
       elseif( id == 41027)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(41027,"<Font=arial,0,19,20><color=0xfffcf157>Дух Лиры:<color=0xffffffff>\\nПожалуйста, дай мне знак продвижения класса.\\n<color=0xffff0000>Перед завершением задания необходимо снять всё снаряжение.<color=0xffffffff>");
       elseif( id == 41028)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(41028,"<Font=arial,0,19,20><color=0xfffcf157>Дух Лиры:<color=0xffffffff>\\nПожалуйста, дай мне знак продвижения класса.\\n<color=0xffff0000>Перед завершением задания необходимо снять всё снаряжение.<color=0xffffffff>");
	  end

end

ZYyaoqin = {}
ZYyaoqin["OnTalk"] = OnTalk
ZYyaoqin["OnAcceptQuestTalk"] = OnAcceptQuestTalk
ZYyaoqin["OnCompleteQuestTalk"] = OnCompleteQuestTalk