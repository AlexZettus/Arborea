local function OnTalk()
	Quest.ClearNPCTalkOptions();
	Quest.SetAcceptOptions(9010477);
	Quest.SetCompleteOptions(9010477);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Хротген<color=0xffffffff>\\nВот и подошли к концу жаркие летние деньки. Надеюсь, ты хорошо отдохнул. Самое время браться за ум, а заодно и помочь мне в воспитании подрастающего поколения.");
end

local function OnAcceptQuestTalk(id,step)
    if id == 52101 then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(id,"<Font=arial,0,19,20><color=0xfffcf157>Хротген<color=0xffffffff><Font=arial,0,17,20>\\nЭта непоседа не хочет учиться. Уроки для нее скучные, а учебники страшные. Может у тебя получиться внести кое-какие знания в эту молодую голову? Выполни ряд практических занятий.");
	elseif id == 52102 then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(id,"<Font=arial,0,19,20><color=0xfffcf157>Хротген<color=0xffffffff><Font=arial,0,17,20>\\nПредставляешь, этот ребенок не может отличить даже одуванчик от лопуха. В лавке аптекаря почти закончились листья песчаного кустарника - основного ингредиента для приготовления лечебных отваров и снадобий. Отправляйся с учеником в Долину Орбис и принеси мне 5 веток с листьями, а заодно расскажи этой врединке о местной растительности. Песчаный кустарник можно найти на пляже, возле воды.");
	elseif id == 52103 then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(id,"<Font=arial,0,19,20><color=0xfffcf157>Хротген<color=0xffffffff><Font=arial,0,17,20>\\nС нашей центральной библиотеки был похищен Том секретных знаний. Одни говорят, что местные монстры пытаются постичь нашу науку, другие - что они разжигают костры, используя драгоценные страницы книги. В любом случае, том нужно спасать. Отправляйся на Гору смерти (80-99), Сумрачную пустошь (100-109), Пустыню Аришат(110-120) и отыщи Том секретных знаний, убивая монстров на локации. После этого прочти его Маленькому ученику, возможно ты и сам узнаешь что-то новенькое.");
	elseif id == 52104 then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(id,"<Font=arial,0,19,20><color=0xfffcf157>Хротген<color=0xffffffff><Font=arial,0,17,20>\\nВчера физрук с трудовиком снова пробрались в кабинет алхимии и стащили эликсир храбрости. Трудовик с жуткой головной болью заявляет, что под действием эликсира они решили самостоятельно справиться с темными силами Дворца демонов, но что-то пошло не так. Наш учитель физкультуры все еще там. Отправляйтесь в Дворец Демонов и сражайтесь с боссами до тех пор, пока его не отыщите. И да, эликсир также стоит вернуть назад в кабинет.");
	elseif id == 52105 then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(id,"<Font=arial,0,19,20><color=0xfffcf157>Хротген<color=0xffffffff><Font=arial,0,17,20>\\nКак ты относишься к литературе? Лично я очень люблю сказки, а дети еще больше. Говорят, если поймать золотого Карпа, он выполнит любое твое желание. Наши емкости для стирки в хозяйственном отделе уже давно прогнили. Чтобы завершить задание, поймай Карпа и попроси у него новое ведро. Поймать карпа можно при помощи навыка Рыбалка в любом водоеме.");
	elseif id == 52106 then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(id,"<Font=arial,0,19,20><color=0xfffcf157>Хротген<color=0xffffffff><Font=arial,0,17,20>\\nВ этом году у нас так много учеников, что в помещении академии Тарио совсем не хватает мест. Не мог бы ты попросить Карпа выделить нам дополнительный корпус?");
	elseif id == 52107 then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(id,"<Font=arial,0,19,20><color=0xfffcf157>Хротген<color=0xffffffff><Font=arial,0,17,20>\\nНаше общество хранителей знаний желает расширить свои границы. Прикажи Карпу открыть нам филиал под куполом на дне океана, и чтобы он занял должность секретаря в нашем заведении.");
	elseif id == 40070 then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(id,"<Font=arial,0,19,20><color=0xfffcf157>Хротген<color=0xffffffff><Font=arial,0,17,20>\\nМожно ли тебе доверить ребенка на обучение? Заверши все практические занятия вместе с Маленьким учеником, чтобы показать свои навыки замечательного наставника. За каждое выполненное практическое занятие ты будешь получать Учебное пособие для закрепления знаний. Принеси мне 3 пособия, чтобы я мог наградить тебя за старания!");
	elseif id == 52117 then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(id,"<Font=arial,0,19,20><color=0xfffcf157>Хротген<color=0xffffffff><Font=arial,0,17,20>\\nВ День знаний самое время поделиться опытом и помочь молодым богам добраться до вершин мира Теоса, а также разжевать гранит науки. Для того чтобы завершить задание, найди игрока 40-79 уровня и отправляйся с ним в Камнепад. Убей всех монстров и возвращайся ко мне за наградой.");
	elseif id == 52118 then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(id,"<Font=arial,0,19,20><color=0xfffcf157>Хротген<color=0xffffffff><Font=arial,0,17,20>\\nДень знаний самый подходящий момент научиться чему-то новенькому и разжевать гранит науки! Составь компанию игрокам 80-120 уровня в Камнепаде, вместе одолейте всех монстров внутри и возвращайтесь за наградой. Чтобы попасть в Камнепад, отыщи носителя кристаллов в Долине грома или Пандоре.");
	elseif id == 52149 then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(id,"<Font=arial,0,19,20><color=0xfffcf157>Хротген<color=0xffffffff><Font=arial,0,17,20>\\nЗа успешное выполнение заданий вместе со своим учеником ты будешь получать Успешные отметки. Принеси мне 5 успешных отметок в доказательство того, что твой ученик усвоил все уроки.");
    end
