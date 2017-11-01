class Person

  attr_accessor :bank_account, :happiness, :hygiene, :salary, :friend, :topic

  def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
    @name = name
    @bank_account = bank_account
    @happiness = happiness
    @hygiene = hygiene
  end

  def name
    @name
  end

  def happiness
    if @happiness > 10
      return 10
    elsif @happiness < 0
      return 0
    else
      @happiness
    end
  end

  def hygiene
    if @hygiene > 10
      return 10
    elsif @hygiene < 0
      return 0
    else
      @hygiene
    end
  end

  def happy?
    if @happiness > 7
      true
    else
      false
    end
  end

  def clean?
    if @hygiene > 7
      true
    else
      false
    end
  end

  def get_paid(salary)
    @salary = salary
    @bank_account += @salary
    return "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    return "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    @friend = friend
    @friend.happiness += 3
    self.happiness += 3
    return "Hi #{@friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend, topic)
    @friend = friend
    @topic = topic

    if @topic == 'politics'
      @friend.happiness -= 2
      self.happiness -= 2
      return 'blah blah partisan blah lobbyist'
    elsif @topic == 'weather'
      @friend.happiness += 1
      self.happiness += 1
      return 'blah blah sun blah rain'
    else
      return 'blah blah blah blah blah'
    end
  end

end
