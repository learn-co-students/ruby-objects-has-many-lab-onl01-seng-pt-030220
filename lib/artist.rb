class Artist
attr_accessor :name, :songs

  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_song_by_name(name)
    song = Song.new(name)
    song.artist = self
    
    @songs << song
    
  end

def self.song_count=(value)
  @@song_count = value
end
 
  def self.song_count
    return @@song_count
  end

end