local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --Очистить выбор в окне диалога
	Quest.SetAcceptOptions(5600077);
	Quest.SetCompleteOptions(5600077);
	Quest.SetNPCTalkOption( EOT_GodEvilRepute,1,0, "Навыки и улучшение кристалла Абсолема" )
	Quest.NPCTalk(0,0,"<font=Dragon Font,0,19,20><color=0xfffcf157>Страж Бастиона: <color=0xffffffff><font=Dragon Font,0,17,20>\\nЯ вижу что смертные достигли мастерства и смелости, необходимых для того чтобы ходить меж мирами!");
end


local function OnAcceptQuestTalk(id,step)--Если отменить задание, можно принять его заново вручную.
	if( id == 30834)then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30834,"<font=Dragon Font,0,19,20><color=0xfffcf157>Страж Бастиона: <color=0xffffffff><font=Dragon Font,0,17,20>\\nТысячи лет здесь произошло событие о котором ты явно ничего не знаешь, человек.*смеётся* Эти жалкие лицемеры Элизиума убедили всех в том что мы начали войну! На самом деле мы просто хотели жить своей жизнью и в своём мире. Поняв что Абсолем не желает существовать под диктатом, Элизиум начал войну. В те века, мы пытались найти союзников и новое пристанище в мире Теоса, однако всё вышло не так как мы рассчитывали. Однако ты здесь и я готов дать тебе ключ к знанию и свободе.");
	end
	if( id == 30836)then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30836,"<font=Dragon Font,0,19,20><color=0xfffcf157>Страж Бастиона: <color=0xffffffff><font=Dragon Font,0,17,20>\\nВ разгар решающего сражения мы отступили к Бастиону. Элизиум решил что победил в битве, однако тогда мы лишь готовились к наступлению. Судьба решила иначе - загорелось само время и мы оказались заперты в этом захолустье в компании с этими венценосными снобами! Теперь война продолжается и мы раз за разом сбиваем с них спесь. Не желаешь присоединиться к веселью и узнать что это - сражаться на стороне великой Тьмы?");
	end
	if( id == 30838)then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30838,"<font=Dragon Font,0,19,20><color=0xfffcf157>Страж Бастиона: <color=0xffffffff><font=Dragon Font,0,17,20>\\nМои братья и сёстры отдали свои тела в тот миг, когда мы крошили в пыль Постамент Судей. Сейчас всё потеряло смысл а герои Абсолема бродят по полям сражений. Они страдают без своих тел и силы. Готов ли ты протянуть руку помощи тем, кого считал врагом своего народа? ");
	end
	if( id == 30840)then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30840,"<font=Dragon Font,0,19,20><color=0xfffcf157>Страж Бастиона: <color=0xffffffff><font=Dragon Font,0,17,20>\\nВоспоминания о битве за Постамент Судей вызывают у меня улыбку, человечек. Тогда много моих собратьев пожертвовали своими телами для того, чтобы мы могли пробиться к артефакту, однако видели бы твои собратья, как вытянулись лица этих лицемеров, когда они поняли что их сила пошла на убыль! *хохочет* Видишь эти зазубрины на моём топоре? Я был одним из тех кто обрёк Элизиум на отчаяние. Сейчас они пытаются восстановить артефакт. Это лишено смысла, однако чем не повод посыпать солью их раны? Собери необходимые для восстановления материалы, для того чтобы они не достались Свету. Наградой станет благодарность Абсолема и... Веселье, что же ещё!");
	end
	if( id == 30842)then
		Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30842,"<font=Dragon Font,0,19,20><color=0xfffcf157>Страж Бастиона: <color=0xffffffff><font=Dragon Font,0,17,20>\\nМне обидно это признавать, однако Свет тоже бываает мудрым. Хм... Они раньше нас поняли что можно построить мост из кристаллов силы и сделать ноги из этой ловушки! Теперь ведётся гонка за билет из этого мира. Готов ли ты нам помочь.");
	end
end


--Нажать после выбора задания
local function OnCompleteQuestTalk(id,step)
	if( id == 30834)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30834,"<font=Dragon Font,0,19,20><color=0xfffcf157>Страж Кафедрала: <color=0xffffffff><font=Dragon Font,0,17,20>\\nС этим кристаллом Абсолема отыщи путь к своей свободе! Да пребудет с тобой мудрость великой Тьмы!");
	end
	if( id == 30836)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30836,"<font=Dragon Font,0,19,20><color=0xfffcf157>Страж Бастиона: <color=0xffffffff><font=Dragon Font,0,17,20>\\nДа пребудет с тобой сила демонов!");
	end
	if( id == 30838)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30838,"<font=Dragon Font,0,19,20><color=0xfffcf157>Страж Кафедрала: <color=0xffffffff><font=Dragon Font,0,17,20>\\nДа пребудет с тобой сила демонов!");
	end
	if( id == 30840)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30840,"<font=Dragon Font,0,19,20><color=0xfffcf157>Страж Кафедрала: <color=0xffffffff><font=Dragon Font,0,17,20>\\nДа пребудет с тобой сила демонов!");
	end
	if( id == 30842)then
		Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30842,"<font=Dragon Font,0,19,20><color=0xfffcf157>Страж Кафедрала: <color=0xffffffff><font=Dragon Font,0,17,20>\\nДа пребудет с тобой сила демонов!");
	end
end

Rzenghenshouwei = {}
Rzenghenshouwei["OnTalk"] = OnTalk
Rzenghenshouwei["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rzenghenshouwei["OnCompleteQuestTalk"] = OnCompleteQuestTalk