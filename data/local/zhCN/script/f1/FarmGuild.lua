
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5810214);
	Quest.SetCompleteOptions(5810214);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Натаниэль:<color=0xffffffff>\\nПриветствую, фермер! Королевство нуждается в провизии. Если у тебя имеются фермерские излишки, ты можешь принимать и выполнять заказы гильдии торговцев. Каждый выполненный заказ повышает репутацию с нашей организацией. Выполняй заказы, чтобы получить более выгодные условия и ценные награды.");

end

local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
        if( id == 52136)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(52136,"<Font=arial,0,19,20><color=0xfffcf157>Натаниэль:<color=0xffffffff>\\nГильдия торговцев ищет поставщиков! Ты можешь обменять провизию на полезные предметы. Кроме того, за каждый выполненный заказ отношение с гильдией торговцев будет улучшаться, что позволить получить доступ к более ценным заказам.");
	end
end

local function OnCompleteQuestTalk(id,step)
        if( id == 52136)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(52136,"<Font=arial,0,19,20><color=0xfffcf157>Натаниэль:<color=0xffffffff>\\nВы отлично справились! Примите награду от меня.");
	end

end

FarmGuild = {}
FarmGuild["OnTalk"] = OnTalk
FarmGuild["OnAcceptQuestTalk"] = OnAcceptQuestTalk
FarmGuild["OnCompleteQuestTalk"] = OnCompleteQuestTalk
