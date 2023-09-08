
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5510619);
	Quest.SetCompleteOptions(5510619);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Проводник Ирина:<color=0xffffffff>\\nДобро пожаловать в Святой город! Наши жители всегда рады гостям!");

end





arlene = {}
arlene["OnTalk"] = OnTalk
