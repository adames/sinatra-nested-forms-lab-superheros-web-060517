class Team

  attr_accessor :name, :motto
  attr_reader :heroes

  @@all = []


  def initialize(params)
    @name = params[:name]
    @motto = params[:motto]
    @@all << self
    @heroes = []
  end

  def heroes=(hero_attr)
    hero_attr.each_with_object(@heroes) do |hero_attr, heroes|
      new_hero = Hero.new(hero_attr)
      heroes << new_hero
    end

  end

end
