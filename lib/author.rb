class Author

  attr_accessor :name

@@all = []
  
  def initialize(name)
    @name = name
  end

def posts
Post.all
end

  def add_post(post)
    post.author = self 
  end

  def add_post_by_title(post_title)
  singer = Post.new(post_title)
    add_post(singer)
   end

  def self.post_count
    Post.all.count
  end
end