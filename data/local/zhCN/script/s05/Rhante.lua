
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5010099);
	Quest.SetCompleteOptions(5010099);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Охотник Вильгельм:<color=0xffffffff>\\nЕсли вы не хотите уйти отсюда с пустыми руками, вам нужно хорошенько постараться!");

end


local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
        if( id == 20339)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20339,"<Font=arial,0,19,20><color=0xfffcf157>Охотник Вильгельм:<color=0xffffffff>\\nПожалуйста, помогите нам расправиться с несколькими демонами, и тогда сможете вернуться в Заснеженный Город по той тропинке, что у меня за спиной, когда достигнете 48 уровня.");
	elseif( id == 20347)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20347,"<Font=arial,0,19,20><color=0xfffcf157>Охотник Вильгельм:<color=0xffffffff>\\nИдите и проверьте, почему эти снежные дикари становятся такими.");

     
        end
end


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
        if( id == 20338)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20338,"<Font=arial,0,19,20><color=0xfffcf157>Охотник Вильгельм:<color=0xffffffff>\\nНеплохо, но все же маловато!");
	elseif( id == 20347)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20347,"<Font=arial,0,19,20><color=0xfffcf157>Охотник Вильгельм:<color=0xffffffff>\\nЭто все по вине демонов!");
   

       end

end

Rhante = {}
Rhante["OnTalk"] = OnTalk
Rhante["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rhante["OnCompleteQuestTalk"] = OnCompleteQuestTalk