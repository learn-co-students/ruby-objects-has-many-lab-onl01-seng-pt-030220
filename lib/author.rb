class Author

    attr_accessor :name #,:posts
    @@count=1
    def initialize(name)
      @name=name
      @posts=[]
    end

  def add_post(post)
      @posts  << post
      post.author = self
      @@count +=1
  end

  def posts
    Post.all.select do |post|
      post.author  ==  self
    end
  end

  def add_post_by_title(title)
    post=Post.new(title)
    add_post(post)
  end

  def self.post_count
    @@count
  end

end
