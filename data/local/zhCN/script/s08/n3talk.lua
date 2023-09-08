
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(9010225);
	Quest.SetCompleteOptions(9010225);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Лексиус:<color=0xffffffff>\\nКак хорошо, герой, что вы откликнулись на просьбу о помощи. Принцесса Марси, путешествовавшая по нашим землям, была похищена! Мне удалось отследить заговорщиков до этой точки, здесь они пробыли какое-то время, а затем телепортировались. Я смог подцепить и восстановить их портал, но ему нужен какой-то ключ. Помогите с поисками и спасением принцессы!");

end


local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
    if( id == 52053)then
        Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(52053,"<Font=arial,0,19,20><color=0xfffcf157>Лексиус:<color=0xffffffff>\\nВойдите в Логово Заговорщиков и найдите там Принцессу Марси. Для входа в логово необходим Амулет заговорщика.");
    
	end
end


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
    if( id == 52051)then
        Quest.CloseNPCTalk();
	    Quest.CompleteQuestTalk(52051,"<Font=arial,0,19,20><color=0xfffcf157>Лексиус:<color=0xffffffff>\\nКак вовремя! Помощь мне будет как раз кстати.");
    elseif( id == 52052)then
        Quest.CloseNPCTalk();
	    Quest.CompleteQuestTalk(52052,"<Font=arial,0,19,20><color=0xfffcf157>Лексиус:<color=0xffffffff>\\nОтлично! Хоть амулет и разлетелся на осколки при смерти хозяина, я могу восстановить его из этих осколков. Вот, держи!");
	
    end

end

n3talk = {}
n3talk["OnTalk"] = OnTalk
n3talk["OnAcceptQuestTalk"] = OnAcceptQuestTalk
n3talk["OnCompleteQuestTalk"] = OnCompleteQuestTalk