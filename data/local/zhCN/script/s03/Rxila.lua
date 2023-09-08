
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5010021);
	Quest.SetCompleteOptions(5010021);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Страж Теоса:<color=0xffffffff><Font=arial,0,17,20>\\nЧто творится на земле! Откуда же взялись все эти монстры?");

end


local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
        if( id == 40000)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(40000,"<Font=arial,0,19,20><color=0xfffcf157>Страж Теоса:<color=0xffffffff><Font=arial,0,17,20>\\nВы заметили, что в левом верхнем углу экрана, где показано состояние ваших ОЗ и ОМ, есть и другая - <color=0xff9933ff>фиолетовая шкала<color=0xffffffff>? Это ваша <color=0xffff00ff>Ярость<color=0xffffffff>. Каждое точное попадание в цель накапливает вашу ярость. Когда шкала ярости полна, вам становится доступен навык <color=0xff80ff00>Аватар<color=0xffffffff> и статус аватара. Ваши боевые характеристики вырастут на непродолжительное время.\\n\\nТеперь попробуйте убить <C>8</C> <A>пикси духов</A> находясь под действием <color=0xff80ff00>Аватара<color=0xffffffff>.");
        elseif( id == 20105)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20105,"<Font=arial,0,19,20><color=0xfffcf157>Страж Теоса:<color=0xffffffff>\\nЗнаете, что я видела только что? Варваров! Одного страшнее другого с глазами, полными ярости! Мне повезло, что они меня не заметили. Не понимаю, что случилось с ними... Поможете мне собрать несколько образцов их плоти? Отнесите потом их к мастеру иллюзий Карине.");

        end
end


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
        if( id == 40000)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(40000,"<Font=arial,0,19,20><color=0xfffcf157>Страж Теоса:<color=0xffffffff><Font=arial,0,17,20>\\nОтлично сработано! Похоже, вы научились использовать <color=0xff80ff00>Аватар<color=0xffffffff>.\\nИ помните, с помощью него вы станете грозой всех своих врагов. Но вам потребуется много времени для повторного накопления Ярости, так что используйте его в самых крайних случаях или когда вы сражаетесь не в одиночку.\\nЗдесь несколько фиалов <I>пробного зелья ярости</I>, которые помогут вам полностью восстановить очки ярости. Используйте их экономно!");
        elseif( id == 20104)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20104,"<Font=arial,0,19,20><color=0xfffcf157>Страж Теоса:<color=0xffffffff><Font=arial,0,17,20>\\nПохоже, нас ждут большие проблемы...");
       elseif( id == 20216)then
					if( step == QuestTalkBegin )then
						Quest.ClearNPCTalkOptions();
						Quest.SetNPCTalkOption( EOT_CompleteQuest,20216,QuestTalkBegin+1,"Вы не находили поблизости игрушку Рори?" );
						Quest.NPCTalk(0,0,"Привет. Чем я могу тебе помочь?");	        
					elseif( step == QuestTalkBegin+1 )then
						Quest.UpdateQuest(20216);
					end
     
       end


end

Rxila = {}
Rxila["OnTalk"] = OnTalk
Rxila["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rxila["OnCompleteQuestTalk"] = OnCompleteQuestTalk