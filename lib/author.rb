class Author

    def self.post_count
        Post.all.count
    end    

    attr_accessor :name

    def initialize(name)
        @name = name
        @posts = []
    end

    def posts
        Post.all
        
    end

    def add_post(post)
        post.author = self
    end

    def add_post_by_title(title)
        new_title = Post.new(title)
        add_post(new_title)
    end
   
end