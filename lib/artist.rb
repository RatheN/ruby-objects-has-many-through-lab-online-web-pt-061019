class Artist

  attr_accessor
  @@all = []

  def initialize(name)
    @name = name
  end

  def all
    @@all << self
  end

end
