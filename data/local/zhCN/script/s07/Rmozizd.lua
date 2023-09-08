
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5010203);
	Quest.SetCompleteOptions(5010203);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Дочь дьявола Зефф: <color=0xffffffff>\\nМожете звать меня просто Зефф, небожитель!");

end


local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
        if( id == 20517)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20517,"<Font=arial,0,19,20><color=0xfffcf157>Дочь дьявола Зефф: <color=0xffffffff>\\nПосмотрите-ка, что прислал Зефф Монат! Эти сокровища можно зачаровать нашей демонической силой, и в то же время они могут убить нас. Мне нравится недоумение на вашем лице! Покажите, что у вас есть!");
        elseif( id == 20518)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20518,"<Font=arial,0,19,20><color=0xfffcf157>Дочь дьявола Зефф: <color=0xffffffff>\\nЕсли вы достанете <I>символ небесного бога</I> у <color=0xffff6000>искаженного дикаря-посыльного<color=0xffffffff> неподалеку, я изменю отношение к вам.");
        elseif( id == 20519)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20519,"<Font=arial,0,19,20><color=0xfffcf157>Дочь дьявола Зефф: <color=0xffffffff>\\nЯ уничтожу всех приспешников! <color=0xffff0000>Королева дементоров<color=0xffffffff> ваша!");
	elseif( id == 20520)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20520,"<Font=arial,0,19,20><color=0xfffcf157>Дочь дьявола Зефф: <color=0xffffffff>\\nМой брат уже давно хочет расквитаться за все с кланом жрецов. Он должен быть где-то на Болоте Слез. Идите и найдите его, когда поднимете свой уровень до <C>78</C>. Как доказательство своих способностей принесите ему <C>20</C> <I>сердец главных потрошителей</I> . Он весьма суров с незнакомцами!");
	
        end
end


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
        if( id == 20516)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20516,"<Font=arial,0,19,20><color=0xfffcf157>Дочь дьявола Зефф: <color=0xffffffff>\\nВы сошли с ума? Хотите узнать, чем пахнет мой кулак?");
        elseif( id == 20517)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20517,"<Font=arial,0,19,20><color=0xfffcf157>Дочь дьявола Зефф: <color=0xffffffff>\\nХорошо! А вы мне начинаете нравиться. Говорите, жрецы подвергли своему влиянию другие племена с помощью божественных предметов, чтобы нанести нам вред? Какое чудное предположение...");
	elseif( id == 20518)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20518,"<Font=arial,0,19,20><color=0xfffcf157>Дочь дьявола Зефф: <color=0xffffffff>\\nОх, как долго я жду настоящего сражения!");
	elseif( id == 20519)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20519,"<Font=arial,0,19,20><color=0xfffcf157>Дочь дьявола Зефф: <color=0xffffffff>\\nКак насчет прогулки? Я давно жду вас!");
  elseif( id == 30345)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30345,"<Font=arial,0,19,20><color=0xfffcf157>Дочь дьявола Зефф：<color=0xffffffff>\\nЯ вы, оказывается, намного быстрее, чем я думала.");

       end

end

Rmozizd = {}
Rmozizd["OnTalk"] = OnTalk
Rmozizd["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rmozizd["OnCompleteQuestTalk"] = OnCompleteQuestTalk