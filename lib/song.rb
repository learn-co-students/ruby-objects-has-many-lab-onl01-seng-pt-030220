class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  #new is initialized with an argument of a name (FAILED - 13)
  #new pushes new instances into a class variable called @@all upon initialization (FAILED - 14)
  # @@all is a class variable set to an array (FAILED - 15)
  # .all is a class method that returns an array of all song instances that have been created (FAILED - 16)
  #name has a name (FAILED - 17)
  #artist belongs to an artist (FAILED - 18)
  #artist_name knows the name of its artist (FAILED - 19)
   #artist_name returns nil if the song does not have an artist (FAILED - 20)


   #These methods should use, or extend, the has many/belongs to relationship you're building out.
   #If a song has an artist, you can call: some_song.artist and return an actual instance of the Artist class.
   #Since every artist has a name, some_song.artist.name should return the name of the Artist instance associated with the given song.
   #Your #artist_name method should utilize this relationship.

   def artist_name
     artist.name if artist
   end


end
