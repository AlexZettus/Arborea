
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5010165);
	Quest.SetCompleteOptions(5010165);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Иросай: <color=0xffffffff>\\nКак это возможно? Не могу поверить своим глазам...");

end


local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
        if( id == 20505)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20505,"<Font=arial,0,19,20><color=0xfffcf157>Иросай: <color=0xffffffff>\\nЭти <A>огры</A> должно быть подвержены влиянию какой-то неведомой силы. Я не знаю точно, кто замешан в этом деле - демоны или кто-то еще. Может, вам удастся разгадать эту тайну? Нужно получше изучить огров.");
        elseif( id == 20506)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20506,"<Font=arial,0,19,20><color=0xfffcf157>Иросай: <color=0xffffffff>\\nМожет быть, вы мне не поверите, но эти предметы имеют божественное происхождение. Но чтобы убедиться в этом, неплохо было бы проверить завораживающие цветы. У меня есть опасения, что они тоже подвержены злой силе.");
        elseif( id == 20507)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20507,"<Font=arial,0,19,20><color=0xfffcf157>Иросай: <color=0xffffffff>\\nОтправляйтесь в недра <N>Древней горы</N> и найдите там <M>алтарь</M>. Думаю, там вы найдете разгадку тайны.");
	elseif( id == 20508)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20508,"<Font=arial,0,19,20><color=0xfffcf157>Иросай: <color=0xffffffff>\\nДавайте сделаем вот что. На <N>Болоте Накси</N> живет племя демонов, которое вполне дружелюбно к нам. Если вы поднимете свой уровень до <C>69</C>, то сможете отправиться туда и попытаться выведать кое-какие сведения у них.");
	
        end
end


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
        if( id == 20504)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20504,"<Font=arial,0,19,20><color=0xfffcf157>Иросай: <color=0xffffffff>\\nЧто делает здесь небожитель?");
        elseif( id == 20505)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20505,"<Font=arial,0,19,20><color=0xfffcf157>Иросай: <color=0xffffffff>\\nЧто это? Невероятно!");
	elseif( id == 20506)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20506,"<Font=arial,0,19,20><color=0xfffcf157>Иросай: <color=0xffffffff>\\nЯ не могу поверить своим глазам, но это правда!");
	elseif( id == 20507)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20507,"<Font=arial,0,19,20><color=0xfffcf157>Иросай: <color=0xffffffff>\\nЧто же задумал этот проклятый <A>клан жрецов</A>... ");
       
       end

end

Ryiluosa = {}
Ryiluosa["OnTalk"] = OnTalk
Ryiluosa["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Ryiluosa["OnCompleteQuestTalk"] = OnCompleteQuestTalk