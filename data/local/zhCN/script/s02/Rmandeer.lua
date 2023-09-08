
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5010196);
	Quest.SetCompleteOptions(5010196);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Офицер Адель:<color=0xffffffff>\\nЧтобы сменить класс, тебе нужны специальные предметы. Приходи ко мне после того, как выполнишь необходимые условия для изменения класса.");

end


local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
        if( id == 41001)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(41001,"<Font=arial,0,19,20><color=0xfffcf157>Офицер Адель:<color=0xffffffff>\\nДействительно хочешь быть воином?");
        elseif( id == 41002)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(41002,"<Font=arial,0,19,20><color=0xfffcf157>Офицер Адель:<color=0xffffffff>\\nДействительно хочешь быть стрелком?");
	elseif( id == 41004)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(41004,"<Font=arial,0,19,20><color=0xfffcf157>Офицер Адель:<color=0xffffffff>\\nДействительно хочешь быть бардом?");
        elseif( id == 41003)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(41003,"<Font=arial,0,19,20><color=0xfffcf157>Офицер Адель:<color=0xffffffff>\\nДействительно хочешь быть магом?");
		elseif( id == 40057)then
        Quest.CloseNPCTalk();
				Quest.AcceptQuestTalk(40057,"<Font=arial,0,19,20><color=0xfffcf157>Офицер Адель：<color=0xffffffff>\\nТолько божества, достигшие 20 уровня, могут действительно считаться богами. Поговори с властительницей трех миров Леонорой. Она расскажет, как следует дальше развиваться.");
		end
end


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
        if( id == 41000)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(41000,"<Font=arial,0,19,20><color=0xfffcf157>Офицер Адель:<color=0xffffffff>\\nВыбери <I>контракт наемника</I> своего класса и иди к королю Марсу за дальнейшими инструкциями. Ещё нужно найти <D>духов оружия</D>, чтобы выбрать себе класс.\\n<color=0xffff00ff>Контракт наемника не будет аннулирован.У тебя есть только один шанс для выбора класса. Подумай, прежде чем примешь решение.<color=0xffffffff>");
       end

end

Rmandeer = {}
Rmandeer["OnTalk"] = OnTalk
Rmandeer["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rmandeer["OnCompleteQuestTalk"] = OnCompleteQuestTalk