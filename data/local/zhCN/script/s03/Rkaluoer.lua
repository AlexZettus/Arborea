
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5010032);
	Quest.SetCompleteOptions(5010032);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Кармен:<color=0xffffffff>\\nВо имя Неба! Вы видели </I>детенышей дракона</I>?  С ними что-то не так!");

end


local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
        if( id == 20104)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20104,"<Font=arial,0,19,20><color=0xfffcf157>Кармен:<color=0xffffffff>\\nЧто здесь творится? Многое изменилось. Похоже, цветки лотоса вокруг озера Призраков стали людоедами! Это ужасно! Пожалуйста, пойдите и уничтожьте несколько лотосов-убийц. Если вы принесете мне несколько мистических лепестков, я лучше смогу понять, что случилось с этими цветами.");
        elseif( id == 20105)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20105,"<Font=arial,0,19,20><color=0xfffcf157>Кармен:<color=0xffffffff>\\nМестные огры внезапно стали доставлять много неприятностей жителям. У меня не получилось внимательно понаблюдать за ними. Не понимаю, что с ними происходит. Помогите мне, пожалуйста. Принесите несколько образцов их лимфы мастеру иллюзий Карине.");

        end
end


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
        if( id == 20104)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20104,"<Font=arial,0,19,20><color=0xfffcf157>Кармен:<color=0xffffffff>\\nЭти мистические лепестки источают аромат смерти! Чувствую, нас ждет нечто ужасное...");
       
     
       end


end

Rkaluoer = {}
Rkaluoer["OnTalk"] = OnTalk
Rkaluoer["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rkaluoer["OnCompleteQuestTalk"] = OnCompleteQuestTalk