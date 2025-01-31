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

  def one_20
    @roll = rand(1..20)
    render({template: "dices_templates/one_20"})
  end

  def five_4
    @rolls = []
    5.times do
      dice = rand(1..4)
      @rolls.push(dice)
    end
    render({template: "dices_templates/five_4"})
  end

  def random_side_dices
    @rolls = []
    @random_dice = params.fetch("random_dice").to_i
    @random_sides = params.fetch("random_sides").to_i
    @random_dice.times do
      dice = rand(1..@random_sides)
      @rolls.push(dice)
    end
    render({template: "dices_templates/random_dice_sides"})
  end

end
