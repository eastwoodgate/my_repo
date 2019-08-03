
class Board

	attr_accessor:total_board_moves_array



##necessité d'utiliser @@ pour utiliser une variable dans une sous-classe

  @@total_board_moves_array = []


#Affichage graphique du morpion


  @@A1_graphic = 'A1'
  @@A2_graphic = 'A2'
  @@A3_graphic = 'A3'
  @@B1_graphic = 'B1'
  @@B2_graphic = 'B2'
  @@B3_graphic = 'B3'
  @@C1_graphic = 'C1'
  @@C2_graphic = 'C2'
  @@C3_graphic = 'C3'

  




end



#La classe Player descend de la classe Board, car on a besoin que les deux joueurs puissent remplir l'array commune 'total_moves_array'

class Player < Board
    

    #va nous servir pour stopper la boucle dans app.rb

	attr_accessor :victory


	def initialize(player_name, symbol)

   #Ce tableau va nous servir à savoir si chaque joueur à réalisé une combinaison gagnante, en enregistrant les coups individuels de chaque joueur.
      @individual_moves_array = []


    #chose your symbol

    if symbol == "crosses"

      @symbol = "X"

    elsif symbol == "rounds"

      @symbol = "O"
    	

     end


      @name = player_name


      puts "#{@name} will play with #{symbol}!!"

    #de base, le joueur n'est pas gagnant

      @victory = false

      end


   def play
 
puts "#{@name} needs to chose his next move"

     
     #Ne calcule pas cette commande, tu ne devrais pas en avoir besoin sur ton ordi

      $stdout.sync = true

  #choix du coup du joueur

      @chosen_play = gets.chomp
 
  #Conditions qui permettront, ou non de cocher une case

     if @chosen_play == 'A1'

   	     if @@total_board_moves_array.include? "A1"

   	    	 puts "you can't play here, this position is already occupied"

   	    #si l'array 'total_moves' contient déja la position du coup choisi dans ce cas, on fait repartir le joueur vers le départ de la fonction. On réexecute donc la fonction 'play'.

   	   	    play



   	      else

   	      #si le coup n'a pas été joué par l'un ou l'autre des joueurs, remplir les 2 tableaux mentionnés précedemment.
 
             @@total_board_moves_array << 'A1'

             @individual_moves_array << 'A1'

             @@A1_graphic = @symbol

             puts "#{@name} played in A1"


   	      end


#On répète le meme processus pour toutes les positions possibles.

    elsif @chosen_play == 'A2'

   
   	     if @@total_board_moves_array.include? "A2"

   	    	 puts "you can't play here, this position is already occupied"


   	   	    play



   	      else

 
             @@total_board_moves_array << 'A2'

             @individual_moves_array << 'A2'

             puts "#{@name} played in A2"

               @@A2_graphic = @symbol

   	      end

     elsif @chosen_play == 'A3'

        
   	     if @@total_board_moves_array.include? "A3"

   	    	 puts "you can't play here, this position is already occupied"


   	   	    play



   	      else

 
             @@total_board_moves_array << 'A3'

             @individual_moves_array << 'A3'

             puts "#{@name} played in A3"

             @@A3_graphic = @symbol

   	      end



     elsif @chosen_play == 'B1'
   

   	     if @@total_board_moves_array.include? "B1"

   	    	 puts "you can't play here, this position is already occupied"


   	   	    play



   	      else

 
             @@total_board_moves_array << 'B1'

             @individual_moves_array << 'B1'

             puts "#{@name} played in B1"

             @@B1_graphic = @symbol

   	      end



     elsif @chosen_play == 'B2'

    	 
   	     if @@total_board_moves_array.include? "B2"

   	    	 puts "you can't play here, this position is already occupied"


   	   	    play



   	      else

 
             @@total_board_moves_array << 'B2'

             @individual_moves_array << 'B2'

             puts "#{@name} played in B2"

             @@B2_graphic = @symbol



   	      end

     
       elsif @chosen_play == 'B3'

       
         if @@total_board_moves_array.include? "B3"

           puts "you can't play here, this position is already occupied"


            play



          else

 
             @@total_board_moves_array << 'B3'

             @individual_moves_array << 'B3'

             puts "#{@name} played in B3"

             @@B3_graphic = @symbol



          end



    elsif @chosen_play == 'C1'

    	  if @@total_board_moves_array.include? "C1"

   	    	 puts "you can't play here, this position is already occupied"


   	   	    play






   	      else

 
             @@total_board_moves_array << 'C1'

             @individual_moves_array << 'C1'

             puts "#{@name} played in C1"

             @@C1_graphic = @symbol


   	      end

    elsif @chosen_play == 'C2'

    	if @@total_board_moves_array.include? 'C2'

   	    	 puts "you can't play here, this position is already occupied"


   	   	    play



   	      else

 
             @@total_board_moves_array << 'C2'

             @individual_moves_array << 'C2'

             puts "#{@name} played in C2"

             @@C2_graphic = @symbol


   	      end



    elsif @chosen_play == 'C3'
    	
         if @@total_board_moves_array.include? 'C3'

   	    	 puts "you can't play here, this position is already occupied"


   	   	    play



   	      else

 
             @@total_board_moves_array << 'C3'

             @individual_moves_array << 'C3'

             puts "#{@name} played in C3"

             @@C3_graphic = @symbol


   	      end




    

     end



   #Si l'array de coups réalisées par le joueur contient l'une de ces combinaisons, il a gagné
 


   if @individual_moves_array.include? "A1"&&"A2"&&"A3" 

    puts "#{@name} won"

    @victory = true



   elsif @individual_moves_array.include? "A1"&&"B2"&&"C3"

   	puts "#{@name} won"

   	 @victory = true
   
     elsif @individual_moves_array.include? "A3"&&"B2"&&"C1"

   	puts "#{@name} won"

   	 @victory = true


   elsif @individual_moves_array.include? "B1"&&"B2"&&"B3"
    
    puts "#{@name} won"

     @victory = true

elsif @individual_moves_array.include? "C1"&&"C2"&&"C3"

	   puts "#{@name} won"

	    @victory = true
    	
   


   end



   puts 
   puts


   puts " |----#{@@A1_graphic}--|----#{@@A2_graphic}---|----#{@@A3_graphic}---|"
   puts " |----#{@@B1_graphic}--|----#{@@B2_graphic}---|----#{@@B3_graphic}---|"
   puts " |----#{@@C1_graphic}--|----#{@@C2_graphic}---|----#{@@C3_graphic}---|"


  

    	
 end

   
 
 end