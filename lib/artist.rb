require "pry"
class Artist 
  attr_accessor :name, :songs 
  @@all = []
  
  def initialize(name)
    self.name = name 
    self.songs = []
    @@all << self
  end 
  
  def new_song(name, genre)
   # binding.pry
    song = Song.new(name, self, genre)
    self.songs << song
    song
  end 
  
  def songs 
    Song.all.select {|song| song.artist == self}
  end 
  
  def genres 
    self.songs.map {|song| song.genre}.uniq

 end 
  
  def self.all 
    @@all 
  end 
  
  def save 
    @all << self 
  end 
  
end 