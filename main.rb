class Game
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

 
 
 
 

def player_1_marker
	puts "Player 1, please choose an X or O."
	choice = gets.chomp.upcase
	if marker_valid?(choice) == true
	choice
	else
	player_1_marker
	end
end

def player_2(marker)
	if marker == "X"
		"O"
	else "X"
	end
end

def marker_valid?(marker)
	 marker == "X" || marker =="O"
	
end


def player_markers
	@player_1 = player_1_marker
	@player_2 = player_2(@player_1)
	puts "Player 1 is #{@player_1} and Player 2 is #{@player_2}."
	@current_player = @player_1
end

def square_valid?(square, board)
	square >0 && square <10 && board[square-1] == (" ")
end
	def start_game
		@board_positions_array = ["1","2","3","4","5","6","7","8","9"]
		@current_board_array = Array.new(9," ")
		board("Welcome to Tic Tac Toe!" ,@board_positions_array)
		board("The current board is", @current_board_array)
		player_markers
		game_play
	end
	
	def square_chooser	
		if @current_player == @player_1
			@n = 1
		else
			@n = 2
		end
		puts "Player #{@n}(#{@current_player})- please choose a square between 1 and 9"
		@move = gets.to_i
		if square_valid?(@move, @current_board_array) == true 
		@move
		else
		square_chooser
		end
	end
		
	def update_board
		@current_board_array[@move - 1] = "#{@current_player}"
		board("Player #{@n} (#{@current_player}) chose space #{@move}", @current_board_array)
	end
	
	def game_play
		until board_full?(@current_board_array) == true
		square_chooser
		update_board
		change_players
		end
	puts "Game Over"
		
	end
	
	def change_players
		if @current_player == @player_1
		   @current_player = @player_2
		else
		   @current_player = @player_1
		 end
	end
	
	def board_full?(status)
		if status.include?(" ")
			false
		else
			true
		end
	end
	
end
Game.new.start_game