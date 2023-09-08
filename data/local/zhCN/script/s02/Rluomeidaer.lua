
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --Очистить настройки диалогового окна
	Quest.SetAcceptOptions(5010083);
	Quest.SetCompleteOptions(5010083);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Ромидай:<color=0xffffffff><Font=arial,0,17,20>\\nПомните, что предметы снаряжения высокого качества можно усиливать, а усиление - переносить на другие предметы.");

end


local function OnAcceptQuestTalk(id,step)--Если удалить задание, его снова можно будет получить вручную
        if( id == 40021)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(40021,"<Font=arial,0,19,20><color=0xfffcf157>Ромидай:<color=0xffffffff><Font=arial,0,17,20>\\nНа этот раз вам нужно убить <C>40</C> <A>ледяных вепрей</A>.");
        elseif( id == 40022)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(40022,"<Font=arial,0,19,20><color=0xfffcf157>Ромидай:<color=0xffffffff><Font=arial,0,17,20>\\nО, это снова вы! Хотите продолжать сотрудничество? Тогда убейте <C>1</C> <A>дух змеи Дюсам</A>.");
        elseif( id == 40023)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(40023,"<Font=arial,0,19,20><color=0xfffcf157>Ромидай:<color=0xffffffff><Font=arial,0,17,20>\\nТеперь я меняю <C>50</C> <I>первичных духов</I> на кое-что очень ценное.");
        elseif( id == 40024)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(40024,"<Font=arial,0,19,20><color=0xfffcf157>Ромидай:<color=0xffffffff><Font=arial,0,17,20>\\nУ вас новый уровень, не так ли? Тогда еще одно задание: убейте <C>20</C> <A>больших привидений-клоунов</A>.");
        elseif( id == 40025)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(40025,"<Font=arial,0,19,20><color=0xfffcf157>Ромидай:<color=0xffffffff><Font=arial,0,17,20>\\nТак, значит, <C>50</C> <A>змей-охотников</A> и <C>50</C> <A>голодных змей</A>, и награда ваша! Договорились?");
        elseif( id == 40026)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(40026,"<Font=arial,0,19,20><color=0xfffcf157>Ромидай:<color=0xffffffff><Font=arial,0,17,20>\\nВот вам список тех, кого нужно убить: <A>цветок танца демонов</A>, <A>Майра Убийца тысячи</A>, <A>страж Редмонт</A>, <A>резчик ветра</A>.");
        elseif( id == 40027)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(40027,"<Font=arial,0,19,20><color=0xfffcf157>Ромидай:<color=0xffffffff><Font=arial,0,17,20>\\nИ напоследок еще одно небольшое заданьице для вас. Убейте <C>500<C> <A>драконов горы смерти</A>, и я награжу вас по-королевски!");
	end
end


--Настройки завершения заданий
local function OnCompleteQuestTalk(id,step)
        if( id == 40020)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(40020,"<Font=arial,0,19,20><color=0xfffcf157>Ромидай:<color=0xffffffff><Font=arial,0,17,20>\\nСейчас у меня только эти предметы для усиления. Когда достигнете <C>30</C> уровня, приходите ко мне снова.");
        elseif( id == 40021)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(40021,"<Font=arial,0,19,20><color=0xfffcf157>Ромидай:<color=0xffffffff><Font=arial,0,17,20>\\nСправились? Хорошо. Получите награду.");
        elseif( id == 40022)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(40022,"<Font=arial,0,19,20><color=0xfffcf157>Ромидай:<color=0xffffffff><Font=arial,0,17,20>\\nЧтобы усилить камни и, позже, знаки, вам понадобятся камни усиления.");
        elseif( id == 40023)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(40023,"<Font=arial,0,19,20><color=0xfffcf157>Ромидай:<color=0xffffffff><Font=arial,0,17,20>\\nСледующий раз приходите, когда поднимете уровень до <C>60</C>.");    
        elseif( id == 40024)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(40024,"<Font=arial,0,19,20><color=0xfffcf157>Ромидай:<color=0xffffffff><Font=arial,0,17,20>\\nЧтобы усиление не окончилось неудачей и снаряжение не было разрушено, нужно использовать руны гарантии.");  
        elseif( id == 40025)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(40025,"<Font=arial,0,19,20><color=0xfffcf157>Ромидай:<color=0xffffffff><Font=arial,0,17,20>\\nКонечно, задача сложная, но вы справитесь!"); 
        elseif( id == 40026)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(40026,"<Font=arial,0,19,20><color=0xfffcf157>Ромидай:<color=0xffffffff><Font=arial,0,17,20>\\nВы становитесь все сильнее и сильнее. Я рада видеть это! Надеюсь, эти предметы помогут вам."); 	
        elseif( id == 40027)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(40027,"<Font=arial,0,19,20><color=0xfffcf157>Ромидай:<color=0xffffffff>\\nsНаши пути расходятся, мой друг. Удачи вам на дороге к вершине славы!"); 
        elseif( id == 30868)then
		if( step == QuestTalkBegin )then
			Quest.ClearNPCTalkOptions();
			Quest.SetNPCTalkOption( EOT_CompleteQuest,30868,QuestTalkBegin+1,"ОК" );
			Quest.SetNPCTalkOption( EOT_CompleteQuest,30868,QuestTalkBegin+2,"Вернуться" );
			Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Ромидай:<color=0xffffffff>\\n    По прошлогоднему спику? Хорошо, я все подготовлю и пришлю!");	        
		elseif( step == QuestTalkBegin+1 )then
			Quest.UpdateQuest(30868);
		elseif( step == QuestTalkBegin+2 )then
			Quest.CloseNPCTalk();
		end
	end

end

Rluomeidaer = {}
Rluomeidaer["OnTalk"] = OnTalk
Rluomeidaer["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rluomeidaer["OnCompleteQuestTalk"] = OnCompleteQuestTalk