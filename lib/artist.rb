class Artist
  attr_accessor :name , :genres
 
  @@all = []
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
    @genres = []
  end
 
  def new_song(name , genre)
   song =  Song.new(name , self ,  genre)
    @songs << song
    @genres << genre
    song
  end
 
  def songs
    @songs
  end
  
  def self.all
    @@all
  end
  
end