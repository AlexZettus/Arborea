
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5010011);
	Quest.SetCompleteOptions(5010011);
	Quest.NPCTalk(0,0,"<Font=arial,0,21,20><color=0xfffcf157>Учитель Александра:<color=0xffffffff><Font=arial,0,18,20>\\nПриветствую тебя! Нажми на фразу [Завершить], чтобы сдать задание, и [Принять], чтобы получить его. <D>Квартирмейстер Айла</D> ждет тебя, чтобы выдать твое первое оружие. Она находится в конце красной ковровой дорожки на выходе из храма.");

end


local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
        if( id == 20002)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20002,"<Font=arial,0,21,20><color=0xfffcf157>Учитель Александра:<color=0xffffffff><Font=arial,0,18,20>\\nТеперь тебе нужно взять оружие у <color=0xff00ddbb>квартирмейстера Айлы.<color=0xffffffff> Она ждет на <N>выходе  из храма</N> в конце красной ковровой дорожки. Нажми на кнопку [Принять], чтобы взять задание.");
        end
end


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
        if( id == 20001)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20001,"<Font=arial,0,21,20><color=0xfffcf157>Учитель Александра:<color=0xffffffff><Font=arial,0,18,20>\\nНажми <color=0xffff00ff>Завершить<color=0xffffffff>, чтобы сдать задание и получить вознаграждение.");
       end

end

Rxinshouzhiyin = {}
Rxinshouzhiyin["OnTalk"] = OnTalk
Rxinshouzhiyin["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rxinshouzhiyin["OnCompleteQuestTalk"] = OnCompleteQuestTalk