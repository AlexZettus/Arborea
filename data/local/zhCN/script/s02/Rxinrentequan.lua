
local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetAcceptOptions(5810101);
	Quest.SetCompleteOptions(5810101);
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xfffcf157>Хранитель привилегий новичков:<color=0xffffffff><Font=arial,0,17,20>\\nТолько новый созданный персонаж, чей уровень ниже 59-го, имеет право получить привилегию новичка.");

end


local function OnAcceptQuestTalk(id,step)--如果删除任务，可重新手动接取
    if( id == 30725)then
            Quest.CloseNPCTalk();
						Quest.AcceptQuestTalk(30725,"<Font=arial,0,19,20><color=0xfffcf157>Хранитель привилегий новичков:<color=0xffffffff><Font=arial,0,17,20>\\nЯ даю привилегию новичка не каждому. Пожалуйста, проверьте, есть ли у вас усиление Поощрения новичка. Если да, то я дам вам его.");
    elseif( id == 30726)then
            Quest.CloseNPCTalk();
						Quest.AcceptQuestTalk(30726,"<Font=arial,0,19,20><color=0xfffcf157>Хранитель привилегий новичков:<color=0xffffffff><Font=arial,0,17,20>\\nЯ даю привилегию новичка не каждому. Пожалуйста, проверьте, есть ли у вас усиление Поощрения новичка. Если да, то я дам вам его.");
    elseif( id == 30727)then
            Quest.CloseNPCTalk();
						Quest.AcceptQuestTalk(30727,"<Font=arial,0,19,20><color=0xfffcf157>Хранитель привилегий новичков:<color=0xffffffff><Font=arial,0,17,20>\\nЕсли вы хотите собрать комплект легендарного снаряжения, вам нужно принимать участие в ивентах. Пожалуйста, пройдите ивент Вечный ад, и я вам дам дополнительный Знак воителя.");
    elseif( id == 30728)then
            Quest.CloseNPCTalk();
						Quest.AcceptQuestTalk(30728,"<Font=arial,0,19,20><color=0xfffcf157>Хранитель привилегий новичков:<color=0xffffffff><Font=arial,0,17,20>\\nВы можете обменять <C>2</C> красочных нефрита на синее снаряжение 20-го уровня. Используйте золотой бриллиант Снежного пика, чтобы переплавить камни духов в красочный нефрит.");
    elseif( id == 30729)then
            Quest.CloseNPCTalk();
						Quest.AcceptQuestTalk(30729,"<Font=arial,0,19,20><color=0xfffcf157>Хранитель привилегий новичков:<color=0xffffffff><Font=arial,0,17,20>\\nВы можете обменять <C>2</C> красочных нефрита на синее снаряжение 20-го уровня. Используйте золотой бриллиант Снежного пика, чтобы переплавить камни духов в красочный нефрит.");
		elseif( id == 30730)then
            Quest.CloseNPCTalk();
						Quest.AcceptQuestTalk(30730,"<Font=arial,0,19,20><color=0xfffcf157>Хранитель привилегий новичков:<color=0xffffffff><Font=arial,0,17,20>\\nВы можете обменять <C>4</C> красочных нефрита на синее снаряжение 30-го уровня. Используйте золотой бриллиант Снежного пика, чтобы переплавить камни духов в красочный нефрит.");
		elseif( id == 30731)then
            Quest.CloseNPCTalk();
						Quest.AcceptQuestTalk(30731,"<Font=arial,0,19,20><color=0xfffcf157>Хранитель привилегий новичков:<color=0xffffffff><Font=arial,0,17,20>\\nВы можете обменять <C>4</C> красочных нефрита на синее снаряжение 30-го уровня. Используйте золотой бриллиант Снежного пика, чтобы переплавить камни духов в красочный нефрит.");
		elseif( id == 30732)then
            Quest.CloseNPCTalk();
						Quest.AcceptQuestTalk(30732,"<Font=arial,0,19,20><color=0xfffcf157>Хранитель привилегий новичков:<color=0xffffffff><Font=arial,0,17,20>\\nВы можете обменять <C>7</C> красочных нефрита на синее снаряжение 40-го уровня. Используйте золотой бриллиант Снежного пика, чтобы переплавить камни духов в красочный нефрит.");
		elseif( id == 30733)then
            Quest.CloseNPCTalk();
						Quest.AcceptQuestTalk(30733,"<Font=arial,0,19,20><color=0xfffcf157>Хранитель привилегий новичков:<color=0xffffffff><Font=arial,0,17,20>\\nВы можете обменять <C>7</C> красочных нефрита на синее снаряжение 40-го уровня. Используйте золотой бриллиант Снежного пика, чтобы переплавить камни духов в красочный нефрит.");
		elseif( id == 30734)then
            Quest.CloseNPCTalk();
						Quest.AcceptQuestTalk(30734,"<Font=arial,0,19,20><color=0xfffcf157>Хранитель привилегий новичков:<color=0xffffffff><Font=arial,0,17,20>\\nВы можете обменять <C>15</C> красочных нефрита на синее снаряжение 50-го уровня. Используйте золотой бриллиант Снежного пика, чтобы переплавить камни духов в красочный нефрит.");
		elseif( id == 30735)then
            Quest.CloseNPCTalk();
						Quest.AcceptQuestTalk(30735,"<Font=arial,0,19,20><color=0xfffcf157>Хранитель привилегий новичков:<color=0xffffffff><Font=arial,0,17,20>\\nВы можете обменять <C>15</C> красочных нефрита на синее снаряжение 50-го уровня. Используйте золотой бриллиант Снежного пика, чтобы переплавить камни духов в красочный нефрит.");
		elseif( id == 30736)then
            Quest.CloseNPCTalk();
						Quest.AcceptQuestTalk(30736,"<Font=arial,0,19,20><color=0xfffcf157>Хранитель привилегий новичков:<color=0xffffffff><Font=arial,0,17,20>\\nВы можете обменять <C>25</C> красочных нефрита на синее снаряжение 60-го уровня. Используйте золотой бриллиант Снежного пика, чтобы переплавить камни духов в красочный нефрит.");
    elseif( id == 30737)then
            Quest.CloseNPCTalk();
						Quest.AcceptQuestTalk(30737,"<Font=arial,0,19,20><color=0xfffcf157>Хранитель привилегий новичков:<color=0xffffffff><Font=arial,0,17,20>\\nВы можете обменять <C>25</C> красочных нефрита на синее снаряжение 60-го уровня. Используйте золотой бриллиант Снежного пика, чтобы переплавить камни духов в красочный нефрит.");

    end
