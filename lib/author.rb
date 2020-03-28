class Author 
attr_accessor :name 

def self.post_count 
    Post.all.count 
end


def initialize(name)
    @name = name 
    @array = [] 
end

def posts 
Post.all 
end 

def add_post(post)
@array << post 
post.author = self 
end

def add_post_by_title(title)
    post = Post.new(title) 
    add_post(post)
end


end