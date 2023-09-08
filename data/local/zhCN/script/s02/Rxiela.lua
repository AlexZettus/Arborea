
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5010085);
	Quest.SetCompleteOptions(5010085);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Шера:<color=0xffffffff><Font=arial,0,17,20>\\nЧтобы вставить камень в предмет, нужно, чтобы в предмете была ячейка. Ячеек может быть максимум 7.");

end


local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
        if( id == 20323)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20323,"<Font=arial,0,19,20><color=0xfffcf157>Шера:<color=0xffffffff><Font=arial,0,17,20>\\nКак насчет этого? Вы ведь уже знаете что-то о камнях? Их много в Сноулэнде. Вам нужно как можно скорее отправиться туда. <D>Фьюми</D> ждет вас на севере <N>Святого города</N>.");
        elseif( id == 40031)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(40031,"<Font=arial,0,19,20><color=0xfffcf157>Шера:<color=0xffffffff><Font=arial,0,17,20>\\nДобро пожаловать! Я расскажу вам о драгоценных камнях. Пожалуйста, внимание!\\n<I>Камни</I> обладают свойствами, увеличивающими характеристики снаряжения. Чтобы активировать эти свойства, нужно вставить камень в снаряжение. Камни могут быть разных типов и увеличивают различные характеристики. Для начала возьмите 1 <I>необработанный камень</I>.\\n<I>Необработанные камни</I> можно получить разными путями, например, убивая больших монстров и демонов. Также их можно добыть в шахте. Убейте <C>30</C> <A>коварных воров</A>, и я дам вам такой камень.");
        elseif( id == 40032)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(40032,"<Font=arial,0,19,20><color=0xfffcf157>Шера:<color=0xffffffff><Font=arial,0,17,20>\\nТеперь у вас есть необработанные камни, но вы пока не можете вставить их, правда? Причина в том, что вы пропустили одну важную процедуру - <T>шлифование</T>. Чтобы отшлифовать камень, для начала вам потребуется <I>шлифовальный камень</I>. Его можно купить у <D>Коробейника</D>. Принесите мне <C>20</C> кусков <I>необработанной руды</I>, и я дам вам взамен 1 шлифовальный камень.");
        elseif( id == 40033)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(40033,"<Font=arial,0,19,20><color=0xfffcf157>Шера:<color=0xffffffff><Font=arial,0,17,20>\\nУ вас был камень?\\nНо вы его не смогли использовать? Но чтобы вставить камень в предмет, требуется <T>ячейка</T>. Некоторые предметы имеют несколько <T>ячеек</T>. Чтобы увеличить число ячеек в предмете, потребуется <I>сверло</I>. У предмета может быть максимум <A>7</A> ячеек.\\n<I>Сверла</I> можно получить, если у вас имеется навык <T>кузнечное дело</T>, причем минимум <A>2</A> уровня. Если вы принесете мне <C>20</C> кусков <I>необработанной руды</I>, то получите взамен обычное сверло.\\nКакое у меня все-таки доброе и щедрое сердце - целое сверло за каких-то 20 кусков...");
        elseif( id == 40034)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(40034,"<Font=arial,0,19,20><color=0xfffcf157>Шера:<color=0xffffffff><Font=arial,0,17,20>\\nТеперь я вам расскажу еще кое-что о камнях...\\n<T>1. Камни можно вставлять в предметы в зависимости от типа самого камня и предмета.\\n2. Камни бывают разных уровней. Улучшить камень вам поможет мастер усиления камней. В случае неудачи камень разрушается.\\n3. Камни можно вставлять и  извлекать. О том, как это сделать, вам расскажет мастер удаления камней.\\n4. Осколки камней следует собирать, поскольку затем их можно обменять на камни разных типов у менялы камней. Кроме того, они понадобятся для создания усиленных аксессуаров.</T>\\nЗапомните хорошенько все, что я вам рассказала.");
	elseif( id == 20348)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20348,"<Font=arial,0,19,20><color=0xfffcf157>Шера:<color=0xffffffff><Font=arial,0,17,20>\\nВы играете уже довольно долго. Пора отдохнуть. Предлагаю сыграть в игру Вопросы и Ответы. Начнем!");

        end
