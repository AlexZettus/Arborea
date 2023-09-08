
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5510622);
	Quest.SetCompleteOptions(5510622);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Таинственный пьяница:<color=0xffffffff>\\nЭто телепорт между Заснеженным Городом и Святым городом. Когда Святому городу грозит опасность, его жители перемещаются с помощью телепорта в Заснеженный Город.");

end





drunk = {}
drunk["OnTalk"] = OnTalk
