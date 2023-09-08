
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5010195);
	Quest.SetCompleteOptions(5010195);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Дух Артефакта:<color=0xffffffff>\\nПредставители этого класса познают тайны магии нашего мира и способны причинить серьёзный ущерб даже группе врагов!");

end


local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取

        if( id == 41009)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(41009,"<Font=arial,0,19,20><color=0xfffcf157>Дух Артефакта:<color=0xffffffff>\\nТеперь пришло время для подтверждения твоего класса. Это не просто обряд, но также испытание. В <N>Лесу Теней</N> хранится древнее оружие. Нужно раздобыть его. Однако будет непросто: это оружие охраняется стражами. Если ты избавишься от них, завладеешь оружием и вернешься сюда, я признаю твою силу.");	
        elseif( id == 41010)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(41010,"<Font=arial,0,19,20><color=0xfffcf157>Дух Артефакта:<color=0xffffffff>\\nТеперь пришло время для подтверждения вашего класса. Это не просто обряд, но также испытание. В <N>Лесу Теней</N> хранится древнее оружие. Нужно раздобыть его. Однако будет непросто: это оружие охраняется стражами. Если ты избавишься от них, завладеешь оружием и вернешься сюда, я признаю твою силу.");	
        elseif( id == 41015)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(41015,"<Font=arial,0,19,20><color=0xfffcf157>Дух Артефакта:<color=0xffffffff>\\nТебе необходим знак класса для подтверждения твоего выбора. Затем потребуется выполнить задание на подтверждение класса. Я сделаю тебя магом, если ты еще не передумал.");
        elseif( id == 41019)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(41019,"<Font=arial,0,19,20><color=0xfffcf157>Дух Артефакта:<color=0xffffffff>\\nТы выбрал класс мага. Теперь вернись к королю Марсу и возьми новое задание.");		
	elseif( id == 41025)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(41025,"<Font=arial,0,19,20><color=0xfffcf157>Дух Артефакта:<color=0xffffffff>\\nТы можешь получить продвижение класса и стать Громовержцем. Для этого дай мне знак продвижения класса.\\n<color=0xffff0000>Перед завершением задания необходимо снять всё снаряжение.<color=0xffffffff>");	
	elseif( id == 41026)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(41026,"<Font=arial,0,19,20><color=0xfffcf157>Дух Артефакта:<color=0xffffffff>\\nТы можешь получить продвижение класса и стать Священником. Для этого дай мне знак продвижения класса.\\n<color=0xffff0000>Перед завершением задания необходимо снять всё снаряжение.<color=0xffffffff>");	
	end
