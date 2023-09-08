local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5610055);
	Quest.SetCompleteOptions(5610055);
	Quest.NPCTalk(0,0,"В замечательный праздник влюбленных просят благословения одинокий пастух и ткачиха!");
end

local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
	if( id == 30825)then
		 Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30825,"Как только ты окажешься в телепорте Ромен и поцелуешь любимого человека, я получу пожелания о любви в праздник влюбленных.");
	end
end

--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
	if( id == 30825)then
      Quest.CloseNPCTalk();
	   Quest.CompleteQuestTalk(30825,"Отлично! Счастья тебе!");
	end
end

Rqixiqifulaoren = {}
Rqixiqifulaoren["OnTalk"] = OnTalk
Rqixiqifulaoren["OnScenarioTalk"] = OnScenarioTalk
Rqixiqifulaoren["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rqixiqifulaoren["OnCompleteQuestTalk"] = OnCompleteQuestTalk