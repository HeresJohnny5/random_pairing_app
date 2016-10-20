class RandomPairing

	def sorted_array(students_array)
		sorted = students_array.sort
	end

	def first_last_sequence(students_array)
		sorted_students = sorted_array(students_array)

		pairs = []

		while sorted_students.length > 3
			pair = []
			pair << sorted_students.delete_at(0)
			pair << sorted_students.delete_at(-1)
			pairs << pair
		end
		pairs << sorted_students
	end

end