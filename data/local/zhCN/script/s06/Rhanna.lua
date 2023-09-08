
local function OnTalk()
	Quest.ClearNPCTalkOptions();  --清除对话框选项
	Quest.SetAcceptOptions(5010163);
	Quest.SetCompleteOptions(5010163);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Анна:<color=0xffffffff>\\nЭта проклятая секта призраков наслаждается своей жестокостью!");

end


local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
	 if( id == 20425)then
	  Quest.CloseNPCTalk();
			Quest.AcceptQuestTalk(20425,"<Font=arial,0,19,20><color=0xfffcf157>Анна:<color=0xffffffff>\\nЭти места облюбовали члены секты призраков. Нужно подготовиться к нападению.");
	 elseif( id == 20426)then
			Quest.CloseNPCTalk();
			Quest.AcceptQuestTalk(20426,"<Font=arial,0,19,20><color=0xfffcf157>Анна:<color=0xffffffff>\\nНа этой територии также промышляет и клан призраков. Это задание очень тяжелое. Пожалуйста, будьте осторожны.");
	 elseif( id == 20427)then
			Quest.CloseNPCTalk();
			Quest.AcceptQuestTalk(20427,"<Font=arial,0,19,20><color=0xfffcf157>Анна:<color=0xffffffff>\\nГлава секты призраков поклоняется демонам. Нужно уничтожить этого ренегата и его приспешников! ");
	 elseif( id == 20428)then
			Quest.CloseNPCTalk();
			Quest.AcceptQuestTalk(20428,"<Font=arial,0,19,20><color=0xfffcf157>Анна:<color=0xffffffff>\\nВы очень помогли жителям Леса Теней и теперь можете возвращаться к королю Марсу в Тарио, после того как достигнете 65 уровня.");

	 end
end


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
	 if( id == 20424)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(20424,"<Font=arial,0,19,20><color=0xfffcf157>Анна:<color=0xffffffff>\\nВы пришли вовремя!");
	 elseif( id == 20425)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(20425,"<Font=arial,0,19,20><color=0xfffcf157>Анна:<color=0xffffffff>\\nВеликолепно!");
	 elseif( id == 20426)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(20426,"<Font=arial,0,19,20><color=0xfffcf157>Анна:<color=0xffffffff>\\nТеперь можно сосредоточиться на главной цели.");
	 elseif( id == 20427)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(20427,"<Font=arial,0,19,20><color=0xfffcf157>Анна:<color=0xffffffff>\\nОх, наконец-то эта чудовищная секта уничтожена! Вы проделали большую работу!");

	end

end

Rhanna = {}
Rhanna["OnTalk"] = OnTalk
Rhanna["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rhanna["OnCompleteQuestTalk"] = OnCompleteQuestTalk