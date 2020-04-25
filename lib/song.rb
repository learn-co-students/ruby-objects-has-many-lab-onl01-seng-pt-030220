class Song
  attr_accessor :name

  @@all = []
  def artist=(artist)
    @artist = artist
    artist.songs << self
    
  end
  def artist
    return @artist
  end
  def self.all
    return @@all
  end
  def initialize(name)
    @name = name
    @@all << self
    Artist.song_count+=1
    
  end

  def artist_name
    if @artist == nil
      return nil
    else
      @artist.name
    end
  end
end