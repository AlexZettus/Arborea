
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --Очистить варианты диалогового окна
	Quest.SetAcceptOptions(6040316);
	Quest.SetCompleteOptions(6040316);
	Quest.NPCTalk(0,0,"<font=arial,0,19,20><color=0xfffcf157>Меняла мерцающего ядра：<color=0xffffffff>\\nМожно приходить ко мне каждый день, чтобы завершить <C>5</C> раз задание мерцающего ядра. При выполнении задания у вас есть шанс получить материалы, использующиеся при пробуждении снаряжения.");

end


local function OnAcceptQuestTalk(id,step)--Если удалить задание, то его можно снова принять.
	--[[if( id == 52019)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(52019,"<font=arial,0,19,20><color=0xfffcf157>Меняла мерцающего ядра：<color=0xffffffff>\\nМерцающее ядро для тебя, вероятно, не так важно, как для меня. Хранимые им тайны не для чужих ушей. Скорее отправляйся на выполнение задания!");	

	end
	]]--
end


--После нажатия варианта передать задание
local function OnCompleteQuestTalk(id,step)
      --[[if( id == 52019)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(52019,"<font=arial,0,19,20><color=0xfffcf157>Меняла мерцающего ядра：<color=0xffffffff>\\nВот приз, который я тебе обещала, держи!");
       end
	]]--
end

weiguangzhiheduihuanren = {}
weiguangzhiheduihuanren["OnTalk"] = OnTalk
weiguangzhiheduihuanren["OnAcceptQuestTalk"] = OnAcceptQuestTalk
weiguangzhiheduihuanren["OnCompleteQuestTalk"] = OnCompleteQuestTalk