require 'pry'

class Post 
  attr_accessor :title, :author, :name
  
  @@all = []
  
  def initialize(title)
    @title = title
    new
  end
  
  def new 
    @@all << self
  end
  
  def author_name
    if self.author 
      return self.author.name 
    else
      return nil 
    end
  end 
  
  def self.all 
    @@all
  end 
end 
