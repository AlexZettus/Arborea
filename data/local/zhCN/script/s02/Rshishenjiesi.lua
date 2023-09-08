
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5600065);
	Quest.SetCompleteOptions(5600065);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Призыватель Джесс:<color=0xffffffff>\\nЯ искусный маг и призыватель! Моя миссия заключается в том, чтобы обернуть силу демонов против них самих. Мне повинуются самые злобные создания, но сколько волка не корми, а он всё равно норовит отправиться в родное логово. Мне может понадобиться ваша помощь, а взамен вы получите мои угощения и уникальные награды. Кстати, мало кто знает, но я к тому же отличный повар.");

end


local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
        if( id == 30787)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30787,"<Font=arial,0,19,20><color=0xfffcf157>Призыватель Джесс:<color=0xffffffff>\\nВсе пропало! Все пропало! В этом году мы не сможем отведать кушанье из клейкого риса! О великий войн, не сможете ли вы помочь мне найти немного клейкого риса? Взамен я смогу вам дать готовое кушанье. Но, пожалуйста, принесите мне рис. Я не мастер готовить суп из топора.");
	elseif( id == 30788)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30788,"<Font=arial,0,19,20><color=0xfffcf157>Призыватель Джесс:<color=0xffffffff>\\nУ меня совсем нет времени на болтовню. Мой отец Аррас - демон, который перешёл на сторону людей, он проживает в локации <Font=arial,0,19,20><color=0xffffae00>Стена памяти<color=0xffffffff>. Возможно, именно из-за него я выбрал такую профессию. Навестите его, он передаст вам моё угощение и очень важное задание.");
	elseif( id == 30790)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30790,"<Font=arial,0,19,20><color=0xfffcf157>Призыватель Джесс:<color=0xffffffff>\\nЭнергия этого кристалла придаст <Font=arial,0,19,20><color=0xffffae00>волчьему свистку<color=0xffffffff> особенные магические свойства, однако для совершения ритуала мне нужно 55 штук <Font=arial,0,19,20><color=0xffffae00>необработанной руды<color=0xffffffff>. Принесите мне все необходимые ингредиенты и вы получите свисток для призыва непослушного зверя.");
	elseif( id == 30791)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30791,"<Font=arial,0,19,20><color=0xfffcf157>Призыватель Джесс:<color=0xffffffff>\\nПринеси мне <Font=arial,0,19,20><color=0xffffae00>свиток судьбы<color=0xffffffff> и <Font=arial,0,19,20><color=0xffffae00>подарочную коробку<color=0xffffffff> на праздник начала лета. Взамен я смогу дать вам <Font=arial,0,19,20><color=0xffffae00>пятнистую подарочную коробку<color=0xffffffff>. Внутри нее вы сможете найти замечательные подарки.");
	end
end


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
        if( id == 30787)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30787,"<Font=arial,0,19,20><color=0xfffcf157>Призыватель Джесс:<color=0xffffffff>\\nБольшое вам спасибо! Теперь мы сможем отведать этот деликатес!");
	elseif( id == 30789)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30789,"<Font=arial,0,19,20><color=0xfffcf157>Призыватель Джесс:<color=0xffffffff>\\nПоздравляю вас! Вы хорошо справились с моими поручениями. Возможно, вы могли бы стать отличным призывателем. Ладно, я шучу, этому нужно учиться долгие годы, но теперь в мире стало на одно чудовище меньше. Вы можете собой гордиться. Желаю вам счастливого пути и незабываемых приключений в этом опасном мире. Приходите завтра, мало ли что ещё может случиться...");
	elseif( id == 30790)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30790,"<Font=arial,0,19,20><color=0xfffcf157>Призыватель Джесс:<color=0xffffffff>\\nКак же я устал, это неблагодарная работа. Учишь этих животных хорошим манерам, а они только показывают оскал и сбегают. В следующий раз возьму на обучение несколько Сновал, эти ребята поспокойнее будут. Но это уже другая история. У вас ещё есть незаконченное дело, передайте от меня привет сбежавшему волку!");
    elseif( id == 30791)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30791,"<Font=arial,0,19,20><color=0xfffcf157>Призыватель Джесс:<color=0xffffffff>\\nДержи пятнистую подарочную коробку!");
	end


end

Rshishenjiesi = {}
Rshishenjiesi["OnTalk"] = OnTalk
Rshishenjiesi["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rshishenjiesi["OnCompleteQuestTalk"] = OnCompleteQuestTalk
