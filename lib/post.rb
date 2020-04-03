require 'pry'

class Post 

  attr_accessor :title, :author, :author_name
  
  @@all = []
  
  def initialize(title)
    @title = title
    @@all << self
  end
  
  
  def self.all 
    @@all
  end
  
  def author_name
    if self.author
      author.name

  end
end


end