class Author
  attr_accessor :name

  @@post_count = 0

  def initialize(name)
    @name = name
  end

  def posts
    Post.all
  end

  def add_post(post_name)
    post_name.author = self
    @@post_count += 1
  end

  def add_post_by_title(title)
    name = Post.new(title)
    add_post(name)
    @@post_count += 1
  end

  def self.post_count
    @@post_count
  end

end
