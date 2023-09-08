
--NPCid:5510608

local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --Очистить настройки диалогового окна
	Quest.SetAcceptOptions(5510608);
	Quest.SetCompleteOptions(5510608);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Розали：<color=0xffffffff><Font=arial,0,17,20>\\nЯ отвечаю за охрану этого места. Это единственная дорога к Тарио, поэтому нельзя проявлять небрежность.");

end


local function OnAcceptQuestTalk(id,step)--Если удалить задание, то его можно будет заново взять вручную.
	if( id == 20017)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20017,"<Font=arial,0,19,20><color=0xfffcf157>Розали：<color=0xffffffff><Font=arial,0,17,20>\\nПовысь свой уровень до <A>10-го</A>, чтобы отправиться в Тарио.");
        elseif( id == 20018)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20018,"<Font=arial,0,19,20><color=0xfffcf157>Розали：<color=0xffffffff><Font=arial,0,17,20>\\nТы можешь направится к <N>порталу</N>. Войдя в портал, ты сможешь отправиться в <N>Тарио</N>. После этого, мы, возможно, больше не увидемся снова. Надеюсь, ты добьешься еще больших успехов. Когда достигнешь <color=0xffff0000>20 уровня<color=0xffffffff>, если пройдешь задание на получение класса, то сможешь стать настоящим воином.\\nПосле того, как доберешься до Тарио, найди Синиду, она даст тебе дальнейшие указания.");
        end
end


--после выбора меню заданий
local function OnCompleteQuestTalk(id,step)
	if( id == 20016)then
		if( step == QuestTalkBegin )then
			Quest.ClearNPCTalkOptions();
			Quest.SetNPCTalkOption( EOT_CompleteQuest,20016,QuestTalkBegin+1,"Клавиша “K” [Правильный ответ]" );
			Quest.SetNPCTalkOption( EOT_CompleteQuest,20016,QuestTalkBegin+2,"Клавиша “V”" );
			Quest.SetNPCTalkOption( EOT_CompleteQuest,20016,QuestTalkBegin+3,"Клавиша “P”" );
			Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Розали：<color=0xffffffff><Font=arial,0,17,20>\\nПервый вопрос：Горячая клавиша для навыков？");


		elseif( step == QuestTalkBegin+1 )then
			Quest.ClearNPCTalkOptions();
			Quest.SetNPCTalkOption( EOT_CompleteQuest,20016,QuestTalkBegin+4,"Клавиша “F” [Правильный ответ]" );
			Quest.SetNPCTalkOption( EOT_CompleteQuest,20016,QuestTalkBegin+5,"Клавиша “Q”" );
			Quest.SetNPCTalkOption( EOT_CompleteQuest,20016,QuestTalkBegin+6,"Клавиша “H”" );
			Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Розали：<color=0xffffffff><Font=arial,0,17,20>\\nВторой вопрос： Горячая клавиша для открытия списка друзей？");

		elseif( step == QuestTalkBegin+4 )then
			Quest.ClearNPCTalkOptions();
			Quest.SetNPCTalkOption( EOT_CompleteQuest,20016,QuestTalkBegin+7,"Дух" );
			Quest.SetNPCTalkOption( EOT_CompleteQuest,20016,QuestTalkBegin+8,"Сила [Правильный ответ]" );
			Quest.SetNPCTalkOption( EOT_CompleteQuest,20016,QuestTalkBegin+9,"Сложение" );
			Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Розали：<color=0xffffffff><Font=arial,0,17,20>\\nТретий вопрос： Увеличивая какой атрибут, персонаж усиливает физическую атаку？");


		elseif( step == (QuestTalkBegin+2))then
			Quest.ClearNPCTalkOptions();
			Quest.SetNPCTalkOption( EOT_CompleteQuest,20016,QuestTalkBegin,"Верно" );
			Quest.NPCTalk(0,0,"Ответ неверный, пожалуйста, подумайте получше");
		elseif( step == (QuestTalkBegin+3))then
			Quest.ClearNPCTalkOptions();
		  	Quest.SetNPCTalkOption( EOT_CompleteQuest,20016,QuestTalkBegin,"Верно" );
			Quest.NPCTalk(0,0,"Ответ неверный, пожалуйста, подумайте получше");
		elseif( step == (QuestTalkBegin+5))then
			Quest.ClearNPCTalkOptions();
		  	Quest.SetNPCTalkOption( EOT_CompleteQuest,20016,QuestTalkBegin,"Верно" );
			Quest.NPCTalk(0,0,"Ответ неверный, пожалуйста, подумайте получше");
		elseif( step == (QuestTalkBegin+6))then
			Quest.ClearNPCTalkOptions();
		  	Quest.SetNPCTalkOption( EOT_CompleteQuest,20016,QuestTalkBegin,"Верно" );
			Quest.NPCTalk(0,0,"Ответ неверный, пожалуйста, подумайте получше");
		elseif( step == (QuestTalkBegin+7))then
			Quest.ClearNPCTalkOptions();
		  	Quest.SetNPCTalkOption( EOT_CompleteQuest,20016,QuestTalkBegin,"Верно" );
			Quest.NPCTalk(0,0,"Ответ неверный, пожалуйста, подумайте получше");
		elseif( step == (QuestTalkBegin+9))then
			Quest.ClearNPCTalkOptions();
		  	Quest.SetNPCTalkOption( EOT_CompleteQuest,20016,QuestTalkBegin,"Верно" );
			Quest.NPCTalk(0,0,"Ответ неверный, пожалуйста, подумайте получше");
		elseif( step == QuestTalkBegin+8 )then
			Quest.CloseNPCTalk();
			Quest.CompleteQuestTalk(20016,"<Font=arial,0,19,20><color=0xfffcf157>Розали：<color=0xffffffff><Font=arial,0,17,20>\\nА ты молодец! В этот раз кандидатов, прошедших испытание, можно по пальцам перечесть. Ты можешь показать свои таланты, для этого тебе надо продолжать упорно совершенствоваться! Когда получишь снаряжение, которое лучше, чем твое, не забудь его надеть, это может значительно повысить твою силу. Помни, снаряжение по качеству делится на белое, <color=0xffffff00>желтое<color=0xffffffff>, <color=0xff05ff00>зеленое<color=0xffffffff>, <color=0xff00a2ff>синее<color=0xffffffff>, <color=0xffffae00>оранжевое<color=0xffffffff>, <color=0xff9933ff>фиолетовое<color=0xffffffff> и <color=0xffff69b4>розовое<color=0xffffffff>!");
		end
        elseif( id == 20017)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20017,"<Font=arial,0,19,20><color=0xfffcf157>Розали：<color=0xffffffff><Font=arial,0,17,20>\\nЯ вижу, что ты отлично справляешься. Я как раз приготовила для тебя небольшой презент, чтобы будущие сражения не вызывали у тебя больших трудностей.");
       end

end

luosite = {}
luosite["OnTalk"] = OnTalk
luosite["OnAcceptQuestTalk"] = OnAcceptQuestTalk
luosite["OnCompleteQuestTalk"] = OnCompleteQuestTalk