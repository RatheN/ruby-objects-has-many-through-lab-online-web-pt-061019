class Genre

  attr_accessor :name, :songs, :artists
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def all
    @@all
  end

end