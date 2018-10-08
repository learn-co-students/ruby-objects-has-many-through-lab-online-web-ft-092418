class Genre

    @@all = []

    attr_accessor :name, :songs

    def initialize(name)
        @name = name
        @songs = []
        @@all << self
    end

    def artists
        self.songs.map{|s| s.artist}
    end

    def self.all
        @@all
    end
end 