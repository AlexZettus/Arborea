local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5010111);
	Quest.SetCompleteOptions(5010111);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Офицер боевых наград:<color=0xffffffff>\\nПриглашаю вас сражаться на полях боя и получать за это награды!");

end


local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
        if( id == 30714)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30714,"<Font=arial,0,19,20><color=0xfffcf157>Офицер боевых наград:<color=0xffffffff>\\nКогда битва заканчивается, вы можете получить 1 боевую награду, если у вас есть усиление Слава сражений. Поскольку это усиление действует всего 1 час после сражения, получите награду как можно скорее. Если вы пришли на поле боя и остаетесь на нем после окончания битвы, то можете получить усиление Слава сражений.");
	end
end


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
        if( id == 30714)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30714,"<Font=arial,0,19,20><color=0xfffcf157>Офицер боевых наград:<color=0xffffffff>\\nПомните, что вы можете получать одну награду в день.");
	end

end

RZDjiajiang = {}
RZDjiajiang["OnTalk"] = OnTalk
RZDjiajiang["OnAcceptQuestTalk"] = OnAcceptQuestTalk
RZDjiajiang["OnCompleteQuestTalk"] = OnCompleteQuestTalk