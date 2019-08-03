require_relative 'lib/classes.rb'



Mike_tyson = Player.new('Mike Tyson', 'crosses')


Sangoku = Player.new('Sangoku', 'rounds')





i = 1


while i < 9

Mike_tyson.play

Sangoku.play

#voir fin fonction play pour comprendre le victory
break if Mike_tyson.victory == true || if Sangoku.victory == true

end

end

