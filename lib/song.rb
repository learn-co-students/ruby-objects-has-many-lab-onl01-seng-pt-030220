require_relative "song.rb"
require 'pry'
class Song
  attr_accessor :name, :artist

  @@all = [] #array holds all songs intances.

  def initialize(name)
    @name = name
    @@all << self  #pushes all instances of songs into @@all array.
  end

  def self.all
    @@all  #shows the array of song intances.
  end

  def artist_name
    # artist.name if self.artist
    self.artist ? artist.name : nil
  end

end