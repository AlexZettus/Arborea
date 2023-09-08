
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5010023);
	Quest.SetCompleteOptions(5010023);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Эмиссар душ Фена:<color=0xffffffff><Font=arial,0,17,20>\\nПроверьте параметры эльфа и ячейки душ. У эльфа можно использовать разные  комбинации разных видов душ. Эльфы бывают разных типов и уровней, и могут в зависимости от комбинации увеличивать значения  параметров.");

end


local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
        if( id == 40004)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(40004,"<Font=arial,0,19,20><color=0xfffcf157>Эмиссар душ Фена:<color=0xffffffff><Font=arial,0,17,20>\\nВаш эльф достиг <C>10</C> уровня. Теперь вы можете найти <C>1</C> свободную <N>ячейку души</N> в параметрах.\\nЯчейка используется для комбинации душ. <I>Души</I> разных типов могут комбинироваться и увеличивать параметры персонажа. Вы можете комбинировать их в меню Эльф.\\nПродолжим разговор, когда захотите узнать больше об этом.");
        elseif( id == 40005)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(40005,"<Font=arial,0,19,20><color=0xfffcf157>Эмиссар душ Фена:<color=0xffffffff><Font=arial,0,17,20>\\nВы уже знаете, что типы ячеек различаются? Если присоединяемая душа того же типа, что и ячейка, то будет активирован дополнительный бонусный параметр!\\nЗначение ячейки души может быть изменено, несмотря на её заполнение. Эта функция может быть использована, когда уровень эльфа достигнет <C>60</C>.\\nПоднимите уровень эльфа до <C>20</C> уровня и приходите ко мне снова.");
        elseif( id == 40006)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(40006,"<Font=arial,0,19,20><color=0xfffcf157>Эмиссар душ Фена:<color=0xffffffff><Font=arial,0,17,20>\\nБазовые значения эльфа и сила пробуждения души изменены. Таким образом перед развитием эльфа вы могли бы решить, какой именно эльф вам нужен.\\nКогда ваш эльф достигнет <C>30</C> уровня, я дам вам еще больше наград.");
        elseif( id == 40007)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(40007,"<Font=arial,0,19,20><color=0xfffcf157>Эмиссар душ Фена:<color=0xffffffff><Font=arial,0,17,20>\\n<I>Души эльфа</I> есть разных уровней. Чем выше уровень, тем мощнее душа. Самые мощные души имеют 10 уровень, но некоторые из них можно получить только в подземельях.\\nКак только ваш эльф достигнет <C>40</C> уровня, я дам вам новые <I>души</I>.");
        elseif( id == 40008)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(40008,"<Font=arial,0,19,20><color=0xfffcf157>Эмиссар душ Фена:<color=0xffffffff><Font=arial,0,17,20>\\nВы также можете вставить <T>камни эльфа</T> в эльфа. Особенность этих предметов в том, что они уникальны и могут использоваться только для эльфа.\\nКогда вы поднимете уровень своего эльфа до <C>50</C> уровня, я вам дам несколько <I>камней эльфа</I>.");
        elseif( id == 40009)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(40009,"<Font=arial,0,19,20><color=0xfffcf157>Эмиссар душ Фена:<color=0xffffffff><Font=arial,0,17,20>\\nКак только у вас уровень эльфа достигнет <C>60-го</C> уровня, я расскажу, как комбинировать камни эльфа, а также раскрою секрет выращивания лучших камней эльфов. Удачи!");
		elseif( id == 40002)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(40002,"<Font=arial,0,19,20><color=0xfffcf157>Мастер иллюзий Карина:<color=0xffffffff><Font=arial,0,17,20>\\nПозволь мне рассказать об основных способностях <T>эльфа</T>:\\n<N>I. Вы должны призвать эльфа, потому, что только призванный эльф получает опыт.</N>\\n<A>II. Вы можете одновременно призвать только 1 эльфа.</A>\\n<D>III. Параметры эльфа можно видеть на панели параметров персонажа.</D>\\n<T>IV. Эльфы могут быть разных типов и могут развивать различные способности.</T>\\n<M>V. Эльфы не могут иметь уровень выше, чем уровень их хозяина.</M>\\nПоговорите с <D>Фена</D>, если хотите узнать больше об эльфах.");
		elseif( id == 40003)then
                Quest.CloseNPCTalk();
		Quest.AcceptQuestTalk(40003,"<Font=arial,0,19,20><color=0xfffcf157>Эльф Гатеа:<color=0xffffffff><Font=arial,0,17,20>\\n<N>Параметры</N> эльфа - крайне важная вещь. Определенные параметры растут в зависимости от типа эльфа.\\nКогда ваш эльф достигнет <C>10</C> уровня, вы можете поговорить в <N>Тарио</N> с <D>эмиссаром душ Феной</D>. Она расскажет вам об эльфах подробнее.");
        end
