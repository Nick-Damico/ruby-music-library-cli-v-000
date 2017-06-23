class Artist
<<<<<<< HEAD

  extend Concerns::Findable
=======
>>>>>>> 58b74e5d15365249c9f2ad5746e40e5273ba15ef
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

<<<<<<< HEAD
  def genres
    self.songs.collect { |s| s.genre }.uniq
  end

=======
>>>>>>> 58b74e5d15365249c9f2ad5746e40e5273ba15ef
  def add_song(song)
    song.artist = self if song.artist != self
    self.songs << song unless @songs.include?(song)
  end

  def self.create(name)
    artist = Artist.new(name)
    artist.save
    artist
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
