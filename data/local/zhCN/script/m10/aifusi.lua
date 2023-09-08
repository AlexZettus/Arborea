
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --Очистить настройки диалогового окна
	Quest.SetAcceptOptions(5010012);
	Quest.SetCompleteOptions(5010012);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20>В игре есть 4 вида оружия. Физический урон наносят копье и лук. Магический урон наносят артефакт и лира. Когда ты выберешь класс, сможешь применять только одно оружие и его навыки, а сейчас ты можешь попробовать использовать любое оружие.");

end


local function OnAcceptQuestTalk(id,step)--Если удалить задание, то его можно будет заново выбрать вручную.
        if( id == 20003)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20003,"<Font=arial,0,19,20>Через этот лес наши товарищи доставляют нам провизию и лечебные снадобья. Частенько путь через лес преграждают дикие <color=0xffffe289>шершни<color=0xffffffff>. Убей несколько особей, чтобы отпугнуть их рой от дороги.");
        end
end


--после выбора меню заданий
local function OnCompleteQuestTalk(id,step)
        if( id == 20002)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20002,"<Font=arial,0,19,20>Внизу ты можешь увидеть 4 квадратных иконки. Нажми на одну из них левой кнопкой мыши, чтобы выбрать желаемое оружие. После завершения этого задания ты сможешь испытать его в бою.");
       end

end

aifusi = {}
aifusi["OnTalk"] = OnTalk
aifusi["OnAcceptQuestTalk"] = OnAcceptQuestTalk
aifusi["OnCompleteQuestTalk"] = OnCompleteQuestTalk