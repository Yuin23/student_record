require 'student'


describe 'student' do
let(:student1) { Student.new('Kate', 'Smith') }
let(:student2) { Student.new('Alex','Taylor')}

	it 'can have first name' do
		# student = Student.new('Kate', 'Smith')

		expect(student1.first_name).to eq 'Kate'
	end

	it 'can have a last name' do	
		# student = Student.new('Kate', 'Smith')

		expect(student1.last_name).to eq 'Smith'

		end 

	it 'has a full name, including first and last names' do 
		# student = Student.new('Kate', 'Smith')

		expect(student1.full_name).to eq 'Kate Smith'
	end 

	it 'should have gender' do
		# student1 = Student.new('Kate', 'Smith')

		student1.gender = :female
		expect(student1.gender).to eq 'Female'
	end 

	it 'should be listed with a full_name, ' do 
		# student1 = Student.new('Kate', 'Smith')
		# student2 = Student.new('Alex', 'Taylor')

		expect(student1.my_name_is).to eq 'My name is Kate'
		expect(student2.my_name_is).to eq 'My name is Alex'
	end

	it 'has no gender' do
		expect(student1.gender).to eq 'It'
	end

	it 'gives us her name in a sentence' do
		student1.gender= :female
		expect(student1.name_in_a_sentence).to eq "Her name is Kate"
	end

	it 'gives us his name in a sentence' do
		student2.gender= :male
		expect(student2.name_in_a_sentence).to eq "His name is Alex"
	end
end

