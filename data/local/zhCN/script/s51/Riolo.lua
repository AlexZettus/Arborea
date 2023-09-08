local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5800075);
	Quest.SetCompleteOptions(5800075);

	if (Quest.QuestCanComplete(40052) and (not Quest.QuestIsCompleted(40052))) then
		Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Эйол:<color=0xffffffff>\\nПервое: число ваших растений не может быть выше уровня вашего навыка земледелия.  \\nВы не можете сажать растения, если их число равно уровню вашего навыка земледелия. Трудитесь усердно и повышайте уровень своего навыка земледелия!  \\nВторое: после сбора урожая вам нужно подождать 15 минут, прежде чем вы сможете сажать растения на одном и том же участке.  \\nВы можете ждать это время или найти другой участок для посадки.  \\nТретье: Подарок Рафейны - фонтан любви !  \\nПоскольку Рафейна - богиня, она обладает невероятной жизненной силой. Ее подарок поможет вашим посадкам расти быстрее.  \\nЧетвертое: вы можете собирать урожай, выращенный другими игроками!  \\nВы можете сорвать плоды тех игроков, которые не успели это сделать вовремя. Пусть вас не терзают муки совести - растяпы сами виноваты, нужно быть расторопнее! Можно сорвать чужой плод только с одной посадки. \\nПятое: плоды портятся!  \\nПлод испортится, когда переспеет, даже если это растение эльфа. Пожалуйста, собирайте плоды вовремя! Они испортятся и исчезнут через час после созревания.   \\nШестое: быстрее повышайте уровень навыка земледелия.  \\nВы хотите увеличить уровень навыка земледелия так, чтобы он позволял вам выращивать лучшие культуры? Дайте мне за это несколько вещей! Соберите как можно больше эльфийских фонтанов и, поливая растения своих друзей с помощью эльфийского фонтана, вы получите необходимый опыт для развития навыка земледелия!");
	else
		Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Эйол:<color=0xffffffff>\\nВы можете сажать растения на моей земле. Я разрешаю!");
	end
	
end

local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
        if( id == 40052)then
               if( step == QuestTalkBegin )then
					Quest.ClearNPCTalkOptions();
					Quest.SetNPCTalkOption(EOT_AcceptQuestTalk,40052,QuestTalkBegin+1,"Содержание" );
					Quest.SetNPCTalkOption(EOT_AcceptQuestTalk,40052,QuestTalkBegin+2,"Выход" );
					Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Эйол:<color=0xffffffff>\\nПозвольте мне рассказать вам об Земле Эльфов.");
				elseif( step == QuestTalkBegin+2 )then
					Quest.CloseNPCTalk();
				elseif( step == QuestTalkBegin+1 )then
					Quest.ClearNPCTalkOptions();
					Quest.SetNPCTalkOption(EOT_AcceptQuestTalk,40052,QuestTalkBegin+3,"Я уже знаю об этом" );
					Quest.SetNPCTalkOption(EOT_AcceptQuestTalk,40052,QuestTalkBegin+4,"Слушайте внимательно, рассказываю еще раз");
					Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Первое: число ваших растений не может быть выше уровня вашего навыка земледелия!<color=0xffffffff>\\nВы не можете сажать растения, если их число равно уровню вашего навыка земледелия. Трудитесь усердно и повышайте уровень своего навыка земледелия!");
				elseif( step == QuestTalkBegin+3 )then
					Quest.ClearNPCTalkOptions();
					Quest.SetNPCTalkOption(EOT_AcceptQuestTalk,40052,QuestTalkBegin+5,"Я уже знаю об этом" );
					Quest.SetNPCTalkOption(EOT_AcceptQuestTalk,40052,QuestTalkBegin+6,"Слушайте внимательно, рассказываю еще раз");
					Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Второе: после сбора урожая вам нужно подождать 15 минут, прежде чем вы сможете сажать растения на одном и том же участке!<color=0xffffffff>\\nВы можете ждать эти 15 минут или найти другой участок для посадки.");
				elseif( step == QuestTalkBegin+5 )then
					Quest.ClearNPCTalkOptions();
					Quest.SetNPCTalkOption(EOT_AcceptQuestTalk,40052,QuestTalkBegin+7,"Я уже знаю об этом" );
					Quest.SetNPCTalkOption(EOT_AcceptQuestTalk,40052,QuestTalkBegin+8,"Слушайте внимательно, рассказываю еще раз");
					Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Третье: Подарок Рафейны - фонтан любви!<color=0xffffffff>\\nПоскольку Рафейна - богиня, она обладает невероятной жизненной силой. Ее подарок поможет вашим посадкам расти быстрее.");
				elseif( step == QuestTalkBegin+7 )then
					Quest.ClearNPCTalkOptions();
					Quest.SetNPCTalkOption(EOT_AcceptQuestTalk,40052,QuestTalkBegin+9,"Я уже знаю об этом" );
					Quest.SetNPCTalkOption(EOT_AcceptQuestTalk,40052,QuestTalkBegin+10,"Слушайте внимательно, рассказываю еще раз" );
					Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Четвертое: собирайте урожай, выращенный не вами!<color=0xffffffff>\\nВы можете сорвать плоды тех игроков, которые не успели это сделать вовремя. Пусть вас не терзают муки совести - растяпы сами виноваты, нужно быть расторопнее! Можно сорвать чужой плод только с одной посадки!");
				elseif( step == QuestTalkBegin+9 )then
					Quest.ClearNPCTalkOptions();
					Quest.SetNPCTalkOption(EOT_AcceptQuestTalk,40052,QuestTalkBegin+11,"Я уже знаю об этом" );
					Quest.SetNPCTalkOption(EOT_AcceptQuestTalk,40052,QuestTalkBegin+12,"Слушайте внимательно, рассказываю еще раз");
					Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Пятое: плоды портятся!<color=0xffffffff>\\nПлод испортится, когда переспеет, даже если это растение эльфа. Пожалуйста, собирайте плоды вовремя! Они исчезнут через час после созревания!");
				elseif( step == QuestTalkBegin+11 )then
					Quest.ClearNPCTalkOptions();
					Quest.SetNPCTalkOption(EOT_AcceptQuestTalk,40052,QuestTalkBegin+13,"Я уже знаю об этом" );
					Quest.SetNPCTalkOption(EOT_AcceptQuestTalk,40052,QuestTalkBegin+14,"Слушайте внимательно, рассказываю еще раз");
					Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Шестое: быстрее увеличивайте уровень навыка земледелия!<color=0xffffffff>\\nВы хотите увеличить уровень навыка земледелия так, чтобы он позволял вам выращивать лучшие культуры? Дайте мне за это несколько вещей! Соберите как можно больше эльфийских фонтанов, и, поливая с их помощью растения своих друзей, вы получите необходимый опыт для развития навыка земледелия!");
				elseif( step == QuestTalkBegin+13 )then
					Quest.CloseNPCTalk();
					Quest.AcceptQuestTalk(40052,"<Font=arial,0,19,20><color=0xfffcf157>Эйол:<color=0xffffffff>\\nТеперь расскажу, как купить семя медоноса. Вам нужно найти повара возле кухонного стола. У него есть это семя.")
		
				end
	elseif( id == 40053)then
		 Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(40053,"<Font=arial,0,19,20><color=0xfffcf157>Эйол:<color=0xffffffff>\\nВозьмите семя медоноса, посадите его на участке и возвращайтесь ко мне. Я расскажу, что делать дальше.");
	elseif( id == 40054)then
		 Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(40054,"<Font=arial,0,19,20><color=0xfffcf157>Эйол:<color=0xffffffff>\\nРастение необходимо поливать, а для этого нужна вода. Найдите колодец, возьмите ведро, наберите воды и полейте растение.");
	elseif( id == 40055)then
		 Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(40055,"<Font=arial,0,19,20><color=0xfffcf157>Эйол:<color=0xffffffff>\\nВы можете воспользоваться фонтаном любви или ждать, пока плод вырастет без него. Но я не уверен, что, например, Фелиция может ждать долго. Принесите мне выращенный вами плод, он необходим для изготовления булочки с джемом.");
	elseif( id == 40056)then
		 Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(40056,"<Font=arial,0,19,20><color=0xfffcf157>Эйол:<color=0xffffffff>\\nТеперь у меня есть самый важный ингредиент. Давайте посмотрим, что еще нам необходимо для изготовления булочки с джемом: 1 фруктовый порошок, 1 джем. Изготавливать его нужно на кухонном столе, а затем в котелке истолочь фруктовый порошок.");
	elseif( id == 52182)then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(52182,"<Font=arial,0,19,20><color=0xfffcf157>Эйол:<color=0xffffffff>\\nСамое время собирать урожай.");
	elseif( id == 52183)then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(52183,"<Font=arial,0,19,20><color=0xfffcf157>Эйол:<color=0xffffffff>\\nСамое время собирать урожай.");
	end
