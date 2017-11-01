class Person

  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness
    if  @happiness > 9
      raise "Please enter a number between 0 and 10"
    else
      @happiness += 1
    end

  end


end
