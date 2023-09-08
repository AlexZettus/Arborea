

local function OnTalk()
	Quest.ClearNPCTalkOptions();                    --清除对话框选项
	Quest.SetCompleteOptions(3610209);		
	Quest.NPCTalk(0,0,"<Font=arial,0,19,20><color=0xffffe289>Король Ракшаса:<color=0xfffff7e0><Font=arial,0,17,20>\\nДля вас большая честь разговаривать со мной лично!");
end 


--点击交任务选项后
local function OnCompleteQuestTalk(id,step)
     if( id == 20264)then
              Quest.CloseNPCTalk();	
	      Quest.CompleteQuestTalk(20264,"<Font=arial,0,19,20><color=0xffffe289>Король Ракшаса:<color=0xfffff7e0><Font=arial,0,17,20>\\nАшура убит, вас ждет хорошая награда!"); 
     elseif( id == 20299)then
              Quest.CloseNPCTalk();	
	      Quest.CompleteQuestTalk(20299,"<Font=arial,0,19,20><color=0xffffe289>Король Ракшаса:<color=0xfffff7e0><Font=arial,0,17,20>\\nАшура убит, вас ждет хорошая награда!"); 
     elseif( id == 20300)then
              Quest.CloseNPCTalk();	
	      Quest.CompleteQuestTalk(20300,"<Font=arial,0,19,20><color=0xffffe289>Король Ракшаса:<color=0xfffff7e0><Font=arial,0,17,20>\\nАшура убит, вас ждет хорошая награда!");
     elseif( id == 20301)then
              Quest.CloseNPCTalk();	
	      Quest.CompleteQuestTalk(20301,"<Font=arial,0,19,20><color=0xffffe289>Король Ракшаса:<color=0xfffff7e0><Font=arial,0,17,20>\\nАшура убит, вас ждет хорошая награда!");
     elseif( id == 20302)then
              Quest.CloseNPCTalk();	
	      Quest.CompleteQuestTalk(20302,"<Font=arial,0,19,20><color=0xffffe289>Король Ракшаса:<color=0xfffff7e0><Font=arial,0,17,20>\\nАшура убит, вас ждет хорошая награда!");
     elseif( id == 20303)then
              Quest.CloseNPCTalk();	
	      Quest.CompleteQuestTalk(20303,"<Font=arial,0,19,20><color=0xffffe289>Король Ракшаса:<color=0xfffff7e0><Font=arial,0,17,20>\\nАшура убит, вас ждет хорошая награда!");
     elseif( id == 20304)then
              Quest.CloseNPCTalk();	
	      Quest.CompleteQuestTalk(20304,"<Font=arial,0,19,20><color=0xffffe289>Король Ракшаса:<color=0xfffff7e0><Font=arial,0,17,20>\\nАшура убит, вас ждет хорошая награда!");
     elseif( id == 20305)then
              Quest.CloseNPCTalk();	
	      Quest.CompleteQuestTalk(20305,"<Font=arial,0,19,20><color=0xffffe289>Король Ракшаса:<color=0xfffff7e0><Font=arial,0,17,20>\\nАшура убит, вас ждет хорошая награда!");
     elseif( id == 20306)then
              Quest.CloseNPCTalk();	
	      Quest.CompleteQuestTalk(20306,"<Font=arial,0,19,20><color=0xffffe289>Король Ракшаса:<color=0xfffff7e0><Font=arial,0,17,20>\\nАшура убит, вас ждет хорошая награда!");
     elseif( id == 20307)then
              Quest.CloseNPCTalk();	
	      Quest.CompleteQuestTalk(20307,"<Font=arial,0,19,20><color=0xffffe289>Король Ракшаса:<color=0xfffff7e0><Font=arial,0,17,20>\\nАшура убит, вас ждет хорошая награда!");
     elseif( id == 20308)then
              Quest.CloseNPCTalk();	
	      Quest.CompleteQuestTalk(20308,"<Font=arial,0,19,20><color=0xffffe289>Король Ракшаса:<color=0xfffff7e0><Font=arial,0,17,20>\\nАшура убит, вас ждет хорошая награда!");
     elseif( id == 20309)then
              Quest.CloseNPCTalk();	
	      Quest.CompleteQuestTalk(20309,"<Font=arial,0,19,20><color=0xffffe289>Король Ракшаса:<color=0xfffff7e0><Font=arial,0,17,20>\\nАшура убит, вас ждет хорошая награда!");
     elseif( id == 20310)then
              Quest.CloseNPCTalk();	
	      Quest.CompleteQuestTalk(20310,"<Font=arial,0,19,20><color=0xffffe289>Король Ракшаса:<color=0xfffff7e0><Font=arial,0,17,20>\\nАшура убит, вас ждет хорошая награда!");
     end
end

Rluoshawang = {}
Rluoshawang["OnTalk"] = OnTalk
Rluoshawang["OnCompleteQuestTalk"] = OnCompleteQuestTalk