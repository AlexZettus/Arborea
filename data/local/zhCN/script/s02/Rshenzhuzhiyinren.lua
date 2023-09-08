
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5010048);
	Quest.SetCompleteOptions(5010048);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Вдохновенный проводник:<Font=arial,0,16,20><color=0xffffffff>\\nОбычные предметы можно усилить до 20 уровня, но иногда и выше.\\nОбратите внимание на следующие детали:\\n<S>I. </S>При каждом Божественном усилении предельный уровень усиления повышается на 1. Максимальный уровень Божественного улучшения равен 20, соответственно максимальный уровень усиления - 40.\\n<S>II. </S>Божественное усиление применимо только к фиолетовым и более качественным предметам.\\n<S>III.</S>Аксессуар должен быть минимум зеленым и не ниже 70 уровня. Чем выше качество предмета, тем больше опыта он дает. Два предмета должны быть одного типа.\\n<S>IV. </S>Предмет можно усиливать только один раз в день, но на божественное усиление этот лимит не действует.");

end


local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
	if(id == 40044) then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(40044,"<Font=arial,0,19,20><color=0xfffcf157>Вдохновенный проводник:<color=0xffffffff>\\nЕсли вы хотите применить божественное усиление, примите от меня этот волшебный молот. \\nПравда, это не бесплатно. Дайте 500 золотых, и молот ваш. Сущие пустяки, правда ведь? Не жалейте денег.");
	end
end


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
	if(id == 40044)then
		if( step == QuestTalkBegin )then
			Quest.ClearNPCTalkOptions();
			Quest.SetNPCTalkOption( EOT_CompleteQuest,40044,QuestTalkBegin+1,"Подтвердить" );
			Quest.SetNPCTalkOption( EOT_CompleteQuest,40044,QuestTalkBegin+2,"Я еще подумаю" );
			Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Вдохновенный проводник:<color=0xffffffff>\\nЭтот молот богов стоит 500 золотых. Вы уверены, что хотите купить его?");

		elseif( step == QuestTalkBegin+1 )then
			Quest.CloseNPCTalk();
			Quest.CompleteQuestTalk(40044,"<Font=arial,0,19,20><color=0xfffcf157>Вдохновенный проводник:<color=0xffffffff>\\nТеперь вы готовы попробовать божественное усиление. Возьмите молот!");
		elseif( step == QuestTalkBegin+2 )then
			Quest.ClearNPCTalkOptions();
			Quest.SetNPCTalkOption( EOT_CompleteQuest,40044,QuestTalkBegin,"Выйти" );
			Quest.NPCTalk(0,0,"Нет");
		end
	end
end

Rshenzhuzhiyinren = {}
Rshenzhuzhiyinren["OnTalk"] = OnTalk
Rshenzhuzhiyinren["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rshenzhuzhiyinren["OnCompleteQuestTalk"] = OnCompleteQuestTalk
