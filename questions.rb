class Questions
  def initialize
    ## First integer random number
    @first_num = rand(10)
    ## Second integer random number
    @second_num = rand(10)
    ## Answer to be compared
    @answer = @first_num + @second_num
  end

end

