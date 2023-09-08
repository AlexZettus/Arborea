local function OnTalk()
	Quest.ClearNPCTalkOptions();
	if ((Quest.PlayerHasSkill(2013101,1) or Quest.PlayerHasSkill(2013201,1) or Quest.PlayerHasSkill(2013301,1) or Quest.PlayerHasSkill(2013401,1) or Quest.PlayerHasSkill(2013501,1) or Quest.PlayerHasSkill(2013601,1) or Quest.PlayerHasSkill(2013701,1) or Quest.PlayerHasSkill(2013801,1)) == false) then
		Quest.SetNPCTalkOption(13,0,0,"Выбрать ранг бога");
	end
	Quest.SetAcceptOptions(5010243);
	Quest.SetCompleteOptions(5010243);
	Quest.NPCTalk(0,0,"Я Леонора, жена Короля Марса. Мы вместе прошли через великое сражение с демонами Абсолема и вернулись уже другими. Мы познали любовь и страдание, силу и слабость. Я готова открыть тебе тайны Элизиума. Сможешь ли ты их принять?");
end

local function OnAcceptQuestTalk(id,step)--Если удалить задание, его снова можно будет получить вручную
	if( id == 40058)then
	    Quest.CloseNPCTalk();
			Quest.AcceptQuestTalk(40058,"<font=Arial,0,19,20><color=0xfffcf157>Леонора:<color=0xffffffff>\\nЯ дала тебе книгу о навыке Очищение души. Если она прочитана, давай потренируемся использовать этот навык. Я дам тебе сосуд в котором заключен дух Тьмы. Открой сосуд из своего инвентаря и выпусти духа на свободу. Будь осторожен -   ты сможешь его убить только воспользовавшись навыком Очищение души. Как закончишь - возвращайся ко мне.")
	elseif( id == 40059)then
	    Quest.CloseNPCTalk();
			Quest.AcceptQuestTalk(40059,"<font=Arial,0,19,20><color=0xfffcf157>Леонора:<color=0xffffffff>\\nХочешь повысить уровень Святости? Навык Трансформация веры поможет превратить накопленную веру в Святость. Открой вкладку Боги в правой части панели персонажа и найди навык Трансформация веры. Когда закончишь - приходи ко мне.")
	elseif( id == 40060)then
	    Quest.CloseNPCTalk();
			Quest.AcceptQuestTalk(40060,"<font=Arial,0,19,20><color=0xfffcf157>Леонора:<color=0xffffffff>\\nЯ помогу тебе выбрать подходящее духовное звание. После этого ты сможешь применять божественные навыки. Покажи мне, как ты применяешь божественные навыки. Я должна убедиться в том, что тебе доступно это мастерство!")
	elseif( id == 40061)then
	    Quest.CloseNPCTalk();
			Quest.AcceptQuestTalk(40061,"<font=Arial,0,19,20><color=0xfffcf157>Леонора:<color=0xffffffff>\\nТы хочешь активировать навык Путешествия? Для этого нужно повысить свой уровень Святости до 2. Приходи ко мне, после того как станешь мудрее. Советую тебе зайти к Гейлу Провидцу в Долину Грома, он сможет помочь тебе.")
	elseif( id == 40062)then
	    Quest.CloseNPCTalk();
			Quest.AcceptQuestTalk(40062,"<font=Arial,0,19,20><color=0xfffcf157>Леонора:<color=0xffffffff>\\nТы уже достаточно силен для более сложных заданий! Отправляйся в Святилище и получи еще больше очков веры. В Святилище можно войти в последние 10 минут каждого часа. Главные ворота Святилища можно найти в Лесу Теней, в Южных Топях и на Горе Смерти.")
  elseif( id == 40063)then
	    Quest.CloseNPCTalk();
			Quest.AcceptQuestTalk(40063,"<font=Arial,0,19,20><color=0xfffcf157>Леонора:<color=0xffffffff>\\nТеперь ты можешь освящать вещи. Осторожнее - это очень и очень непростое дело. Ведь для этого необходимо использовать редкие материалы, которые сложно достать в наше время. Попытайся узнать, каким образом можно добыть эти материалы. А затем возвращайся и принеси Кристалл бездны.")
	elseif( id == 40064)then
	    Quest.CloseNPCTalk();
			Quest.AcceptQuestTalk(40064,"<font=Arial,0,19,20><color=0xfffcf157>Леонора:<color=0xffffffff>\\nСила, заключенная в святых предметах, очень велика. Чтобы ее грамотно использовать, необходимо достигнуть 3 уровня Святости. Когда ты поймёшь, что у тебя достаточно сил и подготовки, найди меня снова.")
	elseif( id == 40065)then
	    Quest.CloseNPCTalk();
			Quest.AcceptQuestTalk(40065,"<font=Arial,0,19,20><color=0xfffcf157>Леонора:<color=0xffffffff>\\nЯ вижу, что ты понимаешь, что такое быть богом. Теперь иди и создай себе свое собственное святое оружие. Только такое оружие достойно тебя.")
  elseif( id == 40066)then
	    Quest.CloseNPCTalk();
			Quest.AcceptQuestTalk(40066,"<font=Arial,0,19,20><color=0xfffcf157>Леонора:<color=0xffffffff>\\nГейл Провидец - глашатай миллионов простых смертных. Мы с ним дружим уже много лет. Если ты хочешь получить очки веры - следуй в Долину Грома и найди Гейла Провидца, он поможет тебе.")
	elseif( id >= 30350 and id <= 30365)then
	    Quest.CloseNPCTalk();
			Quest.AcceptQuestTalk(id,"<font=Arial,0,19,20><color=0xfffcf157>Леонора:<color=0xffffffff>\\nЯ вижу, что ты хочешь и дальше идти по пути познания. Если ты хочешь получить от меня помощь в этом, найди для меня несколько артефактов из тех, что я скажу. Это твое задание.")
	elseif( id == 30874)then
	    Quest.CloseNPCTalk();
			Quest.AcceptQuestTalk(30874,"<Font=arial,0,19,20><color=0xfffcf157>Леонора:<color=0xffffffff>\\n        До того, как я увидела их своими глазами, я была уверена, что они уже давно исчезли. Я боюсь, что дальше нас ждут только еще большие сложности… Но мы не должны опускать руки. А вы? Вы поможете нам?")
	elseif( id == 30875)then
	    Quest.CloseNPCTalk();
			Quest.AcceptQuestTalk(30875,"<Font=arial,0,19,20><color=0xfffcf157>Леонора:<color=0xffffffff>\\n        До того, как я увидела их своими глазами, я была уверена, что они уже давно исчезли. Я боюсь, что дальше нас ждут только еще большие сложности… Но мы не должны опускать руки. А вы? Вы поможете нам?")
	elseif( id == 30876)then
	    Quest.CloseNPCTalk();
			Quest.AcceptQuestTalk(30876,"<Font=arial,0,19,20><color=0xfffcf157>Леонора:<color=0xffffffff>\\n        До того, как я увидела их своими глазами, я была уверена, что они уже давно исчезли. Я боюсь, что дальше нас ждут только еще большие сложности… Но мы не должны опускать руки. А вы? Вы поможете нам?")
	elseif( id == 30877)then
	    Quest.CloseNPCTalk();
			Quest.AcceptQuestTalk(30877,"<Font=arial,0,19,20><color=0xfffcf157>Леонора:<color=0xffffffff>\\n        До того, как я увидела их своими глазами, я была уверена, что они уже давно исчезли. Я боюсь, что дальше нас ждут только еще большие сложности… Но мы не должны опускать руки. А вы? Вы поможете нам?")
	end
