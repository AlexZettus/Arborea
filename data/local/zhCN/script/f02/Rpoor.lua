
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5100001);
	Quest.SetCompleteOptions(5100001);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Узник:<color=0xffffffff>\\nМеня схватили, бросили сюда и приставили надзирателя...\\nЯ сгнию здесь заживо...");
	
end



local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
        if( id == 29000)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(29000,"<Font=arial,0,19,20><color=0xfffcf157>Мастер иллюзий Карина:<color=0xffffffff>\\nВсе формы жизни в Пандоре вы видите в искаженном виде. Мне нужны материалы, чтобы сделать зелья, которые помогут вернуть всему истинный облик. Пыльца чудных бабочек - лучший ингредиент для этих зелий.");
        end

end


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
        if( id == 29000)then
	      Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(29000,"<Font=arial,0,19,20><color=0xfffcf157>Узник:<color=0xffffffff>\\nПрошу, помогите мне выбраться отсюда... Я награжу вас!");
	end


end

Rpoor = {}
Rpoor["OnTalk"] = OnTalk
Rpoor["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rpoor["OnCompleteQuestTalk"] = OnCompleteQuestTalk