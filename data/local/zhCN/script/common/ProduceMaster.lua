local function OnTalk()
	Produce.ClearNPCTalkOptions();

	Quest.ClearNPCTalkOptions();                    			
	Quest.SetCompleteOptions(4001055);

	Produce.SetProduceOptions(0, ProduceSkillTalk, "Выучить навык производства ");
	Produce.SetProduceOptions(1, ProduceSkillTalk, "Забыть навык производства");

	if (Quest.QuestIsCompleted(10015)) then
		Quest.SetNPCTalkOption( EOT_ScenarioTalk,0,ScenarioTalkBegin, "Изучить навык производства" );
	end

	Produce.NPCTalk(0,0,"Здесь вы можете выучить разного рода производственные навыки, а также можете забыть уже выученные навыки.");
end

local function OnScenarioTalk(id,step)
	if( step == ScenarioTalkBegin )then
		Quest.ClearNPCTalkOptions();
		Quest.SetNPCTalkOption( EOT_ScenarioTalk,0,ScenarioTalkBegin+1,"Добыча руды и сбор урожая" );
		Quest.SetNPCTalkOption( EOT_ScenarioTalk,0,ScenarioTalkBegin+2,"Плавление и ремесло" );
		Quest.SetNPCTalkOption( EOT_ScenarioTalk,0,ScenarioTalkBegin+3,"Ковка и ремесло" );
		Quest.SetNPCTalkOption( EOT_ScenarioTalk,0,ScenarioTalkBegin+4,"Изготовление брони и портняжное дело" );
		Quest.SetNPCTalkOption( EOT_ScenarioTalk,0,ScenarioTalkBegin+5,"Изготовление капсулы реинкарнации" );
		Quest.SetNPCTalkOption( EOT_ScenarioTalk,0,ScenarioTalkBegin+6,"Разборка" );
		Quest.SetNPCTalkOption( EOT_ScenarioTalk,0,ScenarioTalkBegin+7,"Энергия" );
		Quest.SetNPCTalkOption( EOT_ScenarioTalk,0,ScenarioTalkBegin+8,"Вернуться" );
		Quest.NPCTalk(0,0,"Учитель производства：\\n  Начинающий воин может<color=0xff00a2ff>учить<color=0xffffffff>и<color=0xff00a2ff>забывать<color=0xffffffff>производственные навыки.\\nПроизводственные навыки делятся на<color=0xffff0000>10<color=0xffffffff>виды，среди которых любой может единовременно выбрать<color=0xffff0000>3<color=0xffffffff> навыка. Начинающий воин может подробно ознакомиться со следующими настройками.");
	elseif( step == ScenarioTalkBegin+1 )then
		Quest.NPCTalk(0,0,"<font=arial,0,20,20><color=0xffff00ff>Добыча руды и сбор урожая：<color=0xffffffff><font=arial,0,17,20>\\n\\n<color=0xff00a2ff>Добыча - <color=0xffffffff>это навык, позволяющий  получить<color=0xffff80ff>руду и лечебные травы<color=0xffffffff> <color=0xff00ddfe> <color=0xffffffff> <color=0xff00ddfe> <color=0xffffffff>\\n<color=0xff00a2ff>Сбор урожая - <color=0xffffffff>это навык, позволяющий получить<color=0xffff80ff>пищу и хлопок<color=0xffffffff><color=0xff00ddfe><color=0xffffffff><color=0xff00ddfe><color=0xffffffff>\\nДобытые при помощи навыков добычи и сбора урожая продукты - <color=0xff00a2ff>это сырье, необходимое для других производственных навыков<color=0xffffffff>\\n\\nКаждый раз, когда<color=0xff00a2ff>вы используете производственный навык, вы улучшаете свое мастерство<color=0xffffffff>，<color=0xff00a2ff>когда мастерство достигает максимума, навык начинает повышаться автоматически<color=0xffffffff>\\nЧем выше уровень мастерства, тем выше качество добываемых ресурсов.");
	elseif( step == ScenarioTalkBegin+2 )then
		Quest.NPCTalk(0,0,"<font=arial,0,20,20><color=0xffff00ff>Плавление и ремесло：<color=0xffffffff><font=arial,0,17,20>\\n\\n<color=0xff00a2ff>Плавление - <color=0xffffffff>это навык, позволяющий  <color=0xff00ddfe>обрабатывать<color=0xffffffff>и <color=0xff00ddfe>очищать<color=0xffffffff><color=0xff00a2ff>руду<color=0xffffffff>и<color=0xff00a2ff>лечебные травы<color=0xffffffff>\\n<color=0xff00a2ff>Ремесло - <color=0xffffffff>это навык, позволяющий <color=0xff00ddfe>обрабатывать<color=0xffffffff>и<color=0xff00ddfe>очищать<color=0xffffffff><color=0xff00a2ff>продукты питания<color=0xffffffff>и<color=0xff00a2ff>ткани<color=0xffffffff>\\nПозволяют<color=0xff00a2ff>улучшать качество предметов<color=0xffffffff>，или очищать сырье, превращая его в редкий материал\\n\\n  Каждый раз, когда<color=0xff00a2ff>вы используете производственный навык, вы улучшаете свое мастерство<color=0xffffffff>，<color=0xff00a2ff>когда мастерство достигает максимума, навык начинает повышаться автоматически<color=0xffffffff>\\nЧем выше уровень мастерства, тем больше рецептов производства вы можете выучить");
	elseif( step == ScenarioTalkBegin+3 )then
		Quest.NPCTalk(0,0,"<font=arial,0,20,20><color=0xffff00ff>Ковка и ремесло：<color=0xffffffff><font=arial,0,17,20>\\n\\n<color=0xff00a2ff>Ковка - <color=0xffffffff>это навык, позволяющий изготавливать <color=0xff00ddfe>оружие<color=0xffffffff>и<color=0xff00ddfe>шлифовальные камни<color=0xffffffff>\\n<color=0xff00a2ff>Ремесло - <color=0xffffffff>это навык, позволяющий изготавливать<color=0xff00ddfe>ювелирные украшения<color=0xffffffff>и осуществлять<color=0xff00a2ff>резьбу по камню<color=0xffffffff> <color=0xff00a2ff>и полировку камней<color=0xffffffff>\\nВо время изготовления оружия и ювелирных украшений, чем выше<color=0xff00a2ff>качество используемоего сырья<color=0xffffffff>，тем выше шанс получить<color=0xff00a2ff>предметы высокого качества<color=0xffffffff>\\n\\nКаждый раз,когда вы создаете предметы с использованием этих навыков, вы повышаете уровень мастерства, после того, как уровень вашего мастерства достигнет максимума, уровень навыка будет повышаться автоматически.\\nЧем выше уровень мастерства, тем больше рецептов производства вы можете выучить");
	elseif( step == ScenarioTalkBegin+4 )then
		Quest.NPCTalk(0,0,"<font=arial,0,20,20><color=0xffff00ff>Изготовление брони и портняжное дело：<color=0xffffffff><font=arial,0,17,20>\\n\\n<color=0xff00a2ff>Изготовление брони - <color=0xffffffff>это навык, позволяющий<color=0xff00ddfe>создавать броню<color=0xffffffff>и<color=0xff00ddfe> идентифицировать ее <color=0xffffffff>\\n<color=0xff00a2ff>Портняжное дело - <color=0xffffffff>это навык, позволяющий<color=0xff00ddfe>изготавливать тканевые доспехи<color=0xffffffff>и<color=0xff00ddfe>наряды<color=0xffffffff>\\n  В изготовлении одежды и аксессуаров，чем выше<color=0xff00a2ff>качество используемоего сырья<color=0xffffffff>，тем выше шанс получить<color=0xff00a2ff>предметы высокого качества<color=0xffffffff>\\n\\nКаждый раз,когда вы создаете предметы с использованием этих навыков, вы повышаете уровень мастерства, после того, как уровень вашего мастерства достигнет максимума, уровень навыка будет повышаться автоматически.\\nЧем выше уровень мастерства, тем больше рецептов производства вы можете выучить.");
	elseif( step == ScenarioTalkBegin+5 )then
		Quest.NPCTalk(0,0,"<font=arial,0,20,20><color=0xffff00ff>Изготовление капсулы реинкарнации：<color=0xffffffff><font=arial,0,17,20>\\n\\n<color=0xff00a2ff>Изготовление капсулы реинкарнации - <color=0xffffffff>это навык, позволяющий изготавливать<color=0xff00ddfe>медикаменты<color=0xffffffff>и<color=0xff00ddfe>продукты питания<color=0xffffffff>，в то же время позволяет изготавливать<color=0xff00a2ff>материалы, необходимые для других производственных навыков<color=0xffffffff>\\n\\nКаждый раз, изготавливая различные восстанавливающие средства,вы повышаете уровень мастерства. После того, как уровень вашего мастерства достигнет максимума, уровень навыка будет повышаться автоматически\\nЧем выше уровень мастерства, тем больше рецептов производства вы можете выучить");
	elseif( step == ScenarioTalkBegin+6 )then
		Quest.NPCTalk(0,0,"<font=arial,0,20,20><color=0xffff00ff>Разборка：<color=0xffffffff><font=arial,0,17,20>\\n\\n<color=0xff00a2ff>Разборка - <color=0xffffffff> это навык, позволяющий<color=0xff00a2ff>разобрать снаряжение<color=0xffffffff>\\nРазборка позволяет преобразовывать снаряжение в <color=0xff00a2ff> различную игровую утварь<color=0xffffffff>\\nРасщепление позволяет получать из предметов<color=0xff00a2ff>различные ресурсы<color=0xffffffff>\\n\\nКаждый раз,когда вы используете эти навыки, вы повышаете уровень своего мастерства, после того, как уровень вашего мастерства достигнет максимума, уровень навыка будет повышаться автоматически.\\nЧем выше уровень навыка, тем выше уровень предметов, которые вы можете разбирать и расщеплять");
	elseif( step == ScenarioTalkBegin+7 )then
		Quest.NPCTalk(0,0,"<font=arial,0,20,20><color=0xffff00ff>Энергия：<color=0xffffffff><font=arial,0,17,20>\\n\\nВне зависимости от того,<color=0xff00a2ff>какой навык вы используете<color=0xffffffff>，в любом случае расходуется ваша<color=0xff00a2ff>энергия<color=0xffffffff>.\\nПроверить уровень энергии вы можете в <color=0xff00a2ff>окне персонажа<color=0xffffffff>.\\nЧем выше <color=0xff00a2ff>уровень персонажа<color=0xffffffff>，<color=0xff00a2ff>тем выше энергия<color=0xffffffff>.\\nТолько когда вы неприрывно находитесь<color=0xff00a2ff> в игре<color=0xffffffff>，энергия персонажа<color=0xff00a2ff>постепенно восстанавливается<color=0xffffffff>.\\nВ то же время, в игре существуют <color=0xff00a2ff>зелья, восстанавливающие энергию<color=0xffffffff>.");
	elseif( step == ScenarioTalkBegin+8 )then
		OnTalk();
	end
