require_relative"main.rb"
require "minitest/autorun"

class Main_test < Minitest::Test
	def test_for_player_2
		assert_equal("X",Game.new.player_2("O"))	
		assert_equal("O",Game.new.player_2("X"))
	end
	
	def test_for_valid_player_1_marker
		assert_equal(true,Game.new.marker_valid?("X"))
		assert_equal(true,Game.new.marker_valid?("O"))
		assert_equal(false,Game.new.marker_valid?("A"))
	end
	
	def test_for_valid_square_choose
		assert_equal(true, Game.new.square_valid?(3, [" "," "," "," "," ","X","O","X"," "]))
		assert_equal(false, Game.new.square_valid?(12,[" "," "," "," "," ","X","O","X"," "]))
		assert_equal(false, Game.new.square_valid?(0,[" "," "," "," "," ","X","O","X"," "] ))
		assert_equal(false, Game.new.square_valid?(3,[" "," ","O"," "," ","X","O","X"," "] ))
	end
	
	def test_for_full_board
		assert_equal(true, Game.new.board_full?(["X","X","O","O","X","O","O","X","X"]))
		assert_equal(false, Game.new.board_full?([" ","X","O","O","X","O","O","X","X"]))
	end
		









end
