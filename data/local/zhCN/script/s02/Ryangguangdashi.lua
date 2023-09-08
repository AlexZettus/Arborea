local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --Очистить выбор в окне диалога
	Quest.SetAcceptOptions(5610089);
	Quest.SetCompleteOptions(5610089);
	Quest.NPCTalk(0,0,"<font=Dragon Font,0,19,20><color=0xfffcf157>Посланник Солнца:<color=0xffffffff><font=Dragon Font,0,17,20>\\n План солнца поможет тебе быстрее овладеть системами крови святых или демонов. Все секреты тебе придется выучить самостоятельно. Стать орлом или червяком - зависит только от тебя.");

end


local function OnAcceptQuestTalk(id,step)--Если отменить задание, можно принять его заново вручную.
        if( id == 30888)then
                Quest.CloseNPCTalk();
								Quest.AcceptQuestTalk(30888,"<font=Dragon Font,0,19,20><color=0xfffcf157>Посланник Солнца: <color=0xffffffff><font=Dragon Font,0,17,20>\\n Давай начнем составление солнечного плана!");
        elseif( id == 30889)then
                Quest.CloseNPCTalk();
								Quest.AcceptQuestTalk(30889,"<font=Dragon Font,0,19,20><color=0xfffcf157>Посланник Солнца: <color=0xffffffff><font=Dragon Font,0,17,20>\\n Давай начнем составление солнечного плана!");
        elseif( id == 30890)then
                Quest.CloseNPCTalk();
								Quest.AcceptQuestTalk(30890,"<font=Dragon Font,0,19,20><color=0xfffcf157>Посланник Солнца: <color=0xffffffff><font=Dragon Font,0,17,20>\\n Давай начнем составление солнечного плана!");
        elseif( id == 30891)then
                Quest.CloseNPCTalk();
								Quest.AcceptQuestTalk(30891,"<font=Dragon Font,0,19,20><color=0xfffcf157>Посланник Солнца: <color=0xffffffff><font=Dragon Font,0,17,20>\\n Давай начнем составление солнечного плана!");
        elseif( id == 30892)then
                Quest.CloseNPCTalk();
								Quest.AcceptQuestTalk(30892,"<font=Dragon Font,0,19,20><color=0xfffcf157>Посланник Солнца: <color=0xffffffff><font=Dragon Font,0,17,20>\\n Давай начнем составление солнечного плана!");
        elseif( id == 30893)then
                Quest.CloseNPCTalk();
								Quest.AcceptQuestTalk(30893,"<font=Dragon Font,0,19,20><color=0xfffcf157>Посланник Солнца: <color=0xffffffff><font=Dragon Font,0,17,20>\\n Давай начнем составление солнечного плана!");
        elseif( id == 30894)then
                Quest.CloseNPCTalk();
								Quest.AcceptQuestTalk(30894,"<font=Dragon Font,0,19,20><color=0xfffcf157>Посланник Солнца: <color=0xffffffff><font=Dragon Font,0,17,20>\\n Давай начнем составление солнечного плана!");
        elseif( id == 30895)then
                Quest.CloseNPCTalk();
								Quest.AcceptQuestTalk(30895,"<font=Dragon Font,0,19,20><color=0xfffcf157>Посланник Солнца: <color=0xffffffff><font=Dragon Font,0,17,20>\\n Давай начнем составление солнечного плана!");
        elseif( id == 30896)then
                Quest.CloseNPCTalk();
								Quest.AcceptQuestTalk(30896,"<font=Dragon Font,0,19,20><color=0xfffcf157>Посланник Солнца: <color=0xffffffff><font=Dragon Font,0,17,20>\\n Давай начнем составление солнечного плана!");
        elseif( id == 30897)then
                Quest.CloseNPCTalk();
								Quest.AcceptQuestTalk(30897,"<font=Dragon Font,0,19,20><color=0xfffcf157>Посланник Солнца: <color=0xffffffff><font=Dragon Font,0,17,20>\\n Давай начнем составление солнечного плана!");
        elseif( id == 30898)then
                Quest.CloseNPCTalk();
								Quest.AcceptQuestTalk(30898,"<font=Dragon Font,0,19,20><color=0xfffcf157>Посланник Солнца: <color=0xffffffff><font=Dragon Font,0,17,20>\\n Давай начнем составление солнечного плана!");
        elseif( id == 30899)then
                Quest.CloseNPCTalk();
								Quest.AcceptQuestTalk(30899,"<font=Dragon Font,0,19,20><color=0xfffcf157>Посланник Солнца: <color=0xffffffff><font=Dragon Font,0,17,20>\\n Давай начнем составление солнечного плана!");
        elseif( id == 30900)then
                Quest.CloseNPCTalk();
								Quest.AcceptQuestTalk(30900,"<font=Dragon Font,0,19,20><color=0xfffcf157>Посланник Солнца: <color=0xffffffff><font=Dragon Font,0,17,20>\\n Давай начнем составление солнечного плана!");
        elseif( id == 30901)then
                Quest.CloseNPCTalk();
								Quest.AcceptQuestTalk(30901,"<font=Dragon Font,0,19,20><color=0xfffcf157>Посланник Солнца: <color=0xffffffff><font=Dragon Font,0,17,20>\\n Давай начнем составление солнечного плана!");
        elseif( id == 30902)then
                Quest.CloseNPCTalk();
								Quest.AcceptQuestTalk(30902,"<font=Dragon Font,0,19,20><color=0xfffcf157>Посланник Солнца: <color=0xffffffff><font=Dragon Font,0,17,20>\\n Давай начнем составление солнечного плана!");
        end
