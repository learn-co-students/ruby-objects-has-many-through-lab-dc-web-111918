class Song

attr_accessor :name, :artist, :genre

  @@all = []
  # note artist and genre are objects
  # where as name is a string
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@all << self
  end

  def self.all
    @@all
  end
end
