
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5010017);
	Quest.SetCompleteOptions(5010017);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Квартирмейстер Налан:<color=0xffffffff><Font=arial,0,17,20>\\nНовобранец, я надеюсь, что твое обучение будет успешным!");

end


local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
        if( id == 20010)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20010,"<Font=arial,0,19,20><color=0xfffcf157>Квартирмейстер Налан:<color=0xffffffff><Font=arial,0,17,20>\\nПожалуйста, вернись к <color=0xff00ddbb>капитану Фритису<color=0xffffffff>. Он знает, как отличить настоящего воина от  простого человека, в котором нет ни капли божественной силы. Ничего не бойся, доверься ему.");
        elseif( id == 20017)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20017,"<Font=arial,0,19,20><color=0xfffcf157>Квартирмейстер Налан:<color=0xffffffff><Font=arial,0,17,20>\\nКогда поднимешь свой уровень до <A>10</A>, найди <D>капитана Фритиса</D>. Он поможет тебе освоиться в нашей столице - <N>Тарио</N>. Ты найдёшь его гораздо быстрее, если проделаешь путь верхом. Как только в твоем распоряжении появится собственный скакун, используй навык верховой езды в панели навыков, внизу экрана. Что ж, удачи тебе на пути к получению звания воина света!");
        end
end


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
        if( id == 20009)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20009,"<Font=arial,0,19,20><color=0xfffcf157>Квартирмейстер Налан:<color=0xffffffff><Font=arial,0,17,20>\\nОружие, доспехи и аксессуары классифицируются по цветам: белые, <color=0xffffff00>желтые<color=0xffffffff>, <color=0xff05ff00>зеленые<color=0xffffffff>, <color=0xff00a2ff>синие<color=0xffffffff>, <color=0xffffae00>оранжевые<color=0xffffffff> и <color=0xff9933ff>фиолетовые<color=0xffffffff>.  Белым цветом окрашены обычные предметы, а фиолетовым - самые редкие.  Чем лучше снаряжение, тем выше твои способности.");
        elseif( id == 20016)then
		if( step == QuestTalkBegin )then
			Quest.ClearNPCTalkOptions();
			Quest.SetNPCTalkOption( EOT_CompleteQuest,20016,QuestTalkBegin+1,"Кнопкой Q, кажется..." );
			Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Квартирмейстер Налан:<color=0xffffffff><Font=arial,0,17,20>\\nСкажи мне, ты понимаешь, что быть воином света - значит, возложить на себя огромную ответственность за жизни людей? Тебе нужно будет выполнить множество заданий! Кстати, как открыть панель заданий?");


		elseif( step == QuestTalkBegin+1 )then
			Quest.ClearNPCTalkOptions();
			Quest.SetNPCTalkOption( EOT_CompleteQuest,20016,QuestTalkBegin+4,"Окно чата открывается кнопкой F." );
			Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Квартирмейстер Налан:<color=0xffffffff><Font=arial,0,17,20>\\nМой отец принимал участие в последнем сражении при Тарио. Он рассказывал о демонах страшные вещи. Тебе предстоит услышать немало таких историй. Как ты откроешь окно чата?");

		elseif( step == QuestTalkBegin+4 )then
			Quest.ClearNPCTalkOptions();
			Quest.SetNPCTalkOption( EOT_CompleteQuest,20016,QuestTalkBegin+8,"Атака зависит от силы!" );
			Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Квартирмейстер Налан:<color=0xffffffff><Font=arial,0,17,20>\\nТебе нужно постоянно тренироваться в сражениях. Ты помнишь, что увеличивает тебе физическую атаку?");


		elseif( step == (QuestTalkBegin+2))then
			Quest.ClearNPCTalkOptions();
			Quest.SetNPCTalkOption( EOT_CompleteQuest,20016,QuestTalkBegin,"Подтвердить" );
			Quest.NPCTalk(0,0," ");
		elseif( step == (QuestTalkBegin+3))then
			Quest.ClearNPCTalkOptions();
		  	Quest.SetNPCTalkOption( EOT_CompleteQuest,20016,QuestTalkBegin,"Подтвердить" );
			Quest.NPCTalk(0,0," ");
		elseif( step == (QuestTalkBegin+5))then
			Quest.ClearNPCTalkOptions();
		  	Quest.SetNPCTalkOption( EOT_CompleteQuest,20016,QuestTalkBegin,"Подтвердить" );
			Quest.NPCTalk(0,0," ");
		elseif( step == (QuestTalkBegin+6))then
			Quest.ClearNPCTalkOptions();
		  	Quest.SetNPCTalkOption( EOT_CompleteQuest,20016,QuestTalkBegin,"Подтвердить" );
			Quest.NPCTalk(0,0," ");
		elseif( step == (QuestTalkBegin+7))then
			Quest.ClearNPCTalkOptions();
		  	Quest.SetNPCTalkOption( EOT_CompleteQuest,20016,QuestTalkBegin,"Подтвердить" );
			Quest.NPCTalk(0,0," ");
		elseif( step == (QuestTalkBegin+9))then
			Quest.ClearNPCTalkOptions();
		  	Quest.SetNPCTalkOption( EOT_CompleteQuest,20016,QuestTalkBegin,"Подтвердить" );
			Quest.NPCTalk(0,0," ");
		elseif( step == QuestTalkBegin+8 )then
			Quest.CloseNPCTalk();
			Quest.CompleteQuestTalk(20016,"<Font=arial,0,19,20><color=0xfffcf157>Квартирмейстер Налан:<color=0xffffffff><Font=arial,0,17,20>\\nОтличная работа! Продолжай в том же духе! Когда будешь получать предметы снаряжения лучше, чем те, что у тебя есть, не забывай надевать их. Они увеличивают твою силу. И помни, что предметы классифицируются по цвету: белые, <color=0xffffff00>желтые<color=0xffffffff>, <color=0xff05ff00>зеленые<color=0xffffffff>, <color=0xff00a2ff>синие<color=0xffffffff>, <color=0xffffae00>оранжевые<color=0xffffffff> и <color=0xff9933ff>фиолетовые<color=0xffffffff>.");
		end
       end

end

Rnalan = {}
Rnalan["OnTalk"] = OnTalk
Rnalan["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rnalan["OnCompleteQuestTalk"] = OnCompleteQuestTalk
