class Student

	attr_writer :gender
	attr_reader :first_name, :last_name

	POSSESIVE_PRONOUNS = {female: 'her', male: 'his', it: "It's"}

	def initialize(first_name, last_name)
		@first_name = first_name
		@last_name = last_name
		@gender = :it
	end

	def gender
		@gender.to_s.capitalize
	end

	# def first_name
	# 	@first_name 
	# end 

	# def last_name
	# 	@last_name
	# end

	def full_name
		"#{first_name} #{last_name}"
	end

	# def gender
	# 	@gender
	# end 

	def my_name_is
		 "My name is #{first_name}"
	end

	def name_in_a_sentence
		"#{possesive_pronoun.capitalize} name is #{first_name}"
	end

	def possesive_pronoun
		POSSESIVE_PRONOUNS[@gender]
	end

end 