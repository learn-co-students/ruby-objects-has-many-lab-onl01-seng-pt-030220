class Post 

 @@all = [ ]

attr_accessor :title, :author 

def initialize(title, author = nil)
  @title = title
  @author = author 
  @@all << self
end 

 def add_post_by_title(title)
   title = self.new 
 end    

def self.all 
  @@all 
end 

def author=(a)
  @author = a 
  @author.posts << self 
end 



 def author_name
  
  @author && @author.name

end 


end 