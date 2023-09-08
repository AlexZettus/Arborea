--日常任务发布人

local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5610041);
	Quest.SetCompleteOptions(5610041);
	Quest.NPCTalk(0,0,"<font=Бегун Касэ:<color=0xffffffff>\\nХорошее ездовое животное позволит вам передвигаться гораздо быстрее ваших врагов.");
end

local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
	if( id == 30335)then
  	--  Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30335,"<Font=arial,0,19,20><color=0xfffcf157>Бегун Касэ:<color=0xffffffff>\\nБег - лучшая тренировка для тех, кто хочет успеть чего-то добиться в жизни. Используйте <M>гонца ветра</M>, которого я вам дал. За определенное время доберитесь до цели и принесите мне <M>знак изгоняющего ветер</M>. Помните, хорошее ездовое животное поможет вам сэкономить время.");
	end
end

--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
	if( id == 30335)then
  	--  Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30335,"<Font=arial,0,19,20><color=0xfffcf157>Бегун Касэ:<color=0xffffffff>\\nТы отлично справился. Вот твоя награда!");
	end
end

Rzhuifengzheks = {}
Rzhuifengzheks["OnTalk"] = OnTalk
Rzhuifengzheks["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rzhuifengzheks["OnCompleteQuestTalk"] = OnCompleteQuestTalk
