
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5010100);
	Quest.SetCompleteOptions(5010100);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Хранитель неба Лан:<color=0xffffffff>\\nМои братья, покойтесь с миром...");

end


local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
        if( id == 20341)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20341,"<Font=arial,0,19,20><color=0xfffcf157>Хранитель неба Лан:<color=0xffffffff>\\nНа хранителей неба напали демоны и поработили их, и только мне повезло избежать этой участи. Мои братья стали частью демонов и несут теперь угрозу миру людей. Нельзя допустить, чтобы небожители вредили людям...");
        elseif( id == 20342)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20342,"<Font=arial,0,19,20><color=0xfffcf157>Хранитель неба Лан:<color=0xffffffff>\\nК югу отсюда демоны, одни только демоны... Прошу вас, пойдите и убейте их!");
        elseif( id == 20343)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20343,"<Font=arial,0,19,20><color=0xfffcf157>Хранитель неба Лан:<color=0xffffffff>\\nМы собирались напасть на демонов и уничтожить их возле Северного Караула на юге, но встретили яростное сопротивление уже на полпути. Пожалуйста, пойдите туда и выполните то, что мы не успели.");
        elseif( id == 20344)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20344,"<Font=arial,0,19,20><color=0xfffcf157>Хранитель неба Лан:<color=0xffffffff>\\nОтлично! Вы сможете вернуться, когда достигнете 50 уровня.");     
        end
end


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
        if( id == 20340)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20340,"<Font=arial,0,19,20><color=0xfffcf157>Хранитель неба Лан:<color=0xffffffff>\\nБез вашей помощи я сам ничего не смогу!");
        elseif( id == 20341)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20341,"<Font=arial,0,19,20><color=0xfffcf157>Хранитель неба Лан:<color=0xffffffff>\\nСпасибо!");   
        elseif( id == 20342)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20342,"<Font=arial,0,19,20><color=0xfffcf157>Хранитель неба Лан:<color=0xffffffff>\\nВы великолепны!"); 
        elseif( id == 20343)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20343,"<Font=arial,0,19,20><color=0xfffcf157>Хранитель неба Лан:<color=0xffffffff>\\nЗадание выполнено успешно!"); 	      
       end

end

Ryien = {}
Ryien["OnTalk"] = OnTalk
Ryien["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Ryien["OnCompleteQuestTalk"] = OnCompleteQuestTalk