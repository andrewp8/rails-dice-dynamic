class HomeController <ApplicationController
  def home
    render({template: "dices_templates/home"})
  end

  def two_6
    @rolls = []
    2.times do
      dice = rand(1..6)
      @rolls.push(dice)
    end
    render({:template => "dices_templates/two_6"})
  end

  def two_10
    @rolls = []
    2.times do
      dice = rand(1..10)
      @rolls.push(dice)
    end
    render({template: "dices_templates/two_10"})
  end

end
