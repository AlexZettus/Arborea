
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --Очистить настройки диалогового окна
	Quest.SetAcceptOptions(5010013);
	Quest.SetCompleteOptions(5010013);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20>Есть задания, в которых тебе не потребуется убивать монстров. Целью таких заданий может быть доставка сведений, исследование территории, открытие замков и сбор ресурсов.");

end


local function OnAcceptQuestTalk(id,step)--Если удалить задание, то его можно будет заново выбрать вручную.
        if( id == 20004)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20004,"<Font=arial,0,19,20>Помоги мне собрать несколько кувшинок на озере. Мой друг собирается приготовить из них несколько магических зелий для жителей заставы. В будущем и ты сможешь научиться готовить различные снадобья и блюда, если захочешь.");
        end
end


--после выбора меню заданий
local function OnCompleteQuestTalk(id,step)
        if( id == 20003)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20003,"<Font=arial,0,19,20>Спасибо за помощь. Теперь дикие шершни хотя бы какое-то время не будут нас донимать.");

       end

end

suoer = {}
suoer["OnTalk"] = OnTalk
suoer["OnAcceptQuestTalk"] = OnAcceptQuestTalk
suoer["OnCompleteQuestTalk"] = OnCompleteQuestTalk