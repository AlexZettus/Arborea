
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5010192);
	Quest.SetCompleteOptions(5010192);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Дух Копья:<color=0xffffffff>\\nВыбрав путь копья, ты станешь воином - мастером ближнего боя, наводящим ужас на своих врагов!");

end


local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取

        if( id == 41005)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(41005,"<Font=arial,0,19,20><color=0xfffcf157>Дух Копья:<color=0xffffffff>\\nТеперь пришло время для подтверждения твоего класса. Это не просто обряд, но также испытание. В <N>Лесу Теней</N> хранится древнее оружие. Нужно раздобыть его. Однако будет непросто: это оружие охраняется стражами. Если ты избавишься от них, завладеешь оружием и вернешься сюда, я признаю твою силу.");	
        elseif( id == 41006)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(41006,"<Font=arial,0,19,20><color=0xfffcf157>Дух Копья:<color=0xffffffff>\\nТеперь пришло время для подтверждения вашего класса. Это не просто обряд, но также испытание. В <N>Лесу Теней</N> хранится древнее оружие. Нужно раздобыть его. Однако будет непросто: это оружие охраняется стражами. Если ты иизбавишься от них, завладеешь оружием и вернешься сюда, я признаю твою силу.");	
        elseif( id == 41006)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(41006,"<Font=arial,0,19,20><color=0xfffcf157>Дух Копья:<color=0xffffffff>\\nТеперь пришло время для подтверждения вашего класса. Это не просто обряд, но также испытание. В <N>Лесу Теней</N> хранится древнее оружие. Нужно раздобыть его. Однако будет непросто: это оружие охраняется стражами. Если ты иизбавишься от них, завладеешь оружием и вернешься сюда, я признаю твою силу.");	
        elseif( id == 41013)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(41013,"<Font=arial,0,19,20><color=0xfffcf157>Дух Копья:<color=0xffffffff>\\nТебе необходим знак класса для подтверждения твоего выбора. Затем потребуется выполнить задание на подтверждение класса. Я сделаю тебя воином, если ты еще не передумал.\\n<color=0xffff0000>Перед завершением задания необходимо снять всё снаряжение.<color=0xffffffff>");	
        elseif( id == 41017)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(41017,"<Font=arial,0,19,20><color=0xfffcf157>Дух Копья:<color=0xffffffff>\\nТы выбираешь класс воина. Теперь иди к королю Марсу и возьми новое задание.");	
	elseif( id == 41021)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(41021,"<Font=arial,0,19,20><color=0xfffcf157>Дух Копья:<color=0xffffffff>\\nТы можешь получить продвижение класса и стать Повелителем. Для этого дай мне знак продвижения класса.\\n<color=0xffff0000>Перед завершением задания необходимо снять всё снаряжение.<color=0xffffffff>");
	elseif( id == 41022)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(41022,"<Font=arial,0,19,20><color=0xfffcf157>Дух Копья:<color=0xffffffff>\\nТы можешь получить продвижение класса и стать Паладином. Для этого дай мне знак продвижения класса.\\n<color=0xffff0000>Перед завершением задания необходимо снять всё снаряжение.<color=0xffffffff>");
	end
