--日常任务发布人

local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5610026);
	Quest.SetCompleteOptions(5610026);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Распорядитель ежедневных заданий:<color=0xffffffff>\\nКаждый игрок, достигший 30 уровня, может у меня получить <C>3</C> раза<M> задание </M> о демоническом плоде и <C>3</C> раза <M> секретный приказ </M>.");
end

local function OnAcceptQuestTalk(id,step)--Если вы удалите задание, его можно будет снова добавить в список заданий вручную.
	if( id == 30333)then
  	--  Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30333,"<Font=arial,0,19,20><color=0xfffcf157>Распорядитель ежедневных заданий:<color=0xffffffff>\\nУ вас есть шанс найти росток цветка демонов. С помощью демонической пыльцы вы можете ускорить его рост. Как только цветок окончательно вырастет, он сразу же начнет плодоносить. Принесите мне несколько плодов.");
	elseif( id == 30334)then
  	--  Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(30334,"<Font=arial,0,19,20><color=0xfffcf157>Распорядитель ежедневных заданий:<color=0xffffffff>\\nЯ получил поручение от одного аристократа, который не хочет называть свое имя. Он хочет, чтобы вы уничтожили компрометирующие его вещи. Если вы согласны взяться за это задание - возьмите эту Метку любителя крови. Она поможет вам быстрее переместиться к объекту вашего задания.");

	end
end

--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
	if( id == 30333)then
  	--  Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30333,"<Font=arial,0,19,20><color=0xfffcf157>Распорядитель ежедневных заданий:<color=0xffffffff>\\nВы отлично справились! Вот ваша награда!");
	elseif( id == 30334)then
  	--  Quest.CloseNPCTalk();
		Quest.CompleteQuestTalk(30334,"<Font=arial,0,19,20><color=0xfffcf157>Распорядитель ежедневных заданий:<color=0xffffffff>\\nЗадание выполнено безукоризненно! Спасибо за сотрудничество!");
	end
end

Rrcrwfbr = {}
Rrcrwfbr["OnTalk"] = OnTalk
Rrcrwfbr["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rrcrwfbr["OnCompleteQuestTalk"] = OnCompleteQuestTalk
