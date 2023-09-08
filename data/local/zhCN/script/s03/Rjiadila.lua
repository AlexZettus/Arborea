
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5010022);
	Quest.SetCompleteOptions(5010022);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Грибник:<color=0xffffffff><Font=arial,0,17,20>\\nПризовите <I>эльфа</I>, чтобы он получал часть вашего опыта и развивался. При этом он будет увеличивать свой уровень, расти и  приобретать уникальные способности.");

end


local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
        if( id == 40003)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(40003,"<Font=arial,0,19,20><color=0xfffcf157>Грибник:<color=0xffffffff><Font=arial,0,17,20>\\n<N>Параметры</N> эльфа - крайне важная вещь. Определенные параметры растут в зависимости от типа эльфа.\\nКогда ваш эльф достигнет <C>10</C> уровня, вы можете поговорить в <N>Тарио</N> с <D>эмиссаром душ Феной</D>. Она расскажет вам об эльфах подробнее.");


        end
end


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
        if( id == 40002)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(40002,"<Font=arial,0,19,20><color=0xfffcf157>Грибник:<color=0xffffffff><Font=arial,0,17,20>\\nПризовите <I>эльфа</I>, чтобы он получал часть  вашего опыта и развивался. Затем вы сможете увеличивать его силу и уровень.\\nВам также поможет <I>пыльца эльфа</I> для увеличения его уровня. Чем выше уровень этой пыльцы, тем больше очков опыта получит ваш эльф. Воспользуйтесь панелью параметров эльфа.\\nЯ дам вам бесплатно немного <I>пыльцы эльфа</I>.");

        elseif( id == 20216)then
					if( step == QuestTalkBegin )then
						Quest.ClearNPCTalkOptions();
						Quest.SetNPCTalkOption( EOT_CompleteQuest,20216,QuestTalkBegin+1,"Вы не находили поблизости игрушку Рори?" );
						Quest.NPCTalk(0,0,"Привет. Чем я могу тебе помочь?");	        
					elseif( step == QuestTalkBegin+1 )then
						Quest.UpdateQuest(20216);
					end
       end


end

Rjiadila = {}
Rjiadila["OnTalk"] = OnTalk
Rjiadila["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rjiadila["OnCompleteQuestTalk"] = OnCompleteQuestTalk