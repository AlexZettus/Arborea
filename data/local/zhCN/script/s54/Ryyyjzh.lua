--Злобный эльф

local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5610002);
	Quest.SetCompleteOptions(5610002);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Злобный эльф：<color=0xffffffff>\\nЭто старые проклятые земли! Гейл прикладывает огромные усилия, чтобы очистить их.")
end

local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
	if( id == 30306)then
	    Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30306,"<Font=arial,0,19,20><color=0xfffcf157>Злобный эльф:<color=0xffffffff>\\nПосле того, как вы соберете достаточное количество монет питомца, я подарю вам верное домашнее животное.")
	end
	if( id == 30322)then
	    Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30322,"<Font=arial,0,19,20><color=0xfffcf157>Злобный эльф:<color=0xffffffff>\\nВ ближайшее время силы тьмы нанесут удар. Я хочу построить ловушку снов. Ловушка поможет нам избавиться от грязных демонов - запрет их в глубинах снов. Но сонная пыль рассыпалась по всему Святилищу и впиталась в статуи демонов. Пожалуйста, помогите собрать сонную пыль.")
	end
	if( id == 30323)then
	    Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30323,"<Font=arial,0,19,20><color=0xfffcf157>Злобный эльф:<color=0xffffffff>\\nВ ближайшее время силы тьмы нанесут удар. Я хочу построить ловушку снов. Ловушка поможет нам избавиться от грязных демонов - запрет их в глубинах снов. Но сонная пыль рассыпалась по всему Святилищу и впиталась в статуи демонов. Пожалуйста, помогите собрать сонную пыль.")
	end
	if( id == 30324)then
	    Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30324,"<Font=arial,0,19,20><color=0xfffcf157>Злобный эльф:<color=0xffffffff>\\nВ ближайшее время силы тьмы нанесут удар. Я хочу построить ловушку снов. Ловушка поможет нам избавиться от грязных демонов - запрет их в глубинах снов. Но сонная пыль рассыпалась по всему Святилищу и впиталась в статуи демонов. Пожалуйста, помогите собрать сонную пыль.")
	end
	if( id == 30325)then
	    Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30325,"<Font=arial,0,19,20><color=0xfffcf157>Злобный эльф:<color=0xffffffff>\\nВ ближайшее время силы тьмы нанесут удар. Я хочу построить ловушку снов. Ловушка поможет нам избавиться от грязных демонов - запрет их в глубинах снов. Но сонная пыль рассыпалась по всему Святилищу и впиталась в статуи демонов. Пожалуйста, помогите собрать сонную пыль.")
	end
	if( id == 30326)then
	    Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30326,"<Font=arial,0,19,20><color=0xfffcf157>Злобный эльф:<color=0xffffffff>\\nВ ближайшее время силы тьмы нанесут удар. Я хочу построить ловушку снов. Ловушка поможет нам избавиться от грязных демонов - запрет их в глубинах снов. Но сонная пыль рассыпалась по всему Святилищу и впиталась в статуи демонов. Пожалуйста, помогите собрать сонную пыль.")
	end
	if( id == 30327)then
	    Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30327,"<Font=arial,0,19,20><color=0xfffcf157>Злобный эльф:<color=0xffffffff>\\nВ ближайшее время силы тьмы нанесут удар. Я хочу построить ловушку снов. Ловушка поможет нам избавиться от грязных демонов - запрет их в глубинах снов. Но сонная пыль рассыпалась по всему Святилищу и впиталась в статуи демонов. Пожалуйста, помогите собрать сонную пыль.")
	end
	if( id == 30328)then
	    Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30328,"<Font=arial,0,19,20><color=0xfffcf157>Злобный эльф:<color=0xffffffff>\\nВ ближайшее время силы тьмы нанесут удар. Я хочу построить ловушку снов. Ловушка поможет нам избавиться от грязных демонов - запрет их в глубинах снов. Но сонная пыль рассыпалась по всему Святилищу и впиталась в статуи демонов. Пожалуйста, помогите собрать сонную пыль.")
	end
	if( id == 30329)then
	    Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30329,"<Font=arial,0,19,20><color=0xfffcf157>Злобный эльф:<color=0xffffffff>\\nВ ближайшее время силы тьмы нанесут удар. Я хочу построить ловушку снов. Ловушка поможет нам избавиться от грязных демонов - запрет их в глубинах снов. Но сонная пыль рассыпалась по всему Святилищу и впиталась в статуи демонов. Пожалуйста, помогите собрать сонную пыль.")
	end
	if( id == 30330)then
	    Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30330,"<Font=arial,0,19,20><color=0xfffcf157>Злобный эльф:<color=0xffffffff>\\nВ ближайшее время силы тьмы нанесут удар. Я хочу построить ловушку снов. Ловушка поможет нам избавиться от грязных демонов - запрет их в глубинах снов. Но сонная пыль рассыпалась по всему Святилищу и впиталась в статуи демонов. Пожалуйста, помогите собрать сонную пыль.")
	end
	if( id == 30331)then
	    Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30331,"<Font=arial,0,19,20><color=0xfffcf157>Злобный эльф:<color=0xffffffff>\\nВ ближайшее время силы тьмы нанесут удар. Я хочу построить ловушку снов. Ловушка поможет нам избавиться от грязных демонов - запрет их в глубинах снов. Но сонная пыль рассыпалась по всему Святилищу и впиталась в статуи демонов. Пожалуйста, помогите собрать сонную пыль.")
	end
	if( id == 30332)then
	    Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30332,"<Font=arial,0,19,20><color=0xfffcf157>Злобный эльф:<color=0xffffffff>\\nВ ближайшее время силы тьмы нанесут удар. Я хочу построить ловушку снов. Ловушка поможет нам избавиться от грязных демонов - запрет их в глубинах снов. Но сонная пыль рассыпалась по всему Святилищу и впиталась в статуи демонов. Пожалуйста, помогите собрать сонную пыль.")
	end