end

local function OnProduceSkillTalk(id, step)
	if( id == 0 )then
		Produce.ClearNPCTalkOptions();
		Produce.LearnProduceSkill(0, 90000, "Добыча руды");
		Produce.LearnProduceSkill(1, 90001, "Сбор урожая");
		Produce.LearnProduceSkill(2, 90002, "Плавление");
		Produce.LearnProduceSkill(3, 90003, "Ремесло");
		Produce.LearnProduceSkill(4, 90004, "Изготовление капсулы реинкарнации");
		Produce.LearnProduceSkill(5, 90005, "Ковка");
		Produce.LearnProduceSkill(6, 90006, "Изготовление брони");
		Produce.LearnProduceSkill(7, 90007, "Портняжное дело");
		Produce.LearnProduceSkill(8, 90008, "Ремесло");
		Produce.LearnProduceSkill(9, 90009, "Разборка");
		Produce.SetCancelProduceSkill(10, -1, "Вернуться");
		Produce.NPCTalk(0,0,"Из следующих навыков вы можете выбрать<A>Три</A> и обучиться им.\\n<S>Добыча руды</S>：позволяет получить<A>руду</A>или<A>лечебные травы</A>\\n<S>Сбор урожая</S>：позволяет получить<A>хлопок</A>или<A>продукты питания</A>\\n<P>Плавление</P>：позволяет<A>очищать</A>или<A>обрабатывать</A> <A>руду</A>или<A>лечебные травы</A>\\n<P>Ремесло</P>：позволяет<A>обрабатывать </A>или<A>очищать</A> <A>хлопок</A>или<A>продукты питания</A>\\n<N>Изготовление капсулы реинкарнации</N>：позволяет изготавливать<A>лекарства</A>и<A>продукты питания</A>\\n<N>Ковка</N>：позволяет изготовить разные виды<A>оружия</A>и<A>шлифовальных камней</A>\\n<D>Изготовление брони</D>：позволяет изготавливать<A>броню</A>и<A>идентифицировать ее</A>\\n<D>Портняжное дело</D>：позволяет изготавливать различную<A>утварь</A>、<A>части нарядов</A>, а так же<A>красители</A>\\n<C>Ремесло</C>：позволяет изготавливать<A>ювелирные украшения</A>、<A>обрабатывать драгоценные камни</A>, а так же<A>осуществлять резьбу по камню</A>\\n<C>Разборка</C>：позволяет<A>разбирать</A>или<A>расщеплять</A>предметы\\n\\nВы можете выбрать.");
	elseif( id == 1 )then
		Produce.ClearNPCTalkOptions();
		Produce.LeaveProduceSkill(0, 90000, "Добыча руды");
		Produce.LeaveProduceSkill(1, 90001, "Сбор урожая");
		Produce.LeaveProduceSkill(2, 90002, "Плавление");
		Produce.LeaveProduceSkill(3, 90003, "Ремесло");
		Produce.LeaveProduceSkill(4, 90004, "Изготовление капсулы реинкарнации");
		Produce.LeaveProduceSkill(5, 90005, "Ковка");
		Produce.LeaveProduceSkill(6, 90006, "Изготовление брони");
		Produce.LeaveProduceSkill(7, 90007, "Портняжное дело");
		Produce.LeaveProduceSkill(8, 90008, "Ремесло");
		Produce.LeaveProduceSkill(9, 90009, "Разборка");
		Produce.SetCancelProduceSkill(10, -1, "Вернуться");
		Produce.NPCTalk(0,0,"После того, как вы забываете навык，достигнутое мастерство в нем <P>пропадает<P>，Какие навыки вы хотите забыть?");
	end
