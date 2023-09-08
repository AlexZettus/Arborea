local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --Очистить выбор в окне диалога
	Quest.SetAcceptOptions(5600071);
	Quest.SetCompleteOptions(5600071);
	Quest.NPCTalk(0,0,"<font=Dragon Font,0,19,20><color=0xfffcf157>Дух луны: <color=0xffffffff><font=Dragon Font,0,17,20>\\n Когда-то это место дышало покоем...");
end


local function OnAcceptQuestTalk(id,step)--Если отменить задание, можно принять его заново вручную.
	if( id == 30829)then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30829,"<font=Dragon Font,0,19,20><color=0xfffcf157> Дух луны: <color=0xffffffff><font=Dragon Font,0,17,20>\\n Найди разбросанные здесь обломки лунного камня. Говорят, эти предметы можно найти у прячущихся в статуях дриад.");
	end
end


--Нажать после выбора задания
local function OnCompleteQuestTalk(id,step)
	if( id == 30829)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30829,"<font=Dragon Font,0,19,20><color=0xfffcf157> Дух луны: <color=0xffffffff><font=Dragon Font,0,17,20>\\n Ты не можешь подвести ожидания народа!");
	end
end

Ryaoyuexianzi = {}
Ryaoyuexianzi["OnTalk"] = OnTalk
Ryaoyuexianzi["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Ryaoyuexianzi["OnCompleteQuestTalk"] = OnCompleteQuestTalk