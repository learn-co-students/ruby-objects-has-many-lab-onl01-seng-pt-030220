class Author 
  
  attr_accessor :name, :posts 
  
  def initialize(name)
    @name = name 
    @posts = [ ]
  end 
  
  def add_post(post)
    post.author = self 
  end 
    
  def add_post_by_title(title)
    add_post(Post.new(title))
  end 

  def self.post_count
    Post.all.count
  end
  
end 