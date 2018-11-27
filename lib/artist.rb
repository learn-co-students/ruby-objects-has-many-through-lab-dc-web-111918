require 'pry'
require_relative './genre.rb'
require_relative './song.rb'

class Artist
  attr_accessor :name, :artist, :genre

  @@all = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    new_song = Song.new(name, self, genre)
    # binding.pry
  end

  def songs
    Song.all.select {|song| song.artist == self }
  end

  def genres
    songs.map  {|song| song.genre}
  end

end
