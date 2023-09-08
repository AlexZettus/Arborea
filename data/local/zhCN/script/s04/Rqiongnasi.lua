
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5010076);
	Quest.SetCompleteOptions(5010076);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Даэва:<color=0xffffffff>\\nПосмотрите, что демоны натворили здесь!");

end


local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
        
        if( id == 20202)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20202,"<Font=arial,0,19,20><color=0xfffcf157>Даэва:<color=0xffffffff>\\n Я помогу тебе разобраться в эльфах и подружиться с местными жителями. Но сначала мне нужно покормить лунную лису. Принеси мне несколько кусков мяса Драгоящера.");
		elseif( id == 20219)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20219,"<Font=arial,0,19,20><color=0xfffcf157>Даэва:<color=0xffffffff>\\nОтправляйся в округ Чериан и уничтожь Каменного голема.")
		elseif( id == 20214)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20214,"<Font=arial,0,19,20><color=0xfffcf157>Даэва:<color=0xffffffff>\\nДовелось ли тебе встретить дракона на своем пути? Если нет, то сейчас у тебя будет возможность познакомиться с маленьким представителем этого вида.");
        elseif( id == 20203)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20203,"<Font=arial,0,19,20><color=0xfffcf157>Даэва:<color=0xffffffff>\\nСкоро ты получишь своего первого эльфа. Стоит помнить, что эльфа нужно кормить, чтобы он давал больше бонусов. Эльф растет, когда ты сражаешься с монстрами, а чтобы он рос быстрее, нужно давать ему эльфийскую пыльцу.");
		elseif( id == 20204)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20204,"<Font=arial,0,19,20><color=0xfffcf157>Даэва:<color=0xffffffff>\\nМне доложили, что лесной дриаде нужна помощь. Узнай у неё, что произошло.");
	elseif( id == 20222)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20222,"<Font=arial,0,19,20><color=0xfffcf157>Даэва:<color=0xffffffff>\\nНам надо спешить! Прошу вас, идите и помогите Шаэль уничтожить драконов-демонов, а также соберите для нее несколько сердец драконов.");
		
			elseif( id == 40042)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(40042,"<Font=arial,0,19,20><color=0xfffcf157>Даэва:<color=0xffffffff>\\n<T>Эльфам</T> требуется большое количество духовности. Если вы сможете передать им духовную силу, в которой они нуждаются, вы свяжете себя с ними, и они станут вашими друзьями и помощниками. Если вы сможете найти мне несколько редких предметов, я расскажу вам, как пользоваться навыком Договор с эльфом.");
	elseif( id == 40043)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(40043,"<Font=arial,0,19,20><color=0xfffcf157>Даэва:<color=0xffffffff>\\nКогда силы Элизиума пришли в наш мир и помогли отбросить демонов, архангел воззвал к природе Теоса, и та ответила на этот зов! Из гнева и боли мира родились <T>эльфы</T> - могущественные духи природы, готовые сопровождать героя в его странствиях. Эти хрупкие с виду существа обладают огромной силой и помогут вам на пути от рыцаря света до военачальника!");
		
    elseif( id == 40047)then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(40047,"<Font=arial,0,19,20><color=0xfffcf157>Даэва：<color=0xffffffff>\\nЭтот навык поможет вам быстро и удобно создать команду! Ведь для завершения некоторых заданий необходимо иметь команду!");
	elseif( id == 20218)then
        Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20218,"<Font=arial,0,19,20><color=0xfffcf157>Даэва：<color=0xffffffff>\\nВ округе Чериан буйствует Каменный голем. Нам нужно остановить его. Он сильный соперник, поэтому сначала я создам для тебя защитное заклинание.");
	end
