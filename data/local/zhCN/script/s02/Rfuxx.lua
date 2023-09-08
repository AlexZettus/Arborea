local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5800084);
	Quest.SetCompleteOptions(5800084);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Фелиция:<color=0xffffffff>\\nНи одно ваше доброе дело не останется незамеченным! Не забывайте об этом.");

end

local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
        if( id == 40051)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(40051,"<Font=arial,0,19,20><color=0xfffcf157>Фелиция:<color=0xffffffff>\\nПоследние дни я чувствую себя ужасно... Очень хочется поесть сладенького... Например, булочку с джемом. Можете пойти в Землю Эльфов и попросить булочку у Эолии? Телепорт Земли Эльфов есть в Тарио.");
       
        end
end

--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
	if( id == 40056)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(40056,"<Font=arial,0,19,20><color=0xfffcf157>Фелиция:<color=0xffffffff><Font=arial,0,17,20>\\nОх, какая вкусная булка с джемом! Как давно я не ела ее... Спасибо вам! Я чувствую себя теперь гораздо лучше. Возьмите награду за помощь!");
	end
end

Rfuxx = {}
Rfuxx["OnTalk"] = OnTalk
Rfuxx["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rfuxx["OnCompleteQuestTalk"] = OnCompleteQuestTalk