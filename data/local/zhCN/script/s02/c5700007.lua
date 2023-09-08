local function OnTalk()
	Quest.ClearNPCTalkOptions();    
	Quest.SetAcceptOptions(5700007);
	Quest.SetCompleteOptions(5700007);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Мастер Енот:<color=0xffffffff><Font=arial,0,17,20>\\nПривет, я Мастер Енот, самый обаятельный и узнаваемый воин в мире Теоса! Вот стою здесь и наблюдаю за событиями в моем мире. А как у тебя дела?");
end


local function OnAcceptQuestTalk(id,step)
	if (id == 53003) then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(53003,"<Font=arial,0,19,20><color=0xfffcf157>Мастер Енот:<color=0xffffffff><Font=arial,0,17,20>\\nЛюблю праздники. Чуть было не съел твой кусочек торта. А это ведь и мой день рождения тоже.");
	elseif (id == 52079) then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(52079,"<Font=arial,0,19,20><color=0xfffcf157>Мастер Енот:<color=0xffffffff><Font=arial,0,17,20>\\nПривет, а ты уже приготовил мне подарок? Ведь 17 июня нам с Blood and Soul исполняется 6 лет! Не приготовил? Ну и ладно, зато у меня для тебя кое-что есть...");
		--[[
	elseif (id == 40230) then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(40230,"<Font=arial,0,19,20><color=0xfffcf157>Мастер Енот:<color=0xffffffff><Font=arial,0,17,20>\\nВ Пандоре растут очень странные грибы, и по какой-то неизвестной причине эти грибы очень сильно привлекают зомби. Убийство Зомби засчитывается всем живым участникам группы в радиусе 50 метров от места его смерти.");
	elseif (id == 40231) then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(40231,"<Font=arial,0,19,20><color=0xfffcf157>Мастер Енот:<color=0xffffffff><Font=arial,0,17,20>\\nВ Пандоре растут очень странные грибы, и по какой-то неизвестной причине эти грибы очень сильно привлекают зомби. Убийство Зомби засчитывается всем живым участникам группы в радиусе 50 метров от места его смерти.");
	elseif (id == 40232) then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(40232,"<Font=arial,0,19,20><color=0xfffcf157>Мастер Енот:<color=0xffffffff><Font=arial,0,17,20>\\nВ Пандоре растут очень странные грибы, и по какой-то неизвестной причине эти грибы очень сильно привлекают зомби. Убийство Зомби засчитывается всем живым участникам группы в радиусе 50 метров от места его смерти.");
	elseif (id == 40233) then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(40233,"<Font=arial,0,19,20><color=0xfffcf157>Мастер Енот:<color=0xffffffff><Font=arial,0,17,20>\\nВ Пандоре растут очень странные грибы, и по какой-то неизвестной причине эти грибы очень сильно привлекают зомби. Убийство Зомби засчитывается всем живым участникам группы в радиусе 50 метров от места его смерти.");
	elseif (id == 40234) then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(40234,"<Font=arial,0,19,20><color=0xfffcf157>Мастер Енот:<color=0xffffffff><Font=arial,0,17,20>\\nСуккуб Юна соскучилась по сражениям и призывает всех храбрецов вступить в бой с её химерами. Химеру можно призвать исключительно при наличии принятого задания при помощи эмоции Поманить на месте появления финального босса в подземельях Место власти, Замок теней и Замок ада. Призвать химеру можно только в том случае, если в группе 1 или 2 человека.");
	elseif (id == 40235) then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(40235,"<Font=arial,0,19,20><color=0xfffcf157>Мастер Енот:<color=0xffffffff><Font=arial,0,17,20>\\nСуккуб Юна соскучилась по сражениям и призывает всех храбрецов вступить в бой с её химерами. Химеру можно призвать исключительно при наличии принятого задания при помощи эмоции Поманить на месте появления финального босса в подземельях Место власти, Замок теней и Замок ада. Призвать химеру можно только в том случае, если в группе 1 или 2 человека.");
	elseif (id == 40236) then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(40236,"<Font=arial,0,19,20><color=0xfffcf157>Мастер Енот:<color=0xffffffff><Font=arial,0,17,20>\\nСуккуб Юна соскучилась по сражениям и призывает всех храбрецов вступить в бой с её химерами. Химеру можно призвать исключительно при наличии принятого задания при помощи эмоции Поманить на месте появления финального босса в подземельях Место власти, Замок теней и Замок ада. Призвать химеру можно только в том случае, если в группе 1 или 2 человека.");
	elseif (id == 40237) then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(40237,"<Font=arial,0,19,20><color=0xfffcf157>Мастер Енот:<color=0xffffffff><Font=arial,0,17,20>\\nСуккуб Юна соскучилась по сражениям и призывает всех храбрецов вступить в бой с её химерами. Химеру можно призвать исключительно при наличии принятого задания при помощи эмоции Поманить на месте появления финального босса в подземельях Место власти, Замок теней и Замок ада. Призвать химеру можно только в том случае, если в группе 1 или 2 человека.");
	elseif (id == 40238) then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(40238,"<Font=arial,0,19,20><color=0xfffcf157>Мастер Енот:<color=0xffffffff><Font=arial,0,17,20>\\nПолководец Ферон вернулся в Тарио из длительного путешествия. Принеси ему Хлеб воина, чтобы он мог восстановить силы после долгой дороги.");
	elseif (id == 40239) then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(40239,"<Font=arial,0,19,20><color=0xfffcf157>Мастер Енот:<color=0xffffffff><Font=arial,0,17,20>\\nПолководец Ферон вернулся в Тарио из длительного путешествия. Принеси ему Хлеб воина, чтобы он мог восстановить силы после долгой дороги.");
	elseif (id == 40240) then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(40240,"<Font=arial,0,19,20><color=0xfffcf157>Мастер Енот:<color=0xffffffff><Font=arial,0,17,20>\\nПолководец Ферон вернулся в Тарио из длительного путешествия. Принеси ему Хлеб воина, чтобы он мог восстановить силы после долгой дороги.");
	elseif (id == 40241) then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(40241,"<Font=arial,0,19,20><color=0xfffcf157>Мастер Енот:<color=0xffffffff><Font=arial,0,17,20>\\nПолководец Ферон вернулся в Тарио из длительного путешествия. Принеси ему Хлеб воина, чтобы он мог восстановить силы после долгой дороги.");
	elseif (id == 40242) then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(40242,"<Font=arial,0,19,20><color=0xfffcf157>Мастер Енот:<color=0xffffffff><Font=arial,0,17,20>\\nМои братья затерялись в Сноуленде. Я очень волнуюсь за них. Пожалуйста, отправляйся туда поскорее и найди их. Еноты любят веселье, а поэтому убедить их отправиться домой не так-то просто. Используй возле енота любые эмоции, чтобы выполнить задание. Чем больше людей будут использовать эмоции возле енота, тем быстрее будет выполнено задание. Когда впечатлительный енот исчезнет, всем героям в радиусе 50 метров засчитается выполнение задания.");
	elseif (id == 40243) then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(40243,"<Font=arial,0,19,20><color=0xfffcf157>Мастер Енот:<color=0xffffffff><Font=arial,0,17,20>\\nМои братья затерялись в Сноуленде. Я очень волнуюсь за них. Пожалуйста, отправляйся туда поскорее и найди их. Еноты любят веселье, а поэтому убедить их отправиться домой не так-то просто. Используй возле енота любые эмоции, чтобы выполнить задание. Чем больше людей будут использовать эмоции возле енота, тем быстрее будет выполнено задание. Когда впечатлительный енот исчезнет, всем героям в радиусе 50 метров засчитается выполнение задания.");
	elseif (id == 40244) then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(40244,"<Font=arial,0,19,20><color=0xfffcf157>Мастер Енот:<color=0xffffffff><Font=arial,0,17,20>\\nМои братья затерялись в Сноуленде. Я очень волнуюсь за них. Пожалуйста, отправляйся туда поскорее и найди их. Еноты любят веселье, а поэтому убедить их отправиться домой не так-то просто. Используй возле енота любые эмоции, чтобы выполнить задание. Чем больше людей будут использовать эмоции возле енота, тем быстрее будет выполнено задание. Когда впечатлительный енот исчезнет, всем героям в радиусе 50 метров засчитается выполнение задания.");
	elseif (id == 40245) then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(40245,"<Font=arial,0,19,20><color=0xfffcf157>Мастер Енот:<color=0xffffffff><Font=arial,0,17,20>\\nМои братья затерялись в Сноуленде. Я очень волнуюсь за них. Пожалуйста, отправляйся туда поскорее и найди их. Еноты любят веселье, а поэтому убедить их отправиться домой не так-то просто. Используй возле енота любые эмоции, чтобы выполнить задание. Чем больше людей будут использовать эмоции возле енота, тем быстрее будет выполнено задание. Когда впечатлительный енот исчезнет, всем героям в радиусе 50 метров засчитается выполнение задания.");
	elseif (id == 40246) then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(40246,"<Font=arial,0,19,20><color=0xfffcf157>Мастер Енот:<color=0xffffffff><Font=arial,0,17,20>\\nПредлагаю отметить празднование годовщины салютом. Отправляйся в Лес теней и уничтожай любых монстров, чтобы с некоторым шансом получить фейерверк. После этого возвращайся в Тарио и используй фейерверк на центральной площади, куда обычно приходит Благомир.");
	elseif (id == 40247) then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(40247,"<Font=arial,0,19,20><color=0xfffcf157>Мастер Енот:<color=0xffffffff><Font=arial,0,17,20>\\nПредлагаю отметить празднование годовщины салютом. Отправляйся в Лес теней и уничтожай любых монстров, чтобы с некоторым шансом получить фейерверк. После этого возвращайся в Тарио и используй фейерверк на центральной площади, куда обычно приходит Благомир.");
	elseif (id == 40248) then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(40248,"<Font=arial,0,19,20><color=0xfffcf157>Мастер Енот:<color=0xffffffff><Font=arial,0,17,20>\\nПредлагаю отметить празднование годовщины салютом. Отправляйся в Лес теней и уничтожай любых монстров, чтобы с некоторым шансом получить фейерверк. После этого возвращайся в Тарио и используй фейерверк на центральной площади, куда обычно приходит Благомир.");
	elseif (id == 40249) then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(40249,"<Font=arial,0,19,20><color=0xfffcf157>Мастер Енот:<color=0xffffffff><Font=arial,0,17,20>\\nПредлагаю отметить празднование годовщины салютом. Отправляйся в Лес теней и уничтожай любых монстров, чтобы с некоторым шансом получить фейерверк. После этого возвращайся в Тарио и используй фейерверк на центральной площади, куда обычно приходит Благомир.");
	elseif (id == 40250) then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(40250,"<Font=arial,0,19,20><color=0xfffcf157>Мастер Енот:<color=0xffffffff><Font=arial,0,17,20>\\nТеперь я предлагаю тебе найти близкого человека противоположного пола, отправиться на Остров мечты, надеть наряды с параметром Физ. и Маг. атака +300, а после этого использовать любую парную эмоцию.");
	elseif (id == 40251) then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(40251,"<Font=arial,0,19,20><color=0xfffcf157>Мастер Енот:<color=0xffffffff><Font=arial,0,17,20>\\nТеперь я предлагаю тебе найти близкого человека противоположного пола, отправиться на Остров мечты, надеть наряды с параметром Физ. и Маг. атака +300, а после этого использовать любую парную эмоцию.");
	elseif (id == 40252) then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(40252,"<Font=arial,0,19,20><color=0xfffcf157>Мастер Енот:<color=0xffffffff><Font=arial,0,17,20>\\nТеперь я предлагаю тебе найти близкого человека противоположного пола, отправиться на Остров мечты, надеть наряды с параметром Физ. и Маг. атака +300, а после этого использовать любую парную эмоцию.");
	elseif (id == 40253) then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(40253,"<Font=arial,0,19,20><color=0xfffcf157>Мастер Енот:<color=0xffffffff><Font=arial,0,17,20>\\nТеперь я предлагаю тебе найти близкого человека противоположного пола, отправиться на Остров мечты, надеть наряды с параметром Физ. и Маг. атака +300, а после этого использовать любую парную эмоцию.");
	]]--
	end
