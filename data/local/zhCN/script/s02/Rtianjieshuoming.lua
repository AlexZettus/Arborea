local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetNPCTalkOption( EOT_ScenarioTalk,0,ScenarioTalkBegin,"1. О Вечном Аде" );
	Quest.SetNPCTalkOption( EOT_ScenarioTalk,1,ScenarioTalkBegin,"2. О Логове Зверя" );
	Quest.SetNPCTalkOption( EOT_ScenarioTalk,2,ScenarioTalkBegin,"3. О Вторжении монстров" );
	Quest.SetAcceptOptions(5511017);
	Quest.SetCompleteOptions(5511017);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Сикнол:<color=0xffffffff>\\nВы хотите узнать побольше о небесных ивентах?");
end

local function OnScenarioTalk(id,step)
	if( id == 0 ) then
		if( step == ScenarioTalkBegin ) then
		Quest.ClearNPCTalkOptions();                    --清除对话框选项
		Quest.SetNPCTalkOption( EOT_ScenarioTalk,0,QuestTalkBegin+1,"Время" );
		Quest.SetNPCTalkOption( EOT_ScenarioTalk,0,QuestTalkBegin+2,"Условия" );
		Quest.SetNPCTalkOption( EOT_ScenarioTalk,0,ScenarioTalkBegin+3, "Назад" );
		Quest.SetNPCTalkOption( EOT_ScenarioTalk,0,ScenarioTalkBegin+10000, "Выход" );
	        Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Сикнол:<color=0xffffffff>\\nЧто вы хотите узнать?");
		elseif( step == QuestTalkBegin+1 )then
		Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Время открытия Вечного Ада:<color=0xffffffff>\\n<C>15:00-16:00, 19:00-20:00</C> ежедневно");
		elseif( step == QuestTalkBegin+2 )then--Challenge of Centighost Purgatory
		Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Условия прохождения Вечного Ада:<color=0xffffffff>\\nКогда начинается ивент, любые игроки с уровнем <C>40—120</C> в Тарио могут найти НИП <D>учитель Сентигоста</D> и взять задание <P>Вечный Ад</P>. Игроки могут брать это задание только <C>1</C> раз в день, а входить в подземелье - <C>9</C> раз в день. Только группа из <C>4</C> игроков и больше может входить в Вечный Ад, после чего один из членов группы должен поговорить с <D>Хранителем Ортеном</D> и выбрать опцию <I>Освободить монстров!</I>. После этого появятся несколько маленьких монстров и их босс. Как только группа уничтожит всех монстров и босса, можно выпускать следующих. Нужно избавиться всего от <C>10</C> таких боссов и их подчиненных. После каждой убитой группы монстров уровень новых будет расти.");
                elseif( step == ScenarioTalkBegin+3 ) then --返回上级界面
			OnTalk();
		elseif( step == ScenarioTalkBegin+10000 ) then --关闭窗口
			Quest.CloseNPCTalk();
		end
	elseif( id == 1 ) then
		if( step == ScenarioTalkBegin ) then
		Quest.ClearNPCTalkOptions();                    --清除对话框选项
		Quest.SetNPCTalkOption( EOT_ScenarioTalk,1,QuestTalkBegin+1,"Время" );
		Quest.SetNPCTalkOption( EOT_ScenarioTalk,1,QuestTalkBegin+2,"Условия" );
		Quest.SetNPCTalkOption( EOT_ScenarioTalk,0,ScenarioTalkBegin+3, "Назад" );
		Quest.SetNPCTalkOption( EOT_ScenarioTalk,0,ScenarioTalkBegin+10000, "Выход" );
	        Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Сикнол:<color=0xffffffff>\\nЧто вы хотите узнать?");
		elseif( step == QuestTalkBegin+1 )then
		Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Время открытия Логова Зверя:<color=0xffffffff>\\nИвент стартует ежедневно в <C>14:00, 18:00, 22:00</C> и продолжается <C>1</C> час.");
		elseif( step == QuestTalkBegin+2 )then
		Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Условия прохождения Логова Зверя:<color=0xffffffff>\\nКак только начинается отсчет времени ивента, открываются <D>Врата Логова Зверя</D> в <N>Долине Грома</N> и <N>Сноулэнде</N>. Игроки с уровнем <C>30</C> и выше должны сформировать группу минимум из <C>3</C> членов, чтобы войти в подземелье. Тот член команды, который откроет <D>Врата Логова Зверя</D>, можен принять участие в ивенте. Войдя во <D>Врата Логова Зверя</D>, нужно поговорить с <D>эмиссаром Логова Зверя</D>, чтобы взять задание. Игрокам нужно убить всех монстров перед появлением босса. Когда босс будет побежден, игроки смогут покинуть подземелье. После этого им нужно поговорить с <D>проводником Логова Зверя</D>  Тиганом [Тарио 686 861], чтобы выполнить задание.");
                elseif( step == ScenarioTalkBegin+3 ) then --返回上级界面
			OnTalk();
		elseif( step == ScenarioTalkBegin+10000 ) then --关闭窗口
		end
	elseif( id == 2 ) then
		if( step == ScenarioTalkBegin ) then
		Quest.ClearNPCTalkOptions();                    --清除对话框选项
		Quest.SetNPCTalkOption( EOT_ScenarioTalk,2,QuestTalkBegin+1,"Время" );
		Quest.SetNPCTalkOption( EOT_ScenarioTalk,2,QuestTalkBegin+2,"Условия" );
		Quest.SetNPCTalkOption( EOT_ScenarioTalk,0,ScenarioTalkBegin+3, "Назад" );
		Quest.SetNPCTalkOption( EOT_ScenarioTalk,0,ScenarioTalkBegin+10000, "Выход" );
	        Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Сикнол:<color=0xffffffff>\\nЧто вы хотите узнать?");
		elseif( step == QuestTalkBegin+1 )then
		Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Время открытия Вторжения монстров:<color=0xffffffff>\\nИвент стартует ежедневно в <C>00:30, 8:30, 12:30, 16:30 и 20:30</C> и продолжается <C>1</C> час.");
		elseif( step == QuestTalkBegin+2 )then
		Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Условия прохождения Вторжения монстров:<color=0xffffffff>\\nКак только начинается отсчет времени ивента, появятся несколько <A>демонов вторжения</A> в локациях: <N>Южные Топи</N>, <N>Лес Теней</N>, <N>Сноулэнд</N>, <N>Долина Грома</N> и <N>Гора Смерти</N>. Группа может состоять минимум из <C>3</C> игроков. Чтобы начать ивент, нужно поговорить с <A>демоном вторжения</A>. Появятся несколько боссов и элитных монстров. Расправьтесь с ними, чтобы выполнить задание.");
                elseif( step == ScenarioTalkBegin+3 ) then --返回上级界面
			OnTalk();
		elseif( step == ScenarioTalkBegin+10000 ) then --关闭窗口
		end
	end
