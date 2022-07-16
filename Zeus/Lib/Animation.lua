--Welcome Animtion
local function HotkeyHandler(Params)
    local key = MenuKey()
    for i=1,#Params.Keys do
        key:push_str(Params.Keys[i])
    end
    local isDown = false
    while true do
        local pressed = key:is_down()
        if pressed then
            if not isDown then
                Params.Callback()
            end
            isDown = true
        else
            isDown = false
        end
        system.wait(1)
    end
  end
  
    local function HiOnEnter()
      advierrrr.on = false
      ui.notify_above_map("Skipped loading", "Dracula", 222)
     
    end
    
  
    local EnterHotkeyThread = nil
    local Script_loggerthread = nil
    advierrrr= menu.add_feature("11","toggle", 0,function(f,pid)
  
        if f.on then
            if not EnterHotkeyThread then
                EnterHotkeyThread = menu.create_thread(HotkeyHandler, {Keys = {"NOMOD", "/"}, Callback = HiOnEnter})
            end
  
        else
            if EnterHotkeyThread then
                menu.delete_thread(EnterHotkeyThread)
                EnterHotkeyThread = nil
            end
        end
    end)
    advierrrr.hidden = true
    advierrrr.on = true
    
  
  function welcome(feat)
  
      
  advier= menu.add_feature("11","toggle", everyone,function(k,pid)
      while k.on do
          ui.set_text_color(255, 165, 0, 255)			
                  ui.set_text_scale(3)
                  ui.set_text_font(0)
                  ui.set_text_centre(false)
                  ui.set_text_outline(true)
      ui.set_text_font(1)
      system.wait(1)
      end
      k.on = false
      end)
      advier.hidden = true
      logo= menu.add_feature("11","toggle", everyone,function(k,pid)
        while k.on do
            ui.set_text_color(0, 132, 255, 255)
            ui.set_text_scale(1.5)
            ui.set_text_font(7)
            ui.set_text_centre(true)
            ui.set_text_outline(true)
            ui.draw_text("Welcome", v2(0.5, 0.33))
            ui.set_text_color(255, 255, 255, 255)
            ui.set_text_scale(1.5)
            ui.set_text_font(7)
            ui.set_text_centre(true)
            ui.set_text_outline(true)
            ui.draw_text("To", v2(0.5, 0.4))
            ui.set_text_color(0, 132, 255, 255)
            ui.set_text_scale(1.5)
            ui.set_text_font(7)
            ui.set_text_centre(true)
            ui.set_text_outline(true)
            ui.draw_text("Dracula", v2(0.5, 0.48))
            ui.set_text_color(0, 132, 255, 255)
            ui.set_text_scale(0.7)
            ui.set_text_font(7)
            ui.set_text_centre(true)
            ui.set_text_outline(true)
            ui.draw_text("Version "..Dracula_version, v2(0.5, 0.57))
            ui.set_text_color(255, 255, 255, 255)
            ui.set_text_scale(0.5)
            ui.set_text_font(7)
            ui.set_text_centre(true)
            ui.set_text_outline(true)
            ui.draw_text(tostring(player.get_player_name(player.player_id())), v2(0.5, 0.68))
            system.wait(1)
        end
        k.on = false
    end
)
        logo.hidden = true
        logo4= menu.add_feature("11","toggle", everyone,function(k,pid)
            while k.on do
                
                ui.set_text_color(0, 132, 255, 255)				
                        ui.set_text_scale(0.5)
                        ui.set_text_font(0)
                        ui.set_text_centre(true)
                        ui.set_text_outline(true)
            ui.set_text_font(1)
            system.wait(1)
            end
            k.on = false
            end)
            logo4.hidden = true
            logo14= menu.add_feature("11","toggle", everyone,function(k,pid)
                while k.on do
                    
                    
                    ui.draw_rect(0.501, 0.501, 0.5, 0.5, 0, 0, 0, 180)
                    
                system.wait(1)
                end
                

                k.on = false

            
                end)
                logo14.hidden = true
        logogo = menu.add_feature("Begin", "action", everyone, function(k, pid)
        system.wait(1000)
        if advierrrr.on == true then
        system.wait(1000)
        graphics.set_next_ptfx_asset("scr_trevor1")
        while not graphics.has_named_ptfx_asset_loaded("scr_trevor1") do
            graphics.request_named_ptfx_asset("scr_trevor1")
            system.wait(0)
        end
        
        system.wait(1)

        
        logo14.on = true
        logo.on = true
        system.wait(2000)
        logo.on = false
        logo14.on = false
        else
        
        logo10.on = true
        end
                  
        system.wait(1)
        graphics.set_next_ptfx_asset("scr_trevor1")
        while not graphics.has_named_ptfx_asset_loaded("scr_trevor1") do
          graphics.request_named_ptfx_asset("scr_trevor1")
          system.wait(0)
        end
        system.wait(1)
  
      end)
  
  
      logogo.hidden = true
      logogo.on = true
    end
  welcome()
  -----------------------------------------------------------------------------Startup Animation