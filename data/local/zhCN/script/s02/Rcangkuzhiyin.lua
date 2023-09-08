
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5010028);
	Quest.SetCompleteOptions(5010028);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Помощница кладовщика:<color=0xffffffff>\\nЕсли вам нужно что-то на складе, поговорите с <D>кладовщиком</D>.");

end


local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
	if( id == 20023)then
        Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20023,"Предлагаю тебе разобраться в том, как покупать предметы у торговцев. Заодно ты докажешь управляющему рынком, что с тобой можно общаться о рыночных делах нашего города. Он знаток в этой теме.");
	end
end


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
	if( id == 20022)then
          Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20022,"Купидон всегда так мил со мной. Ах, ладно. С личным складом всё просто. Чтобы положить какой-то предмет на склад, подойди к кладовщику, который стоит рядом со мной. Также в любое время ты можешь забрать у него свои предметы. А чтобы тебе было ещё проще, я дам тебе на 30 дней предмет Мобильный склад. С его помощью у тебя будет доступ к личному складу из любой точки мира.");
	end
end

Rcangkuzhiyin = {}
Rcangkuzhiyin["OnTalk"] = OnTalk
Rcangkuzhiyin["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rcangkuzhiyin["OnCompleteQuestTalk"] = OnCompleteQuestTalk