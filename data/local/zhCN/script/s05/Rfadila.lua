local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5511027);
	Quest.SetCompleteOptions(5511027);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Эльфовед Фиэлла:<color=0xffffffff>\\nРада приветствовать тебя, герой! Я специалист в области изучения эльфов  и могу рассказать тебе об этих замечательных созданиях практически все!");

end


local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
        if( id == 40048)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(40048,"<Font=arial,0,19,20><color=0xfffcf157>Эльфовед Фиэлла:<color=0xffffffff>\\nУ тебя уже есть эльф? Хорошо, если это так. Ты знаешь, что когда эльф достигает 30 уровня, он начинает лучше чувствовать своего владельца и может выражать эмоции. Теперь я расскажу тебе, как  поднять настроение твоего эльфа!");
        elseif( id == 40049)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(40049,"<Font=arial,0,19,20><color=0xfffcf157>Эльфовед Фиэлла:<color=0xffffffff>\\nПойди и купи у продавца в Заснеженном Городе особые сливовые конфеты. Когда купишь, я расскажу тебе об этой еде более подробно.");
        elseif( id == 40050)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(40050,"<Font=arial,0,19,20><color=0xfffcf157>Эльфовед Фиэлла:<color=0xffffffff>\\nЕсли настроение эльфа не Поощрение, попробуйте покормить его специальными сливовыми конфетами, которые вы купили. Попробуйте прямо сейчас.");
 
        end
end


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
        if( id == 40048)then
             if( step == QuestTalkBegin )then
			Quest.ClearNPCTalkOptions();
			Quest.SetNPCTalkOption( EOT_CompleteQuest,40048,QuestTalkBegin+1,"Да, мне понятно" );
			Quest.SetNPCTalkOption( EOT_CompleteQuest,40048,QuestTalkBegin+2,"Еще раз" );
			Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Эльфовед Фиэлла:<color=0xffffffff><Font=arial,0,17,20>\\nНастроение эльфа можно разделить на шесть условных уровней: Депрессия, Тоска, Грусть, Растерянность, Радость, Счастье. Все эти эмоции ты сможешь увидеть, когда твой эльф достигнет 30 уровня.");

		elseif( step == QuestTalkBegin+1 )then
			Quest.ClearNPCTalkOptions();
			Quest.SetNPCTalkOption( EOT_CompleteQuest,40048,QuestTalkBegin+3,"Да, мне понятно" );
			Quest.SetNPCTalkOption( EOT_CompleteQuest,40048,QuestTalkBegin+4,"Еще раз" );
			Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Эльфовед Фиэлла:<color=0xffffffff><Font=arial,0,17,20>\\nНастроение эльфа влияет на то, какое количество опыта он зарабатывает, на то, какой бонус дает вашим способностям и на шанс использования им каких-либо навыков.");

		elseif( step == QuestTalkBegin+3 )then
			Quest.ClearNPCTalkOptions();
			Quest.SetNPCTalkOption( EOT_CompleteQuest,40048,QuestTalkBegin+5,"Да, мне понятно" );
			Quest.SetNPCTalkOption( EOT_CompleteQuest,40048,QuestTalkBegin+6,"Еще раз" );
			Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Эльфовед Фиэлла:<color=0xffffffff><Font=arial,0,17,20>\\nЧтобы поднять настроение эльфа, ты можешь его покормить. Разумеется, это лакомство носит волшебный характер, поэтому купить его можно только у продавца эльфийской еды или приготовить у эльфийского повара. После еды  у эльфа поднимается настроение или увеличивается сила.");
			
		elseif( step == QuestTalkBegin+5 )then
			Quest.ClearNPCTalkOptions();
			Quest.SetNPCTalkOption( EOT_CompleteQuest,40048,QuestTalkBegin+7,"Да, мне понятно" );
			Quest.SetNPCTalkOption( EOT_CompleteQuest,40048,QuestTalkBegin+8,"Еще раз" );
			Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Эльфовед Фиэлла:<color=0xffffffff><Font=arial,0,17,20>\\nСтоит отметить, что настроение эльфа ухудшается со временем без еды или в момент смерти персонажа. В состоянии Счастье эльф ничего не ест - ему это просто не нужно!");
		
		elseif( step == QuestTalkBegin+7 )then
			Quest.CloseNPCTalk();
			Quest.CompleteQuestTalk(40048,"<Font=arial,0,19,20><color=0xfffcf157>Эльфовед Фиэлла<color=0xffffffff><Font=arial,0,17,20>\\nМне кажется, что ты все уже знаешь об эльфах. Пожалуйста, обрати внимание на настроение своего эльфа в панели параметров эльфа.");
		end
        elseif( id == 40049)then
		if( step == QuestTalkBegin ) then
			Quest.ClearNPCTalkOptions();                    --清除对话框选项
			Quest.SetNPCTalkOption(EOT_CompleteQuest,40049,QuestTalkBegin+1, "Обычная еда" );
			Quest.SetNPCTalkOption(EOT_CompleteQuest,40049,QuestTalkBegin+2, "Деликатес" );
			Quest.SetNPCTalkOption(EOT_CompleteQuest,40049,QuestTalkBegin+3, "Кулинарный шедевр" );
			Quest.SetNPCTalkOption(EOT_CompleteQuest,40049,QuestTalkBegin+4, "Понятно" );
		Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Эльфовед Фиэлла:<color=0xffffffff>\\nХорошо. О чем ты хочешь узнать?")
		elseif( step == QuestTalkBegin+1 ) then 
		Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Эльфовед Фиэлла:<color=0xffffffff>\\nОбычная еда продается за золото и используется для улучшения  настроения твоего эльфа.");
		elseif( step == QuestTalkBegin+2 ) then 
		Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Эльфовед Фиэлла:<color=0xffffffff>\\nДля приготовления деликатеса нужно собрать нужные ингредиенты. Такая еда не только поднимает настроение эльфа, но и увеличивает значение его параметров! Ты можешь использовать  это в своих целях.");
		elseif( step == QuestTalkBegin+3 ) then 
		Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Эльфовед Фиэлла:<color=0xffffffff>\\nШедевр волшебной кухни не только поднимает настроение и параметры эльфа, но и придает ему особый статус! Для приготовления такого чуда тебе нужно найти не только редкие ингредиенты, но и рецепты.");
		elseif( step == QuestTalkBegin+4 ) then 
			Quest.CloseNPCTalk();
			Quest.CompleteQuestTalk(40049,"<Font=arial,0,19,20><color=0xfffcf157>Эльфовед Фиэлла:<color=0xffffffff><Font=arial,0,17,20>\\nПожалуйста, заботьтесь о своем эльфе!");
		end
              
        elseif( id == 40050)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(40050,"<Font=arial,0,19,20><color=0xfffcf157>Эльфовед Фиэлла:<color=0xffffffff>\\nХорошо, раз вы теперь знаете, как контролировать состояние и улучшать настроение своего эльфа, то возьмите в подарок 2 эльфов. Заботьтесь о них!");


       end

end

Rfadila = {}
Rfadila["OnTalk"] = OnTalk
Rfadila["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rfadila["OnCompleteQuestTalk"] = OnCompleteQuestTalk