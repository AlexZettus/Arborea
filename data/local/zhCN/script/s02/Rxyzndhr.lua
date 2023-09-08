
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5610045);
	Quest.SetCompleteOptions(5610045);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Маргарита<color=0xffffffff><Font=arial,0,17,20>\\nВы можете обменять Знак веры и Серебряные наставления на Серебряный·знак веры\\n<I>Знак веры</I>*<C>1</C>+<I>Серебряные наставления</I>*<C>1</C>=<I>Серебряный знак веры</I>*<C>1</C>\\n<I>Знак веры</I>*<C>5</C>+<I>Серебряные наставления</I>*<C>5</C>=<I>Серебряный знак веры</I>*<C>5</C>\\n<I>Знак веры</I>*<C>50</C>+<I>Серебряные наставления</I>*<C>50</C>=<I>Серебряный знак веры</I>*<C>50</C>\\n<I>Знак веры</I>*<C>100</C>+<I>Серебряные наставления</I>*<C>100</C>=<I>Серебряный знак веры</I>*<C>100</C>");

end


local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
        if( id == 30366)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30366,"<Font=arial,0,19,20><color=0xfffcf157>Маргарита<color=0xffffffff><Font=arial,0,17,20>\\nПринесите мне Знак веры и Серебряные наставления, и я дам вам то, что вы хотите.");
        elseif( id == 30367)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30367,"<Font=arial,0,19,20><color=0xfffcf157>Маргарита<color=0xffffffff><Font=arial,0,17,20>\\nПринесите мне Знак веры и Серебряные наставления, и я дам вам то, что вы хотите.");
        elseif( id == 30368)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30368,"<Font=arial,0,19,20><color=0xfffcf157>Маргарита<color=0xffffffff><Font=arial,0,17,20>\\nПринесите мне Знак веры и Серебряные наставления, и я дам вам то, что вы хотите.");
         elseif( id == 30369)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30369,"<Font=arial,0,19,20><color=0xfffcf157>Маргарита<color=0xffffffff><Font=arial,0,17,20>\\nПринесите мне Знак веры и Серебряные наставления, и я дам вам то, что вы хотите.");

        end
end


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
        if( id == 30366)then
	      Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30366,"<Font=arial,0,19,20><color=0xfffcf157>Маргарита<color=0xffffffff><Font=arial,0,17,20>\\nКогда захотите совершить обмен, приходите ко мне.");
	elseif( id == 30367)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30367,"<Font=arial,0,19,20><color=0xfffcf157>Маргарита<color=0xffffffff><Font=arial,0,17,20>\\nКогда захотите совершить обмен, приходите ко мне.");
        elseif( id == 30368)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30368,"<Font=arial,0,19,20><color=0xfffcf157>Маргарита<color=0xffffffff><Font=arial,0,17,20>\\nКогда захотите совершить обмен, приходите ко мне.");
      elseif( id == 30369)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30369,"<Font=arial,0,19,20><color=0xfffcf157>Маргарита<color=0xffffffff><Font=arial,0,17,20>\\nКогда захотите совершить обмен, приходите ко мне.");

       end


end

Rxyzndhr = {}
Rxyzndhr["OnTalk"] = OnTalk
Rxyzndhr["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rxyzndhr["OnCompleteQuestTalk"] = OnCompleteQuestTalk