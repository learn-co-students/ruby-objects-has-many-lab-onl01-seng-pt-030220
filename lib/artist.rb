class Artist
    attr_accessor :name

    @@all = []

    def initialize(name)
        self.name = name
        @@all << self
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(name)
        song = Song.new(name)
        add_song(song)
    end

    def self.song_count
        result = 0
        @@all.each do |artist|
            result += artist.songs.count
        end
        result
    end

    
end
