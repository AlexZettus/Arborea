
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5513018);
	Quest.SetCompleteOptions(5513018);
	Quest.NPCTalk(0,0,"На этот раз выкупи побольше, и награда будет побольше.");
end

--如果删除任务，可重新手动接取
local function OnAcceptQuestTalk(id,step)
        if( id == 30800)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30800,"Признай божественную идею, станешь Защитником небес, Бог призовет тебя.");
        elseif( id == 30801)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30801,"Ты почему один ходишь? Неужели тебе не одиноко？Быстрее отправляйся и создай семью, подружись с большим количеством людей, мир открыт для тебя.");
        elseif( id == 30802)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30802,"Ты хочешь заполучить способность воскрешения? Нужно найти вторую половинку и жениться на ней, из неё сделай Хилера.");
        elseif( id == 30803)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30803,"Помню о твоей мечте，сейчас ты очень слаб. Найди гонца, он тебя проводит.");
        elseif( id == 30804)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30804,"После того как вы закончили очередной этап, я награждаю тебя деньгами.");
        elseif( id == 30805)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30805,"Обучение только начинается, с полученным опытом заверши задачи, поставленные перед тобой!");
        elseif( id == 30806)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30806,"Продолжай набираться опыта, смело переходи к следующей стадии.");
        elseif( id == 30807)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30807,"Продолжай набираться опыта, смело переходи к следующей стадии.");
        elseif( id == 30808)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30808,"Продолжай набираться опыта, смело переходи к следующей стадии.");
        elseif( id == 30809)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30809,"Продолжай набираться опыта, смело переходи к следующей стадии.");
        elseif( id == 30810)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30810,"Продолжай набираться опыта, смело переходи к следующей стадии.");
        elseif( id == 30811)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30811,"Продолжай набираться опыта, смело переходи к следующей стадии.");
        elseif( id == 30812)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30812,"Продолжай набираться опыта, смело переходи к следующей стадии.");
        elseif( id == 30813)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30813,"Продолжай набираться опыта, смело переходи к следующей стадии.");
        elseif( id == 30814)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30814,"Говорят, что кто-то смог пройти это испытание...");
        end
end


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
        if( id == 30800)then
	      		Quest.CloseNPCTalk();
	      		Quest.CompleteQuestTalk(30800,"Все понятно, это желание духов.");
				elseif( id == 30801)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30801,"Семья - это самая сильная и могучая организация, быстрее создай свою собстенную семью или вступи в какюу-либо семью!");
				elseif( id == 30802)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30802,"Быстрее оправляйся на поиски своей второй половинки!");
        elseif( id == 30803)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30803,"Уже нашли его? Верю, что в будущем он сможет оказать вам помощь.");
        elseif( id == 30804)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30804,"Продолжай накапливать опыт, в будущем будешь награжден.");
        elseif( id == 30805)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30805,"Надо иметь в виду, что ты только-только прошел одну десятую часть испытаний...");
       elseif( id == 30806)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30806,"Продолжай набираться опыта, смело переходи к следующей стадии.");
       elseif( id == 30807)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30807,"Продолжай набираться опыта, смело переходи к следующей стадии.");
       elseif( id == 30808)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30808,"Продолжай набираться опыта, смело переходи к следующей стадии.");
       elseif( id == 30809)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30809,"Продолжай набираться опыта, смело переходи к следующей стадии.");
       elseif( id == 30810)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30810,"Продолжай набираться опыта, смело переходи к следующей стадии.");
       elseif( id == 30811)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30811,"Продолжай набираться опыта, смело переходи к следующей стадии.");
       elseif( id == 30812)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30812,"Продолжай набираться опыта, смело переходи к следующей стадии.");
       elseif( id == 30813)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30813,"Продолжай набираться опыта, смело переходи к следующей стадии.");
       elseif( id == 30814)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(30814,"Говорят, что кто-то смог пройти это испытание...");
       end
end

Rhuigouzhiyin = {}
Rhuigouzhiyin["OnTalk"] = OnTalk
Rhuigouzhiyin["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rhuigouzhiyin["OnCompleteQuestTalk"] = OnCompleteQuestTalk