
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5516012);
	Quest.SetCompleteOptions(5516012);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Богиня красоты Грациана:<color=0xffffffff><Font=arial,0,17,20>\\nКрасота - самый большой подарок, которым удостоили вас боги!");

end


local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
        if( id == 30115)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30115,"<Font=arial,0,19,20><color=0xfffcf157>Богиня красоты Грациана:<color=0xffffffff><Font=arial,0,17,20>\\nЯ очень люблю романтику. А еще мне очень нравится одна вещь - Звезда Ромен. Вы можете найти Звезды Ромен в Ромен?");
        elseif( id == 30116)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30116,"<Font=arial,0,19,20><color=0xfffcf157>Богиня красоты Грациана:<color=0xffffffff><Font=arial,0,17,20>\\nМне очень нужен семейный цветастый пояс, чтобы прихорошиться. Для получения семейного цветастого пояса необходимо завершить семейное задание.");
        elseif( id == 30117)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30117,"<Font=arial,0,19,20><color=0xfffcf157>Богиня красоты Грациана:<color=0xffffffff><Font=arial,0,17,20>\\nЧтобы сделать красивый наряд, просто необходимо иметь радужную магическую ткань. Для изготовления этого материала мне понадобится магическая ткань и золотой шелк.");
		elseif( id == 20102)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20102,"Передай Кирану, чтобы тоже как-нибудь наведался ко мне. У меня есть для него на примете парочка интересных нарядов.");
        end
end


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
	if( id == 30115)then
	      Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30115,"<Font=arial,0,19,20><color=0xfffcf157>Богиня красоты Грациана:<color=0xffffffff><Font=arial,0,17,20>\\nА вы весьма романтичны!");
	elseif( id == 30116)then
          Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30116,"<Font=arial,0,19,20><color=0xfffcf157>Богиня красоты Грациана:<color=0xffffffff><Font=arial,0,17,20>\\nВаша семья становится все сильнее и сильнее!");
	elseif( id == 30117)then
          Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30117,"<Font=arial,0,19,20><color=0xfffcf157>Богиня красоты Грациана:<color=0xffffffff><Font=arial,0,17,20>\\nЭто и есть радужная магическая ткань, которую вам так хотелось получить.");
	elseif( id == 20101)then
          Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20101,"Всегда рада помочь новым героям. В будущем ты сможешь самостоятельно создавать наряды или покупать их у других путников, чтобы сделать свой стиль уникальным.");
	end
end

Raisimeilada = {}
Raisimeilada["OnTalk"] = OnTalk
Raisimeilada["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Raisimeilada["OnCompleteQuestTalk"] = OnCompleteQuestTalk