script.on_event(defines.events.on_runtime_mod_setting_changed, function (event)
    if event.setting == "faster-hand-crafting-speed" then
        for key, value in pairs(game.players) do
            game.players[key].force.manual_crafting_speed_modifier = settings.global["faster-hand-crafting-speed"].value
        end
    end
end)

script.on_event(defines.events.on_player_joined_game, function (event)
    for key, value in pairs(game.players) do
        game.players[key].force.manual_crafting_speed_modifier = settings.global["faster-hand-crafting-speed"].value
    end
end)