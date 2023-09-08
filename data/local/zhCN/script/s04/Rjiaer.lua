
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5010080);
	Quest.SetCompleteOptions(5010080);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Бог огня Гелиур:<color=0xffffffff>\\nПрисутствие демонов ощущается здесь все сильнее и сильнее. Если мы будем медлить, то этот мир превратится во второй Абсолем!");

end


local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
        
        
        if( id == 20223)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20223,"<Font=arial,0,19,20><color=0xfffcf157>Бог огня Гелиур:<color=0xffffffff>\\n<A>Элементаль камня</A> убит, но множество его соплеменников живы и тоже одержимы демонической силой. Идите уничтожьте их и соберите несколько каменных элементалей. Мне нужно изучить их и узнать, в каком они сейчас состоянии.");
        
		end
end


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
        
        
		if( id == 20223)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20223,"<Font=arial,0,19,20><color=0xfffcf157>Бог огня Гелиур:<color=0xffffffff>\\nОтлично! Наконец-то я смогу немного отдохнуть.");
       end

end

Rjiaer = {}
Rjiaer["OnTalk"] = OnTalk
Rjiaer["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rjiaer["OnCompleteQuestTalk"] = OnCompleteQuestTalk