end

--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
	 if( id == 40051)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(40051,"<Font=arial,0,19,20><color=0xfffcf157>Эйол:<color=0xffffffff><Font=arial,0,17,20>\\nФелиция хочет булочку с джемом? Но я слишком занята, чтобы заниматься ей. Давайте я расскажу вам, как ее приготовить?");
        elseif( id == 40052)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(40052,"<Font=arial,0,19,20><color=0xfffcf157>Эйол:<color=0xffffffff><Font=arial,0,17,20>\\nПравильно, теперь посадим его в землю.");
	 elseif( id == 40053)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(40053,"<Font=arial,0,19,20><color=0xfffcf157>Эйол:<color=0xffffffff><Font=arial,0,17,20>\\nХорошо, теперь вам нужно полить его.");
	 elseif( id == 40054)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(40054,"<Font=arial,0,19,20><color=0xfffcf157>Эйол:<color=0xffffffff><Font=arial,0,17,20>\\nПохоже, вы развиваете навык полива. Возьмите фонтан любви, его волшебная вода поможет вашему растению дать плоды быстрее.");
	elseif( id == 40055)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(40055,"<Font=arial,0,19,20><color=0xfffcf157>Эйол:<color=0xffffffff><Font=arial,0,17,20>\\nЗемледелие - это очень интересно, правда? Теперь у нас есть все ингредиенты, можно приступать к изготовлению булочки с джемом.");
	elseif( id == 52182)then
          Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(52182,"<Font=arial,0,19,20><color=0xfffcf157>Эйол:<color=0xffffffff><Font=arial,0,17,20>\\nДержи свою награду.");
	elseif( id == 52183)then
          Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(52183,"<Font=arial,0,19,20><color=0xfffcf157>Эйол:<color=0xffffffff><Font=arial,0,17,20>\\nДержи свою награду.");
	end
end

Riolo = {}
Riolo["OnTalk"] = OnTalk
Riolo["OnScenarioTalk"] = OnScenarioTalk
Riolo["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Riolo["OnCompleteQuestTalk"] = OnCompleteQuestTalk