require 'Pry'

class Artist
  attr_accessor 
  attr_reader :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_song(song_name, genre)
    song = Song.new(song_name, self, genre)
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
  binding.pry
  end
  
  def genres
    self.songs.each {|song| song.genre}
  end
end