end

--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
	if( id == 30306)then
	    Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30306,"<Font=arial,0,19,20><color=0xfffcf157>Злобный эльф:<color=0xffffffff>\\nОстальные питомцы все еще ждут вас.")
	elseif( id == 30322)then
	    Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30322,"<Font=arial,0,19,20><color=0xfffcf157>Злобный эльф:<color=0xffffffff>\\nТакой пустяк не повод для гордости. Продолжайте прикладывать усилия, мой друг!")
	elseif( id == 30323)then
	    Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30323,"<Font=arial,0,19,20><color=0xfffcf157>Злобный эльф:<color=0xffffffff>\\nТакой пустяк не повод для гордости. Продолжайте прикладывать усилия, мой друг!")
	elseif( id == 30324)then
	    Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30324,"<Font=arial,0,19,20><color=0xfffcf157>Злобный эльф:<color=0xffffffff>\\nТакой пустяк не повод для гордости. Продолжайте прикладывать усилия, мой друг!")
	elseif( id == 30325)then
	    Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30325,"<Font=arial,0,19,20><color=0xfffcf157>Злобный эльф:<color=0xffffffff>\\nТакой пустяк не повод для гордости. Продолжайте прикладывать усилия, мой друг!")
	elseif( id == 30326)then
	    Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30326,"<Font=arial,0,19,20><color=0xfffcf157>Злобный эльф:<color=0xffffffff>\\nТакой пустяк не повод для гордости. Продолжайте прикладывать усилия, мой друг!")
	elseif( id == 30327)then
	    Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30327,"<Font=arial,0,19,20><color=0xfffcf157>Злобный эльф:<color=0xffffffff>\\nТакой пустяк не повод для гордости. Продолжайте прикладывать усилия, мой друг!")
	elseif( id == 30328)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30328,"<Font=arial,0,19,20><color=0xfffcf157>Злобный эльф:<color=0xffffffff>\\nТакой пустяк не повод для гордости. Продолжайте прикладывать усилия, мой друг!")
	elseif( id == 30329)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30329,"<Font=arial,0,19,20><color=0xfffcf157>Злобный эльф:<color=0xffffffff>\\nТакой пустяк не повод для гордости. Продолжайте прикладывать усилия, мой друг!")
	elseif( id == 30330)then
	    Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30330,"<Font=arial,0,19,20><color=0xfffcf157>Злобный эльф:<color=0xffffffff>\\nТакой пустяк не повод для гордости. Продолжайте прикладывать усилия, мой друг!")
	elseif( id == 30331)then
	    Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30331,"<Font=arial,0,19,20><color=0xfffcf157>Злобный эльф:<color=0xffffffff>\\nТакой пустяк не повод для гордости. Продолжайте прикладывать усилия, мой друг!")
	elseif( id == 30332)then
	    Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30332,"<Font=arial,0,19,20><color=0xfffcf157>Злобный эльф:<color=0xffffffff>\\nТакой пустяк не повод для гордости. Продолжайте прикладывать усилия, мой друг!")
	elseif( id == 40062)then
	    Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(40062,"<Font=arial,0,19,20><color=0xfffcf157>Злобный эльф:<color=0xffffffff>\\nЭто не так просто, как вы думаете, мой друг.")
	end
end

Ryyyjzh = {}
Ryyyjzh["OnTalk"] = OnTalk
Ryyyjzh["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Ryyyjzh["OnCompleteQuestTalk"] = OnCompleteQuestTalk
