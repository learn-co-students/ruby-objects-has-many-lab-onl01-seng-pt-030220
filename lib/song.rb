class Song
  
  attr_reader :artist, :name
  
  @@all = [ ]
  
  def initialize(name) 
    @artist
    @name = name
    @@all << self
  end 
  
  def artist=(artist)
    @artist = artist
    artist.songs << self 
  end 
  
  def artist_name
    if @artist
      @artist.name
    else
      nil 
    end
  end
  
  def self.all
    @@all
  end 
  
    
  
  
  
end 