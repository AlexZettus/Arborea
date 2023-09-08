
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5010078);
	Quest.SetCompleteOptions(5010078);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Градос:<color=0xffffffff>\\nЯ в ярости! Демоны должны заплатить нам за все!");

end


local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
		if( id == 20211)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20211,"<Font=arial,0,19,20><color=0xfffcf157>Градос:<color=0xffffffff>\\nМеня попросили создать снаряжение для отряда сопротивления. Принеси мне несколько панцирей, добытых при убийстве Толстокожих Королл. Я создам из них прочные щиты.");
        elseif( id == 20210)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20210,"<Font=arial,0,19,20><color=0xfffcf157>Градос:<color=0xffffffff>\\nЯ дам тебе кирку. Отправляйся в Рудник и используй её. Добудь таинственный минерал и принеси его мне.");
		elseif( id == 20213)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20213,"<Font=arial,0,19,20><color=0xfffcf157>Градос:<color=0xffffffff>\\nЯ узнал нечто интересное в ходе исследования таинственного минерала. Отнеси эти сведения Хранителю эльфов в округ Танбурт.");
        end
end


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
		if( id == 20211)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20211,"<Font=arial,0,19,20><color=0xfffcf157>Градос:<color=0xffffffff>\\nЭто очень прочный материал. Благодарю тебя за помощь.");
        elseif( id == 20209)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20209,"<Font=arial,0,19,20><color=0xfffcf157>Градос:<color=0xffffffff>\\nВеда предупредила меня, что ты придешь.");
		elseif( id == 20210)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20210,"<Font=arial,0,19,20><color=0xfffcf157>Градос:<color=0xffffffff>\\nИнтересный предмет. Его обязательно нужно исследовать.");
       end
end

Raolifo = {}
Raolifo["OnTalk"] = OnTalk
Raolifo["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Raolifo["OnCompleteQuestTalk"] = OnCompleteQuestTalk