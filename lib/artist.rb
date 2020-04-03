class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

   #new is initialized with a name (FAILED - 1)

    #name has an attr_accessor for name (FAILED - 2)

    #songs has many songs (FAILED - 3)
    def songs
      Song.all.select {|song| song.artist == self}
    end

    #add_song takes in an argument of a song and associates that song with the artist
    #by telling the song that it belongs to that artist

    def add_song(song)
      song.artist = self
    end

    #add_song_by_name takes in an argument of a song name, creates a new song with it and
    #associates the song and artist (FAILED - 5)
    def add_song_by_name(song_name)
      song = Song.new(song_name)
      song.artist = self
    end

    #.song_count is a class method that returns the total
    #number of songs associated to all existing artists (FAILED - 6)
    def self.song_count
      Song.all.count
    end
end
