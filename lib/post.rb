class Post

    @@all = []

    attr_accessor :name, :author, :title

    def initialize(title)
        @title = title
        @@all << self
    end 

    def self.all 
        @@all
    end 

    def author_name
        if @author == nil
            nil
        else
            @author.name 
        end
    end 


end 