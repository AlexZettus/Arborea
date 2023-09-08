
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5510624);
	Quest.SetCompleteOptions(5510624);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Молодой житель:<color=0xffffffff>\\nМоя мечта - стать таким же сильным воином, как Аарон и Джастин, чтобы защищать наш город от врагов.");

end





younger = {}
younger["OnTalk"] = OnTalk
