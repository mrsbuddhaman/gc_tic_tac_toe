def board(title, board_array)
	
	puts "\n" + title +
	"""
	
   |   | 
   |   |
 #{board_array[0]} | #{board_array[1]} | #{board_array[2]}
___|___|___
   |   |   
 #{board_array[3]} | #{board_array[4]} | #{board_array[5]} 
   |   |   
___|___|___
   |   |
 #{board_array[6]} | #{board_array[7]} | #{board_array[8]}
___|___|___
   |   |
   |   |
	  
	   """
 end
 
 board_positions_array = ["0","1","2","3","4","5","6","7","8"]
 current_board_array = Array.new(9," ")
 board("Welcome to Tic Tac Toe!" , board_positions_array)
 board("The current board is", current_board_array)
 

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
	@player_1 = player_1_marker
	@player_2 = player_2(@player_1)
	puts "Player 1 is #{@player_1} and Player 2 is #{@player_2}."
end

 
  player_markers

  puts "Player 1, (#{@player_1})- please choose a square between 0 and 8"
  move = gets.to_i
  
  current_board_array[move] = "#{@player_1}"
  board("Player 1 (#{@player_1}) chose space #{move}", current_board_array)

