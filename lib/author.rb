class Author

    attr_accessor :name

    @@count=0

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
    @@count +=1

  end

  def self.post_count
    @@count
  end

end
