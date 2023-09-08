
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5010208);
	Quest.SetCompleteOptions(5010208);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Алиси: <color=0xffffffff>\\nМой друг Саул... Где он?");

end


local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
        if( id == 20626)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20626,"<Font=arial,0,19,20><color=0xfffcf157>Алиси: <color=0xffffffff>\\nВы пришли как раз вовремя! У меня есть <C>1</C> пучок <I>кровавой травы</I>. Мне нужен еще <C>1</C> <I>нефритовый цветок</I>, чтобы создать <C>1</C> <I>мощь небесной души</I>. Если вы поможете мне, я раскрою вам один секрет!");
        elseif( id == 20627)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20627,"<Font=arial,0,19,20><color=0xfffcf157>Алиси: <color=0xffffffff>\\nПрежде, чем я раскрою вам этот секрет, пожалуйста, помогите мне преподать урок <A>лавовым ограм</A>. Я всего лишь взял у них немного огня, а они потом весь день гонялись за мной. Вот жадины!");
        elseif( id == 20628)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20628,"<Font=arial,0,19,20><color=0xfffcf157>Алиси: <color=0xffffffff>\\nХорошо. Честно говоря, это не такой уж и большой секрет... <N>Зеленое ущелье</N> давно наводнено <A>лавовыми ограми</A>, а теперь там появилась <color=0xffff0000>душа тысячного камня<color=0xffffffff>. Говорят, что к ее происхождению приложили руку и демоны, и божества. Можете узнать, правда ли это и зачем она здесь?");
	elseif( id == 20629)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20629,"<Font=arial,0,19,20><color=0xfffcf157>Алиси: <color=0xffffffff>\\nВозвращайтесь в <N>Тарио</N> и распросите <D>короля Марса</D>. Посмотрим, что он скажет.");	
	
        end
end


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
        if( id == 20625)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20625,"<Font=arial,0,19,20><color=0xfffcf157>Алиси: <color=0xffffffff>\\nТак Саул жив? Значит, он бежал на юг... Мне казалось, что он давно уже стал обедом для монстров...");
        elseif( id == 20626)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20626,"<Font=arial,0,19,20><color=0xfffcf157>Алиси: <color=0xffffffff>\\nКак быстро! Хорошо. Итак, о моем секрете...");
	elseif( id == 20627)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20627,"<Font=arial,0,19,20><color=0xfffcf157>Алиси: <color=0xffffffff>\\nОтлично! Спасибо, что отомстили им за меня!");
	elseif( id == 20628)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20628,"<Font=arial,0,19,20><color=0xfffcf157>Алиси: <color=0xffffffff>\\nОх, значит, это действительно дело рук божеств и демонов?");
        
	
       end

end

Ryaleis = {}
Ryaleis["OnTalk"] = OnTalk
Ryaleis["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Ryaleis["OnCompleteQuestTalk"] = OnCompleteQuestTalk