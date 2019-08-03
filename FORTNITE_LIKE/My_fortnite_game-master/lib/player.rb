
class Player


	attr_accessor :name

	attr_accessor :life_points


      




	def initialize(name_to_type)

	  @name = name_to_type


      @life_points = 10


	end


	def show_state

		 if @life_points > 0 


      puts "#{@name} a #{@life_points} points de vie"


    else puts "#{@name} a été tué"


         end



	end


  #On calcule les dommages infligées par chaque attaque

    def compute_random_damage


     return rand(1..6)


    end

  #On calcule les conséquences d'une attaque sur la barre de vie.

    def gets_damage(damage)

      @life_points = @life_points - damage

    end


  #On définit un texte qui s'affiche en cas d'attaque, et on appelle la fonction getsdamage, qui va réduire les vies de l'adversaire.

    def attack (opponent)


    damage_of_this_attack = compute_random_damage


      puts  "#{@name} attaque #{opponent.name}"

      puts "il lui inflige #{damage_of_this_attack} points de vie de dommages"

   
   opponent.gets_damage(damage_of_this_attack)


      if opponent.life_points <= 0 

      	puts "#{opponent.name} is dead"

      end


    end







end



class Human_player < Player


  attr_accessor :weapon_level


  def initialize(name_to_type)

    super(name_to_type)

    @life_points = 100
    @weapon_level = 0

  end



 

  def compute_random_damage

  	rand(1..6)*@weapon_level


  end



  def search_weapon


#weapon wheel = "dés" qui renvoient un nombre aléatoire entre 1 et 6


   @searched_weapon_level = rand(1..6)

   puts "#{@name} ramasse une nouvelle arme."


   if @weapon_level == 0 

    puts "#{@name} saisi donc sa première arme. Elle est de niveau #{@searched_weapon_level}"

    @weapon_level = @searched_weapon_level



   elsif @weapon_level < @searched_weapon_level && @weapon_level > 0

    

   	 puts "wow! l'arme que #{@name} a trouvé est d'un niveau supérieur à celle qu'il a actuellement. Son arme est actuellement de niveau #{@weapon_level}, alors que celle que tu viens de trouver est niveau #{@searched_weapon_level}."
    
      @weapon_level = @searched_weapon_level

  


   elsif @weapon_level > @searched_weapon_level && @weapon_level > 0

    puts "L'arme que #{@name} a trouvé est d'un niveau inférieur. Son arme est actuellement de niveau #{@weapon_level}, alors que celle qu'il vient de trouver est niveau #{@searched_weapon_level}. Il ne change pas d'arme"
    
   elsif @weapon_level = @searched_weapon_level

   	puts "#{@name} as déja cette arme"

   end




  end


end


