local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5511029);
	Quest.SetCompleteOptions(5511029);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Распорядитель наград онлайн:<color=0xffffffff>\\nБольше наград, больше опыта!");

end


local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
       if( id == 30644)then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30644,"<Font=arial,0,19,20><color=0xfffcf157>Распорядитель наград онлайн:<color=0xffffffff>\\nВы можете обменять <I>свиток души +5</I> и <A>50 золотых</A> на <I>камень души + 5</I>.");
	elseif( id == 30653)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30653,"<Font=arial,0,19,20><color=0xfffcf157>Распорядитель наград онлайн:<color=0xffffffff>\\nВы можете обменять <C>1</C> <I>свиток обмена материала 4-го уровня</I> и <C>50</C> <A>золотых</A> на <C>3</C> куска <I>легированного железа [Ур. 1]</I>");
	elseif( id == 30654)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30654,"<Font=arial,0,19,20><color=0xfffcf157>Распорядитель наград онлайн:<color=0xffffffff>\\nВы можете обменять <C>1</C> <I>свиток обмена материала 4-го уровня</I> и <C>100</C> <A>золотых</A> на <C>3</C> куска <I>мифического железа [Ур. 1]</I>.");
	elseif( id == 30655)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30655,"<Font=arial,0,19,20><color=0xfffcf157>Распорядитель наград онлайн:<color=0xffffffff>\\nВы можете обменять <C>1</C> <I>свиток обмена камней</I> и <C>300</C> <A>золотых</A> на <C>1</C> <I>солнцевик</I>.");
	elseif( id == 30656)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30656,"<Font=arial,0,19,20><color=0xfffcf157>Распорядитель наград онлайн:<color=0xffffffff>\\nВы можете обменять <C>1</C> <I>свиток обмена камней</I> и <C>300</C> <A>золотых</A> на <C>1</C> <I>луник</I>.");
	elseif( id == 30657)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30657,"<Font=arial,0,19,20><color=0xfffcf157>Распорядитель наград онлайн:<color=0xffffffff>\\nВы можете обменять <C>1</C> <I>свиток осколка темного кристалла</I> и <C>20</C> <A>золотых</A> на <C>1</C> <I>темный кристалл</I>.");
	elseif( id == 30689)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30689,"<Font=arial,0,19,20><color=0xfffcf157>Распорядитель наград онлайн:<color=0xffffffff>\\nВы можете обменять <C>1</C> <I>свиток магического осколка</I> и <C>20</C> <A>золотых</A> на <C>1</C> <I>магический осколок</I>.");
        end
