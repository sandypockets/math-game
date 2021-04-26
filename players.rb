class Players
  def initialize(name, lives = 0)
    @name = name
    @lives = lives
  end
  attr_accessor :name, :lives

end
