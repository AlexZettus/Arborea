
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --Очистить настройки диалогового окна
	Quest.SetAcceptOptions(6011056);
	Quest.SetCompleteOptions(6011056);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Глашатай события Благословление летней ночи：<color=0xffffffff><Font=arial,0,17,20>\\nЭтой звездной ночью в середине лета,давайте предадимся веселью.     \nЧтобы получить задание Благословление летней ночи необходим 50 уровень.");

end


local function OnAcceptQuestTalk(id,step)--Если удалить задание, то его можно будет заново выбрать вручную.
        if( id == 30798)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30798,"<Font=arial,0,19,20><color=0xfffcf157>Глашатай события Благословление летней ночи：<color=0xffffffff><Font=arial,0,17,20>\\nНочь середины лета, праздник веселья, время, когда дарят подарки. Идите к Глашатому Благословления летней ночи, чтобы получить задание.");
       
        end
end



zhongxiaye = {}
zhongxiaye["OnTalk"] = OnTalk
zhongxiaye["OnAcceptQuestTalk"] = OnAcceptQuestTalk
zhongxiaye["OnCompleteQuestTalk"] = OnCompleteQuestTalk