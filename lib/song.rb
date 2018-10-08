require "pry"

class Song
    
    @@all = []

    attr_accessor :name, :genre, :artist
    
    def initialize(name, artist, genre)
        @name = name
        @artist = artist

        @genre = genre
        #binding.pry
        genre.songs << self unless genre.songs.include?(self)
        @@all << self
    end

    def self.all
        @@all
    end
end   