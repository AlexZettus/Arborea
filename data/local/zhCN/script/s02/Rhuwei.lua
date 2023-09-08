local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5600040);
	Quest.SetCompleteOptions(5600040);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Дворцовый страж:<color=0xffffffff><Font=arial,0,17,20>\\nНикто не может чувствовать себя в безопасности во Дворце Звезд!");
end

local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
	if( id == 30746)then
		 Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30746,"<Font=arial,0,19,20><color=0xfffcf157>Дворцовый страж:<color=0xffffffff>\\nИщите во Дворце Звезд землекристаллы и небокристаллы, и приносите ко мне - я хорошо вас награжу!.");
	elseif( id == 30747)then
		 Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30747,"<Font=arial,0,19,20><color=0xfffcf157>Дворцовый страж:<color=0xffffffff>\\nИщите во Дворце Звезд землекристаллы и небокристаллы, и приносите ко мне - я хорошо вас награжу!.");
	elseif( id == 30748)then
		 Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30748,"<Font=arial,0,19,20><color=0xfffcf157>Дворцовый страж:<color=0xffffffff>\\nИщите во Дворце Звезд землекристаллы и небокристаллы, и приносите ко мне - я хорошо вас награжу!.");
	elseif( id == 30749)then
		 Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30749,"<Font=arial,0,19,20><color=0xfffcf157>Дворцовый страж:<color=0xffffffff>\\nИщите во Дворце Звезд землекристаллы и небокристаллы, и приносите ко мне - я хорошо вас награжу!.");
	elseif( id == 30750)then
		 Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30750,"<Font=arial,0,19,20><color=0xfffcf157>Дворцовый страж:<color=0xffffffff>\\nИщите во Дворце Звезд землекристаллы и небокристаллы, и приносите ко мне - я хорошо вас награжу!.");
	elseif( id == 30751)then
		 Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30751,"<Font=arial,0,19,20><color=0xfffcf157>Дворцовый страж:<color=0xffffffff>\\nИщите во Дворце Звезд землекристаллы и небокристаллы, и приносите ко мне - я хорошо вас награжу!.");
	elseif( id == 30752)then
		 Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30752,"<Font=arial,0,19,20><color=0xfffcf157>Дворцовый страж:<color=0xffffffff>\\nИщите во Дворце Звезд землекристаллы и небокристаллы, и приносите ко мне - я хорошо вас награжу!.");
	elseif( id == 30753)then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30753,"<Font=arial,0,19,20><color=0xfffcf157>Дворцовый страж:<color=0xffffffff>\\nНебокристаллы можно найти в Небесном крыле Дворца Звезд. Когда принесете их мне, я помогу превратить 5 небокристаллов в небесную сущность. Одновременно вы получите усиление Небесное проклятье. Я не смогу вам помочь сделать небесную сущность, если закончится действие Небесного проклятья.");
	elseif( id == 30754)then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30754,"<Font=arial,0,19,20><color=0xfffcf157>Дворцовый страж:<color=0xffffffff>\\nЗемлекристаллы можно найти в Земном крыле Дворца Звезд. Когда принесете их мне, я помогу превратить 5 землекристаллов в земную сущность. Одновременно вы получите усиление Земное проклятье. Я не смогу вам помочь сделать земную сущность, если закончится действие Земного проклятья..");
	elseif( id == 30755)then
		 Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30755,"<Font=arial,0,19,20><color=0xfffcf157>Дворцовый страж:<color=0xffffffff>\\nИщите во Дворце Звезд землекристаллы и небокристаллы, и приносите ко мне - я хорошо вас награжу!.");
	elseif( id == 30756)then
		 Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30756,"<Font=arial,0,19,20><color=0xfffcf157>Дворцовый страж:<color=0xffffffff>\\nИщите во Дворце Звезд землекристаллы и небокристаллы, и приносите ко мне - я хорошо вас награжу!.");
	elseif( id == 30757)then
		 Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30757,"<Font=arial,0,19,20><color=0xfffcf157>Дворцовый страж:<color=0xffffffff>\\nИщите во Дворце Звезд землекристаллы и небокристаллы, и приносите ко мне - я хорошо вас награжу!.");
	elseif( id == 30758)then
		 Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30758,"<Font=arial,0,19,20><color=0xfffcf157>Дворцовый страж:<color=0xffffffff>\\nИщите во Дворце Звезд землекристаллы и небокристаллы, и приносите ко мне - я хорошо вас награжу!.");
	elseif( id == 30759)then
		 Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30759,"<Font=arial,0,19,20><color=0xfffcf157>Дворцовый страж:<color=0xffffffff>\\nИщите во Дворце Звезд землекристаллы и небокристаллы, и приносите ко мне - я хорошо вас награжу!.");
	elseif( id == 30760)then
		 Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30760,"<Font=arial,0,19,20><color=0xfffcf157>Дворцовый страж:<color=0xffffffff>\\nИщите во Дворце Звезд землекристаллы и небокристаллы, и приносите ко мне - я хорошо вас награжу!.");
	elseif( id == 30761)then
		 Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30761,"<Font=arial,0,19,20><color=0xfffcf157>Дворцовый страж:<color=0xffffffff>\\nИщите во Дворце Звезд землекристаллы и небокристаллы, и приносите ко мне - я хорошо вас награжу!.");
	elseif( id == 30763)then
		 Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30763,"<Font=arial,0,19,20><color=0xfffcf157>Дворцовый страж:<color=0xffffffff>\\nВам нужно хорошенько постараться, чтобы получить новогоднюю награду!");
	elseif( id == 30764)then
		 Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30764,"<Font=arial,0,19,20><color=0xfffcf157>Дворцовый страж:<color=0xffffffff>\\nВам нужно хорошенько постараться, чтобы получить новогоднюю награду!");
	elseif( id == 30765)then
		 Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30765,"<Font=arial,0,19,20><color=0xfffcf157>Дворцовый страж:<color=0xffffffff>\\nВам нужно хорошенько постараться, чтобы получить новогоднюю награду!");
	elseif( id == 30766)then
		 Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30766,"<Font=arial,0,19,20><color=0xfffcf157>Дворцовый страж:<color=0xffffffff>\\nВам нужно хорошенько постараться, чтобы получить новогоднюю награду!");
	elseif( id == 30767)then
		 Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30767,"<Font=arial,0,19,20><color=0xfffcf157>Дворцовый страж:<color=0xffffffff>\\nВам нужно хорошенько постараться, чтобы получить новогоднюю награду!");
	elseif( id == 30768)then
		 Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30768,"<Font=arial,0,19,20><color=0xfffcf157>Дворцовый страж:<color=0xffffffff>\\nВам нужно хорошенько постараться, чтобы получить новогоднюю награду!");
	elseif( id == 30769)then
		 Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30769,"<Font=arial,0,19,20><color=0xfffcf157>Дворцовый страж:<color=0xffffffff>\\nВам нужно хорошенько постараться, чтобы получить новогоднюю награду!");
	elseif( id == 30770)then
		 Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30770,"<Font=arial,0,19,20><color=0xfffcf157>Дворцовый страж:<color=0xffffffff>\\nВам нужно хорошенько постараться, чтобы получить новогоднюю награду!");
        elseif( id == 30771)then
		 Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30771,"<Font=arial,0,19,20><color=0xfffcf157>Дворцовый страж:<color=0xffffffff>\\nВам нужно хорошенько постараться, чтобы получить новогоднюю награду!");
	elseif( id == 30772)then
		 Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30772,"<Font=arial,0,19,20><color=0xfffcf157>Дворцовый страж:<color=0xffffffff>\\nВам нужно хорошенько постараться, чтобы получить новогоднюю награду!");
	elseif( id == 30773)then
		 Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30773,"<Font=arial,0,19,20><color=0xfffcf157>Дворцовый страж:<color=0xffffffff>\\nВам нужно хорошенько постараться, чтобы получить новогоднюю награду!");
	end
