require 'pry'

class Genre

  attr_accessor :name, :genre
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
    Song.all.select {|song| song.genre == self}
    #Return array of songs of given genre

  end

  def artists
       artist_result = []
     Song.all.each do |song|
       if song.genre == self
       artist_result << song.artist
       end
     end
     artist_result
  end

end
