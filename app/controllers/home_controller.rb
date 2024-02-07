class HomeController <ApplicationController
  def home
    render({template: "dices_templates/home"})
  end

  def two_d6
    @dice = rand(1..6)
    render({template: "dices_templates/two_d6"})
  end
end
