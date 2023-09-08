
local function OnTalk()
	Quest.ClearNPCTalkOptions();  --清除对话框选项
	Quest.SetAcceptOptions(5511012);
	Quest.SetCompleteOptions(5511012);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Кук:<color=0xffffffff>\\nЗаядлого туриста не оставят дома никакие опасности!");

end


local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
	 if( id == 50032)then
			Quest.CloseNPCTalk();
			Quest.AcceptQuestTalk(50032,"<Font=arial,0,19,20><color=0xfffcf157>Кук:<color=0xffffffff>\\nЯ впервые в этом лесу и не знаю о нем ничего. Чувствую, что здесь очень опасно. Вы поможете мне узнать, что и как в этом лесу. Я хорошо награжу вас.");
	 elseif( id == 50033)then
			Quest.CloseNPCTalk();
			Quest.AcceptQuestTalk(50033,"<Font=arial,0,19,20><color=0xfffcf157>Кук:<color=0xffffffff>\\nИ все же мне очень страшно. По-моему, здесь намного опаснее, чем мы думаем. Пожалуйста, помогите мне еще раз проверить, где тут можно ходить, а где нельзя. Я не поскуплюсь.");
	 elseif( id == 50034)then
			Quest.CloseNPCTalk();
			Quest.AcceptQuestTalk(50034,"<Font=arial,0,19,20><color=0xfffcf157>Кук:<color=0xffffffff>\\nМне кажется, вы проверили не все уголки этого леса. Пожалуйста, загляните всюду, где вас еще не было, чтобы мне не было страшно тут ходить. Я щедро награжу вас.");
	 end
end


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
	 if( id == 50032)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(50032,"<Font=arial,0,19,20><color=0xfffcf157>Кук:<color=0xffffffff>\\nСпасибо вам! Вот ваша награда.");
	 elseif( id == 50033)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(50033,"<Font=arial,0,19,20><color=0xfffcf157>Кук:<color=0xffffffff>\\nСпасибо! Теперь я уже лучше знаю, где тут что.");
	 elseif( id == 50034)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(50034,"<Font=arial,0,19,20><color=0xfffcf157>Кук:<color=0xffffffff>\\nСпасибо вам! Кажется, теперь я знаю этот лес, как свою родную деревню, и могу продолжить путешествие.");
	end

end

Ryouke = {}
Ryouke["OnTalk"] = OnTalk
Ryouke["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Ryouke["OnCompleteQuestTalk"] = OnCompleteQuestTalk