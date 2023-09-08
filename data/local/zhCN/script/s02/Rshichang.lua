
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5511013);
	Quest.SetCompleteOptions(5511013);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Аветис:<color=0xffffffff>\\nВы в рыночном районе Тарио. Здесь можно продать свои товары другим игрокам. Чтобы начать торговлю, откройте инвентарь и нажмите кнопку Лавка. Затем добавьте предметы, которые желаете продать, в окно лавки и установите цену.");

end

local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取      
	if( id == 20024)then
        Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20024,"В подземельях и во время ивентов можно получить много предметов, которые будут полезны другим игрокам. Такие предметы можно продать, установив торговую лавку на рыночной площади. Для этого нужно открыть инвентарь и нажать на кнопку Лавка, после этого нужно перетащить в окно лавки предметы для продажи, установить желаемую цену, подтвердить установку лавки и ждать покупателей.");
	end
end

--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
	if( id == 20023)then
          Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20023,"Спасибо за хлеб. Я так понимаю, ты уже знаешь как покупать предметы у торговцев. Тогда я смогу подсказать тебе, как торговать с другими путешественниками.");
	end
end

Rshichang = {}
Rshichang["OnTalk"] = OnTalk
Rshichang["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rshichang["OnCompleteQuestTalk"] = OnCompleteQuestTalk