end

--Настройки завершения задания
local function OnCompleteQuestTalk(id,step)
	if( id == 40057)then
	    Quest.CloseNPCTalk();
			Quest.CompleteQuestTalk(40057,"<font=Arial,0,19,20><color=0xfffcf157>Леонора:<color=0xffffffff>\\nПервый урок, который я хочу тебе преподать, посвящен способу применения навыка Очищение души. В этой книге написано, как использовать данный навык. Прочитай внимательно и приходи снова. Я научу тебя большему, когда придет время.")
	elseif ( id == 40058)then
	    Quest.CloseNPCTalk();
			Quest.CompleteQuestTalk(40058,"<font=Arial,0,19,20><color=0xfffcf157>Леонора:<color=0xffffffff>\\nТы хорошо справляешься. Получи в награду эти 200 очков веры. Я дарю тебе и эту книгу о навыке Трансформация веры.")
	elseif ( id == 20201)then
	    Quest.CloseNPCTalk();
			Quest.CompleteQuestTalk(20201,"<font=Arial,0,19,20><color=0xfffcf157>Леонора:<color=0xffffffff>\\nТвои успехи поразительны. Я горжусь тобой, дитя мое!")
	elseif ( id == 40060)then
	    Quest.CloseNPCTalk();
			Quest.CompleteQuestTalk(40060,"<font=Arial,0,19,20><color=0xfffcf157>Леонора:<color=0xffffffff>\\nВ дальнейшем ты сможешь повысить свой божественный ранг и стать еще сильнее.")
	elseif ( id == 40061)then
	    Quest.CloseNPCTalk();
			Quest.CompleteQuestTalk(40061,"<font=Arial,0,19,20><color=0xfffcf157>Леонора:<color=0xffffffff>\\nЯ знала, что ты легко с этим справишься, друг мой! ")
	elseif ( id == 40063)then
	    Quest.CloseNPCTalk();
			Quest.CompleteQuestTalk(40063,"<font=Arial,0,19,20><color=0xfffcf157>Леонора:<color=0xffffffff>\\nПрекрасно, вот твоя награда!")
	elseif ( id == 40064)then
	    Quest.CloseNPCTalk();
			Quest.CompleteQuestTalk(40064,"<font=Arial,0,19,20><color=0xfffcf157>Леонора:<color=0xffffffff>\\nТы просто не можешь меня разочаровать!")
	elseif ( id == 40065)then
	    Quest.CloseNPCTalk();
			Quest.CompleteQuestTalk(40065,"<font=Arial,0,19,20><color=0xfffcf157>Леонора:<color=0xffffffff>\\nЯ вижу, что ты можешь проявлять не только смелость, но и мудрость, друг мой. Когда-то давно я командовала огромным войском... Кто знает, может, и ты будешь достоин такой чести.")
	elseif ( id >= 30350 and id <= 30365)then
	    Quest.CloseNPCTalk();
			Quest.CompleteQuestTalk(id,"<font=Arial,0,19,20><color=0xfffcf157>Леонора:<color=0xffffffff>\\nХорошенько все запомни. Ведь необходимо стать настоящим мастером.")
	elseif ( id == 30800)then
			if( step == QuestTalkBegin )then
			Quest.ClearNPCTalkOptions();
			Quest.SetNPCTalkOption( EOT_CompleteQuest,30800,QuestTalkBegin+1,"Ок" );
			Quest.SetNPCTalkOption( EOT_CompleteQuest,30800,QuestTalkBegin+2,"Назад" );
			Quest.NPCTalk(0,0,"<font=Arial,0,19,20><color=0xfffcf157>Леонора:<color=0xffffffff>\\nС возвращением, мой рыцарь. Пусть все видят, как много у тебя жизненной силы!");	        
		elseif( step == QuestTalkBegin+1 )then
			Quest.UpdateQuest(30800);
		elseif( step == QuestTalkBegin+2 )then
			Quest.CloseNPCTalk();
		end
	elseif ( id == 30874)then
	    Quest.CloseNPCTalk();
			Quest.CompleteQuestTalk(30874,"<Font=arial,0,19,20><color=0xfffcf157>Леонора:<color=0xffffffff>\\n        Вы снова дали мне надежду! Возьмите эти кристаллы. Когда-нибудь вы станете величайшим героем… Я верю в вас!")
	elseif ( id == 30875)then
	    Quest.CloseNPCTalk();
			Quest.CompleteQuestTalk(30875,"<Font=arial,0,19,20><color=0xfffcf157>Леонора:<color=0xffffffff>\\n        Вы снова дали мне надежду! Возьмите эти кристаллы. Когда-нибудь вы станете величайшим героем… Я верю в вас!")
	elseif ( id == 30876)then
	    Quest.CloseNPCTalk();
			Quest.CompleteQuestTalk(30876,"<Font=arial,0,19,20><color=0xfffcf157>Леонора:<color=0xffffffff>\\n        Вы снова дали мне надежду! Возьмите эти кристаллы. Когда-нибудь вы станете величайшим героем… Я верю в вас!")
	elseif ( id == 30877)then
	    Quest.CloseNPCTalk();
			Quest.CompleteQuestTalk(30877,"<Font=arial,0,19,20><color=0xfffcf157>Леонора:<color=0xffffffff>\\n        Вы снова дали мне надежду! Возьмите эти кристаллы. Когда-нибудь вы станете величайшим героем… Я верю в вас!")
	elseif ( id == 52053) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(52053,"<Font=arial,0,19,20><color=0xfffcf157>Леонора<color=0xffffffff><Font=arial,0,17,20>\\nОтлично! Я знала, что герои не останутся в стороне и придут мне на помощь!");
	end
end

God = {}
God["OnTalk"] = OnTalk
God["OnAcceptQuestTalk"] = OnAcceptQuestTalk
God["OnCompleteQuestTalk"] = OnCompleteQuestTalk