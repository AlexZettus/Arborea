
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5010096);
	Quest.SetCompleteOptions(5010096);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Богиня Теа:<color=0xffffffff>\\nМогу я доверять вам?");

end


local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
        if( id == 20331)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20331,"<Font=arial,0,19,20><color=0xfffcf157>Богиня Теа:<color=0xffffffff>\\nЯ здесь собираю пыльцу пикси. Я так устала... Поможете мне?");
        elseif( id == 20332)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20332,"<Font=arial,0,19,20><color=0xfffcf157>Богиня Теа:<color=0xffffffff>\\nЗдесь еще водятся особые пикси-нимфалиды. Поможете мне собрать их пыльцу?");
        elseif( id == 20333)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20333,"<Font=arial,0,19,20><color=0xfffcf157>Богиня Теа:<color=0xffffffff>\\nЯ хочу, чтобы вы сходили в Древний город, что к северу отсюда. Но сначала поднимите свой уровень до 45.");
	elseif( id == 20349)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20349,"<Font=arial,0,19,20><color=0xfffcf157>Богиня Теа:<color=0xffffffff>\\nНефритовый пруд - единственное зеленое место вокруг. Ах, как я хочу видеть цветы и густые леса по всему Северному Сноулэнду...");

        end
end


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
        if( id == 20330)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20330,"<Font=arial,0,19,20><color=0xfffcf157>Богиня Теа:<color=0xffffffff>\\nНаконец хоть кто-то пришел помочь мне!");
        elseif( id == 20331)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20331,"<Font=arial,0,19,20><color=0xfffcf157>Богиня Теа:<color=0xffffffff>\\nКак прекрасно, что вы помогаете мне!");
        elseif( id == 20332)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20332,"<Font=arial,0,19,20><color=0xfffcf157>Богиня Теа:<color=0xffffffff>\\nКак славно! Я вижу, вас ждет успех в будущем!");

       end

end

Rxiya = {}
Rxiya["OnTalk"] = OnTalk
Rxiya["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rxiya["OnCompleteQuestTalk"] = OnCompleteQuestTalk