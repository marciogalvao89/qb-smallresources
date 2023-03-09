local Translations = {
    afk = {
        will_kick = 'Você está AFK e será kickado ',
        time_seconds = ' segundos!',
        time_minutes = ' minuto(s)!'
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
