class Author 
  
  attr_accessor :name, :posts, :author 
  
   @@all = [ ]

  def initialize(name)
    @name = name 
    @posts = [ ]
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 

def add_post(post)
  @posts << post 
  post.author = self 
end

def add_post_by_title(p_ttl)
  p = Post.new(p_ttl)
  self.add_post(p)
end 



def self.post_count
  @@all.map { |p| p.posts }.flatten.uniq.length
end 



end 