end

local function OnCompleteQuestTalk(id,step)
	if (id == 53002) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(53002,"<Font=arial,0,19,20><color=0xfffcf157>Мастер Енот:<color=0xffffffff><Font=arial,0,17,20>\\nВы великолепны!");
	elseif (id == 52079) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(52079,"<Font=arial,0,19,20><color=0xfffcf157>Мастер Енот:<color=0xffffffff><Font=arial,0,17,20>\\nВы великолепны!");
	--[[	
	elseif (id == 40226) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(40226,"<Font=arial,0,19,20><color=0xfffcf157>Мастер Енот:<color=0xffffffff><Font=arial,0,17,20>\\nЗаверши это задание и скорее принимай следующее. Приключения только начинаются.");
	elseif (id == 40227) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(40227,"<Font=arial,0,19,20><color=0xfffcf157>Мастер Енот:<color=0xffffffff><Font=arial,0,17,20>\\nЗаверши это задание и скорее принимай следующее. Приключения только начинаются.");
	elseif (id == 40228) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(40228,"<Font=arial,0,19,20><color=0xfffcf157>Мастер Енот:<color=0xffffffff><Font=arial,0,17,20>\\nЗаверши это задание и скорее принимай следующее. Приключения только начинаются.");
	elseif (id == 40229) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(40229,"<Font=arial,0,19,20><color=0xfffcf157>Мастер Енот:<color=0xffffffff><Font=arial,0,17,20>\\nЗаверши это задание и скорее принимай следующее. Приключения только начинаются.");
	elseif (id == 40230) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(40230,"<Font=arial,0,19,20><color=0xfffcf157>Мастер Енот:<color=0xffffffff><Font=arial,0,17,20>\\nУ Зомби очень странный рацион. Может и мне попробовать этот гриб?");
	elseif (id == 40231) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(40231,"<Font=arial,0,19,20><color=0xfffcf157>Мастер Енот:<color=0xffffffff><Font=arial,0,17,20>\\nУ Зомби очень странный рацион. Может и мне попробовать этот гриб?");
	elseif (id == 40232) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(40232,"<Font=arial,0,19,20><color=0xfffcf157>Мастер Енот:<color=0xffffffff><Font=arial,0,17,20>\\nУ Зомби очень странный рацион. Может и мне попробовать этот гриб?");
	elseif (id == 40233) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(40233,"<Font=arial,0,19,20><color=0xfffcf157>Мастер Енот:<color=0xffffffff><Font=arial,0,17,20>\\nУ Зомби очень странный рацион. Может и мне попробовать этот гриб?");
	elseif (id == 40234) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(40234,"<Font=arial,0,19,20><color=0xfffcf157>Мастер Енот:<color=0xffffffff><Font=arial,0,17,20>\\nТы отлично справляешься. Восхищаюсь твоей смелостью и упорством.");
	elseif (id == 40235) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(40235,"<Font=arial,0,19,20><color=0xfffcf157>Мастер Енот:<color=0xffffffff><Font=arial,0,17,20>\\nТы отлично справляешься. Восхищаюсь твоей смелостью и упорством.");
	elseif (id == 40236) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(40236,"<Font=arial,0,19,20><color=0xfffcf157>Мастер Енот:<color=0xffffffff><Font=arial,0,17,20>\\nТы отлично справляешься. Восхищаюсь твоей смелостью и упорством.");
	elseif (id == 40237) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(40237,"<Font=arial,0,19,20><color=0xfffcf157>Мастер Енот:<color=0xffffffff><Font=arial,0,17,20>\\nТы отлично справляешься. Восхищаюсь твоей смелостью и упорством.");
	elseif (id == 40238) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(40238,"<Font=arial,0,19,20><color=0xfffcf157>Мастер Енот:<color=0xffffffff><Font=arial,0,17,20>\\nПолководца накормили. Теперь можно заняться более важными делами.");
	elseif (id == 40239) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(40239,"<Font=arial,0,19,20><color=0xfffcf157>Мастер Енот:<color=0xffffffff><Font=arial,0,17,20>\\nПолководца накормили. Теперь можно заняться более важными делами.");
	elseif (id == 40240) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(40240,"<Font=arial,0,19,20><color=0xfffcf157>Мастер Енот:<color=0xffffffff><Font=arial,0,17,20>\\nПолководца накормили. Теперь можно заняться более важными делами.");
	elseif (id == 40241) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(40241,"<Font=arial,0,19,20><color=0xfffcf157>Мастер Енот:<color=0xffffffff><Font=arial,0,17,20>\\nПолководца накормили. Теперь можно заняться более важными делами.");
	elseif (id == 40242) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(40242,"<Font=arial,0,19,20><color=0xfffcf157>Мастер Енот:<color=0xffffffff><Font=arial,0,17,20>\\nСпасибо большое! Ох уж эти сорванцы, за ними нужен глаз да глаз.");
	elseif (id == 40243) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(40243,"<Font=arial,0,19,20><color=0xfffcf157>Мастер Енот:<color=0xffffffff><Font=arial,0,17,20>\\nСпасибо большое! Ох уж эти сорванцы, за ними нужен глаз да глаз.");
	elseif (id == 40244) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(40244,"<Font=arial,0,19,20><color=0xfffcf157>Мастер Енот:<color=0xffffffff><Font=arial,0,17,20>\\nСпасибо большое! Ох уж эти сорванцы, за ними нужен глаз да глаз.");
	elseif (id == 40245) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(40245,"<Font=arial,0,19,20><color=0xfffcf157>Мастер Енот:<color=0xffffffff><Font=arial,0,17,20>\\nСпасибо большое! Ох уж эти сорванцы, за ними нужен глаз да глаз.");
	elseif (id == 40246) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(40246,"<Font=arial,0,19,20><color=0xfffcf157>Мастер Енот:<color=0xffffffff><Font=arial,0,17,20>\\nКрасивый фейерверк! На сегодня осталось ещё одно небольшое задание.");
	elseif (id == 40247) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(40247,"<Font=arial,0,19,20><color=0xfffcf157>Мастер Енот:<color=0xffffffff><Font=arial,0,17,20>\\nКрасивый фейерверк! На сегодня осталось ещё одно небольшое задание.");
	elseif (id == 40248) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(40248,"<Font=arial,0,19,20><color=0xfffcf157>Мастер Енот:<color=0xffffffff><Font=arial,0,17,20>\\nКрасивый фейерверк! На сегодня осталось ещё одно небольшое задание.");
	elseif (id == 40249) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(40249,"<Font=arial,0,19,20><color=0xfffcf157>Мастер Енот:<color=0xffffffff><Font=arial,0,17,20>\\nКрасивый фейерверк! На сегодня осталось ещё одно небольшое задание.");
	elseif (id == 40250) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(40250,"<Font=arial,0,19,20><color=0xfffcf157>Мастер Енот:<color=0xffffffff><Font=arial,0,17,20>\\nЗамечательно. Тебе удалось выполнить все 7 праздничных заданий. Чтобы получить больше наград, возвращайся ко мне завтра. Пусть счастье всегда будет с тобой!");
	elseif (id == 40251) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(40251,"<Font=arial,0,19,20><color=0xfffcf157>Мастер Енот:<color=0xffffffff><Font=arial,0,17,20>\\nЗамечательно. Тебе удалось выполнить все 7 праздничных заданий. Чтобы получить больше наград, возвращайся ко мне завтра. Пусть счастье всегда будет с тобой!");
	elseif (id == 40252) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(40252,"<Font=arial,0,19,20><color=0xfffcf157>Мастер Енот:<color=0xffffffff><Font=arial,0,17,20>\\nЗамечательно. Тебе удалось выполнить все 7 праздничных заданий. Чтобы получить больше наград, возвращайся ко мне завтра. Пусть счастье всегда будет с тобой!");
	elseif (id == 40253) then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(40253,"<Font=arial,0,19,20><color=0xfffcf157>Мастер Енот:<color=0xffffffff><Font=arial,0,17,20>\\nЗамечательно. Тебе удалось выполнить все 7 праздничных заданий. Чтобы получить больше наград, возвращайся ко мне завтра. Пусть счастье всегда будет с тобой!");
	]]--	
	end
end

c5700007 = {}
c5700007["OnTalk"] = OnTalk
c5700007["OnAcceptQuestTalk"] = OnAcceptQuestTalk
c5700007["OnCompleteQuestTalk"] = OnCompleteQuestTalk