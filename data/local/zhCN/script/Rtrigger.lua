function OnTrigger(id)--ґҐ·ўЖчИООсРтБРєЕ

	if( id==1 ) then--№ЫІм±д»Ї
		if( Quest.QuestIsAccepted(20118) and (not Quest.QuestCanComplete(20118)) )then
			Quest.ShowScreenInfo("Стоя на вершине Грибного холма, вы почувствовали присутствие некой темной энергии.");
		end	
	elseif( id==2 ) then--М¤С©·е№ЫІм±д»Ї
		if( Quest.QuestIsAccepted(20350) and (not Quest.QuestCanComplete(20350)) )then
			Quest.ShowScreenInfo("На вершине Снежного пика вы узнали нечто совершенно неожиданное.");
		end
	elseif( id==3 ) then
		if( Quest.QuestIsAccepted(20207) and (not Quest.QuestCanComplete(20207)) )then
			Quest.ShowScreenInfo("Теперь я всё вижу.");
		end
		if( Quest.QuestIsAccepted(40226) and (not Quest.QuestCanComplete(40226)) )then
			Quest.ShowScreenInfo("Используй эмоцию Победа.");
		end
		if( Quest.QuestIsAccepted(40227) and (not Quest.QuestCanComplete(40227)) )then
			Quest.ShowScreenInfo("Используй эмоцию Победа.");
		end
		if( Quest.QuestIsAccepted(40228) and (not Quest.QuestCanComplete(40228)) )then
			Quest.ShowScreenInfo("Используй эмоцию Победа.");
		end
		if( Quest.QuestIsAccepted(40229) and (not Quest.QuestCanComplete(40229)) )then
			Quest.ShowScreenInfo("Используй эмоцию Победа.");
		end
	end	
end