end


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)

        if( id == 20109)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20109,"<Font=arial,0,19,20><color=0xfffcf157>Шера:<color=0xffffffff>\\nЭх, он даже не попрощался. Истинный варвар. Спасибо, что сообщили мне.");
        elseif( id == 20322)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20322,"<Font=arial,0,19,20><color=0xfffcf157>Шера:<color=0xffffffff><Font=arial,0,17,20>\\nУ меня для вас есть кое-что.");
        elseif( id == 40031)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(40031,"<Font=arial,0,19,20><color=0xfffcf157>Шера:<color=0xffffffff><Font=arial,0,17,20>\\nСлавно! Вот 2 необработанных камня. Выберите себе один.");
        elseif( id == 40032)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(40032,"<Font=arial,0,19,20><color=0xfffcf157>Шера:<color=0xffffffff><Font=arial,0,17,20>\\nВозьмите этот шлифовальный камень для шлифования необработанных камней.\\nНо вам нужно знать, что требуется соответствие шлифовального камня и уровня необработанного камня. \\nЧто ж, теперь вам решать, что делать дальше. В случае неудачи у вас останется только <I>осколок камня</I>.");
        elseif( id == 40033)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(40033,"<Font=arial,0,19,20><color=0xfffcf157>Шера:<color=0xffffffff><Font=arial,0,17,20>\\nИмеется также определенный шанс неудачи при создании ячейки в предмете с помощью сверла. При этом предмет не повреждается.\\nТяжело будет сделать дополнительную ячейку в снаряжении, но попытаться стоит. Удачи вам!");
        elseif( id == 40034)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(40034,"<Font=arial,0,19,20><color=0xfffcf157>Шера:<color=0xffffffff><Font=arial,0,17,20>\\nЯ открою вам один секрет. Вы можете также вставить камень в своего эльфа.");
		elseif( id == 20110)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20110,"<Font=arial,0,19,20><color=0xfffcf157>Шера:<color=0xffffffff>\\nСпасибо, что сообщили.");

       elseif( id == 20348)then
		if( step == QuestTalkBegin )then
			Quest.ClearNPCTalkOptions();
			Quest.SetNPCTalkOption( EOT_CompleteQuest,20348,QuestTalkBegin+1,"Бедность" );
			Quest.SetNPCTalkOption( EOT_CompleteQuest,20348,QuestTalkBegin+2,"Доброта" );
			Quest.SetNPCTalkOption( EOT_CompleteQuest,20348,QuestTalkBegin+3,"Армия" );
			Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Шера:<color=0xffffffff><Font=arial,0,17,20>\\nВопрос первый. Простым булыжником она свергает тиранов. Кто она?");


		elseif( step == QuestTalkBegin+2 )then
			Quest.ClearNPCTalkOptions();
			Quest.SetNPCTalkOption( EOT_CompleteQuest,20348,QuestTalkBegin+4,"Гром" );
			Quest.SetNPCTalkOption( EOT_CompleteQuest,20348,QuestTalkBegin+5,"Ветер" );
			Quest.SetNPCTalkOption( EOT_CompleteQuest,20348,QuestTalkBegin+6,"Голод" );
			Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Шера:<color=0xffffffff><Font=arial,0,17,20>\\nВопрос второй. Ни один человек не видел это, но каждый знает. Легче, чем воздух, острее, чем меч. Приходит из ничего, но может победить самую сильную армию. Что это?");

		elseif( step == QuestTalkBegin+6 )then
			Quest.ClearNPCTalkOptions();
			Quest.SetNPCTalkOption( EOT_CompleteQuest,20348,QuestTalkBegin+7,"Возраст" );
			Quest.SetNPCTalkOption( EOT_CompleteQuest,20348,QuestTalkBegin+8,"Перья" );
			Quest.SetNPCTalkOption( EOT_CompleteQuest,20348,QuestTalkBegin+9,"Песня" );
			Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Шера:<color=0xffffffff><Font=arial,0,17,20>\\nВопрос третий. Самый маленький жаворонок может летать с этим, но даже самый сильный человек не сможет это носить. О чем я говорю?");
			
		elseif( step == QuestTalkBegin+9 )then
			Quest.ClearNPCTalkOptions();
			Quest.SetNPCTalkOption( EOT_CompleteQuest,20348,QuestTalkBegin+10,"Дом" );
			Quest.SetNPCTalkOption( EOT_CompleteQuest,20348,QuestTalkBegin+11,"День рождения" );
			Quest.SetNPCTalkOption( EOT_CompleteQuest,20348,QuestTalkBegin+12,"Дети" );
			Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Шера:<color=0xffffffff><Font=arial,0,17,20>\\nВопрос четвертый.  Я здесь не гость и не путник запоздалый. Я часть этого места, и оно  - часть меня.");

		elseif( step == (QuestTalkBegin+1))then
			Quest.ClearNPCTalkOptions();
			Quest.SetNPCTalkOption( EOT_CompleteQuest,20348,QuestTalkBegin,"Подтвердить" );
			Quest.NPCTalk(0,0,"Ошибка! Попробуйте еще..");
		elseif( step == (QuestTalkBegin+3))then
			Quest.ClearNPCTalkOptions();
		  	Quest.SetNPCTalkOption( EOT_CompleteQuest,20348,QuestTalkBegin,"Подтвердить" );
			Quest.NPCTalk(0,0,"Ошибка! Попробуйте еще..");
		elseif( step == (QuestTalkBegin+4))then
			Quest.ClearNPCTalkOptions();
		  	Quest.SetNPCTalkOption( EOT_CompleteQuest,20348,QuestTalkBegin,"Подтвердить" );
			Quest.NPCTalk(0,0,"Ошибка! Попробуйте еще..");
		elseif( step == (QuestTalkBegin+5))then
			Quest.ClearNPCTalkOptions();
		  	Quest.SetNPCTalkOption( EOT_CompleteQuest,20348,QuestTalkBegin,"Подтвердить" );
			Quest.NPCTalk(0,0,"Ошибка! Попробуйте еще..");
		elseif( step == (QuestTalkBegin+7))then
			Quest.ClearNPCTalkOptions();
		  	Quest.SetNPCTalkOption( EOT_CompleteQuest,20348,QuestTalkBegin,"Подтвердить" );
			Quest.NPCTalk(0,0,"Ошибка! Попробуйте еще..");
		elseif( step == (QuestTalkBegin+8))then
			Quest.ClearNPCTalkOptions();
		  	Quest.SetNPCTalkOption( EOT_CompleteQuest,20348,QuestTalkBegin,"Подтвердить" );
			Quest.NPCTalk(0,0,"Ошибка! Попробуйте еще..");
		elseif( step == (QuestTalkBegin+11))then
			Quest.ClearNPCTalkOptions();
		  	Quest.SetNPCTalkOption( EOT_CompleteQuest,20348,QuestTalkBegin,"Подтвердить" );
			Quest.NPCTalk(0,0,"Ошибка! Попробуйте еще..");
		elseif( step == (QuestTalkBegin+12))then
			Quest.ClearNPCTalkOptions();
		  	Quest.SetNPCTalkOption( EOT_CompleteQuest,20348,QuestTalkBegin,"Подтвердить" );
			Quest.NPCTalk(0,0,"Ошибка! Попробуйте еще..");

		elseif( step == QuestTalkBegin+10 )then
			Quest.CloseNPCTalk();
			Quest.CompleteQuestTalk(20348,"<Font=arial,0,19,20><color=0xfffcf157>Шера:<color=0xffffffff><Font=arial,0,17,20>\\nПришло время вам снова отправляться в путь.");
		end
       end

end

Rxiela = {}
Rxiela["OnTalk"] = OnTalk
Rxiela["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rxiela["OnCompleteQuestTalk"] = OnCompleteQuestTalk