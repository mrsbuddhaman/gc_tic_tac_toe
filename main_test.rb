require_relative"main.rb"
require "minitest/autorun"

class Main_test < Minitest::Test
	def test_for_player_2
		assert_equal("X",player_2("O"))	
		assert_equal("O",player_2("X"))
	end
	
	def test_for_valid_player_1_marker
		assert_equal(true, marker_valid?("X"))
		assert_equal(true, marker_valid?("O"))
		assert_equal(false, marker_valid?("A"))
	end
	
	def test_for_valid_square_choose
		assert_equal(true, square_valid?(3))
		assert_equal(false, square_valid?(12))
		assert_equal(false, square_valid?(0))
	end
		











end
