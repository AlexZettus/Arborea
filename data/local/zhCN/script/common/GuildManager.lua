local function OnTalk()
	Quest.ClearNPCTalkOptions()
	Quest.SetAcceptOptions(5010053)
	Quest.SetCompleteOptions(5010053)
	Quest.NPCTalk(0,0,"Управляющий гильдиями： Рад помочь! По какому вы делу?")
end

local function OnAcceptQuestTalk(id,step)
	if( id == 30001)then
        if (Quest.IsInGuild() == false) then
            return;
        end
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30001,"<Font=arial,0,19,20><color=0xfffcf157>Управляющий гильдиями: \\n<color=0xffffffff>На развитие гильдии требуется много ресурсов. Хотите помочь гильдии собрать эти ресурсы?");
	elseif (id == 30004)then
        if (Quest.IsInGuild() == false) then
            return;
        end
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30004,"<Font=arial,0,19,20><color=0xfffcf157>Управляющий гильдиями: \\n<color=0xffffffff>Чтобы быть достойным членом гильдии, нужно постоянно тренироваться, а ресурсы можно не только собирать, но и получать из добычи. Нужно собрать осколки кристаллов, награда не заставит себя ждать.");
	elseif (id == 30002)then
        if (Quest.IsInGuild() == false) then
            return;
        end
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30002,"<Font=arial,0,19,20><color=0xfffcf157>Управляющий гильдиями: \\n<color=0xffffffff>Если вы хотите помочь гильдии, сперва нужно стать сильнее. Задания гильдии улучшат ваши способности и дадут вам больше опыта.");
	elseif (id == 30003)then
        if (Quest.IsInGuild() == false) then
            return;
        end
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30003,"<Font=arial,0,19,20><color=0xfffcf157>Управляющий гильдиями: \\n<color=0xffffffff>Пришло время для действительно сложного задания. Гильдии нужны герои, способные уничтожать монстров и демонов. Это хорошая возможность заработать боевой опыт и славу.");
	elseif (id == 30005)then
        if (Quest.IsInGuild() == false) then
            return;
        end
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30005,"<Font=arial,0,19,20><color=0xfffcf157>Управляющий гильдиями: \\n<color=0xffffffff>Ежедневно, в 18:00 где-то на просторах Теоса появляется один из мировых боссов. В указанное время координаты босса можно будет увидеть в бегущей строке. Чтобы получить отрубленный палец одного из боссов, нужно быть живым рядом с боссом в момент его смерти. Палец тирана будет помещен в инвентарь заданий. Имена указанных выше боссов: Архидемон тьмы Ситтл, Безумный архангел Хедилус, Хранитель природы Халл, Падший бог Амен.");
	elseif (id == 30006)then
        if (Quest.IsInGuild() == false) then
            return;
        end
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30006,"<Font=arial,0,19,20><color=0xfffcf157>Управляющий гильдиями: \\n<color=0xffffffff>Ежедневно, каждые 3 часа на Острове мечты (Ромен, 248 159) появляется босс Мсье Карпоу. Чтобы получить кость босса, нужно быть живым рядом с боссом в момент его смерти. Кость хранителя будет помещена в инвентарь заданий.");
	elseif (id == 30007)then
        if (Quest.IsInGuild() == false) then
            return;
        end
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30007,"<Font=arial,0,19,20><color=0xfffcf157>Управляющий гильдиями: \\n<color=0xffffffff>Ежедневно, каждый четный час в центре каждого этажа Храма Аскез (Тарио, 611 720) появляются Моррели. Уничтожьте 5 Моррелей на этаже подходящего вам уровня и возвращайтесь за наградой.");
	elseif (id == 30008)then
        if (Quest.IsInGuild() == false) then
            return;
        end
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30008,"<Font=arial,0,19,20><color=0xfffcf157>Управляющий гильдиями: \\n<color=0xffffffff>Ежедневно, с 17:00 до 19:00 и с 21:00 до 23:00 вы можете отправиться на ивент Два лорда ужаса (Тарио, 329 526). Отправляйтесь на первый этаж локации ивента и уничтожьте 40 любых монстров.");
	elseif (id == 30009)then
        if (Quest.IsInGuild() == false) then
            return;
        end
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30009,"<Font=arial,0,19,20><color=0xfffcf157>Управляющий гильдиями: \\n<color=0xffffffff>Ежедневно, с 17:00 до 19:00 и с 21:00 до 23:00 вы можете отправиться на ивент Два лорда ужаса (Тарио, 329 526). Отправляйтесь на второй этаж локации ивента и уничтожьте 65 любых монстров.");
	elseif (id == 30010)then
        if (Quest.IsInGuild() == false) then
            return;
        end
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30010,"<Font=arial,0,19,20><color=0xfffcf157>Управляющий гильдиями: \\n<color=0xffffffff>Ежедневно, с 17:00 до 19:00 и с 21:00 до 23:00 вы можете отправиться на ивент Два лорда ужаса (Тарио, 329 526). Отправляйтесь на третий этаж локации ивента и уничтожьте 90 любых монстров.");
	elseif (id == 30011)then
        if (Quest.IsInGuild() == false) then
            return;
        end
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30011,"<Font=arial,0,19,20><color=0xfffcf157>Управляющий гильдиями: \\n<color=0xffffffff>Ежедневно, с 14:00 до 16:00 и с 18:00 до 20:00 вы можете принять участие в Призрачной арене (Тарио, 269 720). Одержите победу в одном бою, чтобы получить награду за это задание.");
	elseif (id == 30012)then
        if (Quest.IsInGuild() == false) then
            return;
        end
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30012,"<Font=arial,0,19,20><color=0xfffcf157>Управляющий гильдиями: \\n<color=0xffffffff>Ежедневно, с 18:00 до 23:59 проходит ивент Сокровища эльфов. В случайное время на диких локациях появляются сундуки эльфов. Открывайте эльфийские сундуки на локациях Сноулэнд (31-59 ур.), Лес теней (60-69 ур.), Южные топи (70-79 ур.), Гора смерти (80-94 ур.), Сумеречная пустошь (95-105), Пустыня Аришат (106-120) чтобы получить Эльфийский грааль и завершить задание.");
	elseif (id == 30013)then
        if (Quest.IsInGuild() == false) then
            return;
        end
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30013,"<Font=arial,0,19,20><color=0xfffcf157>Управляющий гильдиями: \\n<color=0xffffffff>Отправляйтесь в гильдейское подземелье Тропа испытаний и одержите победу над всеми его боссами. Открыть подземелье в любой момент может глава гильдии или его заместители. Для того, чтобы задание было засчитано, нужно находиться рядом с боссом в момент его смерти.");
	elseif( id == 20021)then
        Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(20021,"<Font=arial,0,19,20><color=0xfffcf157>Управляющий гильдиями: \\n<color=0xffffffff>Жители Тарио умеют не только воевать. У нас ты можешь завести семью, найти себе пару, сыграть свадьбу и вместе истреблять полчища демонов.");
	end
