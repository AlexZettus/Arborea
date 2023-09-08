local function OnTalk()
	Quest.ClearNPCTalkOptions();
	Quest.SetAcceptOptions(9010236);
	Quest.SetCompleteOptions(9010236);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Оливия<color=0xffffffff>\\nОтправляйтесь на Гору смерти (если уровень 80-99) или в Сумеречную пустошь (если уровень 100-110), чтобы получить при убийстве монстров Пропуск исследователя. Получив пропуск, отправляйтесь в Тарио (606 538), чтобы отправиться в подземелье Лагерь испытаний. Там вам предстоит убивать волны монстров, пока не появится босс. Убив босса, возвращайтесь к Оливии (Тарио, 624 538) за наградой.");
end

local function OnAcceptQuestTalk(id,step)
    if ( id == 52054) then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(52054,"<Font=arial,0,19,20><color=0xfffcf157>Оливия<color=0xffffffff><Font=arial,0,17,20>\\nПомогите утихомирить воплощение огня Сангрила и прочих взбунтовавшихся питомцев.");
    end
end

local function OnCompleteQuestTalk(id,step)
    if (id == 52054) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(52054,"<Font=arial,0,19,20><color=0xfffcf157>Оливия<color=0xffffffff><Font=arial,0,17,20>\\nВы просто великолепны. Возвращайтесь завтра, чтобы получить ещё одно задание.");
	end
end

enot = {}
enot["OnTalk"] = OnTalk
enot["OnAcceptQuestTalk"] = OnAcceptQuestTalk
enot["OnCompleteQuestTalk"] = OnCompleteQuestTalk
