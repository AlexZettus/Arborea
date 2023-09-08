
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5010102);
	Quest.SetCompleteOptions(5010102);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Барцель:<color=0xffffffff>\\nЕсли на помощь пришли небожители, значит, мы спасены!");

end


local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
        if( id == 20411)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20411,"<Font=arial,0,19,20><color=0xfffcf157>Барцель:<color=0xffffffff>\\nВ Каменном городе есть 4 печати. Эти печати нужно уничтожить, иначе люди не смогут войти в город.");
        elseif( id == 20412)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20412,"<Font=arial,0,19,20><color=0xfffcf157>Барцель:<color=0xffffffff>\\nО нет... Драконы попали под влияние демонов. Пожалуйста, истребите красных и зеленых драконов Леса Теней. Затем возвращайтесь ко мне.");
        elseif( id == 20413)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20413,"<Font=arial,0,19,20><color=0xfffcf157>Барцель:<color=0xffffffff>\\nВ городе зверствует один злодей по имени Король скорби. Он уже прославился своей жестокостью, люди начинают дрожать от одного только упоминания его имени. Давайте казним этого короля!");
        elseif( id == 20414)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20414,"<Font=arial,0,19,20><color=0xfffcf157>Барцель:<color=0xffffffff>\\nРаботодатель будет ждать вас в Тарио, когда вы достигнете <C>60</C> уровня. Он хочет поговорить с вами о знаке.");

        end
end


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
        if( id == 20410)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20410,"<Font=arial,0,19,20><color=0xfffcf157>Барцель:<color=0xffffffff>\\nВ городе очень опасно! ");
        elseif( id == 20411)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20411,"<Font=arial,0,19,20><color=0xfffcf157>Барцель:<color=0xffffffff>\\nОтлично! Мы вернем себе наш Каменный город.");
        elseif( id == 20412)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20412,"<Font=arial,0,19,20><color=0xfffcf157>Барцель:<color=0xffffffff>\\nУдивительно! Вы сделали это!");
        elseif( id == 20413)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20413,"<Font=arial,0,19,20><color=0xfffcf157>Барцель:<color=0xffffffff>\\nНадеюсь, секта призраков больше никогда не появится здесь!");
       
	    elseif( id == 30341)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30341,"<Font=arial,0,19,20><color=0xfffcf157>Барцель：<color=0xffffffff>\\nВы оказались намного быстрее, чем я предполагал!");
   
	    end

end

Rbazer = {}
Rbazer["OnTalk"] = OnTalk
Rbazer["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rbazer["OnCompleteQuestTalk"] = OnCompleteQuestTalk