end

--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
	if( id == 30746)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30746,"<Font=arial,0,19,20><color=0xfffcf157>Дворцовый страж:<color=0xffffffff><Font=arial,0,17,20>\\nСоберите небесную сущность и земную сущность! Их можно обменять на очень полезные предметы!");
	elseif( id == 30747)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30747,"<Font=arial,0,19,20><color=0xfffcf157>Дворцовый страж:<color=0xffffffff><Font=arial,0,17,20>\\nСоберите небесную сущность и земную сущность! Их можно обменять на очень полезные предметы.");
	elseif( id == 30748)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30748,"<Font=arial,0,19,20><color=0xfffcf157>Дворцовый страж:<color=0xffffffff><Font=arial,0,17,20>\\nСоберите небесную сущность и земную сущность! Их можно обменять на очень полезные предметы.");
	elseif( id == 30749)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30749,"<Font=arial,0,19,20><color=0xfffcf157>Дворцовый страж:<color=0xffffffff><Font=arial,0,17,20>\\nСоберите небесную сущность и земную сущность! Их можно обменять на очень полезные предметы.");
	elseif( id == 30750)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30750,"<Font=arial,0,19,20><color=0xfffcf157>Дворцовый страж:<color=0xffffffff><Font=arial,0,17,20>\\nСоберите небесную сущность и земную сущность! Их можно обменять на очень полезные предметы.");
	elseif( id == 30750)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30750,"<Font=arial,0,19,20><color=0xfffcf157>Дворцовый страж:<color=0xffffffff><Font=arial,0,17,20>\\nСоберите небесную сущность и земную сущность! Их можно обменять на очень полезные предметы.");
	elseif( id == 30751)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30751,"<Font=arial,0,19,20><color=0xfffcf157>Дворцовый страж:<color=0xffffffff><Font=arial,0,17,20>\\nСоберите небесную сущность и земную сущность! Их можно обменять на очень полезные предметы.");
	elseif( id == 30752)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30752,"<Font=arial,0,19,20><color=0xfffcf157>Дворцовый страж:<color=0xffffffff><Font=arial,0,17,20>\\nСоберите небесную сущность и земную сущность! Их можно обменять на очень полезные предметы.");
	elseif( id == 30753)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30753,"<Font=arial,0,19,20><color=0xfffcf157>Дворцовый страж:<color=0xffffffff><Font=arial,0,17,20>\\nЭтого достаточно для небесной сущности. Вернитесь к сбору небокристаллов после того, как действие Небесного проклятие закончится.");
	elseif( id == 30754)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30754,"<Font=arial,0,19,20><color=0xfffcf157>Дворцовый страж:<color=0xffffffff><Font=arial,0,17,20>\\nЭтого достаточно для земной сущности. Вернитесь к сбору землекристаллов после того, как действие Земного пpоклятия закончится.");
	elseif( id == 30755)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30755,"<Font=arial,0,19,20><color=0xfffcf157>Дворцовый страж:<color=0xffffffff><Font=arial,0,17,20>\\nСоберите небесную сущность и земную сущность! Их можно обменять на очень полезные предметы.");
	elseif( id == 30756)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30756,"<Font=arial,0,19,20><color=0xfffcf157>Дворцовый страж:<color=0xffffffff><Font=arial,0,17,20>\\nСоберите небесную сущность и земную сущность! Их можно обменять на очень полезные предметы.");
	elseif( id == 30757)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30757,"<Font=arial,0,19,20><color=0xfffcf157>Дворцовый страж:<color=0xffffffff><Font=arial,0,17,20>\\nСоберите небесную сущность и земную сущность! Их можно обменять на очень полезные предметы.");
	elseif( id == 30758)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30758,"<Font=arial,0,19,20><color=0xfffcf157>Дворцовый страж:<color=0xffffffff><Font=arial,0,17,20>\\nСоберите небесную сущность и земную сущность! Их можно обменять на очень полезные предметы.");
	elseif( id == 30759)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30759,"<Font=arial,0,19,20><color=0xfffcf157>Дворцовый страж:<color=0xffffffff><Font=arial,0,17,20>\\nСоберите небесную сущность и земную сущность! Их можно обменять на очень полезные предметы.");
	elseif( id == 30760)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30760,"<Font=arial,0,19,20><color=0xfffcf157>Дворцовый страж:<color=0xffffffff><Font=arial,0,17,20>\\nСоберите небесную сущность и земную сущность! Их можно обменять на очень полезные предметы.");
	elseif( id == 30761)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30761,"<Font=arial,0,19,20><color=0xfffcf157>Дворцовый страж:<color=0xffffffff><Font=arial,0,17,20>\\nСоберите небесную сущность и земную сущность! Их можно обменять на очень полезные предметы.");
	elseif( id == 30763)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30763,"<Font=arial,0,19,20><color=0xfffcf157>Дворцовый страж:<color=0xffffffff><Font=arial,0,17,20>\\nПохоже, вы легко справились с заданием!");
	elseif( id == 30764)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30764,"<Font=arial,0,19,20><color=0xfffcf157>Дворцовый страж:<color=0xffffffff><Font=arial,0,17,20>\\nПохоже, вы легко справились с заданием!");
	elseif( id == 30765)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30765,"<Font=arial,0,19,20><color=0xfffcf157>Дворцовый страж:<color=0xffffffff><Font=arial,0,17,20>\\nПохоже, вы легко справились с заданием!");
	elseif( id == 30766)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30766,"<Font=arial,0,19,20><color=0xfffcf157>Дворцовый страж:<color=0xffffffff><Font=arial,0,17,20>\\nПохоже, вы легко справились с заданием!");
	elseif( id == 30767)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30767,"<Font=arial,0,19,20><color=0xfffcf157>Дворцовый страж:<color=0xffffffff><Font=arial,0,17,20>\\nПохоже, вы легко справились с заданием!");
	elseif( id == 30768)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30768,"<Font=arial,0,19,20><color=0xfffcf157>Дворцовый страж:<color=0xffffffff><Font=arial,0,17,20>\\nПохоже, вы легко справились с заданием!");
	elseif( id == 30769)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30769,"<Font=arial,0,19,20><color=0xfffcf157>Дворцовый страж:<color=0xffffffff><Font=arial,0,17,20>\\nПохоже, вы легко справились с заданием!");
	elseif( id == 30770)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30770,"<Font=arial,0,19,20><color=0xfffcf157>Дворцовый страж:<color=0xffffffff><Font=arial,0,17,20>\\nПохоже, вы легко справились с заданием!");
	elseif( id == 30771)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30771,"<Font=arial,0,19,20><color=0xfffcf157>Дворцовый страж:<color=0xffffffff><Font=arial,0,17,20>\\nПохоже, вы легко справились с заданием!");
	elseif( id == 30772)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30772,"<Font=arial,0,19,20><color=0xfffcf157>Дворцовый страж:<color=0xffffffff><Font=arial,0,17,20>\\nПохоже, вы легко справились с заданием!");
	elseif( id == 30773)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30773,"<Font=arial,0,19,20><color=0xfffcf157>Дворцовый страж:<color=0xffffffff><Font=arial,0,17,20>\\nПохоже, вы легко справились с заданием!");
	end
end

Rhuwei = {}
Rhuwei["OnTalk"] = OnTalk
Rhuwei["OnScenarioTalk"] = OnScenarioTalk
Rhuwei["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rhuwei["OnCompleteQuestTalk"] = OnCompleteQuestTalk