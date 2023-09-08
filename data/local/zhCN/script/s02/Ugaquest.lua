local function OnTalk()
	Quest.ClearNPCTalkOptions(); 
	Quest.SetAcceptOptions(9010102);	
	Quest.SetCompleteOptions(9010102);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Старушка Юга:<color=0xffffffff><Font=arial,0,17,20>\\nО тебе молва уж по всему нашему миру ходит. Вот я и решила, чем смогу помогу землякам, да и на тебя погляжу.\\nЮгой меня звать, кто с добром ко мне приходит, тот с добром и уходит, а кто со злым умыслом, о тех вспоминать не принято.");
end

local function OnCompleteQuestTalk(id,step)
	if( id == 59011)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(59011,"<Font=arial,0,19,20><color=0xfffcf157>Старушка Юга:<color=0xffffffff><Font=arial,0,17,20>\\nВот держи, как и обещала, эликсир да зелье.\\nКачество гарантирую. Выпьешь зелье в трудную минуту да бабушку добрым словом вспомнишь.");
	elseif( id == 59012)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(59012,"<Font=arial,0,19,20><color=0xfffcf157>Старушка Юга:<color=0xffffffff><Font=arial,0,17,20>\\nВот держи, как и обещала, эликсир да зелье.\\nКачество гарантирую. Выпьешь зелье в трудную минуту да бабушку добрым словом вспомнишь.");
	elseif( id == 59013)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(59013,"<Font=arial,0,19,20><color=0xfffcf157>Старушка Юга:<color=0xffffffff><Font=arial,0,17,20>\\nВот держи, как и обещала, эликсир да зелье.\\nКачество гарантирую. Выпьешь зелье в трудную минуту да бабушку добрым словом вспомнишь.");
	elseif( id == 59014)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(59014,"<Font=arial,0,19,20><color=0xfffcf157>Старушка Юга:<color=0xffffffff><Font=arial,0,17,20>\\nМолва и впрямь правдива. Такого героя как ты и в нашем мире не найдешь.\\nДля сил темных ты великая угроза, для люда простого - защитник.\\nПусть тебя добрые силы в пути берегут, да зелья мои.");
	end
end

Ugaquest = {}
Ugaquest["OnTalk"] = OnTalk
Ugaquest["OnCompleteQuestTalk"] = OnCompleteQuestTalk