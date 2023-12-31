local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5010081);
	Quest.SetCompleteOptions(5010081);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Мастер ремесел Эврика:<color=0xffffffff><Font=arial,0,17,20>\\nНажмите кнопку <C>C</C> и откройте окно параметров. Вы увидите пункт меню <T>Энергия</T>. Энергия расходуется при использовании производственных навыков.");
end

local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
	if( id == 40015)then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(40015,"<Font=arial,0,19,20><color=0xfffcf157>Мастер ремесел Эврика:<color=0xffffffff><Font=arial,0,17,20>\\nНажмите кнопку <C>C</C>, чтобы открыть окно параметров своего персонажа. Вы увидите пункт меню <T>Энергия</T>. Энергия расходуется при использовании производственных навыков. Если ваша <T>энергия израсходована</T>, производственные навыки недоступны. Максимум энергии будет увеличиваться с каждым поднятым уровнем.\\nВы хотите узнать, как восстанавливать утраченную энергию? Для начала идите к <D>Коробейнику</D> и купите <C>1</C> <I>бланк рецепта</I>, а затем возвращайтесь ко мне. Я расскажу, что делать дальше.");
	elseif( id == 40016)then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(40016,"<Font=arial,0,19,20><color=0xfffcf157>Мастер ремесел Эврика:<color=0xffffffff><Font=arial,0,17,20>\\nТеперь я расскажу, что такое <I>рецепт</I>. Чтобы применить свои производственные навыки, найдите в списке нужный <T>рецепт</T>, по которому можно сделать предмет <T>оружия</T>, <T>доспехов</T> и <T>аксессуаров</T>. Теперь создайте <C>1</C> <I>рецепт доспеха [уровень 20]</I>, а затем возвращайтесь ко мне, и я расскажу, что делать дальше.\\n\\n<T>Для создания рецепта доспеха необходимо использовать навык портняжного дела, выбрав соответствующую формулу.</T>");
	elseif( id == 40017)then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(40017,"<Font=arial,0,19,20><color=0xfffcf157>Мастер ремесел Эврика:<color=0xffffffff><Font=arial,0,17,20>\\nС хорошо развитыми производственными навыками вы можете создавать много полезных предметов снаряжения. Несмотря на это многие игроки предпочитают не развивать их и не умеют самостоятельно производить для себя оружие и доспехи. Они предпочитают обращаться за готовым снаряжением к <D>кузнецу Веланду</D>. Но и в некоторых случаях даже при использовании производственных навыков и <I>рецептов</I> необходимо будет обратиться к кузнецу.\\nТеперь найдите <D>кузнеца Веланда</D> и с помощью своего <I>рецепта доспеха [уровень 20]</I> создайте <C>1</C> <I>крепкое облачение пламени</I>. Затем возвращайтесь ко мне.");
	elseif( id == 40191 or id == 40202 or id == 40208)then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(id,"<Font=arial,0,19,20><color=0xfffcf157>Мастер ремесел Эврика:<color=0xffffffff><Font=arial,0,17,20>\\nПриветствую вас! Меня зовут Эврика, я здешний учитель ремесленных навыков, и не смотрите на меня с таким удивлением. Я девушка, но о ремесле я знаю всё. А можете ли вы похвастаться тем же? К празднику трудящихся Король Марс велел мне наградить самых опытных и трудолюбивых мастеров своего дела. Что ж, давайте-ка проверим ваши знания.");
	elseif( id == 40192 or id == 40203 or id == 40209)then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(id,"<Font=arial,0,19,20><color=0xfffcf157>Мастер ремесел Эврика:<color=0xffffffff><Font=arial,0,17,20>\\nЭто снова вы! Я рада, что вы вернулись. Руду копать вы умеете, а знаете ли вы из чего создаются наилучшие наряды? Местные кутюрье могут удивить даже самых искушенных стиляг и модниц. Удивите же и вы меня...");
	elseif( id == 40193 or id == 40204 or id == 40210)then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(id,"<Font=arial,0,19,20><color=0xfffcf157>Мастер ремесел Эврика:<color=0xffffffff><Font=arial,0,17,20>\\nГоворят, самым ценным даром обладают кузнецы, ведь они могут повышать мощь экипировки героев, превращая простые доспехи в облачение, наделённое духовной энергией. Вы наверняка сталкивались с кузнечным делом, испытывая сладость удачи и горечь невезения. Если вам действительно близка эта тема, у вас найдётся несколько ингредиентов, необходимых для усиления.");
	elseif( id == 40194 or id == 40205 or id == 40211)then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(id,"<Font=arial,0,19,20><color=0xfffcf157>Мастер ремесел Эврика:<color=0xffffffff><Font=arial,0,17,20>\\nВы когда нибудь пробовали себя в качестве повара? Сходите в Землю эльфов, там вы сможете не только научиться готовить вкусные блюда, но и создать собственный сад. Я даже попробую ваше творение, если у вас есть талант в кулинарном искусстве, то мне нечего бояться. Верно же?");
	elseif( id == 40195 or id == 40206 or id == 40212)then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(id,"<Font=arial,0,19,20><color=0xfffcf157>Мастер ремесел Эврика:<color=0xffffffff><Font=arial,0,17,20>\\nЮвелиром может стать не каждый, ведь эта работа требует от мастера немалую усидчивость и терпение. А вы работали когда нибудь с драгоценными камнями?");
	elseif( id == 40196 or id == 40207 or id == 40213)then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(id,"<Font=arial,0,19,20><color=0xfffcf157>Мастер ремесел Эврика:<color=0xffffffff><Font=arial,0,17,20>\\nВы ознакомлены с различными ремёслами, но достаточно ли у вас опыта для работы с качественным снаряжением? Знаете ли вы, где можно получить редкие минералы для создания экипировки? Сейчас мы это проверим.");
	end
