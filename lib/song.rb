require_relative './genre.rb'
require_relative './artist.rb'


class Song
  attr_accessor :name, :artist, :genre

  @@all = []

  def initialize(name, artist, genre)

    @name, @artist, @genre = name, artist, genre
    self.class.all << self
  end

  def self.all
    @@all
  end



end