end

local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
	if( id == 30601)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30601,"<Font=arial,0,19,20><color=0xfffcf157>Сикнол:<color=0xffffffff>\\nНайдите вход в Логово Зверя и избавьтесь в нем от демонов и их босса.");
	elseif( id == 30602)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30602,"<Font=arial,0,19,20><color=0xfffcf157>Сикнол:<color=0xffffffff>\\nНайдите вход в Логово Зверя и избавьтесь в нем от демонов и их босса");
	elseif( id == 30603)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30603,"<Font=arial,0,19,20><color=0xfffcf157>Сикнол:<color=0xffffffff>\\nНайдите вход в Логово Зверя и избавьтесь в нем от демонов и их босса.");
	elseif( id == 30604)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30604,"<Font=arial,0,19,20><color=0xfffcf157>Сикнол:<color=0xffffffff>\\nНайдите вход в Логово Зверя и избавьтесь в нем от демонов и их босса.");
	elseif( id == 30605)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30605,"<Font=arial,0,19,20><color=0xfffcf157>Сикнол:<color=0xffffffff>\\nНайдите вход в Логово Зверя и избавьтесь в нем от демонов и их босса.");
	elseif( id == 30606)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30606,"<Font=arial,0,19,20><color=0xfffcf157>Сикнол:<color=0xffffffff>\\nНайдите вход в Логово Зверя и избавьтесь в нем от демонов и их босса.");
	elseif( id == 30607)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30607,"<Font=arial,0,19,20><color=0xfffcf157>Сикнол:<color=0xffffffff>\\nНайдите вход в Логово Зверя и избавьтесь в нем от демонов и их босса.");
	elseif( id == 30608)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30608,"<Font=arial,0,19,20><color=0xfffcf157>Сикнол:<color=0xffffffff>\\nНайдите вход в Логово Зверя и избавьтесь в нем от демонов и их босса.");
	elseif( id == 30609)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30609,"<Font=arial,0,19,20><color=0xfffcf157>Сикнол:<color=0xffffffff>\\nНайдите вход в Логово Зверя и избавьтесь в нем от демонов и их босса.");
	elseif( id == 30610)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30610,"<Font=arial,0,19,20><color=0xfffcf157>Сикнол:<color=0xffffffff>\\nНайдите вход в Логово Зверя и избавьтесь в нем от демонов и их босса.");
	elseif( id == 30611)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30611,"<Font=arial,0,19,20><color=0xfffcf157>Сикнол:<color=0xffffffff>\\nНайдите вход в Логово Зверя и избавьтесь в нем от демонов и их босса.");
	elseif( id == 30612)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30612,"<Font=arial,0,19,20><color=0xfffcf157>Сикнол:<color=0xffffffff>\\nНайдите вход в Логово Зверя и избавьтесь в нем от демонов и их босса.");
	elseif( id == 30613)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30613,"<Font=arial,0,19,20><color=0xfffcf157>Сикнол:<color=0xffffffff>\\nНайдите вход в Логово Зверя и избавьтесь в нем от демонов и их босса.");
	elseif( id == 30614)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30614,"<Font=arial,0,19,20><color=0xfffcf157>Сикнол:<color=0xffffffff>\\nНайдите вход в Логово Зверя и избавьтесь в нем от демонов и их босса.");
	elseif( id == 30615)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30615,"<Font=arial,0,19,20><color=0xfffcf157>Сикнол:<color=0xffffffff>\\nУчитель Сентигоста приходит в Тарио каждый вечер, чтобы дать вам шанс испытать себя в настоящем бою! Я знаю, что вы уже проверили на прочность прислужников дьявола. Все в ваших руках!");
	elseif( id == 30616)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30616,"<Font=arial,0,19,20><color=0xfffcf157>Сикнол:<color=0xffffffff>\\nУчитель Сентигоста приходит в Тарио каждый вечер, чтобы дать вам шанс испытать себя в настоящем бою! Я знаю, что вы уже проверили на прочность прислужников дьявола. Все в ваших руках!");
	elseif( id == 30617)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30617,"<Font=arial,0,19,20><color=0xfffcf157>Сикнол:<color=0xffffffff>\\nУчитель Сентигоста приходит в Тарио каждый вечер, чтобы дать вам шанс испытать себя в настоящем бою! Я знаю, что вы уже проверили на прочность прислужников дьявола. Все в ваших руках!");
	elseif( id == 30618)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30618,"<Font=arial,0,19,20><color=0xfffcf157>Сикнол:<color=0xffffffff>\\nУчитель Сентигоста приходит в Тарио каждый вечер, чтобы дать вам шанс испытать себя в настоящем бою! Я знаю, что вы уже проверили на прочность прислужников дьявола. Все в ваших руках!");
	elseif( id == 30619)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30619,"<Font=arial,0,19,20><color=0xfffcf157>Сикнол:<color=0xffffffff>\\nУчитель Сентигоста приходит в Тарио каждый вечер, чтобы дать вам шанс испытать себя в настоящем бою! Я знаю, что вы уже проверили на прочность прислужников дьявола. Все в ваших руках!");
	elseif( id == 30620)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30620,"<Font=arial,0,19,20><color=0xfffcf157>Сикнол:<color=0xffffffff>\\nУчитель Сентигоста приходит в Тарио каждый вечер, чтобы дать вам шанс испытать себя в настоящем бою! Я знаю, что вы уже проверили на прочность прислужников дьявола. Все в ваших руках!");
	elseif( id == 30621)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30621,"<Font=arial,0,19,20><color=0xfffcf157>Сикнол:<color=0xffffffff>\\nУчитель Сентигоста приходит в Тарио каждый вечер, чтобы дать вам шанс испытать себя в настоящем бою! Я знаю, что вы уже проверили на прочность прислужников дьявола. Все в ваших руках!");
	elseif( id == 30622)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30622,"<Font=arial,0,19,20><color=0xfffcf157>Сикнол:<color=0xffffffff>\\nУчитель Сентигоста приходит в Тарио каждый вечер, чтобы дать вам шанс испытать себя в настоящем бою! Я знаю, что вы уже проверили на прочность прислужников дьявола. Все в ваших руках!");
	elseif( id == 30623)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30623,"<Font=arial,0,19,20><color=0xfffcf157>Сикнол:<color=0xffffffff>\\nУчитель Сентигоста приходит в Тарио каждый вечер, чтобы дать вам шанс испытать себя в настоящем бою! Я знаю, что вы уже проверили на прочность прислужников дьявола. Все в ваших руках!");
	elseif( id == 30624)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30624,"<Font=arial,0,19,20><color=0xfffcf157>Сикнол:<color=0xffffffff>\\nУчитель Сентигоста приходит в Тарио каждый вечер, чтобы дать вам шанс испытать себя в настоящем бою! Я знаю, что вы уже проверили на прочность прислужников дьявола. Все в ваших руках!");
	elseif( id == 30625)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30625,"<Font=arial,0,19,20><color=0xfffcf157>Сикнол:<color=0xffffffff>\\nУчитель Сентигоста приходит в Тарио каждый вечер, чтобы дать вам шанс испытать себя в настоящем бою! Я знаю, что вы уже проверили на прочность прислужников дьявола. Все в ваших руках!");
	elseif( id == 30626)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30626,"<Font=arial,0,19,20><color=0xfffcf157>Сикнол:<color=0xffffffff>\\nУчитель Сентигоста приходит в Тарио каждый вечер, чтобы дать вам шанс испытать себя в настоящем бою! Я знаю, что вы уже проверили на прочность прислужников дьявола. Все в ваших руках!");
	elseif( id == 30627)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30627,"<Font=arial,0,19,20><color=0xfffcf157>Сикнол:<color=0xffffffff>\\nДемоны постоянно вмешиваются в мирную жизнь людей и богов. Они хорошо организованы и подготовлены к вторжениям. Кому-то нужно защищать от них землю, но нельзя делать это в одиночку. Если вы собрались биться с демонами, зовите своих боевых товарищей и отправляейтесь в путь вместе.");
	elseif( id == 30628)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30628,"<Font=arial,0,19,20><color=0xfffcf157>Сикнол:<color=0xffffffff>\\nДемоны постоянно вмешиваются в мирную жизнь людей и богов. Они хорошо организованы и подготовлены к вторжениям. Кому-то нужно защищать от них землю, но нельзя делать это в одиночку. Если вы собрались биться с демонами, зовите своих боевых товарищей и отправляейтесь в путь вместе.");
	elseif( id == 30629)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30629,"<Font=arial,0,19,20><color=0xfffcf157>Сикнол:<color=0xffffffff>\\nДемоны постоянно вмешиваются в мирную жизнь людей и богов. Они хорошо организованы и подготовлены к вторжениям. Кому-то нужно защищать от них землю, но нельзя делать это в одиночку. Если вы собрались биться с демонами, зовите своих боевых товарищей и отправляейтесь в путь вместе.");
	elseif( id == 30630)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30630,"<Font=arial,0,19,20><color=0xfffcf157>Сикнол:<color=0xffffffff>\\nДемоны постоянно вмешиваются в мирную жизнь людей и богов. Они хорошо организованы и подготовлены к вторжениям. Кому-то нужно защищать от них землю, но нельзя делать это в одиночку. Если вы собрались биться с демонами, зовите своих боевых товарищей и отправляейтесь в путь вместе.");
	elseif( id == 30631)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30631,"<Font=arial,0,19,20><color=0xfffcf157>Сикнол:<color=0xffffffff>\\nДемоны постоянно вмешиваются в мирную жизнь людей и богов. Они хорошо организованы и подготовлены к вторжениям. Кому-то нужно защищать от них землю, но нельзя делать это в одиночку. Если вы собрались биться с демонами, зовите своих боевых товарищей и отправляейтесь в путь вместе.");
	elseif( id == 30632)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30632,"<Font=arial,0,19,20><color=0xfffcf157>Сикнол:<color=0xffffffff>\\nДемоны постоянно вмешиваются в мирную жизнь людей и богов. Они хорошо организованы и подготовлены к вторжениям. Кому-то нужно защищать от них землю, но нельзя делать это в одиночку. Если вы собрались биться с демонами, зовите своих боевых товарищей и отправляейтесь в путь вместе.");
	elseif( id == 30633)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30633,"<Font=arial,0,19,20><color=0xfffcf157>Сикнол:<color=0xffffffff>\\nДемоны постоянно вмешиваются в мирную жизнь людей и богов. Они хорошо организованы и подготовлены к вторжениям. Кому-то нужно защищать от них землю, но нельзя делать это в одиночку. Если вы собрались биться с демонами, зовите своих боевых товарищей и отправляейтесь в путь вместе.");
	elseif( id == 30634)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30634,"<Font=arial,0,19,20><color=0xfffcf157>Сикнол:<color=0xffffffff>\\nДемоны постоянно вмешиваются в мирную жизнь людей и богов. Они хорошо организованы и подготовлены к вторжениям. Кому-то нужно защищать от них землю, но нельзя делать это в одиночку. Если вы собрались биться с демонами, зовите своих боевых товарищей и отправляейтесь в путь вместе.");
	elseif( id == 30635)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30635,"<Font=arial,0,19,20><color=0xfffcf157>Сикнол:<color=0xffffffff>\\nДемоны постоянно вмешиваются в мирную жизнь людей и богов. Они хорошо организованы и подготовлены к вторжениям. Кому-то нужно защищать от них землю, но нельзя делать это в одиночку. Если вы собрались биться с демонами, зовите своих боевых товарищей и отправляейтесь в путь вместе.");
	elseif( id == 30636)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30636,"<Font=arial,0,19,20><color=0xfffcf157>Сикнол:<color=0xffffffff>\\nДемоны постоянно вмешиваются в мирную жизнь людей и богов. Они хорошо организованы и подготовлены к вторжениям. Кому-то нужно защищать от них землю, но нельзя делать это в одиночку. Если вы собрались биться с демонами, зовите своих боевых товарищей и отправляейтесь в путь вместе.");
	elseif( id == 30637)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30637,"<Font=arial,0,19,20><color=0xfffcf157>Сикнол:<color=0xffffffff>\\nДемоны постоянно вмешиваются в мирную жизнь людей и богов. Они хорошо организованы и подготовлены к вторжениям. Кому-то нужно защищать от них землю, но нельзя делать это в одиночку. Если вы собрались биться с демонами, зовите своих боевых товарищей и отправляейтесь в путь вместе.");
	elseif( id == 30638)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30638,"<Font=arial,0,19,20><color=0xfffcf157>Сикнол:<color=0xffffffff>\\nДемоны постоянно вмешиваются в мирную жизнь людей и богов. Они хорошо организованы и подготовлены к вторжениям. Кому-то нужно защищать от них землю, но нельзя делать это в одиночку. Если вы собрались биться с демонами, зовите своих боевых товарищей и отправляейтесь в путь вместе.");
	elseif( id == 30639)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30639,"<Font=arial,0,19,20><color=0xfffcf157>Сикнол:<color=0xffffffff>\\nДемоны постоянно вмешиваются в мирную жизнь людей и богов. Они хорошо организованы и подготовлены к вторжениям. Кому-то нужно защищать от них землю, но нельзя делать это в одиночку. Если вы собрались биться с демонами, зовите своих боевых товарищей и отправляейтесь в путь вместе.");
	elseif( id == 30640)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30640,"<Font=arial,0,19,20><color=0xfffcf157>Сикнол:<color=0xffffffff>\\nДемоны постоянно вмешиваются в мирную жизнь людей и богов. Они хорошо организованы и подготовлены к вторжениям. Кому-то нужно защищать от них землю, но нельзя делать это в одиночку. Если вы собрались биться с демонами, зовите своих боевых товарищей и отправляейтесь в путь вместе.");
	elseif( id == 30641)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30641,"<Font=arial,0,19,20><color=0xfffcf157>Сикнол:<color=0xffffffff>\\nДемоны постоянно вмешиваются в мирную жизнь людей и богов. Они хорошо организованы и подготовлены к вторжениям. Кому-то нужно защищать от них землю, но нельзя делать это в одиночку. Если вы собрались биться с демонами, зовите своих боевых товарищей и отправляейтесь в путь вместе.");
	elseif( id == 30642)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30642,"<Font=arial,0,19,20><color=0xfffcf157>Сикнол:<color=0xffffffff>\\nДемоны постоянно вмешиваются в мирную жизнь людей и богов. Они хорошо организованы и подготовлены к вторжениям. Кому-то нужно защищать от них землю, но нельзя делать это в одиночку. Если вы собрались биться с демонами, зовите своих боевых товарищей и отправляейтесь в путь вместе.");
	elseif( id == 30643)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30643,"<Font=arial,0,19,20><color=0xfffcf157>Сикнол:<color=0xffffffff>\\nДемоны постоянно вмешиваются в мирную жизнь людей и богов. Они хорошо организованы и подготовлены к вторжениям. Кому-то нужно защищать от них землю, но нельзя делать это в одиночку. Если вы собрались биться с демонами, зовите своих боевых товарищей и отправляейтесь в путь вместе.");
	elseif( id == 30820)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30820,"Давным-давно Хедилус был одним из верховных архангелов, охраняющих землю от демонов. К несчастью, иногда самые сильные падают первыми. Однажды Хедилус проводил зачистку демонического логова, во время чего выжил только один чёрт по имени Малис. Он был настолько мал и слаб, что Хедилус его не заметил. Чёрт превратился в брошь, которую подобрал великий архангел. Малис начал нашептывать ему на ухо по ночам безумные вещи, и через некоторое время Хедилус сошел с ума, и уничтожил весь свой орден.");
    elseif( id == 30821)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30821,"Во время одной из атак демонов на наш мир, Марсу удалось при помощи магии отрезать архидемона от основных сил атакующих и запереть в Южных Топях. Если бы он этого не сделал, Теос уже был бы уничтожен. Мы смогли справиться с демонами, но Ситтл оказался слишком силен. Кто знает, быть может вы станете тем самым героем, который поможет нам от него избавиться? Иначе рано или поздно он вырвется!");
    elseif( id == 30822)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30822,"Легенды гласят, что древние боги были мудры и не делали неверных решений. Хотелось бы верить, конечно, но я видел слишком много слишком неверных решений от них. Понятия не имею, чем они руководствовались, назначая Халла Хранителем природы, он явно не подходил, потому как ненавидел природу. Сначала он пытался выполнять свои обязанности, но со временем начал отлынивать, а потом и откровенно издеваться над природой. Этому нужно положить конец!");
	elseif( id == 30823)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30823,"Когда архангел становится на путь зла, это терпимо. Даже когда злым становится Хранитель природы, это тоже не так уж и страшно. Но когда на сторону демонов переходит бог, начавший применять свои силы во имя зла...что мы можем с этим сделать? Амен подвёл нас всех, и множество героев сложили свои головы, пытаясь его победить. Кто знает, возможно это удастся вам? Я не говорю, что это будет просто, но другого выхода у нас нет, кто-то должен остановить обезумевшее божество.");
	elseif( id == 30824)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30824,"Древние боги оставили мне Силу оракула, с ней герой становится практически непобедимым. Она достанется только самому сильному и чистому сердцем воину. Сможете ли вы доказать свое право владеть Силой оракула? Для этого, уничтожьте четырех великих монстров, угрожающих этому миру.");
	end
