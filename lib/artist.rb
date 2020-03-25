class Artist
  attr_accessor :name
  @@count =1
  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
    @@count += 1

  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def add_song_by_name(name)
    song=Song.new(name)
    add_song(song)
  end

  def self.song_count
     @@count
  end
end
