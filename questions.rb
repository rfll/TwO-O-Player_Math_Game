class Questions

  def self.random_number_1
    number_1 = rand(1..20)
  end

  def self.random_number_2
    number_2 = rand(1..20)
  end

  def self.question
    question = "What does #{self.random_number_1} plus #{self.random_number_2} equal?"
    puts question
  end

end