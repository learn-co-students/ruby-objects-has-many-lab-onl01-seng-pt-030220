class Artist
  attr_accessor :name
 
  def initialize(name)
    @name = name
    @songs = []
  end
 
  def add_song(song)
    @songs << song
  end
end

drake = Artist.new("Drake")
drake.add_song("In My Feelings")
drake.add_song("Hotline Bling")

diki = Song.new("In My Feelings", "hip-hop")
hotline = Song.new("Hotline Bling", "pop")
 
drake.add_song(kiki)
drake.add_song(hotline)
 
drake.songs