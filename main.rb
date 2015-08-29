def new_board(title)#{}
	puts "\n" + title +
	"""
	
	   |   |   
	___|___|___
	   |   |   
	___|___|___
	   |   |   
	   |   |
	   
	   """
 end
 

def player_1_marker
	puts "Player 1, please choose an X or O."
	gets.chomp.upcase
end

def player_2(marker)
	if marker == "X"
		"O"
	else "X"
	end
end

def player_markers
	player_1 = player_1_marker
	player_2 = player_2(player_1)
	puts "Player 1 is #{player_1} and Player 2 is #{player_2}."
end

new_board("Would you like to play a game?")
new_board("The current board is:")
player_markers