end

local function OnCompleteQuestTalk(id,step)
    if id == 52101 then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(id,"<Font=arial,0,19,20><color=0xfffcf157>Хротген<color=0xffffffff><Font=arial,0,17,20>\\nСпасибо, что согласился оказать нам помощь. Удачи тебе с ней!");
	elseif id == 52102 then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(id,"<Font=arial,0,19,20><color=0xfffcf157>Хротген<color=0xffffffff><Font=arial,0,17,20>\\nО, я вижу вы справились с заданием. Надеюсь, вы оба узнали что-то новое.");
	elseif id == 52103 then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(id,"<Font=arial,0,19,20><color=0xfffcf157>Хротген<color=0xffffffff><Font=arial,0,17,20>\\nСпасибо. Библиотекарь будет рад снова увидеть этот ценный фолиант.");
	elseif id == 52104 then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(id,"<Font=arial,0,19,20><color=0xfffcf157>Хротген<color=0xffffffff><Font=arial,0,17,20>\\nПоздравляю, ты справился с заданием! А эти двое получат от меня строгий выговор.");
	elseif id == 52105 then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(id,"<Font=arial,0,19,20><color=0xfffcf157>Хротген<color=0xffffffff><Font=arial,0,17,20>\\nОтлично! Модернизация - залог успеха.");
	elseif id == 52106 then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(id,"<Font=arial,0,19,20><color=0xfffcf157>Хротген<color=0xffffffff><Font=arial,0,17,20>\\nОго, я и не надеялся что у тебя получится!");
	elseif id == 52107 then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(id,"<Font=arial,0,19,20><color=0xfffcf157>Хротген<color=0xffffffff><Font=arial,0,17,20>\\nЭмм... Что ты принес? Я ничего не вижу! Кроме того, куда-то пропало ведро из хозяйственного отдела, а дополнительный корпус заняли наши конкуренты. Где-то я уже такое видел. Впрочем, вот твоя награда.");
	elseif id == 40070 then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(id,"<Font=arial,0,19,20><color=0xfffcf157>Хротген<color=0xffffffff><Font=arial,0,17,20>\\nОтлично! Из тебя выйдет прекрасный наставник. Держи, вот твоя награда.");
	elseif id == 52117 then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(id,"<Font=arial,0,19,20><color=0xfffcf157>Хротген<color=0xffffffff><Font=arial,0,17,20>\\nЯ вижу вы оба вернулись целыми и невредимыми, а значит задание выполнено. Вот твоя награда.");
	elseif id == 52118 then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(id,"<Font=arial,0,19,20><color=0xfffcf157>Хротген<color=0xffffffff><Font=arial,0,17,20>\\nЯ вижу вы оба вернулись целыми и невредимыми, а значит задание выполнено. Вот твоя награда.");
	elseif id == 52149 then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(id,"<Font=arial,0,19,20><color=0xfffcf157>Хротген<color=0xffffffff><Font=arial,0,17,20>\\nТеперь твой ученик достаточно опытен, чтобы помогать тебе в твоих собственных приключениях.");
	end
end

sept2017 = {}
sept2017["OnTalk"] = OnTalk
sept2017["OnAcceptQuestTalk"] = OnAcceptQuestTalk
sept2017["OnCompleteQuestTalk"] = OnCompleteQuestTalk
