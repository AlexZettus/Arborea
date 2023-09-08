
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5610050);
	Quest.SetCompleteOptions(5610050);
	Quest.NPCTalk(0,0,"Тебе нравятся мои красивые ножки?");
end


local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
        if( id == 30792)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30792,"Все холостяки и старые девы с нетерпением ждут ежегодного карнавала, во время которого они надеются найти свое счастье. И я жду. Но кому я понравлюсь в такой одежде? Если поможешь мне красиво одеться, я отблагодарю тебя! В прошлом году мне помог эмиссар мастерства Парт, найди его, сделай, что он просит, и возвращайся ко мне.");
     elseif( id == 30794)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30794,"Так быстро? Неужели? Тебе нужны мерки с моей фигуры? Хорошо, но мне нечем измерить... Портняжной ленты у меня нет, но... У привидений-адептов Леса Теней и приведений-хилиастов всегда есть с собой ленточки, с помощью которых они развлекаются на досуге. Из 20 ленточек можно сделать рулетку, а потом снять мерки. Как тебе мысль?");
		elseif( id == 30796)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30796,"Какое красивое платье! Спасибо! За это ты можешь взять себе оружие и один из ресурсов на выбор.");
		elseif( id == 30815)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30815,"Эй, вот снова и встретились! В прошлый раз было неплохо. Пожалуй, еще раз побеспокою тебя. В этом году клан Звери установил новый закон, запрещающий обнажать ноги! Это ужасно, ужасно! Я теперь не могу надевать любимый наряд! Помоги мне, пожалуйста, заставить их отменить тот закон.");
		elseif( id == 30819)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30819,"Какая красивая одежда! Спасибо! За это ты можешь взять себе оружие и один из ресурсов на выбор.");

				end
end


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
        if( id == 30792)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30792,"Вижу, что ты поможешь мне. Передай мою просьбу Альфреду, моему брату, пожалуйста!");
		elseif( id == 30794)then
			Quest.CloseNPCTalk();
		    Quest.CompleteQuestTalk(30794,"О, хорошо, давай сделаем рулетку и измерим мои очаровательные формы! Пожалуйста, отнеси мерки брату. Жду твоего возвращения!");
		elseif( id == 30796)then
			if( not Quest.QuestCanComplete(30796) ) then
				if( step == QuestTalkBegin )then
					Quest.ClearNPCTalkOptions();
					Quest.SetNPCTalkOption( EOT_CompleteQuest,30796,QuestTalkBegin+1,"Очаровательно!" );
					Quest.SetNPCTalkOption( EOT_CompleteQuest,30796,QuestTalkBegin+2,"Не так уж плохо" );
					Quest.SetNPCTalkOption( EOT_CompleteQuest,30796,QuestTalkBegin+3,"Это можно носить?" );
					Quest.NPCTalk(0,0,"Разве я не очаровательна в этом платье?");
				else
					Quest.UpdateQuest(30796);
				end
			else
			    Quest.CloseNPCTalk();
	            Quest.CompleteQuestTalk(30796,"Вот твоя награда!");
			end
		elseif( id == 30819)then
			if( not Quest.QuestCanComplete(30819) ) then
				if( step == QuestTalkBegin )then
					Quest.ClearNPCTalkOptions();
					Quest.SetNPCTalkOption( EOT_CompleteQuest,30819,QuestTalkBegin+1,"Очаровательно!" );
					Quest.SetNPCTalkOption( EOT_CompleteQuest,30819,QuestTalkBegin+2,"Не так уж плохо!" );
					Quest.SetNPCTalkOption( EOT_CompleteQuest,30819,QuestTalkBegin+3,"Это можно носить?" );
					Quest.NPCTalk(0,0,"Разве я не очаровательна, как десять тысяч цветов, в этом платье?");
				else
					Quest.UpdateQuest(30819);
				end
			else
			    Quest.CloseNPCTalk();
	            Quest.CompleteQuestTalk(30819,"Вот твоя награда!");
			end

	   end
end

Rshowgirl = {}
Rshowgirl["OnTalk"] = OnTalk
Rshowgirl["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rshowgirl["OnCompleteQuestTalk"] = OnCompleteQuestTalk
