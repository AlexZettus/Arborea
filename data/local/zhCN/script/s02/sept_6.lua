local function OnTalk()
	Quest.ClearNPCTalkOptions();
	Quest.SetAcceptOptions(9010254);
	Quest.SetCompleteOptions(9010254);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Мэйвард<color=0xffffffff>\\n Труд, труд и еще раз труд! Труд сделал из обезьяны человека, а я сделаю из тебя отличника по этому предмету.");
end

local function OnAcceptQuestTalk(id,step)
    if ( id == 52060) then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(52060,"<Font=arial,0,19,20><color=0xfffcf157>Мэйвард<color=0xffffffff><Font=arial,0,17,20>\\nЧтобы получить у меня пятерку, нужно хорошенько поработать киркой, удочкой и руками на ферме. Копай, лови, выращивай!");
    end
end

local function OnCompleteQuestTalk(id,step)
    if (id == 52060) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(52060,"<Font=arial,0,19,20><color=0xfffcf157>Мэйвард<color=0xffffffff><Font=arial,0,17,20>\\nХорошо потрудился, заслужил свою пятерку!");
	end
end

sept_6 = {}
sept_6["OnTalk"] = OnTalk
sept_6["OnAcceptQuestTalk"] = OnAcceptQuestTalk
sept_6["OnCompleteQuestTalk"] = OnCompleteQuestTalk
sept_6["OnCompleteQuestTalk"] = OnCompleteQuestTalk
