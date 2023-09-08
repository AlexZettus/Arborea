
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5600057);
	Quest.SetCompleteOptions(5600057);
	Quest.NPCTalk(0,0,"Кто работает - то ест! Труд - залог здоровья и счастья! А ты любишь, работать?");

end


local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
        if( id >= 30371 and id <= 30375)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(id,"Если ты сможешь собрать необходимые мне предметы, не забудь снова заглянуть ко мне и получить награду!");
        end
end


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
        if( id >= 30371 and id <= 30375)then
	      Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(id,"Тольто та еда вкусна, что заработана тяжелым трудом, помни это!");
	       end
end

Rlaodongjieduihuanren = {}
Rlaodongjieduihuanren["OnTalk"] = OnTalk
Rlaodongjieduihuanren["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rlaodongjieduihuanren["OnCompleteQuestTalk"] = OnCompleteQuestTalk
