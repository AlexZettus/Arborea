
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5600020);
	Quest.SetCompleteOptions(5600020);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Новогодний кролик:<color=0xffffffff>\\nПусть этот Новый год будет самым счастливым в вашей жизни!");

end


local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
        if( id == 30723)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30723,"<Font=arial,0,19,20><color=0xfffcf157>Новогодний кролик:<color=0xffffffff>\\nПриходите! Вас ждет особый подарок - прибавка к опыту!");

        end
end


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
        if( id == 30723)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30723,"<Font=arial,0,19,20><color=0xfffcf157>Новогодний кролик:<color=0xffffffff>\\nВы получите 150% дополнительного опыта, когда завершите это задание.");

       end

end

Rshendantuzi = {}
Rshendantuzi["OnTalk"] = OnTalk
Rshendantuzi["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rshendantuzi["OnCompleteQuestTalk"] = OnCompleteQuestTalk