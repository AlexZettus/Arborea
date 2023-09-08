
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5010094);
	Quest.SetCompleteOptions(5010094);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Фьюми:<color=0xffffffff>\\nЯ повелеваю всеми реками в этом мире! ");

end


local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
        if( id == 20324)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20324,"<Font=arial,0,19,20><color=0xfffcf157>Фьюми:<color=0xffffffff>\\nВ северной части Святого города есть пещера, которую называют Пещерой Льда. Нужно предотвратить там размножение ползучих гадов, чтобы в будущем не получить большие проблемы.");
        elseif( id == 20325)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20325,"<Font=arial,0,19,20><color=0xfffcf157>Фьюми:<color=0xffffffff>\\nСамые опасные в пещере - Дух змеи Дюсам и дух змеи Дюсара! Нам нужно убить этих демонов прямо в их логове!");
        elseif( id == 20326)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20326,"<Font=arial,0,19,20><color=0xfffcf157>Фьюми:<color=0xffffffff>\\nГигантскому медведю Уиллу очень нужна помощь. Я уверена, что вы сможете ему помочь . Но есть одно условие, вы должны быть не менее 42 уровня.");
        end
        if( id == 29019)then
		    Quest.CloseNPCTalk();
						Quest.AcceptQuestTalk(29019,"<Font=arial,0,19,20><color=0xfffcf157>Фьюми:<color=0xffffffff>\\nГолемы в Логове Тьмы в последнее время очень осмелели! Я слышала, что у них новый предводитель - Альтус-пустышка. Убейте его и принесите мне в качестве трофея голову.");
        end
         if( id == 29020)then
			Quest.CloseNPCTalk();
						Quest.AcceptQuestTalk(29020,"<Font=arial,0,19,20><color=0xfffcf157>Фьюми:<color=0xffffffff>\\nРональд-привратник, обитающий в Логове монстров, ненавидит весь род человеческий. Уже очень много народу полягло от его ненависти. Нам нужно остановить его. Принесите мне его голову!");
        end
         if( id == 29021)then
		     Quest.CloseNPCTalk();
						Quest.AcceptQuestTalk(29021,"<Font=arial,0,19,20><color=0xfffcf157>Фьюми：<color=0xffffffff>\\nПожалуйста, убейте обитающего в Логове Тьмы приспешника диктатора Альтру.");
        end
         if( id == 29022)then
		    Quest.CloseNPCTalk();
						Quest.AcceptQuestTalk(29022,"<Font=arial,0,19,20><color=0xfffcf157>Фьюми：<color=0xffffffff>\\nАльд стал диктатором в Логове Тьмы. Если вам удастся победить его，возможно, мир снова придет в эти места.");
         
		end
		if( id == 29025)then
		    Quest.CloseNPCTalk();
						Quest.AcceptQuestTalk(29025,"<Font=arial,0,19,20><color=0xfffcf157>Фьюми：<color=0xffffffff>\\nДемоны в Логове Тьмы в последнее время очень осмелели! Убейте их всех.");

  		end
end


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
        if( id == 20323)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20323,"<Font=arial,0,19,20><color=0xfffcf157>Фьюми:<color=0xffffffff>\\nВам удалось многое сделать на этот раз!");
        elseif( id == 20324)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20324,"<Font=arial,0,19,20><color=0xfffcf157>Фьюми:<color=0xffffffff>\\nМы избавились только от нескольких маленьких голов. Я уверена, что в пещере есть и другие демоны!");
        elseif( id == 20325)then
			Quest.CloseNPCTalk();
			Quest.CompleteQuestTalk(20325,"<Font=arial,0,19,20><color=0xfffcf157>Фьюми：<color=0xffffffff>\\nКто бы мог подумать, что эта злая армия все-таки доберется и до этих мест.");
		    elseif( id == 30338)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30338,"<Font=arial,0,19,20><color=0xfffcf157>Фьюми：<color=0xffffffff>\\nВы оказались гораздо быстрее, чем я ожидала!");

		end
		if( id == 29019)then
			Quest.CloseNPCTalk();
	      	Quest.CompleteQuestTalk(29019,"<Font=arial,0,19,20><color=0xfffcf157>Фьюми：<color=0xffffffff>\\nХорошая работа! Вам это было несложно сделать.");
		end
		if( id == 29020)then
			Quest.CloseNPCTalk();
	      	Quest.CompleteQuestTalk(29020,"<Font=arial,0,19,20><color=0xfffcf157>Фьюми：<color=0xffffffff>\\nХа-ха，все-таки его постигла заслуженная кара.");
		end
		if( id == 29021)then
			Quest.CloseNPCTalk();
			Quest.CompleteQuestTalk(29021,"<Font=arial,0,19,20><color=0xfffcf157>Фьюми：<color=0xffffffff>\\nОчень хорошо! Это еще один шаг к свету.");
		end
		if( id == 29022)then
			Quest.CloseNPCTalk();
	      	Quest.CompleteQuestTalk(29022,"<Font=arial,0,19,20><color=0xfffcf157>Фьюми：<color=0xffffffff>\\nОчень впечатляюще! Я до конца не могу поверить, что мир наконец избавлен от жестокого диктатора! ");
        end
		if( id == 29025)then
			Quest.CloseNPCTalk();
	      	Quest.CompleteQuestTalk(29025,"<Font=arial,0,19,20><color=0xfffcf157>Фьюми：<color=0xffffffff>\\nОчень хорошо! Это еще один шаг к свету.");
		end
end

Rbake = {}
Rbake["OnTalk"] = OnTalk
Rbake["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rbake["OnCompleteQuestTalk"] = OnCompleteQuestTalk