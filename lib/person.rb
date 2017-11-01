# your code goes 
require 'pry'
class Person
	def initialize(name)
		@name = name
		@bank_account = 25
		@happiness = 8
		@hygiene = 8 
	end
	attr_reader :name, :bank_account, :happiness, :hygiene

	def bank_account=(amount)
		@bank_account += amount
	end

	def happiness=(happiness)
		
		if happiness > 10
			@happiness = 10
		elsif happiness < 0
			@happiness = 0
		else
			@happiness = happiness
		end
	end

	def hygiene=(hygiene)
		
		if hygiene > 10
			@hygiene = 10
		elsif hygiene < 0
			@hygiene = 0
		else
			@hygiene = hygiene
		end
	end

	def happy?
		if @happiness > 7
			return true
		else
			return false
		end
	end

	def clean?
		if @hygiene > 7
			return true
		else
			return false
		end
	end

	def get_paid(salary)
		@bank_account += salary
		return 'all about the benjamins'
	end

	def take_bath
		@hygiene = @hygiene + 4
		# binding.pry
		self.hygiene = @hygiene
		return "♪ Rub-a-dub just relaxing in the tub ♫"
	end

	def work_out
		@hygiene -= 3
		self.hygiene = @hygiene
		@happiness += 2
		self.happiness = @happiness
		return "♪ another one bites the dust ♫"
	end

	def call_friend(friend)
		@happiness += 3
		# binding.pry
		friend.happiness += 3
		self.happiness = @happiness
		# friend.happiness = @happiness
		return "Hi #{friend.name}! It's #{self.name}. How are you?"
	end

	def start_conversation(person, topic)
		case topic 
		when 'politics'
		#binding.pry
			self.happiness -= 2
			person.happiness -= 2
			return 'blah blah partisan blah lobbyist'
		when 'weather'
			self.happiness += 1
			person.happiness += 1
			return "blah blah sun blah rain"
		else
			return "blah blah blah blah blah"

		end

		
	end










end
