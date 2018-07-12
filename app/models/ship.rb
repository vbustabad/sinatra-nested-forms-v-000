class Ship

  @@ships = []

  attr_reader :name, :type, :booty

  def initialize(params)
    @name = params[:name]
    @type = params[:type]
    @booty = params[:booty]
    @@ships << self
  end

  def self.all
    @@ships
  end

  def self.clear
    self.destroy
  end

end