end


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
        if( id == 20200)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20200,"<Font=arial,0,19,20><color=0xfffcf157>Даэва:<color=0xffffffff>\\nПохоже, что сам король Марс обратил свое внимание на вас! Вы смогли произвести впечатление неординарной личности.");
		elseif( id == 20218)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20218,"<Font=arial,0,19,20><color=0xfffcf157>Даэва:<color=0xffffffff>\\nОтлично. Теперь я наложу на тебя защитное заклинание.");
		elseif( id == 20213)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20213,"<Font=arial,0,19,20><color=0xfffcf157>Даэва:<color=0xffffffff>\\nЭто очень интересная информация. Ты хорошо трудишься. Скоро ты станешь ещё сильнее.");
		elseif( id == 20217)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20217,"<Font=arial,0,19,20><color=0xfffcf157>Даэва:<color=0xffffffff>\\nЯ рада, что с Рори всё в порядке. Твоя доброта вселяет в меня надежду.");
		elseif( id == 20203)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20203,"<Font=arial,0,19,20><color=0xfffcf157>Даэва:<color=0xffffffff>\\nПришло время тебе познакомиться со своим первым эльфом.");
        elseif( id == 20201)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20201,"<Font=arial,0,19,20><color=0xfffcf157>Даэва:<color=0xffffffff>\\nСпасибо вам, герой. Теперь мы сможем узнать, как эти ростки смогли выжить в такой среде! У нас есть надежда на возрождение природы этих земель.");
        elseif( id == 20202)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20202,"<Font=arial,0,19,20><color=0xfffcf157>Даэва:<color=0xffffffff>\\nЛисичка теперь будет сыта. Хорошая работа.");
        elseif( id == 20205)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20205,"<Font=arial,0,19,20><color=0xfffcf157>Даэва:<color=0xffffffff>\\nВы нашли это на Темной Горе? Значит, Надир был прав. Демоны идут...");
	elseif( id == 20221)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(20221,"<Font=arial,0,19,20><color=0xfffcf157>Даэва:<color=0xffffffff>\\nЯ уже знаю о том, что творится в Щитовой долине.");
		
			elseif( id == 40042)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(40042,"<Font=arial,0,19,20><color=0xfffcf157>Даэва:<color=0xffffffff>\\nВот свиток <T>Договора с эльфом</T>. Пожалуйста, возьмите его.");
        elseif( id == 40043)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(40043,"<Font=arial,0,19,20><color=0xfffcf157>Даэва:<color=0xffffffff>\\nЭльф из другого места имеет очень сильную духовность, с которой нелегко получить связь. Вам нужно собрать несколько связывающих предметов, чтобы не упустить этого эльфа, когда встретите его.");
		  
		  
	elseif( id == 40047)then
		if( step == QuestTalkBegin )then
			Quest.ClearNPCTalkOptions();
			Quest.SetNPCTalkOption( EOT_CompleteQuest,40047,QuestTalkBegin+1,"В верхнем правом углу экрана" );
			Quest.SetNPCTalkOption( EOT_CompleteQuest,40047,QuestTalkBegin+2,"В нижнем правом углу экрана" );
			Quest.SetNPCTalkOption( EOT_CompleteQuest,40047,QuestTalkBegin+3,"В верхнем левом углу экрана" );
			Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Даэва:<color=0xffffffff><Font=arial,0,17,20>\\nПервый вопрос: Где на экране находится кнопка быстрого создания команды?");

		elseif( step == QuestTalkBegin+1 )then
			Quest.ClearNPCTalkOptions();
			Quest.SetNPCTalkOption( EOT_CompleteQuest,40047,QuestTalkBegin+4,"В командном режиме" );
			Quest.SetNPCTalkOption( EOT_CompleteQuest,40047,QuestTalkBegin+5,"В индивидуальном режиме" );
			Quest.SetNPCTalkOption( EOT_CompleteQuest,40047,QuestTalkBegin+6,"В режиме ожидания" );
			Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Даэва:<color=0xffffffff><Font=arial,0,17,20>\\nВторой вопрос: В каком из этих режимов нельзя создать команду?");

		elseif( step == QuestTalkBegin+6 )then
			Quest.ClearNPCTalkOptions();
			Quest.SetNPCTalkOption( EOT_CompleteQuest,40047,QuestTalkBegin+7,"Выбрать команду в командном режиме" );
			Quest.SetNPCTalkOption( EOT_CompleteQuest,40047,QuestTalkBegin+8,"Выбрать игрока в индивидуальном режиме" );
			Quest.SetNPCTalkOption( EOT_CompleteQuest,40047,QuestTalkBegin+9,"Выбрать игрока только во время задания" );
			Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Даэва:<color=0xffffffff><Font=arial,0,17,20>\\nТретий вопрос：Каким образом можно вступить в уже созданную команду？");

		elseif( step == QuestTalkBegin+7 )then
			Quest.ClearNPCTalkOptions();
			Quest.SetNPCTalkOption( EOT_CompleteQuest,40047,QuestTalkBegin+10,"Специализацию игрока" );
			Quest.SetNPCTalkOption( EOT_CompleteQuest,40047,QuestTalkBegin+11,"Уровень игрока" );
			Quest.SetNPCTalkOption( EOT_CompleteQuest,40047,QuestTalkBegin+12,"Тип задания и местности" );
			Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Даэва:<color=0xffffffff><Font=arial,0,17,20>\\nЧетвертый вопрос: В индивидуальном режиме при вступлении в команду какую информацию необязательно предоставлять?");

		elseif( step == QuestTalkBegin+10 )then
			Quest.ClearNPCTalkOptions();
			Quest.SetNPCTalkOption( EOT_CompleteQuest,40047,QuestTalkBegin+13,"Количество игроков в команде" );
			Quest.SetNPCTalkOption( EOT_CompleteQuest,40047,QuestTalkBegin+14,"Примечания" );
			Quest.SetNPCTalkOption( EOT_CompleteQuest,40047,QuestTalkBegin+15,"Монстры/ивенты/подземелья/другое" );
			Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Даэва:<color=0xffffffff><Font=arial,0,17,20>\\nПятый вопрос：При создании команды в командном режиме какую информацию необходимо еще указать？");

		elseif( step == (QuestTalkBegin+2))then
			Quest.ClearNPCTalkOptions();
			Quest.SetNPCTalkOption( EOT_CompleteQuest,40047,QuestTalkBegin,"Подтвердить" );
			Quest.NPCTalk(0,0,"Ошибка，попробуйте еще раз!");
		elseif( step == (QuestTalkBegin+3))then
			Quest.ClearNPCTalkOptions();
		  	Quest.SetNPCTalkOption( EOT_CompleteQuest,40047,QuestTalkBegin,"Подтвердить" );
			Quest.NPCTalk(0,0,"Ошибка，попробуйте еще раз!");
		elseif( step == (QuestTalkBegin+4))then
			Quest.ClearNPCTalkOptions();
		  	Quest.SetNPCTalkOption( EOT_CompleteQuest,40047,QuestTalkBegin,"Подтвердить" );
			Quest.NPCTalk(0,0,"Ошибка，попробуйте еще раз!");
		elseif( step == (QuestTalkBegin+5))then
			Quest.ClearNPCTalkOptions();
		  	Quest.SetNPCTalkOption( EOT_CompleteQuest,40047,QuestTalkBegin,"Подтвердить" );
			Quest.NPCTalk(0,0,"Ошибка，попробуйте еще раз!");
		elseif( step == (QuestTalkBegin+8))then
			Quest.ClearNPCTalkOptions();
		  	Quest.SetNPCTalkOption( EOT_CompleteQuest,40047,QuestTalkBegin,"Подтвердить" );
			Quest.NPCTalk(0,0,"Ошибка，попробуйте еще раз!");
		elseif( step == (QuestTalkBegin+9))then
			Quest.ClearNPCTalkOptions();
		  	Quest.SetNPCTalkOption( EOT_CompleteQuest,40047,QuestTalkBegin,"Подтвердить" );
			Quest.NPCTalk(0,0,"Ошибка，попробуйте еще раз!");
		elseif( step == (QuestTalkBegin+11))then
			Quest.ClearNPCTalkOptions();
		  	Quest.SetNPCTalkOption( EOT_CompleteQuest,40047,QuestTalkBegin,"Подтвердить" );
			Quest.NPCTalk(0,0,"Ошибка，попробуйте еще раз!");
		elseif( step == (QuestTalkBegin+12))then
			Quest.ClearNPCTalkOptions();
		  	Quest.SetNPCTalkOption( EOT_CompleteQuest,40047,QuestTalkBegin,"Подтвердить" );
			Quest.NPCTalk(0,0,"Ошибка，попробуйте еще раз!");
		elseif( step == (QuestTalkBegin+14))then
			Quest.ClearNPCTalkOptions();
		  	Quest.SetNPCTalkOption( EOT_CompleteQuest,40047,QuestTalkBegin,"Подтвердить" );
			Quest.NPCTalk(0,0,"Ошибка，попробуйте еще раз!");
		elseif( step == (QuestTalkBegin+15))then
			Quest.ClearNPCTalkOptions();
		  	Quest.SetNPCTalkOption( EOT_CompleteQuest,40047,QuestTalkBegin,"Подтвердить" );
			Quest.NPCTalk(0,0,"Ошибка，попробуйте еще раз!");


		elseif( step == QuestTalkBegin+13 )then
			Quest.CloseNPCTalk();
			Quest.CompleteQuestTalk(40047,"<Font=arial,0,19,20><color=0xfffcf157>Даэва:<color=0xffffffff><Font=arial,0,17,20>\\nКажется, вы уже всё знаете!");
		end
	end

end

Rqiongnasi= {}
Rqiongnasi["OnTalk"] = OnTalk
Rqiongnasi["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rqiongnasi["OnCompleteQuestTalk"] = OnCompleteQuestTalk
