#desafio piedra, papel o tijera avanzado

puts 'Bienvenido a Piedra, papel o tijera avanzado!'

# Menu y validacion de datos jugadores 

def menu(player_n="Player", player_option = 0)
    
    until(player_option >=1 && player_option <=4) do
        puts "
        #{player_n}, selecciona una opcion para comenzar:
        1: Piedra
        2: Papel
        3: Tijera
        4: Salir"

        player_option = gets.chomp.to_i

        if (player_option <= 0 || player_option > 4)
            puts "Valor invalido: Por favor, selecciona una opcion valida."
        end
    end
    return player_option
end

player_1 = menu("Player 1",0)

if (player_1 == 4)
    puts 'Fin del juego. Nos vemos!'
    abort
end   

player_2 = menu("Player 2",0)

if(player_2 == 4)
    puts 'Fin del juego. Nos vemos!'
    abort    
end

#Logica de juego

if player_1 == player_2
    puts "Empate"
elsif player_1 == 1 && player_2 == 3 || player_1 == 2 && player_2 == 1 || player_1 == 3 && player_2 == 2
    puts "Player 1 Gana!"
else player_1 == 1 && player_2 == 2 || player_1 == 2 && player_2 == 3 || player_1 == 3 && player_2 == 1
    puts "Player 2 Gana!"
end


    
    
 
