class Artist

  attr_accessor :name, :artist, :genre
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def all
    @@all
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

end
