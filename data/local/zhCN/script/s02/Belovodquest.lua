local function OnTalk()
	Quest.ClearNPCTalkOptions();    
	Quest.SetAcceptOptions(9010097);
	Quest.SetCompleteOptions(9010097);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Адмирал Беловод:<color=0xffffffff><Font=arial,0,17,20>\\nЯ страж озера Беловод.\\nВ глубинах озера идет война с морскими чертями, мои славные витязи сражаются не на жизнь, а на смерть.");
end

local function OnCompleteQuestTalk(id,step)
	if( id == 59009)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(59009,"<Font=arial,0,19,20><color=0xfffcf157>Адмирал Беловод:<color=0xffffffff><Font=arial,0,17,20>\\nБоги Моря, что я вижу, ты принес все для починки прохудившихся доспехов.\\nЛаты моих молодцев снова засияют в солнечных лучах заходящего солнца.\\nБоевой дух моих богатырей снова воспрянет, и мы, как разряды молний, ринемся в самую гущу битвы.\\nАрмия Беловода никогда не забудет тебя, герой, мы будем воспевать тебя в славных балладах, когда закончится наша битва.");
	end
end

Belovodquest = {}
Belovodquest["OnTalk"] = OnTalk
Belovodquest["OnCompleteQuestTalk"] = OnCompleteQuestTalk