local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5010115);
	Quest.SetCompleteOptions(5010115);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Распорядитель наград доблести:<color=0xffffffff>\\nЯ выдаю награды гильдиям или альянсам гильдий за победы на полях боя!  \\nПосле окончания битвы глава победившего альянса и гильдии получает усиление Слава старшего офицера, а другие члены гильдии - усиление Слава победителя.  \\nМожно обменять 5 высших медалей и 10 медалей мастера на усиление Слава старшего офицера.  \\nМожно обменять 10 медалей мастера на усиление Слава победителя.  \\nПомните: усиления Слава старшего офицера и Слава победителя аннулируются, когда вы покидаете арену или выходите из игры, поэтому постарайтесь получить эти награды сразу после битвы.");

end


local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
        if( id == 30715)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30715,"<Font=arial,0,19,20><color=0xfffcf157>Распорядитель наград доблести:<color=0xffffffff>\\nТолько глава победившей стороны может получит получить эту награду!");
	elseif( id == 30716)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30716,"<Font=arial,0,19,20><color=0xfffcf157>Распорядитель наград доблести:<color=0xffffffff>\\nВы награждаетесь Славой победителя!");
	end
end


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
        if( id == 30715)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30715,"<Font=arial,0,19,20><color=0xfffcf157>Распорядитель наград доблести:<color=0xffffffff>\\nПодготовьтесь к следующему бою!");
	elseif( id == 30716)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30716,"<Font=arial,0,19,20><color=0xfffcf157>Распорядитель наград доблести:<color=0xffffffff>\\nВам нужно больше стараться, чтобы получить больше наград.");
	end

end

RSLjiajiang = {}
RSLjiajiang["OnTalk"] = OnTalk
RSLjiajiang["OnAcceptQuestTalk"] = OnAcceptQuestTalk
RSLjiajiang["OnCompleteQuestTalk"] = OnCompleteQuestTalk