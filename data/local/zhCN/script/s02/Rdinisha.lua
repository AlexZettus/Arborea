
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5010030);
	Quest.SetCompleteOptions(5010030);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Оракул Тереза:<color=0xffffffff>\\nМой долг - помогать героям сражений!");

end


local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
        
        if( id == 40041)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(40041,"<Font=arial,0,19,20><color=0xfffcf157>Оракул Тереза:<color=0xffffffff>\\nМы берем твой опыт, навыки, способности и вкладываем их в руны битвы. Их сила будет наполнять тебя и помогать вести автоатаку. Единственное, что тебе нужно будет делать - устанавливать руну. Хочешь узнать больше?");
        end
end


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
        if( id == 40041)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(40041,"<Font=arial,0,19,20><color=0xfffcf157>Оракул Тереза:<color=0xffffffff>\\nРуны битвы помогут делать все автоматически - лечить, сражаться, искать монстров и так далее. Чтобы использовать руну, нужно открыть соответствующее окно меню, куда ты можешь вложить необходимые тебе зелья или навыки для неоднократного повторения. После добавления нажми кнопку Старт, и руны будут контролировать твои движения во время боя.\\nОбязательно попробуй руны битвы в действии. Попытка - не пытка.");
       end
end

Rdinisha = {}
Rdinisha["OnTalk"] = OnTalk
Rdinisha["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rdinisha["OnCompleteQuestTalk"] = OnCompleteQuestTalk
