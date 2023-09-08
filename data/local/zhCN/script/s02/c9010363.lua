local function OnTalk()
	Quest.ClearNPCTalkOptions();    
	Quest.SetAcceptOptions(9010363);
	Quest.SetCompleteOptions(9010363);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Праздничный торт:<color=0xffffffff><Font=arial,0,17,20>\\nПоздравляем всех жителей Теоса с пятилетием всеми нами любимой Blood and Soul! Спасибо за то, что вы с нами.");
end

local function OnAcceptQuestTalk(id,step)
	if (id == 53002) then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(53002,"<Font=arial,0,19,20><color=0xfffcf157>Праздничный торт:<color=0xffffffff><Font=arial,0,17,20>\\nВыполните сверхсекретное задание, чтобы получить праздничный кусочек торта.");
	end
end

c9010363 = {}
c9010363["OnTalk"] = OnTalk
c9010363["OnAcceptQuestTalk"] = OnAcceptQuestTalk