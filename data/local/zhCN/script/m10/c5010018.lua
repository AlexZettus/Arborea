
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --Очистить настройки диалогового окна
	Quest.SetAcceptOptions(5010018);
	Quest.SetCompleteOptions(5010018);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20>Чем выше твой уровень, тем лучше снаряжение ты можешь надеть. Чтобы надеть новое снаряжение, нужно открыть инвентарь и нажать правой кнопкой мыши на выбранном предмете. Чтобы посмотреть на экипировку, которая уже надета на персонажа, нужно нажать кнопку [C] на клавиатуре.");

end


local function OnAcceptQuestTalk(id,step)--Если удалить задание, то его можно будет заново выбрать вручную.
        if( id == 20010)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20010,"<Font=arial,0,19,20>На пустыре за нашей деревней появился предводитель демонов Заркан. Помоги стражам расправиться с ним.");
		elseif( id == 20027)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20027,"<Font=arial,0,19,20>Я договорился с пилотом дирижабля. Можешь отправляться к ней. Она поможет тебе добраться до столицы Теоса - Тарио.");
        end
end


--после выбора меню заданий
local function OnCompleteQuestTalk(id,step)
        if( id == 20009)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20009,"<Font=arial,0,19,20>Спасибо. Мы очень ценим твою помощь. Однако я чувствую, что опасность ещё не миновала.");
		elseif( id == 20010)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20010,"<Font=arial,0,19,20>Храбрость у тебя в крови. За твою помощь я дам тебе бесплатный билет в столицу.");
       end

end

c5010018 = {}
c5010018["OnTalk"] = OnTalk
c5010018["OnAcceptQuestTalk"] = OnAcceptQuestTalk
c5010018["OnCompleteQuestTalk"] = OnCompleteQuestTalk