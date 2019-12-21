# your code goes here
class Person
  attr_accessor :bank_account
  attr_reader :name, :happiness, :hygiene

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(num)
    @happiness = num
    happiness_limits
  end

  def hygiene=(num)
    @hygiene = num
    hygiene_limits
  end

  def clean?
    self.hygiene > 7
  end

  def happy?
    self.happiness > 7
  end

  def get_paid(salary)
    self.bank_account += salary
    "all about the benjamins"
  end

  def take_bath
    # May need to compare a local variable instead of the instance variable
    self.hygiene += 4

    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness += 2
    self.hygiene -= 3

    "♪ another one bites the dust ♫"
  end

  #friend represents another instance of the person class
  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3

    return "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend, topic)
    #at the end of method do a check for happiness levels
    if topic == "politics"
      self.happiness -= 2
      friend.happiness -= 2
      return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness += 1
      friend.happiness += 1
      return "blah blah sun blah rain"
    else
      return "blah blah blah blah blah"
    end


  end

  private

  def hygiene_limits
    if self.hygiene < 0
      self.hygiene = 0
    elsif self.hygiene > 10
      self.hygiene = 10
    else
      self.hygiene
    end
  end

  def happiness_limits
    if self.happiness < 0
      self.happiness = 0
    elsif self.happiness > 10
      self.happiness = 10
    else
      self.happiness
    end
  end

end
