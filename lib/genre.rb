class Genre 
  attr_accessor :name, :songs, :artists 

  @@all = [] 
  def initialize(name) 
    self.name = name
    self.songs = []
    self.artists = []
    @@all << self
  end 
  
  def songs 
    Song.all.select {|song| song.genre == self}
  end 
  
  def artists 
    self.songs.map {|song| song.artist}.uniq
  end 
  
  def self.all 
    @@all 
  end 
  
end 