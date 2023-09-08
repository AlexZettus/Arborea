
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5010075);
	Quest.SetCompleteOptions(5010075);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Джек Сали:<color=0xffffffff>\\nПандора - земля варваров! Мы гордый народ, живущий здесь испокон веков. Демоны не смогли уничтожить нас всех во время великой войны, и теперь мы готовимся к грядущим сражениям, чтобы отомстить за гибель своих предков! В то время солдаты объединенной армии людей отступали и не согласились помочь нам в битве. Они проявили себя трусами! С тех пор мои братья и сестры относятся к остальным людям с недоверием. Я единственный, кто поддерживает контакты с такими, как ты, однако не обольщайся - если что-то мне не понравится, я оторву тебе голову.");

end


local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
        if( id == 20110)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20110	,"<Font=arial,0,19,20><color=0xfffcf157>Джек Сали:<color=0xffffffff>\\nМногие из моих братьев внезапно сходят с ума! Одержимые злыми духами, они нападают на каждого, кого увидят! Я видел их глаза. Они наполнены страданием! Если ты желаешь получить доверие нашего клана, иди и освободи моих братьев от мучений.");
        elseif( id == 20111)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20111,"<Font=arial,0,19,20><color=0xfffcf157>Джек Сали:<color=0xffffffff>\\nНашим 72-м повелителям битв противостоят столько же падших потомков среди демонов. Сейчас достигнуто равновесие сил, однако нам нужно склонить чашу весов в свою сторону!  Один из тёмных огров вошёл в Буковый грот. Сразите потомка демонов и в доказательство победы принесите его лимфу. Этим вы заслужите благодарность клана!");
        elseif( id == 20112)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20112,"<Font=arial,0,19,20><color=0xfffcf157>Джек Сали:<color=0xffffffff>\\nДемон Лэсс - враг нашего клана! Помоги нам его победить, и будешь щедро награждён!");
        elseif( id == 20113)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20113,"<Font=arial,0,19,20><color=0xfffcf157>Джек Сали:<color=0xffffffff>\\nТеперь вы можете возвращаться к мастеру иллюзий <D>Карине.</D>");
        elseif( id == 20117)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20117,"<Font=arial,0,19,20><color=0xfffcf157>Джек Сали:<color=0xffffffff>\\nЯ задам тебе вопрос и посмотрю, насколько хорошо ты понимаешь варваров, близок ли ты нам по духу.");
        end