end

local function OnCompleteQuestTalk(id,step)
	if( id == 40015)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(40015,"<Font=arial,0,19,20><color=0xfffcf157>Мастер ремесел Эврика:<color=0xffffffff><Font=arial,0,17,20>\\n<T>Энергия</T> будет постепенно восстанавливаться на <A>3</A> единицы в минуту. При полностью израсходованной энергии нужно некоторое время не использовать производственные навыки или выпить <I>зелье энергии</I>.");
	elseif( id == 40016)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(40016,"<Font=arial,0,19,20><color=0xfffcf157>Мастер ремесел Эврика:<color=0xffffffff><Font=arial,0,17,20>\\nПомните, что создание рецептов может также увеличивать ваше <T>мастерство</T>, и за это тоже придется отдать часть <C>энергии</C>.");
	elseif( id == 40017)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(40017,"<Font=arial,0,19,20><color=0xfffcf157>Мастер ремесел Эврика:<color=0xffffffff><Font=arial,0,17,20>\\nОчень хорошо! На этом пока все. Удачи!");
	elseif( id == 40191 or id == 40202 or id == 40208)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(id,"<Font=arial,0,19,20><color=0xfffcf157>Мастер ремесел Эврика:<color=0xffffffff><Font=arial,0,17,20>\\nХорошая работа! Эти посохи так похожи, отличия в их мощи почти незаметны. Я вижу, что основные навыки вам знакомы, но это ещё не всё. Опытный мастер всегда открыт для новых знаний и способностей. Забирайте свою награду и возвращайтесь поскорее за новым заданием.");
	elseif( id == 40192 or id == 40203 or id == 40209)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(id,"<Font=arial,0,19,20><color=0xfffcf157>Мастер ремесел Эврика:<color=0xffffffff><Font=arial,0,17,20>\\nНеплохо, я не думала, что вы столь многогранны. Вы заслужили награду. Только не забывайте обо мне так быстро, у меня есть ещё несколько поручений для вас.");
	elseif( id == 40193 or id == 40204 or id == 40210)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(id,"<Font=arial,0,19,20><color=0xfffcf157>Мастер ремесел Эврика:<color=0xffffffff><Font=arial,0,17,20>\\nВы справились. Каждый путешественник использует эти материалы. Припоминаю своё первое оружие - артефакт, излучающий небесный свет, свет самой чистой синевы... Довольно воспоминаний, я вас, наверное, совсем заговорила. Не забудьте забрать награду!");
	elseif( id == 40194 or id == 40205 or id == 40211)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(id,"<Font=arial,0,19,20><color=0xfffcf157>Мастер ремесел Эврика:<color=0xffffffff><Font=arial,0,17,20>\\nВкуснотища! Я и подумать не могла, что в вас кроется такой потенциал. Вы настоящий мастер кулинарии. Но не время отдыхать, у меня есть ещё парочка серьёзных испытаний для вас.");
	elseif( id == 40195 or id == 40206 or id == 40212)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(id,"<Font=arial,0,19,20><color=0xfffcf157>Мастер ремесел Эврика:<color=0xffffffff><Font=arial,0,17,20>\\nЛомать - не строить. Разборка драгоценный камней всё же не является самой утонченной работой, но вы выполнили моё поручение, не могу жаловаться на столь искусного кулинара. Получите заслуженную награду и приступайте к последнему испытанию.");
	elseif( id == 40196 or id == 40207 or id == 40213)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(id,"<Font=arial,0,19,20><color=0xfffcf157>Мастер ремесел Эврика:<color=0xffffffff><Font=arial,0,17,20>\\nПоздравляю вас, мастер! Вы доказали свою мудрость не словом, а делом. Возможно, вы захотите ещё потренировать свои умения. Приходите ко мне завтра.");
	end
end

Ryilian = {}
Ryilian["OnTalk"] = OnTalk
Ryilian["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Ryilian["OnCompleteQuestTalk"] = OnCompleteQuestTalk