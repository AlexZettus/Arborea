
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --Очистить настройки диалогового окна
	Quest.SetAcceptOptions(5010011);
	Quest.SetCompleteOptions(5010011);
	Quest.NPCTalk(0,0,"<Font=arial,0,17,20>Приветствую тебя, " .. Quest.GetPlayerName() .. ". Добро пожаловать в Теос - мир людей, который стал местом столкновения сил Элизиума и Абсолема. Боги Элизиума обещают огромную силу тем людям, которые отважатся сразиться с демонами Абсолема. Выбор за тобой.");

end


local function OnAcceptQuestTalk(id,step)--Если удалить задание, то его можно будет заново выбрать вручную.
        if( id == 20002)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20002,"<Font=arial,0,17,20>\\nВ тренировочном лагере тебя уже ждёт <color=0xff00ddbb>инструктор Гарен.<color=0xffffffff> Он даст тебе на выбор одно из четырёх видов оружия.");
        end
end


--после выбора меню заданий
local function OnCompleteQuestTalk(id,step)
        if( id == 20001)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20001,"<Font=arial,0,17,20>\\nВ этом мире много авантюр и опасностей. Чтобы твоё приключение было интересным, тебе нужно уметь постоять за себя.");
       end

end

yongzhuizhishen = {}
yongzhuizhishen["OnTalk"] = OnTalk
yongzhuizhishen["OnAcceptQuestTalk"] = OnAcceptQuestTalk
yongzhuizhishen["OnCompleteQuestTalk"] = OnCompleteQuestTalk