end
			
local function OnCompleteQuestTalk(id,step)
	if( id == 10015)then
		if( step == QuestTalkBegin )then
			Quest.ClearNPCTalkOptions();
			Quest.SetNPCTalkOption( EOT_CompleteQuest,10015,QuestTalkBegin+1,"Я уже знаю![Выберите для завершения здания]" );
			Quest.SetNPCTalkOption( EOT_CompleteQuest,10015,QuestTalkBegin+2,"Добыча руды и сбор урожая" );
			Quest.SetNPCTalkOption( EOT_CompleteQuest,10015,QuestTalkBegin+3,"Плавление и ремесло" );
			Quest.SetNPCTalkOption( EOT_CompleteQuest,10015,QuestTalkBegin+4,"Ковка и ремесло" );
			Quest.SetNPCTalkOption( EOT_CompleteQuest,10015,QuestTalkBegin+5,"Изготовление брони и портняжное дело" );
			Quest.SetNPCTalkOption( EOT_CompleteQuest,10015,QuestTalkBegin+6,"Изготовление капсулы реинкарнации" );
			Quest.SetNPCTalkOption( EOT_CompleteQuest,10015,QuestTalkBegin+7,"Разборка" );
			Quest.SetNPCTalkOption( EOT_CompleteQuest,10015,QuestTalkBegin+8,"Энергия" );
			Quest.NPCTalk(0,0,"Учитель производства：\\nНачинающий воин может<color=0xff00a2ff>учить<color=0xffffffff>и<color=0xff00a2ff>забывать<color=0xffffffff>производственные навыки.\\nПроизводственные навыки делятся на<color=0xffff0000>10<color=0xffffffff>виды，среди которых любой может единовременно выбрать<color=0xffff0000>3<color=0xffffffff>навыка.Начинающий воин может подробно ознакомиться со следующими настройками.\\n\\n<color=0xffffae00>[Подсказка： Если вы уже изучили содержание описания навыков, нажмите 'Я уже знаю!'  и продолжите.]<color=0xffffffff>");	        
		elseif( step == QuestTalkBegin+1 )then
			Quest.ClearNPCTalkOptions();
			Quest.SetNPCTalkOption( EOT_CompleteQuest,10015,QuestTalkBegin+9,"Ок" );
			Quest.SetNPCTalkOption( EOT_CompleteQuest,10015,QuestTalkBegin,"Назад" );
			Quest.NPCTalk(0,0,"Учитель производства：\\nРаз начинающий воин уже все изучил, я больше не буду доку чать ему своей болтовней. Если в дальнейшем у вас возникнут вопросы - вы можете обратиться ко мне.");
		elseif( step == QuestTalkBegin+2 )then
			Quest.NPCTalk(0,0,"<font=arial,0,20,20><color=0xffff00ff>Добыча руды и сбор урожая：<color=0xffffffff><font=arial,0,17,20>\\n\\n<color=0xff00a2ff>Добыча руды - <color=0xffffffff>это навык, позволяющий  получить<color=0xffff80ff>руду и лечебные травы<color=0xffffffff><color=0xff00ddfe><color=0xffffffff><color=0xff00ddfe><color=0xffffffff>\\n<color=0xff00a2ff>Сбор урожая - <color=0xffffffff>это навык, позволяющий получить<color=0xffff80ff>пищу и хлопок<color=0xffffffff><color=0xff00ddfe><color=0xffffffff><color=0xff00ddfe><color=0xffffffff>\\nДобытые при помощи навыков добычи и сбора урожая продукты - <color=0xff00a2ff>это сырье, необходимое для других производственных навыков<color=0xffffffff>\\n\\nКаждый раз, когда<color=0xff00a2ff>вы используете производственный навык, вы улучшаете свое мастерство<color=0xffffffff>，<color=0xff00a2ff>когда мастерство достигает максимума, навык начинает повышаться автоматически<color=0xffffffff>\\nЧем выше уровень мастерства, тем выше качество добываемых ресурсов.\\n\\n<color=0xffffae00>[Подсказка：Если вы уже выучили содержание навывка, тогда щелкните “Я уже знаю” в настройках.]<color=0xffffffff>");
		elseif( step == QuestTalkBegin+3 )then
			Quest.NPCTalk(0,0,"<font=arial,0,20,20><color=0xffff00ff>Плавление и ремесло：<color=0xffffffff><font=arial,0,17,20>\\n\\n<color=0xff00a2ff>Плавление - <color=0xffffffff>это навык, позволяющий <color=0xff00ddfe>обрабатывать<color=0xffffffff>и<color=0xff00ddfe>очищать<color=0xffffffff><color=0xff00a2ff>руду<color=0xffffffff>и<color=0xff00a2ff>лечебные травы<color=0xffffffff>\\n<color=0xff00a2ff>Ремесло - <color=0xffffffff>это навык, позволяющий <color=0xff00ddfe>обрабатывать<color=0xffffffff>и<color=0xff00ddfe>очищать<color=0xffffffff><color=0xff00a2ff>продукты питания<color=0xffffffff>и<color=0xff00a2ff>ткани<color=0xffffffff>\\nПозволяют<color=0xff00a2ff>улучшать качество предметов<color=0xffffffff>，или очищать сырье, превращая его в редкий материал\\n\\nКаждый раз, когда<color=0xff00a2ff>вы используете производственный навык, вы улучшаете свое мастерство<color=0xffffffff>，<color=0xff00a2ff>когда мастерство достигает максимума, навык начинает повышаться автоматически<color=0xffffffff>\\nЧем выше уровень мастерства, тем больше рецептов производства вы можете выучить\\n\\n<color=0xffffae00>[Подсказка：Если вы уже выучили содержание навывка, тогда щелкните “Я уже знаю” в настройках.]<color=0xffffffff>");
		elseif( step == QuestTalkBegin+4 )then
			Quest.NPCTalk(0,0,"<font=arial,0,20,20><color=0xffff00ff>Ковка и ремесло：<color=0xffffffff><font=arial,0,17,20>\\n\\n<color=0xff00a2ff>Ковка - <color=0xffffffff>это навык, позволяющий изготавливать<color=0xff00ddfe>оружие<color=0xffffffff>и<color=0xff00ddfe>шлифовальные камни<color=0xffffffff>\\n<color=0xff00a2ff>Ремесло - <color=0xffffffff>это навык, позволяющий изготавливать <color=0xff00ddfe>ювелирные украшения<color=0xffffffff>и осуществлять<color=0xff00a2ff>резьбу по камню<color=0xffffffff>、<color=0xff00a2ff>и полировку камней<color=0xffffffff>\\nВо время изготовления оружия и ювелирных украшений, чем выше<color=0xff00a2ff>качество используемоего сырья<color=0xffffffff>，тем выше шанс получить<color=0xff00a2ff>предметы высокого качеств<color=0xffffffff>\\n\\nКаждый раз,когда вы создаете предметы с использованием этих навыков, вы повышаете уровень мастерства, после того, как уровень вашего мастерства достигнет максимума, уровень навыка будет повышаться автоматически.\\nЧем выше уровень мастерства, тем больше рецептов производства вы можете выучить\\n\\n<color=0xffffae00>[Подсказка：Если вы уже выучили содержание навывка, тогда щелкните “Я уже знаю” в настройках.]<color=0xffffffff>");
		elseif( step == QuestTalkBegin+5 )then
			Quest.NPCTalk(0,0,"<font=arial,0,20,20><color=0xffff00ff>Изготовление брони и портняжное дело：<color=0xffffffff><font=arial,0,17,20>\\n\\n<color=0xff00a2ff>Изготовление брони - <color=0xffffffff>это навык, позволяющий<color=0xff00ddfe>создавать броню<color=0xffffffff>и<color=0xff00ddfe>идентифицировать ее <color=0xffffffff>\\n<color=0xff00a2ff>Портняжное дело - <color=0xffffffff>это навык, позволяющий<color=0xff00ddfe>изготавливать тканевые доспехи<color=0xffffffff>и<color=0xff00ddfe>наряды<color=0xffffffff>\\nВ изготовлении одежды и аксессуаров，чем выше<color=0xff00a2ff>качество используемоего сырья<color=0xffffffff>，тем выше шанс получить<color=0xff00a2ff>предметы высокого качества<color=0xffffffff>\\n\\nКаждый раз,когда вы создаете предметы с использованием этих навыков, вы повышаете уровень мастерства, после того, как уровень вашего мастерства достигнет максимума, уровень навыка будет повышаться автоматически.\\nЧем выше уровень мастерства, тем больше рецептов производства вы можете выучить.\\n\\n<color=0xffffae00>[Подсказка：Если вы уже выучили содержание навывка, тогда щелкните “Я уже знаю” в настройках.]<color=0xffffffff>");
		elseif( step == QuestTalkBegin+6 )then
			Quest.NPCTalk(0,0,"<font=arial,0,20,20><color=0xffff00ff>Изготовление капсулы реинкарнации：<color=0xffffffff><font=arial,0,17,20>\\n\\n<color=0xff00a2ff>Изготовление капсулы реинкарнации - <color=0xffffffff>это навык, позволяющий изготавливать<color=0xff00ddfe>медикаменты<color=0xffffffff>и<color=0xff00ddfe>продукты питания<color=0xffffffff>，в то же время позволяет изготавливать<color=0xff00a2ff>материалы, необходимые для других производственных навыков<color=0xffffffff>\\n\\nКаждый раз, изготавливая различные восстанавливающие средства,вы повышаете уровень мастерства.\\nЧем выше уровень мастерства, тем больше рецептов производства вы можете выучить\\n\\n<color=0xffffae00>[Подсказка：Если вы уже выучили содержание навывка, тогда щелкните “Я уже знаю” в настройках.]<color=0xffffffff>");
		elseif( step == QuestTalkBegin+7 )then
			Quest.NPCTalk(0,0,"<font=arial,0,20,20><color=0xffff00ff>Разборка：<color=0xffffffff><font=arial,0,17,20>\\n\\n<color=0xff00a2ff>Разборка - <color=0xffffffff>это навык, позволяющий<color=0xff00a2ff>разобрать снаряжение<color=0xffffffff>\\nРазборка позволяет преобразовывать снаряжение в <color=0xff00a2ff>различную игровую утварь<color=0xffffffff>\\nРасщепление позволяет получать из предметов<color=0xff00a2ff>различные ресурсы<color=0xffffffff>\\n\\nКаждый раз,когда вы используете эти навыки, вы повышаете уровень своего мастерства, после того, как уровень вашего мастерства достигнет максимума, уровень навыка будет повышаться автоматически.\\nЧем выше уровень навыка, тем выше уровень предметов, которые вы можете разбирать и расщеплять\\n\\n<color=0xffffae00>[Подсказка：Если вы уже выучили содержание навывка, тогда щелкните “Я уже знаю” в настройках.]<color=0xffffffff>");
		elseif( step == QuestTalkBegin+8 )then
			Quest.NPCTalk(0,0,"<font=arial,0,20,20><color=0xffff00ff>Энергия：<color=0xffffffff><font=arial,0,17,20>\\n\\nВне зависимости от того, <color=0xff00a2ff>какой производственный навык вы используете<color=0xffffffff>， персонаж расходует<color=0xff00a2ff>энергию<color=0xffffffff>.\\nУровень энергии<color=0xff00a2ff>вы можете посмотреть<color=0xffffffff>в окне персонажа.\\nЧем выше <color=0xff00a2ff>уровень персонажа<color=0xffffffff>，<color=0xff00a2ff>тем выше уровень энергии<color=0xffffffff>.\\nТолько когда вы неприрывно находитесь<color=0xff00a2ff>в игре<color=0xffffffff>，энергия персонажа<color=0xff00a2ff>постепенно восстанавливается<color=0xffffffff>.\\nВ то же время, в игре существуют <color=0xff00a2ff>зелья, восстанавливающие энергию<color=0xffffffff>.\\n\\n<color=0xffffae00>[Подсказка：Если вы уже выучили содержание навывка, тогда щелкните “Я уже знаю” в настройках.]<color=0xffffffff>");
		elseif( step == QuestTalkBegin+9 )then
			Quest.UpdateQuest(10015);
		end
	end
end

ProduceMaster = {}
ProduceMaster["OnTalk"] = OnTalk
ProduceMaster["OnProduceSkillTalk"] = OnProduceSkillTalk
ProduceMaster["OnCompleteQuestTalk"] = OnCompleteQuestTalk
ProduceMaster["OnScenarioTalk"] = OnScenarioTalk
