class Song 
  
  attr_accessor  :name
  attr_reader :artist 
  
  @@all = [ ]

 def initialize(name, artist = nil)
   @name = name 
   @artist = artist 
   @@all << self 
  end 
  
   def artist=(a)
     @artist = a 
     @artist.songs << self 
   end 
     
     
  def artist_name(ar)
   ar =  @artist 
  end 
  
  def artist_name
   if  @artist
    @artist.name 
   else 
    nil 
   end 
 end 
  
  
  def self.all
    @@all 
  end 
  

end 