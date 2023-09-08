local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --Очистить выбор в окне диалога
	Quest.SetAcceptOptions(5600066);
	Quest.SetCompleteOptions(5600066);
	Quest.NPCTalk(0,0,"<font= Dragon Font,0,19,20><color=0xfffcf157>Лунная дева: <color=0xffffffff><font= Dragon Font,0,17,20>\\n Я много лет была заточена в своем Лунном дворце и не думала о том, что попаду сюда. Здесь так вкусно пахнет, а я так голодна. Кто приготовит мне еды...");

end


local function OnAcceptQuestTalk(id,step)--Если отменить задание, можно принять его заново вручную.
        if( id == 30826)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30826,"<font=Dragon Font,0,19,20><color=0xfffcf157>Лунная дева: <color=0xffffffff><font=Dragon Font,0,17,20>\\n Чтобы приготовить жареное мясо, нужно 50 кусков свинины, 50 куриных крылышек и 10 перчиков чили, у тебя есть все для готовки?");
        elseif( id == 30827)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30827,"<font=Dragon Font,0,19,20><color=0xfffcf157>Лунная дева: <color=0xffffffff><font=Dragon Font,0,17,20>\\n Как я хочу есть, запах просто сводит с ума. Ты дашь мне поесть?");
        elseif( id == 30828)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30828,"<font=Dragon Font,0,19,20><color=0xfffcf157>Лунная дева: <color=0xffffffff><font=Dragon Font,0,17,20>\\n Острее! Еще острее! Я привыкла перчить так, чтобы слезы из глаз лились! У тебя есть еще 20 перчиков чили для меня?");
        elseif( id == 30830)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30830,"<font=Dragon Font,0,19,20><color=0xfffcf157>Лунная дева: <color=0xffffffff><font=Dragon Font,0,17,20>\\n Не думала, что жареное мясо так вкусно пахнет. Нет я не могу уйти с пустыми руками. Скорее неси сюда еду. Перца больше не нужно, а то я лопну.");
        end
end


--Нажать после выбора задания
local function OnCompleteQuestTalk(id,step)
        if( id == 30826)then
              Quest.CloseNPCTalk();
	 Quest.CompleteQuestTalk(30826,"<font=Dragon Font,0,19,20><color=0xfffcf157>Лунная дева: <color=0xffffffff><font=Dragon Font,0,17,20>\\n Пир в честь праздника осени удался!");
        elseif( id == 30827)then
              Quest.CloseNPCTalk();
	 Quest.CompleteQuestTalk(30827,"<font=Dragon Font,0,19,20><color=0xfffcf157>Лунная дева: <color=0xffffffff><font=Dragon Font,0,17,20>\\n Мне... очень неудобно...~");
        elseif( id == 30828)then
              Quest.CloseNPCTalk();
	 Quest.CompleteQuestTalk(30828,"<font=Dragon Font,0,19,20><color=0xfffcf157>Лунная дева: <color=0xffffffff><font=Dragon Font,0,17,20>\\n Тебе удалось найти 20 перчиков чили так быстро! ");
        elseif( id == 30830)then
              Quest.CloseNPCTalk();
	 Quest.CompleteQuestTalk(30830,"<font=Dragon Font,0,19,20><color=0xfffcf157>Лунная дева: <color=0xffffffff><font=Dragon Font,0,17,20>\\n Пока не хватает...");
       end
end

Rchange = {}
Rchange["OnTalk"] = OnTalk
Rchange["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rchange["OnCompleteQuestTalk"] = OnCompleteQuestTalk