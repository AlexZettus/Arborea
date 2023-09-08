
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5010207);
	Quest.SetCompleteOptions(5010207);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Саул: <color=0xffffffff>\\nМой меч - мой лучший друг!");

end


local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
        if( id == 20622)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20622,"<Font=arial,0,19,20><color=0xfffcf157>Саул: <color=0xffffffff>\\nЯ боюсь небожителей. Зачем вы ко мне пришли?");
        elseif( id == 20623)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20623,"<Font=arial,0,19,20><color=0xfffcf157>Саул: <color=0xffffffff>\\nНа Горе Смерти множество <A>жрецов-зомби</A>. Их становится все больше, потому что они превращают своих жертв в себе подобных. Пожалуйста, помогите мне расправиться с ними!");
        elseif( id == 20624)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20624,"<Font=arial,0,19,20><color=0xfffcf157>Саул: <color=0xffffffff>\\nПринесите мне <I>черепа</I> главарей зомби, которых можно найти на <N>Склоне веселой горы</N>. Надеюсь, что не последний раз вижу вас...");
	elseif( id == 20625)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20625,"<Font=arial,0,19,20><color=0xfffcf157>Саул: <color=0xffffffff>\\n<D>Алиси</D> - мой лучший друг. Он поднялся на <N>Террасу медного дракона</N>. Пожалуйста, если увидите его там, передайте ему привет от меня!");	
	
        end
end


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
        if( id == 20621)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20621,"<Font=arial,0,19,20><color=0xfffcf157>Саул: <color=0xffffffff>\\nНебожитель? Вы пришли, чтобы помочь секте жрецов?");
        elseif( id == 20622)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20622,"<Font=arial,0,19,20><color=0xfffcf157>Саул: <color=0xffffffff>\\nТак вы пришли сюда помочь мне? Спасибо вам большое!");
	elseif( id == 20623)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20623,"<Font=arial,0,19,20><color=0xfffcf157>Саул: <color=0xffffffff>\\nУ меня есть еще работка для вас. Дело в том, что...");
	elseif( id == 20624)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20624,"<Font=arial,0,19,20><color=0xfffcf157>Саул: <color=0xffffffff>\\nВпервые вижу такого сильного небесного рыцаря! ");
        
  elseif( id == 30347)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30347,"<Font=arial,0,19,20><color=0xfffcf157>Саул:<color=0xffffffff>\\nВы, оказывается, намного быстрее, чем я мог себе представить.");

		  
       end

end

Rsuoer = {}
Rsuoer["OnTalk"] = OnTalk
Rsuoer["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rsuoer["OnCompleteQuestTalk"] = OnCompleteQuestTalk