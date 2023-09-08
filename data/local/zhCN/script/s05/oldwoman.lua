
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5510626);
	Quest.SetCompleteOptions(5510626);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Старейшина:<color=0xffffffff>\\nПринцессу-демона Алайшу, мою подругу, уволок к себе какой-то мерзавец из Логова Тьмы. Я теперь не знаю, что с ней, жива или мертва она.");

end





oldwoman = {}
oldwoman["OnTalk"] = OnTalk