end



local function OnCompleteQuestTalk(id,step)
	if( id == 30601)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30601,"<Font=arial,0,19,20><color=0xfffcf157>Сикнол:<color=0xffffffff>\\nЛогово Зверя откроется в следующий раз. Подготовьтесь!");
	elseif( id == 30602)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30602,"<Font=arial,0,19,20><color=0xfffcf157>Сикнол:<color=0xffffffff>\\nЛогово Зверя откроется в следующий раз. Подготовьтесь!");
	elseif( id == 30603)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30603,"<Font=arial,0,19,20><color=0xfffcf157>Сикнол:<color=0xffffffff>\\nЛогово Зверя откроется в следующий раз. Подготовьтесь!");
	elseif( id == 30604)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30604,"<Font=arial,0,19,20><color=0xfffcf157>Сикнол:<color=0xffffffff>\\nЛогово Зверя откроется в следующий раз. Подготовьтесь!");
	elseif( id == 30605)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30605,"<Font=arial,0,19,20><color=0xfffcf157>Сикнол:<color=0xffffffff>\\nЛогово Зверя откроется в следующий раз. Подготовьтесь!");
	elseif( id == 30606)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30606,"<Font=arial,0,19,20><color=0xfffcf157>Сикнол:<color=0xffffffff>\\nЛогово Зверя откроется в следующий раз. Подготовьтесь!");
	elseif( id == 30607)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30607,"<Font=arial,0,19,20><color=0xfffcf157>Сикнол:<color=0xffffffff>\\nЛогово Зверя откроется в следующий раз. Подготовьтесь!");
	elseif( id == 30608)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30608,"<Font=arial,0,19,20><color=0xfffcf157>Сикнол:<color=0xffffffff>\\nЛогово Зверя откроется в следующий раз. Подготовьтесь!");
	elseif( id == 30609)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30609,"<Font=arial,0,19,20><color=0xfffcf157>Сикнол:<color=0xffffffff>\\nЛогово Зверя откроется в следующий раз. Подготовьтесь!");
	elseif( id == 30610)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30610,"<Font=arial,0,19,20><color=0xfffcf157>Сикнол:<color=0xffffffff>\\nЛогово Зверя откроется в следующий раз. Подготовьтесь!");
	elseif( id == 30611)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30611,"<Font=arial,0,19,20><color=0xfffcf157>Сикнол:<color=0xffffffff>\\nЛогово Зверя откроется в следующий раз. Подготовьтесь!");
	elseif( id == 30612)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30612,"<Font=arial,0,19,20><color=0xfffcf157>Сикнол:<color=0xffffffff>\\nЛогово Зверя откроется в следующий раз. Подготовьтесь!");
	elseif( id == 30613)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30613,"<Font=arial,0,19,20><color=0xfffcf157>Сикнол:<color=0xffffffff>\\nЛогово Зверя откроется в следующий раз. Подготовьтесь!");
	elseif( id == 30614)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30614,"<Font=arial,0,19,20><color=0xfffcf157>Сикнол:<color=0xffffffff>\\nЛогово Зверя откроется в следующий раз. Подготовьтесь!");
	elseif( id == 30615)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30615,"<Font=arial,0,19,20><color=0xfffcf157>Сикнол:<color=0xffffffff>\\nВы отлично справились. Продолжайте в том же духе!");
	elseif( id == 30616)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30616,"<Font=arial,0,19,20><color=0xfffcf157>Сикнол:<color=0xffffffff>\\nВы отлично справились. Продолжайте в том же духе!");
	elseif( id == 30617)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30617,"<Font=arial,0,19,20><color=0xfffcf157>Сикнол:<color=0xffffffff>\\nВы отлично справились. Продолжайте в том же духе!");
	elseif( id == 30618)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30618,"<Font=arial,0,19,20><color=0xfffcf157>Сикнол:<color=0xffffffff>\\nВы отлично справились. Продолжайте в том же духе!");
	elseif( id == 30619)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30619,"<Font=arial,0,19,20><color=0xfffcf157>Сикнол:<color=0xffffffff>\\nВы отлично справились. Продолжайте в том же духе!");
	elseif( id == 30620)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30620,"<Font=arial,0,19,20><color=0xfffcf157>Сикнол:<color=0xffffffff>\\nВы отлично справились. Продолжайте в том же духе!");
	elseif( id == 30621)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30621,"<Font=arial,0,19,20><color=0xfffcf157>Сикнол:<color=0xffffffff>\\nВы отлично справились. Продолжайте в том же духе!");
	elseif( id == 30622)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30622,"<Font=arial,0,19,20><color=0xfffcf157>Сикнол:<color=0xffffffff>\\nВы отлично справились. Продолжайте в том же духе!");
	elseif( id == 30623)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30623,"<Font=arial,0,19,20><color=0xfffcf157>Сикнол:<color=0xffffffff>\\nВы отлично справились. Продолжайте в том же духе!");
	elseif( id == 30624)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30624,"<Font=arial,0,19,20><color=0xfffcf157>Сикнол:<color=0xffffffff>\\nВы отлично справились. Продолжайте в том же духе!");
	elseif( id == 30625)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30625,"<Font=arial,0,19,20><color=0xfffcf157>Сикнол:<color=0xffffffff>\\nВы отлично справились. Продолжайте в том же духе!");
	elseif( id == 30626)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30626,"<Font=arial,0,19,20><color=0xfffcf157>Сикнол:<color=0xffffffff>\\nВы отлично справились. Продолжайте в том же духе!");
	elseif( id == 30627)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30627,"<Font=arial,0,19,20><color=0xfffcf157>Сикнол:<color=0xffffffff>\\nВторжение было остановлено, но демоны еще вернутся! Готовьтесь к новым испытаниям!");
	elseif( id == 30628)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30628,"<Font=arial,0,19,20><color=0xfffcf157>Сикнол:<color=0xffffffff>\\nВторжение было остановлено, но демоны еще вернутся! Готовьтесь к новым испытаниям!");
	elseif( id == 30629)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30629,"<Font=arial,0,19,20><color=0xfffcf157>Сикнол:<color=0xffffffff>\\nВторжение было остановлено, но демоны еще вернутся! Готовьтесь к новым испытаниям!");
	elseif( id == 30630)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30630,"<Font=arial,0,19,20><color=0xfffcf157>Сикнол:<color=0xffffffff>\\nВторжение было остановлено, но демоны еще вернутся! Готовьтесь к новым испытаниям!");
	elseif( id == 30631)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30631,"<Font=arial,0,19,20><color=0xfffcf157>Сикнол:<color=0xffffffff>\\nВторжение было остановлено, но демоны еще вернутся! Готовьтесь к новым испытаниям!");
	elseif( id == 30632)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30632,"<Font=arial,0,19,20><color=0xfffcf157>Сикнол:<color=0xffffffff>\\nВторжение было остановлено, но демоны еще вернутся! Готовьтесь к новым испытаниям!");
	elseif( id == 30633)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30633,"<Font=arial,0,19,20><color=0xfffcf157>Сикнол:<color=0xffffffff>\\nВторжение было остановлено, но демоны еще вернутся! Готовьтесь к новым испытаниям!");
	elseif( id == 30634)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30634,"<Font=arial,0,19,20><color=0xfffcf157>Сикнол:<color=0xffffffff>\\nВторжение было остановлено, но демоны еще вернутся! Готовьтесь к новым испытаниям!");
	elseif( id == 30635)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30635,"<Font=arial,0,19,20><color=0xfffcf157>Сикнол:<color=0xffffffff>\\nВторжение было остановлено, но демоны еще вернутся! Готовьтесь к новым испытаниям!");
	elseif( id == 30636)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30636,"<Font=arial,0,19,20><color=0xfffcf157>Сикнол:<color=0xffffffff>\\nВторжение было остановлено, но демоны еще вернутся! Готовьтесь к новым испытаниям!");
	elseif( id == 30637)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30637,"<Font=arial,0,19,20><color=0xfffcf157>Сикнол:<color=0xffffffff>\\nВторжение было остановлено, но демоны еще вернутся! Готовьтесь к новым испытаниям!");
	elseif( id == 30638)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30638,"<Font=arial,0,19,20><color=0xfffcf157>Сикнол:<color=0xffffffff>\\nВторжение было остановлено, но демоны еще вернутся! Готовьтесь к новым испытаниям!");
	elseif( id == 30639)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30639,"<Font=arial,0,19,20><color=0xfffcf157>Сикнол:<color=0xffffffff>\\nВторжение было остановлено, но демоны еще вернутся! Готовьтесь к новым испытаниям!");
	elseif( id == 30640)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30640,"<Font=arial,0,19,20><color=0xfffcf157>Сикнол:<color=0xffffffff>\\nВторжение было остановлено, но демоны еще вернутся! Готовьтесь к новым испытаниям!");
	elseif( id == 30641)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30641,"<Font=arial,0,19,20><color=0xfffcf157>Сикнол:<color=0xffffffff>\\nВторжение было остановлено, но демоны еще вернутся! Готовьтесь к новым испытаниям!");
	elseif( id == 30642)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30642,"<Font=arial,0,19,20><color=0xfffcf157>Сикнол:<color=0xffffffff>\\nВторжение было остановлено, но демоны еще вернутся! Готовьтесь к новым испытаниям!");
	elseif( id == 30643)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30643,"<Font=arial,0,19,20><color=0xfffcf157>Сикнол:<color=0xffffffff>\\nВторжение было остановлено, но демоны еще вернутся! Готовьтесь к новым испытаниям!");
	elseif( id == 30820)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30820,"Наконец-то безумная душа Хедилуса смогла обрести покой!");
    elseif( id == 30821)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30821,"Отлично, могучий архидемон побежден!");
	elseif( id == 30822)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30822,"Я думаю, намного лучше не иметь Хранителя Природы, чем иметь такого, который стремится природу уничтожить.");
	elseif( id == 30823)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30823,"Амен побежден? Я думал, что это невозможно, вы действительно великий герой!");
	elseif( id == 30824)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30824,"Вы великий герой, который достоин владеть этой силой!");
	end

end

Rtianjieshuoming = {}
Rtianjieshuoming["OnTalk"] = OnTalk
Rtianjieshuoming["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rtianjieshuoming["OnCompleteQuestTalk"] = OnCompleteQuestTalk
Rtianjieshuoming["OnScenarioTalk"] = OnScenarioTalk
