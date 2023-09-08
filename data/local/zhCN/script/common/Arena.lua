local function OnTalk()
		Quest.ClearNPCTalkOptions();                    --清除对话框选项					--设置对话选项
		Quest.SetNPCTalkOption(EOT_ScenarioTalk,0,ScenarioTalkBegin,"Арена 3 на 3");
		Quest.SetNPCTalkOption(EOT_ScenarioTalk,1,ScenarioTalkBegin,"Об арене");

		Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xffffe289>Управляющий арены: <color=0xffffffff><Font=arial,0,17,20>\\nЕсли вы уверены в своих способностях, то выйдите на арену и попробуйте победить!");
end

local function OnScenarioTalk(id,step)


	if( id == 0 )then --3v3竞技场
	        Quest.CloseNPCTalk();
		PvP.PvPEnterHall(1);

	elseif( id == 1 )then --竞技场规则介绍
		if( step == ScenarioTalkBegin ) then
			Quest.ClearNPCTalkOptions();                    --清除对话框选项
	                Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xffffe289>Управляющий арены: <color=0xffffffff><Font=arial,0,17,20>\\nЧто вы хотите узнать об арене?");
                        Quest.SetNPCTalkOption( EOT_ScenarioTalk,1,ScenarioTalkBegin+1, "Как попасть в комнату ожидания?" );
                        Quest.SetNPCTalkOption( EOT_ScenarioTalk,1,ScenarioTalkBegin+2, "Как попасть на арену?" );
                        Quest.SetNPCTalkOption( EOT_ScenarioTalk,1,ScenarioTalkBegin+3, "Как проходят сражения на арене?" );
			Quest.SetNPCTalkOption( EOT_ScenarioTalk,1,ScenarioTalkBegin+4, "Очки Арены и Очки Героя" );
			Quest.SetNPCTalkOption( EOT_ScenarioTalk,1,ScenarioTalkBegin+5, "Назад" );
		elseif( step == ScenarioTalkBegin+1 ) then
                        Quest.ClearNPCTalkOptions();
			Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xffffe289>Управляющий арены: <color=0xffffffff><Font=arial,0,17,20>\\nПри выборе пункта <color=0xff00a2ff>Арена 3 на 3<color=0xffffffff> вы попадете в комнату ожидания, где сможете просмотреть весь список заявленных арен. Для поиска наиболее подходящей арены можно использовать <color=0xff00a2ff>фильтр<color=0xffffffff> в <color=0xff05ff00>левом нижнем углу<color=0xffffffff>.");
                        Quest.SetNPCTalkOption( EOT_ScenarioTalk,1,ScenarioTalkBegin,"Ок" );
                elseif( step == ScenarioTalkBegin+2 ) then
                        Quest.ClearNPCTalkOptions();
			Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xffffe289>Управляющий арены: <color=0xffffffff><Font=arial,0,17,20>\\nСуществует два вида арен: <color=0xff05ff00>Случайная арена<color=0xffffffff> и <color=0xff05ff00>Особая арена<color=0xffffffff>. Случайная доступна только с 16:00 до 17:00, а Особая - в любое время. Для каждой арены существует <color=0xff00a2ff>лимит входа<color=0xffffffff>, который отображается под названием арены. Если вы хотите установить собственный лимит, выберите пункт <color=0xff00a2ff>Создать арену<color=0xffffffff>, и вы сами сможете задать все необходимые параметры.");
                        Quest.SetNPCTalkOption( EOT_ScenarioTalk,1,ScenarioTalkBegin,"Ок" );
                elseif( step == ScenarioTalkBegin+3 ) then
                        Quest.ClearNPCTalkOptions();
			Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xffffe289>Управляющий арены: <color=0xffffffff><Font=arial,0,17,20>\\nПеред началом сражения всем игрокам дается на подготовку <color=0xff05ff00>1 минута<color=0xffffffff>, в течение которой будут восстановлены все их ОЗ и ОМ, а также будут перезаряжены все навыки. Никто не получит никакой награды, если игрок покинет арену во время подготовки. После подготовки игроки могут начинать сражение. Команда проигрывает, если все ее игроки мертвы. Сражение длится максимум <color=0xffff0000>10<color=0xffffffff> минут, по прошествии которых побеждает команда, в которой осталось больше живых игроков. Если живых игроков в каждой команде поровну, то засчитывается ничья. После сражения игроки получают Очки Героя, в соответствии с их Рангом Арены. （<color=0xffff0000>Игроки, покинувшие арену до конца сражения, не получают никаких наград.<color=0xffffffff>）。");
                        Quest.SetNPCTalkOption( EOT_ScenarioTalk,1,ScenarioTalkBegin,"Ок" );
		elseif( step == ScenarioTalkBegin+4 ) then
                        Quest.ClearNPCTalkOptions();
			Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xffffe289>Управляющий арены: <color=0xffffffff><Font=arial,0,17,20>\\nВ день можно получить только ограниченное количество Очков Арены. В будни максимум составляет <color=0xff05ff00>100<color=0xffffffff>, а в выходные - <color=0xff05ff00>200<color=0xffffffff>. Очки Героя также лимитированы. Вы можете увидеть Очки Арены и Очки Героя на вкладке <color=0xff05ff00>Ранг<color=0xffffffff> в меню персонажа. <color=0xff05ff00>Очки Героя могут быть потрачены на приобретение классового снаряжения, а также материалов.<color=0xffffffff>");
                        Quest.SetNPCTalkOption( EOT_ScenarioTalk,1,ScenarioTalkBegin,"Ок" );
		elseif( step == ScenarioTalkBegin+5 ) then
                        OnTalk();
		end

	end

end

Arena = {}
Arena["OnTalk"] = OnTalk
Arena["OnScenarioTalk"] = OnScenarioTalk
