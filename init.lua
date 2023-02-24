-- Définir la commande "who"
minetest.register_chatcommand("who", {
    description = "Displays the number of connected players",
    func = function(name)
        -- Récupérer la liste des joueurs connectés
        local players = minetest.get_connected_players()
        -- Récupérer le nombre de joueurs connectés
        local count = #players
        -- Afficher le nombre de joueurs connectés dans la console du serveur
        print("There are " .. count .. " player(s) connected: "..table.concat(players, ", "))
        -- Afficher le nombre de joueurs connectés dans le chat du joueur qui a exécuté la commande
        if name and name ~= "" then
            minetest.chat_send_player(name, "There are " .. count .. " player(s) connected: "..table.concat(players, ", "))
        end
    end,
})
