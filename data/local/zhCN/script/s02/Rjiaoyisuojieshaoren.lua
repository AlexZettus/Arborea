
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Руководитель биржи<color=0xffffffff>\\nВсе больше и больше людей стекается на биржу. Уже сейчас стало слишком тесно. Не все могут разложить свои товары. Поэтому мы и решили в этом отдаленном месте открыть новую биржу. Здесь недалеко есть телепорт, поэтому вам будет удобно сюда добираться.");

end

Rjiaoyisuojieshaoren = {}
Rjiaoyisuojieshaoren["OnTalk"] = OnTalk
