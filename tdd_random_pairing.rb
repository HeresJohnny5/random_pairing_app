require_relative 'functions.rb'
require 'minitest/autorun'

class TestRandomPairing < Minitest::Test 

	def test_array_returns_sorted_array
		random_pairing = RandomPairing.new
		students = ["Caleb", "John", "Josh", "Cheri", "Edward", "Jennifer"]
		assert_equal(["Caleb", "Cheri", "Edward", "Jennifer", "John", 'Josh'], random_pairing.sorted_array(students))
	end

	def test_array_length_6_returns_first_and_last_groupings
		random_pairing = RandomPairing.new
		students = ["Caleb", "John", "Josh", "Cheri", "Edward", "Jennifer"]
		assert_equal([["Caleb", "Josh"], ["Cheri", "John"], ["Edward", "Jennifer"]], random_pairing.first_last_sequence(students))
	end

	def test_array_length_7_returns_first_and_last_groupings
		random_pairing = RandomPairing.new
		students = ["Caleb", "John", "Josh", "Cheri", "Edward", "Jennifer", "Marv"]
		assert_equal([["Caleb", "Marv"], ["Cheri", "Josh"], ["Edward", "Jennifer", "John"]], random_pairing.first_last_sequence(students))
	end

end