require 'pry'

class Artist
  @@song_count = 0

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def songs
    Song.all
  end

  def add_song(song_name)
  song_name.artist = self
  @@song_count += 1
  end

  def add_song_by_name(name)
    song = Song.new(name)
    add_song(song)
    @@song_count += 1
  end

  def self.song_count
    @@song_count
  end
  

end
