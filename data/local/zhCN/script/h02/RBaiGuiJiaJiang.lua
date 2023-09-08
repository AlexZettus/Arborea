
local function OnTalk()
	Quest.ClearNPCTalkOptions()--清除对话框选项
	Quest.SetCompleteOptions(5510203);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xffffe289>Проводник Мерло:\\n<color=0xffffffff><Font=arial,0,17,20>За один раз я выдаю награду только лучшим 6 воинам света.");
end

--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
	for i = 1,12	do
		if( id == 30100 + i)then
			Quest.CloseNPCTalk();
			Quest.CompleteQuestTalk(30100 + i ,"<Font=arial,0,19,20><color=0xffffe289>Проводник Мерло:\\n<color=0xffffffff><Font=arial,0,17,20>Все больше и больше воинов могут пройти Вечный Ад. Это так воодушевляет!")
		end
	end
end

RBaiGuiJiaJiang = {}
RBaiGuiJiaJiang["OnTalk"] = OnTalk
RBaiGuiJiaJiang["OnCompleteQuestTalk"] = OnCompleteQuestTalk
