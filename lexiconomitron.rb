require "pry"

class Lexiconomitron

	def eat_t(text)
		text.gsub(/[Tt]/,"")
	end

	def shazam(array)
		new_array = []
		array_first = []
		array_last = []
		final_array = []

		array.each do |x|
			new_array << eat_t(x.reverse)	
		end

		array_first << new_array[0]
		array_last << new_array[new_array.length-1]

		final_array = array_first.concat(array_last)
		#final_array.inspect
	end

	def oompa_loompa(array)
		oompa_new = []
		oompa_new2 = []

		array.each do |x|
			if x.length <= 3 
				oompa_new << x
			end
		end

		oompa_new.each do |x|
			oompa_new2 << eat_t(x) 
		end

		oompa_new2

	end

end

sentence = Lexiconomitron.new

puts sentence.eat_t("Great Scott!")

puts sentence.shazam(["This", "is", "a", "boring", "test"])

puts sentence.oompa_loompa(["if", "you", "wanna", "to", "be", "my", "lover"])