end


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
        if( id == 40004)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(40004,"<Font=arial,0,19,20><color=0xfffcf157>Эмиссар душ Фена:<color=0xffffffff><Font=arial,0,17,20>\\nКаждый раз, когда ваш эльф будет достигать <C>10, 20, 30, 40 и 60</C> уровней, вам будет доступна новая <N>ячейка души</N>. Эльф может иметь максимум <A>5</A> ячеек.\\nВыберите одну душу эльфа и попытайтесь встроить ее в ячейку.");
        elseif( id == 40005)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(40005,"<Font=arial,0,19,20><color=0xfffcf157>Эмиссар душ Фена:<color=0xffffffff><Font=arial,0,17,20>\\nУ вашего эльфа уже <C>2</C> ячейки. Обратите внимание, во время встраивания души одна может заменить уже имеющуюся.\\nДуши эльфа могут быть получены разными путями, например, в подземельях. Идите и сделайте своего эльфа сильнее!");
        elseif( id == 40006)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(40006,"<Font=arial,0,19,20><color=0xfffcf157>Эмиссар душ Фена:<color=0xffffffff><Font=arial,0,17,20>\\nОтлично! Теперь вы знаете, как можно развивать своего эльфа.");
        elseif( id == 40007)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(40007,"<Font=arial,0,19,20><color=0xfffcf157>Эмиссар душ Фена:<color=0xffffffff><Font=arial,0,17,20>\\nС помощью комбинирования душ ваш эльф становится все сильнее и сильнее. Если у вас получится правильно скомбинировать необходимые души, то он станет еще более мощным.");  
        elseif( id == 40008)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(40008,"<Font=arial,0,19,20><color=0xfffcf157>Эмиссар душ Фена:<color=0xffffffff><Font=arial,0,17,20>\\nВозьмите камень эльфа. Помните, что он годен только для усиления эльфа."); 
        elseif( id == 40009)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(40009,"<Font=arial,0,19,20><color=0xfffcf157>Эмиссар душ Фена:<color=0xffffffff><Font=arial,0,17,20>\\nВаш эльф достиг максимального улучшения. Теперь вы можете использовать <color=0xff9933ff>сочетание эльфов<color=0xffffffff>.\\nСочетание расходует один эльф для изменения параметров вашего главного эльфа. <color=0xff9933ff>Параметры и уровни двух эльфов влияют на результат сочетания.<color=0xffffffff> Лучшая ситуация -  все пять ячеек имеют одинаковые параметры. В сочетании эльфа души, помещенные в ячейку, не могут быть изменены.\\nЭто и есть мой секрет развития эльфа. Надеюсь, он поможет вам.\\n<color=0xffff6000>Во-первых, для приобретения лучшего эльфа вам нужно ходить в подземелья.<color=0xffffffff>\\n<color=0xffff6000>Во-вторых, сбросить усиление параметров эльфа.<color=0xffffffff>\\n<color=0xffff6000>В-третьих, увеличивать уровень эльфа и активировать все ячейки.<color=0xffffffff>\\n<color=0xffff6000>В-четвертых, использовать все лучшие души в ячейках.<color=0xffffffff>\\n<color=0xffff6000>В-пятых, использовать сочетание эльфов и менять параметры ячейки, когда пробуждены все силы душ.<color=0xffffffff>\\nОтлично, основные знания об эльфах у вас уже есть."); 
	elseif( id == 40003)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(40003,"<Font=arial,0,19,20><color=0xfffcf157>Эмиссар душ Фена:<color=0xffffffff><Font=arial,0,17,20>\\nОчень хорошо! Замечаете изменения своего эльфа? Это будет происходить дважды с <C>15</C> по <C>60</C> уровень.");  
	elseif( id == 40002)then
              Quest.CloseNPCTalk();
	      Quest.CompleteQuestTalk(40002,"<Font=arial,0,19,20><color=0xfffcf157>Эльф Гатеа:<color=0xffffffff><Font=arial,0,17,20>\\nПризовите <I>эльфа</I>, чтобы он получал часть  вашего опыта и развивался. Затем вы сможете увеличивать его силу и уровень.\\nВам также поможет <I>пыльца эльфа</I> для увеличения его уровня. Чем выше уровень этой пыльцы, тем больше очков опыта получит ваш эльф. Воспользуйтесь панелью параметров эльфа.\\nЯ дам вам бесплатно немного <I>пыльцы эльфа</I>.");
       end


end

Rfana = {}
Rfana["OnTalk"] = OnTalk
Rfana["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rfana["OnCompleteQuestTalk"] = OnCompleteQuestTalk