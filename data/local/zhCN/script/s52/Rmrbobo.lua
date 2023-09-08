local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5600029);
	Quest.SetCompleteOptions(5600029);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Господин Больбо:<color=0xffffffff><Font=arial,0,17,20>\\nВы можете вырастить любовную розу. Любовная роза - прекрасный подарок девушке. Вы можете обменять любовную розу на любовный шоколад на рынке. Каждый день можно выращивать 10 роз и получать 5 инсектицидов. Кроме того, инсектициды продаются в лавках у других игроков на рынке.");
end

local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
	if( id == 30744)then
		 Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30744,"<Font=arial,0,19,20><color=0xfffcf157>Господин Больбо:<color=0xffffffff>\\nРомен славится своими розами и шоколадом! Трудитесь усердно, чтобы получить эти награды и потом обмениваться розами на шоколад или наоборот с противоположным полом.");
	elseif( id == 30778)then
		 Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30778,"<Font=arial,0,19,20><color=0xfffcf157>Господин Больбо:<color=0xffffffff>\\nРомен славится своими розами и шоколадом! Трудитесь усердно, чтобы получить эти награды и потом обмениваться розами на шоколад или наоборот с противоположным полом.");
	elseif( id == 30782)then
		 Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30782,"<Font=arial,0,19,20><color=0xfffcf157>Господин Больбо:<color=0xffffffff>\\nЕсли вы найдете и принесете мне нулевой шоколад, я дам вам знак Ромен. Это очень редкий шоколад, лучший подарок парню!");
	elseif( id == 30783)then
		 Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30783,"<Font=arial,0,19,20><color=0xfffcf157>Господин Больбо:<color=0xffffffff>\\nЕсли вы найдете и принесете мне шоколад эльфа, я дам вам знак Ромен. Это очень редкий шоколад, лучший подарок парню!");
	elseif( id == 30784)then
		 Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30784,"<Font=arial,0,19,20><color=0xfffcf157>Господин Больбо:<color=0xffffffff>\\nЕсли вам нужна рабочую карту, приходите за ней раз в день.");
	elseif( id == 30785)then
		 Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30785,"<Font=arial,0,19,20><color=0xfffcf157>Господин Больбо:<color=0xffffffff>\\nЯ дам вам эти инсектициды. Пожалуйста, ухаживайте за розами!");
        end
end

--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
	if( id == 30744)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30744,"<Font=arial,0,19,20><color=0xfffcf157>Господин Больбо:<color=0xffffffff><Font=arial,0,17,20>\\nО, похоже, вы ищете это!");
	elseif( id == 30778)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30778,"<Font=arial,0,19,20><color=0xfffcf157>Господин Больбо:<color=0xffffffff><Font=arial,0,17,20>\\nПожалуйста, посмотрите, какой ценный предмет.");
	elseif( id == 30782)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30782,"<Font=arial,0,19,20><color=0xfffcf157>Господин Больбо:<color=0xffffffff><Font=arial,0,17,20>\\nВозьмите знак Ромен.");
	elseif( id == 30783)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30783,"<Font=arial,0,19,20><color=0xfffcf157>Господин Больбо:<color=0xffffffff><Font=arial,0,17,20>\\nВозьмите знак Ромен.");
	elseif( id == 30784)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30784,"<Font=arial,0,19,20><color=0xfffcf157>Господин Больбо:<color=0xffffffff><Font=arial,0,17,20>\\nВозьмите рабочую карту и можете идти работать.");
	elseif( id == 30785)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30785,"<Font=arial,0,19,20><color=0xfffcf157>Господин Больбо:<color=0xffffffff><Font=arial,0,17,20>\\nНе тратьте понапрасну эти инсектициды.");
	end
end

Rmrbobo = {}
Rmrbobo["OnTalk"] = OnTalk
Rmrbobo["OnScenarioTalk"] = OnScenarioTalk
Rmrbobo["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rmrbobo["OnCompleteQuestTalk"] = OnCompleteQuestTalk