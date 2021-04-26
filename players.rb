class Players
  def initialize(name, lives = 0)
    @name = name
    @lives = lives
  end

  def still_alive?
    @lives.positive?
  end

  attr_accessor :name, :lives

end
