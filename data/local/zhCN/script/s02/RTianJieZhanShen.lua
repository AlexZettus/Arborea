
local function OnTalk()
	Quest.ClearNPCTalkOptions()--清除对话框选项
	Quest.SetAcceptOptions(5510402)
	Quest.SetCompleteOptions(5510402)
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xffffe289>Марс Небесный:\\n<color=0xffffffff><Font=arial,0,17,20>Я, один из 72 божественных повелителей битвы, буду здесь с [13:00] до [21:00] каждый вторник и пятницу выдавать задание Честь вождя. Я призываю отважных воинов света восстать против засилия демонов. Конечно, всех героев ждет щедрое вознаграждение.\\nКогда задание будет выполнено, вы получите в награду опыт и золотые. Задание можно взять только один раз за ивент. \\nВ течение ивента первый, десятый и сотый выполнившие задание получат особую награду!");
end

local function OnAcceptQuestTalk(id,step)
		if( id == 30202)then
			Quest.CloseNPCTalk();
			Quest.AcceptQuestTalk(30202,"<Font=arial,0,19,20><color=0xffffe289>Марс Небесный:\\n<color=0xffffffff><Font=arial,0,17,20>Демоны неистовствуют! Вы готовы упокоить их падшие души? Сделать это - огромная честь для воина света. Все в вашей команде будут щедро вознаграждены, а лучшие - особенно щедро.\\nЗадание можно взять только один раз в течение ивента.")
		end
end

--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
		if( id == 30202 )then
			Quest.CloseNPCTalk();
			Quest.CompleteQuestTalk(30202 ,"<Font=arial,0,19,20><color=0xffffe289>Марс Небесный:\\n<color=0xffffffff><Font=arial,0,17,20>Браво! Вот ваша награда.")
		end
end

RTianJieZhanShen = {}
RTianJieZhanShen["OnTalk"] = OnTalk
RTianJieZhanShen["OnCompleteQuestTalk"] = OnCompleteQuestTalk
RTianJieZhanShen["OnAcceptQuestTalk"] = OnAcceptQuestTalk
