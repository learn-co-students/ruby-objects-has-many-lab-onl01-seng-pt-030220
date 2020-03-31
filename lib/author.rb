class Author 
  
  attr_accessor :name
  
  @@post_count= 0
  
  def initialize(name)
    @name = name
  end
  
  def posts 
    Post.all.select {|posts| posts.author == self}
  end
  
  def add_post(posts)
    posts.author = self
  end
  
  def add_post_by_title(author)
    posts = Post.new(author)
    add_post(posts) 
  end
  
  def self.post_count
    Post.all.count 
  end
    
end