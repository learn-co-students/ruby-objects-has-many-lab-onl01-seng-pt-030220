class Artist 


   @@all = [ ]
  
  attr_accessor :name, :songs 
  
  def initialize(name)
    @name = name 
    @songs = [ ]
    @@all << self 
  end 
  
 
    def add_song(song)
    self.songs << song
    song.artist = self
    end
  
    def add_song_by_name(s_name)
       s = Song.new(s_name)
       self.add_song(s)
    end     
    
    def self.all 
        @@all 
    end 

    def self.song_count 
        @@all.map { |a| a.songs }.flatten.uniq.length 
    end 
    


end 