end


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
       if( id == 41000)then
                if( step == QuestTalkBegin )then
			Quest.ClearNPCTalkOptions();
			Quest.SetNPCTalkOption( EOT_CompleteQuest,41000,QuestTalkBegin+1,"Подтвердить" );
			Quest.SetNPCTalkOption( EOT_CompleteQuest,41000,QuestTalkBegin+2,"Отменить" );
	     	        Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Дух Артефакта:<color=0xffffffff><Font=arial,0,17,20>\\nУмелый маг способен уничтожить армию при помощи одного заклинания! В руках повелителей волшебства лежат все силы мира. ");
		elseif( step == QuestTalkBegin+1 )then
	                Quest.UpdateQuest(41000);
	        elseif( step == QuestTalkBegin+2 )then
	                OnTalk();
                end

	elseif( id == 41003)then
			if( not Quest.QuestCanComplete(41003) ) then

				if( step == QuestTalkBegin )then
					Quest.ClearNPCTalkOptions();
					Quest.SetNPCTalkOption( EOT_CompleteQuest,41003,QuestTalkBegin+1,"Да, я согласен!" );
					Quest.SetNPCTalkOption( EOT_CompleteQuest,41003,QuestTalkBegin+2,"Я подумаю" );
					Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Дух Артефакта:<color=0xffffffff>\\nРаз Ты решил, дай мне свой контракт наемника, и я наделю тебя способностями мага. Помните, маги пользуются магическими навыками, умеют воздействовать сразу на группу врагов и знают различные заклинания.");
				elseif( step == QuestTalkBegin+1 )then
					Quest.ClearNPCTalkOptions();
					Quest.SetNPCTalkOption( EOT_CompleteQuest,41003,QuestTalkBegin+3,"Подтвердить" );
					Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Дух Артефакта:<color=0xffffffff>\\nДай мне свой контракт наемника.");
				elseif( step == QuestTalkBegin+3 )then
					Quest.UpdateQuest(41003);
				elseif( step == QuestTalkBegin+2 ) then
					Quest.CloseNPCTalk();
				end
			else

				Quest.CloseNPCTalk();
				Quest.CompleteQuestTalk(41003,"<Font=arial,0,19,20><color=0xfffcf157>Дух Артефакта:<color=0xffffffff>\\nТы обретаешь силу мага. Течение волшебства нашего мира, отныне твой меч и щит! \\n<color=0xffff00ff>Совет: игрок может быть только одного класса. Если передумал, решил выбрать другой класс и взял задание на его подтверждение, пожалуйста, отмени предыдущее классовое задание после выполнения этого.<color=0xffffffff>");

			end
        elseif( id == 41009)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(41009,"<Font=arial,0,19,20><color=0xfffcf157>Дух Артефакта:<color=0xffffffff>\\nЯ не думал, что ты справишься. Что ж, теперь я наделю тебя способностями <color=0xff80ff00>Громовержца<color=0xffffffff>. Удачи!");
        elseif( id == 41010)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(41010,"<Font=arial,0,19,20><color=0xfffcf157>Дух Артефакта:<color=0xffffffff>\\nЯ не думал, что ты справишься. Что ж, теперь я наделю тебя способностями <color=0xff80ff00>Священника<color=0xffffffff>. Удачи!");
        elseif( id == 41015)then
		if( step == QuestTalkBegin )then
			Quest.ClearNPCTalkOptions();
			Quest.SetNPCTalkOption( EOT_CompleteQuest,41015,QuestTalkBegin+1,"Отдать знак класса" );
			Quest.SetNPCTalkOption( EOT_CompleteQuest,41015,QuestTalkBegin+2,"Я подумаю" );
			Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Дух Артефакта:<color=0xffffffff>\\nПосле подтверждения класса все очки навыков будут сброшены. Если ты действительно решил стать магом, дай мне знак класса.\\n<color=0xffff0000>Перед завершением задания необходимо снять всё снаряжение.<color=0xffffffff>");
		elseif( step == QuestTalkBegin+2 ) then
			Quest.CloseNPCTalk();
		elseif( step == QuestTalkBegin+1 )then
			Quest.ClearNPCTalkOptions();
			Quest.CompleteQuestTalk(41015,"<Font=arial,0,19,20><color=0xfffcf157>Дух Артефакта:<color=0xffffffff>\\nНажми Завершить, и будешь зачислен к классу магов.\\n<color=0xffff0000>Перед завершением задания необходимо снять всё снаряжение.<color=0xffffffff>");
		end
       elseif( id == 41025)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(41025,"<Font=arial,0,19,20><color=0xfffcf157>Дух Артефакта:<color=0xffffffff>\\nПожалуйста, дай мне знак продвижения класса.\\n<color=0xffff0000>Перед завершением задания необходимо снять всё снаряжение.<color=0xffffffff>");
	elseif( id == 41026)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(41026,"<Font=arial,0,19,20><color=0xfffcf157>Дух Артефакта:<color=0xffffffff>\\nПожалуйста, дай мне знак продвижения класса.\\n<color=0xffff0000>Перед завершением задания необходимо снять всё снаряжение.<color=0xffffffff>");
       end

end

ZYbaoqi = {}
ZYbaoqi["OnTalk"] = OnTalk
ZYbaoqi["OnAcceptQuestTalk"] = OnAcceptQuestTalk
ZYbaoqi["OnCompleteQuestTalk"] = OnCompleteQuestTalk
