
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5510625);
	Quest.SetCompleteOptions(5510625);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Илийна:<color=0xffffffff>\\nХватит пялиться на меня! Что, не видели никогда таких красоток, как я?");

end





helena = {}
helena["OnTalk"] = OnTalk
