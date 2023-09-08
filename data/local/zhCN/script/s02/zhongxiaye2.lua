
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --Очистить настройки диалогового окна
	Quest.SetAcceptOptions(6011057);
	Quest.SetCompleteOptions(6011057);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Глашатай Благословление летней ночи：<color=0xffffffff><Font=arial,0,17,20>\\nЭтой звездной ночью в середине лета,давайте предадимся веселью. \\nНе забывайте, что Глашатай события Благословление летней ночи появиться только с 17 до 30 июля.");


end



--после выбора меню заданий
local function OnCompleteQuestTalk(id,step)
        if( id == 30798)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30798,"<Font=arial,0,19,20><color=0xfffcf157>Глашатай Благословление летней ночи：<color=0xffffffff><Font=arial,0,17,20>\\nВозьми мой подарок и помни, что ты получишь еще много подарков во время этого события.");
      
       end


end

zhongxiaye2 = {}
zhongxiaye2["OnTalk"] = OnTalk
zhongxiaye2["OnAcceptQuestTalk"] = OnAcceptQuestTalk
zhongxiaye2["OnCompleteQuestTalk"] = OnCompleteQuestTalk