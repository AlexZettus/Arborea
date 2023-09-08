
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --Очистить настройки диалогового окна
	Quest.SetAcceptOptions(5010249);
	Quest.SetCompleteOptions(5010249);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20>После принятия задания ты можешь прочитать его полное описание, если нажмешь кнопку [ Q ] на клавиатуре.");

end


--после выбора меню заданий
local function OnCompleteQuestTalk(id,step)
        if( id == 20026)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20026,"<Font=arial,0,19,20>Поздравляю с получением твоего первого ездового животного.");
       end

end

c5010249 = {}
c5010249["OnTalk"] = OnTalk
c5010249["OnCompleteQuestTalk"] = OnCompleteQuestTalk