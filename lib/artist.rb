require 'pry'

class Artist
   attr_accessor :name
  attr_reader :songs, :artists
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_song(song_name, genre)
    if !songs.detect {|song| song.name == song_name} # if song not detected
      Song.new(song_name, self, genre)
    else # song already added, return original song
      songs.detect {|song| song.name == song_name}
    end
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end
  
  def genres
    self.songs.collect do |song| 
      song.genre
    end
   
  end
end