end


--Нажать после выбора задания
local function OnCompleteQuestTalk(id,step)
        if( id == 30888)then
              Quest.CloseNPCTalk();
	 			Quest.CompleteQuestTalk(30888,"<font=Dragon Font,0,19,20><color=0xfffcf157>Посланник Солнца: <color=0xffffffff><font=Dragon Font,0,17,20>\\n Поздравляю, тебя ждут великие дела.");
        elseif( id == 30889)then
              Quest.CloseNPCTalk();
	 			Quest.CompleteQuestTalk(30889,"<font=Dragon Font,0,19,20><color=0xfffcf157>Посланник Солнца: <color=0xffffffff><font=Dragon Font,0,17,20>\\n Поздравляю, тебя ждут великие дела.");
        elseif( id == 30890)then
              Quest.CloseNPCTalk();
	 			Quest.CompleteQuestTalk(30890,"<font=Dragon Font,0,19,20><color=0xfffcf157>Посланник Солнца: <color=0xffffffff><font=Dragon Font,0,17,20>\\n Поздравляю, тебя ждут великие дела.");
        elseif( id == 30891)then
              Quest.CloseNPCTalk();
	 			Quest.CompleteQuestTalk(30891,"<font=Dragon Font,0,19,20><color=0xfffcf157>Посланник Солнца: <color=0xffffffff><font=Dragon Font,0,17,20>\\n Поздравляю, тебя ждут великие дела.");
        elseif( id == 30892)then
              Quest.CloseNPCTalk();
	 			Quest.CompleteQuestTalk(30892,"<font=Dragon Font,0,19,20><color=0xfffcf157>Посланник Солнца: <color=0xffffffff><font=Dragon Font,0,17,20>\\n Поздравляю, тебя ждут великие дела.");
        elseif( id == 30893)then
              Quest.CloseNPCTalk();
	 			Quest.CompleteQuestTalk(30893,"<font=Dragon Font,0,19,20><color=0xfffcf157>Посланник Солнца: <color=0xffffffff><font=Dragon Font,0,17,20>\\n Поздравляю, тебя ждут великие дела.");
        elseif( id == 30894)then
              Quest.CloseNPCTalk();
	 			Quest.CompleteQuestTalk(30894,"<font=Dragon Font,0,19,20><color=0xfffcf157>Посланник Солнца: <color=0xffffffff><font=Dragon Font,0,17,20>\\n Поздравляю, тебя ждут великие дела.");
        elseif( id == 30895)then
              Quest.CloseNPCTalk();
	 			Quest.CompleteQuestTalk(30895,"<font=Dragon Font,0,19,20><color=0xfffcf157>Посланник Солнца: <color=0xffffffff><font=Dragon Font,0,17,20>\\n Поздравляю, тебя ждут великие дела.");
        elseif( id == 30896)then
              Quest.CloseNPCTalk();
	 			Quest.CompleteQuestTalk(30896,"<font=Dragon Font,0,19,20><color=0xfffcf157>Посланник Солнца: <color=0xffffffff><font=Dragon Font,0,17,20>\\n Поздравляю, тебя ждут великие дела.");
        elseif( id == 30897)then
              Quest.CloseNPCTalk();
	 			Quest.CompleteQuestTalk(30897,"<font=Dragon Font,0,19,20><color=0xfffcf157>Посланник Солнца: <color=0xffffffff><font=Dragon Font,0,17,20>\\n Поздравляю, тебя ждут великие дела.");
        elseif( id == 30898)then
              Quest.CloseNPCTalk();
	 			Quest.CompleteQuestTalk(30898,"<font=Dragon Font,0,19,20><color=0xfffcf157>Посланник Солнца: <color=0xffffffff><font=Dragon Font,0,17,20>\\n Поздравляю, тебя ждут великие дела.");
        elseif( id == 30899)then
              Quest.CloseNPCTalk();
	 			Quest.CompleteQuestTalk(30899,"<font=Dragon Font,0,19,20><color=0xfffcf157>Посланник Солнца: <color=0xffffffff><font=Dragon Font,0,17,20>\\n Поздравляю, тебя ждут великие дела.");
        elseif( id == 30900)then
              Quest.CloseNPCTalk();
	 			Quest.CompleteQuestTalk(30900,"<font=Dragon Font,0,19,20><color=0xfffcf157>Посланник Солнца: <color=0xffffffff><font=Dragon Font,0,17,20>\\n Поздравляю, тебя ждут великие дела.");
        elseif( id == 30901)then
              Quest.CloseNPCTalk();
	 			Quest.CompleteQuestTalk(30901,"<font=Dragon Font,0,19,20><color=0xfffcf157>Посланник Солнца: <color=0xffffffff><font=Dragon Font,0,17,20>\\n Поздравляю, тебя ждут великие дела.");
        elseif( id == 30902)then
              Quest.CloseNPCTalk();
	 			Quest.CompleteQuestTalk(30902,"<font=Dragon Font,0,19,20><color=0xfffcf157>Посланник Солнца: <color=0xffffffff><font=Dragon Font,0,17,20>\\n Поздравляю, тебя ждут великие дела.");
        end
end

Ryangguangdashi = {}
Ryangguangdashi["OnTalk"] = OnTalk
Ryangguangdashi["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Ryangguangdashi["OnCompleteQuestTalk"] = OnCompleteQuestTalk