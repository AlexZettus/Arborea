
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5510620);
	Quest.SetCompleteOptions(5510620);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Лука:<color=0xffffffff>\\nПроводник Ирина и Илийна - наши самые красивые девушки! Они сестры. Старшая - очень вежливая и милая, а младшая - немного дерзкая. Они обе встречают гостей и рассказывают о правилах пребывания в Святом городе и Заснеженном Городе.");

end





luca = {}
luca["OnTalk"] = OnTalk
