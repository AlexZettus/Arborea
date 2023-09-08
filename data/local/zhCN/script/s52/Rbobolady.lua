local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5600027);
	Quest.SetCompleteOptions(5600027);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Госпожа Больбо:<color=0xffffffff><Font=arial,0,17,20>\\nЯ научу вас делать любовный шоколад, который очень любят мужчины. Вы можете обменять его у игрока мужского пола на любовную розу на рынке. Каждый день вы можете делать 10 плиток шоколада и получить за них 5 инструментов резчика. Но инструмент резчика продается и в лавках у других игроков.");
end

local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
	if( id == 30745)then
		 Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30745,"<Font=arial,0,19,20><color=0xfffcf157>Госпожа Больбо:<color=0xffffffff>\\nРомен славится своими розами и шоколадом! Трудитесь усердно, чтобы получить эти награды и потом обмениваться с противоположным полом розами на шоколад или наоборот.");
	elseif( id == 30779)then
		 Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30779,"<Font=arial,0,19,20><color=0xfffcf157>Госпожа Больбо:<color=0xffffffff>\\nРомен славится своими розами и шоколадом! Трудитесь усердно, чтобы получить эти награды и потом обмениваться с противоположным полом розами на шоколад или наоборот.");
	elseif( id == 30780)then
		 Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30780,"<Font=arial,0,19,20><color=0xfffcf157>Госпожа Больбо:<color=0xffffffff>\\nЕсли вы найдете и принесете мне ледяную розу, я дам вам знак Ромен. Это очень редкая роза, лучший подарок девушке.");
	elseif( id == 30781)then
		 Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30781,"<Font=arial,0,19,20><color=0xfffcf157>Госпожа Больбо:<color=0xffffffff>\\nЕсли вы найдете и принесете мне пламенную розу, я дам вам знак Ромен. Это очень редкая роза, лучший подарок девушке.");
	elseif( id == 30774)then
		 Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30774,"<Font=arial,0,19,20><color=0xfffcf157>Госпожа Больбо:<color=0xffffffff>\\nЕсли вам нужна рабочая карта, приходите за ней раз в день.");
	elseif( id == 30786)then
		 Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30786,"<Font=arial,0,19,20><color=0xfffcf157>Госпожа Больбо:<color=0xffffffff>\\nЯ дам вам этот инструмент резчика. Делайте побольше шоколада, чтобы хватило всем!");
        end
end

--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
	if( id == 30745)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30745,"<Font=arial,0,19,20><color=0xfffcf157>Госпожа Больбо:<color=0xffffffff><Font=arial,0,17,20>\\nО, похоже, вы ищете это!");
	elseif( id == 30779)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30779,"<Font=arial,0,19,20><color=0xfffcf157>Госпожа Больбо:<color=0xffffffff><Font=arial,0,17,20>\\nВозьмите знак Ромен.");
	elseif( id == 30780)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30780,"<Font=arial,0,19,20><color=0xfffcf157>Госпожа Больбо:<color=0xffffffff><Font=arial,0,17,20>\\nВозьмите знак Ромен.");
	elseif( id == 30781)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30781,"<Font=arial,0,19,20><color=0xfffcf157>Госпожа Больбо:<color=0xffffffff><Font=arial,0,17,20>\\nВозьмите знак Ромен.");
	elseif( id == 30774)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30774,"<Font=arial,0,19,20><color=0xfffcf157>Госпожа Больбо:<color=0xffffffff><Font=arial,0,17,20>\\nВозьмите рабочую карту и можете идти работать.");
	elseif( id == 30786)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30786,"<Font=arial,0,19,20><color=0xfffcf157>Госпожа Больбо:<color=0xffffffff><Font=arial,0,17,20>\\nСделайте как можно больше вкусного шоколада!");
	end
end

Rbobolady = {}
Rbobolady["OnTalk"] = OnTalk
Rbobolady["OnScenarioTalk"] = OnScenarioTalk
Rbobolady["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rbobolady["OnCompleteQuestTalk"] = OnCompleteQuestTalk