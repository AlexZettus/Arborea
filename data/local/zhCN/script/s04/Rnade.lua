
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5010077);
	Quest.SetCompleteOptions(5010077);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Веда:<color=0xffffffff>\\nОх, как мне не нравится, что люди думают, будто бы я не могу ничего сделать самостоятельно!");

end


local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
       if( id == 20207)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20207,"<Font=arial,0,19,20><color=0xfffcf157>Веда:<color=0xffffffff>\\nУ меня ещё много дел. Отправляйся на холм в округе Кабутолин и разведай обстановку. Я приставлю к тебе Призрачную Гадикару, она будет моими глазами.");
        elseif( id == 20205)then
            Quest.CloseNPCTalk();
			Quest.AcceptQuestTalk(20205,"<Font=arial,0,19,20><color=0xfffcf157>Веда:<color=0xffffffff>\\nНеподалеку отсюда водятся <color=0xffff6000>большие элементали<color=0xffffffff>. Мне нужно знать, подвержены ли они заражению или нет. Вы поможете мне собрать несколько цветущих камней?");
		elseif( id == 20224)then
            Quest.CloseNPCTalk();
			Quest.AcceptQuestTalk(20224,"<Font=arial,0,19,20><color=0xfffcf157>Веда:<color=0xffffffff>\\nПришло время рассказать Королю Марсу о твоих успехах.");
		elseif( id == 20220)then
            Quest.CloseNPCTalk();
			Quest.AcceptQuestTalk(20220,"<Font=arial,0,19,20><color=0xfffcf157>Веда:<color=0xffffffff>\\nКоролева цветов одурманивает разум маленьких существ, чтобы они подчинялись её воле. Для этого она использует Духов-заклинателей.");
	    elseif( id == 20206)then
            Quest.CloseNPCTalk();
			Quest.AcceptQuestTalk(20206,"<Font=arial,0,19,20><color=0xfffcf157>Веда:<color=0xffffffff>\\nЯ надеюсь, что диких пикси ещё можно спасти. Чтобы создать целительное зелье, мне нужны образцы заражения.");
		elseif( id == 20208)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20208,"<Font=arial,0,19,20><color=0xfffcf157>Веда:<color=0xffffffff>\\nКажется, Королева цветов узнала, что мы пытаемся помешать её планам. Отправляйся к Озеру призраков и попробуй сразиться с ней.");
		elseif( id == 20209)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20209,"<Font=arial,0,19,20><color=0xfffcf157>Веда:<color=0xffffffff>\\nЯ договорилась с Градосом. Он может помочь тебе обучиться ремесленным навыкам.");
        end
end


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
		if( id == 20207)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20207,"<Font=arial,0,19,20><color=0xfffcf157>Веда:<color=0xffffffff>\\nСпасибо за помощь. Теперь я всё вижу.");
		elseif( id == 20219)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20219,"<Font=arial,0,19,20><color=0xfffcf157>Веда:<color=0xffffffff>\\nДо сих пор неизвестно, кто отправил к нам в Пандору этого великана. Тем не менее я рада, что у тебя получилось одолеть его.")
		elseif( id == 20206)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20206,"<Font=arial,0,19,20><color=0xfffcf157>Веда:<color=0xffffffff>\\nТеперь посмотрим, что можно сделать с образцами с помощью алхимии.");
		elseif( id == 20204)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20204,"<Font=arial,0,19,20><color=0xfffcf157>Веда:<color=0xffffffff>\\nКоролева цветов пытается получить власть над жителями Пандоры. Мне нужна твоя помощь, чтобы помешать ей.");
		elseif( id == 20220)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20220,"<Font=arial,0,19,20><color=0xfffcf157>Веда:<color=0xffffffff>\\nХорошо сражаешься. Тебя ждёт большое будущее.");
		elseif( id == 20208)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(20208,"<Font=arial,0,19,20><color=0xfffcf157>Веда:<color=0xffffffff>\\nПридёт время, Королева цветов восстановит силы и вернётся.");
       end
end

Rnade= {}
Rnade["OnTalk"] = OnTalk
Rnade["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rnade["OnCompleteQuestTalk"] = OnCompleteQuestTalk