class Questions
  def initialize
    ## First integer random number
    @first_num = rand(10)
    ## Second integer random number
    @second_num = rand(10)
    ## Answer to be compared
    @answer = @first_num + @second_num
    ## Question to be displayed to the player
    @question = "What is the sum of #{@first_num} and #{@second_num}?"
  end
  attr_accessor :answer, :question

end

