

require 'bundler'



require_relative 'lib/player.rb'




#creation des deux combattants


FireDragon978 = Human_player.new('FireDragon978')

NorthWarrior88 = Human_player.new('NorthWarrior88')








#fight until death-->loop



def fight



	puts "***********FIIIIIIGGGGGGGGGGGGGGGHHHHHHHHHHHTTTTTTTT"


#la boucle se repete jusqu'à ce qu'un des deux joueurs meurt


  until FireDragon978.life_points <= 0 || NorthWarrior88.life_points <= 0



break if NorthWarrior88.life_points <= 0

break if FireDragon978.life_points <= 0



#-->Premiere attaque


    puts

    FireDragon978.search_weapon

    puts

    FireDragon978.attack(NorthWarrior88)

    puts
    puts
    

    puts NorthWarrior88.show_state

    puts
    puts

   


#-->Riposte

    NorthWarrior88.search_weapon

    puts

    NorthWarrior88.attack(FireDragon978)

    puts
    puts


    FireDragon978.show_state




#On veut que, au cas où l'un des deux meurt en premier, il ne puisse pas attaquer en retour, avant que la boucle ne s'achève.
#Nous interropons donc la boucle en cas de mort d'un des combattants.



#-->doesn't work

   

  
 



  	
  end


  

   
end



#call fight function




    fight

    