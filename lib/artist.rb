require_relative "song.rb"
class Artist
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def songs
    Song.all #.select { |song| song.artist == self }  #shows songs from artist being asked. (self)
  end

  def add_song(song)
    song.artist = self
  end

  def add_song_by_name(name)
    song = Song.new(name)
    add_song(song)
  end

  def self.song_count
    Song.all.count # counts all the songs in the class Song array of @@all
  end

end

# kenny = Artist.new("kenny rogers")
# puts kenny

# jack = Song.new("Jackass")
# jack.artist = kenny
# puts jack.artist.name

# # puts kenny.songs.name
# binding.pry