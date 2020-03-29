class Post

  attr_accessor :author, :title

  @@all = []

  def self.all
    @@all
  end

  def initialize(title)
    @title = title
    @@all << self
  end

  def author_name
    self.author.name if author
  end

end