end


local function OnCompleteQuestTalk(id,step)

	if( id == 30001)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30001,"<Font=arial,0,19,20><color=0xfffcf157>Управляющий гильдиями: \\n<color=0xffffffff>Вы подозрительно легко справились. Но ничего, по достижении 40-го и 60-го уровня будете получать куда более сложные задания!");
	elseif (id == 30002)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30002,"<Font=arial,0,19,20><color=0xfffcf157>Управляющий гильдиями: \\n<color=0xffffffff>Отрадно видеть, что так много героев готовы помочь своей гильдии. Если так дальше пойдет, то противников просто не останется!");
	elseif (id == 30003)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30003,"<Font=arial,0,19,20><color=0xfffcf157>Управляющий гильдиями: \\n<color=0xffffffff>Вы вписали свое имя в историю гильдии. Думаю, вас ждет большое будущее!");
	elseif (id == 30004)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30004,"<Font=arial,0,19,20><color=0xfffcf157>Управляющий гильдиями: \\n<color=0xffffffff>Вы отлично справились, продолжайте в том же духе!");
	elseif (id == 30005)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30005,"<Font=arial,0,19,20><color=0xfffcf157>Управляющий гильдиями: \\n<color=0xffffffff>Отличная работа! Гильдия может гордиться вами!");
	elseif (id == 30006)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30006,"<Font=arial,0,19,20><color=0xfffcf157>Управляющий гильдиями: \\n<color=0xffffffff>Отличная работа! Гильдия может гордиться вами!");
	elseif (id == 30007)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30007,"<Font=arial,0,19,20><color=0xfffcf157>Управляющий гильдиями: \\n<color=0xffffffff>Отличная работа! Гильдия может гордиться вами!");
	elseif (id == 30008)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30008,"<Font=arial,0,19,20><color=0xfffcf157>Управляющий гильдиями: \\n<color=0xffffffff>Отличная работа! Гильдия может гордиться вами!");
	elseif (id == 30009)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30009,"<Font=arial,0,19,20><color=0xfffcf157>Управляющий гильдиями: \\n<color=0xffffffff>Отличная работа! Гильдия может гордиться вами!");
	elseif (id == 30010)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30010,"<Font=arial,0,19,20><color=0xfffcf157>Управляющий гильдиями: \\n<color=0xffffffff>Отличная работа! Гильдия может гордиться вами!");
	elseif (id == 30011)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30011,"<Font=arial,0,19,20><color=0xfffcf157>Управляющий гильдиями: \\n<color=0xffffffff>Отличная работа! Гильдия может гордиться вами!");
	elseif (id == 30012)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30012,"<Font=arial,0,19,20><color=0xfffcf157>Управляющий гильдиями: \\n<color=0xffffffff>Отличная работа! Гильдия может гордиться вами!");
	elseif (id == 30013)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30013,"<Font=arial,0,19,20><color=0xfffcf157>Управляющий гильдиями: \\n<color=0xffffffff>Отличная работа! Гильдия может гордиться вами!");
	elseif( id == 20020)then
        Quest.CloseNPCTalk();
	    Quest.CompleteQuestTalk(20020,"<Font=arial,0,19,20><color=0xfffcf157>Управляющий гильдиями: \\n<color=0xffffffff>Когда придёт время, приходи к Ристерду, чтобы создать гильдию, или к Мэйди, чтобы вступить в гильдию.");
	end
end

GuildManager = {}
GuildManager["OnTalk"] = OnTalk
GuildManager["OnAcceptQuestTalk"] = OnAcceptQuestTalk
GuildManager["OnCompleteQuestTalk"] = OnCompleteQuestTalk