end


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
	if( id == 30644)then
		if( step == QuestTalkBegin )then
			Quest.ClearNPCTalkOptions();
			Quest.SetNPCTalkOption( EOT_CompleteQuest,30644,QuestTalkBegin+1,"ОК" );
			Quest.SetNPCTalkOption( EOT_CompleteQuest,30644,QuestTalkBegin+2,"Передумать" );
			Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Распорядитель наград онлайн:<color=0xffffffff>\\nТребуются <I>свиток души +5</I> и <A>50 золотых</A>, чтобы завершить это задание. Вы решили менять?");

		elseif( step == QuestTalkBegin+1 )then
			Quest.CloseNPCTalk();
			Quest.CompleteQuestTalk(30644,"<Font=arial,0,19,20><color=0xfffcf157>Распорядитель наград онлайн:<color=0xffffffff>\\nВы приняли решение. За обмен получите камень души.");
		elseif( step == QuestTalkBegin+2 )then
			Quest.ClearNPCTalkOptions();
			Quest.SetNPCTalkOption( EOT_CompleteQuest,30644,QuestTalkBegin,"Выход" );
			Quest.NPCTalk(0,0,"Передумать");
		end
	elseif( id == 30653)then
		if( step == QuestTalkBegin )then
			Quest.ClearNPCTalkOptions();
			Quest.SetNPCTalkOption( EOT_CompleteQuest,30653,QuestTalkBegin+1,"OK" );
			Quest.SetNPCTalkOption( EOT_CompleteQuest,30653,QuestTalkBegin+2,"Передумать" );
			Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Распорядитель наград онлайн:<color=0xffffffff>\\nТребуются <C>1</C> <I>свиток обмена материала 4-го уровня</I> и <C>50</C> <A>золотых</A>, чтобы завершить это задание. Вы решили менять?");

		elseif( step == QuestTalkBegin+1 )then
			Quest.CloseNPCTalk();
			Quest.CompleteQuestTalk(30653,"<Font=arial,0,19,20><color=0xfffcf157>Распорядитель наград онлайн:<color=0xffffffff>\\nЛегированное железо [Ур. 1] ваше.");
		elseif( step == QuestTalkBegin+2 )then
			Quest.ClearNPCTalkOptions();
			Quest.SetNPCTalkOption( EOT_CompleteQuest,30653,QuestTalkBegin,"Выход" );
			Quest.NPCTalk(0,0,"Передумать");
		end
	elseif( id == 30654)then
		if( step == QuestTalkBegin )then
			Quest.ClearNPCTalkOptions();
			Quest.SetNPCTalkOption( EOT_CompleteQuest,30654,QuestTalkBegin+1,"ОК" );
			Quest.SetNPCTalkOption( EOT_CompleteQuest,30654,QuestTalkBegin+2,"Передумать" );
			Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Распорядитель наград онлайн:<color=0xffffffff>\\nТребуются <C>1</C> <I>свиток обмена материала 4-го уровня</I> и <C>100</C> <A>золотых</A>, чтобы завершить это задание. Вы решили менять?");

		elseif( step == QuestTalkBegin+1 )then
			Quest.CloseNPCTalk();
			Quest.CompleteQuestTalk(30654,"<Font=arial,0,19,20><color=0xfffcf157>Распорядитель наград онлайн:<color=0xffffffff>\\nЛегированное железо [Ур. 1] ваше.");
		elseif( step == QuestTalkBegin+2 )then
			Quest.ClearNPCTalkOptions();
			Quest.SetNPCTalkOption( EOT_CompleteQuest,30654,QuestTalkBegin,"Выход" );
			Quest.NPCTalk(0,0,"Передумать");
		end
	elseif( id == 30655)then
		if( step == QuestTalkBegin )then
			Quest.ClearNPCTalkOptions();
			Quest.SetNPCTalkOption( EOT_CompleteQuest,30655,QuestTalkBegin+1,"ОК" );
			Quest.SetNPCTalkOption( EOT_CompleteQuest,30655,QuestTalkBegin+2,"Передумать" );
			Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Распорядитель наград онлайн:<color=0xffffffff>\\nТребуются <C>1</C> <I>свиток обмена камней</I> и <C>300</C> <A>золотых</A>, чтобы завершить это задание. Вы решили менять?");

		elseif( step == QuestTalkBegin+1 )then
			Quest.CloseNPCTalk();
			Quest.CompleteQuestTalk(30655,"<Font=arial,0,19,20><color=0xfffcf157>Распорядитель наград онлайн:<color=0xffffffff>\\nВозьмите камень души.");
		elseif( step == QuestTalkBegin+2 )then
			Quest.ClearNPCTalkOptions();
			Quest.SetNPCTalkOption( EOT_CompleteQuest,30655,QuestTalkBegin,"Выход" );
			Quest.NPCTalk(0,0,"Передумать");
		end
	elseif( id == 30656)then
		if( step == QuestTalkBegin )then
			Quest.ClearNPCTalkOptions();
			Quest.SetNPCTalkOption( EOT_CompleteQuest,30656,QuestTalkBegin+1,"ОК" );
			Quest.SetNPCTalkOption( EOT_CompleteQuest,30656,QuestTalkBegin+2,"Передумать" );
			Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Распорядитель наград онлайн:<color=0xffffffff>\\nТребуются <C>1</C> <I>свиток обмена камней</I> и <C>300</C> <A>золотых</A>, чтобы завершить это задание. Вы решили менять?");

		elseif( step == QuestTalkBegin+1 )then
			Quest.CloseNPCTalk();
			Quest.CompleteQuestTalk(30656,"<Font=arial,0,19,20><color=0xfffcf157>Распорядитель наград онлайн:<color=0xffffffff>\\nВозьмите лунник.");
		elseif( step == QuestTalkBegin+2 )then
			Quest.ClearNPCTalkOptions();
			Quest.SetNPCTalkOption( EOT_CompleteQuest,30656,QuestTalkBegin,"Выход" );
			Quest.NPCTalk(0,0,"Передумать");
		end
	elseif( id == 30657)then
		if( step == QuestTalkBegin )then
			Quest.ClearNPCTalkOptions();
			Quest.SetNPCTalkOption( EOT_CompleteQuest,30657,QuestTalkBegin+1,"ОК" );
			Quest.SetNPCTalkOption( EOT_CompleteQuest,30657,QuestTalkBegin+2,"Передумать" );
			Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Распорядитель наград онлайн:<color=0xffffffff>\\nТребуются <C>1</C> <I>свиток осколка темного кристалла</I> и <C>20</C> <A>золотых</A>, чтобы завершить это задание. Вы решили менять?");

		elseif( step == QuestTalkBegin+1 )then
			Quest.CloseNPCTalk();
			Quest.CompleteQuestTalk(30657,"<Font=arial,0,19,20><color=0xfffcf157>Распорядитель наград онлайн:<color=0xffffffff>\\nВозьмите темный кристалл.");
		elseif( step == QuestTalkBegin+2 )then
			Quest.ClearNPCTalkOptions();
			Quest.SetNPCTalkOption( EOT_CompleteQuest,30657,QuestTalkBegin,"Выход" );
			Quest.NPCTalk(0,0,"Передумать");
		end
	elseif( id == 30689)then
		if( step == QuestTalkBegin )then
			Quest.ClearNPCTalkOptions();
			Quest.SetNPCTalkOption( EOT_CompleteQuest,30689,QuestTalkBegin+1,"ОК" );
			Quest.SetNPCTalkOption( EOT_CompleteQuest,30689,QuestTalkBegin+2,"Передумать" );
			Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Распорядитель наград онлайн:<color=0xffffffff>\\nТребуются <C>1</C> <I>свиток осколка магического кристалла</I> и <C>20</C> <A>золотых</A>, чтобы завершить это задание. Вы решили менять?");

		elseif( step == QuestTalkBegin+1 )then
			Quest.CloseNPCTalk();
			Quest.CompleteQuestTalk(30689,"<Font=arial,0,19,20><color=0xfffcf157>Распорядитель наград онлайн:<color=0xffffffff>\\nВозьмите осколок кристалла магического света.");
		elseif( step == QuestTalkBegin+2 )then
			Quest.ClearNPCTalkOptions();
			Quest.SetNPCTalkOption( EOT_CompleteQuest,30689,QuestTalkBegin,"Выход" );
			Quest.NPCTalk(0,0,"Передумать");
		end
       end

end

Rfuhunjuan = {}
Rfuhunjuan["OnTalk"] = OnTalk
Rfuhunjuan["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rfuhunjuan["OnCompleteQuestTalk"] = OnCompleteQuestTalk