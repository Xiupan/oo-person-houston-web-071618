require "pry"

class Person
  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  attr_accessor :bank_account
  attr_reader :name, :happiness, :hygiene

  def happiness=(value)
    @happiness = value
    min_happiness_levels
    max_happiness_levels
  end

  def hygiene=(value)
    @hygiene = value
    min_hygiene_levels
    max_hygiene_levels
  end

  def clean?
    if @hygiene > 7
      true
    else
      false
    end
  end

  def happy?
    if @happiness > 7
      true
    else
      false
    end
  end

  def get_paid(money_amount)
    @bank_account = @bank_account + money_amount
    return "all about the benjamins"
  end

  def max_hygiene_levels
    if @hygiene > 10
      @hygiene = 10
    end
  end

  def min_hygiene_levels
    if @hygiene < 0
      @hygiene = 0
    end
  end

  def max_happiness_levels
    if @happiness > 10
      @happiness = 10
    end
  end

  def min_happiness_levels
    if @happiness < 0
      @happiness = 0
    end
  end

  def take_bath
    self.hygiene=(@hygiene + 4)
    # min_hygiene_levels
    # max_hygiene_levels
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    @happiness = @happiness + 2
    @hygiene = @hygiene - 3
    min_hygiene_levels
    max_hygiene_levels
    min_happiness_levels
    max_happiness_levels
    return "♪ another one bites the dust ♫"
  end

  def call_friend

  end

end

# alan = Person.new("Alan")

# binding.pry
# 0
