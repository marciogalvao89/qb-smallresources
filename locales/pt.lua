local Translations = {
    afk = {
        will_kick = "Estás AFK e vais ser kickado em",
        time_seconds = " segundos!",
        time_minutes = " minutos!",
        kick_message = "Foste Kickado Por Estares AFK",
    },
    error = {
        ["car_wash_canceled"] = "Lavagem cancelada...",
        ["car_wash_notdirty"] = "O veículo não está sujo",
        ["cruise_deactivated"] = "Cruise control desativado",
        ["cruise_unavailable"] = "Cruise control indisponível",
        ["not_in_car"] = "Não estás dentro de um carro.",
        ["dont_have_enough_money"] = "Não tens dinheiro suficiente...",
        ["global_canceled"] = "Cancelado...",
    },
    wash = {
        in_progress = "O veículo está sendo lavado ..",
        wash_vehicle = "[E] Lavar veículo",
        wash_vehicle_target = "Lavar veículo",
        dirty = "O veículo não está sujo",
        cancel = "Lavagem cancelada ..",
    },
    consumables = {
        eat_progress = "Comendo..",
        drink_progress = "Bebendo..",
        liqour_progress = "Beber licor..",
        coke_progress = "cheirar rápido..",
        crack_progress = "fumar crack..",
        ecstasy_progress = "Pops Pills",
        healing_progress = "Curar",
        meth_progress = "Fumar metanfetamina",
        joint_progress = "Acenter uma Ganza..",
        use_parachute_progress = "Colocando paraquedas..",
        pack_parachute_progress = "Arrumar paraquedas..",
        no_parachute = "voce nao tem paraquedas!",
        armor_full = "Você já tem armadura suficiente!",
        armor_empty = "Você não está vestindo um colete..",
        armor_progress = "Colocando a armadura corporal..",
        heavy_armor_progress = "Colocando a armadura corporal..",
        remove_armor_progress = "Removendo a armadura corporal..",
        canceled = "Cancelado..",
    },
    cruise = {
        unavailable = "Cruise control indisponível",
        activated = "Cruise Activado: ",
        deactivated = "Cruise Desactivado",
    text = {
        ["car_wash_text"] = "~g~E~w~ - Lavar Veículo (%{price}€)",
        ["car_wash_not_available"] = "A estação de lavagem não está disponível...",
        ["time_until_firework"] = "Fogo de Artifício em ~r~%{time}",
        ["push_vehicle"] = "[~g~SHIFT~w~] + [~g~E~w~] para empurrar veículo",
    },
    editor = {
        started = "Started Recording!",
        save = "Saved Recording!",
        delete = "Deleted Recording!",
        editor = "Later aligator!"
    },
    firework = {
        place_progress = "Colocar objeto..",
        canceled = "Cancelado..",
        time_left = "Fogo de artifício acabou ~r~"
    },
    seatbelt = {
        use_harness_progress = "Prendendo o Arnês de Corrida",
        remove_harness_progress = "Removendo o arnês de corrida",
        no_car = "Você não está em um carro."
    },
    teleport = {
        teleport_default = 'Usar elevador'
    },
    pushcar = {
        stop_push = "[E] Parar de Empurrar"
    }


}


if GetConvar('qb_locale', 'en') == 'pt' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
Lang = Locale:new({phrases = Translations, warnOnMissing = true})
