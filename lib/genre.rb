require_relative './artist.rb'
require_relative './song.rb'




class Genre
  attr_accessor :name, :genre

  @@all = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select do |song|
      if song.genre == self
        song
      end
    end
  end

  def artists
    Song.all.map do |song|
      if song.genre == self
        song.artist
      end
    end
  end

end