end


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
    if( id == 30725)then
          Quest.CloseNPCTalk();
    			Quest.CompleteQuestTalk(30725,"<Font=arial,0,19,20><color=0xfffcf157>Хранитель привилегий новичков:<color=0xffffffff><Font=arial,0,17,20>\\nНе выбрасывайте и не продавайте золотой бриллиант Снежного пика - она вам еще не раз пригодится.");
    elseif( id == 30726)then
          Quest.CloseNPCTalk();
    			Quest.CompleteQuestTalk(30726,"<Font=arial,0,19,20><color=0xfffcf157>Хранитель привилегий новичков:<color=0xffffffff><Font=arial,0,17,20>\\nС помощью этих материалов вы можете найти эльфа и привязать его к себе.");
    elseif( id == 30727)then
          Quest.CloseNPCTalk();
   			  Quest.CompleteQuestTalk(30727,"<Font=arial,0,19,20><color=0xfffcf157>Хранитель привилегий новичков:<color=0xffffffff><Font=arial,0,17,20>\\nСо Знаком воителя вы можете получить легендарное снаряжение выше 40-го уровня.");
    elseif( id == 30728)then
          Quest.CloseNPCTalk();
    			Quest.CompleteQuestTalk(30728,"<Font=arial,0,19,20><color=0xfffcf157>Хранитель привилегий новичков:<color=0xffffffff><Font=arial,0,17,20>\\nПриходите ко мне обменивать снаряжение, когда у вас будет больше красочных нефритов.");
    elseif( id == 30729)then
          Quest.CloseNPCTalk();
   				Quest.CompleteQuestTalk(30729,"<Font=arial,0,19,20><color=0xfffcf157>Хранитель привилегий новичков:<color=0xffffffff><Font=arial,0,17,20>\\nПриходите ко мне обменивать снаряжение, когда у вас будет больше красочных нефритов.");
    elseif( id == 30730)then
          Quest.CloseNPCTalk();
   				Quest.CompleteQuestTalk(30730,"<Font=arial,0,19,20><color=0xfffcf157>Хранитель привилегий новичков:<color=0xffffffff><Font=arial,0,17,20>\\nПриходите ко мне обменивать снаряжение, когда у вас будет больше красочных нефритов.");
   	elseif( id == 30731)then
          Quest.CloseNPCTalk();
   				Quest.CompleteQuestTalk(30731,"<Font=arial,0,19,20><color=0xfffcf157>Хранитель привилегий новичков:<color=0xffffffff><Font=arial,0,17,20>\\nПриходите ко мне обменивать снаряжение, когда у вас будет больше красочных нефритов.");
   	elseif( id == 30732)then
          Quest.CloseNPCTalk();
   				Quest.CompleteQuestTalk(30732,"<Font=arial,0,19,20><color=0xfffcf157>Хранитель привилегий новичков:<color=0xffffffff><Font=arial,0,17,20>\\nПриходите ко мне обменивать снаряжение, когда у вас будет больше красочных нефритов.");
   elseif( id == 30733)then
          Quest.CloseNPCTalk();
   				Quest.CompleteQuestTalk(30733,"<Font=arial,0,19,20><color=0xfffcf157>Хранитель привилегий новичков:<color=0xffffffff><Font=arial,0,17,20>\\nПриходите ко мне обменивать снаряжение, когда у вас будет больше красочных нефритов.");
   elseif( id == 30734)then
          Quest.CloseNPCTalk();
   				Quest.CompleteQuestTalk(30734,"<Font=arial,0,19,20><color=0xfffcf157>Хранитель привилегий новичков:<color=0xffffffff><Font=arial,0,17,20>\\nПриходите ко мне обменивать снаряжение, когда у вас будет больше красочных нефритов.");
   	elseif( id == 30735)then
          Quest.CloseNPCTalk();
   				Quest.CompleteQuestTalk(30735,"<Font=arial,0,19,20><color=0xfffcf157>Хранитель привилегий новичков:<color=0xffffffff><Font=arial,0,17,20>\\nПриходите ко мне обменивать снаряжение, когда у вас будет больше красочных нефритов.");
   	elseif( id == 30736)then
          Quest.CloseNPCTalk();
   				Quest.CompleteQuestTalk(30736,"<Font=arial,0,19,20><color=0xfffcf157>Хранитель привилегий новичков:<color=0xffffffff><Font=arial,0,17,20>\\nПриходите ко мне обменивать снаряжение, когда у вас будет больше красочных нефритов.");
   	elseif( id == 30737)then
          Quest.CloseNPCTalk();
   				Quest.CompleteQuestTalk(30737,"<Font=arial,0,19,20><color=0xfffcf157>Хранитель привилегий новичков:<color=0xffffffff><Font=arial,0,17,20>\\nПриходите ко мне обменивать снаряжение, когда у вас будет больше красочных нефритов.");
    end
end

Rxinrentequan = {}
Rxinrentequan["OnTalk"] = OnTalk
Rxinrentequan["OnAcceptQuestTalk"] = OnAcceptQuestTalk
Rxinrentequan["OnCompleteQuestTalk"] = OnCompleteQuestTalk