end


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
	if( id == 41000)then
			if( step == QuestTalkBegin )then
				Quest.ClearNPCTalkOptions();
				Quest.SetNPCTalkOption( EOT_CompleteQuest,41000,QuestTalkBegin+1,"Подтвердить" );
				Quest.SetNPCTalkOption( EOT_CompleteQuest,41000,QuestTalkBegin+2,"Отменить" );
				Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Дух Копья:<color=0xffffffff><Font=arial,0,17,20>\\nПредставители этого класса лучше всех владеют ближним боем. Нет ничего страшнее, чем встретиться лицом к лицу с воином!");
			elseif( step == QuestTalkBegin+1 )then
				Quest.UpdateQuest(41000);
			elseif( step == QuestTalkBegin+2 )then
				OnTalk();
			end


	elseif( id == 41001)then
			if( not Quest.QuestCanComplete(41001) ) then

				if( step == QuestTalkBegin )then
					Quest.ClearNPCTalkOptions();
					Quest.SetNPCTalkOption( EOT_CompleteQuest,41001,QuestTalkBegin+1,"Да, я согласен!" );
					Quest.SetNPCTalkOption( EOT_CompleteQuest,41001,QuestTalkBegin+2,"Я подумаю" );
					Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Дух Копья:<color=0xffffffff>\\nДай мне свой контракт, и я открою тебе знание боя! Тебя ждёт будущее непобедимого воителя, всегда готового встретить своего соперника лицом к лицу.");
				elseif( step == QuestTalkBegin+1 )then
					Quest.ClearNPCTalkOptions();
					Quest.SetNPCTalkOption( EOT_CompleteQuest,41001,QuestTalkBegin+3,"Подтвердить" );
					Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Дух Копья:<color=0xffffffff>\\nДай мне твой контракт наемника.");
				elseif( step == QuestTalkBegin+3 )then
					Quest.UpdateQuest(41001);
				elseif( step == QuestTalkBegin+2 ) then
					Quest.CloseNPCTalk();
				end
			else

				Quest.CloseNPCTalk();
				Quest.CompleteQuestTalk(41001,"<Font=arial,0,19,20><color=0xfffcf157>Дух Копья:<color=0xffffffff>\\nВскоре ты почувствуешь, как твоё тело и твои мысли наполняются силой.Это только предвестник твоего будущего могущества. Будь достоин его!  \\n<color=0xffff00ff>Игрок может быть только одного класса. Если ты передумаешь и возьмешь задание на подтверждение другого класса, пожалуйста, отмени предыдущее классовое задание после выполнения этого.<color=0xffffffff>");

			end
        elseif( id == 41005)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(41005,"<Font=arial,0,19,20><color=0xfffcf157>Дух Копья:<color=0xffffffff>\\nЯ не думал, что ты справишься. Что ж, теперь я наделю тебя способностями <color=0xff80ff00>Повелителя<color=0xffffffff>. Удачи!");
        elseif( id == 41006)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(41006,"<Font=arial,0,19,20><color=0xfffcf157>Дух Копья:<color=0xffffffff>\\nЯ не думал, что ты справишься. Что ж, теперь я наделю тебя способностями <color=0xff80ff00>Паладина<color=0xffffffff>. Удачи!");
        elseif( id == 41013)then
		if( step == QuestTalkBegin )then
			Quest.ClearNPCTalkOptions();
			Quest.SetNPCTalkOption( EOT_CompleteQuest,41013,QuestTalkBegin+1,"Дайте классовый знак" );
			Quest.SetNPCTalkOption( EOT_CompleteQuest,41013,QuestTalkBegin+2,"Я подумаю" );
			Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Дух Копья:<color=0xffffffff>\\nПосле подтверждения класса все очки навыков будут сброшены. Если ты действительно решил стать воином, дай мне свой классовый знак.\\n<color=0xffff0000>Перед завершением задания необходимо снять всё снаряжение.<color=0xffffffff>");
		elseif( step == QuestTalkBegin+2 ) then
			Quest.CloseNPCTalk();
		elseif( step == QuestTalkBegin+1 )then
			Quest.ClearNPCTalkOptions();
			Quest.CompleteQuestTalk(41013,"<Font=arial,0,19,20><color=0xfffcf157>Дух Копья:<color=0xffffffff>\\nНажми Завершить, и будешь зачислен к классу воинов.\\n<color=0xffff0000>Перед завершением задания необходимо снять всё снаряжение.<color=0xffffffff>");
		end
	elseif( id == 41021)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(41021,"<Font=arial,0,19,20><color=0xfffcf157>Дух Копья:<color=0xffffffff>\\nПожалуйста, дай мне знак продвижения класса.\\n<color=0xffff0000>Перед завершением задания необходимо снять всё снаряжение.<color=0xffffffff>");
	elseif( id == 41022)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(41022,"<Font=arial,0,19,20><color=0xfffcf157>Дух Копья:<color=0xffffffff>\\nПожалуйста, дай мне знак продвижения класса.\\n<color=0xffff0000>Перед завершением задания необходимо снять всё снаряжение.<color=0xffffffff>");
	  end

end

ZYchangren = {}
ZYchangren["OnTalk"] = OnTalk
ZYchangren["OnAcceptQuestTalk"] = OnAcceptQuestTalk
ZYchangren["OnCompleteQuestTalk"] = OnCompleteQuestTalk