class Genre
<<<<<<< HEAD
  
  extend Concerns::Findable
=======

>>>>>>> 58b74e5d15365249c9f2ad5746e40e5273ba15ef
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
<<<<<<< HEAD
  end

  def artists
    self.songs.collect { |s| s.artist }.uniq
=======
>>>>>>> 58b74e5d15365249c9f2ad5746e40e5273ba15ef
  end

  def self.create(name)
    genre = Genre.new(name)
    genre.save
    genre
  end

  def save
    @@all << self
  end

  def self.destroy_all
    @@all.clear
  end

  def self.all
    @@all
  end
end