end


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)

        if( id == 20111)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20111,"<Font=arial,0,19,20><color=0xfffcf157>Джек Сали:<color=0xffffffff>\\nХм... Определённо это лимфа демона. Очень знакомый запах. Я вижу, что ты не обманул меня.");
        elseif( id == 20112)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20112,"<Font=arial,0,19,20><color=0xfffcf157>Джек Сали:<color=0xffffffff>\\nБлагодарю тебя, храбрец! Именно так я буду называть тебя отныне, поскольку справиться с этим демоном мы не могли уже очень долгое время. Твоя доблесть восхитила меня и... Пожалуй, я постараюсь убедить свой клан возобновить общение с людьми из Тарио и пошлю королю Марсу письмо с предложением союза!");
	elseif( id == 20117)then
		if( step == QuestTalkBegin )then
			Quest.ClearNPCTalkOptions();
			Quest.SetNPCTalkOption( EOT_CompleteQuest,20117,QuestTalkBegin+1,"Свободные люди без крыши над головой" );
			Quest.SetNPCTalkOption( EOT_CompleteQuest,20117,QuestTalkBegin+2,"Сумасшедшие чудовища" );
			Quest.SetNPCTalkOption( EOT_CompleteQuest,20117,QuestTalkBegin+3,"Грязные и вонючие шавки" );
			Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Джек Сали:<color=0xffffffff><Font=arial,0,17,20>\\nВопрос первый. Что вы думаете о варварах?");


		elseif( step == QuestTalkBegin+1 )then
			Quest.ClearNPCTalkOptions();
			Quest.SetNPCTalkOption( EOT_CompleteQuest,20117,QuestTalkBegin+4,"Продать их торговцам" );
			Quest.SetNPCTalkOption( EOT_CompleteQuest,20117,QuestTalkBegin+5,"Продать их в лавке" );
			Quest.SetNPCTalkOption( EOT_CompleteQuest,20117,QuestTalkBegin+6,"Обменять на другие" );
			Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Джек Сали:<color=0xffffffff><Font=arial,0,17,20>\\nВопрос второй. Что лучше всего делать с предметами, которые вам не нужны?");

		elseif( step == QuestTalkBegin+6 )then
			Quest.ClearNPCTalkOptions();
			Quest.SetNPCTalkOption( EOT_CompleteQuest,20117,QuestTalkBegin+7,"Их покарали боги" );
			Quest.SetNPCTalkOption( EOT_CompleteQuest,20117,QuestTalkBegin+8,"Вымерли от голода" );
			Quest.SetNPCTalkOption( EOT_CompleteQuest,20117,QuestTalkBegin+9,"Вымерли от скуки" );
			Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Джек Сали:<color=0xffffffff><Font=arial,0,17,20>\\nВопрос третий. Отчего вымерли динозавры?");


		elseif( step == (QuestTalkBegin+2))then
			Quest.ClearNPCTalkOptions();
			Quest.SetNPCTalkOption( EOT_CompleteQuest,20117,QuestTalkBegin,"Подтвердить" );
			Quest.NPCTalk(0,0,"Что за чушь ты несешь! Думай лучше и выбери другой вариант!");
		elseif( step == (QuestTalkBegin+3))then
			Quest.ClearNPCTalkOptions();
		  	Quest.SetNPCTalkOption( EOT_CompleteQuest,20117,QuestTalkBegin,"Подтвердить" );
			Quest.NPCTalk(0,0,"Что за чушь ты несешь! Думай лучше и выбери другой вариант!");
		elseif( step == (QuestTalkBegin+4))then
			Quest.ClearNPCTalkOptions();
		  	Quest.SetNPCTalkOption( EOT_CompleteQuest,20117,QuestTalkBegin,"Подтвердить" );
			Quest.NPCTalk(0,0,"Что за чушь ты несешь! Думай лучше и выбери другой вариант!");
		elseif( step == (QuestTalkBegin+5))then
			Quest.ClearNPCTalkOptions();
		  	Quest.SetNPCTalkOption( EOT_CompleteQuest,20117,QuestTalkBegin,"Подтвердить" );
			Quest.NPCTalk(0,0,"Что за чушь ты несешь! Думай лучше и выбери другой вариант!");
		elseif( step == (QuestTalkBegin+8))then
			Quest.ClearNPCTalkOptions();
		  	Quest.SetNPCTalkOption( EOT_CompleteQuest,20117,QuestTalkBegin,"Подтвердить" );
			Quest.NPCTalk(0,0,"Что за чушь ты несешь! Думай лучше и выбери другой вариант!");
		elseif( step == (QuestTalkBegin+9))then
			Quest.ClearNPCTalkOptions();
		  	Quest.SetNPCTalkOption( EOT_CompleteQuest,20117,QuestTalkBegin,"Подтвердить" );
			Quest.NPCTalk(0,0,"Что за чушь ты несешь! Думай лучше и выбери другой вариант!");

		elseif( step == QuestTalkBegin+7 )then
			Quest.CloseNPCTalk();
			Quest.CompleteQuestTalk(20117,"<Font=arial,0,19,20><color=0xfffcf157>Джек Сали：<color=0xffffffff><Font=arial,0,17,20>\\nДа ты настоящий варвар! Присоединяйся к нам!");
		end
       end

end

Rjacksali = {}
Rjacksali["OnTalk"] = OnTalk
Rjacksali["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rjacksali["OnCompleteQuestTalk"] = OnCompleteQuestTalk