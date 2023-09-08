
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5510623);
	Quest.SetCompleteOptions(5510623);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Таинственный пьяница:<color=0xffffffff>\\nНе желаете немного покутить? В Святом городе отличная выпивка!");

end





drunkman = {}
drunkman["OnTalk"] = OnTalk
