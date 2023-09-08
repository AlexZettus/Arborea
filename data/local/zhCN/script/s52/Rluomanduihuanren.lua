local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5600035);
	Quest.SetCompleteOptions(5600035);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Меняла титулов Ромен:<color=0xffffffff><Font=arial,0,17,20>\\nДобро пожаловать в Ромен!");
end

local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
	if( id == 30775)then
		 Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30775,"<Font=arial,0,19,20><color=0xfffcf157>Меняла титулов Ромен:<color=0xffffffff>\\nЕсли вы сможете собрать <C>50</C> <I>искр храбреца</I>, я дам вам в награду титул <I>Влюблённый</I>.");
	elseif( id == 30776)then
		 Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30776,"<Font=arial,0,19,20><color=0xfffcf157>Меняла титулов Ромен:<color=0xffffffff>\\nЕсли вы сможете собрать <C>50</C> <I>вечного пламени</I>, я дам вам в награду титул <I>Дон Жуан</I> или <I>Красотка</I>.");
	elseif( id == 30777)then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30777,"<Font=arial,0,19,20><color=0xfffcf157>Меняла титулов Ромен:<color=0xffffffff>\\nЕсли вы сможете собрать <C>50</C> <I>искр заботы</I>, я дам вам в награду титул <I>Влюбленная</I>.");
	
        end
end

--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
	if( id == 30775)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30775,"<Font=arial,0,19,20><color=0xfffcf157>Меняла титулов Ромен:<color=0xffffffff><Font=arial,0,17,20>\\nНа вас можно положиться!");
	elseif( id == 30776)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30776,"<Font=arial,0,19,20><color=0xfffcf157>Меняла титулов Ромен:<color=0xffffffff><Font=arial,0,17,20>\\nО, вы собрали довольно много!");
	elseif( id == 30777)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30777,"<Font=arial,0,19,20><color=0xfffcf157>Меняла титулов Ромен:<color=0xffffffff><Font=arial,0,17,20>\\nПохоже, у вас много друзей.");

	end
end

Rluomanduihuanren = {}
Rluomanduihuanren["OnTalk"] = OnTalk
Rluomanduihuanren["OnScenarioTalk"] = OnScenarioTalk
Rluomanduihuanren["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rluomanduihuanren["OnCompleteQuestTalk"] = OnCompleteQuestTalk