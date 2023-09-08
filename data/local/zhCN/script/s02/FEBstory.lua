
local function OnTalk()
	Quest.ClearNPCTalkOptions();
	Quest.SetAcceptOptions(9010906);
	Quest.SetCompleteOptions(9010906);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Келли:<color=0xffffffff>\\nПриветствую тебя. Даже в самые холодные морозы любовь и добродушие способны согревать судьбы. Получи 95 уровень и прими участие в событии Тайные узы.\\nЕжедневно ты можешь выполнить 5 заданий и получить за это Роза Ромена х110 (суммарно за все задания). Чтобы обменять Розы Ромена обратись к торговцу ивента.");
end

local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
    if id == 52150 then
        Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(52150,"<Font=arial,0,19,20><color=0xfffcf157>Келли:<color=0xffffffff>\\nУже долгое время в Сноулэнде пропадают охотники. У меня есть кое-какие подозрения на этот счет. Но прежде чем мы приступим, докажи, что тебе знакомы теплые чувства.");
 	end
end

local function OnCompleteQuestTalk(id,step)
	if ( id == 52150 ) then
		Quest.CloseNPCTalk();
	    Quest.CompleteQuestTalk(52150,"<Font=arial,0,19,20><color=0xfffcf157>Келли:<color=0xffffffff>\\nПонимаю, что эта просьба могла показаться тебе весьма странной. Но преступники, о которых пойдёт речь, умеют менять облик и совсем не умеют находить общий язык с людьми. Мне нужно было убедиться, что они не попытаются помешать моему расследованию. Как я и говорила ранее, в Сноулэнде пропадают охотники. При этом пока у нас есть одна зацепка. Пропадают только одиночки - те, у кого совсем не было семьи и близких. Поэтому долгое время об этих происшествиях вообще никто не сообщал.");
	elseif ( id == 52151 ) then
		Quest.CloseNPCTalk();
	    Quest.CompleteQuestTalk(52151,"<Font=arial,0,19,20><color=0xfffcf157>Келли:<color=0xffffffff>\\nЗначит, теперь у тебя есть сила, которая позволяет видеть ловушки демонов. Нужно поскорее отправиться в Сноулэнд, чтобы опробовать её.");
	elseif ( id == 52152 ) then
		Quest.CloseNPCTalk();
	    Quest.CompleteQuestTalk(52152,"<Font=arial,0,19,20><color=0xfffcf157>Келли:<color=0xffffffff>\\nКакая мерзость. Эти руны сделаны из сердец волков. На них выжжены какие-то символы. Я не могу это прочитать. Однако я догадываюсь, кто может нам помочь.");
	elseif ( id == 52153 ) then
		Quest.CloseNPCTalk();
	    Quest.CompleteQuestTalk(52153,"<Font=arial,0,19,20><color=0xfffcf157>Келли:<color=0xffffffff>\\nЗначит, вот кто за всем этим стоит. Нужно хорошенько подготовиться. Я заколдую твоё оружие, чтобы ослабить Румию и освободить души охотников.");
	elseif ( id == 52154 ) then
		Quest.CloseNPCTalk();
	    Quest.CompleteQuestTalk(52154,"<Font=arial,0,19,20><color=0xfffcf157>Келли:<color=0xffffffff>\\nОтличная работа. При помощи заколдованного оружия тебе удалось освободить несколько душ. Румия ослаблена. Приходи завтра, чтобы повторить этот славный подвиг.");
    end
end

FEBstory = {}
FEBstory["OnTalk"] = OnTalk
FEBstory["OnAcceptQuestTalk"] = OnAcceptQuestTalk
FEBstory["OnCompleteQuestTalk"] = OnCompleteQuestTalk