require "pry"
class Artist 
  attr_accessor :name, :songs , :genres
  @@all = []
  
  def initialize(name)
    self.name = name
    self.songs = []
    self.genres = []
    @@all << self
  end
  
  def self.all 
    @@all
  end
  
   def new_song(name, genre)
    song = Song.new(name, self, genre)
    self.songs.last
  end
  
   def songs
    Song.all.select do |song|
      song.artist == self
    end
  end
  
   def genres
    Song.all.map do |song|
      song.genre
    end
  end
  
end

      # jay_z = Artist.new("Jay-Z")
      # rap = Genre.new("rap")
      # ninety_nine_problems = jay_z.new_song("Ninety Nine Problems", rap)
      # puts ninety_nine_problems
      
      